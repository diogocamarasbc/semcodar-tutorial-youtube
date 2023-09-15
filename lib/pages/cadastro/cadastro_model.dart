import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CadastroModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for senha widget.
  TextEditingController? senhaController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaControllerValidator;
  // State field(s) for senhaConfirmar widget.
  TextEditingController? senhaConfirmarController;
  late bool senhaConfirmarVisibility;
  String? Function(BuildContext, String?)? senhaConfirmarControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    senhaVisibility = false;
    senhaConfirmarVisibility = false;
  }

  void dispose() {
    emailController?.dispose();
    senhaController?.dispose();
    senhaConfirmarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
