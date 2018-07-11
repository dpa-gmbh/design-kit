<template>
  <div class="cdk-BrowseByTagPage">
    <ul>
      <cdk-tag v-for="tag, index in tags" :title="tag" :is-selected="tag == selectedTag" :key="index" />
    </ul>
    <hr>
    <div class="cdk-BrowseByTagPage-content">
      <h1>Seiten für Schlagwort "{{selectedTag}}"</h1>
      <ul v-for="page in pagesWithTag">
        <li><a :href="page.path">{{page.title}}</a></li>
      </ul>
    </div>
  </div>
</template>
<script>
import CdkTag from './CdkTag';
import uniq from 'lodash.uniq';
export default {
  components: {
    CdkTag,
  },
  data () {
    return {
      selectedTag: false
    }
  },
  mounted () {
    let search = decodeURIComponent(window.location.search.replace(/\?/, ''))
    console.log(search)
    if (this.tags.indexOf(search) == -1) {
      this.selectedTag = false;
      return;
    }
    this.selectedTag = search;
  },
  computed: {
    tags () {
      const { pages } = this.$site;
      let tags = [];
      for (let i = 0; i < pages.length; i++) {
        const page = pages[i];
        if (!('frontmatter' in page)) {
          continue;
        }
        if (!('tags' in page.frontmatter)) {
          continue;
        }
        tags = tags.concat(page.frontmatter.tags)
      }
      return uniq(tags);
    },
    pagesWithTag () {
      let tag = this.selectedTag;
      let pagesWithTag = [];
      const { pages } = this.$site;
      for (let i = 0; i < pages.length; i++) {
        const page = pages[i];
        if (!('frontmatter' in page)) {
          continue;
        }
        if (!('tags' in page.frontmatter)) {
          continue;
        }

        if (page.frontmatter.tags.indexOf(tag) == -1) {
          continue;
        }
        pagesWithTag.push(page)
      }
      return pagesWithTag;
    }
  }
}
</script>
<style>
/** @define cdk-BrowseByTagPage */
.cdk-BrowseByTagPage {

}
.cdk-BrowseByTagPage-content {
  padding-left: 1.2em;
}

</style>