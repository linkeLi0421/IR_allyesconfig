; ModuleID = '/llk/IR_all_yes/drivers/scsi/bnx2i/bnx2i_init.c_pt.bc'
source_filename = "../drivers/scsi/bnx2i/bnx2i_init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.105 }
%union.anon.105 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iscsi_transport = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bnx2i_percpu_s = type { ptr, %struct.list_head, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.cnic_ulp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.bnx2i_hba = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, i32, %struct.iscsi_cid_queue, %struct.rwlock_t, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, %struct.spinlock, %struct.mutex, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.bnx2i_stats_info, %struct.iscsi_stats_info }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.iscsi_cid_queue = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.bnx2i_stats_info = type { i64, i64, i64, i64 }
%struct.iscsi_stats_info = type { [12 x i8], [8 x i8], [8 x i8], i32, [64 x i8], [64 x i8], [64 x i8], [16 x i8], i32, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cnic_dev = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, [6 x i8], i32, i32, i32, i32, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.bnx2i_endpoint = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t, i32, %struct.qp_info, %struct.ep_handles, %struct.timer_list, %struct.wait_queue_head }
%struct.qp_info = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i16, i16, i32, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i16, i16, i32, ptr, i32, i32 }
%struct.ep_handles = type { i32, i32, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.112, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.126, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.112 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.126 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.bnx2i_work = type { %struct.list_head, ptr, ptr, %struct.cqe }
%struct.cqe = type { [64 x i8] }

@__UNIQUE_ID_author374 = internal constant [94 x i8] c"bnx2i.author=Anil Veerabhadrappa <anilgv@broadcom.com> and Eddie Wai <eddie.wai@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description375 = internal constant [105 x i8] c"bnx2i.description=QLogic NetXtreme II BCM5706/5708/5709/57710/57711/57712/57800/57810/57840 iSCSI Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file376 = internal constant [36 x i8] c"bnx2i.file=drivers/scsi/bnx2i/bnx2i\00", section ".modinfo", align 1
@__UNIQUE_ID_license377 = internal constant [18 x i8] c"bnx2i.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version378 = internal constant [23 x i8] c"bnx2i.version=2.7.10.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bnx2i\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"2.7.10.1\00", [23 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@event_coal_min = dso_local global { i32, [28 x i8] } { i32 24, [28 x i8] zeroinitializer }, align 32
@__param_str_event_coal_min = internal constant [21 x i8] c"bnx2i.event_coal_min\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_event_coal_min = internal constant %struct.kernel_param { ptr @__param_str_event_coal_min, ptr null, ptr @param_ops_int, i16 436, i8 -1, i8 0, %union.anon.105 { ptr @event_coal_min } }, section "__param", align 4
@__UNIQUE_ID_event_coal_mintype379 = internal constant [34 x i8] c"bnx2i.parmtype=event_coal_min:int\00", section ".modinfo", align 1
@__UNIQUE_ID_event_coal_min380 = internal constant [60 x i8] c"bnx2i.parm=event_coal_min:Event Coalescing Minimum Commands\00", section ".modinfo", align 1
@event_coal_div = dso_local global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_str_event_coal_div = internal constant [21 x i8] c"bnx2i.event_coal_div\00", align 1
@__param_event_coal_div = internal constant %struct.kernel_param { ptr @__param_str_event_coal_div, ptr null, ptr @param_ops_int, i16 436, i8 -1, i8 0, %union.anon.105 { ptr @event_coal_div } }, section "__param", align 4
@__UNIQUE_ID_event_coal_divtype381 = internal constant [34 x i8] c"bnx2i.parmtype=event_coal_div:int\00", section ".modinfo", align 1
@__UNIQUE_ID_event_coal_div382 = internal constant [57 x i8] c"bnx2i.parm=event_coal_div:Event Coalescing Divide Factor\00", section ".modinfo", align 1
@en_tcp_dack = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_str_en_tcp_dack = internal constant [18 x i8] c"bnx2i.en_tcp_dack\00", align 1
@__param_en_tcp_dack = internal constant %struct.kernel_param { ptr @__param_str_en_tcp_dack, ptr null, ptr @param_ops_int, i16 436, i8 -1, i8 0, %union.anon.105 { ptr @en_tcp_dack } }, section "__param", align 4
@__UNIQUE_ID_en_tcp_dacktype383 = internal constant [31 x i8] c"bnx2i.parmtype=en_tcp_dack:int\00", section ".modinfo", align 1
@__UNIQUE_ID_en_tcp_dack384 = internal constant [46 x i8] c"bnx2i.parm=en_tcp_dack:Enable TCP Delayed ACK\00", section ".modinfo", align 1
@error_mask1 = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_str_error_mask1 = internal constant [18 x i8] c"bnx2i.error_mask1\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_error_mask1 = internal constant %struct.kernel_param { ptr @__param_str_error_mask1, ptr null, ptr @param_ops_uint, i16 436, i8 -1, i8 0, %union.anon.105 { ptr @error_mask1 } }, section "__param", align 4
@__UNIQUE_ID_error_mask1type385 = internal constant [32 x i8] c"bnx2i.parmtype=error_mask1:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_error_mask1386 = internal constant [53 x i8] c"bnx2i.parm=error_mask1:Config FW iSCSI Error Mask #1\00", section ".modinfo", align 1
@error_mask2 = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_str_error_mask2 = internal constant [18 x i8] c"bnx2i.error_mask2\00", align 1
@__param_error_mask2 = internal constant %struct.kernel_param { ptr @__param_str_error_mask2, ptr null, ptr @param_ops_uint, i16 436, i8 -1, i8 0, %union.anon.105 { ptr @error_mask2 } }, section "__param", align 4
@__UNIQUE_ID_error_mask2type387 = internal constant [32 x i8] c"bnx2i.parmtype=error_mask2:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_error_mask2388 = internal constant [53 x i8] c"bnx2i.parm=error_mask2:Config FW iSCSI Error Mask #2\00", section ".modinfo", align 1
@__param_str_sq_size = internal constant [14 x i8] c"bnx2i.sq_size\00", align 1
@sq_size = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_sq_size = internal constant %struct.kernel_param { ptr @__param_str_sq_size, ptr null, ptr @param_ops_int, i16 436, i8 -1, i8 0, %union.anon.105 { ptr @sq_size } }, section "__param", align 4
@__UNIQUE_ID_sq_sizetype389 = internal constant [27 x i8] c"bnx2i.parmtype=sq_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_sq_size390 = internal constant [37 x i8] c"bnx2i.parm=sq_size:Configure SQ size\00", section ".modinfo", align 1
@rq_size = dso_local global { i32, [28 x i8] } { i32 16, [28 x i8] zeroinitializer }, align 32
@__param_str_rq_size = internal constant [14 x i8] c"bnx2i.rq_size\00", align 1
@__param_rq_size = internal constant %struct.kernel_param { ptr @__param_str_rq_size, ptr null, ptr @param_ops_int, i16 436, i8 -1, i8 0, %union.anon.105 { ptr @rq_size } }, section "__param", align 4
@__UNIQUE_ID_rq_sizetype391 = internal constant [27 x i8] c"bnx2i.parmtype=rq_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rq_size392 = internal constant [37 x i8] c"bnx2i.parm=rq_size:Configure RQ size\00", section ".modinfo", align 1
@iscsi_error_mask = dso_local global { i64, [24 x i8] } zeroinitializer, align 32
@bnx2i_identify_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\011bnx2i: unknown device, 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bnx2i_identify_device\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/scsi/bnx2i/bnx2i_init.c\00", [32 x i8] zeroinitializer }, align 32
@bnx2i_identify_device._entry_ptr = internal global ptr @bnx2i_identify_device._entry, section ".printk_index", align 4
@adapter_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@bnx2i_dev_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @bnx2i_dev_lock, i64 52), ptr getelementptr (i8, ptr @bnx2i_dev_lock, i64 52) }, ptr @bnx2i_dev_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@adapter_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @adapter_list, ptr @adapter_list }, [24 x i8] zeroinitializer }, align 32
@bnx2i_ulp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.5, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013bnx2i init: hba initialization failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bnx2i_ulp_init\00", [17 x i8] zeroinitializer }, align 32
@bnx2i_ulp_init._entry_ptr = internal global ptr @bnx2i_ulp_init._entry, section ".printk_index", align 4
@bnx2i_ulp_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.5, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013bnx2i - hba %p init failed\0A\00", [34 x i8] zeroinitializer }, align 32
@bnx2i_ulp_init._entry_ptr.10 = internal global ptr @bnx2i_ulp_init._entry.8, section ".printk_index", align 4
@bnx2i_ulp_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016bnx2i_ulp_exit: hba not found, dev 0x%p\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bnx2i_ulp_exit\00", [17 x i8] zeroinitializer }, align 32
@bnx2i_ulp_exit._entry_ptr = internal global ptr @bnx2i_ulp_exit._entry, section ".printk_index", align 4
@bnx2i_online_state = internal global { i32, [28 x i8] } zeroinitializer, align 32
@bnx2i_iscsi_transport = external dso_local global %struct.iscsi_transport, align 4
@__initcall__kmod_bnx2i__393_549_bnx2i_mod_init6 = internal global ptr @bnx2i_mod_init, section ".initcall6.init", align 4
@__exitcall_bnx2i_mod_exit = internal global ptr @bnx2i_mod_exit, section ".exitcall.exit", align 4
@__pcpu_scope_bnx2i_percpu = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_bnx2i_percpu = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@bnx2i_percpu = weak dso_local global %struct.bnx2i_percpu_s zeroinitializer, section ".data..percpu", align 4
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bnx2i_dev_lock.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bnx2i_dev_lock\00", [17 x i8] zeroinitializer }, align 32
@bnx2i_chip_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\011bnx2i: (%s) chip cleanup for %d active connections\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bnx2i_chip_cleanup\00", [45 x i8] zeroinitializer }, align 32
@bnx2i_chip_cleanup._entry_ptr = internal global ptr @bnx2i_chip_cleanup._entry, section ".printk_index", align 4
@bnx2i_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\011bnx2i: dev %s does not support iSCSI\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bnx2i_init_one\00", [17 x i8] zeroinitializer }, align 32
@bnx2i_init_one._entry_ptr = internal global ptr @bnx2i_init_one._entry, section ".printk_index", align 4
@bnx2i_init_one._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.5, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\011bnx2i, duplicate registrationhba=%p, cnic=%p\0A\00", [48 x i8] zeroinitializer }, align 32
@bnx2i_init_one._entry_ptr.21 = internal global ptr @bnx2i_init_one._entry.19, section ".printk_index", align 4
@bnx2i_init_one._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.5, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013bnx2i, driver not registered\0A\00", [32 x i8] zeroinitializer }, align 32
@bnx2i_init_one._entry_ptr.24 = internal global ptr @bnx2i_init_one._entry.22, section ".printk_index", align 4
@bnx2i_init_one._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.5, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013bnx2i, invalid type %d\0A\00", [38 x i8] zeroinitializer }, align 32
@bnx2i_init_one._entry_ptr.27 = internal global ptr @bnx2i_init_one._entry.25, section ".printk_index", align 4
@bnx2i_init_one._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.18, ptr @.str.5, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013bnx2i dev reg, unknown error, %d\0A\00", [60 x i8] zeroinitializer }, align 32
@bnx2i_init_one._entry_ptr.30 = internal global ptr @bnx2i_init_one._entry.28, section ".printk_index", align 4
@bnx2i_mod_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.5, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\016%s\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bnx2i_mod_init\00", [17 x i8] zeroinitializer }, align 32
@bnx2i_mod_init._entry_ptr = internal global ptr @bnx2i_mod_init._entry, section ".printk_index", align 4
@version = internal global { [65 x i8], [63 x i8] } { [65 x i8] c"QLogic NetXtreme II iSCSI Driver bnx2i v2.7.10.1 (Jul 16, 2014)\0A\00", [63 x i8] zeroinitializer }, align 32
@bnx2i_scsi_xport_template = external dso_local local_unnamed_addr global ptr, align 4
@bnx2i_mod_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.5, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Could not register bnx2i transport.\0A\00", [57 x i8] zeroinitializer }, align 32
@bnx2i_mod_init._entry_ptr.35 = internal global ptr @bnx2i_mod_init._entry.33, section ".printk_index", align 4
@bnx2i_cnic_cb = external dso_local global %struct.cnic_ulp_ops, align 4
@bnx2i_mod_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.5, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Could not register bnx2i cnic driver.\0A\00", [55 x i8] zeroinitializer }, align 32
@bnx2i_mod_init._entry_ptr.38 = internal global ptr @bnx2i_mod_init._entry.36, section ".printk_index", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@bnx2i_mod_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&p->p_work_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"scsi/bnx2i:online\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bnx2i_thread/%d\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 16, i64 5689, i64 5690, i64 5706, i64 5708, i64 5802, i64 5804]
@__sancov_gen_cov_switch_values.42 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967274, i64 4294967280, i64 4294967285]
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 37, i32 1 }
@___asan_gen_.52 = private unnamed_addr constant [15 x i8] c"event_coal_min\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 41, i32 14 }
@___asan_gen_.55 = private unnamed_addr constant [15 x i8] c"event_coal_div\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 45, i32 14 }
@___asan_gen_.58 = private unnamed_addr constant [12 x i8] c"en_tcp_dack\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 49, i32 14 }
@___asan_gen_.61 = private unnamed_addr constant [12 x i8] c"error_mask1\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 53, i32 14 }
@___asan_gen_.64 = private unnamed_addr constant [12 x i8] c"error_mask2\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 57, i32 14 }
@___asan_gen_.67 = private unnamed_addr constant [8 x i8] c"sq_size\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 61, i32 14 }
@___asan_gen_.70 = private unnamed_addr constant [8 x i8] c"rq_size\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 65, i32 14 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"iscsi_error_mask\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 69, i32 5 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 100, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [14 x i8] c"adapter_count\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 20, i32 12 }
@___asan_gen_.91 = private unnamed_addr constant [15 x i8] c"bnx2i_dev_lock\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [13 x i8] c"adapter_list\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 19, i32 25 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 324, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 331, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 348, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [19 x i8] c"bnx2i_online_state\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 457, i32 25 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 39, i32 8 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 198, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 279, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 293, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 296, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 298, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 300, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 472, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 26, i32 13 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 480, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 487, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 495, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 499, i32 47 }
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.206 = private constant [35 x i8] c"../drivers/scsi/bnx2i/bnx2i_init.c\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 420, i32 6 }
@llvm.compiler.used = appending global [98 x ptr] [ptr @__UNIQUE_ID_author374, ptr @__UNIQUE_ID_description375, ptr @__UNIQUE_ID_en_tcp_dack384, ptr @__UNIQUE_ID_en_tcp_dacktype383, ptr @__UNIQUE_ID_error_mask1386, ptr @__UNIQUE_ID_error_mask1type385, ptr @__UNIQUE_ID_error_mask2388, ptr @__UNIQUE_ID_error_mask2type387, ptr @__UNIQUE_ID_event_coal_div382, ptr @__UNIQUE_ID_event_coal_divtype381, ptr @__UNIQUE_ID_event_coal_min380, ptr @__UNIQUE_ID_event_coal_mintype379, ptr @__UNIQUE_ID_file376, ptr @__UNIQUE_ID_license377, ptr @__UNIQUE_ID_rq_size392, ptr @__UNIQUE_ID_rq_sizetype391, ptr @__UNIQUE_ID_sq_size390, ptr @__UNIQUE_ID_sq_sizetype389, ptr @__UNIQUE_ID_version378, ptr @__exitcall_bnx2i_mod_exit, ptr @__initcall__kmod_bnx2i__393_549_bnx2i_mod_init6, ptr @__modver_attr, ptr @__param_en_tcp_dack, ptr @__param_error_mask1, ptr @__param_error_mask2, ptr @__param_event_coal_div, ptr @__param_event_coal_min, ptr @__param_rq_size, ptr @__param_sq_size, ptr @bnx2i_chip_cleanup._entry, ptr @bnx2i_chip_cleanup._entry_ptr, ptr @bnx2i_identify_device._entry, ptr @bnx2i_identify_device._entry_ptr, ptr @bnx2i_init_one._entry, ptr @bnx2i_init_one._entry.19, ptr @bnx2i_init_one._entry.22, ptr @bnx2i_init_one._entry.25, ptr @bnx2i_init_one._entry.28, ptr @bnx2i_init_one._entry_ptr, ptr @bnx2i_init_one._entry_ptr.21, ptr @bnx2i_init_one._entry_ptr.24, ptr @bnx2i_init_one._entry_ptr.27, ptr @bnx2i_init_one._entry_ptr.30, ptr @bnx2i_mod_exit, ptr @bnx2i_mod_init._entry, ptr @bnx2i_mod_init._entry.33, ptr @bnx2i_mod_init._entry.36, ptr @bnx2i_mod_init._entry_ptr, ptr @bnx2i_mod_init._entry_ptr.35, ptr @bnx2i_mod_init._entry_ptr.38, ptr @bnx2i_ulp_exit._entry, ptr @bnx2i_ulp_exit._entry_ptr, ptr @bnx2i_ulp_init._entry, ptr @bnx2i_ulp_init._entry.8, ptr @bnx2i_ulp_init._entry_ptr, ptr @bnx2i_ulp_init._entry_ptr.10, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @event_coal_min, ptr @event_coal_div, ptr @en_tcp_dack, ptr @error_mask1, ptr @error_mask2, ptr @sq_size, ptr @rq_size, ptr @iscsi_error_mask, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @adapter_count, ptr @bnx2i_dev_lock, ptr @adapter_list, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @bnx2i_online_state, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @version, ptr @.str.34, ptr @.str.37, ptr @bnx2i_mod_init.__key, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_coal_min to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_coal_div to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @en_tcp_dack to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_mask1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @error_mask2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sq_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rq_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_error_mask to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_identify_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_dev_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_ulp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_ulp_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_ulp_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_online_state to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_chip_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_init_one._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_init_one._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_init_one._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_init_one._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_mod_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @version to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_mod_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_mod_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnx2i_mod_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2i_identify_device(ptr noundef %hba, ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cnic_dev_type = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 7
  %0 = ptrtoint ptr %cnic_dev_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cnic_dev_type, align 8
  %flags = getelementptr inbounds %struct.cnic_dev, ptr %dev, i32 0, i32 16
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags, align 4
  %3 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else33, label %if.then

if.then:                                          ; preds = %entry
  %pci_did = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 34
  %4 = ptrtoint ptr %pci_did to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pci_did, align 8
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %if.then.if.end44_crit_edge [
    i16 5706, label %if.then.if.then6_crit_edge
    i16 5802, label %if.then.if.then6_crit_edge60
    i16 5708, label %if.then.if.then17_crit_edge
    i16 5804, label %if.then.if.then17_crit_edge61
    i16 5689, label %if.then.if.then29_crit_edge
    i16 5690, label %if.then.if.then29_crit_edge62
  ]

if.then.if.then29_crit_edge62:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29

if.then.if.then29_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29

if.then.if.then17_crit_edge61:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17

if.then.if.then17_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17

if.then.if.then6_crit_edge60:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.then.if.then6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.then.if.end44_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then6:                                         ; preds = %if.then.if.then6_crit_edge, %if.then.if.then6_crit_edge60
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cnic_dev_type) #9
  br label %if.end44

if.then17:                                        ; preds = %if.then.if.then17_crit_edge, %if.then.if.then17_crit_edge61
  tail call void @_set_bit(i32 noundef 1, ptr noundef %cnic_dev_type) #9
  br label %if.end44

if.then29:                                        ; preds = %if.then.if.then29_crit_edge, %if.then.if.then29_crit_edge62
  tail call void @_set_bit(i32 noundef 2, ptr noundef %cnic_dev_type) #9
  %mail_queue_access = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 8
  %7 = ptrtoint ptr %mail_queue_access to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %mail_queue_access, align 4
  br label %if.end44

if.else33:                                        ; preds = %entry
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool36.not = icmp eq i32 %10, 0
  br i1 %tobool36.not, label %do.end, label %if.then37

if.then37:                                        ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 3, ptr noundef %cnic_dev_type) #9
  br label %if.end44

