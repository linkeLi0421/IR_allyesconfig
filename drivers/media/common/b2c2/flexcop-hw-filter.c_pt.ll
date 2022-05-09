; ModuleID = '/llk/IR_all_yes/drivers/media/common/b2c2/flexcop-hw-filter.c_pt.bc'
source_filename = "../drivers/media/common/b2c2/flexcop-hw-filter.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+flexcop_pid_feed_control\22, \22a\22\09"
module asm "\09.weak\09__crc_flexcop_pid_feed_control\09\09\09\09"
module asm "\09.long\09__crc_flexcop_pid_feed_control\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flexcop_pid_feed_control:\09\09\09\09\09"
module asm "\09.asciz \09\22flexcop_pid_feed_control\22\09\09\09\09\09"
module asm "__kstrtabns_flexcop_pid_feed_control:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.dvb_demux_feed = type { %union.anon.125, %union.anon.126, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon.125 = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.126 = type { ptr }

@__kstrtab_flexcop_pid_feed_control = external dso_local constant [0 x i8], align 1
@__kstrtabns_flexcop_pid_feed_control = external dso_local constant [0 x i8], align 1
@__ksymtab_flexcop_pid_feed_control = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flexcop_pid_feed_control to i32), ptr @__kstrtab_flexcop_pid_feed_control, ptr @__kstrtabns_flexcop_pid_feed_control }, section "___ksymtab+flexcop_pid_feed_control", align 4
@b2c2_flexcop_debug = external dso_local local_unnamed_addr global i32, align 4
@flexcop_toggle_fullts_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s full TS transfer\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"flexcop_toggle_fullts_streaming\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/common/b2c2/flexcop-hw-filter.c\00", [50 x i8] zeroinitializer }, align 32
@flexcop_toggle_fullts_streaming._entry_ptr = internal global ptr @flexcop_toggle_fullts_streaming._entry, section ".printk_index", align 4
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enabling\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disabling\00", [22 x i8] zeroinitializer }, align 32
@flexcop_pid_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"setting pid: %5d %04x at index %d '%s'\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"flexcop_pid_control\00", [44 x i8] zeroinitializer }, align 32
@flexcop_pid_control._entry_ptr = internal global ptr @flexcop_pid_control._entry, section ".printk_index", align 4
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@flexcop_rcv_data_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 12, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rcv_data is now: '%s'\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"flexcop_rcv_data_ctrl\00", [42 x i8] zeroinitializer }, align 32
@flexcop_rcv_data_ctrl._entry_ptr = internal global ptr @flexcop_rcv_data_ctrl._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 167, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 118, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private constant [49 x i8] c"../drivers/media/common/b2c2/flexcop-hw-filter.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 12, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__ksymtab_flexcop_pid_feed_control, ptr @flexcop_pid_control._entry, ptr @flexcop_pid_control._entry_ptr, ptr @flexcop_rcv_data_ctrl._entry, ptr @flexcop_rcv_data_ctrl._entry_ptr, ptr @flexcop_toggle_fullts_streaming._entry, ptr @flexcop_toggle_fullts_streaming._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_toggle_fullts_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_pid_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_rcv_data_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flexcop_smc_ctrl(ptr noundef %fc, i32 noundef %onoff) local_unnamed_addr #0 align 64 {
entry:
  %v = alloca %union.flexcop_ibi_value, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v) #4
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %v, align 8, !annotation !31
  %read_ibi_reg = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 22
  %1 = ptrtoint ptr %read_ibi_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_ibi_reg, align 4
  call void %2(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %v, ptr noundef %fc, i32 noundef 520) #4
  %3 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load = load i32, ptr %v, align 8
  %bf.value = shl i32 %onoff, 11
  %bf.shl = and i32 %bf.value, 2048
  %bf.clear = and i32 %bf.load, -2049
  %bf.set = or i32 %bf.clear, %bf.shl
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
  %call = call i32 %5(ptr noundef %fc, i32 noundef 520, [2 x i32] %.fca.1.insert) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flexcop_set_mac_filter(ptr noundef %fc, ptr nocapture noundef readonly %mac) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %union.flexcop_ibi_value, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #4
  %read_ibi_reg = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 22
  %0 = ptrtoint ptr %read_ibi_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_ibi_reg, align 4
  call void %1(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %tmp, ptr noundef %fc, i32 noundef 1052) #4
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %2)
  %v41c.sroa.0.0.copyload37 = load i32, ptr %tmp, align 4
  %v41c.sroa.9.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 4
  %3 = ptrtoint ptr %v41c.sroa.9.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %v41c.sroa.9.0.copyload38 = load i32, ptr %v41c.sroa.9.0.tmp.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #4
  %4 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mac, align 1
  %conv = zext i8 %5 to i32
  %arrayidx1 = getelementptr i8, ptr %mac, i32 1
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %7 to i32
  %bf.shl = shl nuw nsw i32 %conv2, 8
  %bf.set = or i32 %bf.shl, %conv
  %arrayidx7 = getelementptr i8, ptr %mac, i32 2
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %9 to i32
  %bf.shl11 = shl nuw nsw i32 %conv8, 16
  %bf.set6 = or i32 %bf.set, %bf.shl11
  %arrayidx14 = getelementptr i8, ptr %mac, i32 3
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %11 to i32
  %bf.shl18 = shl nuw i32 %conv15, 24
  %bf.set20 = or i32 %bf.set6, %bf.shl18
  %arrayidx21 = getelementptr i8, ptr %mac, i32 4
  %12 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %13 to i32
  %bf.clear25 = and i32 %v41c.sroa.0.0.copyload37, -65536
  %bf.set26 = or i32 %bf.clear25, %conv22
  %arrayidx27 = getelementptr i8, ptr %mac, i32 5
  %14 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %15 to i32
  %bf.shl31 = shl nuw nsw i32 %conv28, 8
  %bf.set33 = or i32 %bf.shl31, %bf.set26
  %write_ibi_reg = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 23
  %16 = ptrtoint ptr %write_ibi_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_ibi_reg, align 8
  %.fca.0.insert39 = insertvalue [2 x i32] poison, i32 %bf.set20, 0
  %.fca.1.insert40 = insertvalue [2 x i32] %.fca.0.insert39, i32 -1, 1
  %call = call i32 %17(ptr noundef %fc, i32 noundef 1048, [2 x i32] %.fca.1.insert40) #4
  %18 = ptrtoint ptr %write_ibi_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_ibi_reg, align 8
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %bf.set33, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 %v41c.sroa.9.0.copyload38, 1
  %call36 = call i32 %19(ptr noundef %fc, i32 noundef 1052, [2 x i32] %.fca.1.insert) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flexcop_mac_filter_ctrl(ptr noundef %fc, i32 noundef %onoff) local_unnamed_addr #0 align 64 {
entry:
  %v = alloca %union.flexcop_ibi_value, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v) #4
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %v, align 8, !annotation !31
  %read_ibi_reg = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 22
  %1 = ptrtoint ptr %read_ibi_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_ibi_reg, align 4
  call void %2(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %v, ptr noundef %fc, i32 noundef 520) #4
  %3 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load = load i32, ptr %v, align 8
  %bf.value = shl i32 %onoff, 14
  %bf.shl = and i32 %bf.value, 16384
  %bf.clear = and i32 %bf.load, -16385
  %bf.set = or i32 %bf.clear, %bf.shl
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
  %call = call i32 %5(ptr noundef %fc, i32 noundef 520, [2 x i32] %.fca.1.insert) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @flexcop_pid_feed_control(ptr noundef %fc, ptr nocapture noundef readonly %dvbdmxfeed, i32 noundef %onoff) #0 align 64 {
