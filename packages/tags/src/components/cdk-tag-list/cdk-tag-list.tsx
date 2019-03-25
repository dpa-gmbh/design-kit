import { Component, Prop } from "@stencil/core";

@Component({
  tag: "cdk-tag-list",
  styleUrl: "cdk-tag-list.css",
  shadow: true
})
export class Tag {
  /**
   * The type
   */
  @Prop() tags: any[];

  render() {
    return (
      <div class="cdk-TagList">
        <slot />
      </div>
    );
  }
}