do.end:                                           ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #11
  %pci_did40 = getelementptr inbounds %struct.bnx2i_hba, ptr %hba, i32 0, i32 34
  %11 = ptrtoint ptr %pci_did40 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %pci_did40, align 8
  %conv41 = zext i16 %12 to i32
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %conv41) #12
  br label %if.end44

if.end44:                                         ; preds = %do.end, %if.then37, %if.then29, %if.then17, %if.then6, %if.then.if.end44_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_adapter_list_head() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @adapter_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.hba_not_found_crit_edge, label %if.end

entry.hba_not_found_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %hba_not_found

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @bnx2i_dev_lock, i32 noundef 0) #9
  %tmp_hba.014 = load ptr, ptr @adapter_list, align 4
  %cmp.not15 = icmp eq ptr %tmp_hba.014, @adapter_list
  br i1 %cmp.not15, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %tmp_hba.016 = phi ptr [ %tmp_hba.0, %for.inc.for.body_crit_edge ], [ %tmp_hba.014, %if.end.for.body_crit_edge ]
  %cnic = getelementptr inbounds %struct.bnx2i_hba, ptr %tmp_hba.016, i32 0, i32 1
  %1 = ptrtoint ptr %cnic to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cnic, align 8
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %cm_select_dev = getelementptr inbounds %struct.cnic_dev, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %cm_select_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cm_select_dev, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %5 = ptrtoint ptr %tmp_hba.016 to i32
  call void @__asan_load4_noabort(i32 %5)
  %tmp_hba.0 = load ptr, ptr %tmp_hba.016, align 4
  %cmp.not = icmp eq ptr %tmp_hba.0, @adapter_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %if.end.for.end_crit_edge
  %hba.0 = phi ptr [ null, %if.end.for.end_crit_edge ], [ %tmp_hba.016, %land.lhs.true.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @bnx2i_dev_lock) #9
  br label %hba_not_found

