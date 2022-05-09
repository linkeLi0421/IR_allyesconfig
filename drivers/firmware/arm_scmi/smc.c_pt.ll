; ModuleID = '/llk/IR_all_yes/drivers/firmware/arm_scmi/smc.c_pt.bc'
source_filename = "../drivers/firmware/arm_scmi/smc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_transport_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_desc = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.scmi_smc = type { ptr, ptr, %struct.mutex, i32, i32, %struct.completion }
%struct.scmi_chan_info = type { ptr, ptr, ptr }

@scmi_smc_ops = internal constant { %struct.scmi_transport_ops, [52 x i8] } { %struct.scmi_transport_ops { ptr null, ptr @smc_chan_available, ptr @smc_chan_setup, ptr @smc_chan_free, ptr null, ptr @smc_send_message, ptr null, ptr @smc_fetch_response, ptr null, ptr null, ptr @smc_poll_done }, [52 x i8] zeroinitializer }, align 32
@scmi_smc_desc = dso_local constant { %struct.scmi_desc, [40 x i8] } { %struct.scmi_desc { ptr null, ptr null, ptr @scmi_smc_ops, i32 30, i32 20, i32 128 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"shmem\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"arm,scmi-shmem\00", [17 x i8] zeroinitializer }, align 32
@smc_chan_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 85, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to get SCMI Tx shared memory\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"smc_chan_setup\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/firmware/arm_scmi/smc.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@smc_chan_setup._entry_ptr = internal global ptr @smc_chan_setup._entry, section ".printk_index", align 4
@smc_chan_setup._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 92, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to ioremap SCMI Tx shared memory\0A\00", [55 x i8] zeroinitializer }, align 32
@smc_chan_setup._entry_ptr.9 = internal global ptr @smc_chan_setup._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"arm,smc-id\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"a2p\00", [28 x i8] zeroinitializer }, align 32
@smc_chan_setup._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 111, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to setup SCMI smc irq\0A\00", [34 x i8] zeroinitializer }, align 32
@smc_chan_setup._entry_ptr.14 = internal global ptr @smc_chan_setup._entry.12, section ".printk_index", align 4
@smc_chan_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&scmi_info->shmem_lock\00", [41 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.17 = private unnamed_addr constant [13 x i8] c"scmi_smc_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 184, i32 40 }
@___asan_gen_.20 = private unnamed_addr constant [14 x i8] c"scmi_smc_desc\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 193, i32 24 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 52, i32 58 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 79, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 85, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 92, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 96, i32 43 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 105, i32 41 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 111, i32 4 }
@___asan_gen_.69 = private constant [35 x i8] c"../drivers/firmware/arm_scmi/smc.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 120, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 87, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @smc_chan_setup._entry, ptr @smc_chan_setup._entry.12, ptr @smc_chan_setup._entry.7, ptr @smc_chan_setup._entry_ptr, ptr @smc_chan_setup._entry_ptr.14, ptr @smc_chan_setup._entry_ptr.9, ptr @scmi_smc_ops, ptr @scmi_smc_desc, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @smc_chan_setup.__key, ptr @.str.15, ptr @init_completion.__key, ptr @.str.16], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_smc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_smc_desc to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_chan_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_chan_setup._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_chan_setup._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_chan_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @smc_chan_available(ptr nocapture noundef readonly %dev, i32 noundef %idx) #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #5
  %2 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  br label %cleanup

of_parse_phandle.exit:                            ; preds = %entry
  %3 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %of_parse_phandle.exit.cleanup_crit_edge, label %if.end

of_parse_phandle.exit.cleanup_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @of_node_put(ptr noundef nonnull %4) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %of_parse_phandle.exit.cleanup_crit_edge, %of_parse_phandle.exit.thread
  %tobool.not4 = phi i1 [ false, %of_parse_phandle.exit.thread ], [ false, %of_parse_phandle.exit.cleanup_crit_edge ], [ true, %if.end ]
  ret i1 %tobool.not4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_chan_setup(ptr noundef %cinfo, ptr noundef %dev, i1 noundef zeroext %tx) #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %res = alloca %struct.resource, align 4
  %func_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cinfo, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #5
  %2 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %3 = call ptr @memset(ptr %res, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %func_id) #5
  %4 = ptrtoint ptr %func_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %func_id, align 4, !annotation !43
  br i1 %tx, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 164, i32 noundef 3520) #5
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #5
  %7 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i81 = call i32 @__of_parse_phandle_with_args(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool.not.i = icmp eq i32 %call.i81, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end4.of_parse_phandle.exit_crit_edge

if.end4.of_parse_phandle.exit_crit_edge:          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_parse_phandle.exit

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i, %if.end4.of_parse_phandle.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ null, %if.end4.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  %call6 = call i32 @of_device_is_compatible(ptr noundef %retval.0.i, ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %of_parse_phandle.exit.cleanup_crit_edge, label %if.end9

of_parse_phandle.exit.cleanup_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %of_parse_phandle.exit
  %call10 = call i32 @of_address_to_resource(ptr noundef %retval.0.i, i32 noundef 0, ptr noundef nonnull %res) #5
  call void @of_node_put(ptr noundef %retval.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %2, align 4
  %12 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %res, align 4
  %sub.i = add i32 %11, 1
  %add.i = sub i32 %sub.i, %13
  %call15 = call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %13, i32 noundef %add.i) #5
  %shmem = getelementptr inbounds %struct.scmi_smc, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %shmem to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call15, ptr %shmem, align 4
  %tobool17.not = icmp eq ptr %call15, null
  br i1 %tobool17.not, label %do.end21, label %if.end22

do.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  %of_node23 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %15 = ptrtoint ptr %of_node23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node23, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %16, ptr noundef nonnull @.str.10, ptr noundef nonnull %func_id, i32 noundef 1, i32 noundef 0) #5
  %17 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %call28 = call i32 @of_irq_get_byname(ptr noundef %19, ptr noundef nonnull @.str.11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp sgt i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end26.if.end40_crit_edge

if.end26.if.end40_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then30:                                        ; preds = %if.end26
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %20 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i82 = icmp eq ptr %21, null
  br i1 %tobool.not.i82, label %if.end.i83, label %if.then30.dev_name.exit_crit_edge

if.then30.dev_name.exit_crit_edge:                ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i83:                                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i83, %if.then30.dev_name.exit_crit_edge
  %retval.0.i84 = phi ptr [ %23, %if.end.i83 ], [ %21, %if.then30.dev_name.exit_crit_edge ]
  %call.i85 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call28, ptr noundef nonnull @smc_msg_done_isr, ptr noundef null, i32 noundef 16384, ptr noundef %retval.0.i84, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %tobool33.not = icmp eq i32 %call.i85, 0
  br i1 %tobool33.not, label %if.end38, label %do.end37

do.end37:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end38:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %tx_complete = getelementptr inbounds %struct.scmi_smc, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %tx_complete to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %tx_complete, align 4
  %wait.i = getelementptr inbounds %struct.scmi_smc, ptr %call.i, i32 0, i32 5, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #5
  %irq39 = getelementptr inbounds %struct.scmi_smc, ptr %call.i, i32 0, i32 4
  %25 = ptrtoint ptr %irq39 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call28, ptr %irq39, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.end38, %if.end26.if.end40_crit_edge
  %26 = ptrtoint ptr %func_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %func_id, align 4
  %func_id41 = getelementptr inbounds %struct.scmi_smc, ptr %call.i, i32 0, i32 3
  %28 = ptrtoint ptr %func_id41 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %func_id41, align 4
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %cinfo, ptr %call.i, align 4
  %shmem_lock = getelementptr inbounds %struct.scmi_smc, ptr %call.i, i32 0, i32 2
  call void @__mutex_init(ptr noundef %shmem_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @smc_chan_setup.__key) #5
  %transport_info = getelementptr inbounds %struct.scmi_chan_info, ptr %cinfo, i32 0, i32 2
  %30 = ptrtoint ptr %transport_info to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %transport_info, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %do.end37, %if.end22.cleanup_crit_edge, %do.end21, %do.end, %of_parse_phandle.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %do.end ], [ %call.i85, %do.end37 ], [ 0, %if.end40 ], [ -99, %do.end21 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -6, %of_parse_phandle.exit.cleanup_crit_edge ], [ %17, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %func_id) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_chan_free(i32 noundef %id, ptr noundef %p, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %transport_info = getelementptr inbounds %struct.scmi_chan_info, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %transport_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transport_info, align 4
  store ptr null, ptr %transport_info, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %1, align 4
  tail call void @scmi_free_channel(ptr noundef %p, ptr noundef %data, i32 noundef %id) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_send_message(ptr nocapture noundef readonly %cinfo, ptr noundef %xfer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %transport_info = getelementptr inbounds %struct.scmi_chan_info, ptr %cinfo, i32 0, i32 2
  %0 = load ptr, ptr %transport_info, align 4
  %shmem_lock = getelementptr inbounds %struct.scmi_smc, ptr %0, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %shmem_lock, i32 noundef 0) #5
  %shmem = getelementptr inbounds %struct.scmi_smc, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %shmem, align 4
  tail call void @shmem_tx_prepare(ptr noundef %1, ptr noundef %xfer) #5
  %irq = getelementptr inbounds %struct.scmi_smc, ptr %0, i32 0, i32 4
  %2 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %tx_complete = getelementptr inbounds %struct.scmi_smc, ptr %0, i32 0, i32 5
  store i32 0, ptr %tx_complete, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @arm_smccc_1_1_get_conduit() #5
  %3 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %do.body44 [
    i32 2, label %do.body
    i32 1, label %do.body8
  ]

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %func_id = getelementptr inbounds %struct.scmi_smc, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %func_id, align 4
  %5 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ( (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) << 24) & 0xFF000000) | (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) << 8) & 0x00FF0000) | (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) >> 8) & 0x0000FF00) | (((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) >> 24) & 0x000000FF) )\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},{r1},{r2},{r3},{r4},{r5},{r6},{r7},~{memory}"(i32 %4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #5, !srcloc !44
  %asmresult = extractvalue { i32, i32, i32, i32 } %5, 0
  br label %sw.epilog