entry:
  %v.i = alloca %union.flexcop_ibi_value, align 8
  %v.i.i126 = alloca %union.flexcop_ibi_value, align 8
  %v.i.i97 = alloca %union.flexcop_ibi_value, align 8
  %v.i.i76 = alloca %union.flexcop_ibi_value, align 8
  %v.i.i = alloca %union.flexcop_ibi_value, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %skip_6_hw_pid_filter = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 21
  %0 = ptrtoint ptr %skip_6_hw_pid_filter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %skip_6_hw_pid_filter, align 8
  %mul.neg = mul i32 %1, -6
  %sub = add i32 %mul.neg, 6
  %has_32_hw_pid_filter = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 2
  %2 = ptrtoint ptr %has_32_hw_pid_filter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %has_32_hw_pid_filter, align 8
  %mul1 = shl i32 %3, 5
  %add = add i32 %sub, %mul1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  %cond = select i1 %tobool.not, i32 -1, i32 1
  %feedcount = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 18
  %4 = ptrtoint ptr %feedcount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %feedcount, align 4
  %add2 = add i32 %5, %cond
  store i32 %add2, ptr %feedcount, align 4
  %index = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 16
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp.not = icmp ult i32 %7, %add
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %extra_feedcount = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 17
  %8 = ptrtoint ptr %extra_feedcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %extra_feedcount, align 8
  %add5 = add i32 %9, %cond
  store i32 %add5, ptr %extra_feedcount, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pid_filtering = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 19
  %10 = ptrtoint ptr %pid_filtering to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid_filtering, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  br i1 %tobool6.not, label %land.lhs.true, label %if.end.if.then13_crit_edge

if.end.if.then13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %onoff)
  %cmp8 = icmp eq i32 %add2, %onoff
  br i1 %cmp8, label %if.then9, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.then9:                                         ; preds = %land.lhs.true
  %fullts_streaming_state.i = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 20
  %12 = ptrtoint ptr %fullts_streaming_state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fullts_streaming_state.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %onoff)
  %cmp.not.i = icmp eq i32 %13, %onoff
  br i1 %cmp.not.i, label %if.then9.if.end10_crit_edge, label %do.body.i

if.then9.if.end10_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

do.body.i:                                        ; preds = %if.then9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %14 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and.i = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.end4.i_crit_edge, label %do.end.i

do.body.i.do.end4.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %cond.i = select i1 %tobool.not, ptr @.str.4, ptr @.str.3
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %cond.i) #7
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %do.body.i.do.end4.i_crit_edge
  %bf.set5.i.i = select i1 %tobool.not, i32 -2039808, i32 -536813568
  %write_ibi_reg.i.i = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 23
  %15 = ptrtoint ptr %write_ibi_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_ibi_reg.i.i, align 8
  %.fca.0.insert.i.i = insertvalue [2 x i32] poison, i32 %bf.set5.i.i, 0
  %.fca.1.insert.i.i = insertvalue [2 x i32] %.fca.0.insert.i.i, i32 -1, 1
  %call.i.i = tail call i32 %16(ptr noundef %fc, i32 noundef 780, [2 x i32] %.fca.1.insert.i.i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.i.i) #4
  %17 = ptrtoint ptr %v.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 -1, ptr %v.i.i, align 8, !annotation !31
  %read_ibi_reg.i.i = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 22
  %18 = ptrtoint ptr %read_ibi_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_ibi_reg.i.i, align 4
  call void %19(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %v.i.i, ptr noundef %fc, i32 noundef 520) #4
  %20 = ptrtoint ptr %v.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load.i.i = load i32, ptr %v.i.i, align 8
  %bf.value.i.i = shl i32 %onoff, 7
  %bf.shl.i1.i = and i32 %bf.value.i.i, 128
  %bf.clear.i.i = and i32 %bf.load.i.i, -129
  %bf.set.i.i = or i32 %bf.clear.i.i, %bf.shl.i1.i
  store i32 %bf.set.i.i, ptr %v.i.i, align 8
  %21 = ptrtoint ptr %write_ibi_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_ibi_reg.i.i, align 8
  %.fca.0.insert.i3.i = insertvalue [2 x i32] poison, i32 %bf.set.i.i, 0
  %.fca.1.gep.i.i = getelementptr inbounds [2 x i32], ptr %v.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %.fca.1.gep.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.fca.1.load.i.i = load i32, ptr %.fca.1.gep.i.i, align 4
  %.fca.1.insert.i4.i = insertvalue [2 x i32] %.fca.0.insert.i3.i, i32 %.fca.1.load.i.i, 1
  %call.i5.i = call i32 %22(ptr noundef %fc, i32 noundef 520, [2 x i32] %.fca.1.insert.i4.i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.i.i) #4
  %24 = ptrtoint ptr %fullts_streaming_state.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %onoff, ptr %fullts_streaming_state.i, align 4
  br label %if.end10

if.end10:                                         ; preds = %do.end4.i, %if.then9.if.end10_crit_edge
  %25 = ptrtoint ptr %pid_filtering to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load i32, ptr %pid_filtering, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool12.not = icmp eq i32 %.pr, 0
  br i1 %tobool12.not, label %if.end10.if.end28_crit_edge, label %if.end10.if.then13_crit_edge

if.end10.if.then13_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13

if.end10.if.end28_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.then13:                                        ; preds = %if.end10.if.then13_crit_edge, %if.end.if.then13_crit_edge
  %26 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index, align 8
  %pid = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 6
  %28 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %pid, align 4
  call fastcc void @flexcop_pid_control(ptr noundef %fc, i32 noundef %27, i16 noundef zeroext %29, i32 noundef %onoff)
  %extra_feedcount15 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 17
  %30 = ptrtoint ptr %extra_feedcount15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %extra_feedcount15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp16 = icmp sgt i32 %31, 0
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then13
  %fullts_streaming_state.i77 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 20
  %32 = ptrtoint ptr %fullts_streaming_state.i77 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fullts_streaming_state.i77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp.not.i78 = icmp eq i32 %33, 1
  br i1 %cmp.not.i78, label %if.then17.if.end28_crit_edge, label %do.body.i81

if.then17.if.end28_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

do.body.i81:                                      ; preds = %if.then17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %34 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and.i79 = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i79)
  %tobool.not.i80 = icmp eq i32 %and.i79, 0
  br i1 %tobool.not.i80, label %do.body.i81.do.end4.i95_crit_edge, label %do.end.i83

do.body.i81.do.end4.i95_crit_edge:                ; preds = %do.body.i81
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4.i95

do.end.i83:                                       ; preds = %do.body.i81
  call void @__sanitizer_cov_trace_pc() #6
  %call.i82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #7
  br label %do.end4.i95

do.end4.i95:                                      ; preds = %do.end.i83, %do.body.i81.do.end4.i95_crit_edge
  %write_ibi_reg.i.i84 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 23
  %35 = ptrtoint ptr %write_ibi_reg.i.i84 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_ibi_reg.i.i84, align 8
  %call.i.i85 = call i32 %36(ptr noundef %fc, i32 noundef 780, [2 x i32] [i32 -536813568, i32 -1]) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.i.i76) #4
  %37 = ptrtoint ptr %v.i.i76 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 -1, ptr %v.i.i76, align 8, !annotation !31
  %read_ibi_reg.i.i86 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 22
  %38 = ptrtoint ptr %read_ibi_reg.i.i86 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read_ibi_reg.i.i86, align 4
  call void %39(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %v.i.i76, ptr noundef %fc, i32 noundef 520) #4
  %40 = ptrtoint ptr %v.i.i76 to i32
  call void @__asan_load4_noabort(i32 %40)
  %bf.load.i.i87 = load i32, ptr %v.i.i76, align 8
  %bf.set.i.i89 = or i32 %bf.load.i.i87, 128
  store i32 %bf.set.i.i89, ptr %v.i.i76, align 8
  %41 = ptrtoint ptr %write_ibi_reg.i.i84 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_ibi_reg.i.i84, align 8
  %.fca.0.insert.i3.i90 = insertvalue [2 x i32] poison, i32 %bf.set.i.i89, 0
  %.fca.1.gep.i.i91 = getelementptr inbounds [2 x i32], ptr %v.i.i76, i32 0, i32 1
  %43 = ptrtoint ptr %.fca.1.gep.i.i91 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.fca.1.load.i.i92 = load i32, ptr %.fca.1.gep.i.i91, align 4
  %.fca.1.insert.i4.i93 = insertvalue [2 x i32] %.fca.0.insert.i3.i90, i32 %.fca.1.load.i.i92, 1
  %call.i5.i94 = call i32 %42(ptr noundef %fc, i32 noundef 520, [2 x i32] %.fca.1.insert.i4.i93) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.i.i76) #4
  %44 = ptrtoint ptr %fullts_streaming_state.i77 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %fullts_streaming_state.i77, align 4
  br label %if.end28

