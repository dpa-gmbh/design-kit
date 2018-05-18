# Beispiel

connect Design trifft Bootstrap:

[Login](https://dpa-connect.github.io/bootstrap-theme/login.html)

## scss code

this is an example of component bootstrap-theme based.
the right way should be adding an extra css or scss folder where you can write or extend your own customization,
without changing the bootstrap core, as  the [bootstrap documentation](https://getbootstrap.com/docs/4.0/getting-started/theming/) suggests.

in this example, we added a folder 'component' and put there our code.

```
bootstrap/
└─── scss
    ├── components/
    ├── mixins/*.scss
    ├── utilities/*.scss
    └── *.scss
```



    .login {
      border: none;

      h4 {
        font-size: 24px;
        line-height: 24px;
        font-weight: 300;
        letter-spacing: 1px;
      }

      .divider {
        border-top: 1px solid $off-white;
        margin-top: 20px;
      }

      a {
        color: $dpa-writer;

        label {
          margin-top: 6px;
          text-decoration: underline !important;
          cursor: pointer;
        }

        &:hover {
          color: $active-blue;
        }
      }

      .user {
        h4 {
          position: relative;
          top: 3px;
          margin-left: 8px;
        }

        img,
        h4 {
          display: inline-block;
        }
      }

      &-subsection {
        padding-top: 28px;
        padding-bottom: 32px;
      }
    }

    .bg-off-white {
      background: $off-white;
    }