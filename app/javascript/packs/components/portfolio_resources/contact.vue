<template>
  <div class="bloco-contato">
    <h4 class="block-title grey">Contato</h4>
    <div class="row">
      <div class="input-field col l12 m12 s12">
        <input
          type="email"
          placeholder="E-mail"
          id="contact-email"
          v-model="contact.email"
          @change="submit()"
          class="font_20 custom-grey-text text-darken-1"
        />
        <label class="active font_20 custom-grey-text text-darken-1">E-mail</label>
      </div>
      <div class="input-field col l12 m12 s12">
        <input
          type="tel"
          placeholder="Telefone"
          id="contact-phone"
          v-model="contact.phone"
          @change="submit()"
          class="font_20 custom-grey-text text-darken-1"
        />
        <label class="active font_20 custom-grey-text text-darken-1">Telefone</label>
      </div>
      <div class="input-field col l12 m12 s12">
        <input
          type="url"
          placeholder="Site"
          id="contact-website"
          v-model="contact.website"
          @change="submit()"
          class="font_20 custom-grey-text text-darken-1"
        />
        <label class="active font_20 custom-grey-text text-darken-1">Site</label>
      </div>
      <div class="input-field col l12 m12 s12">
        <input
          placeholder="Cidade"
          id="contact-address_city"
          v-model="contact.address_city"
          @change="submit()"
          class="font_20 custom-grey-text text-darken-1"
        />
        <label class="active font_20 custom-grey-text text-darken-1">Cidade</label>
      </div>
      <div class="input-field col l12 m12 s12">
        <input
          placeholder="País"
          id="contact-address_country"
          v-model="contact.address_country"
          @change="submit()"
          class="font_20 custom-grey-text text-darken-1"
        />
        <label class="active font_20 custom-grey-text text-darken-1">País</label>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ["portfolioId"],

  data() {
    return {
      contact: {}
    };
  },

  created() {
    this.$resource("/portfolios{/id}/contacts")
      .get({ id: this.portfolioId })
      .then(
        response => {
          if (response.body.resource !== null) {
            this.contact = response.body.resource;
          }
        },
        response => {
          M.toast({
            html: "Ocorreu um erro ao carregar o contato",
            classes: "red"
          });
        }
      );
  },

  methods: {
    submit() {
      const uri = "/portfolios{/portfolioId}/contacts{/id}"

      const showErrors = (response) => {
        response.body.errors.forEach(error => {
          M.toast({ html: error, classes: "red" });
        });
      }
      
      if (this.contact.id){
        this.$resource(uri)
          .update(
            {
              portfolioId: this.portfolioId,
              id: this.contact.id
            },
            { contact: this.contact }
          )
          .then({}, response => showErrors(response));
      }
      else {
        this.$resource(uri)
          .save(
            {
              portfolioId: this.portfolioId
            },
            { contact: this.contact }
          )
          .then({}, response => showErrors(response));
      }
    }
  }
};
</script>