if.else:                                          ; preds = %if.then13
  %45 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %46)
  %cmp20 = icmp eq i16 %46, 8192
  %fullts_streaming_state.i98 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 20
  %47 = ptrtoint ptr %fullts_streaming_state.i98 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %fullts_streaming_state.i98, align 4
  br i1 %cmp20, label %if.then22, label %if.else24

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %onoff)
  %cmp.not.i99 = icmp eq i32 %48, %onoff
  br i1 %cmp.not.i99, label %if.then22.if.end28_crit_edge, label %do.body.i102

if.then22.if.end28_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

do.body.i102:                                     ; preds = %if.then22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %49 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and.i100 = and i32 %49, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i100)
  %tobool.not.i101 = icmp eq i32 %and.i100, 0
  br i1 %tobool.not.i101, label %do.body.i102.do.end4.i124_crit_edge, label %do.end.i106

do.body.i102.do.end4.i124_crit_edge:              ; preds = %do.body.i102
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4.i124

do.end.i106:                                      ; preds = %do.body.i102
  call void @__sanitizer_cov_trace_pc() #6
  %cond.i104 = select i1 %tobool.not, ptr @.str.4, ptr @.str.3
  %call.i105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %cond.i104) #7
  br label %do.end4.i124

do.end4.i124:                                     ; preds = %do.end.i106, %do.body.i102.do.end4.i124_crit_edge
  %bf.set5.i.i108 = select i1 %tobool.not, i32 -2039808, i32 -536813568
  %write_ibi_reg.i.i109 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 23
  %50 = ptrtoint ptr %write_ibi_reg.i.i109 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_ibi_reg.i.i109, align 8
  %.fca.0.insert.i.i110 = insertvalue [2 x i32] poison, i32 %bf.set5.i.i108, 0
  %.fca.1.insert.i.i111 = insertvalue [2 x i32] %.fca.0.insert.i.i110, i32 -1, 1
  %call.i.i112 = call i32 %51(ptr noundef %fc, i32 noundef 780, [2 x i32] %.fca.1.insert.i.i111) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.i.i97) #4
  %52 = ptrtoint ptr %v.i.i97 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 -1, ptr %v.i.i97, align 8, !annotation !31
  %read_ibi_reg.i.i113 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 22
  %53 = ptrtoint ptr %read_ibi_reg.i.i113 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read_ibi_reg.i.i113, align 4
  call void %54(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %v.i.i97, ptr noundef %fc, i32 noundef 520) #4
  %55 = ptrtoint ptr %v.i.i97 to i32
  call void @__asan_load4_noabort(i32 %55)
  %bf.load.i.i114 = load i32, ptr %v.i.i97, align 8
  %bf.value.i.i115 = shl i32 %onoff, 7
  %bf.shl.i1.i116 = and i32 %bf.value.i.i115, 128
  %bf.clear.i.i117 = and i32 %bf.load.i.i114, -129
  %bf.set.i.i118 = or i32 %bf.clear.i.i117, %bf.shl.i1.i116
  store i32 %bf.set.i.i118, ptr %v.i.i97, align 8
  %56 = ptrtoint ptr %write_ibi_reg.i.i109 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write_ibi_reg.i.i109, align 8
  %.fca.0.insert.i3.i119 = insertvalue [2 x i32] poison, i32 %bf.set.i.i118, 0
  %.fca.1.gep.i.i120 = getelementptr inbounds [2 x i32], ptr %v.i.i97, i32 0, i32 1
  %58 = ptrtoint ptr %.fca.1.gep.i.i120 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.fca.1.load.i.i121 = load i32, ptr %.fca.1.gep.i.i120, align 4
  %.fca.1.insert.i4.i122 = insertvalue [2 x i32] %.fca.0.insert.i3.i119, i32 %.fca.1.load.i.i121, 1
  %call.i5.i123 = call i32 %57(ptr noundef %fc, i32 noundef 520, [2 x i32] %.fca.1.insert.i4.i122) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.i.i97) #4
  %59 = ptrtoint ptr %fullts_streaming_state.i98 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %onoff, ptr %fullts_streaming_state.i98, align 4
  br label %if.end28

if.else24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.not.i128 = icmp eq i32 %48, 0
  br i1 %cmp.not.i128, label %if.else24.if.end28_crit_edge, label %do.body.i131

if.else24.if.end28_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

do.body.i131:                                     ; preds = %if.else24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %60 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and.i129 = and i32 %60, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i129)
  %tobool.not.i130 = icmp eq i32 %and.i129, 0
  br i1 %tobool.not.i130, label %do.body.i131.do.end4.i144_crit_edge, label %do.end.i133

do.body.i131.do.end4.i144_crit_edge:              ; preds = %do.body.i131
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4.i144

do.end.i133:                                      ; preds = %do.body.i131
  call void @__sanitizer_cov_trace_pc() #6
  %call.i132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #7
  br label %do.end4.i144

do.end4.i144:                                     ; preds = %do.end.i133, %do.body.i131.do.end4.i144_crit_edge
  %write_ibi_reg.i.i134 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 23
  %61 = ptrtoint ptr %write_ibi_reg.i.i134 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write_ibi_reg.i.i134, align 8
  %call.i.i135 = call i32 %62(ptr noundef %fc, i32 noundef 780, [2 x i32] [i32 -2039808, i32 -1]) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.i.i126) #4
  %63 = ptrtoint ptr %v.i.i126 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 -1, ptr %v.i.i126, align 8, !annotation !31
  %read_ibi_reg.i.i136 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 22
  %64 = ptrtoint ptr %read_ibi_reg.i.i136 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %read_ibi_reg.i.i136, align 4
  call void %65(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %v.i.i126, ptr noundef %fc, i32 noundef 520) #4
  %66 = ptrtoint ptr %v.i.i126 to i32
  call void @__asan_load4_noabort(i32 %66)
  %bf.load.i.i137 = load i32, ptr %v.i.i126, align 8
  %bf.clear.i.i138 = and i32 %bf.load.i.i137, -129
  store i32 %bf.clear.i.i138, ptr %v.i.i126, align 8
  %67 = ptrtoint ptr %write_ibi_reg.i.i134 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write_ibi_reg.i.i134, align 8
  %.fca.0.insert.i3.i139 = insertvalue [2 x i32] poison, i32 %bf.clear.i.i138, 0
  %.fca.1.gep.i.i140 = getelementptr inbounds [2 x i32], ptr %v.i.i126, i32 0, i32 1
  %69 = ptrtoint ptr %.fca.1.gep.i.i140 to i32
  call void @__asan_load4_noabort(i32 %69)
  %.fca.1.load.i.i141 = load i32, ptr %.fca.1.gep.i.i140, align 4
  %.fca.1.insert.i4.i142 = insertvalue [2 x i32] %.fca.0.insert.i3.i139, i32 %.fca.1.load.i.i141, 1
  %call.i5.i143 = call i32 %68(ptr noundef %fc, i32 noundef 520, [2 x i32] %.fca.1.insert.i4.i142) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.i.i126) #4
  %70 = ptrtoint ptr %fullts_streaming_state.i98 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %fullts_streaming_state.i98, align 4
  br label %if.end28

