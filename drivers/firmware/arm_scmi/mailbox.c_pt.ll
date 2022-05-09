; ModuleID = '/llk/IR_all_yes/drivers/firmware/arm_scmi/mailbox.c_pt.bc'
source_filename = "../drivers/firmware/arm_scmi/mailbox.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_transport_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_desc = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.scmi_mailbox = type { %struct.mbox_client, ptr, ptr, ptr }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.scmi_chan_info = type { ptr, ptr, ptr }

@scmi_mailbox_ops = internal constant { %struct.scmi_transport_ops, [52 x i8] } { %struct.scmi_transport_ops { ptr null, ptr @mailbox_chan_available, ptr @mailbox_chan_setup, ptr @mailbox_chan_free, ptr null, ptr @mailbox_send_message, ptr @mailbox_mark_txdone, ptr @mailbox_fetch_response, ptr @mailbox_fetch_notification, ptr @mailbox_clear_channel, ptr @mailbox_poll_done }, [52 x i8] zeroinitializer }, align 32
@scmi_mailbox_desc = dso_local constant { %struct.scmi_desc, [40 x i8] } { %struct.scmi_desc { ptr null, ptr null, ptr @scmi_mailbox_ops, i32 30, i32 20, i32 128 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mboxes\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"#mbox-cells\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"Tx\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"Rx\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"shmem\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"arm,scmi-shmem\00", [17 x i8] zeroinitializer }, align 32
@mailbox_chan_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 78, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to get SCMI %s shared memory\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mailbox_chan_setup\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/firmware/arm_scmi/mailbox.c\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mailbox_chan_setup._entry_ptr = internal global ptr @mailbox_chan_setup._entry, section ".printk_index", align 4
@mailbox_chan_setup._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 85, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to ioremap SCMI %s shared memory\0A\00", [55 x i8] zeroinitializer }, align 32
@mailbox_chan_setup._entry_ptr.13 = internal global ptr @mailbox_chan_setup._entry.11, section ".printk_index", align 4
@mailbox_chan_setup._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.8, i32 101, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to request SCMI %s mailbox\0A\00", [61 x i8] zeroinitializer }, align 32
@mailbox_chan_setup._entry_ptr.16 = internal global ptr @mailbox_chan_setup._entry.14, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"scmi_mailbox_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 187, i32 40 }
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"scmi_mailbox_desc\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 199, i32 24 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 51, i32 51 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 52, i32 9 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 58, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 58, i32 33 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 71, i32 42 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 72, i32 38 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 78, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 85, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [39 x i8] c"../drivers/firmware/arm_scmi/mailbox.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 100, i32 4 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @mailbox_chan_setup._entry, ptr @mailbox_chan_setup._entry.11, ptr @mailbox_chan_setup._entry.14, ptr @mailbox_chan_setup._entry_ptr, ptr @mailbox_chan_setup._entry_ptr.13, ptr @mailbox_chan_setup._entry_ptr.16, ptr @scmi_mailbox_ops, ptr @scmi_mailbox_desc, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_mailbox_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_mailbox_desc to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mailbox_chan_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mailbox_chan_setup._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mailbox_chan_setup._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mailbox_chan_available(ptr nocapture noundef readonly %dev, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef -1, i32 noundef %idx, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mailbox_chan_setup(ptr noundef %cinfo, ptr noundef %dev, i1 noundef zeroext %tx) #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %tx to i8
  %cond = select i1 %tx, ptr @.str.2, ptr @.str.3
  %0 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cinfo, align 4
  %not.tx = xor i1 %tx, true
  %cond3 = zext i1 %not.tx to i32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #5
  %2 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %3 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #5
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #5
  %6 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i86 = call i32 @__of_parse_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 0, i32 noundef %cond3, ptr noundef nonnull %args.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %tobool.not.i = icmp eq i32 %call.i86, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.of_parse_phandle.exit_crit_edge

if.end.of_parse_phandle.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_parse_phandle.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i, %if.end.of_parse_phandle.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ null, %if.end.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  %call6 = call i32 @of_device_is_compatible(ptr noundef %retval.0.i, ptr noundef nonnull @.str.5) #5
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
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull %cond) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %2, align 4
  %11 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %res, align 4
  %sub.i = add i32 %10, 1
  %add.i = sub i32 %sub.i, %12
  %call15 = call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %12, i32 noundef %add.i) #5
  %shmem16 = getelementptr inbounds %struct.scmi_mailbox, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %shmem16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call15, ptr %shmem16, align 4
  %tobool18.not = icmp eq ptr %call15, null
  br i1 %tobool18.not, label %do.end22, label %if.end23

