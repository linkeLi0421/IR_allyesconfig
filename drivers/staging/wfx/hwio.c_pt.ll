; ModuleID = '/llk/IR_all_yes/drivers/staging/wfx/hwio.c_pt.bc'
source_filename = "../drivers/staging/wfx/hwio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%struct.atomic_t = type { i32 }
%union.anon.98 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.wfx_dev = type { %struct.wfx_platform_data, ptr, ptr, [2 x ptr], [2 x %struct.mac_address], ptr, ptr, i8, %struct.completion, %struct.hif_ind_startup, %struct.wfx_hif, %struct.delayed_work, i8, i8, %struct.mutex, %struct.wfx_hif_cmd, %struct.sk_buff_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, i32, %struct.hif_rx_stats, %struct.mutex, %struct.hif_tx_power_loop_info, %struct.mutex, i32 }
%struct.wfx_platform_data = type { ptr, ptr, ptr, i8 }
%struct.mac_address = type { [6 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.hif_ind_startup = type { i32, i16, [14 x i8], [8 x i8], i16, i16, i8, i8, [2 x [6 x i8]], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i16, i32, [128 x i8] }
%struct.wfx_hif = type { %struct.work_struct, %struct.completion, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wfx_hif_cmd = type { %struct.mutex, %struct.completion, %struct.completion, ptr, ptr, i32, i32 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hif_rx_stats = type <{ i32, i32, i32, i32, [22 x i32], [22 x i16], [22 x i16], [22 x i16], [22 x i16], i32, i32, i8, i8 }>
%struct.hif_tx_power_loop_info = type { i16, i16, i16, i16, i16, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hwbus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/staging/wfx/hwio.c\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: unaligned buffer\00", [43 x i8] zeroinitializer }, align 32
@__func__.wfx_data_read = private unnamed_addr constant [14 x i8] c"wfx_data_read\00", align 1
@wfx_data_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.wfx_data_read, ptr @.str, i32 244, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: bus communication error: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wfx_data_read._entry_ptr = internal global ptr @wfx_data_read._entry, section ".printk_index", align 4
@__func__.wfx_data_write = private unnamed_addr constant [15 x i8] c"wfx_data_write\00", align 1
@wfx_data_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.wfx_data_write, ptr @.str, i32 260, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@wfx_data_write._entry_ptr = internal global ptr @wfx_data_write._entry, section ".printk_index", align 4
@__tracepoint_io_read = external dso_local global %struct.tracepoint, align 4
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/staging/wfx/traces.h\00", [35 x i8] zeroinitializer }, align 32
@trace_io_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_io_write = external dso_local global %struct.tracepoint, align 4
@trace_io_write.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@write32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.8, ptr @.str, i32 61, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"write32\00", [24 x i8] zeroinitializer }, align 32
@write32._entry_ptr = internal global ptr @write32._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@read32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.9, ptr @.str, i32 44, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"read32\00", [25 x i8] zeroinitializer }, align 32
@read32._entry_ptr = internal global ptr @read32._entry, section ".printk_index", align 4
@__tracepoint_io_read32 = external dso_local global %struct.tracepoint, align 4
@trace_io_read32.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_io_write32 = external dso_local global %struct.tracepoint, align 4
@trace_io_write32.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 236, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 243, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 259, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [32 x i8] c"../drivers/staging/wfx/traces.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 275, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 108, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 60, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private constant [30 x i8] c"../drivers/staging/wfx/hwio.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 43, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @read32._entry, ptr @read32._entry_ptr, ptr @wfx_data_read._entry, ptr @wfx_data_read._entry_ptr, ptr @wfx_data_write._entry, ptr @wfx_data_write._entry_ptr, ptr @write32._entry, ptr @write32._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_data_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_data_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wfx_data_read(ptr nocapture noundef readonly %wdev, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  %and = and i32 %0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !50

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 236, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.wfx_data_read) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %hwbus_ops = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 5
  %1 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hwbus_ops, align 4
  %lock = getelementptr inbounds %struct.hwbus_ops, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lock, align 4
  %hwbus_priv = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 6
  %5 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hwbus_priv, align 4
  tail call void %4(ptr noundef %6) #7
  %7 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hwbus_ops, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %11 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hwbus_priv, align 4
  %call = tail call i32 %10(ptr noundef %12, i32 noundef 2, ptr noundef %buf, i32 noundef %len) #7
  tail call fastcc void @trace_io_read(i32 noundef 2, i32 noundef -1, ptr noundef %buf, i32 noundef %len)
  %13 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hwbus_ops, align 4
  %unlock = getelementptr inbounds %struct.hwbus_ops, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %unlock, align 4
  %17 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hwbus_priv, align 4
  tail call void %16(ptr noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool24.not = icmp eq i32 %call, 0
  br i1 %tobool24.not, label %if.end.if.end29_crit_edge, label %do.end28

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.end28:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.wfx_data_read, i32 noundef %call) #10
  br label %if.end29

if.end29:                                         ; preds = %do.end28, %if.end.if.end29_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_io_read(i32 noundef %reg, i32 noundef %addr, ptr noundef %io_buf, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_io_read, i32 0, i32 1), ptr blockaddress(@trace_io_read, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !51

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !40) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !50

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !40) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !52
  %call42 = tail call i32 @__traceiter_io_read(ptr noundef null, i32 noundef %reg, i32 noundef %addr, ptr noundef %io_buf, i32 noundef %len) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !53
  %13 = tail call i32 @llvm.read_register.i32(metadata !40) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !40) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !50

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !40) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_io_read, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_io_read, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_io_read.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_io_read.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 277, ptr noundef nonnull @.str.6) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !55
  %31 = tail call i32 @llvm.read_register.i32(metadata !40) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wfx_data_write(ptr nocapture noundef readonly %wdev, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  %and = and i32 %0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !50

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 252, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.wfx_data_write) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %hwbus_ops = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 5
  %1 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hwbus_ops, align 4
  %lock = getelementptr inbounds %struct.hwbus_ops, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lock, align 4
  %hwbus_priv = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 6
  %5 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hwbus_priv, align 4
  tail call void %4(ptr noundef %6) #7
  %7 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hwbus_ops, align 4
  %copy_to_io = getelementptr inbounds %struct.hwbus_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %copy_to_io to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %copy_to_io, align 4
  %11 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hwbus_priv, align 4
  %call = tail call i32 %10(ptr noundef %12, i32 noundef 2, ptr noundef %buf, i32 noundef %len) #7
  tail call fastcc void @trace_io_write(i32 noundef 2, i32 noundef -1, ptr noundef %buf, i32 noundef %len)
  %13 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hwbus_ops, align 4
  %unlock = getelementptr inbounds %struct.hwbus_ops, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %unlock, align 4
  %17 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hwbus_priv, align 4
  tail call void %16(ptr noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool24.not = icmp eq i32 %call, 0
  br i1 %tobool24.not, label %if.end.if.end29_crit_edge, label %do.end28

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.end28:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.wfx_data_write, i32 noundef %call) #10
  br label %if.end29

