; ModuleID = '/llk/IR_all_yes/drivers/net/can/spi/mcp251xfd/mcp251xfd-chip-fifo.c_pt.bc'
source_filename = "../drivers/net/can/spi/mcp251xfd/mcp251xfd-chip-fifo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mcp251xfd_priv = type { %struct.can_priv, %struct.can_rx_offload, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [44 x i8], [1 x %struct.mcp251xfd_tef_ring], [1 x %struct.mcp251xfd_tx_ring], [1 x ptr], i8, %struct.mcp251xfd_ecc, %struct.mcp251xfd_regs_status, %struct.cyclecounter, %struct.timecounter, %struct.delayed_work, ptr, ptr, ptr, ptr, %struct.mcp251xfd_devtype_data, %struct.can_berr_counter, [40 x i8] }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.can_rx_offload = type { ptr, ptr, %struct.sk_buff_head, %struct.sk_buff_head, i32, i32, i32, %struct.napi_struct, i8 }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.mcp251xfd_tef_ring = type { i32, i32, [120 x i8], %union.mcp251xfd_write_reg_buf, [8 x %struct.spi_transfer] }
%union.mcp251xfd_write_reg_buf = type { %struct.anon.140, [122 x i8] }
%struct.anon.140 = type { %struct.mcp251xfd_buf_cmd, [4 x i8] }
%struct.mcp251xfd_buf_cmd = type { i16 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.mcp251xfd_tx_ring = type { i32, i32, i16, i8, i8, [116 x i8], [8 x %struct.mcp251xfd_tx_obj], %union.mcp251xfd_write_reg_buf }
%struct.mcp251xfd_tx_obj = type { %struct.spi_message, [2 x %struct.spi_transfer], [8 x i8], %union.mcp251xfd_tx_obj_load_buf }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%union.mcp251xfd_tx_obj_load_buf = type { %struct.anon.143, [51 x i8] }
%struct.anon.143 = type <{ %struct.mcp251xfd_buf_cmd_crc, %struct.mcp251xfd_hw_tx_obj_raw, i16 }>
%struct.mcp251xfd_buf_cmd_crc = type <{ i16, i8 }>
%struct.mcp251xfd_hw_tx_obj_raw = type { i32, i32, [64 x i8] }
%struct.mcp251xfd_ecc = type { i32, i32 }
%struct.mcp251xfd_regs_status = type { i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mcp251xfd_devtype_data = type { i32, i32 }
%struct.can_berr_counter = type { i16, i16 }
%struct.mcp251xfd_rx_ring = type { i32, i32, i16, i8, i8, i8, i8, [114 x i8], %union.mcp251xfd_write_reg_buf, [32 x %struct.spi_transfer], [0 x %struct.mcp251xfd_hw_rx_obj_canfd] }
%struct.mcp251xfd_hw_rx_obj_canfd = type { i32, i32, i32, [64 x i8] }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mcp251xfd_chip_fifo_init(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %obj_num = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 15, i32 0, i32 3
  %0 = ptrtoint ptr %obj_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %obj_num, align 2
  %conv = zext i8 %1 to i32
  %sub18 = shl nuw i32 %conv, 24
  %shl = add i32 %sub18, 520093696
  %and19 = and i32 %shl, 520093696
  %or21 = or i32 %and19, 41
  %map_reg = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 3
  %2 = ptrtoint ptr %map_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map_reg, align 4
  %call = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 64, i32 noundef %or21) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool22.not = icmp eq i32 %call, 0
  br i1 %tobool22.not, label %do.end51, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.end51:                                         ; preds = %entry
  %4 = ptrtoint ptr %obj_num to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %obj_num, align 2
  %conv33 = zext i8 %5 to i32
  %sub55 = shl nuw i32 %conv33, 24
  %shl56 = add i32 %sub55, 520093696
  %ctrlmode.i = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 22
  %6 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctrlmode.i, align 4
  %and.i = and i32 %7, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %or78 = or i32 %shl56, -536870768
  %and57 = and i32 %shl56, 520093696
  %or59 = or i32 %and57, 144
  %val.0 = select i1 %tobool.i.not, i32 %or59, i32 %or78
  %and97 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  %or134 = or i32 %val.0, 6291456
  %val.1 = select i1 %tobool98.not, i32 %or134, i32 %val.0
  %8 = ptrtoint ptr %map_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map_reg, align 4
  %call137 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 92, i32 noundef %val.1) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end140, label %do.end51.cleanup_crit_edge

do.end51.cleanup_crit_edge:                       ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end140:                                        ; preds = %do.end51
  %rx = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 16
  %rx_ring_num = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 17
  %10 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rx_ring_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp199.not = icmp eq i8 %11, 0
  br i1 %cmp199.not, label %if.end140.cleanup_crit_edge, label %if.end140.for.body_crit_edge

if.end140.for.body_crit_edge:                     ; preds = %if.end140
  br label %for.body

if.end140.cleanup_crit_edge:                      ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end140.for.body_crit_edge
  %rx_ring.0201.in = phi ptr [ %add.ptr154, %for.inc.for.body_crit_edge ], [ %rx, %if.end140.for.body_crit_edge ]
  %n.0200 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end140.for.body_crit_edge ]
  %12 = ptrtoint ptr %rx_ring.0201.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %rx_ring.0201 = load ptr, ptr %rx_ring.0201.in, align 4
  %obj_num.i = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %rx_ring.0201, i32 0, i32 5
  %13 = ptrtoint ptr %obj_num.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %obj_num.i, align 4
  %conv.i = zext i8 %14 to i32
  %sub18.i = shl nuw i32 %conv.i, 24
  %shl.i = add i32 %sub18.i, 520093696
  %15 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ctrlmode.i, align 4
  %and.i.i = and i32 %16, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %or39.i = or i32 %shl.i, -536870871
  %and19.i = and i32 %shl.i, 520093696
  %or21.i = or i32 %and19.i, 41
  %fifo_con.0.i = select i1 %tobool.i.not.i, i32 %or21.i, i32 %or39.i
  %17 = ptrtoint ptr %map_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map_reg, align 4
  %fifo_nr.i = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %rx_ring.0201, i32 0, i32 4
  %19 = ptrtoint ptr %fifo_nr.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fifo_nr.i, align 1
  %conv58.i = zext i8 %20 to i32
  %mul.i = mul nuw nsw i32 %conv58.i, 12
  %add.i = add nuw nsw i32 %mul.i, 80
  %call59.i = tail call i32 @regmap_write(ptr noundef %18, i32 noundef %add.i, i32 noundef %fifo_con.0.i) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %tobool145.not = icmp eq i32 %call59.i, 0
  br i1 %tobool145.not, label %if.end147, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end147:                                        ; preds = %for.body
  %nr.i = getelementptr inbounds %struct.mcp251xfd_rx_ring, ptr %rx_ring.0201, i32 0, i32 3
  %21 = ptrtoint ptr %nr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %nr.i, align 2
  %conv.i191 = zext i8 %22 to i32
  %and.i192 = shl nuw nsw i32 %conv.i191, 3
  %mul.i193 = and i32 %and.i192, 24
  %23 = ptrtoint ptr %fifo_nr.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %fifo_nr.i, align 1
  %25 = or i8 %24, -128
  %shl19.i = zext i8 %25 to i32
  %or.i = shl nuw i32 %shl19.i, %mul.i193
  %26 = ptrtoint ptr %map_reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %map_reg, align 4
  %28 = and i32 %conv.i191, 252
  %add.i196 = add nuw nsw i32 %28, 464
  %shl14.i = shl nuw i32 255, %mul.i193
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef %add.i196, i32 noundef %shl14.i, i32 noundef %or.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool149.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool149.not, label %for.inc, label %if.end147.cleanup_crit_edge

if.end147.cleanup_crit_edge:                      ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.inc:                                          ; preds = %if.end147
  %inc = add nuw nsw i32 %n.0200, 1
  %add.ptr154 = getelementptr ptr, ptr %rx, i32 %inc
  %29 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rx_ring_num, align 4
  %conv142 = zext i8 %30 to i32
  %cmp = icmp ult i32 %inc, %conv142
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end147.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end140.cleanup_crit_edge, %do.end51.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call137, %do.end51.cleanup_crit_edge ], [ 0, %if.end140.cleanup_crit_edge ], [ %call59.i, %for.body.cleanup_crit_edge ], [ %call.i.i, %if.end147.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
