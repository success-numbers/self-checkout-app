import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/loading_progress_bloc.dart';
import 'package:lottie/lottie.dart';

class LoadingPaymentProgressIndicator extends StatelessWidget {
  final Widget child;
  const LoadingPaymentProgressIndicator({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoadingProgressBloc, LoadingProgressState>(
        builder: (context, state) {
      return Stack(
        children: [
          AbsorbPointer(
            absorbing:
                state.loadingControlState == LoadingControlState.inprogress,
            child: child,
          ),
          if(state.loadingControlState == LoadingControlState.inprogress && state.loadingType == LoadingType.print)
            Container(
              width: double.maxFinite,
              color: Colors.black45,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIndicatorDialog(
                      message: "Printing...",
                      lottieAssetPath: 'assets/lottie/printing_inprogress.json')
                ],
              ),
            ),
          if (state.loadingControlState == LoadingControlState.inprogress &&
              state.loadingType == LoadingType.email)
            Container(
              width: double.maxFinite,
              color: Colors.black45,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIndicatorDialog(
                      message: "Mailing the receipt...",
                      lottieAssetPath: 'assets/lottie/email_inprogress.json')
                ],
              ),
            ),

          if (state.loadingControlState == LoadingControlState.inprogress &&
              state.loadingType == LoadingType.progressLoader)
            Container(
              width: double.maxFinite,
              color: Colors.black45,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIndicatorDialog(
                      message: "On it...",
                      lottieAssetPath: 'assets/lottie/please_wait.json')
                ],
              ),
            ),
          if (state.loadingType == LoadingType.basic && state.loadingControlState == LoadingControlState.done)
            Container(
              width: double.maxFinite,
              color: Colors.black45,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIndicatorDialog(
                      message: "Done!",
                      lottieAssetPath: 'assets/lottie/done_progress.json')
                ],
              ),
            ),
        ],
      );
    });
  }
}

class CustomIndicatorDialog extends StatelessWidget {
  final String message;
  final String lottieAssetPath;

  const CustomIndicatorDialog({
    super.key,
    required this.message,
    required this.lottieAssetPath,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: SizedBox(
        height: 200,
        child: Column(
          children: [
            Lottie.asset(
              lottieAssetPath,
              width: 140,
              height: 140,
            ),
            Text(message),
          ],
        ),
      ),
    );
  }
}
