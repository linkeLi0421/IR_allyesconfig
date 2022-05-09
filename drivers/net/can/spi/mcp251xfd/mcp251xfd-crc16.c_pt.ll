; ModuleID = '/llk/IR_all_yes/drivers/net/can/spi/mcp251xfd/mcp251xfd-crc16.c_pt.bc'
source_filename = "../drivers/net/can/spi/mcp251xfd/mcp251xfd-crc16.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@mcp251xfd_crc16_table = internal constant { [256 x i16], [128 x i8] } { [256 x i16] [i16 0, i16 -32763, i16 -32753, i16 10, i16 -32741, i16 30, i16 20, i16 -32751, i16 -32717, i16 54, i16 60, i16 -32711, i16 40, i16 -32723, i16 -32729, i16 34, i16 -32669, i16 102, i16 108, i16 -32663, i16 120, i16 -32643, i16 -32649, i16 114, i16 80, i16 -32683, i16 -32673, i16 90, i16 -32693, i16 78, i16 68, i16 -32703, i16 -32573, i16 198, i16 204, i16 -32567, i16 216, i16 -32547, i16 -32553, i16 210, i16 240, i16 -32523, i16 -32513, i16 250, i16 -32533, i16 238, i16 228, i16 -32543, i16 160, i16 -32603, i16 -32593, i16 170, i16 -32581, i16 190, i16 180, i16 -32591, i16 -32621, i16 150, i16 156, i16 -32615, i16 136, i16 -32627, i16 -32633, i16 130, i16 -32381, i16 390, i16 396, i16 -32375, i16 408, i16 -32355, i16 -32361, i16 402, i16 432, i16 -32331, i16 -32321, i16 442, i16 -32341, i16 430, i16 420, i16 -32351, i16 480, i16 -32283, i16 -32273, i16 490, i16 -32261, i16 510, i16 500, i16 -32271, i16 -32301, i16 470, i16 476, i16 -32295, i16 456, i16 -32307, i16 -32313, i16 450, i16 320, i16 -32443, i16 -32433, i16 330, i16 -32421, i16 350, i16 340, i16 -32431, i16 -32397, i16 374, i16 380, i16 -32391, i16 360, i16 -32403, i16 -32409, i16 354, i16 -32477, i16 294, i16 300, i16 -32471, i16 312, i16 -32451, i16 -32457, i16 306, i16 272, i16 -32491, i16 -32481, i16 282, i16 -32501, i16 270, i16 260, i16 -32511, i16 -31997, i16 774, i16 780, i16 -31991, i16 792, i16 -31971, i16 -31977, i16 786, i16 816, i16 -31947, i16 -31937, i16 826, i16 -31957, i16 814, i16 804, i16 -31967, i16 864, i16 -31899, i16 -31889, i16 874, i16 -31877, i16 894, i16 884, i16 -31887, i16 -31917, i16 854, i16 860, i16 -31911, i16 840, i16 -31923, i16 -31929, i16 834, i16 960, i16 -31803, i16 -31793, i16 970, i16 -31781, i16 990, i16 980, i16 -31791, i16 -31757, i16 1014, i16 1020, i16 -31751, i16 1000, i16 -31763, i16 -31769, i16 994, i16 -31837, i16 934, i16 940, i16 -31831, i16 952, i16 -31811, i16 -31817, i16 946, i16 912, i16 -31851, i16 -31841, i16 922, i16 -31861, i16 910, i16 900, i16 -31871, i16 640, i16 -32123, i16 -32113, i16 650, i16 -32101, i16 670, i16 660, i16 -32111, i16 -32077, i16 694, i16 700, i16 -32071, i16 680, i16 -32083, i16 -32089, i16 674, i16 -32029, i16 742, i16 748, i16 -32023, i16 760, i16 -32003, i16 -32009, i16 754, i16 720, i16 -32043, i16 -32033, i16 730, i16 -32053, i16 718, i16 708, i16 -32063, i16 -32189, i16 582, i16 588, i16 -32183, i16 600, i16 -32163, i16 -32169, i16 594, i16 624, i16 -32139, i16 -32129, i16 634, i16 -32149, i16 622, i16 612, i16 -32159, i16 544, i16 -32219, i16 -32209, i16 554, i16 -32197, i16 574, i16 564, i16 -32207, i16 -32237, i16 534, i16 540, i16 -32231, i16 520, i16 -32243, i16 -32249, i16 514], [128 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [22 x i8] c"mcp251xfd_crc16_table\00", align 1
@___asan_gen_.2 = private constant [51 x i8] c"../drivers/net/can/spi/mcp251xfd/mcp251xfd-crc16.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 23, i32 18 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @mcp251xfd_crc16_table], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251xfd_crc16_table to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @mcp251xfd_crc16_compute(ptr nocapture noundef readonly %data, i32 noundef %data_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_size)
  %tobool.not2.i = icmp eq i32 %data_size, 0
  br i1 %tobool.not2.i, label %entry.mcp251xfd_crc16.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.mcp251xfd_crc16.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %mcp251xfd_crc16.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %len.addr.05.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %data_size, %entry.while.body.i_crit_edge ]
  %buffer.addr.04.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %data, %entry.while.body.i_crit_edge ]
  %crc.addr.03.i = phi i16 [ %xor5.i.i, %while.body.i.while.body.i_crit_edge ], [ -1, %entry.while.body.i_crit_edge ]
  %dec.i = add i32 %len.addr.05.i, -1
  %incdec.ptr.i = getelementptr i8, ptr %buffer.addr.04.i, i32 1
  %0 = ptrtoint ptr %buffer.addr.04.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buffer.addr.04.i, align 1
  %2 = lshr i16 %crc.addr.03.i, 8
  %3 = trunc i16 %2 to i8
  %conv2.i.i = xor i8 %1, %3
  %shl.i.i = shl i16 %crc.addr.03.i, 8
  %idxprom.i.i = zext i8 %conv2.i.i to i32
  %arrayidx.i.i = getelementptr [256 x i16], ptr @mcp251xfd_crc16_table, i32 0, i32 %idxprom.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i.i, align 2
  %xor5.i.i = xor i16 %5, %shl.i.i
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.mcp251xfd_crc16.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body.i