if.end28:                                         ; preds = %do.end4.i144, %if.else24.if.end28_crit_edge, %do.end4.i124, %if.then22.if.end28_crit_edge, %do.end4.i95, %if.then17.if.end28_crit_edge, %if.end10.if.end28_crit_edge, %land.lhs.true.if.end28_crit_edge
  %71 = ptrtoint ptr %feedcount to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %feedcount, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %onoff)
  %cmp30 = icmp eq i32 %72, %onoff
  br i1 %cmp30, label %if.then32, label %if.end28.if.end42_crit_edge

if.end28.if.end42_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

if.then32:                                        ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.i) #4
  %73 = ptrtoint ptr %v.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 -1, ptr %v.i, align 8, !annotation !31
  %read_ibi_reg.i = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 22
  %74 = ptrtoint ptr %read_ibi_reg.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read_ibi_reg.i, align 4
  call void %75(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %v.i, ptr noundef %fc, i32 noundef 520) #4
  %76 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %bf.load.i = load i32, ptr %v.i, align 8
  %bf.value.i = shl i32 %onoff, 15
  %bf.shl.i = and i32 %bf.value.i, 32768
  %bf.clear.i = and i32 %bf.load.i, -32769
  %bf.set.i = or i32 %bf.clear.i, %bf.shl.i
  store i32 %bf.set.i, ptr %v.i, align 8
  %write_ibi_reg.i = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 23
  %77 = ptrtoint ptr %write_ibi_reg.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write_ibi_reg.i, align 8
  %.fca.0.insert.i = insertvalue [2 x i32] poison, i32 %bf.set.i, 0
  %.fca.1.gep.i = getelementptr inbounds [2 x i32], ptr %v.i, i32 0, i32 1
  %79 = ptrtoint ptr %.fca.1.gep.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %.fca.1.load.i = load i32, ptr %.fca.1.gep.i, align 4
  %.fca.1.insert.i = insertvalue [2 x i32] %.fca.0.insert.i, i32 %.fca.1.load.i, 1
  %call.i146 = call i32 %78(ptr noundef %fc, i32 noundef 520, [2 x i32] %.fca.1.insert.i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %80 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and.i147 = and i32 %80, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i147)
  %tobool.not.i148 = icmp eq i32 %and.i147, 0
  br i1 %tobool.not.i148, label %if.then32.flexcop_rcv_data_ctrl.exit_crit_edge, label %do.end.i150

if.then32.flexcop_rcv_data_ctrl.exit_crit_edge:   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #6
  br label %flexcop_rcv_data_ctrl.exit

do.end.i150:                                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #6
  %cond.i149 = select i1 %tobool.not, ptr @.str.8, ptr @.str.7
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull %cond.i149) #7
  br label %flexcop_rcv_data_ctrl.exit

flexcop_rcv_data_ctrl.exit:                       ; preds = %do.end.i150, %if.then32.flexcop_rcv_data_ctrl.exit_crit_edge
  %stream_control = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 25
  %81 = ptrtoint ptr %stream_control to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %stream_control, align 8
  %tobool33.not = icmp eq ptr %82, null
  br i1 %tobool33.not, label %flexcop_rcv_data_ctrl.exit.if.end37_crit_edge, label %if.then34

flexcop_rcv_data_ctrl.exit.if.end37_crit_edge:    ; preds = %flexcop_rcv_data_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

if.then34:                                        ; preds = %flexcop_rcv_data_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call36 = call i32 %82(ptr noundef %fc, i32 noundef %onoff) #4
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %flexcop_rcv_data_ctrl.exit.if.end37_crit_edge
  br i1 %tobool.not, label %if.then40, label %if.end37.if.end42_crit_edge

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  call void @flexcop_reset_block_300(ptr noundef %fc) #4
  call void @flexcop_hw_filter_init(ptr noundef %fc)
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end37.if.end42_crit_edge, %if.end28.if.end42_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @flexcop_pid_control(ptr noundef %fc, i32 noundef %index, i16 noundef zeroext %pid, i32 noundef %onoff) unnamed_addr #0 align 64 {
entry:
  %vpid.i178 = alloca %union.flexcop_ibi_value, align 8
  %v208.i179 = alloca %union.flexcop_ibi_value, align 8
  %vpid.i152 = alloca %union.flexcop_ibi_value, align 8
  %v208.i153 = alloca %union.flexcop_ibi_value, align 8
  %vpid.i125 = alloca %union.flexcop_ibi_value, align 8
  %v208.i126 = alloca %union.flexcop_ibi_value, align 8
  %vpid.i100 = alloca %union.flexcop_ibi_value, align 8
  %v208.i101 = alloca %union.flexcop_ibi_value, align 8
  %vpid.i83 = alloca %union.flexcop_ibi_value, align 8
  %v208.i84 = alloca %union.flexcop_ibi_value, align 8
  %vpid.i = alloca %union.flexcop_ibi_value, align 8
  %v208.i = alloca %union.flexcop_ibi_value, align 8
  %tmp21 = alloca %union.flexcop_ibi_value, align 4
  %tmp23 = alloca %union.flexcop_ibi_value, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %pid to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %pid)
  %cmp = icmp eq i16 %pid, 8192
  br i1 %cmp, label %entry.sw.epilog_crit_edge, label %do.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %0 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end8_crit_edge, label %do.end

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool6.not = icmp eq i32 %onoff, 0
  %cond = select i1 %tobool6.not, ptr @.str.8, ptr @.str.7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv, i32 noundef %conv, i32 noundef %index, ptr noundef nonnull %cond) #7
  br label %do.end8

do.end8:                                          ; preds = %do.end, %do.body.do.end8_crit_edge
  %skip_6_hw_pid_filter = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 21
  %1 = ptrtoint ptr %skip_6_hw_pid_filter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %skip_6_hw_pid_filter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool9.not = icmp eq i32 %2, 0
  %add = add i32 %index, 6
  %spec.select = select i1 %tobool9.not, i32 %index, i32 %add
  %3 = zext i32 %spec.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %spec.select, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb12
    i32 2, label %sw.bb13
    i32 3, label %sw.bb14
    i32 4, label %sw.bb15
    i32 5, label %sw.bb16
  ]

