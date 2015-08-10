<x-table>
  <table>
    <thead>
      <tr each={ h in opts.heading }>
        <th>{ h }</th>
      </tr>
    </thead>
    <tbody>
      <tr each={ b in opts.body }>
        <td>{ b }</td>
      </tr>
    </tbody>
  </table>

  <style scoped>
  /* Thanks to: https://techblog.livingsocial.com/blog/2015/04/06/responsive-tables-in-pure-css/ */
  table {
    border: 1px solid #ccc;
    width: 100%;
    margin:0;
    padding:0;
    border-collapse: collapse;
    border-spacing: 0;
  }

  table tr {
    border: 1px solid #ddd;
    padding: 5px;
  }

  table th, table td {
    padding: 10px;
    text-align: center;
  }

  table th {
    text-transform: uppercase;
    font-size: 14px;
    letter-spacing: 1px;
  }

  @media screen and (max-width: 600px) {

    table {
      border: 0;
    }

    table thead {
      display: none;
    }

    table tr {
      margin-bottom: 10px;
      display: block;
      border-bottom: 2px solid #ddd;
    }

    table td {
      display: block;
      text-align: right;
      font-size: 13px;
      border-bottom: 1px dotted #ccc;
    }

    table td:last-child {
      border-bottom: 0;
    }

    table td:before {
      content: attr(data-label);
      float: left;
      text-transform: uppercase;
      font-weight: bold;
    }
  }
  </style>
</x-table>