do.body8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %func_id22 = getelementptr inbounds %struct.scmi_smc, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %func_id22, align 4
  %7 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ( (((0xE1600070 | (((0) & 0xF) << 0)) << 24) & 0xFF000000) | (((0xE1600070 | (((0) & 0xF) << 0)) << 8) & 0x00FF0000) | (((0xE1600070 | (((0) & 0xF) << 0)) >> 8) & 0x0000FF00) | (((0xE1600070 | (((0) & 0xF) << 0)) >> 24) & 0x000000FF) )\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},{r1},{r2},{r3},{r4},{r5},{r6},{r7},~{memory}"(i32 %6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #5, !srcloc !45
  %asmresult30 = extractvalue { i32, i32, i32, i32 } %7, 0
  br label %sw.epilog

do.body44:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %func_id54 = getelementptr inbounds %struct.scmi_smc, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %func_id54, align 4
  tail call void asm sideeffect "", "{r0},{r1},{r2},{r3},{r4},{r5},{r6},{r7},~{memory}"(i32 %8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #5, !srcloc !46
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body44, %do.body8, %do.body
  %res.sroa.0.0 = phi i32 [ -1, %do.body44 ], [ %asmresult30, %do.body8 ], [ %asmresult, %do.body ]
  %9 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool69.not = icmp eq i32 %9, 0
  br i1 %tobool69.not, label %sw.epilog.if.end72_crit_edge, label %if.then70

sw.epilog.if.end72_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

if.then70:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %tx_complete71 = getelementptr inbounds %struct.scmi_smc, ptr %0, i32 0, i32 5
  tail call void @wait_for_completion(ptr noundef %tx_complete71) #5
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %sw.epilog.if.end72_crit_edge
  %10 = load ptr, ptr %0, align 4
  %11 = load ptr, ptr %shmem, align 4
  %call75 = tail call i32 @shmem_read_header(ptr noundef %11) #5
  tail call void @scmi_rx_callback(ptr noundef %10, i32 noundef %call75, ptr noundef null) #5
  tail call void @mutex_unlock(ptr noundef %shmem_lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.sroa.0.0)
  %tobool78.not = icmp eq i32 %res.sroa.0.0, 0
  %. = select i1 %tobool78.not, i32 0, i32 -95
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_fetch_response(ptr nocapture noundef readonly %cinfo, ptr noundef %xfer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %transport_info = getelementptr inbounds %struct.scmi_chan_info, ptr %cinfo, i32 0, i32 2
  %0 = ptrtoint ptr %transport_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transport_info, align 4
  %shmem = getelementptr inbounds %struct.scmi_smc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %shmem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shmem, align 4
  tail call void @shmem_fetch_response(ptr noundef %3, ptr noundef %xfer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @smc_poll_done(ptr nocapture noundef readonly %cinfo, ptr noundef %xfer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %transport_info = getelementptr inbounds %struct.scmi_chan_info, ptr %cinfo, i32 0, i32 2
  %0 = ptrtoint ptr %transport_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transport_info, align 4
  %shmem = getelementptr inbounds %struct.scmi_smc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %shmem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shmem, align 4
  %call = tail call zeroext i1 @shmem_poll_done(ptr noundef %3, ptr noundef %xfer) #5
  ret i1 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_msg_done_isr(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_complete = getelementptr inbounds %struct.scmi_smc, ptr %data, i32 0, i32 5
  tail call void @complete(ptr noundef %tx_complete) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_free_channel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmem_tx_prepare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_smccc_1_1_get_conduit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_rx_callback(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmem_read_header(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmem_fetch_response(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @shmem_poll_done(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !22, !24, !26, !27, !28, !30, !31, !33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @scmi_smc_desc, !1, !"scmi_smc_desc", i1 false, i1 false}
!1 = !{!"../drivers/firmware/arm_scmi/smc.c", i32 193, i32 24}
!2 = !{ptr @scmi_smc_ops, !3, !"scmi_smc_ops", i1 false, i1 false}
!3 = !{!"../drivers/firmware/arm_scmi/smc.c", i32 184, i32 40}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/firmware/arm_scmi/smc.c", i32 52, i32 58}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/firmware/arm_scmi/smc.c", i32 79, i32 35}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/firmware/arm_scmi/smc.c", i32 85, i32 3}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @smc_chan_setup._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @smc_chan_setup._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/firmware/arm_scmi/smc.c", i32 92, i32 3}
!18 = !{ptr @smc_chan_setup._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @smc_chan_setup._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/firmware/arm_scmi/smc.c", i32 96, i32 43}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/firmware/arm_scmi/smc.c", i32 105, i32 41}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/firmware/arm_scmi/smc.c", i32 111, i32 4}
!26 = !{ptr @smc_chan_setup._entry.12, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @smc_chan_setup._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @smc_chan_setup.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/firmware/arm_scmi/smc.c", i32 120, i32 2}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @init_completion.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../include/linux/completion.h", i32 87, i32 2}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"auto-init"}
!44 = !{i64 2153525253, i64 2153525583}
!45 = !{i64 2153529471, i64 2153529721}
!46 = !{i64 2153531595}