if.end29:                                         ; preds = %do.end28, %if.end.if.end29_crit_edge
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_io_write(i32 noundef %reg, i32 noundef %addr, ptr noundef %io_buf, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_io_write, i32 0, i32 1), ptr blockaddress(@trace_io_write, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !51

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !40) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !50

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !40) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !56
  %call42 = tail call i32 @__traceiter_io_write(ptr noundef null, i32 noundef %reg, i32 noundef %addr, ptr noundef %io_buf, i32 noundef %len) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !57
  %13 = tail call i32 @llvm.read_register.i32(metadata !40) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !40) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !50

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !40) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_io_write, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_io_write, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_io_write.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_io_write.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 271, ptr noundef nonnull @.str.6) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !55
  %31 = tail call i32 @llvm.read_register.i32(metadata !40) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sram_buf_read(ptr nocapture noundef readonly %wdev, i32 noundef %addr, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwbus_ops.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 5
  %0 = ptrtoint ptr %hwbus_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwbus_ops.i, align 4
  %lock.i = getelementptr inbounds %struct.hwbus_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock.i, align 4
  %hwbus_priv.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 6
  %4 = ptrtoint ptr %hwbus_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwbus_priv.i, align 4
  tail call void %3(ptr noundef %5) #7
  %call.i = tail call fastcc i32 @indirect_read(ptr noundef %wdev, i32 noundef 5, i32 noundef %addr, ptr noundef %buf, i32 noundef %len) #7
  tail call fastcc void @trace_io_read(i32 noundef 5, i32 noundef %addr, ptr noundef %buf, i32 noundef %len) #7
  %6 = ptrtoint ptr %hwbus_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwbus_ops.i, align 4
  %unlock.i = getelementptr inbounds %struct.hwbus_ops, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %unlock.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unlock.i, align 4
  %10 = ptrtoint ptr %hwbus_priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hwbus_priv.i, align 4
  tail call void %9(ptr noundef %11) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahb_buf_read(ptr nocapture noundef readonly %wdev, i32 noundef %addr, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwbus_ops.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 5
  %0 = ptrtoint ptr %hwbus_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwbus_ops.i, align 4
  %lock.i = getelementptr inbounds %struct.hwbus_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock.i, align 4
  %hwbus_priv.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 6
  %4 = ptrtoint ptr %hwbus_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwbus_priv.i, align 4
  tail call void %3(ptr noundef %5) #7
  %call.i = tail call fastcc i32 @indirect_read(ptr noundef %wdev, i32 noundef 3, i32 noundef %addr, ptr noundef %buf, i32 noundef %len) #7
  tail call fastcc void @trace_io_read(i32 noundef 3, i32 noundef %addr, ptr noundef %buf, i32 noundef %len) #7
  %6 = ptrtoint ptr %hwbus_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwbus_ops.i, align 4
  %unlock.i = getelementptr inbounds %struct.hwbus_ops, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %unlock.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unlock.i, align 4
  %10 = ptrtoint ptr %hwbus_priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hwbus_priv.i, align 4
  tail call void %9(ptr noundef %11) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sram_buf_write(ptr nocapture noundef readonly %wdev, i32 noundef %addr, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwbus_ops.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 5
  %0 = ptrtoint ptr %hwbus_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwbus_ops.i, align 4
  %lock.i = getelementptr inbounds %struct.hwbus_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock.i, align 4
  %hwbus_priv.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 6
  %4 = ptrtoint ptr %hwbus_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwbus_priv.i, align 4
  tail call void %3(ptr noundef %5) #7
  %call.i = tail call fastcc i32 @indirect_write(ptr noundef %wdev, i32 noundef 5, i32 noundef %addr, ptr noundef %buf, i32 noundef %len) #7
  tail call fastcc void @trace_io_write(i32 noundef 5, i32 noundef %addr, ptr noundef %buf, i32 noundef %len) #7
  %6 = ptrtoint ptr %hwbus_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwbus_ops.i, align 4
  %unlock.i = getelementptr inbounds %struct.hwbus_ops, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %unlock.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unlock.i, align 4
  %10 = ptrtoint ptr %hwbus_priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hwbus_priv.i, align 4
  tail call void %9(ptr noundef %11) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahb_buf_write(ptr nocapture noundef readonly %wdev, i32 noundef %addr, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwbus_ops.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 5
  %0 = ptrtoint ptr %hwbus_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwbus_ops.i, align 4
  %lock.i = getelementptr inbounds %struct.hwbus_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock.i, align 4
  %hwbus_priv.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 6
  %4 = ptrtoint ptr %hwbus_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwbus_priv.i, align 4
  tail call void %3(ptr noundef %5) #7
  %call.i = tail call fastcc i32 @indirect_write(ptr noundef %wdev, i32 noundef 3, i32 noundef %addr, ptr noundef %buf, i32 noundef %len) #7
  tail call fastcc void @trace_io_write(i32 noundef 3, i32 noundef %addr, ptr noundef %buf, i32 noundef %len) #7
  %6 = ptrtoint ptr %hwbus_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwbus_ops.i, align 4
  %unlock.i = getelementptr inbounds %struct.hwbus_ops, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %unlock.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unlock.i, align 4
  %10 = ptrtoint ptr %hwbus_priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hwbus_priv.i, align 4
  tail call void %9(ptr noundef %11) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sram_reg_read(ptr nocapture noundef readonly %wdev, i32 noundef %addr, ptr nocapture noundef writeonly %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4) #11
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.indirect_read32_locked.exit_crit_edge, label %if.end.i

entry.indirect_read32_locked.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %indirect_read32_locked.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hwbus_ops.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 5
  %1 = ptrtoint ptr %hwbus_ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hwbus_ops.i, align 4
  %lock.i = getelementptr inbounds %struct.hwbus_ops, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lock.i, align 4
  %hwbus_priv.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 6
  %5 = ptrtoint ptr %hwbus_priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hwbus_priv.i, align 4
  tail call void %4(ptr noundef %6) #7
  %call1.i = tail call fastcc i32 @indirect_read(ptr noundef %wdev, i32 noundef 5, i32 noundef %addr, ptr noundef nonnull %call7.i.i, i32 noundef 4) #7
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call7.i.i, align 8
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %val, align 4
  tail call fastcc void @trace_io_read32(i32 noundef 5, i32 noundef %addr, i32 noundef %9) #7
  %11 = ptrtoint ptr %hwbus_ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hwbus_ops.i, align 4
  %unlock.i = getelementptr inbounds %struct.hwbus_ops, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %unlock.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %unlock.i, align 4
  %15 = ptrtoint ptr %hwbus_priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hwbus_priv.i, align 4
  tail call void %14(ptr noundef %16) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %indirect_read32_locked.exit

indirect_read32_locked.exit:                      ; preds = %if.end.i, %entry.indirect_read32_locked.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -12, %entry.indirect_read32_locked.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahb_reg_read(ptr nocapture noundef readonly %wdev, i32 noundef %addr, ptr nocapture noundef writeonly %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4) #11
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.indirect_read32_locked.exit_crit_edge, label %if.end.i

entry.indirect_read32_locked.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %indirect_read32_locked.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hwbus_ops.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 5
  %1 = ptrtoint ptr %hwbus_ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hwbus_ops.i, align 4
  %lock.i = getelementptr inbounds %struct.hwbus_ops, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lock.i, align 4
  %hwbus_priv.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 6
  %5 = ptrtoint ptr %hwbus_priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hwbus_priv.i, align 4
  tail call void %4(ptr noundef %6) #7
  %call1.i = tail call fastcc i32 @indirect_read(ptr noundef %wdev, i32 noundef 3, i32 noundef %addr, ptr noundef nonnull %call7.i.i, i32 noundef 4) #7
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call7.i.i, align 8
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %val, align 4
  tail call fastcc void @trace_io_read32(i32 noundef 3, i32 noundef %addr, i32 noundef %9) #7
  %11 = ptrtoint ptr %hwbus_ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hwbus_ops.i, align 4
  %unlock.i = getelementptr inbounds %struct.hwbus_ops, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %unlock.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %unlock.i, align 4
  %15 = ptrtoint ptr %hwbus_priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hwbus_priv.i, align 4
  tail call void %14(ptr noundef %16) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %indirect_read32_locked.exit

indirect_read32_locked.exit:                      ; preds = %if.end.i, %entry.indirect_read32_locked.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -12, %entry.indirect_read32_locked.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sram_reg_write(ptr nocapture noundef readonly %wdev, i32 noundef %addr, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4) #11
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.indirect_write32_locked.exit_crit_edge, label %if.end.i

entry.indirect_write32_locked.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %indirect_write32_locked.exit

if.end.i:                                         ; preds = %entry
  %1 = tail call i32 @llvm.bswap.i32(i32 %val) #7
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %call7.i.i, align 8
  %hwbus_ops.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 5
  %3 = ptrtoint ptr %hwbus_ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hwbus_ops.i, align 4
  %lock.i = getelementptr inbounds %struct.hwbus_ops, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock.i, align 4
  %hwbus_priv.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 6
  %7 = ptrtoint ptr %hwbus_priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hwbus_priv.i, align 4
  tail call void %6(ptr noundef %8) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 4) #11
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.indirect_write.exit_crit_edge, label %if.end.i.i

if.end.i.indirect_write.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %indirect_write.exit

if.end.i.i:                                       ; preds = %if.end.i
  %10 = tail call i32 @llvm.bswap.i32(i32 %addr) #7
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %call7.i.i.i, align 8
  %12 = ptrtoint ptr %hwbus_ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hwbus_ops.i, align 4
  %copy_to_io.i.i = getelementptr inbounds %struct.hwbus_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %copy_to_io.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %copy_to_io.i.i, align 4
  %16 = ptrtoint ptr %hwbus_priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hwbus_priv.i, align 4
  %call1.i.i = tail call i32 %15(ptr noundef %17, i32 noundef 4, ptr noundef nonnull %call7.i.i.i, i32 noundef 4) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end53.i_crit_edge, label %write32.exit.i

if.end.i.i.if.end53.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.i

write32.exit.i:                                   ; preds = %if.end.i.i
  %dev.i.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %18 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.8, i32 noundef %call1.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp51.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp51.i, label %write32.exit.i.indirect_write.exit_crit_edge, label %write32.exit.i.if.end53.i_crit_edge

write32.exit.i.if.end53.i_crit_edge:              ; preds = %write32.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.i

write32.exit.i.indirect_write.exit_crit_edge:     ; preds = %write32.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %indirect_write.exit

if.end53.i:                                       ; preds = %write32.exit.i.if.end53.i_crit_edge, %if.end.i.i.if.end53.i_crit_edge
  %20 = ptrtoint ptr %hwbus_ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hwbus_ops.i, align 4
  %copy_to_io.i = getelementptr inbounds %struct.hwbus_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %copy_to_io.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %copy_to_io.i, align 4
  %24 = ptrtoint ptr %hwbus_priv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hwbus_priv.i, align 4
  %call54.i = tail call i32 %23(ptr noundef %25, i32 noundef 5, ptr noundef nonnull %call7.i.i, i32 noundef 4) #7
  br label %indirect_write.exit

indirect_write.exit:                              ; preds = %if.end53.i, %write32.exit.i.indirect_write.exit_crit_edge, %if.end.i.indirect_write.exit_crit_edge
  %retval.0.i2 = phi i32 [ %call54.i, %if.end53.i ], [ %call1.i.i, %write32.exit.i.indirect_write.exit_crit_edge ], [ -12, %if.end.i.indirect_write.exit_crit_edge ]
  tail call fastcc void @trace_io_write32(i32 noundef 5, i32 noundef %addr, i32 noundef %val) #7
  %26 = ptrtoint ptr %hwbus_ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hwbus_ops.i, align 4
  %unlock.i = getelementptr inbounds %struct.hwbus_ops, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %unlock.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %unlock.i, align 4
  %30 = ptrtoint ptr %hwbus_priv.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hwbus_priv.i, align 4
  tail call void %29(ptr noundef %31) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %indirect_write32_locked.exit

indirect_write32_locked.exit:                     ; preds = %indirect_write.exit, %entry.indirect_write32_locked.exit_crit_edge
  %retval.0.i = phi i32 [ %retval.0.i2, %indirect_write.exit ], [ -12, %entry.indirect_write32_locked.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahb_reg_write(ptr nocapture noundef readonly %wdev, i32 noundef %addr, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4) #11
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.indirect_write32_locked.exit_crit_edge, label %if.end.i

entry.indirect_write32_locked.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %indirect_write32_locked.exit

if.end.i:                                         ; preds = %entry
  %1 = tail call i32 @llvm.bswap.i32(i32 %val) #7
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %call7.i.i, align 8
  %hwbus_ops.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 5
  %3 = ptrtoint ptr %hwbus_ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hwbus_ops.i, align 4
  %lock.i = getelementptr inbounds %struct.hwbus_ops, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock.i, align 4
  %hwbus_priv.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 6
  %7 = ptrtoint ptr %hwbus_priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hwbus_priv.i, align 4
  tail call void %6(ptr noundef %8) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 4) #11
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.indirect_write.exit_crit_edge, label %if.end.i.i

if.end.i.indirect_write.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %indirect_write.exit

if.end.i.i:                                       ; preds = %if.end.i
  %10 = tail call i32 @llvm.bswap.i32(i32 %addr) #7
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %call7.i.i.i, align 8
  %12 = ptrtoint ptr %hwbus_ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hwbus_ops.i, align 4
  %copy_to_io.i.i = getelementptr inbounds %struct.hwbus_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %copy_to_io.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %copy_to_io.i.i, align 4
  %16 = ptrtoint ptr %hwbus_priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hwbus_priv.i, align 4
  %call1.i.i = tail call i32 %15(ptr noundef %17, i32 noundef 4, ptr noundef nonnull %call7.i.i.i, i32 noundef 4) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end53.i_crit_edge, label %write32.exit.i

if.end.i.i.if.end53.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.i

write32.exit.i:                                   ; preds = %if.end.i.i
  %dev.i.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %18 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.8, i32 noundef %call1.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp51.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp51.i, label %write32.exit.i.indirect_write.exit_crit_edge, label %write32.exit.i.if.end53.i_crit_edge

write32.exit.i.if.end53.i_crit_edge:              ; preds = %write32.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.i

write32.exit.i.indirect_write.exit_crit_edge:     ; preds = %write32.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %indirect_write.exit

if.end53.i:                                       ; preds = %write32.exit.i.if.end53.i_crit_edge, %if.end.i.i.if.end53.i_crit_edge
  %20 = ptrtoint ptr %hwbus_ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hwbus_ops.i, align 4
  %copy_to_io.i = getelementptr inbounds %struct.hwbus_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %copy_to_io.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %copy_to_io.i, align 4
  %24 = ptrtoint ptr %hwbus_priv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hwbus_priv.i, align 4
  %call54.i = tail call i32 %23(ptr noundef %25, i32 noundef 3, ptr noundef nonnull %call7.i.i, i32 noundef 4) #7
  br label %indirect_write.exit

indirect_write.exit:                              ; preds = %if.end53.i, %write32.exit.i.indirect_write.exit_crit_edge, %if.end.i.indirect_write.exit_crit_edge
  %retval.0.i2 = phi i32 [ %call54.i, %if.end53.i ], [ %call1.i.i, %write32.exit.i.indirect_write.exit_crit_edge ], [ -12, %if.end.i.indirect_write.exit_crit_edge ]
  tail call fastcc void @trace_io_write32(i32 noundef 3, i32 noundef %addr, i32 noundef %val) #7
  %26 = ptrtoint ptr %hwbus_ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hwbus_ops.i, align 4
  %unlock.i = getelementptr inbounds %struct.hwbus_ops, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %unlock.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %unlock.i, align 4
  %30 = ptrtoint ptr %hwbus_priv.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hwbus_priv.i, align 4
  tail call void %29(ptr noundef %31) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %indirect_write32_locked.exit

indirect_write32_locked.exit:                     ; preds = %indirect_write.exit, %entry.indirect_write32_locked.exit_crit_edge
  %retval.0.i = phi i32 [ %retval.0.i2, %indirect_write.exit ], [ -12, %entry.indirect_write32_locked.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @config_reg_read(ptr nocapture noundef readonly %wdev, ptr nocapture noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @read32_locked(ptr noundef %wdev, i32 noundef 0, ptr noundef %val)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read32_locked(ptr nocapture noundef readonly %wdev, i32 noundef %reg, ptr nocapture noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwbus_ops = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 5
  %0 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwbus_ops, align 4
  %lock = getelementptr inbounds %struct.hwbus_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %hwbus_priv = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 6
  %4 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwbus_priv, align 4
  tail call void %3(ptr noundef %5) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 4) #11
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.read32.exit_crit_edge, label %if.end.i

entry.read32.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %read32.exit

if.end.i:                                         ; preds = %entry
  %8 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hwbus_ops, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hwbus_priv, align 4
  %call1.i = tail call i32 %11(ptr noundef %13, i32 noundef %reg, ptr noundef nonnull %call7.i.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %if.end3.i, label %if.end3.thread.i

if.end3.thread.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %do.end.i

if.end3.i:                                        ; preds = %if.end.i
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call7.i.i, align 8
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %val, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool4.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool4.not.i, label %if.end3.i.read32.exit_crit_edge, label %if.end3.i.do.end.i_crit_edge

if.end3.i.do.end.i_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end3.i.read32.exit_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read32.exit

do.end.i:                                         ; preds = %if.end3.i.do.end.i_crit_edge, %if.end3.thread.i
  %dev.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9, i32 noundef %call1.i) #10
  br label %read32.exit

read32.exit:                                      ; preds = %do.end.i, %if.end3.i.read32.exit_crit_edge, %entry.read32.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %entry.read32.exit_crit_edge ], [ %call1.i, %do.end.i ], [ 0, %if.end3.i.read32.exit_crit_edge ]
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  tail call fastcc void @trace_io_read32(i32 noundef %reg, i32 noundef -1, i32 noundef %21)
  %22 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hwbus_ops, align 4
  %unlock = getelementptr inbounds %struct.hwbus_ops, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %unlock, align 4
  %26 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hwbus_priv, align 4
  tail call void %25(ptr noundef %27) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @config_reg_write(ptr nocapture noundef readonly %wdev, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @write32_locked(ptr noundef %wdev, i32 noundef 0, i32 noundef %val)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write32_locked(ptr nocapture noundef readonly %wdev, i32 noundef %reg, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwbus_ops = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 5
  %0 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwbus_ops, align 4
  %lock = getelementptr inbounds %struct.hwbus_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %hwbus_priv = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 6
  %4 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwbus_priv, align 4
  tail call void %3(ptr noundef %5) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 4) #11
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.write32.exit_crit_edge, label %if.end.i

entry.write32.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %write32.exit

if.end.i:                                         ; preds = %entry
  %7 = tail call i32 @llvm.bswap.i32(i32 %val) #7
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %call7.i.i, align 8
  %9 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hwbus_ops, align 4
  %copy_to_io.i = getelementptr inbounds %struct.hwbus_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %copy_to_io.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %copy_to_io.i, align 4
  %13 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hwbus_priv, align 4
  %call1.i = tail call i32 %12(ptr noundef %14, i32 noundef %reg, ptr noundef nonnull %call7.i.i, i32 noundef 4) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.write32.exit_crit_edge, label %do.end.i

if.end.i.write32.exit_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %write32.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.8, i32 noundef %call1.i) #10
  br label %write32.exit

write32.exit:                                     ; preds = %do.end.i, %if.end.i.write32.exit_crit_edge, %entry.write32.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %entry.write32.exit_crit_edge ], [ %call1.i, %do.end.i ], [ 0, %if.end.i.write32.exit_crit_edge ]
  tail call fastcc void @trace_io_write32(i32 noundef %reg, i32 noundef -1, i32 noundef %val)
  %17 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hwbus_ops, align 4
  %unlock = getelementptr inbounds %struct.hwbus_ops, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %unlock, align 4
  %21 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hwbus_priv, align 4
  tail call void %20(ptr noundef %22) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @config_reg_write_bits(ptr nocapture noundef readonly %wdev, i32 noundef %mask, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @write32_bits_locked(ptr noundef %wdev, i32 noundef 0, i32 noundef %mask, i32 noundef %val)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write32_bits_locked(ptr nocapture noundef readonly %wdev, i32 noundef %reg, i32 noundef %mask, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %neg = xor i32 %mask, -1
  %and = and i32 %neg, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !50

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 92, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %hwbus_ops = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 5
  %0 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwbus_ops, align 4
  %lock = getelementptr inbounds %struct.hwbus_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %hwbus_priv = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 6
  %4 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwbus_priv, align 4
  tail call void %3(ptr noundef %5) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 4) #11
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %read32.exit.thread, label %if.end.i

read32.exit.thread:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @trace_io_read32(i32 noundef %reg, i32 noundef -1, i32 noundef -1)
  br label %err

if.end.i:                                         ; preds = %if.end
  %7 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hwbus_ops, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %11 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hwbus_priv, align 4
  %call1.i = tail call i32 %10(ptr noundef %12, i32 noundef %reg, ptr noundef nonnull %call7.i.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %if.end3.i, label %if.end3.thread.i

if.end3.thread.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %read32.exit

if.end3.i:                                        ; preds = %if.end.i
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call7.i.i, align 8
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool4.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool4.not.i, label %read32.exit.thread60, label %if.end3.i.read32.exit_crit_edge

if.end3.i.read32.exit_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read32.exit

read32.exit.thread60:                             ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @trace_io_read32(i32 noundef %reg, i32 noundef -1, i32 noundef %15)
  br label %if.end22

read32.exit:                                      ; preds = %if.end3.i.read32.exit_crit_edge, %if.end3.thread.i
  %val_r.0 = phi i32 [ %15, %if.end3.i.read32.exit_crit_edge ], [ -1, %if.end3.thread.i ]
  %dev.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9, i32 noundef %call1.i) #10
  tail call fastcc void @trace_io_read32(i32 noundef %reg, i32 noundef -1, i32 noundef %val_r.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %read32.exit.err_crit_edge, label %read32.exit.if.end22_crit_edge

read32.exit.if.end22_crit_edge:                   ; preds = %read32.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

read32.exit.err_crit_edge:                        ; preds = %read32.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end22:                                         ; preds = %read32.exit.if.end22_crit_edge, %read32.exit.thread60
  %val_r.164 = phi i32 [ %15, %read32.exit.thread60 ], [ %val_r.0, %read32.exit.if.end22_crit_edge ]
  %and20 = and i32 %val, %mask
  %and24 = and i32 %val_r.164, %neg
  %or = or i32 %and24, %and20
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %val_r.164)
  %cmp25.not = icmp eq i32 %or, %val_r.164
  br i1 %cmp25.not, label %if.end22.err_crit_edge, label %if.then26

if.end22.err_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.then26:                                        ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i47 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3264, i32 noundef 4) #11
  %tobool.not.i48 = icmp eq ptr %call7.i.i47, null
  br i1 %tobool.not.i48, label %if.then26.write32.exit_crit_edge, label %if.end.i52

if.then26.write32.exit_crit_edge:                 ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %write32.exit

if.end.i52:                                       ; preds = %if.then26
  %19 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %20 = ptrtoint ptr %call7.i.i47 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %call7.i.i47, align 8
  %21 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hwbus_ops, align 4
  %copy_to_io.i = getelementptr inbounds %struct.hwbus_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %copy_to_io.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %copy_to_io.i, align 4
  %25 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hwbus_priv, align 4
  %call1.i51 = tail call i32 %24(ptr noundef %26, i32 noundef %reg, ptr noundef nonnull %call7.i.i47, i32 noundef 4) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i51)
  %tobool2.not.i = icmp eq i32 %call1.i51, 0
  br i1 %tobool2.not.i, label %if.end.i52.write32.exit_crit_edge, label %do.end.i54

if.end.i52.write32.exit_crit_edge:                ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #9
  br label %write32.exit

do.end.i54:                                       ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i53 = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %27 = ptrtoint ptr %dev.i53 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i53, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.8, i32 noundef %call1.i51) #10
  br label %write32.exit

write32.exit:                                     ; preds = %do.end.i54, %if.end.i52.write32.exit_crit_edge, %if.then26.write32.exit_crit_edge
  %retval.0.i55 = phi i32 [ -12, %if.then26.write32.exit_crit_edge ], [ %call1.i51, %do.end.i54 ], [ 0, %if.end.i52.write32.exit_crit_edge ]
  tail call fastcc void @trace_io_write32(i32 noundef %reg, i32 noundef -1, i32 noundef %or)
  br label %err

err:                                              ; preds = %write32.exit, %if.end22.err_crit_edge, %read32.exit.err_crit_edge, %read32.exit.thread
  %ret.0 = phi i32 [ %call1.i, %read32.exit.err_crit_edge ], [ %retval.0.i55, %write32.exit ], [ %call1.i, %if.end22.err_crit_edge ], [ -12, %read32.exit.thread ]
  %29 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hwbus_ops, align 4
  %unlock = getelementptr inbounds %struct.hwbus_ops, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %unlock, align 4
  %33 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hwbus_priv, align 4
  tail call void %32(ptr noundef %34) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @control_reg_read(ptr nocapture noundef readonly %wdev, ptr nocapture noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @read32_locked(ptr noundef %wdev, i32 noundef 1, ptr noundef %val)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @control_reg_write(ptr nocapture noundef readonly %wdev, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @write32_locked(ptr noundef %wdev, i32 noundef 1, i32 noundef %val)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @control_reg_write_bits(ptr nocapture noundef readonly %wdev, i32 noundef %mask, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @write32_bits_locked(ptr noundef %wdev, i32 noundef 1, i32 noundef %mask, i32 noundef %val)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igpr_reg_read(ptr nocapture noundef readonly %wdev, i32 noundef %index, ptr nocapture noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4
  %shl = shl i32 %index, 24
  %or = or i32 %shl, -2147483648
  %call = tail call fastcc i32 @write32_locked(ptr noundef %wdev, i32 noundef 6, i32 noundef %or)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @read32_locked(ptr noundef %wdev, i32 noundef 6, ptr noundef %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %and = and i32 %2, 16777215
  store i32 %and, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igpr_reg_write(ptr nocapture noundef readonly %wdev, i32 noundef %index, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %index, 24
  %or = or i32 %shl, %val
  %call = tail call fastcc i32 @write32_locked(ptr noundef %wdev, i32 noundef 6, i32 noundef %or)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_io_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_io_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @indirect_read(ptr nocapture noundef readonly %wdev, i32 noundef %reg, i32 noundef %addr, ptr noundef %buf, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %len)
  %cmp = icmp ugt i32 %len, 8191
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !58

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 117, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %do.end37 [
    i32 3, label %if.end.if.end57_crit_edge
    i32 5, label %if.then54
  ]

if.end.if.end57_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

do.end37:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 118, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.then54:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end.if.end57_crit_edge
  %prefetch.0 = phi i32 [ 8192, %if.then54 ], [ 2048, %if.end.if.end57_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 4) #11
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end57.if.then82_crit_edge, label %if.end.i

if.end57.if.then82_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then82

if.end.i:                                         ; preds = %if.end57
  %2 = tail call i32 @llvm.bswap.i32(i32 %addr) #7
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %call7.i.i, align 8
  %hwbus_ops.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 5
  %4 = ptrtoint ptr %hwbus_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwbus_ops.i, align 4
  %copy_to_io.i = getelementptr inbounds %struct.hwbus_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %copy_to_io.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %copy_to_io.i, align 4
  %hwbus_priv.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 6
  %8 = ptrtoint ptr %hwbus_priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hwbus_priv.i, align 4
  %call1.i = tail call i32 %7(ptr noundef %9, i32 noundef 4, ptr noundef nonnull %call7.i.i, i32 noundef 4) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end60_crit_edge, label %write32.exit

if.end.i.if.end60_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

write32.exit:                                     ; preds = %if.end.i
  %dev.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.8, i32 noundef %call1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp58 = icmp slt i32 %call1.i, 0
  br i1 %cmp58, label %write32.exit.if.then82_crit_edge, label %write32.exit.if.end60_crit_edge

write32.exit.if.end60_crit_edge:                  ; preds = %write32.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

write32.exit.if.then82_crit_edge:                 ; preds = %write32.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then82

if.end60:                                         ; preds = %write32.exit.if.end60_crit_edge, %if.end.i.if.end60_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i109 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 4) #11
  %tobool.not.i110 = icmp eq ptr %call7.i.i109, null
  br i1 %tobool.not.i110, label %if.end60.if.then82_crit_edge, label %if.end.i114

if.end60.if.then82_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then82

if.end.i114:                                      ; preds = %if.end60
  %13 = ptrtoint ptr %hwbus_ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hwbus_ops.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %17 = ptrtoint ptr %hwbus_priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hwbus_priv.i, align 4
  %call1.i113 = tail call i32 %16(ptr noundef %18, i32 noundef 0, ptr noundef nonnull %call7.i.i109, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i113)
  %cmp.i = icmp sgt i32 %call1.i113, -1
  br i1 %cmp.i, label %if.end3.i, label %read32.exit.thread158

read32.exit.thread158:                            ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i109) #7
  %dev.i115160 = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  br label %if.then82.sink.split

if.end3.i:                                        ; preds = %if.end.i114
  %19 = ptrtoint ptr %call7.i.i109 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call7.i.i109, align 8
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i109) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i113)
  %tobool4.not.i = icmp eq i32 %call1.i113, 0
  br i1 %tobool4.not.i, label %if.end3.i.if.end64_crit_edge, label %read32.exit

if.end3.i.if.end64_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

read32.exit:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i115 = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %22 = ptrtoint ptr %dev.i115 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i115, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9, i32 noundef %call1.i113) #10
  br label %if.end64

if.end64:                                         ; preds = %read32.exit, %if.end3.i.if.end64_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i118 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3264, i32 noundef 4) #11
  %tobool.not.i119 = icmp eq ptr %call7.i.i118, null
  br i1 %tobool.not.i119, label %if.end64.if.then82_crit_edge, label %if.end.i125

if.end64.if.then82_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then82

if.end.i125:                                      ; preds = %if.end64
  %or = or i32 %21, %prefetch.0
  %25 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %26 = ptrtoint ptr %call7.i.i118 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %call7.i.i118, align 8
  %27 = ptrtoint ptr %hwbus_ops.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hwbus_ops.i, align 4
  %copy_to_io.i121 = getelementptr inbounds %struct.hwbus_ops, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %copy_to_io.i121 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %copy_to_io.i121, align 4
  %31 = ptrtoint ptr %hwbus_priv.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hwbus_priv.i, align 4
  %call1.i123 = tail call i32 %30(ptr noundef %32, i32 noundef 0, ptr noundef nonnull %call7.i.i118, i32 noundef 4) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i118) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i123)
  %tobool2.not.i124 = icmp eq i32 %call1.i123, 0
  br i1 %tobool2.not.i124, label %if.end.i125.for.cond.preheader_crit_edge, label %write32.exit129