sw.bb:                                            ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vpid.i) #4
  %4 = ptrtoint ptr %vpid.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %vpid.i, align 8, !annotation !31
  %read_ibi_reg.i = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 22
  %5 = ptrtoint ptr %read_ibi_reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_ibi_reg.i, align 4
  call void %6(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %vpid.i, ptr noundef %fc, i32 noundef 768) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v208.i) #4
  %7 = ptrtoint ptr %v208.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %v208.i, align 8, !annotation !31
  %8 = ptrtoint ptr %read_ibi_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_ibi_reg.i, align 4
  call void %9(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %v208.i, ptr noundef %fc, i32 noundef 520) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not.i = icmp eq i32 %onoff, 0
  %10 = and i16 %pid, 8191
  %phi.bo26.i = zext i16 %10 to i32
  %cond.i = select i1 %tobool.not.i, i32 8191, i32 %phi.bo26.i
  %11 = ptrtoint ptr %vpid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load.i = load i32, ptr %vpid.i, align 8
  %bf.clear.i = and i32 %bf.load.i, -16384
  %bf.clear3.i = or i32 %bf.clear.i, %cond.i
  store i32 %bf.clear3.i, ptr %vpid.i, align 8
  %12 = ptrtoint ptr %v208.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load5.i = load i32, ptr %v208.i, align 8
  %bf.value6.i = and i32 %onoff, 1
  %bf.clear7.i = and i32 %bf.load5.i, -2
  %bf.set8.i = or i32 %bf.clear7.i, %bf.value6.i
  store i32 %bf.set8.i, ptr %v208.i, align 8
  %write_ibi_reg.i = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 23
  %13 = ptrtoint ptr %write_ibi_reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_ibi_reg.i, align 8
  %.fca.0.insert14.i = insertvalue [2 x i32] poison, i32 %bf.clear3.i, 0
  %.fca.1.gep15.i = getelementptr inbounds [2 x i32], ptr %vpid.i, i32 0, i32 1
  %15 = ptrtoint ptr %.fca.1.gep15.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.fca.1.load16.i = load i32, ptr %.fca.1.gep15.i, align 4
  %.fca.1.insert17.i = insertvalue [2 x i32] %.fca.0.insert14.i, i32 %.fca.1.load16.i, 1
  %call.i = call i32 %14(ptr noundef %fc, i32 noundef 768, [2 x i32] %.fca.1.insert17.i) #4
  %16 = ptrtoint ptr %write_ibi_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_ibi_reg.i, align 8
  %18 = ptrtoint ptr %v208.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.fca.0.load.i = load i32, ptr %v208.i, align 8
  %.fca.0.insert.i = insertvalue [2 x i32] poison, i32 %.fca.0.load.i, 0
  %.fca.1.gep.i = getelementptr inbounds [2 x i32], ptr %v208.i, i32 0, i32 1
  %19 = ptrtoint ptr %.fca.1.gep.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.fca.1.load.i = load i32, ptr %.fca.1.gep.i, align 4
  %.fca.1.insert.i = insertvalue [2 x i32] %.fca.0.insert.i, i32 %.fca.1.load.i, 1
  %call11.i = call i32 %17(ptr noundef %fc, i32 noundef 520, [2 x i32] %.fca.1.insert.i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v208.i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vpid.i) #4
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vpid.i83) #4
  %20 = ptrtoint ptr %vpid.i83 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 -1, ptr %vpid.i83, align 8, !annotation !31
  %read_ibi_reg.i85 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 22
  %21 = ptrtoint ptr %read_ibi_reg.i85 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_ibi_reg.i85, align 4
  call void %22(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %vpid.i83, ptr noundef %fc, i32 noundef 768) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v208.i84) #4
  %23 = ptrtoint ptr %v208.i84 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 -1, ptr %v208.i84, align 8, !annotation !31
  %24 = ptrtoint ptr %read_ibi_reg.i85 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_ibi_reg.i85, align 4
  call void %25(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %v208.i84, ptr noundef %fc, i32 noundef 520) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not.i86 = icmp eq i32 %onoff, 0
  %26 = and i16 %pid, 8191
  %phi.bo.i = zext i16 %26 to i32
  %phi.bo27.i = shl nuw nsw i32 %phi.bo.i, 16
  %cond.i87 = select i1 %tobool.not.i86, i32 536805376, i32 %phi.bo27.i
  %27 = ptrtoint ptr %vpid.i83 to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load.i88 = load i32, ptr %vpid.i83, align 8
  %bf.clear.i89 = and i32 %bf.load.i88, -1073676289
  %bf.clear3.i90 = or i32 %bf.clear.i89, %cond.i87
  store i32 %bf.clear3.i90, ptr %vpid.i83, align 8
  %28 = ptrtoint ptr %v208.i84 to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load5.i91 = load i32, ptr %v208.i84, align 8
  %bf.value6.i92 = shl i32 %onoff, 1
  %bf.shl7.i = and i32 %bf.value6.i92, 2
  %bf.clear8.i = and i32 %bf.load5.i91, -3
  %bf.set9.i = or i32 %bf.clear8.i, %bf.shl7.i
  store i32 %bf.set9.i, ptr %v208.i84, align 8
  %write_ibi_reg.i93 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 23
  %29 = ptrtoint ptr %write_ibi_reg.i93 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_ibi_reg.i93, align 8
  %.fca.0.insert15.i = insertvalue [2 x i32] poison, i32 %bf.clear3.i90, 0
  %.fca.1.gep16.i = getelementptr inbounds [2 x i32], ptr %vpid.i83, i32 0, i32 1
  %31 = ptrtoint ptr %.fca.1.gep16.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.fca.1.load17.i = load i32, ptr %.fca.1.gep16.i, align 4
  %.fca.1.insert18.i = insertvalue [2 x i32] %.fca.0.insert15.i, i32 %.fca.1.load17.i, 1
  %call.i94 = call i32 %30(ptr noundef %fc, i32 noundef 768, [2 x i32] %.fca.1.insert18.i) #4
  %32 = ptrtoint ptr %write_ibi_reg.i93 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_ibi_reg.i93, align 8
  %34 = ptrtoint ptr %v208.i84 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.fca.0.load.i95 = load i32, ptr %v208.i84, align 8
  %.fca.0.insert.i96 = insertvalue [2 x i32] poison, i32 %.fca.0.load.i95, 0
  %.fca.1.gep.i97 = getelementptr inbounds [2 x i32], ptr %v208.i84, i32 0, i32 1
  %35 = ptrtoint ptr %.fca.1.gep.i97 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.fca.1.load.i98 = load i32, ptr %.fca.1.gep.i97, align 4
  %.fca.1.insert.i99 = insertvalue [2 x i32] %.fca.0.insert.i96, i32 %.fca.1.load.i98, 1
  %call12.i = call i32 %33(ptr noundef %fc, i32 noundef 520, [2 x i32] %.fca.1.insert.i99) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v208.i84) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vpid.i83) #4
  br label %sw.epilog

sw.bb13:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vpid.i100) #4
  %36 = ptrtoint ptr %vpid.i100 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 -1, ptr %vpid.i100, align 8, !annotation !31
  %read_ibi_reg.i102 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 22
  %37 = ptrtoint ptr %read_ibi_reg.i102 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read_ibi_reg.i102, align 4
  call void %38(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %vpid.i100, ptr noundef %fc, i32 noundef 772) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v208.i101) #4
  %39 = ptrtoint ptr %v208.i101 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 -1, ptr %v208.i101, align 8, !annotation !31
  %40 = ptrtoint ptr %read_ibi_reg.i102 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read_ibi_reg.i102, align 4
  call void %41(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %v208.i101, ptr noundef %fc, i32 noundef 520) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not.i103 = icmp eq i32 %onoff, 0
  %42 = and i16 %pid, 8191
  %phi.bo26.i104 = zext i16 %42 to i32
  %cond.i105 = select i1 %tobool.not.i103, i32 8191, i32 %phi.bo26.i104
  %43 = ptrtoint ptr %vpid.i100 to i32
  call void @__asan_load4_noabort(i32 %43)
  %bf.load.i106 = load i32, ptr %vpid.i100, align 8
  %bf.clear.i107 = and i32 %bf.load.i106, -16384
  %bf.clear3.i108 = or i32 %bf.clear.i107, %cond.i105
  store i32 %bf.clear3.i108, ptr %vpid.i100, align 8
  %44 = ptrtoint ptr %v208.i101 to i32
  call void @__asan_load4_noabort(i32 %44)
  %bf.load5.i109 = load i32, ptr %v208.i101, align 8
  %bf.value6.i110 = shl i32 %onoff, 2
  %bf.shl.i = and i32 %bf.value6.i110, 4
  %bf.clear7.i111 = and i32 %bf.load5.i109, -5
  %bf.set8.i112 = or i32 %bf.clear7.i111, %bf.shl.i
  store i32 %bf.set8.i112, ptr %v208.i101, align 8
  %write_ibi_reg.i113 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 23
  %45 = ptrtoint ptr %write_ibi_reg.i113 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_ibi_reg.i113, align 8
  %.fca.0.insert14.i114 = insertvalue [2 x i32] poison, i32 %bf.clear3.i108, 0
  %.fca.1.gep15.i115 = getelementptr inbounds [2 x i32], ptr %vpid.i100, i32 0, i32 1
  %47 = ptrtoint ptr %.fca.1.gep15.i115 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.fca.1.load16.i116 = load i32, ptr %.fca.1.gep15.i115, align 4
  %.fca.1.insert17.i117 = insertvalue [2 x i32] %.fca.0.insert14.i114, i32 %.fca.1.load16.i116, 1
  %call.i118 = call i32 %46(ptr noundef %fc, i32 noundef 772, [2 x i32] %.fca.1.insert17.i117) #4
  %48 = ptrtoint ptr %write_ibi_reg.i113 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_ibi_reg.i113, align 8
  %50 = ptrtoint ptr %v208.i101 to i32
  call void @__asan_load4_noabort(i32 %50)
  %.fca.0.load.i119 = load i32, ptr %v208.i101, align 8
  %.fca.0.insert.i120 = insertvalue [2 x i32] poison, i32 %.fca.0.load.i119, 0
  %.fca.1.gep.i121 = getelementptr inbounds [2 x i32], ptr %v208.i101, i32 0, i32 1
  %51 = ptrtoint ptr %.fca.1.gep.i121 to i32
  call void @__asan_load4_noabort(i32 %51)
  %.fca.1.load.i122 = load i32, ptr %.fca.1.gep.i121, align 4
  %.fca.1.insert.i123 = insertvalue [2 x i32] %.fca.0.insert.i120, i32 %.fca.1.load.i122, 1
  %call11.i124 = call i32 %49(ptr noundef %fc, i32 noundef 520, [2 x i32] %.fca.1.insert.i123) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v208.i101) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vpid.i100) #4
  br label %sw.epilog