do.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef nonnull %cond) #8
  br label %cleanup

if.end23:                                         ; preds = %if.end13
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %1, ptr %call.i, align 4
  %cond27 = select i1 %tx, ptr @tx_prepare, ptr null
  %tx_prepare = getelementptr inbounds %struct.mbox_client, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %tx_prepare to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %cond27, ptr %tx_prepare, align 4
  %rx_callback = getelementptr inbounds %struct.mbox_client, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %rx_callback to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @rx_callback, ptr %rx_callback, align 4
  %tx_block = getelementptr inbounds %struct.mbox_client, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %tx_block to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %tx_block, align 4
  %knows_txdone = getelementptr inbounds %struct.mbox_client, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %knows_txdone to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool, ptr %knows_txdone, align 4
  %call32 = call ptr @mbox_request_channel(ptr noundef nonnull %call.i, i32 noundef %cond3) #5
  %chan = getelementptr inbounds %struct.scmi_mailbox, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call32, ptr %chan, align 4
  %cmp.i = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then35, label %if.end45

if.then35:                                        ; preds = %if.end23
  %cmp.not = icmp eq ptr %call32, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then35.cleanup_crit_edge, label %do.end41

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end41:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %call32 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef nonnull %cond) #8
  br label %cleanup

if.end45:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %transport_info = getelementptr inbounds %struct.scmi_chan_info, ptr %cinfo, i32 0, i32 2
  %21 = ptrtoint ptr %transport_info to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %transport_info, align 4
  %cinfo46 = getelementptr inbounds %struct.scmi_mailbox, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %cinfo46 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %cinfo, ptr %cinfo46, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %do.end41, %if.then35.cleanup_crit_edge, %do.end22, %do.end, %of_parse_phandle.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %do.end ], [ 0, %if.end45 ], [ -99, %do.end22 ], [ -12, %entry.cleanup_crit_edge ], [ -6, %of_parse_phandle.exit.cleanup_crit_edge ], [ %20, %do.end41 ], [ -517, %if.then35.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mailbox_chan_free(i32 noundef %id, ptr noundef %p, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %transport_info = getelementptr inbounds %struct.scmi_chan_info, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %transport_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transport_info, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %chan = getelementptr inbounds %struct.scmi_mailbox, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mbox_free_channel(ptr noundef %3) #5
  %4 = ptrtoint ptr %transport_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %transport_info, align 4
  %5 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %chan, align 4
  %cinfo4 = getelementptr inbounds %struct.scmi_mailbox, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %cinfo4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %cinfo4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @scmi_free_channel(ptr noundef %p, ptr noundef %data, i32 noundef %id) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mailbox_send_message(ptr nocapture noundef readonly %cinfo, ptr noundef %xfer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %transport_info = getelementptr inbounds %struct.scmi_chan_info, ptr %cinfo, i32 0, i32 2
  %0 = ptrtoint ptr %transport_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transport_info, align 4
  %chan = getelementptr inbounds %struct.scmi_mailbox, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %call = tail call i32 @mbox_send_message(ptr noundef %3, ptr noundef %xfer) #5
  %4 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mailbox_mark_txdone(ptr nocapture noundef readonly %cinfo, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %transport_info = getelementptr inbounds %struct.scmi_chan_info, ptr %cinfo, i32 0, i32 2
  %0 = ptrtoint ptr %transport_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transport_info, align 4
  %chan = getelementptr inbounds %struct.scmi_mailbox, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  tail call void @mbox_client_txdone(ptr noundef %3, i32 noundef %ret) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mailbox_fetch_response(ptr nocapture noundef readonly %cinfo, ptr noundef %xfer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %transport_info = getelementptr inbounds %struct.scmi_chan_info, ptr %cinfo, i32 0, i32 2
  %0 = ptrtoint ptr %transport_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transport_info, align 4
  %shmem = getelementptr inbounds %struct.scmi_mailbox, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %shmem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shmem, align 4
  tail call void @shmem_fetch_response(ptr noundef %3, ptr noundef %xfer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mailbox_fetch_notification(ptr nocapture noundef readonly %cinfo, i32 noundef %max_len, ptr noundef %xfer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %transport_info = getelementptr inbounds %struct.scmi_chan_info, ptr %cinfo, i32 0, i32 2
  %0 = ptrtoint ptr %transport_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transport_info, align 4
  %shmem = getelementptr inbounds %struct.scmi_mailbox, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %shmem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shmem, align 4
  tail call void @shmem_fetch_notification(ptr noundef %3, i32 noundef %max_len, ptr noundef %xfer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mailbox_clear_channel(ptr nocapture noundef readonly %cinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %transport_info = getelementptr inbounds %struct.scmi_chan_info, ptr %cinfo, i32 0, i32 2
  %0 = ptrtoint ptr %transport_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transport_info, align 4
  %shmem = getelementptr inbounds %struct.scmi_mailbox, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %shmem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shmem, align 4
  tail call void @shmem_clear_channel(ptr noundef %3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mailbox_poll_done(ptr nocapture noundef readonly %cinfo, ptr noundef %xfer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %transport_info = getelementptr inbounds %struct.scmi_chan_info, ptr %cinfo, i32 0, i32 2
  %0 = ptrtoint ptr %transport_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transport_info, align 4
  %shmem = getelementptr inbounds %struct.scmi_mailbox, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %shmem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shmem, align 4
  %call = tail call zeroext i1 @shmem_poll_done(ptr noundef %3, ptr noundef %xfer) #5
  ret i1 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tx_prepare(ptr nocapture noundef readonly %cl, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shmem = getelementptr inbounds %struct.scmi_mailbox, ptr %cl, i32 0, i32 3
  %0 = ptrtoint ptr %shmem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shmem, align 4
  tail call void @shmem_tx_prepare(ptr noundef %1, ptr noundef %m) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rx_callback(ptr nocapture noundef readonly %cl, ptr nocapture noundef readnone %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cinfo = getelementptr inbounds %struct.scmi_mailbox, ptr %cl, i32 0, i32 2
  %0 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cinfo, align 4
  %shmem = getelementptr inbounds %struct.scmi_mailbox, ptr %cl, i32 0, i32 3
  %2 = ptrtoint ptr %shmem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shmem, align 4
  %call = tail call i32 @shmem_read_header(ptr noundef %3) #5
  tail call void @scmi_rx_callback(ptr noundef %1, i32 noundef %call, ptr noundef null) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mbox_request_channel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmem_tx_prepare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_rx_callback(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmem_read_header(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_free_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_free_channel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbox_send_message(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_client_txdone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmem_fetch_response(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmem_fetch_notification(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmem_clear_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @shmem_poll_done(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @scmi_mailbox_desc, !1, !"scmi_mailbox_desc", i1 false, i1 false}
!1 = !{!"../drivers/firmware/arm_scmi/mailbox.c", i32 199, i32 24}
!2 = !{ptr @scmi_mailbox_ops, !3, !"scmi_mailbox_ops", i1 false, i1 false}
!3 = !{!"../drivers/firmware/arm_scmi/mailbox.c", i32 187, i32 40}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/firmware/arm_scmi/mailbox.c", i32 51, i32 51}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/firmware/arm_scmi/mailbox.c", i32 52, i32 9}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/firmware/arm_scmi/mailbox.c", i32 58, i32 26}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/firmware/arm_scmi/mailbox.c", i32 58, i32 33}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/firmware/arm_scmi/mailbox.c", i32 71, i32 42}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/firmware/arm_scmi/mailbox.c", i32 72, i32 38}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/firmware/arm_scmi/mailbox.c", i32 78, i32 3}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mailbox_chan_setup._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mailbox_chan_setup._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/firmware/arm_scmi/mailbox.c", i32 85, i32 3}
!26 = !{ptr @mailbox_chan_setup._entry.11, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mailbox_chan_setup._entry_ptr.13, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/firmware/arm_scmi/mailbox.c", i32 100, i32 4}
!30 = !{ptr @mailbox_chan_setup._entry.14, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mailbox_chan_setup._entry_ptr.16, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
