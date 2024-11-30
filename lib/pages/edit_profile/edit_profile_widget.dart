import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'edit_profile_model.dart';
export 'edit_profile_model.dart';

class EditProfileWidget extends StatefulWidget {
  const EditProfileWidget({super.key});

  @override
  State<EditProfileWidget> createState() => _EditProfileWidgetState();
}

class _EditProfileWidgetState extends State<EditProfileWidget> {
  late EditProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditProfileModel());

    _model.fNameTextController ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.name, ''));
    _model.fNameFocusNode ??= FocusNode();

    _model.usernameTextController ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.username, ''));
    _model.usernameFocusNode ??= FocusNode();

    _model.emailTextController ??=
        TextEditingController(text: currentUserEmail);
    _model.emailFocusNode ??= FocusNode();

    _model.phoneNumTextController ??=
        TextEditingController(text: currentPhoneNumber);
    _model.phoneNumFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFFD7D00),
        appBar: AppBar(
          backgroundColor: const Color(0xFFFD7D00),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed('Dashboard');
            },
          ),
          title: Text(
            'Edit Profile',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Itim',
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  fontSize: 20.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [
            Align(
              alignment: const AlignmentDirectional(0.8, 0.0),
              child: FlutterFlowIconButton(
                borderRadius: 8.0,
                buttonSize: 40.0,
                icon: Icon(
                  Icons.logout,
                  color: FlutterFlowTheme.of(context).info,
                  size: 24.0,
                ),
                onPressed: () async {
                  GoRouter.of(context).prepareAuthEvent();
                  await authManager.signOut();
                  GoRouter.of(context).clearRedirectLocation();

                  context.goNamedAuth('loginPage', context.mounted);
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 10.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, -1.0),
                child: Container(
                  width: 386.0,
                  height: 113.0,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF531919),
                        Color(0xFF711D1D),
                        Color(0x00D9D9D9)
                      ],
                      stops: [0.0, 0.37, 1.0],
                      begin: AlignmentDirectional(0.0, -1.0),
                      end: AlignmentDirectional(0, 1.0),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: Container(
                  width: double.infinity,
                  height: 490.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, -0.34),
                        child: AuthUserStreamWidget(
                          builder: (context) => SizedBox(
                            width: 310.0,
                            child: TextFormField(
                              controller: _model.fNameTextController,
                              focusNode: _model.fNameFocusNode,
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: true,
                                labelText: 'Name',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Arimo',
                                      letterSpacing: 0.0,
                                    ),
                                alignLabelWithHint: true,
                                hintText: 'First Name',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Arimo',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Arimo',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                  ),
                              cursorColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              validator: _model.fNameTextControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, -0.06),
                        child: AuthUserStreamWidget(
                          builder: (context) => SizedBox(
                            width: 310.0,
                            child: TextFormField(
                              controller: _model.usernameTextController,
                              focusNode: _model.usernameFocusNode,
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: true,
                                labelText: 'Username',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Arimo',
                                      letterSpacing: 0.0,
                                    ),
                                alignLabelWithHint: true,
                                hintText: 'First Name',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Arimo',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Arimo',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                  ),
                              cursorColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              validator: _model.usernameTextControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.21),
                        child: SizedBox(
                          width: 310.0,
                          child: TextFormField(
                            controller: _model.emailTextController,
                            focusNode: _model.emailFocusNode,
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelText: 'Email Address',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Arimo',
                                    letterSpacing: 0.0,
                                  ),
                              alignLabelWithHint: true,
                              hintText: 'First Name',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Arimo',
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Arimo',
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                ),
                            keyboardType: TextInputType.emailAddress,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model.emailTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.52),
                        child: AuthUserStreamWidget(
                          builder: (context) => SizedBox(
                            width: 310.0,
                            child: TextFormField(
                              controller: _model.phoneNumTextController,
                              focusNode: _model.phoneNumFocusNode,
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: true,
                                labelText: 'Phone Number ',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Arimo',
                                      letterSpacing: 0.0,
                                    ),
                                alignLabelWithHint: true,
                                hintText: 'First Name',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Arimo',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Arimo',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                  ),
                              keyboardType: TextInputType.phone,
                              cursorColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              validator: _model.phoneNumTextControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.73, -0.56),
                        child: AuthUserStreamWidget(
                          builder: (context) => Text(
                            valueOrDefault(currentUserDocument?.name, ''),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Itim',
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.01, 0.85),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('ChangePassword');
                          },
                          text: 'Change Password',
                          options: FFButtonOptions(
                            width: 310.0,
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFFFD7D00),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Itim',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 10.0,
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.39, -0.57),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          icon: const Icon(
                            Icons.save,
                            color: Color(0xFFFD7D00),
                            size: 24.0,
                          ),
                          onPressed: () async {
                            await currentUserReference!
                                .update(createUmoveUsersRecordData(
                              email: _model.emailTextController.text,
                              name: _model.fNameTextController.text,
                              photoUrl: '',
                              phoneNumber: _model.phoneNumTextController.text,
                              username: _model.usernameTextController.text,
                            ));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, -0.83),
                child: AuthUserStreamWidget(
                  builder: (context) => Container(
                    width: 100.0,
                    height: 100.0,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      currentUserPhoto,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.23, -0.61),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 100.0,
                  buttonSize: 30.0,
                  fillColor: const Color(0xFFFD7D00),
                  icon: Icon(
                    Icons.edit,
                    color: FlutterFlowTheme.of(context).info,
                    size: 15.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