sw.bb14:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vpid.i125) #4
  %52 = ptrtoint ptr %vpid.i125 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 -1, ptr %vpid.i125, align 8, !annotation !31
  %read_ibi_reg.i127 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 22
  %53 = ptrtoint ptr %read_ibi_reg.i127 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read_ibi_reg.i127, align 4
  call void %54(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %vpid.i125, ptr noundef %fc, i32 noundef 772) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v208.i126) #4
  %55 = ptrtoint ptr %v208.i126 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 -1, ptr %v208.i126, align 8, !annotation !31
  %56 = ptrtoint ptr %read_ibi_reg.i127 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read_ibi_reg.i127, align 4
  call void %57(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %v208.i126, ptr noundef %fc, i32 noundef 520) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not.i128 = icmp eq i32 %onoff, 0
  %58 = and i16 %pid, 8191
  %phi.bo.i129 = zext i16 %58 to i32
  %phi.bo27.i130 = shl nuw nsw i32 %phi.bo.i129, 16
  %cond.i131 = select i1 %tobool.not.i128, i32 536805376, i32 %phi.bo27.i130
  %59 = ptrtoint ptr %vpid.i125 to i32
  call void @__asan_load4_noabort(i32 %59)
  %bf.load.i132 = load i32, ptr %vpid.i125, align 8
  %bf.clear.i133 = and i32 %bf.load.i132, -1073676289
  %bf.clear3.i134 = or i32 %bf.clear.i133, %cond.i131
  store i32 %bf.clear3.i134, ptr %vpid.i125, align 8
  %60 = ptrtoint ptr %v208.i126 to i32
  call void @__asan_load4_noabort(i32 %60)
  %bf.load5.i135 = load i32, ptr %v208.i126, align 8
  %bf.value6.i136 = shl i32 %onoff, 3
  %bf.shl7.i137 = and i32 %bf.value6.i136, 8
  %bf.clear8.i138 = and i32 %bf.load5.i135, -9
  %bf.set9.i139 = or i32 %bf.clear8.i138, %bf.shl7.i137
  store i32 %bf.set9.i139, ptr %v208.i126, align 8
  %write_ibi_reg.i140 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 23
  %61 = ptrtoint ptr %write_ibi_reg.i140 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write_ibi_reg.i140, align 8
  %.fca.0.insert15.i141 = insertvalue [2 x i32] poison, i32 %bf.clear3.i134, 0
  %.fca.1.gep16.i142 = getelementptr inbounds [2 x i32], ptr %vpid.i125, i32 0, i32 1
  %63 = ptrtoint ptr %.fca.1.gep16.i142 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.fca.1.load17.i143 = load i32, ptr %.fca.1.gep16.i142, align 4
  %.fca.1.insert18.i144 = insertvalue [2 x i32] %.fca.0.insert15.i141, i32 %.fca.1.load17.i143, 1
  %call.i145 = call i32 %62(ptr noundef %fc, i32 noundef 772, [2 x i32] %.fca.1.insert18.i144) #4
  %64 = ptrtoint ptr %write_ibi_reg.i140 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write_ibi_reg.i140, align 8
  %66 = ptrtoint ptr %v208.i126 to i32
  call void @__asan_load4_noabort(i32 %66)
  %.fca.0.load.i146 = load i32, ptr %v208.i126, align 8
  %.fca.0.insert.i147 = insertvalue [2 x i32] poison, i32 %.fca.0.load.i146, 0
  %.fca.1.gep.i148 = getelementptr inbounds [2 x i32], ptr %v208.i126, i32 0, i32 1
  %67 = ptrtoint ptr %.fca.1.gep.i148 to i32
  call void @__asan_load4_noabort(i32 %67)
  %.fca.1.load.i149 = load i32, ptr %.fca.1.gep.i148, align 4
  %.fca.1.insert.i150 = insertvalue [2 x i32] %.fca.0.insert.i147, i32 %.fca.1.load.i149, 1
  %call12.i151 = call i32 %65(ptr noundef %fc, i32 noundef 520, [2 x i32] %.fca.1.insert.i150) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v208.i126) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vpid.i125) #4
  br label %sw.epilog

