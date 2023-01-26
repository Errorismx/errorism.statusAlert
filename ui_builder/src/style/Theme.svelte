<style global lang="postcss">
  @import 'tailwindcss/base';
  @import 'tailwindcss/components';
  @import 'tailwindcss/utilities';
  html,
  body {
    @apply focus:outline-none;
    -webkit-tap-highlight-color: transparent;
    margin: 0;
  }
  * {
    margin: 0;
    padding: 0;
  }
  ::-webkit-scrollbar {
    width: 6px;
  }
  ::-webkit-scrollbar-track {
    border-radius: 3px;
  }
  ::-webkit-scrollbar-thumb {
    background: var(--background-900);
    border-radius: 3px;
  }
  body,
  input {
    font-family: var(--font-family);
    font-size: var(--font-size);
    letter-spacing: 0.05em;
    line-height: 1.5em;
    color: var(--color-title);
    overflow: overlay;
  }
  h1,
  h2,
  h3,
  h4,
  h5 {
    font-family: var(--font-family-title);
    color: var(--color-title);
    font-weight: bold;
    margin: 0;
    padding: 0;
  }
  h2,
  h3,
  h4,
  h5 {
    line-height: 1.5rem;
  }
  p {
    color: var(--color-text);
    margin: 0;
  }
  b,
  strong {
    color: var(--color-title);
  }
  small {
    font-size: 0.8rem;
    text-transform: uppercase;
    font-weight: bold;
    line-height: 1em;
  }
  i {
    font-size: 1rem;
  }
  a i,
  button i {
    transition: var(--transition);
  }
  a:hover i,
  button:hover i {
    transform: rotate(-15deg);
  }
  button {
    letter-spacing: 0.05em;
  }
  input:focus,
  select:focus {
    outline: none;
    border: var(--border);
  }
  input:autofill,
  input:-webkit-autofill {
    background: transparent;
  }
  .container {
    margin: 0 auto;
    max-width: var(--container-width);
    display: grid;
    box-sizing: border-box;
  }
  .btn {
    font-weight: bold;
    font-size: 1rem;
    display: inline-block;
    margin: 0;
    padding: var(--spacing-m) var(--spacing-l);
    border: var(--border);
    border-radius: var(--border-radius);
    transition: var(--transition);
  }
  .btn h2 {
    font-size: 1rem;
    line-height: 1em;
  }
  .btn p {
    font-weight: normal;
  }
  .btn i {
    margin-right: var(--spacing-s);
    transition: var(--transition);
  }
  .btn:hover i {
    transform: rotate(-15deg);
  }
  .btn.btn--icon i {
    margin: 0;
  }
  .btn.btn--primary {
    color: var(--color-primary);
    border-color: var(--color-primary);
    background: rgba(var(--background-primary), 0.1);
  }
  .btn.btn--primary:hover,
  .btn--primary:focus {
    color: var(--color-primary);
    background: rgba(var(--background-primary), 0.2);
  }
  .btn.btn--primary small.tag {
    background: rgba(var(--background-primary), 0.1);
  }
  .btn.btn--primary h2,
  .btn.btn--primary p {
    color: var(--color-primary);
  }
  .btn.btn--secondary {
    color: var(--color-secondary);
    border-color: var(--color-secondary);
    background: rgba(var(--background-secondary), 0.1);
  }
  .btn.btn--secondary:hover,
  .btn.btn--secondary:focus {
    color: var(--color-secondary);
    background: rgba(var(--background-secondary), 0.2);
  }
  .btn.btn--secondary small.tag {
    background: rgba(var(--background-secondary), 0.1);
  }
  .btn.btn--secondary h2,
  .btn.btn--secondary p {
    color: var(--color-secondary);
  }
  .btn.btn--danger {
    color: var(--color-danger);
    border-color: var(--color-danger);
    background: rgba(var(--background-danger), 0.1);
  }
  .btn.btn--danger:hover,
  .btn.btn--danger:focus {
    color: var(--color-danger);
    background: rgba(var(--background-danger), 0.2);
  }
  .btn.btn--danger small.tag {
    background: rgba(var(--background-danger), 0.1);
  }
  .btn.btn--danger h2,
  .btn.btn--danger p {
    color: var(--color-danger);
  }
  .btn.btn--success {
    color: var(--color-success);
    border-color: var(--color-success);
    background: rgba(var(--background-success), 0.1);
  }
  .btn.btn--success:hover,
  .btn.btn--success:focus {
    color: var(--color-success);
    background: rgba(var(--background-success), 0.2);
  }
  .btn.btn--success small.tag {
    background: rgba(var(--background-success), 0.1);
  }
  .btn.btn--success h2,
  .btn.btn--success p {
    color: var(--color-success);
  }
  .btn.btn--neutral {
    color: var(--color-title);
    border-color: rgba(var(--background-title), 0.2);
    background: rgba(var(--background-title), 0.05);
  }
  .btn.btn--neutral:hover,
  .btn.btn--neutral:focus {
    color: var(--color-title);
    background: rgba(var(--background-title), 0.1);
  }
  .btn.btn--neutral i {
    opacity: 0.5;
  }
  .btn.btn--neutral:hover i {
    opacity: 1;
  }
  .btn.btn--disable {
    cursor: default;
  }
  .btn.btn--disable:hover i {
    transform: none;
  }
  .btn.btn--disable.btn--primary:hover {
    background: rgba(var(--background-primary), 0.1);
  }
  .btn.btn--disable.btn--secondary:hover {
    background: rgba(var(--background-secondary), 0.1);
  }
  .btn.btn--disable.btn--success:hover {
    background: rgba(var(--background-success), 0.1);
  }
  .btn.btn--disable.btn--danger:hover {
    background: rgba(var(--background-danger), 0.1);
  }
  .btn.btn--disable.btn--neutral:hover {
    background: rgba(var(--background-title), 0.05);
  }
  .tag {
    border-radius: calc(var(--border-radius) * 0.5);
    display: inline;
    padding: 0 var(--spacing-s);
    text-transform: uppercase;
    font-weight: bold;
  }
  .tag i {
    margin-right: var(--spacing-xs);
  }
  .tag:hover i,
  a:hover .tag i {
    transform: none;
  }
  .tag--primary {
    color: var(--color-primary);
    background: rgba(var(--background-primary), 0.1);
  }
  .tag--secondary {
    color: var(--color-secondary);
    background: rgba(var(--background-secondary), 0.1);
  }
  .tag--success {
    color: var(--color-success);
    background: rgba(var(--background-success), 0.1);
  }
  .tag--danger {
    color: var(--color-danger);
    background: rgba(var(--background-danger), 0.1);
  }
  .tag--neutral {
    color: var(--color-title);
    background: rgba(var(--background-title), 0.05);
  }
  .tag--700 {
    color: rgba(var(--background-title), 0.5);
    background: var(--background-700);
  }
  .loading:before {
    content: '';
    display: inline-block;
    width: 1em;
    height: 1em;
    border: 2px solid transparent;
    border-radius: 50%;
    border-color: var(--color-title);
    border-bottom-color: transparent;
    -webkit-animation: spin 0.5s linear infinite;
    animation: spin 0.5s linear infinite;
    margin: 0 !important;
    vertical-align: middle;
  }
  .btn--primary.loading:before {
    border-color: var(--color-primary);
    border-bottom-color: transparent;
  }
  .btn--secondary.loading:before {
    border-color: var(--color-secondary);
    border-bottom-color: transparent;
  }
  .btn--success.loading:before {
    border-color: var(--color-success);
    border-bottom-color: transparent;
  }
  .btn--danger.loading:before {
    border-color: var(--color-danger);
    border-bottom-color: transparent;
  }
  @-webkit-keyframes spin {
    0% {
      -webkit-transform: rotate(0deg);
    }
    100% {
      -webkit-transform: rotate(360deg);
    }
  }
  @keyframes spin {
    0% {
      transform: rotate(0deg);
    }
    100% {
      transform: rotate(360deg);
    }
  }
  .input,
  .panel__body input {
    width: 100%;
    font-size: 1rem;
    line-height: 1.5em;
    display: inline-block;
    margin: 0;
    padding: var(--spacing-m) var(--spacing-l);
    border: var(--border);
    border-radius: calc(var(--border-radius) * 0.75);
    transition: var(--transition);
    background: var(--background-900);
  }
  .input::placeholder,
  .panel__body input::placeholder {
    font-weight: bold;
    color: var(--color-title);
    opacity: 0.5;
  }
  .input--900,
  .panel--700 .panel__body input {
    background: var(--background-900);
  }
  .input--700,
  .panel--900 .panel__body input {
    background: var(--background-700);
  }
  .input--neutral {
    color: var(--color-title);
    background: rgba(var(--background-title), 0.1);
    border-color: rgba(var(--background-title), 0.2);
  }
  .input--neutral:hover,
  .input--neutral:active,
  .input--neutral:focus,
  .input--neutral:not(:placeholder-shown) {
    background: rgba(var(--background-title), 0.05);
  }
  .input-after {
    position: relative;
    width: 100%;
    height: 100%;
  }
  .input-after p {
    font-weight: bold;
    color: var(--color-title);
    position: absolute;
    transform: translateY(-50%);
    top: 50%;
    right: var(--spacing-l);
  }
  img.background {
    position: absolute;
    z-index: -1;
    width: 100%;
    height: 500px;
    object-fit: cover;
    -webkit-mask-image: -webkit-gradient(
      linear,
      left top,
      left bottom,
      from(rgba(0, 0, 0, 1)),
      to(rgba(0, 0, 0, 0))
    );
    mask-image: linear-gradient(to bottom, rgba(0, 0, 0, 1), rgba(0, 0, 0, 0));
    opacity: 0.2;
  }

  /************************
  DROWNDOWN & SELECT
  ************************/
  .dropdown,
  .dropdown > a,
  .dropdown > button {
    border-radius: var(--border-radius);
    transition: var(--transition);
  }
  .dropdown--open,
  .dropdown--open > a,
  .dropdown--open > button {
    border-bottom-left-radius: 0;
    border-bottom-right-radius: 0;
  }
  .dropdown--open i.fa-caret-right {
    transform: rotate(90deg);
  }
  .dropdown--input {
    border: var(--border);
    border-color: var(--color-secondary);
  }
  .dropdown--input.dropdown--open {
    border-radius: var(--border-radius);
  }
  .dropdown--input > .btn {
    width: 100%;
    border: none;
  }
  .dropdown--input.dropdown--open > .btn {
    background: rgba(var(--background-secondary), 0.2);
  }
  .dropdown--input form {
    background: rgba(var(--background-secondary), 0.1);
    display: grid;
    grid-template-columns: 1fr auto;
    align-items: center;
    padding: var(--spacing-s);
    border-bottom-left-radius: var(--border-radius);
    border-bottom-right-radius: var(--border-radius);
  }
  .dropdown--input input {
    background: transparent !important;
    border: none;
    padding: 0 var(--spacing-m);
    color: var(--color-title);
    display: block;
    width: auto;
  }
  .dropdown--input input::placeholder {
    color: var(--color-secondary);
    font-weight: normal;
  }
  .dropdown--input form .btn {
    border: none;
    width: 2.5rem;
    height: 2.5rem;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 0;
  }
  .dropdown--input form .btn i {
    margin: 0;
  }
  .dropdown--input.dropdown--open i.fa-caret-right {
    transform: none;
  }
  .dropdown--input.dropdown--open .btn:hover i.fa-caret-right {
    transform: rotate(-15deg);
  }
  .select {
    position: relative;
  }
  .select__toggle i {
    margin: 0;
    margin-left: var(--spacing-s);
    opacity: 0.5;
  }
  .select__toggle:hover i {
    opacity: 1;
  }
  .select__options {
    list-style: none;
    font-weight: bold;
    padding: var(--spacing-s);
    color: var(--color-title);
    border: var(--border);
    border-radius: var(--border-radius);
    background: var(--background-900);
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: var(--spacing-s);
    min-width: 10ch;
    position: absolute;
    top: 3.5rem;
    left: 0;
    z-index: 97;
  }
  .select__options:after {
    content: '';
    width: calc(100% + 2 * var(--border-width));
    height: calc(100% + 2 * var(--border-width));
    border-radius: var(--border-radius);
    border: var(--border);
    border-color: rgba(var(--background-title), 0.2);
    background: rgba(var(--background-title), 0.05);
    position: absolute;
    top: calc(-1 * var(--border-width));
    left: calc(-1 * var(--border-width));
    z-index: -1;
  }
  .select__options li {
    cursor: pointer;
    text-align: center;
    border-radius: calc(var(--border-radius) * 0.5);
    padding: var(--spacing-xs) var(--spacing-l);
    opacity: 0.5;
    transition: var(--transition);
  }
  .select__options li.select__active {
    background: rgba(var(--background-title), 0.1);
    opacity: 1;
  }
  .select__options li:hover {
    opacity: 1;
  }
  .select__options li a {
    color: var(--color-title);
  }
  .title {
    display: flex;
    align-items: center;
    margin-bottom: var(--spacing-m);
  }
  .title i {
      font-size: var(--font-size-header);
  }
  .title h2 {
      font-size: 1.5rem;
  }
  .title__icon {
      height: 3.5rem;
      width: 3.5rem;
      display: flex;
      align-items: center;
      justify-content: center;
      background: var(--background-900);
      border-radius: var(--border-radius);
      margin-right: var(--spacing-m);
  }
  /************************
  HEADER
  ************************/
  .header {
      background: var(--background-900);
      min-height: 100vh;
      padding: var(--spacing-grid);
  }
  .header__logo {
      display: block;
      text-align: center;
      margin-bottom: var(--spacing-grid);
  }
  .header__logo img {
      max-width: 80%;
      max-height: 250px;
  }
  .header__socials {
      display: grid;
      grid-template-columns: repeat(2, 1fr);
      gap: var(--spacing-m);
      margin-bottom: var(--spacing-grid);
  }
  .header__socials a {
      text-align: center;
  }
  .header__socials a h2 {
      font-size: 1rem;
      margin: 0;
      padding: 0;
      display: block;
      margin-bottom: var(--spacing-xs);
  }
  a.header__custom {
      display: flex;
      align-items: center;
      justify-content: center;
  }
  a.header__custom h2 {
      margin: 0;
  }
  .header__socials a:first-child:nth-last-child(1), .header__socials a:first-child:nth-last-child(3) {
      grid-column: span 2;
  }
  /************************
  NAVIGATION
  ************************/
  .nav {
      list-style: none;
  }
  .nav li {
      font-weight: bold;
      color: var(--color-title);
      margin-bottom: var(--spacing-xs);
      border-radius: var(--border-radius);
      border: var(--border);
  }
  .nav li:last-of-type {
      margin-bottom: 0;
  }
  .nav li a {
      border-radius: var(--border-radius);
      padding: var(--spacing-l) var(--spacing-grid);
      color: var(--color-title);
      transition: var(--transition);
  }
  .nav li a:hover, .nav li a:focus {
      text-decoration: none;
  }
  .nav > li:not(.active) > a:hover, .nav > li:not(.active) > a:focus {
      background: var(--background-700);
  }
  .nav > li.active > a:hover, .nav > li.active > a:focus {
      background: rgba(var(--background-primary), .2);
  }
  .nav > li.active {
      border-color: var(--color-primary);
  }
  .nav > li.active > a {
      color: var(--color-primary);
      background: rgba(var(--background-primary), .1);
  }
  .nav .dropdown ul {
      list-style: none;
      background: var(--background-700);
      border-bottom-left-radius: var(--border-radius);
      border-bottom-right-radius: var(--border-radius);
      padding: var(--spacing-s);
  }
  .nav .dropdown li a {
      display: block;
      padding: var(--spacing-m) var(--spacing-grid);
      border-radius: calc(var(--border-radius) * 0.75);
      background: transparent;
  }
  .nav .dropdown:not(.active) ul {
      margin-top: var(--border-width);
  }
  .nav .dropdown:not(.active) li > a:hover, .nav .dropdown:not(.active) li > a:focus {
      background: var(--background-900);
      text-decoration: none;
  }
  .nav .dropdown.active li > a:hover, .nav .dropdown.active li > a:focus {
      background: rgba(var(--background-primary), .1);
  }
  .nav .dropdown--open a {
      background: var(--background-700);
      border-bottom-left-radius: 0;
      border-bottom-right-radius: 0;
  }
  .nav .dropdown.active ul {
      background: rgba(var(--background-primary), .1);
  }
  .nav .dropdown a i {
      float: right;
      vertical-align: middle;
      line-height: 1.5em;
      transition: var(--transition);
  }
  .nav .dropdown--open a i {
      transform: rotate(90deg);
  }
  /****** NAVIGATION ICONS ******/
  .nav-icons > li > a:hover:before {
      transform: rotate(-15deg);
      opacity: 1;
  }
  .nav-icons > li > a:before {
      display:var(--fa-display,inline-block);
      font-family:var(--fa-style-family,"Font Awesome 6 Free");
      font-weight:var(--fa-style,900);
      font-style:normal;
      font-variant:normal;
      line-height:1;
      -moz-osx-font-smoothing:grayscale;
      -webkit-font-smoothing:antialiased;
      text-rendering:auto;
      margin-right: var(--spacing-l);
      width: 1.5rem;
      transition: var(--transition);
      opacity: .5;
  }
  .nav-icons > li.active > a:before {
      opacity: 1;
  }
  .nav-icons .nav--home > a:before {content:"\e3af"} /* DEFAULT */
  .nav-icons .nav--category > a:before {content:"\f54e"} /* DEFAULT */
  .nav-icons .nav--page > a:before {content:"\f1ea"} /* DEFAULT */
  .nav-icons .nav--store > a:before {content:"\f54e"}
  .nav-icons .nav--keys > a:before, .nav-icons .nav--crate-keys > a:before {content:"\f084"}
  .nav-icons .nav--kits > a:before {content:"\f552"}
  .nav-icons .nav--ranks > a:before {content:"\f521"}
  .nav-icons .nav--upgrades > a:before, .nav--rank-upgrades > a:before {content:"\f0aa"}
  .nav-icons .nav--cosmetics > a:before {content:"\f666"}
  .nav-icons .nav--items > a:before {content:"\f564"}
  .nav-icons .nav--crates > a:before, .nav--boxes > a:before, .nav--mystery-boxes > a:before, .nav--bundles > a:before {content:"\f49e"}
  .nav-icons .nav--coins > a:before, .nav-icons .nav--gold > a:before {content:"\f51e"}
</style>
