import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scrollable_table_view/scrollable_table_view.dart';

import 'model/graphmodels.dart';

class TableChartView extends StatelessWidget {
  final TabularData data;
  const TableChartView({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PaginationController _paginationController = PaginationController(
      rowCount: data.rows.length,
      rowsPerPage: 5,
    );

    int rowIndex = -1;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Expanded(
            child: ScrollableTableView(
              paginationController: _paginationController,
              columns: [
                TableViewColumn(
                  label: "",
                ),
                ...data.header.map((element) {
                  return TableViewColumn(
                    label: element,
                  );
                }),
              ].toList(),
              rows: data.rows.map(
                (row) {
                  rowIndex++;
                  int columnIndex = -1;
                  return TableViewRow(
                      cells: row.map((element) {
                    columnIndex++;
                    return TableViewCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(element,
                            style: columnIndex == 0
                                ? Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(color: data.rowColors[rowIndex])
                                    .copyWith(fontWeight: FontWeight.bold)
                                : Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(
                                        color: data.rowColors[rowIndex])),
                      ),
                    );
                  }).toList());
                },
              ).toList(),
            ),
          ),
          Center(
            child: ValueListenableBuilder(
                valueListenable: _paginationController,
                builder: (context, value, child) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: _paginationController.currentPage <= 1
                            ? null
                            : () {
                                _paginationController.jumpTo(1);
                              },
                        iconSize: 20,
                        splashRadius: 20,
                        icon: Icon(
                          Icons.keyboard_double_arrow_left_rounded,
                          color: _paginationController.currentPage <= 1
                              ? Colors.black26
                              : Theme.of(context).primaryColor,
                        ),
                      ),
                      IconButton(
                        onPressed: _paginationController.currentPage <= 1
                            ? null
                            : () {
                                _paginationController.previous();
                              },
                        iconSize: 20,
                        splashRadius: 20,
                        icon: Icon(
                          Icons.keyboard_arrow_left_rounded,
                          color: _paginationController.currentPage <= 1
                              ? Colors.black26
                              : Theme.of(context).primaryColor,
                        ),
                      ),
                      Text(
                          "Showing page: ${_paginationController.currentPage}  /  ${_paginationController.pageCount}",
                          style: Theme.of(context).textTheme.titleMedium),
                      IconButton(
                        onPressed: _paginationController.currentPage >=
                                _paginationController.pageCount
                            ? null
                            : () {
                                _paginationController.next();
                              },
                        iconSize: 20,
                        splashRadius: 20,
                        icon: Icon(
                          Icons.keyboard_arrow_right_rounded,
                          color: _paginationController.currentPage >=
                                  _paginationController.pageCount
                              ? Colors.black26
                              : Theme.of(context).primaryColor,
                        ),
                      ),
                      IconButton(
                        onPressed: _paginationController.currentPage >=
                                _paginationController.pageCount
                            ? null
                            : () {
                                _paginationController
                                    .jumpTo(_paginationController.pageCount);
                              },
                        iconSize: 20,
                        splashRadius: 20,
                        icon: Icon(
                          Icons.keyboard_double_arrow_right_rounded,
                          color: _paginationController.currentPage >=
                                  _paginationController.pageCount
                              ? Colors.black26
                              : Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