if.end.i125.for.cond.preheader_crit_edge:         ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

write32.exit129:                                  ; preds = %if.end.i125
  %dev.i126 = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %33 = ptrtoint ptr %dev.i126 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i126, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.8, i32 noundef %call1.i123) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i123)
  %cmp66 = icmp slt i32 %call1.i123, 0
  br i1 %cmp66, label %write32.exit129.if.then82_crit_edge, label %write32.exit129.for.cond.preheader_crit_edge

write32.exit129.for.cond.preheader_crit_edge:     ; preds = %write32.exit129
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

write32.exit129.if.then82_crit_edge:              ; preds = %write32.exit129
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then82

for.cond.preheader:                               ; preds = %write32.exit129.for.cond.preheader_crit_edge, %if.end.i125.for.cond.preheader_crit_edge
  %dev.i140 = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end76.for.body_crit_edge, %for.cond.preheader
  %i.0186 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end76.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i130 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3264, i32 noundef 4) #11
  %tobool.not.i131 = icmp eq ptr %call7.i.i130, null
  br i1 %tobool.not.i131, label %for.body.if.then82_crit_edge, label %if.end.i136

for.body.if.then82_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then82

if.end.i136:                                      ; preds = %for.body
  %36 = ptrtoint ptr %hwbus_ops.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hwbus_ops.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %40 = ptrtoint ptr %hwbus_priv.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hwbus_priv.i, align 4
  %call1.i134 = tail call i32 %39(ptr noundef %41, i32 noundef 0, ptr noundef nonnull %call7.i.i130, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i134)
  %cmp.i135 = icmp sgt i32 %call1.i134, -1
  br i1 %cmp.i135, label %if.end3.i139, label %read32.exit143.thread172