hba_not_found:                                    ; preds = %for.end, %entry.hba_not_found_crit_edge
  %hba.1 = phi ptr [ %hba.0, %for.end ], [ null, %entry.hba_not_found_crit_edge ]
  ret ptr %hba.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bnx2i_find_hba_for_cnic(ptr noundef readnone %cnic) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @bnx2i_dev_lock, i32 noundef 0) #9
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %hba.0.in = phi ptr [ @adapter_list, %entry ], [ %hba.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %hba.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %hba.0 = load ptr, ptr %hba.0.in, align 4
  %cmp.not = icmp eq ptr %hba.0, @adapter_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %cnic5 = getelementptr inbounds %struct.bnx2i_hba, ptr %hba.0, i32 0, i32 1
  %1 = ptrtoint ptr %cnic5 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cnic5, align 8
  %cmp6 = icmp eq ptr %2, %cnic
  br i1 %cmp6, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %hba.0, %for.body.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @bnx2i_dev_lock) #9
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2i_start(ptr noundef %handle) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bnx2i_send_fw_iscsi_init_msg(ptr noundef %handle) #9
  %adapter_state = getelementptr inbounds %struct.bnx2i_hba, ptr %handle, i32 0, i32 10
  %0 = ptrtoint ptr %adapter_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %adapter_state, align 4
  %and1.i9 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i9)
  %tobool.not10 = icmp eq i32 %and1.i9, 0
  br i1 %tobool.not10, label %entry.land.lhs.true_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %i.011 = phi i32 [ %dec, %while.body.land.lhs.true_crit_edge ], [ 100, %entry.land.lhs.true_crit_edge ]
  %2 = ptrtoint ptr %adapter_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %adapter_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp slt i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.011)
  %tobool5.not = icmp eq i32 %i.011, 0
  %or.cond = select i1 %tobool4.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %land.lhs.true.while.end_crit_edge, label %while.body

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %land.lhs.true
  %dec = add nsw i32 %i.011, -1
  tail call void @msleep(i32 noundef 10) #9
  %4 = ptrtoint ptr %adapter_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %adapter_state, align 4
  %and1.i = and i32 %5, 1
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %while.body.land.lhs.true_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.land.lhs.true_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.lhs.true.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2i_send_fw_iscsi_init_msg(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2i_stop(ptr noundef %handle) local_unnamed_addr #1 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry77 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter_state = getelementptr inbounds %struct.bnx2i_hba, ptr %handle, i32 0, i32 10
  %call = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %adapter_state) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shost = getelementptr inbounds %struct.bnx2i_hba, ptr %handle, i32 0, i32 12
  %0 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost, align 4
  tail call void @iscsi_host_for_each_session(ptr noundef %1, ptr noundef nonnull @bnx2i_drop_session) #9
  %hba_shutdown_tmo = getelementptr inbounds %struct.bnx2i_hba, ptr %handle, i32 0, i32 31
  %2 = ptrtoint ptr %hba_shutdown_tmo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hba_shutdown_tmo, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %wait_delay.0 = phi i32 [ 100, %entry.if.end_crit_edge ], [ %3, %if.then ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 241) #9
  %ep_ofld_list = getelementptr inbounds %struct.bnx2i_hba, ptr %handle, i32 0, i32 22
  %4 = ptrtoint ptr %ep_ofld_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ep_ofld_list, align 4
  %cmp.i.not = icmp eq ptr %5, %ep_ofld_list
  br i1 %cmp.i.not, label %land.rhs, label %if.end.if.then15_crit_edge

if.end.if.then15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