sw.bb15:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vpid.i152) #4
  %68 = ptrtoint ptr %vpid.i152 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 -1, ptr %vpid.i152, align 8, !annotation !31
  %read_ibi_reg.i154 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 22
  %69 = ptrtoint ptr %read_ibi_reg.i154 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read_ibi_reg.i154, align 4
  call void %70(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %vpid.i152, ptr noundef %fc, i32 noundef 776) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v208.i153) #4
  %71 = ptrtoint ptr %v208.i153 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 -1, ptr %v208.i153, align 8, !annotation !31
  %72 = ptrtoint ptr %read_ibi_reg.i154 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read_ibi_reg.i154, align 4
  call void %73(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %v208.i153, ptr noundef %fc, i32 noundef 520) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not.i155 = icmp eq i32 %onoff, 0
  %74 = and i16 %pid, 8191
  %phi.bo26.i156 = zext i16 %74 to i32
  %cond.i157 = select i1 %tobool.not.i155, i32 8191, i32 %phi.bo26.i156
  %75 = ptrtoint ptr %vpid.i152 to i32
  call void @__asan_load4_noabort(i32 %75)
  %bf.load.i158 = load i32, ptr %vpid.i152, align 8
  %bf.clear.i159 = and i32 %bf.load.i158, -16384
  %bf.clear3.i160 = or i32 %bf.clear.i159, %cond.i157
  store i32 %bf.clear3.i160, ptr %vpid.i152, align 8
  %76 = ptrtoint ptr %v208.i153 to i32
  call void @__asan_load4_noabort(i32 %76)
  %bf.load5.i161 = load i32, ptr %v208.i153, align 8
  %bf.value6.i162 = shl i32 %onoff, 4
  %bf.shl.i163 = and i32 %bf.value6.i162, 16
  %bf.clear7.i164 = and i32 %bf.load5.i161, -17
  %bf.set8.i165 = or i32 %bf.clear7.i164, %bf.shl.i163
  store i32 %bf.set8.i165, ptr %v208.i153, align 8
  %write_ibi_reg.i166 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 23
  %77 = ptrtoint ptr %write_ibi_reg.i166 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write_ibi_reg.i166, align 8
  %.fca.0.insert14.i167 = insertvalue [2 x i32] poison, i32 %bf.clear3.i160, 0
  %.fca.1.gep15.i168 = getelementptr inbounds [2 x i32], ptr %vpid.i152, i32 0, i32 1
  %79 = ptrtoint ptr %.fca.1.gep15.i168 to i32
  call void @__asan_load4_noabort(i32 %79)
  %.fca.1.load16.i169 = load i32, ptr %.fca.1.gep15.i168, align 4
  %.fca.1.insert17.i170 = insertvalue [2 x i32] %.fca.0.insert14.i167, i32 %.fca.1.load16.i169, 1
  %call.i171 = call i32 %78(ptr noundef %fc, i32 noundef 776, [2 x i32] %.fca.1.insert17.i170) #4
  %80 = ptrtoint ptr %write_ibi_reg.i166 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write_ibi_reg.i166, align 8
  %82 = ptrtoint ptr %v208.i153 to i32
  call void @__asan_load4_noabort(i32 %82)
  %.fca.0.load.i172 = load i32, ptr %v208.i153, align 8
  %.fca.0.insert.i173 = insertvalue [2 x i32] poison, i32 %.fca.0.load.i172, 0
  %.fca.1.gep.i174 = getelementptr inbounds [2 x i32], ptr %v208.i153, i32 0, i32 1
  %83 = ptrtoint ptr %.fca.1.gep.i174 to i32
  call void @__asan_load4_noabort(i32 %83)
  %.fca.1.load.i175 = load i32, ptr %.fca.1.gep.i174, align 4
  %.fca.1.insert.i176 = insertvalue [2 x i32] %.fca.0.insert.i173, i32 %.fca.1.load.i175, 1
  %call11.i177 = call i32 %81(ptr noundef %fc, i32 noundef 520, [2 x i32] %.fca.1.insert.i176) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v208.i153) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vpid.i152) #4
  br label %sw.epilog