read32.exit143.thread172:                         ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i130) #7
  br label %if.then82.sink.split

if.end3.i139:                                     ; preds = %if.end.i136
  %42 = ptrtoint ptr %call7.i.i130 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %call7.i.i130, align 8
  %44 = lshr i32 %43, 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i130) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i134)
  %tobool4.not.i138 = icmp eq i32 %call1.i134, 0
  br i1 %tobool4.not.i138, label %if.end3.i139.if.end73_crit_edge, label %read32.exit143

if.end3.i139.if.end73_crit_edge:                  ; preds = %if.end3.i139
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

read32.exit143:                                   ; preds = %if.end3.i139
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %dev.i140 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i140, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9, i32 noundef %call1.i134) #10
  br label %if.end73

if.end73:                                         ; preds = %read32.exit143, %if.end3.i139.if.end73_crit_edge
  %and = and i32 %44, %prefetch.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool74.not = icmp eq i32 %and, 0
  br i1 %tobool74.not, label %err, label %if.end76

if.end76:                                         ; preds = %if.end73
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 250, i32 noundef 2) #7
  %inc = add nuw nsw i32 %i.0186, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %if.end76.if.then82_crit_edge, label %if.end76.for.body_crit_edge

if.end76.for.body_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end76.if.then82_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then82