while.body.i.mcp251xfd_crc16.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %mcp251xfd_crc16.exit

mcp251xfd_crc16.exit:                             ; preds = %while.body.i.mcp251xfd_crc16.exit_crit_edge, %entry.mcp251xfd_crc16.exit_crit_edge
  %crc.addr.0.lcssa.i = phi i16 [ -1, %entry.mcp251xfd_crc16.exit_crit_edge ], [ %xor5.i.i, %while.body.i.mcp251xfd_crc16.exit_crit_edge ]
  ret i16 %crc.addr.0.lcssa.i
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @mcp251xfd_crc16_compute2(ptr nocapture noundef readonly %cmd, i32 noundef %cmd_size, ptr nocapture noundef readonly %data, i32 noundef %data_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd_size)
  %tobool.not2.i.i = icmp eq i32 %cmd_size, 0
  br i1 %tobool.not2.i.i, label %entry.mcp251xfd_crc16_compute.exit_crit_edge, label %entry.while.body.i.i_crit_edge

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

entry.mcp251xfd_crc16_compute.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %mcp251xfd_crc16_compute.exit

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %len.addr.05.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %cmd_size, %entry.while.body.i.i_crit_edge ]
  %buffer.addr.04.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %cmd, %entry.while.body.i.i_crit_edge ]
  %crc.addr.03.i.i = phi i16 [ %xor5.i.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ -1, %entry.while.body.i.i_crit_edge ]
  %dec.i.i = add i32 %len.addr.05.i.i, -1
  %incdec.ptr.i.i = getelementptr i8, ptr %buffer.addr.04.i.i, i32 1
  %0 = ptrtoint ptr %buffer.addr.04.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buffer.addr.04.i.i, align 1
  %2 = lshr i16 %crc.addr.03.i.i, 8
  %3 = trunc i16 %2 to i8
  %conv2.i.i.i = xor i8 %1, %3
  %shl.i.i.i = shl i16 %crc.addr.03.i.i, 8
  %idxprom.i.i.i = zext i8 %conv2.i.i.i to i32
  %arrayidx.i.i.i = getelementptr [256 x i16], ptr @mcp251xfd_crc16_table, i32 0, i32 %idxprom.i.i.i
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i.i.i, align 2
  %xor5.i.i.i = xor i16 %5, %shl.i.i.i
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.mcp251xfd_crc16_compute.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body.i.i