land.rhs:                                         ; preds = %if.end
  %ep_destroy_list = getelementptr inbounds %struct.bnx2i_hba, ptr %handle, i32 0, i32 24
  %6 = ptrtoint ptr %ep_destroy_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %ep_destroy_list, align 4
  %cmp.i162 = icmp eq ptr %7, %ep_destroy_list
  br i1 %cmp.i162, label %land.rhs.if.end49_crit_edge, label %land.rhs.if.then15_crit_edge

land.rhs.if.then15_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

land.rhs.if.end49_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then15:                                        ; preds = %land.rhs.if.then15_crit_edge, %if.end.if.then15_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %8 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %eh_wait = getelementptr inbounds %struct.bnx2i_hba, ptr %handle, i32 0, i32 18
  %ep_destroy_list23 = getelementptr inbounds %struct.bnx2i_hba, ptr %handle, i32 0, i32 24
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then15
  %__ret16.0 = phi i32 [ 200, %if.then15 ], [ %call46, %cleanup ]
  %call17 = call i32 @prepare_to_wait_event(ptr noundef %eh_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %9 = ptrtoint ptr %ep_ofld_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %ep_ofld_list, align 4
  %cmp.i164.not = icmp eq ptr %10, %ep_ofld_list
  br i1 %cmp.i164.not, label %land.end26, label %land.end26.thread

land.end26:                                       ; preds = %for.cond
  %11 = ptrtoint ptr %ep_destroy_list23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %ep_destroy_list23, align 4
  %cmp.i166 = icmp eq ptr %12, %ep_destroy_list23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret16.0)
  %tobool36.not = icmp eq i32 %__ret16.0, 0
  %or.cond = select i1 %cmp.i166, i1 true, i1 %tobool36.not
  br i1 %or.cond, label %land.end26.for.end_crit_edge, label %land.end26.if.end42_crit_edge

land.end26.if.end42_crit_edge:                    ; preds = %land.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

land.end26.for.end_crit_edge:                     ; preds = %land.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.end26.thread:                                ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret16.0)
  %tobool36.not.old = icmp eq i32 %__ret16.0, 0
  br i1 %tobool36.not.old, label %land.end26.thread.for.end_crit_edge, label %land.end26.thread.if.end42_crit_edge

land.end26.thread.if.end42_crit_edge:             ; preds = %land.end26.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

land.end26.thread.for.end_crit_edge:              ; preds = %land.end26.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end42:                                         ; preds = %land.end26.thread.if.end42_crit_edge, %land.end26.if.end42_crit_edge
  %tobool43.not = icmp eq i32 %call17, 0
  br i1 %tobool43.not, label %cleanup, label %if.end42.__out_crit_edge

if.end42.__out_crit_edge:                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %__out

cleanup:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %call46 = call i32 @schedule_timeout(i32 noundef %__ret16.0) #9
  br label %for.cond

for.end:                                          ; preds = %land.end26.thread.for.end_crit_edge, %land.end26.for.end_crit_edge
  call void @finish_wait(ptr noundef %eh_wait, ptr noundef nonnull %__wq_entry) #9
  br label %__out

__out:                                            ; preds = %for.end, %if.end42.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end49

if.end49:                                         ; preds = %__out, %land.rhs.if.end49_crit_edge
  %ofld_conns_active = getelementptr inbounds %struct.bnx2i_hba, ptr %handle, i32 0, i32 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait_delay.0)
  %tobool71.not182 = icmp eq i32 %wait_delay.0, 0
  %eh_wait81 = getelementptr inbounds %struct.bnx2i_hba, ptr %handle, i32 0, i32 18
  %spec.store.select123188 = select i1 %tobool71.not182, i32 1, i32 %wait_delay.0
  %13 = ptrtoint ptr %ofld_conns_active to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %ofld_conns_active, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end113.while.cond_crit_edge, %if.end49
  %14 = phi i32 [ %26, %if.end113.while.cond_crit_edge ], [ %.pr, %if.end49 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool51.not = icmp eq i32 %14, 0
  br i1 %tobool51.not, label %while.cond.bnx2i_chip_cleanup.exit_crit_edge, label %while.body

while.cond.bnx2i_chip_cleanup.exit_crit_edge:     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnx2i_chip_cleanup.exit

while.body:                                       ; preds = %while.cond
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 250) #9
  %15 = ptrtoint ptr %ofld_conns_active to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ofld_conns_active, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp.not = icmp eq i32 %16, %14
  %tobool71.not = select i1 %cmp.not, i1 %tobool71.not182, i1 false
  %not.cmp.not = xor i1 %cmp.not, true
  %17 = select i1 %not.cmp.not, i1 true, i1 %tobool71.not
  br i1 %17, label %while.body.if.end113_crit_edge, label %if.then76

while.body.if.end113_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.then76:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry77) #9
  %18 = call ptr @memset(ptr %__wq_entry77, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry77, i32 noundef 0) #9
  %call82185 = call i32 @prepare_to_wait_event(ptr noundef %eh_wait81, ptr noundef nonnull %__wq_entry77, i32 noundef 1) #9
  %19 = ptrtoint ptr %ofld_conns_active to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ofld_conns_active, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %14)
  %cmp85.not186 = icmp eq i32 %20, %14
  %__ret78.1189 = select i1 %cmp85.not186, i32 %wait_delay.0, i32 %spec.store.select123188
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret78.1189)
  %tobool95.not190 = icmp eq i32 %__ret78.1189, 0
  %not.cmp85.not191 = xor i1 %cmp85.not186, true
  %21 = select i1 %not.cmp85.not191, i1 true, i1 %tobool95.not190
  br i1 %21, label %if.then76.for.end109_crit_edge, label %if.then76.if.end101_crit_edge

if.then76.if.end101_crit_edge:                    ; preds = %if.then76
  br label %if.end101

if.then76.for.end109_crit_edge:                   ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end109

if.end101:                                        ; preds = %cleanup106.if.end101_crit_edge, %if.then76.if.end101_crit_edge
  %__ret78.1193 = phi i32 [ %__ret78.1, %cleanup106.if.end101_crit_edge ], [ %__ret78.1189, %if.then76.if.end101_crit_edge ]
  %call82192 = phi i32 [ %call82, %cleanup106.if.end101_crit_edge ], [ %call82185, %if.then76.if.end101_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82192)
  %tobool102.not = icmp eq i32 %call82192, 0
  br i1 %tobool102.not, label %cleanup106, label %if.end101.__out111_crit_edge

if.end101.__out111_crit_edge:                     ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %__out111

cleanup106:                                       ; preds = %if.end101
  %call105 = call i32 @schedule_timeout(i32 noundef %__ret78.1193) #9
  %call82 = call i32 @prepare_to_wait_event(ptr noundef %eh_wait81, ptr noundef nonnull %__wq_entry77, i32 noundef 1) #9
  %22 = ptrtoint ptr %ofld_conns_active to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ofld_conns_active, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %14)
  %cmp85.not = icmp eq i32 %23, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool89.not = icmp eq i32 %call105, 0
  %spec.store.select123 = select i1 %tobool89.not, i32 1, i32 %call105
  %__ret78.1 = select i1 %cmp85.not, i32 %call105, i32 %spec.store.select123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret78.1)
  %tobool95.not = icmp eq i32 %__ret78.1, 0
  %not.cmp85.not = xor i1 %cmp85.not, true
  %24 = select i1 %not.cmp85.not, i1 true, i1 %tobool95.not
  br i1 %24, label %cleanup106.for.end109_crit_edge, label %cleanup106.if.end101_crit_edge

cleanup106.if.end101_crit_edge:                   ; preds = %cleanup106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

cleanup106.for.end109_crit_edge:                  ; preds = %cleanup106
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end109

for.end109:                                       ; preds = %cleanup106.for.end109_crit_edge, %if.then76.for.end109_crit_edge
  call void @finish_wait(ptr noundef %eh_wait81, ptr noundef nonnull %__wq_entry77) #9
  br label %__out111

__out111:                                         ; preds = %for.end109, %if.end101.__out111_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry77) #9
  br label %if.end113

if.end113:                                        ; preds = %__out111, %while.body.if.end113_crit_edge
  %25 = ptrtoint ptr %ofld_conns_active to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ofld_conns_active, align 8
  %cmp116 = icmp eq i32 %26, %14
  br i1 %cmp116, label %do.end.i, label %if.end113.while.cond_crit_edge

if.end113.while.cond_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