err:                                              ; preds = %if.end73
  %47 = ptrtoint ptr %hwbus_ops.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hwbus_ops.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %51 = ptrtoint ptr %hwbus_priv.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hwbus_priv.i, align 4
  %call80 = tail call i32 %50(ptr noundef %52, i32 noundef %reg, ptr noundef %buf, i32 noundef %len) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %err.if.then82_crit_edge, label %err.cleanup_crit_edge

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err.if.then82_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then82

if.then82.sink.split:                             ; preds = %read32.exit143.thread172, %read32.exit.thread158
  %dev.i140.sink = phi ptr [ %dev.i140, %read32.exit143.thread172 ], [ %dev.i115160, %read32.exit.thread158 ]
  %call1.i134.lcssa.sink = phi i32 [ %call1.i134, %read32.exit143.thread172 ], [ %call1.i113, %read32.exit.thread158 ]
  %53 = ptrtoint ptr %dev.i140.sink to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i140.sink, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9, i32 noundef %call1.i134.lcssa.sink) #10
  br label %if.then82

if.then82:                                        ; preds = %if.then82.sink.split, %err.if.then82_crit_edge, %if.end76.if.then82_crit_edge, %for.body.if.then82_crit_edge, %write32.exit129.if.then82_crit_edge, %if.end64.if.then82_crit_edge, %if.end60.if.then82_crit_edge, %write32.exit.if.then82_crit_edge, %if.end57.if.then82_crit_edge
  %ret.0179 = phi i32 [ %call80, %err.if.then82_crit_edge ], [ %call1.i123, %write32.exit129.if.then82_crit_edge ], [ %call1.i, %write32.exit.if.then82_crit_edge ], [ -12, %if.end57.if.then82_crit_edge ], [ -12, %if.end60.if.then82_crit_edge ], [ -12, %if.end64.if.then82_crit_edge ], [ %call1.i134.lcssa.sink, %if.then82.sink.split ], [ -12, %for.body.if.then82_crit_edge ], [ -110, %if.end76.if.then82_crit_edge ]
  %55 = call ptr @memset(ptr %buf, i32 255, i32 %len)
  br label %cleanup

