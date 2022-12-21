; ModuleID = 'C:/Users/mathi/Desktop/Kandidat/Embedded/Project/testings/TestPorject/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@greyScale_str = internal unnamed_addr constant [10 x i8] c"greyScale\00"
@RAM_1P_str = internal unnamed_addr constant [7 x i8] c"RAM_1P\00"
@p_str4 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str3 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i137 @llvm.part.select.i137(i137, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @greyScale([1536 x i8]* %pixelInput, [1536 x i8]* %pixelOutput) nounwind {
  %pixelStart_1 = alloca i32
  call void (...)* @_ssdm_op_SpecBitsMap([1536 x i8]* %pixelInput) nounwind, !map !463
  call void (...)* @_ssdm_op_SpecBitsMap([1536 x i8]* %pixelOutput) nounwind, !map !469
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @greyScale_str) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([1536 x i8]* %pixelInput, [1 x i8]* @p_str3, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str3, i32 -1, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3, [1 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecInterface([1536 x i8]* %pixelInput, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %empty_9 = call i32 (...)* @_ssdm_op_SpecMemCore([1536 x i8]* %pixelOutput, [1 x i8]* @p_str4, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str4, i32 -1, [1 x i8]* @p_str4, [1 x i8]* @p_str4, [1 x i8]* @p_str4, [1 x i8]* @p_str4, [1 x i8]* @p_str4) nounwind
  call void (...)* @_ssdm_op_SpecInterface([1536 x i8]* %pixelOutput, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %pixelStart_1_load = load i32* %pixelStart_1
  %tmp = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %pixelStart_1_load, i32 2, i32 31)
  %icmp = icmp eq i30 %tmp, 0
  br i1 %icmp, label %2, label %3

; <label>:2                                       ; preds = %1
  %pixelStart_1_load_1 = load i32* %pixelStart_1
  %pixelInput_addr = getelementptr [1536 x i8]* %pixelInput, i32 0, i32 %pixelStart_1_load_1
  %pixelInput_load = load i8* %pixelInput_addr, align 1
  %tmp_7 = trunc i32 %pixelStart_1_load_1 to i12
  %sum2 = add i12 1, %tmp_7
  %sum2_cast = zext i12 %sum2 to i32
  %pixelInput_addr_1 = getelementptr [1536 x i8]* %pixelInput, i32 0, i32 %sum2_cast
  %pixelInput_load_1 = load i8* %pixelInput_addr_1, align 1
  %sum4 = add i12 2, %tmp_7
  %sum4_cast = zext i12 %sum4 to i32
  %pixelInput_addr_2 = getelementptr [1536 x i8]* %pixelInput, i32 0, i32 %sum4_cast
  %pixelInput_load_2 = load i8* %pixelInput_addr_2, align 1
  %tmp_13 = sext i8 %pixelInput_load to i32
  %tmp_s = sitofp i32 %tmp_13 to double
  %tmp_1 = fmul double %tmp_s, 1.100000e-01
  %tmp_14 = sext i8 %pixelInput_load_1 to i32
  %tmp_2 = sitofp i32 %tmp_14 to double
  %tmp_3 = fmul double %tmp_2, 5.900000e-01
  %tmp_4 = fadd double %tmp_1, %tmp_3
  %tmp_15 = sext i8 %pixelInput_load_2 to i32
  %tmp_5 = sitofp i32 %tmp_15 to double
  %tmp_6 = fmul double %tmp_5, 3.000000e-01
  %x_assign = fadd double %tmp_4, %tmp_6
  %p_Val2_s = bitcast double %x_assign to i64
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %p_Val2_s, i32 63)
  %loc_V = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_Val2_s, i32 52, i32 62) nounwind
  %loc_V_1 = trunc i64 %p_Val2_s to i52
  %tmp_1_i_i_i = call i54 @_ssdm_op_BitConcatenate.i54.i1.i52.i1(i1 true, i52 %loc_V_1, i1 false)
  %tmp_1_i_i_i_cast = zext i54 %tmp_1_i_i_i to i137
  %tmp_i_i_i_i_cast1 = zext i11 %loc_V to i12
  %sh_assign = add i12 -1023, %tmp_i_i_i_i_cast1
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %sh_assign, i32 11)
  %tmp_3_i_i_i = sub i11 1023, %loc_V
  %tmp_3_i_i_i_cast = sext i11 %tmp_3_i_i_i to i12
  %sh_assign_1 = select i1 %isNeg, i12 %tmp_3_i_i_i_cast, i12 %sh_assign
  %sh_assign_1_cast = sext i12 %sh_assign_1 to i32
  %tmp_5_i_i_i = zext i32 %sh_assign_1_cast to i137
  %tmp_5_i_i_i_cast = zext i32 %sh_assign_1_cast to i54
  %tmp_6_i_i_i = lshr i54 %tmp_1_i_i_i, %tmp_5_i_i_i_cast
  %tmp_8_i_i_i = shl i137 %tmp_1_i_i_i_cast, %tmp_5_i_i_i
  %tmp_19 = call i1 @_ssdm_op_BitSelect.i1.i54.i32(i54 %tmp_6_i_i_i, i32 53)
  %tmp_10 = zext i1 %tmp_19 to i8
  %tmp_11 = call i8 @_ssdm_op_PartSelect.i8.i137.i32.i32(i137 %tmp_8_i_i_i, i32 53, i32 60)
  %tmp_12 = select i1 %isNeg, i8 %tmp_10, i8 %tmp_11
  %tmp_8 = sub i8 0, %tmp_12
  %tmp_9 = select i1 %p_Result_s, i8 %tmp_8, i8 %tmp_12
  %pixelOutput_addr = getelementptr [1536 x i8]* %pixelOutput, i32 0, i32 %pixelStart_1_load_1
  store i8 %tmp_9, i8* %pixelOutput_addr, align 1
  %pixelOutput_addr_1 = getelementptr [1536 x i8]* %pixelOutput, i32 0, i32 %sum2_cast
  store i8 %tmp_9, i8* %pixelOutput_addr_1, align 1
  %pixelOutput_addr_2 = getelementptr [1536 x i8]* %pixelOutput, i32 0, i32 %sum4_cast
  store i8 %tmp_9, i8* %pixelOutput_addr_2, align 1
  %pixelStart = add nsw i32 3, %pixelStart_1_load_1
  store i32 %pixelStart, i32* %pixelStart_1
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecMemCore(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_PartSelect.i8.i137.i32.i32(i137, i32, i32) nounwind readnone {
entry:
  %empty = call i137 @llvm.part.select.i137(i137 %0, i32 %1, i32 %2)
  %empty_10 = trunc i137 %empty to i8
  ret i8 %empty_10
}

declare i52 @_ssdm_op_PartSelect.i52.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_11 = trunc i32 %empty to i30
  ret i30 %empty_11
}

declare i12 @_ssdm_op_PartSelect.i12.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_12 = trunc i64 %empty to i11
  ret i11 %empty_12
}

