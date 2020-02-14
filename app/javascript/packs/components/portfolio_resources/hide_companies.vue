<template>
  <div class="bloco-esconder-perfil-empresa">
    <h4 class="block-title grey">Empresas para Ocultar Perfil</h4>
    <div class="row">
      <div class="input-field col l8 m8 s12">
        <input
          placeholder="Empresa"
          id="hide-company-name"
          v-model="hide_company.name"
          class="font_20 custom-grey-text text-darken-1"
        />
        <label class="active font_20 custom-grey-text text-darken-1">Empresa</label>
      </div>
      <div class="input-field col l4 m4 s6">
        <button type="button" class="btn" id="add-hide-company" @click="submit()">Adicionar</button>
      </div>
    </div>

    <div v-for="(hide_company, index) in hide_companies" class="row resource-list" :key="index">
      <div class="col s12">
        <div class="row resource-item resource-hide-company">
          <div class="col l11 m5 s10">{{ hide_company.name }}</div>
          <div class="col l1 m1 s1">
            <a
              class="fa fa-times grey-text remove-hide-company"
              @click="removeHideCompany(hide_company)"
            ></a>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ["portfolioId"],

  data() {
    return {
      hide_company: {},
      hide_companies: {}
    };
  },

  created() {
    this.$resource("/portfolios{/id}/hide_companies")
      .get({ id: this.portfolioId })
      .then(
        response => {
          this.hide_companies = response.body.resource;
        },
        response => {
          M.toast({
            html: "Ocorreu um erro ao carregar os Projetos",
            classes: "red"
          });
        }
      );
  },

  methods: {
    submit() {
      this.$resource("/portfolios{/id}/hide_companies")
        .save({ id: this.portfolioId }, { hide_company: this.hide_company })
        .then(
          response => {
            this.hide_companies.push(response.body.resource);
            this.hide_company = {};
          },
          response => {
            response.body.errors.forEach(error => {
              M.toast({ html: error, classes: "red" });
            });
          }
        );
    },

    removeHideCompany(hide_company) {
      this.$resource("/portfolios{/portfolioId}/hide_companies{/id}")
        .remove({ portfolioId: this.portfolioId, id: hide_company.id })
        .then(
          response => {
            let indexToRemove = this.hide_companies.indexOf(hide_company);
            this.hide_companies.splice(indexToRemove, 1);
          },
          response => {
            response.body.errors.forEach(error => {
              M.toast({ html: error, classes: "red" });
            });
          }
        );
    }
  }
};
</script>