sw.bb16:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vpid.i178) #4
  %84 = ptrtoint ptr %vpid.i178 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 -1, ptr %vpid.i178, align 8, !annotation !31
  %read_ibi_reg.i180 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 22
  %85 = ptrtoint ptr %read_ibi_reg.i180 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %read_ibi_reg.i180, align 4
  call void %86(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %vpid.i178, ptr noundef %fc, i32 noundef 776) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v208.i179) #4
  %87 = ptrtoint ptr %v208.i179 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 -1, ptr %v208.i179, align 8, !annotation !31
  %88 = ptrtoint ptr %read_ibi_reg.i180 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %read_ibi_reg.i180, align 4
  call void %89(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %v208.i179, ptr noundef %fc, i32 noundef 520) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not.i181 = icmp eq i32 %onoff, 0
  %90 = and i16 %pid, 8191
  %phi.bo.i182 = zext i16 %90 to i32
  %phi.bo27.i183 = shl nuw nsw i32 %phi.bo.i182, 16
  %cond.i184 = select i1 %tobool.not.i181, i32 536805376, i32 %phi.bo27.i183
  %91 = ptrtoint ptr %vpid.i178 to i32
  call void @__asan_load4_noabort(i32 %91)
  %bf.load.i185 = load i32, ptr %vpid.i178, align 8
  %bf.clear.i186 = and i32 %bf.load.i185, -1073676289
  %bf.clear3.i187 = or i32 %bf.clear.i186, %cond.i184
  store i32 %bf.clear3.i187, ptr %vpid.i178, align 8
  %92 = ptrtoint ptr %v208.i179 to i32
  call void @__asan_load4_noabort(i32 %92)
  %bf.load5.i188 = load i32, ptr %v208.i179, align 8
  %bf.value6.i189 = shl i32 %onoff, 5
  %bf.shl7.i190 = and i32 %bf.value6.i189, 32
  %bf.clear8.i191 = and i32 %bf.load5.i188, -33
  %bf.set9.i192 = or i32 %bf.clear8.i191, %bf.shl7.i190
  store i32 %bf.set9.i192, ptr %v208.i179, align 8
  %write_ibi_reg.i193 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 23
  %93 = ptrtoint ptr %write_ibi_reg.i193 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write_ibi_reg.i193, align 8
  %.fca.0.insert15.i194 = insertvalue [2 x i32] poison, i32 %bf.clear3.i187, 0
  %.fca.1.gep16.i195 = getelementptr inbounds [2 x i32], ptr %vpid.i178, i32 0, i32 1
  %95 = ptrtoint ptr %.fca.1.gep16.i195 to i32
  call void @__asan_load4_noabort(i32 %95)
  %.fca.1.load17.i196 = load i32, ptr %.fca.1.gep16.i195, align 4
  %.fca.1.insert18.i197 = insertvalue [2 x i32] %.fca.0.insert15.i194, i32 %.fca.1.load17.i196, 1
  %call.i198 = call i32 %94(ptr noundef %fc, i32 noundef 776, [2 x i32] %.fca.1.insert18.i197) #4
  %96 = ptrtoint ptr %write_ibi_reg.i193 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %write_ibi_reg.i193, align 8
  %98 = ptrtoint ptr %v208.i179 to i32
  call void @__asan_load4_noabort(i32 %98)
  %.fca.0.load.i199 = load i32, ptr %v208.i179, align 8
  %.fca.0.insert.i200 = insertvalue [2 x i32] poison, i32 %.fca.0.load.i199, 0
  %.fca.1.gep.i201 = getelementptr inbounds [2 x i32], ptr %v208.i179, i32 0, i32 1
  %99 = ptrtoint ptr %.fca.1.gep.i201 to i32
  call void @__asan_load4_noabort(i32 %99)
  %.fca.1.load.i202 = load i32, ptr %.fca.1.gep.i201, align 4
  %.fca.1.insert.i203 = insertvalue [2 x i32] %.fca.0.insert.i200, i32 %.fca.1.load.i202, 1
  %call12.i204 = call i32 %97(ptr noundef %fc, i32 noundef 520, [2 x i32] %.fca.1.insert.i203) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v208.i179) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vpid.i178) #4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end8
  %has_32_hw_pid_filter = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 2
  %100 = ptrtoint ptr %has_32_hw_pid_filter to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %has_32_hw_pid_filter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool17.not = icmp ne i32 %101, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %spec.select)
  %cmp18 = icmp slt i32 %spec.select, 38
  %or.cond = select i1 %tobool17.not, i1 %cmp18, i1 false
  br i1 %or.cond, label %if.then20, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then20:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp21) #4
  %read_ibi_reg = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 22
  %102 = ptrtoint ptr %read_ibi_reg to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %read_ibi_reg, align 4
  call void %103(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %tmp21, ptr noundef %fc, i32 noundef 784) #4
  %104 = ptrtoint ptr %tmp21 to i32
  call void @__asan_load4_noabort(i32 %104)
  %vid.sroa.0.0.copyload40 = load i32, ptr %tmp21, align 4
  %vid.sroa.7.0.tmp21.sroa_idx = getelementptr inbounds i8, ptr %tmp21, i32 4
  %105 = ptrtoint ptr %vid.sroa.7.0.tmp21.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %105)
  %vid.sroa.7.0.copyload41 = load i32, ptr %vid.sroa.7.0.tmp21.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp21) #4
  %sub = add nsw i32 %spec.select, 26
  %bf.value = and i32 %sub, 31
  %bf.clear = and i32 %vid.sroa.0.0.copyload40, -32
  %bf.set = or i32 %bf.clear, %bf.value
  %write_ibi_reg = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 23
  %106 = ptrtoint ptr %write_ibi_reg to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %write_ibi_reg, align 8
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %bf.set, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 %vid.sroa.7.0.copyload41, 1
  %call22 = call i32 %107(ptr noundef %fc, i32 noundef 784, [2 x i32] %.fca.1.insert) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp23) #4
  %108 = ptrtoint ptr %read_ibi_reg to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %read_ibi_reg, align 4
  call void %109(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %tmp23, ptr noundef %fc, i32 noundef 788) #4
  %110 = ptrtoint ptr %tmp23 to i32
  call void @__asan_load4_noabort(i32 %110)
  %vpid.sroa.0.0.copyload44 = load i32, ptr %tmp23, align 4
  %vpid.sroa.9.0.tmp23.sroa_idx = getelementptr inbounds i8, ptr %tmp23, i32 4
  %111 = ptrtoint ptr %vpid.sroa.9.0.tmp23.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %111)
  %vpid.sroa.9.0.copyload45 = load i32, ptr %vpid.sroa.9.0.tmp23.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp23) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool25.not = icmp eq i32 %onoff, 0
  %phi.bo = and i32 %conv, 8191
  %spec.select82 = select i1 %tobool25.not, i32 8191, i32 %phi.bo
  %bf.clear30 = and i32 %vpid.sroa.0.0.copyload44, -24576
  %bf.value33 = shl i32 %onoff, 14
  %bf.shl = and i32 %bf.value33, 16384
  %bf.set31 = or i32 %bf.shl, %spec.select82
  %bf.set35 = or i32 %bf.set31, %bf.clear30
  %112 = ptrtoint ptr %write_ibi_reg to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %write_ibi_reg, align 8
  %.fca.0.insert42 = insertvalue [2 x i32] poison, i32 %bf.set35, 0
  %.fca.1.insert43 = insertvalue [2 x i32] %.fca.0.insert42, i32 %vpid.sroa.9.0.copyload45, 1
  %call38 = call i32 %113(ptr noundef %fc, i32 noundef 788, [2 x i32] %.fca.1.insert43) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then20, %sw.default.sw.epilog_crit_edge, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flexcop_reset_block_300(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flexcop_hw_filter_init(ptr noundef %fc) local_unnamed_addr #0 align 64 {
entry:
  %v.i22 = alloca %union.flexcop_ibi_value, align 8
  %v.i = alloca %union.flexcop_ibi_value, align 8
  %tmp = alloca %union.flexcop_ibi_value, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %skip_6_hw_pid_filter = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 21
  %0 = ptrtoint ptr %skip_6_hw_pid_filter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %skip_6_hw_pid_filter, align 8
  %mul.neg = mul i32 %1, -6
  %sub = add i32 %mul.neg, 6
  %has_32_hw_pid_filter = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 2
  %2 = ptrtoint ptr %has_32_hw_pid_filter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %has_32_hw_pid_filter, align 8
  %mul1 = shl i32 %3, 5
  %add = add i32 %sub, %mul1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp31 = icmp sgt i32 %add, 0
  br i1 %cmp31, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.032 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call fastcc void @flexcop_pid_control(ptr noundef %fc, i32 noundef %i.032, i16 noundef zeroext 8191, i32 noundef 0)
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, %add
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %write_ibi_reg.i = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 23
  %4 = ptrtoint ptr %write_ibi_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_ibi_reg.i, align 8
  %call.i = tail call i32 %5(ptr noundef %fc, i32 noundef 780, [2 x i32] [i32 -2039808, i32 -1]) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.i) #4
  %6 = ptrtoint ptr %v.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %v.i, align 8, !annotation !31
  %read_ibi_reg.i = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 22
  %7 = ptrtoint ptr %read_ibi_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_ibi_reg.i, align 4
  call void %8(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %v.i, ptr noundef %fc, i32 noundef 520) #4
  %9 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load.i = load i32, ptr %v.i, align 8
  %bf.clear.i = and i32 %bf.load.i, -129
  store i32 %bf.clear.i, ptr %v.i, align 8
  %10 = ptrtoint ptr %write_ibi_reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_ibi_reg.i, align 8
  %.fca.0.insert.i = insertvalue [2 x i32] poison, i32 %bf.clear.i, 0
  %.fca.1.gep.i = getelementptr inbounds [2 x i32], ptr %v.i, i32 0, i32 1
  %12 = ptrtoint ptr %.fca.1.gep.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.fca.1.load.i = load i32, ptr %.fca.1.gep.i, align 4
  %.fca.1.insert.i = insertvalue [2 x i32] %.fca.0.insert.i, i32 %.fca.1.load.i, 1
  %call.i21 = call i32 %11(ptr noundef %fc, i32 noundef 520, [2 x i32] %.fca.1.insert.i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #4
  %13 = ptrtoint ptr %read_ibi_reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_ibi_reg.i, align 4
  call void %14(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %tmp, ptr noundef %fc, i32 noundef 776) #4
  %15 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %15)
  %v.sroa.0.0.copyload7 = load i32, ptr %tmp, align 4
  %v.sroa.9.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 4
  %16 = ptrtoint ptr %v.sroa.9.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %v.sroa.9.0.copyload8 = load i32, ptr %v.sroa.9.0.tmp.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #4
  %bf.set = and i32 %v.sroa.0.0.copyload7, -49153
  %bf.clear3 = or i32 %bf.set, 16384
  %17 = ptrtoint ptr %write_ibi_reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_ibi_reg.i, align 8
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %bf.clear3, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 %v.sroa.9.0.copyload8, 1
  %call = call i32 %18(ptr noundef %fc, i32 noundef 776, [2 x i32] %.fca.1.insert) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.i22) #4
  %19 = ptrtoint ptr %v.i22 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 -1, ptr %v.i22, align 8, !annotation !31
  %20 = ptrtoint ptr %read_ibi_reg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read_ibi_reg.i, align 4
  call void %21(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %v.i22, ptr noundef %fc, i32 noundef 520) #4
  %22 = ptrtoint ptr %v.i22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load.i24 = load i32, ptr %v.i22, align 8
  %bf.set.i = or i32 %bf.load.i24, 64
  store i32 %bf.set.i, ptr %v.i22, align 8
  %23 = ptrtoint ptr %write_ibi_reg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_ibi_reg.i, align 8
  %.fca.0.insert.i26 = insertvalue [2 x i32] poison, i32 %bf.set.i, 0
  %.fca.1.gep.i27 = getelementptr inbounds [2 x i32], ptr %v.i22, i32 0, i32 1
  %25 = ptrtoint ptr %.fca.1.gep.i27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.fca.1.load.i28 = load i32, ptr %.fca.1.gep.i27, align 4
  %.fca.1.insert.i29 = insertvalue [2 x i32] %.fca.0.insert.i26, i32 %.fca.1.load.i28, 1
  %call.i30 = call i32 %24(ptr noundef %fc, i32 noundef 520, [2 x i32] %.fca.1.insert.i29) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.i22) #4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !17, !19, !20, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__ksymtab_flexcop_pid_feed_control, !1, !"__ksymtab_flexcop_pid_feed_control", i1 false, i1 false}
!1 = !{!"../drivers/media/common/b2c2/flexcop-hw-filter.c", i32 222, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/common/b2c2/flexcop-hw-filter.c", i32 167, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @flexcop_toggle_fullts_streaming._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @flexcop_toggle_fullts_streaming._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/common/b2c2/flexcop-hw-filter.c", i32 118, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @flexcop_pid_control._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @flexcop_pid_control._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/common/b2c2/flexcop-hw-filter.c", i32 12, i32 2}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @flexcop_rcv_data_ctrl._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @flexcop_rcv_data_ctrl._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"auto-init"}