define weak i1 @_ssdm_op_BitSelect.i1.i64.i32(i64, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64
  %empty_13 = shl i64 1, %empty
  %empty_14 = and i64 %0, %empty_13
  %empty_15 = icmp ne i64 %empty_14, 0
  ret i1 %empty_15
}

define weak i1 @_ssdm_op_BitSelect.i1.i54.i32(i54, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i54
  %empty_16 = shl i54 1, %empty
  %empty_17 = and i54 %0, %empty_16
  %empty_18 = icmp ne i54 %empty_17, 0
  ret i1 %empty_18
}

define weak i1 @_ssdm_op_BitSelect.i1.i12.i32(i12, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i12
  %empty_19 = shl i12 1, %empty
  %empty_20 = and i12 %0, %empty_19
  %empty_21 = icmp ne i12 %empty_20, 0
  ret i1 %empty_21
}

define weak i54 @_ssdm_op_BitConcatenate.i54.i1.i52.i1(i1, i52, i1) nounwind readnone {
entry:
  %empty = zext i52 %1 to i53
  %empty_22 = zext i1 %2 to i53
  %empty_23 = shl i53 %empty, 1
  %empty_24 = or i53 %empty_23, %empty_22
  %empty_25 = zext i1 %0 to i54
  %empty_26 = zext i53 %empty_24 to i54
  %empty_27 = shl i54 %empty_25, 53
  %empty_28 = or i54 %empty_27, %empty_26
  ret i54 %empty_28
}

declare void @_GLOBAL__I_a() nounwind

