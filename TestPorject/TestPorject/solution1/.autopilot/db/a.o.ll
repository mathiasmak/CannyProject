; ModuleID = 'C:/Users/mathi/Desktop/Kandidat/Embedded/Project/testings/TestPorject/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=0]
define void @greyScale(i8* %pixelInput, i8* %pixelOutput) nounwind {
  %1 = alloca i8*, align 4                        ; [#uses=6 type=i8**]
  %2 = alloca i8*, align 4                        ; [#uses=6 type=i8**]
  %grey = alloca i32, align 4                     ; [#uses=5 type=i32*]
  %pixelStart = alloca i32, align 4               ; [#uses=9 type=i32*]
  %blueChannel = alloca i32, align 4              ; [#uses=2 type=i32*]
  %greenChannel = alloca i32, align 4             ; [#uses=2 type=i32*]
  %redChannel = alloca i32, align 4               ; [#uses=2 type=i32*]
  store i8* %pixelInput, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !20), !dbg !21 ; [debug line = 20:21] [debug variable = pixelInput]
  store i8* %pixelOutput, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !22), !dbg !23 ; [debug line = 20:46] [debug variable = pixelOutput]
  %3 = load i8** %2, align 4, !dbg !24            ; [#uses=1 type=i8*] [debug line = 20:66]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i8*, i32)*)(i8* %3, i32 1536) nounwind, !dbg !24 ; [debug line = 20:66]
  %4 = load i8** %1, align 4, !dbg !26            ; [#uses=1 type=i8*] [debug line = 20:108]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i8*, i32)*)(i8* %4, i32 1536) nounwind, !dbg !26 ; [debug line = 20:108]
  %5 = load i8** %1, align 4, !dbg !27            ; [#uses=1 type=i8*] [debug line = 21:1]
  call void bitcast (void (...)* @_ssdm_op_SpecInterface to void (i8*, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*)*)(i8* %5, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !27 ; [debug line = 21:1]
  %6 = load i8** %2, align 4, !dbg !28            ; [#uses=1 type=i8*] [debug line = 22:1]
  call void bitcast (void (...)* @_ssdm_op_SpecInterface to void (i8*, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*)*)(i8* %6, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !28 ; [debug line = 22:1]
  call void bitcast (void (...)* @_ssdm_op_SpecInterface to void (i32, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*)*)(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !29 ; [debug line = 25:1]
  call void @llvm.dbg.declare(metadata !{i32* %grey}, metadata !30), !dbg !32 ; [debug line = 28:6] [debug variable = grey]
  store i32 0, i32* %grey, align 4, !dbg !33      ; [debug line = 28:14]
  call void @llvm.dbg.declare(metadata !{i32* %pixelStart}, metadata !34), !dbg !36 ; [debug line = 30:19] [debug variable = pixelStart]
  br label %7, !dbg !37                           ; [debug line = 30:30]

; <label>:7                                       ; preds = %57, %0
  %8 = load i32* %pixelStart, align 4, !dbg !37   ; [#uses=1 type=i32] [debug line = 30:30]
  %9 = icmp ult i32 %8, 4, !dbg !37               ; [#uses=1 type=i1] [debug line = 30:30]
  br i1 %9, label %10, label %60, !dbg !37        ; [debug line = 30:30]

; <label>:10                                      ; preds = %7
  call void @llvm.dbg.declare(metadata !{i32* %blueChannel}, metadata !38), !dbg !40 ; [debug line = 31:16] [debug variable = blueChannel]
  %11 = load i32* %pixelStart, align 4, !dbg !41  ; [#uses=1 type=i32] [debug line = 31:52]
  %12 = load i8** %1, align 4, !dbg !41           ; [#uses=1 type=i8*] [debug line = 31:52]
  %13 = getelementptr inbounds i8* %12, i32 %11, !dbg !41 ; [#uses=1 type=i8*] [debug line = 31:52]
  %14 = load i8* %13, align 1, !dbg !41           ; [#uses=1 type=i8] [debug line = 31:52]
  %15 = sext i8 %14 to i32, !dbg !41              ; [#uses=1 type=i32] [debug line = 31:52]
  store i32 %15, i32* %blueChannel, align 4, !dbg !41 ; [debug line = 31:52]
  call void @llvm.dbg.declare(metadata !{i32* %greenChannel}, metadata !42), !dbg !43 ; [debug line = 32:16] [debug variable = greenChannel]
  %16 = load i32* %pixelStart, align 4, !dbg !44  ; [#uses=1 type=i32] [debug line = 32:55]
  %17 = add nsw i32 %16, 1, !dbg !44              ; [#uses=1 type=i32] [debug line = 32:55]
  %18 = load i8** %1, align 4, !dbg !44           ; [#uses=1 type=i8*] [debug line = 32:55]
  %19 = getelementptr inbounds i8* %18, i32 %17, !dbg !44 ; [#uses=1 type=i8*] [debug line = 32:55]
  %20 = load i8* %19, align 1, !dbg !44           ; [#uses=1 type=i8] [debug line = 32:55]
  %21 = sext i8 %20 to i32, !dbg !44              ; [#uses=1 type=i32] [debug line = 32:55]
  store i32 %21, i32* %greenChannel, align 4, !dbg !44 ; [debug line = 32:55]
  call void @llvm.dbg.declare(metadata !{i32* %redChannel}, metadata !45), !dbg !46 ; [debug line = 33:16] [debug variable = redChannel]
  %22 = load i32* %pixelStart, align 4, !dbg !47  ; [#uses=1 type=i32] [debug line = 33:53]
  %23 = add nsw i32 %22, 2, !dbg !47              ; [#uses=1 type=i32] [debug line = 33:53]
  %24 = load i8** %1, align 4, !dbg !47           ; [#uses=1 type=i8*] [debug line = 33:53]
  %25 = getelementptr inbounds i8* %24, i32 %23, !dbg !47 ; [#uses=1 type=i8*] [debug line = 33:53]
  %26 = load i8* %25, align 1, !dbg !47           ; [#uses=1 type=i8] [debug line = 33:53]
  %27 = sext i8 %26 to i32, !dbg !47              ; [#uses=1 type=i32] [debug line = 33:53]
  store i32 %27, i32* %redChannel, align 4, !dbg !47 ; [debug line = 33:53]
  %28 = load i32* %blueChannel, align 4, !dbg !48 ; [#uses=1 type=i32] [debug line = 34:12]
  %29 = sitofp i32 %28 to double, !dbg !48        ; [#uses=1 type=double] [debug line = 34:12]
  %30 = fmul double %29, 1.100000e-01, !dbg !48   ; [#uses=1 type=double] [debug line = 34:12]
  %31 = load i32* %greenChannel, align 4, !dbg !48 ; [#uses=1 type=i32] [debug line = 34:12]
  %32 = sitofp i32 %31 to double, !dbg !48        ; [#uses=1 type=double] [debug line = 34:12]
  %33 = fmul double %32, 5.900000e-01, !dbg !48   ; [#uses=1 type=double] [debug line = 34:12]
  %34 = fadd double %30, %33, !dbg !48            ; [#uses=1 type=double] [debug line = 34:12]
  %35 = load i32* %redChannel, align 4, !dbg !48  ; [#uses=1 type=i32] [debug line = 34:12]
  %36 = sitofp i32 %35 to double, !dbg !48        ; [#uses=1 type=double] [debug line = 34:12]
  %37 = fmul double %36, 3.000000e-01, !dbg !48   ; [#uses=1 type=double] [debug line = 34:12]
  %38 = fadd double %34, %37, !dbg !48            ; [#uses=1 type=double] [debug line = 34:12]
  %39 = fptosi double %38 to i32, !dbg !48        ; [#uses=1 type=i32] [debug line = 34:12]
  store i32 %39, i32* %grey, align 4, !dbg !48    ; [debug line = 34:12]
  %40 = load i32* %grey, align 4, !dbg !49        ; [#uses=1 type=i32] [debug line = 35:12]
  %41 = trunc i32 %40 to i8, !dbg !49             ; [#uses=1 type=i8] [debug line = 35:12]
  %42 = load i32* %pixelStart, align 4, !dbg !49  ; [#uses=1 type=i32] [debug line = 35:12]
  %43 = load i8** %2, align 4, !dbg !49           ; [#uses=1 type=i8*] [debug line = 35:12]
  %44 = getelementptr inbounds i8* %43, i32 %42, !dbg !49 ; [#uses=1 type=i8*] [debug line = 35:12]
  store i8 %41, i8* %44, align 1, !dbg !49        ; [debug line = 35:12]
  %45 = load i32* %grey, align 4, !dbg !50        ; [#uses=1 type=i32] [debug line = 36:12]
  %46 = trunc i32 %45 to i8, !dbg !50             ; [#uses=1 type=i8] [debug line = 36:12]
  %47 = load i32* %pixelStart, align 4, !dbg !50  ; [#uses=1 type=i32] [debug line = 36:12]
  %48 = add nsw i32 %47, 1, !dbg !50              ; [#uses=1 type=i32] [debug line = 36:12]
  %49 = load i8** %2, align 4, !dbg !50           ; [#uses=1 type=i8*] [debug line = 36:12]
  %50 = getelementptr inbounds i8* %49, i32 %48, !dbg !50 ; [#uses=1 type=i8*] [debug line = 36:12]
  store i8 %46, i8* %50, align 1, !dbg !50        ; [debug line = 36:12]
  %51 = load i32* %grey, align 4, !dbg !51        ; [#uses=1 type=i32] [debug line = 37:6]
  %52 = trunc i32 %51 to i8, !dbg !51             ; [#uses=1 type=i8] [debug line = 37:6]
  %53 = load i32* %pixelStart, align 4, !dbg !51  ; [#uses=1 type=i32] [debug line = 37:6]
  %54 = add nsw i32 %53, 2, !dbg !51              ; [#uses=1 type=i32] [debug line = 37:6]
  %55 = load i8** %2, align 4, !dbg !51           ; [#uses=1 type=i8*] [debug line = 37:6]
  %56 = getelementptr inbounds i8* %55, i32 %54, !dbg !51 ; [#uses=1 type=i8*] [debug line = 37:6]
  store i8 %52, i8* %56, align 1, !dbg !51        ; [debug line = 37:6]
  br label %57, !dbg !52                          ; [debug line = 38:11]

; <label>:57                                      ; preds = %10
  %58 = load i32* %pixelStart, align 4, !dbg !53  ; [#uses=1 type=i32] [debug line = 30:66]
  %59 = add nsw i32 %58, 3, !dbg !53              ; [#uses=1 type=i32] [debug line = 30:66]
  store i32 %59, i32* %pixelStart, align 4, !dbg !53 ; [debug line = 30:66]
  br label %7, !dbg !53                           ; [debug line = 30:66]

; <label>:60                                      ; preds = %7
  ret void, !dbg !54                              ; [debug line = 42:1]
}

; [#uses=7]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecInterface(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!13}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/mathi/Desktop/Kandidat/Embedded/Project/testings/TestPorject/solution1/.autopilot/db/dataflow.pragma.2.c", metadata !"C:\5CUsers\5Cmathi\5CDesktop\5CKandidat\5CEmbedded\5CProject\5Ctestings", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"greyScale", metadata !"greyScale", metadata !"", metadata !6, i32 20, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*)* @greyScale, null, null, metadata !11, i32 20} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"TestPorject/dataflow.c", metadata !"C:\5CUsers\5Cmathi\5CDesktop\5CKandidat\5CEmbedded\5CProject\5Ctestings", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{void (i8*, i8*)* @greyScale, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"char*"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"pixelInput", metadata !"pixelOutput"}
!19 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!20 = metadata !{i32 786689, metadata !5, metadata !"pixelInput", metadata !6, i32 16777236, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!21 = metadata !{i32 20, i32 21, metadata !5, null}
!22 = metadata !{i32 786689, metadata !5, metadata !"pixelOutput", metadata !6, i32 33554452, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!23 = metadata !{i32 20, i32 46, metadata !5, null}
!24 = metadata !{i32 20, i32 66, metadata !25, null}
!25 = metadata !{i32 786443, metadata !5, i32 20, i32 65, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!26 = metadata !{i32 20, i32 108, metadata !25, null}
!27 = metadata !{i32 21, i32 1, metadata !25, null}
!28 = metadata !{i32 22, i32 1, metadata !25, null}
!29 = metadata !{i32 25, i32 1, metadata !25, null}
!30 = metadata !{i32 786688, metadata !25, metadata !"grey", metadata !6, i32 28, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!31 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!32 = metadata !{i32 28, i32 6, metadata !25, null}
!33 = metadata !{i32 28, i32 14, metadata !25, null}
!34 = metadata !{i32 786688, metadata !35, metadata !"pixelStart", metadata !6, i32 30, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!35 = metadata !{i32 786443, metadata !25, i32 30, i32 11, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!36 = metadata !{i32 30, i32 19, metadata !35, null}
!37 = metadata !{i32 30, i32 30, metadata !35, null}
!38 = metadata !{i32 786688, metadata !39, metadata !"blueChannel", metadata !6, i32 31, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!39 = metadata !{i32 786443, metadata !35, i32 30, i32 93, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!40 = metadata !{i32 31, i32 16, metadata !39, null}
!41 = metadata !{i32 31, i32 52, metadata !39, null}
!42 = metadata !{i32 786688, metadata !39, metadata !"greenChannel", metadata !6, i32 32, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!43 = metadata !{i32 32, i32 16, metadata !39, null}
!44 = metadata !{i32 32, i32 55, metadata !39, null}
!45 = metadata !{i32 786688, metadata !39, metadata !"redChannel", metadata !6, i32 33, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!46 = metadata !{i32 33, i32 16, metadata !39, null}
!47 = metadata !{i32 33, i32 53, metadata !39, null}
!48 = metadata !{i32 34, i32 12, metadata !39, null}
!49 = metadata !{i32 35, i32 12, metadata !39, null}
!50 = metadata !{i32 36, i32 12, metadata !39, null}
!51 = metadata !{i32 37, i32 6, metadata !39, null}
!52 = metadata !{i32 38, i32 11, metadata !39, null}
!53 = metadata !{i32 30, i32 66, metadata !35, null}
!54 = metadata !{i32 42, i32 1, metadata !25, null}