do.end.i:                                         ; preds = %if.end113
  %netdev.i = getelementptr inbounds %struct.bnx2i_hba, ptr %handle, i32 0, i32 3
  %27 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %netdev.i, align 8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %28, i32 noundef %14) #12
  %net_dev_lock.i = getelementptr inbounds %struct.bnx2i_hba, ptr %handle, i32 0, i32 30
  call void @mutex_lock_nested(ptr noundef %net_dev_lock.i, i32 noundef 0) #9
  %ep_active_list.i = getelementptr inbounds %struct.bnx2i_hba, ptr %handle, i32 0, i32 23
  %29 = ptrtoint ptr %ep_active_list.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ep_active_list.i, align 4
  %cmp.i.not21.i = icmp eq ptr %30, %ep_active_list.i
  br i1 %cmp.i.not21.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %pos.022.i = phi ptr [ %tmp.0.i, %for.body.i.for.body.i_crit_edge ], [ %30, %do.end.i.for.body.i_crit_edge ]
  %31 = ptrtoint ptr %pos.022.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %tmp.0.i = load ptr, ptr %pos.022.i, align 4
  %call8.i = call i32 @bnx2i_hw_ep_disconnect(ptr noundef %pos.022.i) #9
  %cm_sk.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %pos.022.i, i32 0, i32 4
  %32 = ptrtoint ptr %cm_sk.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %cm_sk.i, align 4
  %cmp.i.not.i = icmp eq ptr %tmp.0.i, %ep_active_list.i
  br i1 %cmp.i.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  call void @mutex_unlock(ptr noundef %net_dev_lock.i) #9
  br label %bnx2i_chip_cleanup.exit

bnx2i_chip_cleanup.exit:                          ; preds = %for.end.i, %while.cond.bnx2i_chip_cleanup.exit_crit_edge
  call void @_clear_bit(i32 noundef 1, ptr noundef %adapter_state) #9
  call void @_clear_bit(i32 noundef 0, ptr noundef %adapter_state) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_host_for_each_session(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2i_drop_session(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2i_ulp_init(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @bnx2i_alloc_hba(ptr noundef %dev) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_with_cnic = getelementptr inbounds %struct.bnx2i_hba, ptr %call, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %reg_with_cnic) #9
  tail call void @mutex_lock_nested(ptr noundef nonnull @bnx2i_dev_lock, i32 noundef 0) #9
  %max_iscsi_conn.i = getelementptr inbounds %struct.cnic_dev, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %max_iscsi_conn.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_iscsi_conn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %netdev.i = getelementptr inbounds %struct.bnx2i_hba, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %3) #12
  br label %do.end7

if.end.i:                                         ; preds = %if.end
  %cnic1.i = getelementptr inbounds %struct.bnx2i_hba, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %cnic1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %cnic1.i, align 8
  %register_device.i = getelementptr inbounds %struct.cnic_dev, ptr %dev, i32 0, i32 4
  %5 = ptrtoint ptr %register_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %register_device.i, align 4
  %call2.i = tail call i32 %6(ptr noundef %dev, i32 noundef 1, ptr noundef nonnull %call) #9
  %7 = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %call2.i, label %bnx2i_init_one.exit [
    i32 0, label %if.then4.i
    i32 -16, label %do.end9.i
    i32 -11, label %do.end17.i
    i32 -22, label %do.end25.i
  ]

if.then4.i:                                       ; preds = %if.end.i
  %age.i = getelementptr inbounds %struct.bnx2i_hba, ptr %call, i32 0, i32 6
  %8 = ptrtoint ptr %age.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %age.i, align 4
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr %age.i, align 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %reg_with_cnic) #9
  %10 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @adapter_list, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call, ptr noundef %10, ptr noundef nonnull @adapter_list) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then4.i.bnx2i_init_one.exit.thread18_crit_edge

if.then4.i.bnx2i_init_one.exit.thread18_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnx2i_init_one.exit.thread18

if.end.i.i.i:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %call, ptr getelementptr inbounds (%struct.list_head, ptr @adapter_list, i32 0, i32 1), align 4
  %11 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @adapter_list, ptr %call, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %prev3.i.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %call, ptr %10, align 4
  br label %bnx2i_init_one.exit.thread18

bnx2i_init_one.exit.thread18:                     ; preds = %if.end.i.i.i, %if.then4.i.bnx2i_init_one.exit.thread18_crit_edge
  %14 = load i32, ptr @adapter_count, align 4
  %inc5.i = add i32 %14, 1
  store i32 %inc5.i, ptr @adapter_count, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @bnx2i_dev_lock) #9
  br label %cleanup

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull %call, ptr noundef %dev) #12
  br label %do.end7

do.end17.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #12
  br label %do.end7

do.end25.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef 1) #12
  br label %do.end7

bnx2i_init_one.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %call2.i) #12
  br label %do.end7

do.end7:                                          ; preds = %bnx2i_init_one.exit, %do.end25.i, %do.end17.i, %do.end9.i, %do.end.i
  tail call void @mutex_unlock(ptr noundef nonnull @bnx2i_dev_lock) #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull %call) #12
  tail call void @bnx2i_free_hba(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %bnx2i_init_one.exit.thread18, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bnx2i_alloc_hba(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnx2i_free_hba(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnx2i_ulp_exit(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @bnx2i_dev_lock, i32 noundef 0) #9
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %hba.0.in.i = phi ptr [ @adapter_list, %entry ], [ %hba.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %hba.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %hba.0.i = load ptr, ptr %hba.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %hba.0.i, @adapter_list
  br i1 %cmp.not.i, label %bnx2i_find_hba_for_cnic.exit.thread, label %for.body.i

bnx2i_find_hba_for_cnic.exit.thread:              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef nonnull @bnx2i_dev_lock) #9
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %cnic5.i = getelementptr inbounds %struct.bnx2i_hba, ptr %hba.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %cnic5.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cnic5.i, align 8
  %cmp6.i = icmp eq ptr %2, %dev
  br i1 %cmp6.i, label %bnx2i_find_hba_for_cnic.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

bnx2i_find_hba_for_cnic.exit:                     ; preds = %for.body.i
  %cnic5.i.le = getelementptr inbounds %struct.bnx2i_hba, ptr %hba.0.i, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef nonnull @bnx2i_dev_lock) #9
  %tobool.not = icmp eq ptr %hba.0.i, null
  br i1 %tobool.not, label %bnx2i_find_hba_for_cnic.exit.do.end_crit_edge, label %if.end

bnx2i_find_hba_for_cnic.exit.do.end_crit_edge:    ; preds = %bnx2i_find_hba_for_cnic.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %bnx2i_find_hba_for_cnic.exit.do.end_crit_edge, %bnx2i_find_hba_for_cnic.exit.thread
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %dev) #12
  br label %cleanup

if.end:                                           ; preds = %bnx2i_find_hba_for_cnic.exit
  tail call void @mutex_lock_nested(ptr noundef nonnull @bnx2i_dev_lock, i32 noundef 0) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %hba.0.i) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %hba.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %hba.0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hba.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %hba.0.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %hba.0.i, ptr %hba.0.i, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %hba.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %hba.0.i, ptr %prev.i3.i, align 4
  %11 = load i32, ptr @adapter_count, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr @adapter_count, align 4
  %reg_with_cnic = getelementptr inbounds %struct.bnx2i_hba, ptr %hba.0.i, i32 0, i32 9
  %12 = ptrtoint ptr %reg_with_cnic to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %reg_with_cnic, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool3.not = icmp eq i32 %14, 0
  br i1 %tobool3.not, label %list_del_init.exit.if.end8_crit_edge, label %if.then4