!opencl.kernels = !{!0, !7, !7, !7, !7, !13, !13, !13, !13, !15, !15, !15, !15, !7, !7, !7, !7, !13, !13, !13, !13, !15, !15, !15, !15, !17, !21, !27, !27, !27, !33, !36, !36, !27, !39, !39, !41, !27, !27, !27, !43, !43, !27, !27, !45, !48, !48, !27, !50, !53, !53, !27, !55, !55, !57, !55, !55, !57, !59, !36, !36, !65, !27, !27, !27, !68, !36, !36, !27, !27, !27, !70, !36, !36, !72, !27, !27, !27, !74, !74, !76, !76, !78, !27, !27, !57, !57, !27, !80, !82, !85, !85, !89, !89, !92, !92, !96, !98, !98, !27, !27, !27, !27, !100, !102, !102, !27, !27, !89, !103, !103, !105, !105, !107, !109, !109, !110, !112, !112, !110, !114, !114, !116, !118, !118, !27, !27, !119, !121, !121, !89, !89, !122, !122, !116, !119, !121, !121, !27, !89, !124, !124, !126, !127, !127, !129, !27, !80, !126, !131, !131, !80, !80, !27, !27, !27, !27, !27, !27, !27, !27, !17, !133, !27, !27, !27, !33, !135, !135, !137, !27, !43, !43, !27, !27, !139, !50, !141, !141, !27, !143, !143, !145, !143, !143, !145, !59, !147, !27, !27, !27, !149, !36, !36, !78, !27, !27, !145, !145, !112, !112, !110, !17, !151, !27, !27, !27, !33, !36, !36, !27, !153, !153, !155, !27, !43, !43, !27, !27, !157, !50, !159, !159, !27, !161, !161, !163, !161, !161, !163, !59, !165, !27, !27, !27, !167, !36, !36, !78, !27, !27, !163, !163, !112, !112, !110, !17, !169, !27, !27, !27, !33, !36, !36, !27, !171, !171, !173, !27, !43, !43, !27, !27, !175, !50, !177, !177, !27, !179, !179, !181, !179, !179, !181, !59, !183, !27, !27, !27, !185, !36, !36, !78, !27, !27, !181, !181, !112, !112, !110, !187, !189, !27, !191, !191, !193, !191, !191, !193, !195, !27, !27, !27, !197, !36, !36, !27, !199, !201, !203, !203, !78, !27, !27, !193, !193, !27, !80, !82, !205, !205, !89, !89, !207, !207, !209, !211, !211, !27, !27, !27, !27, !212, !214, !214, !27, !27, !89, !215, !215, !105, !105, !107, !109, !109, !217, !219, !219, !217, !221, !221, !222, !224, !224, !27, !27, !225, !227, !227, !89, !89, !228, !228, !222, !225, !227, !227, !89, !230, !230, !126, !232, !232, !234, !27, !236, !236, !27, !27, !27, !27, !187, !237, !239, !239, !241, !239, !239, !241, !243, !27, !27, !27, !245, !36, !36, !78, !27, !27, !241, !241, !219, !219, !217, !187, !247, !249, !249, !251, !249, !249, !251, !253, !27, !27, !27, !255, !36, !36, !78, !27, !27, !251, !251, !219, !219, !217, !187, !257, !259, !259, !261, !259, !259, !261, !263, !27, !27, !27, !265, !36, !36, !78, !27, !27, !261, !261, !219, !219, !217, !267, !269, !27, !271, !273, !274, !274, !276, !274, !274, !276, !278, !27, !27, !27, !280, !36, !36, !27, !282, !283, !285, !285, !78, !27, !27, !276, !276, !27, !80, !82, !287, !287, !89, !89, !289, !289, !291, !293, !293, !27, !27, !27, !294, !296, !296, !27, !89, !297, !297, !105, !105, !107, !109, !109, !299, !301, !301, !299, !303, !303, !304, !306, !306, !27, !27, !307, !309, !309, !89, !89, !310, !310, !304, !307, !309, !309, !27, !89, !312, !312, !126, !314, !314, !316, !27, !318, !318, !27, !27, !27, !27, !27, !267, !320, !322, !322, !324, !322, !322, !324, !326, !27, !27, !328, !36, !36, !78, !27, !27, !324, !324, !301, !301, !299, !267, !330, !332, !332, !334, !332, !332, !334, !336, !27, !27, !27, !338, !36, !36, !78, !27, !27, !334, !334, !301, !301, !299, !267, !340, !342, !342, !344, !342, !342, !344, !346, !27, !27, !27, !348, !36, !36, !78, !27, !27, !344, !344, !301, !301, !299, !17, !350, !27, !27, !27, !27, !352, !352, !354, !354, !356, !358, !358, !27, !80, !126, !360, !360, !43, !43, !27, !362, !50, !364, !364, !27, !55, !55, !57, !55, !55, !57, !59, !17, !366, !27, !27, !27, !27, !368, !368, !109, !109, !370, !372, !372, !27, !80, !126, !374, !374, !43, !43, !27, !376, !50, !378, !378, !27, !143, !143, !145, !27, !143, !143, !145, !59, !17, !380, !27, !27, !27, !27, !382, !382, !384, !384, !386, !388, !388, !27, !80, !126, !390, !390, !43, !43, !27, !392, !50, !394, !394, !27, !161, !161, !163, !27, !161, !161, !163, !59, !17, !396, !27, !27, !27, !27, !398, !398, !400, !400, !402, !404, !404, !27, !80, !126, !406, !406, !43, !43, !27, !408, !50, !410, !410, !27, !179, !179, !181, !27, !179, !179, !181, !59, !187, !412, !191, !191, !193, !191, !191, !193, !187, !414, !239, !239, !241, !239, !239, !241, !187, !416, !249, !249, !251, !249, !249, !251, !187, !418, !259, !259, !261, !259, !259, !261, !267, !420, !274, !274, !276, !274, !274, !276, !267, !422, !322, !322, !324, !322, !322, !324, !267, !424, !332, !332, !334, !332, !332, !334, !267, !426, !342, !342, !344, !342, !342, !344, !428, !428, !428, !27, !428, !428, !428, !27, !428, !428, !428, !428, !428, !428, !428, !428, !428, !428, !428, !428, !433, !433, !434, !27, !436, !27, !27, !27, !438, !438, !440, !440, !442, !27, !27, !27, !444, !27, !27, !27, !27, !446, !27, !105, !105, !107, !109, !109, !448, !433, !433, !434, !446, !105, !105, !107, !109, !109, !450, !433, !433, !434, !446, !428, !428, !428, !27, !428, !428, !428, !27, !428, !428, !428, !428, !428, !428, !428, !428, !428, !428, !428, !428, !27, !428, !428, !428, !27, !428, !428, !428, !27, !428, !428, !428, !27, !428, !428, !428, !27, !428, !428, !428, !428, !428, !428, !27, !428, !428, !428, !27, !428, !428, !428, !27, !428, !428, !428, !27, !428, !428, !428, !27, !428, !428, !428, !428, !428, !428, !27, !428, !428, !428, !27, !428, !428, !428, !27, !428, !428, !428, !27, !428, !428, !428, !27, !428, !428, !428, !27, !428, !428, !428, !27, !428, !428, !428, !428, !428, !428, !27, !428, !428, !428, !27, !428, !428, !428, !428, !428, !428, !27, !428, !428, !428, !27, !428, !428, !428, !27, !428, !428, !428, !27, !428, !428, !428, !27, !428, !428, !428, !428, !428, !428, !428, !428, !428, !428, !428, !428, !27, !428, !428, !428, !428, !428, !428, !452, !452, !452, !27, !428, !428, !428, !27, !428, !428, !428, !27, !428, !428, !428, !27, !452, !452, !452, !27, !452, !452, !452, !428, !428, !428, !27, !428, !428, !428, !27, !428, !428, !428, !27, !428, !428, !428, !428, !428, !428, !27, !428, !428, !428, !27, !428, !428, !428, !27, !428, !428, !428, !27, !428, !428, !428, !27, !428, !428, !428, !27, !428, !428, !428, !27, !428, !428, !428}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!456}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"char*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"pixelInput", metadata !"pixelOutput"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"half"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !12, metadata !6}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"float"}
!15 = metadata !{null, metadata !8, metadata !9, metadata !16, metadata !11, metadata !12, metadata !6}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"double"}
!17 = metadata !{null, metadata !18, metadata !2, metadata !19, metadata !4, metadata !20, metadata !6}
!18 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!19 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool"}
!20 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"detect_overflow"}
!21 = metadata !{null, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !6}
!22 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!23 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!24 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong long>::is_signed, _Bool>::type"}
!25 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!26 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"detect_overflow", metadata !""}
!27 = metadata !{null, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !6}
!28 = metadata !{metadata !"kernel_arg_addr_space"}
!29 = metadata !{metadata !"kernel_arg_access_qual"}
!30 = metadata !{metadata !"kernel_arg_type"}
!31 = metadata !{metadata !"kernel_arg_type_qual"}
!32 = metadata !{metadata !"kernel_arg_name"}
!33 = metadata !{null, metadata !8, metadata !9, metadata !34, metadata !11, metadata !35, metadata !6}
!34 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!35 = metadata !{metadata !"kernel_arg_name", metadata !"Cnative"}
!36 = metadata !{null, metadata !8, metadata !9, metadata !37, metadata !11, metadata !38, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!38 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!39 = metadata !{null, metadata !8, metadata !9, metadata !40, metadata !11, metadata !38, metadata !6}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<64, 64, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!41 = metadata !{null, metadata !8, metadata !9, metadata !42, metadata !11, metadata !38, metadata !6}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<64, 64, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!43 = metadata !{null, metadata !8, metadata !9, metadata !37, metadata !11, metadata !44, metadata !6}
!44 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!45 = metadata !{null, metadata !18, metadata !2, metadata !46, metadata !4, metadata !47, metadata !6}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 65, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!47 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!48 = metadata !{null, metadata !8, metadata !9, metadata !37, metadata !11, metadata !49, metadata !6}
!49 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!50 = metadata !{null, metadata !8, metadata !9, metadata !51, metadata !11, metadata !52, metadata !6}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!52 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!53 = metadata !{null, metadata !8, metadata !9, metadata !54, metadata !11, metadata !38, metadata !6}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 65, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!55 = metadata !{null, metadata !8, metadata !9, metadata !56, metadata !11, metadata !38, metadata !6}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<169, 116, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!57 = metadata !{null, metadata !8, metadata !9, metadata !58, metadata !11, metadata !38, metadata !6}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<169, 116, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!59 = metadata !{null, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !6}
!60 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!61 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool"}
!63 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!64 = metadata !{metadata !"kernel_arg_name", metadata !"underflow", metadata !"overflow", metadata !"lD", metadata !"sign"}
!65 = metadata !{null, metadata !18, metadata !2, metadata !66, metadata !4, metadata !67, metadata !6}
!66 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<169, false> &", metadata !"int"}
!67 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!68 = metadata !{null, metadata !8, metadata !9, metadata !69, metadata !11, metadata !52, metadata !6}
!69 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<169, false> &"}
!70 = metadata !{null, metadata !18, metadata !2, metadata !71, metadata !4, metadata !47, metadata !6}
!71 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"int"}
!72 = metadata !{null, metadata !18, metadata !2, metadata !73, metadata !4, metadata !67, metadata !6}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<32, true> &"}
!74 = metadata !{null, metadata !8, metadata !9, metadata !75, metadata !11, metadata !38, metadata !6}
!75 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!76 = metadata !{null, metadata !8, metadata !9, metadata !77, metadata !11, metadata !38, metadata !6}
!77 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &"}
!78 = metadata !{null, metadata !8, metadata !9, metadata !37, metadata !11, metadata !79, metadata !6}
!79 = metadata !{metadata !"kernel_arg_name", metadata !"sh"}
!80 = metadata !{null, metadata !8, metadata !9, metadata !81, metadata !11, metadata !44, metadata !6}
!81 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!82 = metadata !{null, metadata !8, metadata !9, metadata !83, metadata !11, metadata !84, metadata !6}
!83 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!84 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!85 = metadata !{null, metadata !86, metadata !2, metadata !87, metadata !4, metadata !88, metadata !6}
!86 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!87 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!88 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!89 = metadata !{null, metadata !18, metadata !2, metadata !90, metadata !4, metadata !91, metadata !6}
!90 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!91 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!92 = metadata !{null, metadata !93, metadata !23, metadata !94, metadata !25, metadata !95, metadata !6}
!93 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!94 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<52, false>*", metadata !"int", metadata !"int"}
!95 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!96 = metadata !{null, metadata !8, metadata !9, metadata !97, metadata !11, metadata !44, metadata !6}
!97 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<52, false> &"}
!98 = metadata !{null, metadata !8, metadata !9, metadata !97, metadata !11, metadata !99, metadata !6}
!99 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!100 = metadata !{null, metadata !8, metadata !9, metadata !101, metadata !11, metadata !44, metadata !6}
!101 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &"}
!102 = metadata !{null, metadata !8, metadata !9, metadata !101, metadata !11, metadata !38, metadata !6}
!103 = metadata !{null, metadata !93, metadata !23, metadata !104, metadata !25, metadata !95, metadata !6}
!104 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!105 = metadata !{null, metadata !8, metadata !9, metadata !37, metadata !11, metadata !106, metadata !6}
!106 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!107 = metadata !{null, metadata !8, metadata !9, metadata !37, metadata !11, metadata !108, metadata !6}
!108 = metadata !{metadata !"kernel_arg_name", metadata !"b"}
!109 = metadata !{null, metadata !8, metadata !9, metadata !51, metadata !11, metadata !38, metadata !6}
!110 = metadata !{null, metadata !8, metadata !9, metadata !111, metadata !11, metadata !38, metadata !6}
!111 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!112 = metadata !{null, metadata !8, metadata !9, metadata !113, metadata !11, metadata !38, metadata !6}
!113 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<53, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!114 = metadata !{null, metadata !8, metadata !9, metadata !16, metadata !11, metadata !115, metadata !6}
!115 = metadata !{metadata !"kernel_arg_name", metadata !"f"}
!116 = metadata !{null, metadata !8, metadata !9, metadata !117, metadata !11, metadata !44, metadata !6}
!117 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<64, false> &"}
!118 = metadata !{null, metadata !8, metadata !9, metadata !117, metadata !11, metadata !99, metadata !6}
!119 = metadata !{null, metadata !8, metadata !9, metadata !120, metadata !11, metadata !44, metadata !6}
!120 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &"}
!121 = metadata !{null, metadata !8, metadata !9, metadata !120, metadata !11, metadata !38, metadata !6}
!122 = metadata !{null, metadata !93, metadata !23, metadata !123, metadata !25, metadata !95, metadata !6}
!123 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int", metadata !"int"}
!124 = metadata !{null, metadata !93, metadata !23, metadata !125, metadata !25, metadata !95, metadata !6}
!125 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<11, false>*", metadata !"int", metadata !"int"}
!126 = metadata !{null, metadata !8, metadata !9, metadata !37, metadata !11, metadata !84, metadata !6}
!127 = metadata !{null, metadata !86, metadata !2, metadata !128, metadata !4, metadata !88, metadata !6}
!128 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int"}
!129 = metadata !{null, metadata !8, metadata !9, metadata !130, metadata !11, metadata !44, metadata !6}
!130 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<64, false> &"}
!131 = metadata !{null, metadata !86, metadata !2, metadata !132, metadata !4, metadata !88, metadata !6}
!132 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<1, false>*", metadata !"int"}
!133 = metadata !{null, metadata !22, metadata !23, metadata !134, metadata !25, metadata !26, metadata !6}
!134 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!135 = metadata !{null, metadata !8, metadata !9, metadata !136, metadata !11, metadata !38, metadata !6}
!136 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<32, 32, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!137 = metadata !{null, metadata !8, metadata !9, metadata !138, metadata !11, metadata !38, metadata !6}
!138 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!139 = metadata !{null, metadata !18, metadata !2, metadata !140, metadata !4, metadata !47, metadata !6}
!140 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 33, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!141 = metadata !{null, metadata !8, metadata !9, metadata !142, metadata !11, metadata !38, metadata !6}
!142 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 33, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!143 = metadata !{null, metadata !8, metadata !9, metadata !144, metadata !11, metadata !38, metadata !6}
!144 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<137, 84, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!145 = metadata !{null, metadata !8, metadata !9, metadata !146, metadata !11, metadata !38, metadata !6}
!146 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<137, 84, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!147 = metadata !{null, metadata !18, metadata !2, metadata !148, metadata !4, metadata !67, metadata !6}
!148 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<137, false> &", metadata !"int"}
!149 = metadata !{null, metadata !8, metadata !9, metadata !150, metadata !11, metadata !52, metadata !6}
!150 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<137, false> &"}
!151 = metadata !{null, metadata !22, metadata !23, metadata !152, metadata !25, metadata !26, metadata !6}
!152 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!153 = metadata !{null, metadata !8, metadata !9, metadata !154, metadata !11, metadata !38, metadata !6}
!154 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<16, 16, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!155 = metadata !{null, metadata !8, metadata !9, metadata !156, metadata !11, metadata !38, metadata !6}
!156 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<16, 16, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!157 = metadata !{null, metadata !18, metadata !2, metadata !158, metadata !4, metadata !47, metadata !6}
!158 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 17, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!159 = metadata !{null, metadata !8, metadata !9, metadata !160, metadata !11, metadata !38, metadata !6}
!160 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 17, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!161 = metadata !{null, metadata !8, metadata !9, metadata !162, metadata !11, metadata !38, metadata !6}
!162 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<121, 68, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!163 = metadata !{null, metadata !8, metadata !9, metadata !164, metadata !11, metadata !38, metadata !6}
!164 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<121, 68, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!165 = metadata !{null, metadata !18, metadata !2, metadata !166, metadata !4, metadata !67, metadata !6}
!166 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<121, false> &", metadata !"int"}
!167 = metadata !{null, metadata !8, metadata !9, metadata !168, metadata !11, metadata !52, metadata !6}
!168 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<121, false> &"}
!169 = metadata !{null, metadata !22, metadata !23, metadata !170, metadata !25, metadata !26, metadata !6}
!170 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!171 = metadata !{null, metadata !8, metadata !9, metadata !172, metadata !11, metadata !38, metadata !6}
!172 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<8, 8, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!173 = metadata !{null, metadata !8, metadata !9, metadata !174, metadata !11, metadata !38, metadata !6}
!174 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<8, 8, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!175 = metadata !{null, metadata !18, metadata !2, metadata !176, metadata !4, metadata !47, metadata !6}
!176 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!177 = metadata !{null, metadata !8, metadata !9, metadata !178, metadata !11, metadata !38, metadata !6}
!178 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!179 = metadata !{null, metadata !8, metadata !9, metadata !180, metadata !11, metadata !38, metadata !6}
!180 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<113, 60, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!181 = metadata !{null, metadata !8, metadata !9, metadata !182, metadata !11, metadata !38, metadata !6}
!182 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<113, 60, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!183 = metadata !{null, metadata !18, metadata !2, metadata !184, metadata !4, metadata !67, metadata !6}
!184 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<113, false> &", metadata !"int"}
!185 = metadata !{null, metadata !8, metadata !9, metadata !186, metadata !11, metadata !52, metadata !6}
!186 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<113, false> &"}
!187 = metadata !{null, metadata !18, metadata !2, metadata !188, metadata !4, metadata !20, metadata !6}
!188 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool"}
!189 = metadata !{null, metadata !22, metadata !23, metadata !190, metadata !25, metadata !26, metadata !6}
!190 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong long>::is_signed, _Bool>::type"}
!191 = metadata !{null, metadata !8, metadata !9, metadata !192, metadata !11, metadata !38, metadata !6}
!192 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<111, 87, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!193 = metadata !{null, metadata !8, metadata !9, metadata !194, metadata !11, metadata !38, metadata !6}
!194 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<111, 87, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!195 = metadata !{null, metadata !18, metadata !2, metadata !196, metadata !4, metadata !67, metadata !6}
!196 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<111, false> &", metadata !"int"}
!197 = metadata !{null, metadata !8, metadata !9, metadata !198, metadata !11, metadata !52, metadata !6}
!198 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<111, false> &"}
!199 = metadata !{null, metadata !18, metadata !2, metadata !200, metadata !4, metadata !47, metadata !6}
!200 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!201 = metadata !{null, metadata !18, metadata !2, metadata !202, metadata !4, metadata !67, metadata !6}
!202 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<32, true> &"}
!203 = metadata !{null, metadata !8, metadata !9, metadata !204, metadata !11, metadata !38, metadata !6}
!204 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!205 = metadata !{null, metadata !86, metadata !2, metadata !206, metadata !4, metadata !88, metadata !6}
!206 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!207 = metadata !{null, metadata !93, metadata !23, metadata !208, metadata !25, metadata !95, metadata !6}
!208 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<23, false>*", metadata !"int", metadata !"int"}
!209 = metadata !{null, metadata !8, metadata !9, metadata !210, metadata !11, metadata !44, metadata !6}
!210 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<23, false> &"}
!211 = metadata !{null, metadata !8, metadata !9, metadata !210, metadata !11, metadata !99, metadata !6}
!212 = metadata !{null, metadata !8, metadata !9, metadata !213, metadata !11, metadata !44, metadata !6}
!213 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &"}
!214 = metadata !{null, metadata !8, metadata !9, metadata !213, metadata !11, metadata !38, metadata !6}
!215 = metadata !{null, metadata !93, metadata !23, metadata !216, metadata !25, metadata !95, metadata !6}
!216 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!217 = metadata !{null, metadata !8, metadata !9, metadata !218, metadata !11, metadata !38, metadata !6}
!218 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!219 = metadata !{null, metadata !8, metadata !9, metadata !220, metadata !11, metadata !38, metadata !6}
!220 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<24, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!221 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !115, metadata !6}
!222 = metadata !{null, metadata !8, metadata !9, metadata !223, metadata !11, metadata !44, metadata !6}
!223 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<32, false> &"}
!224 = metadata !{null, metadata !8, metadata !9, metadata !223, metadata !11, metadata !99, metadata !6}
!225 = metadata !{null, metadata !8, metadata !9, metadata !226, metadata !11, metadata !44, metadata !6}
!226 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!227 = metadata !{null, metadata !8, metadata !9, metadata !226, metadata !11, metadata !38, metadata !6}
!228 = metadata !{null, metadata !93, metadata !23, metadata !229, metadata !25, metadata !95, metadata !6}
!229 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int", metadata !"int"}
!230 = metadata !{null, metadata !93, metadata !23, metadata !231, metadata !25, metadata !95, metadata !6}
!231 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false>*", metadata !"int", metadata !"int"}
!232 = metadata !{null, metadata !86, metadata !2, metadata !233, metadata !4, metadata !88, metadata !6}
!233 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int"}
!234 = metadata !{null, metadata !8, metadata !9, metadata !235, metadata !11, metadata !44, metadata !6}
!235 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<32, false> &"}
!236 = metadata !{null, metadata !8, metadata !9, metadata !83, metadata !11, metadata !44, metadata !6}
!237 = metadata !{null, metadata !22, metadata !23, metadata !238, metadata !25, metadata !26, metadata !6}
!238 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!239 = metadata !{null, metadata !8, metadata !9, metadata !240, metadata !11, metadata !38, metadata !6}
!240 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<79, 55, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!241 = metadata !{null, metadata !8, metadata !9, metadata !242, metadata !11, metadata !38, metadata !6}
!242 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<79, 55, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!243 = metadata !{null, metadata !18, metadata !2, metadata !244, metadata !4, metadata !67, metadata !6}
!244 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<79, false> &", metadata !"int"}
!245 = metadata !{null, metadata !8, metadata !9, metadata !246, metadata !11, metadata !52, metadata !6}
!246 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<79, false> &"}
!247 = metadata !{null, metadata !22, metadata !23, metadata !248, metadata !25, metadata !26, metadata !6}
!248 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!249 = metadata !{null, metadata !8, metadata !9, metadata !250, metadata !11, metadata !38, metadata !6}
!250 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<63, 39, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!251 = metadata !{null, metadata !8, metadata !9, metadata !252, metadata !11, metadata !38, metadata !6}
!252 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<63, 39, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!253 = metadata !{null, metadata !18, metadata !2, metadata !254, metadata !4, metadata !67, metadata !6}
!254 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<63, false> &", metadata !"int"}
!255 = metadata !{null, metadata !8, metadata !9, metadata !256, metadata !11, metadata !52, metadata !6}
!256 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<63, false> &"}
!257 = metadata !{null, metadata !22, metadata !23, metadata !258, metadata !25, metadata !26, metadata !6}
!258 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!259 = metadata !{null, metadata !8, metadata !9, metadata !260, metadata !11, metadata !38, metadata !6}
!260 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<55, 31, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!261 = metadata !{null, metadata !8, metadata !9, metadata !262, metadata !11, metadata !38, metadata !6}
!262 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<55, 31, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!263 = metadata !{null, metadata !18, metadata !2, metadata !264, metadata !4, metadata !67, metadata !6}
!264 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, false> &", metadata !"int"}
!265 = metadata !{null, metadata !8, metadata !9, metadata !266, metadata !11, metadata !52, metadata !6}
!266 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, false> &"}
!267 = metadata !{null, metadata !18, metadata !2, metadata !268, metadata !4, metadata !20, metadata !6}
!268 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool"}
!269 = metadata !{null, metadata !22, metadata !23, metadata !270, metadata !25, metadata !26, metadata !6}
!270 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong long>::is_signed, _Bool>::type"}
!271 = metadata !{null, metadata !18, metadata !2, metadata !272, metadata !4, metadata !67, metadata !6}
!272 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &", metadata !"int"}
!273 = metadata !{null, metadata !8, metadata !9, metadata !75, metadata !11, metadata !52, metadata !6}
!274 = metadata !{null, metadata !8, metadata !9, metadata !275, metadata !11, metadata !38, metadata !6}
!275 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<85, 74, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!276 = metadata !{null, metadata !8, metadata !9, metadata !277, metadata !11, metadata !38, metadata !6}
!277 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<85, 74, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!278 = metadata !{null, metadata !18, metadata !2, metadata !279, metadata !4, metadata !67, metadata !6}
!279 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<85, false> &", metadata !"int"}
!280 = metadata !{null, metadata !8, metadata !9, metadata !281, metadata !11, metadata !52, metadata !6}
!281 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<85, false> &"}
!282 = metadata !{null, metadata !18, metadata !2, metadata !272, metadata !4, metadata !47, metadata !6}
!283 = metadata !{null, metadata !18, metadata !2, metadata !284, metadata !4, metadata !67, metadata !6}
!284 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &", metadata !"const ap_int_base<32, true> &"}
!285 = metadata !{null, metadata !8, metadata !9, metadata !286, metadata !11, metadata !38, metadata !6}
!286 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &"}
!287 = metadata !{null, metadata !86, metadata !2, metadata !288, metadata !4, metadata !88, metadata !6}
!288 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<11, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!289 = metadata !{null, metadata !93, metadata !23, metadata !290, metadata !25, metadata !95, metadata !6}
!290 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<10, false>*", metadata !"int", metadata !"int"}
!291 = metadata !{null, metadata !8, metadata !9, metadata !292, metadata !11, metadata !44, metadata !6}
!292 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<10, false> &"}
!293 = metadata !{null, metadata !8, metadata !9, metadata !292, metadata !11, metadata !99, metadata !6}
!294 = metadata !{null, metadata !8, metadata !9, metadata !295, metadata !11, metadata !44, metadata !6}
!295 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<10, false> &"}
!296 = metadata !{null, metadata !8, metadata !9, metadata !295, metadata !11, metadata !38, metadata !6}
!297 = metadata !{null, metadata !93, metadata !23, metadata !298, metadata !25, metadata !95, metadata !6}
!298 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<11, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!299 = metadata !{null, metadata !8, metadata !9, metadata !300, metadata !11, metadata !38, metadata !6}
!300 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<11, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!301 = metadata !{null, metadata !8, metadata !9, metadata !302, metadata !11, metadata !38, metadata !6}
!302 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<11, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!303 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !115, metadata !6}
!304 = metadata !{null, metadata !8, metadata !9, metadata !305, metadata !11, metadata !44, metadata !6}
!305 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<16, false> &"}
!306 = metadata !{null, metadata !8, metadata !9, metadata !305, metadata !11, metadata !99, metadata !6}
!307 = metadata !{null, metadata !8, metadata !9, metadata !308, metadata !11, metadata !44, metadata !6}
!308 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, false> &"}
!309 = metadata !{null, metadata !8, metadata !9, metadata !308, metadata !11, metadata !38, metadata !6}
!310 = metadata !{null, metadata !93, metadata !23, metadata !311, metadata !25, metadata !95, metadata !6}
!311 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, false>*", metadata !"int", metadata !"int"}
!312 = metadata !{null, metadata !93, metadata !23, metadata !313, metadata !25, metadata !95, metadata !6}
!313 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<5, false>*", metadata !"int", metadata !"int"}
!314 = metadata !{null, metadata !86, metadata !2, metadata !315, metadata !4, metadata !88, metadata !6}
!315 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, false>*", metadata !"int"}
!316 = metadata !{null, metadata !8, metadata !9, metadata !317, metadata !11, metadata !44, metadata !6}
!317 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<16, false> &"}
!318 = metadata !{null, metadata !8, metadata !9, metadata !319, metadata !11, metadata !44, metadata !6}
!319 = metadata !{metadata !"kernel_arg_type", metadata !"ushort"}
!320 = metadata !{null, metadata !22, metadata !23, metadata !321, metadata !25, metadata !26, metadata !6}
!321 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!322 = metadata !{null, metadata !8, metadata !9, metadata !323, metadata !11, metadata !38, metadata !6}
!323 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<53, 42, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!324 = metadata !{null, metadata !8, metadata !9, metadata !325, metadata !11, metadata !38, metadata !6}
!325 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<53, 42, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!326 = metadata !{null, metadata !18, metadata !2, metadata !327, metadata !4, metadata !67, metadata !6}
!327 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<53, false> &", metadata !"int"}
!328 = metadata !{null, metadata !8, metadata !9, metadata !329, metadata !11, metadata !52, metadata !6}
!329 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<53, false> &"}
!330 = metadata !{null, metadata !22, metadata !23, metadata !331, metadata !25, metadata !26, metadata !6}
!331 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!332 = metadata !{null, metadata !8, metadata !9, metadata !333, metadata !11, metadata !38, metadata !6}
!333 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<37, 26, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!334 = metadata !{null, metadata !8, metadata !9, metadata !335, metadata !11, metadata !38, metadata !6}
!335 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<37, 26, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!336 = metadata !{null, metadata !18, metadata !2, metadata !337, metadata !4, metadata !67, metadata !6}
!337 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<37, false> &", metadata !"int"}
!338 = metadata !{null, metadata !8, metadata !9, metadata !339, metadata !11, metadata !52, metadata !6}
!339 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<37, false> &"}
!340 = metadata !{null, metadata !22, metadata !23, metadata !341, metadata !25, metadata !26, metadata !6}
!341 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!342 = metadata !{null, metadata !8, metadata !9, metadata !343, metadata !11, metadata !38, metadata !6}
!343 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<29, 18, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!344 = metadata !{null, metadata !8, metadata !9, metadata !345, metadata !11, metadata !38, metadata !6}
!345 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<29, 18, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!346 = metadata !{null, metadata !18, metadata !2, metadata !347, metadata !4, metadata !67, metadata !6}
!347 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<29, false> &", metadata !"int"}
!348 = metadata !{null, metadata !8, metadata !9, metadata !349, metadata !11, metadata !52, metadata !6}
!349 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<29, false> &"}
!350 = metadata !{null, metadata !22, metadata !23, metadata !351, metadata !25, metadata !26, metadata !6}
!351 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long long>::is_signed, _Bool>::type"}
!352 = metadata !{null, metadata !8, metadata !9, metadata !353, metadata !11, metadata !38, metadata !6}
!353 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<63, 63, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!354 = metadata !{null, metadata !8, metadata !9, metadata !355, metadata !11, metadata !38, metadata !6}
!355 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<64, 64, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!356 = metadata !{null, metadata !8, metadata !9, metadata !357, metadata !11, metadata !38, metadata !6}
!357 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<64, 64, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!358 = metadata !{null, metadata !8, metadata !9, metadata !359, metadata !11, metadata !38, metadata !6}
!359 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<63, 63, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!360 = metadata !{null, metadata !86, metadata !2, metadata !361, metadata !4, metadata !88, metadata !6}
!361 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, true>*", metadata !"int"}
!362 = metadata !{null, metadata !18, metadata !2, metadata !363, metadata !4, metadata !47, metadata !6}
!363 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 64, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!364 = metadata !{null, metadata !8, metadata !9, metadata !365, metadata !11, metadata !38, metadata !6}
!365 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 64, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!366 = metadata !{null, metadata !22, metadata !23, metadata !367, metadata !25, metadata !26, metadata !6}
!367 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!368 = metadata !{null, metadata !8, metadata !9, metadata !369, metadata !11, metadata !38, metadata !6}
!369 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 31, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!370 = metadata !{null, metadata !8, metadata !9, metadata !371, metadata !11, metadata !38, metadata !6}
!371 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<32, 32, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!372 = metadata !{null, metadata !8, metadata !9, metadata !373, metadata !11, metadata !38, metadata !6}
!373 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 31, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!374 = metadata !{null, metadata !86, metadata !2, metadata !375, metadata !4, metadata !88, metadata !6}
!375 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, true>*", metadata !"int"}
!376 = metadata !{null, metadata !18, metadata !2, metadata !377, metadata !4, metadata !47, metadata !6}
!377 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 32, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!378 = metadata !{null, metadata !8, metadata !9, metadata !379, metadata !11, metadata !38, metadata !6}
!379 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 32, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!380 = metadata !{null, metadata !22, metadata !23, metadata !381, metadata !25, metadata !26, metadata !6}
!381 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!382 = metadata !{null, metadata !8, metadata !9, metadata !383, metadata !11, metadata !38, metadata !6}
!383 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<15, 15, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!384 = metadata !{null, metadata !8, metadata !9, metadata !385, metadata !11, metadata !38, metadata !6}
!385 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<16, 16, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!386 = metadata !{null, metadata !8, metadata !9, metadata !387, metadata !11, metadata !38, metadata !6}
!387 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<16, 16, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!388 = metadata !{null, metadata !8, metadata !9, metadata !389, metadata !11, metadata !38, metadata !6}
!389 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<15, 15, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!390 = metadata !{null, metadata !86, metadata !2, metadata !391, metadata !4, metadata !88, metadata !6}
!391 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, true>*", metadata !"int"}
!392 = metadata !{null, metadata !18, metadata !2, metadata !393, metadata !4, metadata !47, metadata !6}
!393 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 16, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!394 = metadata !{null, metadata !8, metadata !9, metadata !395, metadata !11, metadata !38, metadata !6}
!395 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 16, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!396 = metadata !{null, metadata !22, metadata !23, metadata !397, metadata !25, metadata !26, metadata !6}
!397 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!398 = metadata !{null, metadata !8, metadata !9, metadata !399, metadata !11, metadata !38, metadata !6}
!399 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<7, 7, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!400 = metadata !{null, metadata !8, metadata !9, metadata !401, metadata !11, metadata !38, metadata !6}
!401 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<8, 8, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!402 = metadata !{null, metadata !8, metadata !9, metadata !403, metadata !11, metadata !38, metadata !6}
!403 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<8, 8, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!404 = metadata !{null, metadata !8, metadata !9, metadata !405, metadata !11, metadata !38, metadata !6}
!405 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<7, 7, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!406 = metadata !{null, metadata !86, metadata !2, metadata !407, metadata !4, metadata !88, metadata !6}
!407 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, true>*", metadata !"int"}
!408 = metadata !{null, metadata !18, metadata !2, metadata !409, metadata !4, metadata !47, metadata !6}
!409 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!410 = metadata !{null, metadata !8, metadata !9, metadata !411, metadata !11, metadata !38, metadata !6}
!411 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!412 = metadata !{null, metadata !22, metadata !23, metadata !413, metadata !25, metadata !26, metadata !6}
!413 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long long>::is_signed, _Bool>::type"}
!414 = metadata !{null, metadata !22, metadata !23, metadata !415, metadata !25, metadata !26, metadata !6}
!415 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!416 = metadata !{null, metadata !22, metadata !23, metadata !417, metadata !25, metadata !26, metadata !6}
!417 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!418 = metadata !{null, metadata !22, metadata !23, metadata !419, metadata !25, metadata !26, metadata !6}
!419 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!420 = metadata !{null, metadata !22, metadata !23, metadata !421, metadata !25, metadata !26, metadata !6}
!421 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long long>::is_signed, _Bool>::type"}
!422 = metadata !{null, metadata !22, metadata !23, metadata !423, metadata !25, metadata !26, metadata !6}
!423 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!424 = metadata !{null, metadata !22, metadata !23, metadata !425, metadata !25, metadata !26, metadata !6}
!425 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!426 = metadata !{null, metadata !22, metadata !23, metadata !427, metadata !25, metadata !26, metadata !6}
!427 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!428 = metadata !{null, metadata !429, metadata !9, metadata !430, metadata !431, metadata !432, metadata !6}
!429 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!430 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!431 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!432 = metadata !{metadata !"kernel_arg_name", metadata !"str"}
!433 = metadata !{null, metadata !8, metadata !9, metadata !16, metadata !11, metadata !106, metadata !6}
!434 = metadata !{null, metadata !8, metadata !9, metadata !16, metadata !11, metadata !435, metadata !6}
!435 = metadata !{metadata !"kernel_arg_name", metadata !"d"}
!436 = metadata !{null, metadata !18, metadata !2, metadata !437, metadata !4, metadata !67, metadata !6}
!437 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<54, true> &"}
!438 = metadata !{null, metadata !8, metadata !9, metadata !439, metadata !11, metadata !38, metadata !6}
!439 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<54, true> &"}
!440 = metadata !{null, metadata !8, metadata !9, metadata !441, metadata !11, metadata !38, metadata !6}
!441 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!442 = metadata !{null, metadata !8, metadata !9, metadata !443, metadata !11, metadata !52, metadata !6}
!443 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!444 = metadata !{null, metadata !8, metadata !9, metadata !445, metadata !11, metadata !52, metadata !6}
!445 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!446 = metadata !{null, metadata !8, metadata !9, metadata !16, metadata !11, metadata !447, metadata !6}
!447 = metadata !{metadata !"kernel_arg_name", metadata !"pf"}
!448 = metadata !{null, metadata !8, metadata !9, metadata !449, metadata !11, metadata !38, metadata !6}
!449 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<25, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!450 = metadata !{null, metadata !8, metadata !9, metadata !451, metadata !11, metadata !38, metadata !6}
!451 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<7, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!452 = metadata !{null, metadata !86, metadata !2, metadata !453, metadata !454, metadata !455, metadata !6}
!453 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"signed char"}
!454 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!455 = metadata !{metadata !"kernel_arg_name", metadata !"str", metadata !"radix"}
!456 = metadata !{metadata !457, [1 x i32]* @llvm_global_ctors_0}
!457 = metadata !{metadata !458}
!458 = metadata !{i32 0, i32 31, metadata !459}
!459 = metadata !{metadata !460}
!460 = metadata !{metadata !"llvm.global_ctors.0", metadata !461, metadata !"", i32 0, i32 31}
!461 = metadata !{metadata !462}
!462 = metadata !{i32 0, i32 0, i32 1}
!463 = metadata !{metadata !464}
!464 = metadata !{i32 0, i32 7, metadata !465}
!465 = metadata !{metadata !466}
!466 = metadata !{metadata !"pixelInput", metadata !467, metadata !"char", i32 0, i32 7}
!467 = metadata !{metadata !468}
!468 = metadata !{i32 0, i32 1535, i32 1}
!469 = metadata !{metadata !470}
!470 = metadata !{i32 0, i32 7, metadata !471}
!471 = metadata !{metadata !472}
!472 = metadata !{metadata !"pixelOutput", metadata !467, metadata !"char", i32 0, i32 7}