while.body.i.i.mcp251xfd_crc16_compute.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %mcp251xfd_crc16_compute.exit

mcp251xfd_crc16_compute.exit:                     ; preds = %while.body.i.i.mcp251xfd_crc16_compute.exit_crit_edge, %entry.mcp251xfd_crc16_compute.exit_crit_edge
  %crc.addr.0.lcssa.i.i = phi i16 [ -1, %entry.mcp251xfd_crc16_compute.exit_crit_edge ], [ %xor5.i.i.i, %while.body.i.i.mcp251xfd_crc16_compute.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_size)
  %tobool.not2.i = icmp eq i32 %data_size, 0
  br i1 %tobool.not2.i, label %mcp251xfd_crc16_compute.exit.mcp251xfd_crc16.exit_crit_edge, label %mcp251xfd_crc16_compute.exit.while.body.i_crit_edge

mcp251xfd_crc16_compute.exit.while.body.i_crit_edge: ; preds = %mcp251xfd_crc16_compute.exit
  br label %while.body.i

mcp251xfd_crc16_compute.exit.mcp251xfd_crc16.exit_crit_edge: ; preds = %mcp251xfd_crc16_compute.exit
  call void @__sanitizer_cov_trace_pc() #3
  br label %mcp251xfd_crc16.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %mcp251xfd_crc16_compute.exit.while.body.i_crit_edge
  %len.addr.05.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %data_size, %mcp251xfd_crc16_compute.exit.while.body.i_crit_edge ]
  %buffer.addr.04.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %data, %mcp251xfd_crc16_compute.exit.while.body.i_crit_edge ]
  %crc.addr.03.i = phi i16 [ %xor5.i.i, %while.body.i.while.body.i_crit_edge ], [ %crc.addr.0.lcssa.i.i, %mcp251xfd_crc16_compute.exit.while.body.i_crit_edge ]
  %dec.i = add i32 %len.addr.05.i, -1
  %incdec.ptr.i = getelementptr i8, ptr %buffer.addr.04.i, i32 1
  %6 = ptrtoint ptr %buffer.addr.04.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buffer.addr.04.i, align 1
  %8 = lshr i16 %crc.addr.03.i, 8
  %9 = trunc i16 %8 to i8
  %conv2.i.i = xor i8 %7, %9
  %shl.i.i = shl i16 %crc.addr.03.i, 8
  %idxprom.i.i = zext i8 %conv2.i.i to i32
  %arrayidx.i.i = getelementptr [256 x i16], ptr @mcp251xfd_crc16_table, i32 0, i32 %idxprom.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.i.i, align 2
  %xor5.i.i = xor i16 %11, %shl.i.i
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.mcp251xfd_crc16.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body.i

while.body.i.mcp251xfd_crc16.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %mcp251xfd_crc16.exit

mcp251xfd_crc16.exit:                             ; preds = %while.body.i.mcp251xfd_crc16.exit_crit_edge, %mcp251xfd_crc16_compute.exit.mcp251xfd_crc16.exit_crit_edge
  %crc.addr.0.lcssa.i = phi i16 [ %crc.addr.0.lcssa.i.i, %mcp251xfd_crc16_compute.exit.mcp251xfd_crc16.exit_crit_edge ], [ %xor5.i.i, %while.body.i.mcp251xfd_crc16.exit_crit_edge ]
  ret i16 %crc.addr.0.lcssa.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @mcp251xfd_crc16_table, !1, !"mcp251xfd_crc16_table", i1 false, i1 false}
!1 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-crc16.c", i32 23, i32 18}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
