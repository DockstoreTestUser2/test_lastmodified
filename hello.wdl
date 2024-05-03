task hello {
  String name

  command {
    echo 'Hello ${name}!'
  }
  output {
    File response = stdout()
  }
}

workflow test {
  meta {
    author: "DockstoreTestUser2"
  }

  call hello
}
