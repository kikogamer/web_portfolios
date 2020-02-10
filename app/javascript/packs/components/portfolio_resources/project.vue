<template>
  <div class="bolco-projeto">
    <h4 class="block-title grey">Projetos</h4>
    <div class="row">
      <div class="input-field col l6 m6 s12">
        <input
          placeholder="Título"
          id="project-title"
          v-model="project.title"
          class="font_20 custom-grey-text text-darken-1"
        />
        <label class="active font_20 custom-grey-text text-darken-1">Título</label>
      </div>
      <div class="input-field col l6 m6 s12">
        <select v-model="project.kind" class="browser-default" id="select-project-kind">
          <option disabled value>Escolha um item</option>
          <option v-for="(value, key) in projectKinds" :value="key" :key="key">{{ value }}</option>
        </select>
        <label class="active font_20 custom-grey-text text-darken-1">Tipo de Projeto</label>
      </div>
      <div class="input-field col l12 m12 s12">
        <textarea
          id="project-description"
          v-model="project.description"
          class="font_20 custom-grey-text text-darken-1 materialize-textarea"
        ></textarea>
        <label class="active font_20 custom-grey-text text-darken-1">Descrição</label>
      </div>
      <div class="input-field col l8 m8 s6">
        <input
          placeholder="URL"
          id="project-url"
          v-model="project.url"
          class="font_20 custom-grey-text text-darken-1"
        />
        <label class="active font_20 custom-grey-text text-darken-1">URL</label>
      </div>
      <div class="input-field col l4 m4 s6">
        <button type="button" class="btn" id="add-project" @click="submit()">Adicionar</button>
      </div>
    </div>

    <div v-for="(project, index) in projects" class="row resource-list" :key="index">
      <div class="col s12">
        <div class="row resource-item resource-project">
          <div class="col l5 m5 s5">{{ project.title }}</div>
          <div class="col l1 m1 s1 center">/</div>
          <div class="col l5 m5 s5">
            <a :href="project.url" target="_blank">{{ project.url }}</a>
          </div>
          <div class="col l1 m1 s1">
            <a class="fa fa-times grey-text remove-project" @click="removeProject(project)"></a>
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
      project: {
        kind: ""
      },
      projects: [],
      projectKinds: {
        open_source: "Código Aberto",
        personal: "Pessoal"
      }
    };
  },

  created() {
    this.$resource("/portfolios{/id}/projects")
      .get({ id: this.portfolioId })
      .then(
        response => {
          this.projects = response.body.resource;
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
      this.$resource("/portfolios{/id}/projects")
        .save({ id: this.portfolioId }, { project: this.project })
        .then(
          response => {
            this.projects.push(response.body.resource);
            this.project = {};
          },
          response => {
            response.body.errors.forEach(error => {
              M.toast({ html: error, classes: "red" });
            });
          }
        );
    },

    removeProject(project) {
      this.$resource("/portfolios{/portfolioId}/projects{/id}")
        .remove({ portfolioId: this.portfolioId, id: project.id })
        .then(
          response => {
            let indexToRemove = this.projects.indexOf(project);
            this.projects.splice(indexToRemove, 1);
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