cleanup:                                          ; preds = %if.then82, %err.cleanup_crit_edge, %do.end37
  %retval.0 = phi i32 [ -19, %do.end37 ], [ %ret.0179, %if.then82 ], [ %call80, %err.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @indirect_write(ptr nocapture noundef readonly %wdev, i32 noundef %reg, i32 noundef %addr, ptr noundef %buf, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %len)
  %cmp = icmp ugt i32 %len, 8191
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !58

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 165, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %reg, label %do.end37 [
    i32 5, label %if.end.if.end43_crit_edge
    i32 3, label %if.end.if.end43_crit_edge68
  ]

if.end.if.end43_crit_edge68:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

do.end37:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 166, i32 noundef 9, ptr noundef null) #7
  br label %if.end43

if.end43:                                         ; preds = %do.end37, %if.end.if.end43_crit_edge, %if.end.if.end43_crit_edge68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 4) #11
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end43.cleanup_crit_edge, label %if.end.i

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end43
  %2 = tail call i32 @llvm.bswap.i32(i32 %addr) #7
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %call7.i.i, align 8
  %hwbus_ops.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 5
  %4 = ptrtoint ptr %hwbus_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwbus_ops.i, align 4
  %copy_to_io.i = getelementptr inbounds %struct.hwbus_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %copy_to_io.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %copy_to_io.i, align 4
  %hwbus_priv.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 6
  %8 = ptrtoint ptr %hwbus_priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hwbus_priv.i, align 4
  %call1.i = tail call i32 %7(ptr noundef %9, i32 noundef 4, ptr noundef nonnull %call7.i.i, i32 noundef 4) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end53_crit_edge, label %write32.exit