list_del_init.exit.if.end8_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then4:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %cnic5.i.le to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cnic5.i.le, align 8
  %unregister_device = getelementptr inbounds %struct.cnic_dev, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %unregister_device to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %unregister_device, align 4
  %call6 = tail call i32 %18(ptr noundef %16, i32 noundef 1) #9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %reg_with_cnic) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %list_del_init.exit.if.end8_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @bnx2i_dev_lock) #9
  tail call void @bnx2i_free_hba(ptr noundef nonnull %hba.0.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnx2i_get_stats(ptr noundef %handle) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cnic = getelementptr inbounds %struct.bnx2i_hba, ptr %handle, i32 0, i32 1
  %0 = ptrtoint ptr %cnic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cnic, align 8
  %stats_addr = getelementptr inbounds %struct.cnic_dev, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %stats_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats_addr, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @strlcpy(ptr noundef nonnull %3, ptr noundef nonnull @.str.2, i32 noundef 12) #9
  %add.ptr = getelementptr %struct.iscsi_stats_info, ptr %3, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %cnic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cnic, align 8
  %mac_addr = getelementptr inbounds %struct.cnic_dev, ptr %5, i32 0, i32 18
  %6 = call ptr @memcpy(ptr %add.ptr, ptr %mac_addr, i32 6)
  %netdev = getelementptr inbounds %struct.bnx2i_hba, ptr %handle, i32 0, i32 3
  %7 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 20
  %9 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mtu, align 4
  %max_frame_size = getelementptr inbounds %struct.iscsi_stats_info, ptr %3, i32 0, i32 10
  %11 = ptrtoint ptr %max_frame_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %max_frame_size, align 4
  %max_sqes = getelementptr inbounds %struct.bnx2i_hba, ptr %handle, i32 0, i32 13
  %12 = ptrtoint ptr %max_sqes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_sqes, align 8
  %txq_size = getelementptr inbounds %struct.iscsi_stats_info, ptr %3, i32 0, i32 11
  %14 = ptrtoint ptr %txq_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %txq_size, align 4
  %max_cqes = getelementptr inbounds %struct.bnx2i_hba, ptr %handle, i32 0, i32 15
  %15 = ptrtoint ptr %max_cqes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_cqes, align 8
  %rxq_size = getelementptr inbounds %struct.iscsi_stats_info, ptr %3, i32 0, i32 12
  %17 = ptrtoint ptr %rxq_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %rxq_size, align 4
  %txq_avg_depth = getelementptr inbounds %struct.iscsi_stats_info, ptr %3, i32 0, i32 13
  %18 = ptrtoint ptr %txq_avg_depth to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %txq_avg_depth, align 4
  %rxq_avg_depth = getelementptr inbounds %struct.iscsi_stats_info, ptr %3, i32 0, i32 14
  %19 = ptrtoint ptr %rxq_avg_depth to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %rxq_avg_depth, align 4
  %bnx2i_stats = getelementptr inbounds %struct.bnx2i_hba, ptr %handle, i32 0, i32 48
  %20 = ptrtoint ptr %bnx2i_stats to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %bnx2i_stats, align 8
  %rx_pdus_lo = getelementptr inbounds %struct.bnx2i_hba, ptr %handle, i32 0, i32 49, i32 15
  %22 = tail call i64 @llvm.bswap.i64(i64 %21)
  %23 = ptrtoint ptr %rx_pdus_lo to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %rx_pdus_lo, align 8
  %rx_pdus_lo8 = getelementptr inbounds %struct.iscsi_stats_info, ptr %3, i32 0, i32 15
  %24 = ptrtoint ptr %rx_pdus_lo8 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %22, ptr %rx_pdus_lo8, align 8
  %rx_bytes = getelementptr inbounds %struct.bnx2i_hba, ptr %handle, i32 0, i32 48, i32 1
  %25 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %rx_bytes, align 8
  %rx_bytes_lo = getelementptr inbounds %struct.bnx2i_hba, ptr %handle, i32 0, i32 49, i32 17
  %27 = tail call i64 @llvm.bswap.i64(i64 %26)
  %28 = ptrtoint ptr %rx_bytes_lo to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %rx_bytes_lo, align 8
  %rx_bytes_lo14 = getelementptr inbounds %struct.iscsi_stats_info, ptr %3, i32 0, i32 17
  %29 = ptrtoint ptr %rx_bytes_lo14 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %27, ptr %rx_bytes_lo14, align 8
  %tx_pdus = getelementptr inbounds %struct.bnx2i_hba, ptr %handle, i32 0, i32 48, i32 2
  %30 = ptrtoint ptr %tx_pdus to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %tx_pdus, align 8
  %tx_pdus_lo = getelementptr inbounds %struct.bnx2i_hba, ptr %handle, i32 0, i32 49, i32 19
  %32 = tail call i64 @llvm.bswap.i64(i64 %31)
  %33 = ptrtoint ptr %tx_pdus_lo to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %tx_pdus_lo, align 8
  %tx_pdus_lo22 = getelementptr inbounds %struct.iscsi_stats_info, ptr %3, i32 0, i32 19
  %34 = ptrtoint ptr %tx_pdus_lo22 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %32, ptr %tx_pdus_lo22, align 8
  %tx_bytes = getelementptr inbounds %struct.bnx2i_hba, ptr %handle, i32 0, i32 48, i32 3
  %35 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %tx_bytes, align 8
  %tx_bytes_lo = getelementptr inbounds %struct.bnx2i_hba, ptr %handle, i32 0, i32 49, i32 21
  %37 = tail call i64 @llvm.bswap.i64(i64 %36)
  %38 = ptrtoint ptr %tx_bytes_lo to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %tx_bytes_lo, align 8
  %tx_bytes_lo30 = getelementptr inbounds %struct.iscsi_stats_info, ptr %3, i32 0, i32 21
  %39 = ptrtoint ptr %tx_bytes_lo30 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %37, ptr %tx_bytes_lo30, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bnx2i_mod_exit() #7 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_lock_nested(ptr noundef nonnull @bnx2i_dev_lock, i32 noundef 0) #9
  %0 = load volatile ptr, ptr @adapter_list, align 4
  %cmp.i.not14 = icmp eq ptr %0, @adapter_list
  br i1 %cmp.i.not14, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %1 = phi ptr [ %26, %if.end.while.body_crit_edge ], [ %0, %entry.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #9
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %10 = load i32, ptr @adapter_count, align 4
  %dec = add i32 %10, -1
  store i32 %dec, ptr @adapter_count, align 4
  %reg_with_cnic = getelementptr inbounds %struct.bnx2i_hba, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %reg_with_cnic to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %reg_with_cnic, align 4
  %13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool2.not = icmp eq i32 %13, 0
  br i1 %tobool2.not, label %list_del.exit.if.end_crit_edge, label %if.then

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  %ofld_conns_active.i = getelementptr inbounds %struct.bnx2i_hba, ptr %1, i32 0, i32 17
  %14 = ptrtoint ptr %ofld_conns_active.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ofld_conns_active.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.then.bnx2i_chip_cleanup.exit_crit_edge, label %do.end.i

if.then.bnx2i_chip_cleanup.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnx2i_chip_cleanup.exit

do.end.i:                                         ; preds = %if.then
  %netdev.i = getelementptr inbounds %struct.bnx2i_hba, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %17, i32 noundef %15) #12
  %net_dev_lock.i = getelementptr inbounds %struct.bnx2i_hba, ptr %1, i32 0, i32 30
  tail call void @mutex_lock_nested(ptr noundef %net_dev_lock.i, i32 noundef 0) #9
  %ep_active_list.i = getelementptr inbounds %struct.bnx2i_hba, ptr %1, i32 0, i32 23
  %18 = ptrtoint ptr %ep_active_list.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ep_active_list.i, align 4
  %cmp.i.not21.i = icmp eq ptr %19, %ep_active_list.i
  br i1 %cmp.i.not21.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %pos.022.i = phi ptr [ %tmp.0.i, %for.body.i.for.body.i_crit_edge ], [ %19, %do.end.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %pos.022.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %tmp.0.i = load ptr, ptr %pos.022.i, align 4
  %call8.i = tail call i32 @bnx2i_hw_ep_disconnect(ptr noundef %pos.022.i) #9
  %cm_sk.i = getelementptr inbounds %struct.bnx2i_endpoint, ptr %pos.022.i, i32 0, i32 4
  %21 = ptrtoint ptr %cm_sk.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %cm_sk.i, align 4
  %cmp.i.not.i = icmp eq ptr %tmp.0.i, %ep_active_list.i
  br i1 %cmp.i.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %net_dev_lock.i) #9
  br label %bnx2i_chip_cleanup.exit

bnx2i_chip_cleanup.exit:                          ; preds = %for.end.i, %if.then.bnx2i_chip_cleanup.exit_crit_edge
  %cnic = getelementptr inbounds %struct.bnx2i_hba, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %cnic to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cnic, align 8
  %unregister_device = getelementptr inbounds %struct.cnic_dev, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %unregister_device to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %unregister_device, align 4
  %call4 = tail call i32 %25(ptr noundef %23, i32 noundef 1) #9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %reg_with_cnic) #9
  br label %if.end

if.end:                                           ; preds = %bnx2i_chip_cleanup.exit, %list_del.exit.if.end_crit_edge
  tail call void @bnx2i_free_hba(ptr noundef %1) #9
  %26 = load volatile ptr, ptr @adapter_list, align 4
  %cmp.i.not = icmp eq ptr %26, @adapter_list
  br i1 %cmp.i.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @bnx2i_dev_lock) #9
  %27 = load i32, ptr @bnx2i_online_state, align 4
  tail call void @__cpuhp_remove_state(i32 noundef %27, i1 noundef zeroext true) #9
  %call6 = tail call i32 @iscsi_unregister_transport(ptr noundef nonnull @bnx2i_iscsi_transport) #9
  %call7 = tail call i32 @cnic_unregister_driver(i32 noundef 1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_unregister_transport(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cnic_unregister_driver(i32 noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2i_mod_init() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @version) #12
  %0 = load i32, ptr @sq_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  %1 = tail call i32 @llvm.ctpop.i32(i32 %0) #9, !range !166
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp1.i = icmp ult i32 %1, 2
  %or.cond = or i1 %tobool.not, %cmp1.i
  br i1 %or.cond, label %entry.if.end_crit_edge, label %cond.end19

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cond.end19:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i68 = add i32 %0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i68)
  %tobool.not.i.i.i = icmp eq i32 %sub.i68, 0
  %2 = tail call i32 @llvm.ctlz.i32(i32 %sub.i68, i1 true) #9, !range !166
  %sub.i.i.i = sub nuw nsw i32 32, %2
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i
  store i32 %shl.i, ptr @sq_size, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end19, %entry.if.end_crit_edge
  %call21 = tail call ptr @iscsi_register_transport(ptr noundef nonnull @bnx2i_iscsi_transport) #9
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @bnx2i_scsi_xport_template to i32))
  store ptr %call21, ptr @bnx2i_scsi_xport_template, align 4
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %do.end26, label %if.end29

