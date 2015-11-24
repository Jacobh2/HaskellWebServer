<apply template="base">

  <ifLoggedIn>
    <apply template="table" />
  </ifLoggedIn>

  <ifLoggedOut>
    <apply template="_login"/>
  </ifLoggedOut>

</apply>