if.end.i.if.end53_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

write32.exit:                                     ; preds = %if.end.i
  %dev.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.8, i32 noundef %call1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp51 = icmp slt i32 %call1.i, 0
  br i1 %cmp51, label %write32.exit.cleanup_crit_edge, label %write32.exit.if.end53_crit_edge

write32.exit.if.end53_crit_edge:                  ; preds = %write32.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

write32.exit.cleanup_crit_edge:                   ; preds = %write32.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end53:                                         ; preds = %write32.exit.if.end53_crit_edge, %if.end.i.if.end53_crit_edge
  %12 = ptrtoint ptr %hwbus_ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hwbus_ops.i, align 4
  %copy_to_io = getelementptr inbounds %struct.hwbus_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %copy_to_io to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %copy_to_io, align 4
  %16 = ptrtoint ptr %hwbus_priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hwbus_priv.i, align 4
  %call54 = tail call i32 %15(ptr noundef %17, i32 noundef %reg, ptr noundef %buf, i32 noundef %len) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %write32.exit.cleanup_crit_edge, %if.end43.cleanup_crit_edge
  %retval.0 = phi i32 [ %call54, %if.end53 ], [ %call1.i, %write32.exit.cleanup_crit_edge ], [ -12, %if.end43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_io_read32(i32 noundef %reg, i32 noundef %addr, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_io_read32, i32 0, i32 1), ptr blockaddress(@trace_io_read32, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !51

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !40) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !50

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !40) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !59
  %call42 = tail call i32 @__traceiter_io_read32(ptr noundef null, i32 noundef %reg, i32 noundef %addr, i32 noundef %val) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !60
  %13 = tail call i32 @llvm.read_register.i32(metadata !40) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !40) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !50

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !40) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_io_read32, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_io_read32, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_io_read32.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_io_read32.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 313, ptr noundef nonnull @.str.6) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !55
  %31 = tail call i32 @llvm.read_register.i32(metadata !40) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_io_read32(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_io_write32(i32 noundef %reg, i32 noundef %addr, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_io_write32, i32 0, i32 1), ptr blockaddress(@trace_io_write32, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !51

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !40) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !50

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !40) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !61
  %call42 = tail call i32 @__traceiter_io_write32(ptr noundef null, i32 noundef %reg, i32 noundef %addr, i32 noundef %val) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  %13 = tail call i32 @llvm.read_register.i32(metadata !40) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !40) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !50

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !40) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_io_write32, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_io_write32, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_io_write32.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_io_write32.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 308, ptr noundef nonnull @.str.6) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !55
  %31 = tail call i32 @llvm.read_register.i32(metadata !40) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_io_write32(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !10, !12, !14, !15, !17, !18, !19, !20, !22, !23, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39}
