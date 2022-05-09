; ModuleID = '/llk/IR_all_yes/drivers/media/common/b2c2/flexcop-sram.c_pt.bc'
source_filename = "../drivers/media/common/b2c2/flexcop-sram.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+flexcop_sram_set_dest\22, \22a\22\09"
module asm "\09.weak\09__crc_flexcop_sram_set_dest\09\09\09\09"
module asm "\09.long\09__crc_flexcop_sram_set_dest\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flexcop_sram_set_dest:\09\09\09\09\09"
module asm "\09.asciz \09\22flexcop_sram_set_dest\22\09\09\09\09\09"
module asm "__kstrtabns_flexcop_sram_set_dest:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flexcop_wan_set_speed\22, \22a\22\09"
module asm "\09.weak\09__crc_flexcop_wan_set_speed\09\09\09\09"
module asm "\09.long\09__crc_flexcop_wan_set_speed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flexcop_wan_set_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22flexcop_wan_set_speed\22\09\09\09\09\09"
module asm "__kstrtabns_flexcop_wan_set_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+flexcop_sram_ctrl\22, \22a\22\09"
module asm "\09.weak\09__crc_flexcop_sram_ctrl\09\09\09\09"
module asm "\09.long\09__crc_flexcop_sram_ctrl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flexcop_sram_ctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22flexcop_sram_ctrl\22\09\09\09\09\09"
module asm "__kstrtabns_flexcop_sram_ctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%union.flexcop_ibi_value = type { %struct.anon.177 }
%struct.anon.177 = type { i32, i16 }
%struct.flexcop_device = type { ptr, i32, i32, i32, i32, i32, %struct.dvb_adapter, ptr, %struct.dvb_net, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, ptr, [3 x %struct.flexcop_i2c_adapter], %struct.mutex, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.flexcop_i2c_adapter = type { ptr, %struct.i2c_adapter, i8, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@flexcop_sram_set_dest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 38, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013b2c2-flexcop: SRAM destination target to available on FlexCopII(b)\0A\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"flexcop_sram_set_dest\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/common/b2c2/flexcop-sram.c\00", [55 x i8] zeroinitializer }, align 32
@flexcop_sram_set_dest._entry_ptr = internal global ptr @flexcop_sram_set_dest._entry, section ".printk_index", align 4
@b2c2_flexcop_debug = external dso_local local_unnamed_addr global i32, align 4
@flexcop_sram_set_dest._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sram dest: %x target: %x\0A\00", [38 x i8] zeroinitializer }, align 32
@flexcop_sram_set_dest._entry_ptr.5 = internal global ptr @flexcop_sram_set_dest._entry.3, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__kstrtab_flexcop_sram_set_dest = external dso_local constant [0 x i8], align 1
@__kstrtabns_flexcop_sram_set_dest = external dso_local constant [0 x i8], align 1
@__ksymtab_flexcop_sram_set_dest = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flexcop_sram_set_dest to i32), ptr @__kstrtab_flexcop_sram_set_dest, ptr @__kstrtabns_flexcop_sram_set_dest }, section "___ksymtab+flexcop_sram_set_dest", align 4
@__kstrtab_flexcop_wan_set_speed = external dso_local constant [0 x i8], align 1
@__kstrtabns_flexcop_wan_set_speed = external dso_local constant [0 x i8], align 1
@__ksymtab_flexcop_wan_set_speed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flexcop_wan_set_speed to i32), ptr @__kstrtab_flexcop_wan_set_speed, ptr @__kstrtabns_flexcop_wan_set_speed }, section "___ksymtab+flexcop_wan_set_speed", align 4
@__kstrtab_flexcop_sram_ctrl = external dso_local constant [0 x i8], align 1
@__kstrtabns_flexcop_sram_ctrl = external dso_local constant [0 x i8], align 1
@__ksymtab_flexcop_sram_ctrl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flexcop_sram_ctrl to i32), ptr @__kstrtab_flexcop_sram_ctrl, ptr @__kstrtabns_flexcop_sram_ctrl }, section "___ksymtab+flexcop_sram_ctrl", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 38, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [44 x i8] c"../drivers/media/common/b2c2/flexcop-sram.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 41, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_flexcop_sram_ctrl, ptr @__ksymtab_flexcop_sram_set_dest, ptr @__ksymtab_flexcop_wan_set_speed, ptr @flexcop_sram_set_dest._entry, ptr @flexcop_sram_set_dest._entry.3, ptr @flexcop_sram_set_dest._entry_ptr, ptr @flexcop_sram_set_dest._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_sram_set_dest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_sram_set_dest._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @flexcop_sram_init(ptr noundef %fc) local_unnamed_addr #0 align 64 {
entry:
  %v.i4 = alloca %union.flexcop_ibi_value, align 8
  %v.i = alloca %union.flexcop_ibi_value, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rev = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rev, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.return_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge15
    i32 3, label %sw.bb1
  ]