do.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #12
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %call30 = tail call i32 @cnic_register_driver(i32 noundef 1, ptr noundef nonnull @bnx2i_cnic_cb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %for.cond.preheader, label %do.end35

for.cond.preheader:                               ; preds = %if.end29
  %call3969 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3969, i32 %3)
  %cmp4070 = icmp ult i32 %call3969, %3
  br i1 %cmp4070, label %for.cond.preheader.do.body42_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.preheader.do.body42_crit_edge:           ; preds = %for.cond.preheader
  br label %do.body42

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #12
  br label %unreg_xport

do.body42:                                        ; preds = %do.body42.do.body42_crit_edge, %for.cond.preheader.do.body42_crit_edge
  %call3971 = phi i32 [ %call39, %do.body42.do.body42_crit_edge ], [ %call3969, %for.cond.preheader.do.body42_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call3971
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add47 = add i32 %5, ptrtoint (ptr @bnx2i_percpu to i32)
  %6 = inttoptr i32 %add47 to ptr
  %work_list = getelementptr inbounds %struct.bnx2i_percpu_s, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %work_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %work_list, ptr %work_list, align 4
  %prev.i = getelementptr inbounds %struct.bnx2i_percpu_s, ptr %6, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %work_list, ptr %prev.i, align 4
  %p_work_lock = getelementptr inbounds %struct.bnx2i_percpu_s, ptr %6, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %p_work_lock, ptr noundef nonnull @.str.39, ptr noundef nonnull @bnx2i_mod_init.__key, i16 noundef signext 3) #9
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %6, align 4
  %call39 = tail call i32 @cpumask_next(i32 noundef %call3971, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %cmp40 = icmp ult i32 %call39, %10
  br i1 %cmp40, label %do.body42.do.body42_crit_edge, label %do.body42.for.end_crit_edge

do.body42.for.end_crit_edge:                      ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.body42.do.body42_crit_edge:                    ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body42

for.end:                                          ; preds = %do.body42.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str.40, i1 noundef zeroext true, ptr noundef nonnull @bnx2i_cpu_online, ptr noundef nonnull @bnx2i_cpu_offline, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp53 = icmp slt i32 %call.i, 0
  br i1 %cmp53, label %unreg_driver, label %if.end56

if.end56:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  store i32 %call.i, ptr @bnx2i_online_state, align 4
  br label %cleanup

unreg_driver:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call57 = tail call i32 @cnic_unregister_driver(i32 noundef 1) #9
  br label %unreg_xport

unreg_xport:                                      ; preds = %unreg_driver, %do.end35
  %err.0 = phi i32 [ %call30, %do.end35 ], [ %call.i, %unreg_driver ]
  %call58 = tail call i32 @iscsi_unregister_transport(ptr noundef nonnull @bnx2i_iscsi_transport) #9
  br label %cleanup

cleanup:                                          ; preds = %unreg_xport, %if.end56, %do.end26
  %retval.0 = phi i32 [ 0, %if.end56 ], [ %err.0, %unreg_xport ], [ -12, %do.end26 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2i_hw_ep_disconnect(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_register_transport(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cnic_register_driver(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2i_cpu_online(i32 noundef %cpu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @bnx2i_percpu to i32)
  %2 = inttoptr i32 %add to ptr
  %call = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @bnx2i_percpu_io_thread, ptr noundef %2, i32 noundef 0, ptr noundef nonnull @.str.41, i32 noundef %cpu) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kthread_bind(ptr noundef %call, i32 noundef %cpu) #9
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %2, align 4
  %call4 = tail call i32 @wake_up_process(ptr noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnx2i_cpu_offline(i32 noundef %cpu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @bnx2i_percpu to i32)
  %2 = inttoptr i32 %add to ptr
  %p_work_lock = getelementptr inbounds %struct.bnx2i_percpu_s, ptr %2, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %p_work_lock) #9
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  store ptr null, ptr %2, align 4
  %work_list = getelementptr inbounds %struct.bnx2i_percpu_s, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %work_list, align 4
  %cmp.not32 = icmp eq ptr %6, %work_list
  br i1 %cmp.not32, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %work.033 = phi ptr [ %tmp.0, %list_del_init.exit.for.body_crit_edge ], [ %6, %entry.for.body_crit_edge ]
  %7 = ptrtoint ptr %work.033 to i32
  call void @__asan_load4_noabort(i32 %7)
  %tmp.0 = load ptr, ptr %work.033, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %work.033) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %work.033, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %work.033 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %work.033, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %14 = ptrtoint ptr %work.033 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %work.033, ptr %work.033, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %work.033, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %work.033, ptr %prev.i3.i, align 4
  %session = getelementptr inbounds %struct.bnx2i_work, ptr %work.033, i32 0, i32 1
  %16 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %session, align 4
  %bnx2i_conn = getelementptr inbounds %struct.bnx2i_work, ptr %work.033, i32 0, i32 2
  %18 = ptrtoint ptr %bnx2i_conn to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bnx2i_conn, align 4
  %cqe = getelementptr inbounds %struct.bnx2i_work, ptr %work.033, i32 0, i32 3
  %call = tail call i32 @bnx2i_process_scsi_cmd_resp(ptr noundef %17, ptr noundef %19, ptr noundef %cqe) #9
  tail call void @kfree(ptr noundef %work.033) #9
  %cmp.not = icmp eq ptr %tmp.0, %work_list
  br i1 %cmp.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %p_work_lock) #9
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 @kthread_stop(ptr noundef nonnull %4) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2i_percpu_io_thread(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_bind(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnx2i_process_scsi_cmd_resp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !17, !18, !20, !22, !24, !25, !27, !29, !31, !32, !34, !36, !38, !39, !41, !43, !45, !46, !48, !50, !51, !53, !55, !57, !58, !60, !62, !64, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !86, !88, !90, !92, !93, !94, !96, !97, !98, !99, !100, !101, !102, !103, !105, !106, !107, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !153, !155}
!llvm.module.flags = !{!157, !158, !159, !160, !161, !162, !163, !164}
!llvm.ident = !{!165}

!0 = !{ptr @__UNIQUE_ID_author374, !1, !"__UNIQUE_ID_author374", i1 false, i1 false}
!1 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 31, i32 1}
!2 = !{ptr @__UNIQUE_ID_description375, !3, !"__UNIQUE_ID_description375", i1 false, i1 false}
!3 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 34, i32 1}
!4 = !{ptr @__UNIQUE_ID_file376, !5, !"__UNIQUE_ID_file376", i1 false, i1 false}
!5 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 36, i32 1}
!6 = !{ptr @__UNIQUE_ID_license377, !5, !"__UNIQUE_ID_license377", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version378, !8, !"__UNIQUE_ID_version378", i1 false, i1 false}
!8 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 37, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @event_coal_min, !14, !"event_coal_min", i1 false, i1 false}
!14 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 41, i32 14}
!15 = !{ptr @__param_event_coal_min, !16, !"__param_event_coal_min", i1 false, i1 false}
!16 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 42, i32 1}
!17 = !{ptr @__UNIQUE_ID_event_coal_mintype379, !16, !"__UNIQUE_ID_event_coal_mintype379", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_event_coal_min380, !19, !"__UNIQUE_ID_event_coal_min380", i1 false, i1 false}
!19 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 43, i32 1}
!20 = !{ptr @event_coal_div, !21, !"event_coal_div", i1 false, i1 false}
!21 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 45, i32 14}
!22 = !{ptr @__param_event_coal_div, !23, !"__param_event_coal_div", i1 false, i1 false}
!23 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 46, i32 1}
!24 = !{ptr @__UNIQUE_ID_event_coal_divtype381, !23, !"__UNIQUE_ID_event_coal_divtype381", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_event_coal_div382, !26, !"__UNIQUE_ID_event_coal_div382", i1 false, i1 false}
!26 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 47, i32 1}
!27 = !{ptr @en_tcp_dack, !28, !"en_tcp_dack", i1 false, i1 false}
!28 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 49, i32 14}
!29 = !{ptr @__param_en_tcp_dack, !30, !"__param_en_tcp_dack", i1 false, i1 false}
!30 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 50, i32 1}
!31 = !{ptr @__UNIQUE_ID_en_tcp_dacktype383, !30, !"__UNIQUE_ID_en_tcp_dacktype383", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_en_tcp_dack384, !33, !"__UNIQUE_ID_en_tcp_dack384", i1 false, i1 false}
!33 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 51, i32 1}
!34 = !{ptr @error_mask1, !35, !"error_mask1", i1 false, i1 false}
!35 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 53, i32 14}
!36 = !{ptr @__param_error_mask1, !37, !"__param_error_mask1", i1 false, i1 false}
!37 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 54, i32 1}
!38 = !{ptr @__UNIQUE_ID_error_mask1type385, !37, !"__UNIQUE_ID_error_mask1type385", i1 false, i1 false}
!39 = !{ptr @__UNIQUE_ID_error_mask1386, !40, !"__UNIQUE_ID_error_mask1386", i1 false, i1 false}
!40 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 55, i32 1}
!41 = !{ptr @error_mask2, !42, !"error_mask2", i1 false, i1 false}
!42 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 57, i32 14}
!43 = !{ptr @__param_error_mask2, !44, !"__param_error_mask2", i1 false, i1 false}
!44 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 58, i32 1}
!45 = !{ptr @__UNIQUE_ID_error_mask2type387, !44, !"__UNIQUE_ID_error_mask2type387", i1 false, i1 false}
!46 = !{ptr @__UNIQUE_ID_error_mask2388, !47, !"__UNIQUE_ID_error_mask2388", i1 false, i1 false}
!47 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 59, i32 1}
!48 = !{ptr @__param_sq_size, !49, !"__param_sq_size", i1 false, i1 false}
!49 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 62, i32 1}
!50 = !{ptr @__UNIQUE_ID_sq_sizetype389, !49, !"__UNIQUE_ID_sq_sizetype389", i1 false, i1 false}
!51 = !{ptr @__UNIQUE_ID_sq_size390, !52, !"__UNIQUE_ID_sq_size390", i1 false, i1 false}
!52 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 63, i32 1}
!53 = !{ptr @rq_size, !54, !"rq_size", i1 false, i1 false}
!54 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 65, i32 14}
!55 = !{ptr @__param_rq_size, !56, !"__param_rq_size", i1 false, i1 false}
!56 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 66, i32 1}
!57 = !{ptr @__UNIQUE_ID_rq_sizetype391, !56, !"__UNIQUE_ID_rq_sizetype391", i1 false, i1 false}
!58 = !{ptr @__UNIQUE_ID_rq_size392, !59, !"__UNIQUE_ID_rq_size392", i1 false, i1 false}
!59 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 67, i32 1}
!60 = !{ptr @iscsi_error_mask, !61, !"iscsi_error_mask", i1 false, i1 false}
!61 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 69, i32 5}
!62 = !{ptr @.str.3, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 100, i32 3}
!64 = !{ptr @.str.4, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.5, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @bnx2i_identify_device._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @bnx2i_identify_device._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.6, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 324, i32 3}
!70 = !{ptr @.str.7, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @bnx2i_ulp_init._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @bnx2i_ulp_init._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.9, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 331, i32 3}
!75 = !{ptr @bnx2i_ulp_init._entry.8, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @bnx2i_ulp_init._entry_ptr.10, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.11, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 348, i32 3}
!79 = !{ptr @.str.12, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @bnx2i_ulp_exit._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @bnx2i_ulp_exit._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @__initcall__kmod_bnx2i__393_549_bnx2i_mod_init6, !83, !"__initcall__kmod_bnx2i__393_549_bnx2i_mod_init6", i1 false, i1 false}
!83 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 549, i32 1}
!84 = !{ptr @__exitcall_bnx2i_mod_exit, !85, !"__exitcall_bnx2i_mod_exit", i1 false, i1 false}
!85 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 550, i32 1}
!86 = !{ptr @adapter_count, !87, !"adapter_count", i1 false, i1 false}
!87 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 20, i32 12}
!88 = !{ptr @sq_size, !89, !"sq_size", i1 false, i1 false}
!89 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 61, i32 14}
!90 = !{ptr @__pcpu_scope_bnx2i_percpu, !91, !"__pcpu_scope_bnx2i_percpu", i1 false, i1 false}
!91 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 71, i32 1}
!92 = !{ptr @__pcpu_unique_bnx2i_percpu, !91, !"__pcpu_unique_bnx2i_percpu", i1 false, i1 false}
!93 = !{ptr @bnx2i_percpu, !91, !"bnx2i_percpu", i1 false, i1 false}
!94 = !{ptr @bnx2i_online_state, !95, !"bnx2i_online_state", i1 false, i1 false}
!95 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 457, i32 25}
!96 = !{ptr @__param_str_event_coal_min, !16, !"__param_str_event_coal_min", i1 false, i1 false}
!97 = !{ptr @__param_str_event_coal_div, !23, !"__param_str_event_coal_div", i1 false, i1 false}
!98 = !{ptr @__param_str_en_tcp_dack, !30, !"__param_str_en_tcp_dack", i1 false, i1 false}
!99 = !{ptr @__param_str_error_mask1, !37, !"__param_str_error_mask1", i1 false, i1 false}
!100 = !{ptr @__param_str_error_mask2, !44, !"__param_str_error_mask2", i1 false, i1 false}
!101 = !{ptr @__param_str_sq_size, !49, !"__param_str_sq_size", i1 false, i1 false}
!102 = !{ptr @__param_str_rq_size, !56, !"__param_str_rq_size", i1 false, i1 false}
!103 = !{ptr @.str.13, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 39, i32 8}
!105 = !{ptr @.str.14, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @bnx2i_dev_lock, !104, !"bnx2i_dev_lock", i1 false, i1 false}
!107 = !{ptr @adapter_list, !108, !"adapter_list", i1 false, i1 false}
!108 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 19, i32 25}
!109 = !{ptr @.str.15, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 198, i32 3}
!111 = !{ptr @.str.16, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @bnx2i_chip_cleanup._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @bnx2i_chip_cleanup._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.17, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 279, i32 3}
!116 = !{ptr @.str.18, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @bnx2i_init_one._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @bnx2i_init_one._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.20, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 293, i32 3}
!121 = !{ptr @bnx2i_init_one._entry.19, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @bnx2i_init_one._entry_ptr.21, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.23, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 296, i32 3}
!125 = !{ptr @bnx2i_init_one._entry.22, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @bnx2i_init_one._entry_ptr.24, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.26, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 298, i32 3}
!129 = !{ptr @bnx2i_init_one._entry.25, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @bnx2i_init_one._entry_ptr.27, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.29, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 300, i32 3}
!133 = !{ptr @bnx2i_init_one._entry.28, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @bnx2i_init_one._entry_ptr.30, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.31, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 472, i32 2}
!137 = !{ptr @.str.32, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @bnx2i_mod_init._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @bnx2i_mod_init._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.34, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 480, i32 3}
!142 = !{ptr @bnx2i_mod_init._entry.33, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @bnx2i_mod_init._entry_ptr.35, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.37, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 487, i32 3}
!146 = !{ptr @bnx2i_mod_init._entry.36, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @bnx2i_mod_init._entry_ptr.38, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @bnx2i_mod_init.__key, !149, !"__key", i1 false, i1 false}
!149 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 495, i32 3}
!150 = !{ptr @.str.39, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.40, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 499, i32 47}
!153 = !{ptr @version, !154, !"version", i1 false, i1 false}
!154 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 26, i32 13}
!155 = !{ptr @.str.41, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/scsi/bnx2i/bnx2i_init.c", i32 420, i32 6}
!157 = !{i32 1, !"wchar_size", i32 2}
!158 = !{i32 1, !"min_enum_size", i32 4}
!159 = !{i32 8, !"branch-target-enforcement", i32 0}
!160 = !{i32 8, !"sign-return-address", i32 0}
!161 = !{i32 8, !"sign-return-address-all", i32 0}
!162 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!163 = !{i32 7, !"uwtable", i32 1}
!164 = !{i32 7, !"frame-pointer", i32 2}
!165 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!166 = !{i32 0, i32 33}