!llvm.named.register.sp = !{!40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/wfx/hwio.c", i32 236, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.wfx_data_read, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/wfx/hwio.c", i32 243, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @wfx_data_read._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @wfx_data_read._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__func__.wfx_data_write, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/wfx/hwio.c", i32 252, i32 2}
!12 = !{ptr @wfx_data_write._entry, !13, !"_entry", i1 false, i1 false}
!13 = !{!"../drivers/staging/wfx/hwio.c", i32 259, i32 3}
!14 = !{ptr @wfx_data_write._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../drivers/staging/wfx/traces.h", i32 275, i32 1}
!17 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!19 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../drivers/staging/wfx/traces.h", i32 269, i32 1}
!25 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/wfx/hwio.c", i32 60, i32 3}
!28 = !{ptr @write32._entry, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @write32._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/wfx/hwio.c", i32 43, i32 3}
!32 = !{ptr @read32._entry, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @read32._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../drivers/staging/wfx/traces.h", i32 311, i32 1}
!36 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../drivers/staging/wfx/traces.h", i32 306, i32 1}
!39 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!40 = !{!"sp"}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{i64 2148698196, i64 2148698201, i64 2148698214, i64 2148698258, i64 2148698292, i64 2148698313}
!52 = !{i64 2157673042}
!53 = !{i64 2157673263}
!54 = !{i64 2149264485}
!55 = !{i64 2149265521}
!56 = !{i64 2157656934}
!57 = !{i64 2157657157}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{i64 2157704604}
!60 = !{i64 2157704813}
!61 = !{i64 2157688816}
!62 = !{i64 2157689027}