entry.sw.bb_crit_edge15:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.i) #3
  %3 = ptrtoint ptr %v.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %v.i, align 8, !annotation !25
  %read_ibi_reg.i = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 22
  %4 = ptrtoint ptr %read_ibi_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_ibi_reg.i, align 4
  call void %5(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %v.i, ptr noundef %fc, i32 noundef 1820) #3
  %6 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load.i = load i32, ptr %v.i, align 8
  %bf.clear.i = and i32 %bf.load.i, -196609
  %bf.set.i = or i32 %bf.clear.i, 65536
  store i32 %bf.set.i, ptr %v.i, align 8
  %write_ibi_reg.i = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 23
  %7 = ptrtoint ptr %write_ibi_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_ibi_reg.i, align 8
  %.fca.0.insert.i = insertvalue [2 x i32] poison, i32 %bf.set.i, 0
  %.fca.1.gep.i = getelementptr inbounds [2 x i32], ptr %v.i, i32 0, i32 1
  %9 = ptrtoint ptr %.fca.1.gep.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.fca.1.load.i = load i32, ptr %.fca.1.gep.i, align 4
  %.fca.1.insert.i = insertvalue [2 x i32] %.fca.0.insert.i, i32 %.fca.1.load.i, 1
  %call.i = call i32 %8(ptr noundef %fc, i32 noundef 1820, [2 x i32] %.fca.1.insert.i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.i) #3
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.i4) #3
  %10 = ptrtoint ptr %v.i4 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %v.i4, align 8, !annotation !25
  %read_ibi_reg.i5 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 22
  %11 = ptrtoint ptr %read_ibi_reg.i5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_ibi_reg.i5, align 4
  call void %12(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %v.i4, ptr noundef %fc, i32 noundef 1820) #3
  %13 = ptrtoint ptr %v.i4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load.i6 = load i32, ptr %v.i4, align 8
  %bf.set.i8 = or i32 %bf.load.i6, 196608
  store i32 %bf.set.i8, ptr %v.i4, align 8
  %write_ibi_reg.i9 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 23
  %14 = ptrtoint ptr %write_ibi_reg.i9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_ibi_reg.i9, align 8
  %.fca.0.insert.i10 = insertvalue [2 x i32] poison, i32 %bf.set.i8, 0
  %.fca.1.gep.i11 = getelementptr inbounds [2 x i32], ptr %v.i4, i32 0, i32 1
  %16 = ptrtoint ptr %.fca.1.gep.i11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.fca.1.load.i12 = load i32, ptr %.fca.1.gep.i11, align 4
  %.fca.1.insert.i13 = insertvalue [2 x i32] %.fca.0.insert.i10, i32 %.fca.1.load.i12, 1
  %call.i14 = call i32 %15(ptr noundef %fc, i32 noundef 1820, [2 x i32] %.fca.1.insert.i13) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.i4) #3
  br label %return

return:                                           ; preds = %sw.bb1, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @flexcop_sram_set_dest(ptr noundef %fc, i32 noundef %dest, i32 noundef %target) #0 align 64 {
entry:
  %tmp = alloca %union.flexcop_ibi_value, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #3
  %read_ibi_reg = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 22
  %0 = ptrtoint ptr %read_ibi_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_ibi_reg, align 4
  call void %1(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %tmp, ptr noundef %fc, i32 noundef 1812) #3
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %2)
  %v.sroa.0.0.copyload44 = load i32, ptr %tmp, align 4
  %v.sroa.13.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 4
  %3 = ptrtoint ptr %v.sroa.13.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %v.sroa.13.0.copyload45 = load i32, ptr %v.sroa.13.0.tmp.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #3
  %rev = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 3
  %4 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.not = icmp ne i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %target)
  %cmp1 = icmp eq i32 %target, 3
  %or.cond = and i1 %cmp1, %cmp.not
  br i1 %or.cond, label %do.end, label %do.body3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %cleanup

do.body3:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %6 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body3.do.end12_crit_edge, label %do.end7

do.body3.do.end12_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end12

do.end7:                                          ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #5
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %dest, i32 noundef %target) #6
  br label %do.end12

