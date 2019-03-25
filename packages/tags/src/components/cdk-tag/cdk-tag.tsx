import { Component, Prop } from "@stencil/core";

// @see https://akveo.github.io/eva-icons/#/?searchKey=flag&type=fill
const flag = `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><g data-name="Layer 2"><g data-name="flag"><polyline points="24 24 0 24 0 0" opacity="0"/><path d="M19.27 4.68a1.79 1.79 0 0 0-1.6-.25 7.53 7.53 0 0 1-2.17.28 8.54 8.54 0 0 1-3.13-.78A10.15 10.15 0 0 0 8.5 3c-2.89 0-4 1-4.2 1.14a1 1 0 0 0-.3.72V20a1 1 0 0 0 2 0v-4.3a6.28 6.28 0 0 1 2.5-.41 8.54 8.54 0 0 1 3.13.78 10.15 10.15 0 0 0 3.87.93 7.66 7.66 0 0 0 3.5-.7 1.74 1.74 0 0 0 1-1.55V6.11a1.77 1.77 0 0 0-.73-1.43z"/></g></g></svg>`;
const flash = `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><g data-name="Layer 2"><g data-name="flash"><rect width="24" height="24" opacity="0"/><path d="M11.11 23a1 1 0 0 1-.34-.06 1 1 0 0 1-.65-1.05l.77-7.09H5a1 1 0 0 1-.83-1.56l7.89-11.8a1 1 0 0 1 1.17-.38 1 1 0 0 1 .65 1l-.77 7.14H19a1 1 0 0 1 .83 1.56l-7.89 11.8a1 1 0 0 1-.83.44z"/></g></g></svg>`;

@Component({
  tag: "cdk-tag",
  styleUrl: "cdk-tag.css",
  shadow: true
})
export class Tag {
  /**
   * The type
   */
  @Prop() type: string;

  /**
   * The text
   */
  @Prop() text: string;

  /**
   * Returns if a tag icon should be displayed.
   */
  private hasIcon(): boolean {
    const ALLOWED_TYPES = ["FILTER_IS_TOP", "FILTER_IS_URGENCY"];

    return ALLOWED_TYPES.indexOf(this.type) > -1;
  }

  /**
   * Returns the svg data
   */
  private iconSvg(): string {
    if (this.type === "FILTER_IS_TOP") {
      return flag;
    } else if (this.type === "FILTER_IS_URGENCY") {
      return flash;
    }

    return "";
  }

  /**
   * Returns the state class
   */
  private stateClass(): string {
    let className: string = "cdk-Tag";

    if (this.type === "FILTER_IS_TOP") {
      className += " is-top";
    } else if (this.type === "FILTER_IS_URGENCY") {
      className += " is-urgent";
    }

    return className;
  }

  render() {
    return (
      <a class={this.stateClass()}>
        { this.hasIcon() ? <div class="cdk-Tag-icon" innerHTML={this.iconSvg()}></div> : "" }
        <slot />
      </a>
    );
  }
}