do.end12:                                         ; preds = %do.end7, %do.body3.do.end12_crit_edge
  %and13 = and i32 %dest, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %bf.value = and i32 %target, 3
  %bf.clear = and i32 %v.sroa.0.0.copyload44, -4
  %bf.set = or i32 %bf.clear, %bf.value
  %v.sroa.0.0 = select i1 %tobool14.not, i32 %v.sroa.0.0.copyload44, i32 %bf.set
  %and17 = and i32 %dest, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %bf.value21 = shl i32 %target, 2
  %bf.shl = and i32 %bf.value21, 12
  %bf.clear22 = and i32 %v.sroa.0.0, -13
  %bf.set23 = or i32 %bf.clear22, %bf.shl
  %v.sroa.0.1 = select i1 %tobool18.not, i32 %v.sroa.0.0, i32 %bf.set23
  %and25 = and i32 %dest, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %bf.value29 = shl i32 %target, 4
  %bf.shl30 = and i32 %bf.value29, 48
  %bf.clear31 = and i32 %v.sroa.0.1, -49
  %bf.set32 = or i32 %bf.clear31, %bf.shl30
  %v.sroa.0.2 = select i1 %tobool26.not, i32 %v.sroa.0.1, i32 %bf.set32
  %and34 = and i32 %dest, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %bf.value38 = shl i32 %target, 6
  %bf.shl39 = and i32 %bf.value38, 192
  %bf.clear40 = and i32 %v.sroa.0.2, -193
  %bf.set41 = or i32 %bf.clear40, %bf.shl39
  %v.sroa.0.3 = select i1 %tobool35.not, i32 %v.sroa.0.2, i32 %bf.set41
  %write_ibi_reg = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 23
  %7 = ptrtoint ptr %write_ibi_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_ibi_reg, align 8
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %v.sroa.0.3, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 %v.sroa.13.0.copyload45, 1
  %call43 = call i32 %8(ptr noundef %fc, i32 noundef 1812, [2 x i32] %.fca.1.insert) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 214748000) #3
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end12 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flexcop_wan_set_speed(ptr noundef %fc, i32 noundef %s) #0 align 64 {
entry:
  %v = alloca %union.flexcop_ibi_value, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v) #3
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %v, align 8, !annotation !25
  %read_ibi_reg = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 22
  %1 = ptrtoint ptr %read_ibi_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_ibi_reg, align 4
  call void %2(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %v, ptr noundef %fc, i32 noundef 1820) #3
  %3 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load = load i32, ptr %v, align 8
  %bf.value = and i32 %s, 3
  %bf.clear = and i32 %bf.load, -4
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, ptr %v, align 8
  %write_ibi_reg = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 23
  %4 = ptrtoint ptr %write_ibi_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_ibi_reg, align 8
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %bf.set, 0
  %.fca.1.gep = getelementptr inbounds [2 x i32], ptr %v, i32 0, i32 1
  %6 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %call = call i32 %5(ptr noundef %fc, i32 noundef 1820, [2 x i32] %.fca.1.insert) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flexcop_sram_ctrl(ptr noundef %fc, i32 noundef %usb_wan, i32 noundef %sramdma, i32 noundef %maximumfill) #0 align 64 {
entry:
  %v = alloca %union.flexcop_ibi_value, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v) #3
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %v, align 8, !annotation !25
  %read_ibi_reg = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 22
  %1 = ptrtoint ptr %read_ibi_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_ibi_reg, align 4
  call void %2(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %v, ptr noundef %fc, i32 noundef 1812) #3
  %3 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load = load i32, ptr %v, align 8
  %bf.value = shl i32 %usb_wan, 12
  %bf.shl = and i32 %bf.value, 4096
  %bf.clear = and i32 %bf.load, -28673
  %bf.value2 = shl i32 %sramdma, 13
  %bf.shl3 = and i32 %bf.value2, 8192
  %bf.value7 = shl i32 %maximumfill, 14
  %bf.shl8 = and i32 %bf.value7, 16384
  %bf.set = or i32 %bf.shl3, %bf.shl
  %bf.set5 = or i32 %bf.set, %bf.shl8
  %bf.set10 = or i32 %bf.set5, %bf.clear
  store i32 %bf.set10, ptr %v, align 8
  %write_ibi_reg = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 23
  %4 = ptrtoint ptr %write_ibi_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_ibi_reg, align 8
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %bf.set10, 0
  %.fca.1.gep = getelementptr inbounds [2 x i32], ptr %v, i32 0, i32 1
  %6 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %call = call i32 %5(ptr noundef %fc, i32 noundef 1812, [2 x i32] %.fca.1.insert) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v) #3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/common/b2c2/flexcop-sram.c", i32 38, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @flexcop_sram_set_dest._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @flexcop_sram_set_dest._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/common/b2c2/flexcop-sram.c", i32 41, i32 2}
!8 = !{ptr @flexcop_sram_set_dest._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @flexcop_sram_set_dest._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_flexcop_sram_set_dest, !11, !"__ksymtab_flexcop_sram_set_dest", i1 false, i1 false}
!11 = !{!"../drivers/media/common/b2c2/flexcop-sram.c", i32 57, i32 1}
!12 = !{ptr @__ksymtab_flexcop_wan_set_speed, !13, !"__ksymtab_flexcop_wan_set_speed", i1 false, i1 false}
!13 = !{!"../drivers/media/common/b2c2/flexcop-sram.c", i32 63, i32 1}
!14 = !{ptr @__ksymtab_flexcop_sram_ctrl, !15, !"__ksymtab_flexcop_sram_ctrl", i1 false, i1 false}
!15 = !{!"../drivers/media/common/b2c2/flexcop-sram.c", i32 73, i32 1}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"auto-init"}
