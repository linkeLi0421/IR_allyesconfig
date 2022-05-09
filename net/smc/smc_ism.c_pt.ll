; ModuleID = '/llk/IR_all_yes/net/smc/smc_ism.c_pt.bc'
source_filename = "../net/smc/smc_ism.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+smcd_alloc_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_smcd_alloc_dev\09\09\09\09"
module asm "\09.long\09__crc_smcd_alloc_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_smcd_alloc_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22smcd_alloc_dev\22\09\09\09\09\09"
module asm "__kstrtabns_smcd_alloc_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+smcd_register_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_smcd_register_dev\09\09\09\09"
module asm "\09.long\09__crc_smcd_register_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_smcd_register_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22smcd_register_dev\22\09\09\09\09\09"
module asm "__kstrtabns_smcd_register_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+smcd_unregister_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_smcd_unregister_dev\09\09\09\09"
module asm "\09.long\09__crc_smcd_unregister_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_smcd_unregister_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22smcd_unregister_dev\22\09\09\09\09\09"
module asm "__kstrtabns_smcd_unregister_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+smcd_free_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_smcd_free_dev\09\09\09\09"
module asm "\09.long\09__crc_smcd_free_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_smcd_free_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22smcd_free_dev\22\09\09\09\09\09"
module asm "__kstrtabns_smcd_free_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+smcd_handle_event\22, \22a\22\09"
module asm "\09.weak\09__crc_smcd_handle_event\09\09\09\09"
module asm "\09.long\09__crc_smcd_handle_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_smcd_handle_event:\09\09\09\09\09"
module asm "\09.asciz \09\22smcd_handle_event\22\09\09\09\09\09"
module asm "__kstrtabns_smcd_handle_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+smcd_handle_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_smcd_handle_irq\09\09\09\09"
module asm "\09.long\09__crc_smcd_handle_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_smcd_handle_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22smcd_handle_irq\22\09\09\09\09\09"
module asm "__kstrtabns_smcd_handle_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.smcd_dev_list = type { %struct.list_head, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.smcd_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.smc_ism_position = type { i64, i32, i8, i8 }
%struct.smc_connection = type { %struct.rb_node, ptr, ptr, i32, i8, i32, %struct.atomic_t, i32, ptr, ptr, i32, i32, %struct.smc_host_cdc_msg, %union.smc_host_cursor, %union.smc_host_cursor, %union.smc_host_cursor, %union.smc_host_cursor, %struct.atomic_t, i16, i16, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, %struct.delayed_work, i32, %struct.smc_host_cdc_msg, %union.smc_host_cursor, %union.smc_host_cursor, i32, i8, i8, i8, %struct.atomic_t, %struct.atomic_t, %struct.work_struct, %struct.work_struct, %struct.tasklet_struct, i8, i64, i8 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.smc_host_cdc_msg = type { %struct.smc_wr_rx_hdr, i8, i16, i32, %union.smc_host_cursor, %union.smc_host_cursor, %struct.smc_cdc_producer_flags, %struct.smc_cdc_conn_state_flags, [18 x i8] }
%struct.smc_wr_rx_hdr = type { %union.anon.179 }
%union.anon.179 = type { i8 }
%struct.smc_cdc_producer_flags = type { i8 }
%struct.smc_cdc_conn_state_flags = type { i8 }
%union.smc_host_cursor = type { %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.174, i32 }
%union.anon.174 = type { ptr }
%struct.smc_link_group = type { %struct.list_head, %struct.rb_root, %struct.rwlock_t, i32, i16, [16 x %struct.list_head], %struct.mutex, [16 x %struct.list_head], %struct.mutex, [4 x i8], %struct.delayed_work, %struct.work_struct, ptr, i8, %struct.refcount_struct, i8, i8, [32 x i8], i8, i8, [32 x i8], %union.anon.127 }
%struct.rb_root = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, [3 x %struct.smc_link], ptr, ptr, [8 x i8], [255 x [3 x %struct.smc_rtoken]], [8 x i32], i8, i32, [17 x i8], %struct.list_head, %struct.spinlock, %struct.mutex, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, %struct.wait_queue_head, %struct.smc_llc_flow, %struct.smc_llc_flow, ptr, %struct.spinlock, i32, i32, [6 x i8], i8, i32, ptr }
%struct.smc_link = type { ptr, i8, ptr, ptr, %struct.ib_qp_attr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, ptr, i32, %struct.wait_queue_head, %struct.atomic_t, ptr, ptr, ptr, i32, i32, i64, i32, i32, %struct.ib_reg_wr, %struct.wait_queue_head, %struct.atomic_t, i32, [16 x i8], i8, i32, i32, i32, i32, i32, [6 x i8], [16 x i8], i8, [4 x i8], [4 x i8], i8, i8, i8, %struct.refcount_struct, ptr, %struct.work_struct, [64 x i8], i32, i32, %struct.delayed_work, %struct.completion, i32, %struct.atomic_t }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, %struct.rdma_ah_attr, %struct.rdma_ah_attr, i16, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, ptr }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.165 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.160 }
%struct.anon.160 = type { i64, i64 }
%union.anon.165 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.ib_reg_wr = type { %struct.ib_send_wr, ptr, i32, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.161, ptr, i32, i32, i32, %union.anon.162 }
%union.anon.161 = type { i64 }
%union.anon.162 = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.smc_rtoken = type { i64, i32 }
%struct.smc_llc_flow = type { i32, ptr }
%struct.smcd_dev = type { ptr, %struct.device, ptr, i64, %struct.list_head, %struct.spinlock, ptr, %struct.list_head, ptr, [16 x i8], i8, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.smc_buf_desc = type { %struct.list_head, ptr, ptr, i32, i32, %union.anon.176 }
%union.anon.176 = type { %struct.anon.178, [40 x i8] }
%struct.anon.178 = type { i16, i64, i32 }
%struct.smc_ism_vlanid = type { %struct.list_head, i16, %struct.refcount_struct }
%struct.smcd_dmb = type { i64, i64, i32, i32, i32, i32, ptr, i32 }
%struct.smc_pci_dev = type { i32, i16, i16, i16, [16 x i8] }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.146 }
%union.anon.146 = type { [6 x i32], [24 x i8] }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.smc_ism_event_work = type { %struct.work_struct, ptr, %struct.smcd_event }
%struct.smcd_event = type { i32, i32, i64, i64, i64 }

@smcd_dev_list = dso_local global { %struct.smcd_dev_list, [60 x i8] } { %struct.smcd_dev_list { %struct.list_head { ptr @smcd_dev_list, ptr @smcd_dev_list }, %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @smcd_dev_list, i64 60), ptr getelementptr (i8, ptr @smcd_dev_list, i64 60) }, ptr getelementptr (i8, ptr @smcd_dev_list, i64 8), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } } }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"smcd_dev_list.mutex.wait_lock\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"smcd_dev_list.mutex\00", [44 x i8] zeroinitializer }, align 32
@smc_ism_v2_capable = internal global { i1, [31 x i8] } zeroinitializer, align 32
@smc_ism_v2_system_eid = internal global { [32 x i8], [32 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ism_evt_wq-%s)\00", [17 x i8] zeroinitializer }, align 32
@smcd_alloc_dev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&smcd->lock\00", [20 x i8] zeroinitializer }, align 32
@smcd_alloc_dev.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&smcd->lgr_lock\00", [16 x i8] zeroinitializer }, align 32
@smcd_alloc_dev.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&smcd->lgrs_deleted\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_smcd_alloc_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_smcd_alloc_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_smcd_alloc_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @smcd_alloc_dev to i32), ptr @__kstrtab_smcd_alloc_dev, ptr @__kstrtabns_smcd_alloc_dev }, section "___ksymtab_gpl+smcd_alloc_dev", align 4
@smcd_register_dev._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.smcd_register_dev = private unnamed_addr constant [18 x i8] c"smcd_register_dev\00", align 1
@smcd_register_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.smcd_register_dev, ptr @.str.10, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014smc: adding smcd device %s with pnetid %.16s%s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/smc/smc_ism.c\00", [46 x i8] zeroinitializer }, align 32
@smcd_register_dev._entry_ptr = internal global ptr @smcd_register_dev._entry, section ".printk_index", align 4
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" (user defined)\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__kstrtab_smcd_register_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_smcd_register_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_smcd_register_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @smcd_register_dev to i32), ptr @__kstrtab_smcd_register_dev, ptr @__kstrtabns_smcd_register_dev }, section "___ksymtab_gpl+smcd_register_dev", align 4
@smcd_unregister_dev._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smcd_unregister_dev = private unnamed_addr constant [20 x i8] c"smcd_unregister_dev\00", align 1
@smcd_unregister_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__.smcd_unregister_dev, ptr @.str.10, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smc: removing smcd device %s\0A\00", [32 x i8] zeroinitializer }, align 32
@smcd_unregister_dev._entry_ptr = internal global ptr @smcd_unregister_dev._entry, section ".printk_index", align 4
@__kstrtab_smcd_unregister_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_smcd_unregister_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_smcd_unregister_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @smcd_unregister_dev to i32), ptr @__kstrtab_smcd_unregister_dev, ptr @__kstrtabns_smcd_unregister_dev }, section "___ksymtab_gpl+smcd_unregister_dev", align 4
@__kstrtab_smcd_free_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_smcd_free_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_smcd_free_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @smcd_free_dev to i32), ptr @__kstrtab_smcd_free_dev, ptr @__kstrtabns_smcd_free_dev }, section "___ksymtab_gpl+smcd_free_dev", align 4
@smcd_handle_event.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&wrk->work)\00", [34 x i8] zeroinitializer }, align 32
@__kstrtab_smcd_handle_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_smcd_handle_event = external dso_local constant [0 x i8], align 1
@__ksymtab_smcd_handle_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @smcd_handle_event to i32), ptr @__kstrtab_smcd_handle_event, ptr @__kstrtabns_smcd_handle_event }, section "___ksymtab_gpl+smcd_handle_event", align 4
@__kstrtab_smcd_handle_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_smcd_handle_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_smcd_handle_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @smcd_handle_irq to i32), ptr @__kstrtab_smcd_handle_irq, ptr @__kstrtabns_smcd_handle_irq }, section "___ksymtab_gpl+smcd_handle_irq", align 4
@smc_gen_nl_family = external dso_local global %struct.genl_family, align 4
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 128, i64 131]
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"smcd_dev_list\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 21, i32 22 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 23, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c"smc_ism_v2_capable\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [22 x i8] c"smc_ism_v2_system_eid\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 27, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 410, i32 19 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 426, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 427, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 430, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 457, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 474, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.87 = private constant [21 x i8] c"../net/smc/smc_ism.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 514, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [22 x i8] c"../net/smc/smc_core.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 480, i32 53 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 991, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__ksymtab_smcd_alloc_dev, ptr @__ksymtab_smcd_free_dev, ptr @__ksymtab_smcd_handle_event, ptr @__ksymtab_smcd_handle_irq, ptr @__ksymtab_smcd_register_dev, ptr @__ksymtab_smcd_unregister_dev, ptr @smcd_register_dev._entry, ptr @smcd_register_dev._entry_ptr, ptr @smcd_unregister_dev._entry, ptr @smcd_unregister_dev._entry_ptr, ptr @smcd_dev_list, ptr @.str, ptr @.str.1, ptr @smc_ism_v2_capable, ptr @smc_ism_v2_system_eid, ptr @.str.2, ptr @smcd_alloc_dev.__key, ptr @.str.3, ptr @smcd_alloc_dev.__key.4, ptr @.str.5, ptr @smcd_alloc_dev.__key.6, ptr @.str.7, ptr @smcd_register_dev._rs, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @smcd_unregister_dev._rs, ptr @.str.13, ptr @smcd_handle_event.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smcd_dev_list to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_ism_v2_capable to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_ism_v2_system_eid to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smcd_alloc_dev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smcd_alloc_dev.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smcd_alloc_dev.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smcd_register_dev._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smcd_register_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smcd_unregister_dev._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smcd_unregister_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smcd_handle_event.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_ism_cantalk(i64 noundef %peer_gid, i16 noundef zeroext %vlan_id, ptr noundef %smcd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smcd, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv = zext i16 %vlan_id to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vlan_id)
  %tobool.not = icmp ne i16 %vlan_id, 0
  %cond = zext i1 %tobool.not to i32
  %call = tail call i32 %3(ptr noundef %smcd, i64 noundef %peer_gid, i32 noundef %cond, i32 noundef %conv) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_ism_write(ptr noundef %smcd, ptr nocapture noundef readonly %pos, ptr noundef %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smcd, align 8
  %move_data = getelementptr inbounds %struct.smcd_ops, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %move_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %move_data, align 4
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %index = getelementptr inbounds %struct.smc_ism_position, ptr %pos, i32 0, i32 2
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %index, align 4
  %conv = zext i8 %7 to i32
  %signal = getelementptr inbounds %struct.smc_ism_position, ptr %pos, i32 0, i32 3
  %8 = ptrtoint ptr %signal to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %signal, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool = icmp ne i8 %9, 0
  %offset = getelementptr inbounds %struct.smc_ism_position, ptr %pos, i32 0, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 8
  %call = tail call i32 %3(ptr noundef %smcd, i64 noundef %5, i32 noundef %conv, i1 noundef zeroext %tobool, i32 noundef %11, ptr noundef %data, i32 noundef %len) #13
  %12 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  ret i32 %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @smc_ism_get_system_eid(ptr nocapture noundef writeonly %eid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %.b2 = load i1, ptr @smc_ism_v2_capable, align 1
  %smc_ism_v2_system_eid. = select i1 %.b2, ptr @smc_ism_v2_system_eid, ptr null
  %0 = ptrtoint ptr %eid to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %smc_ism_v2_system_eid., ptr %eid, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @smc_ism_get_chid(ptr noundef %smcd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smcd, align 8
  %get_chid = getelementptr inbounds %struct.smcd_ops, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %get_chid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_chid, align 4
  %call = tail call zeroext i16 %3(ptr noundef %smcd) #13
  ret i16 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @smc_ism_is_v2_capable() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %.b1 = load i1, ptr @smc_ism_v2_capable, align 1
  ret i1 %.b1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_ism_set_conn(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 1
  %0 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr, align 4
  %smcd = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1
  %2 = ptrtoint ptr %smcd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smcd, align 8
  %lock = getelementptr inbounds %struct.smcd_dev, ptr %3, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %4 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lgr, align 4
  %smcd6 = getelementptr inbounds %struct.smc_link_group, ptr %5, i32 0, i32 21, i32 0, i32 1
  %6 = ptrtoint ptr %smcd6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %smcd6, align 8
  %conn7 = getelementptr inbounds %struct.smcd_dev, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %conn7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %conn7, align 4
  %rmb_desc = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 9
  %10 = ptrtoint ptr %rmb_desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmb_desc, align 4
  %12 = getelementptr inbounds %struct.smc_buf_desc, ptr %11, i32 0, i32 5
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %12, align 8
  %idxprom = zext i16 %14 to i32
  %arrayidx = getelementptr ptr, ptr %9, i32 %idxprom
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %conn, ptr %arrayidx, align 4
  %16 = load ptr, ptr %lgr, align 4
  %smcd9 = getelementptr inbounds %struct.smc_link_group, ptr %16, i32 0, i32 21, i32 0, i32 1
  %17 = ptrtoint ptr %smcd9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %smcd9, align 8
  %lock10 = getelementptr inbounds %struct.smcd_dev, ptr %18, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock10, i32 noundef %call2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_ism_unset_conn(ptr nocapture noundef readonly %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rmb_desc = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 9
  %0 = ptrtoint ptr %rmb_desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmb_desc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %lgr = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 1
  %2 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lgr, align 4
  %smcd = getelementptr inbounds %struct.smc_link_group, ptr %3, i32 0, i32 21, i32 0, i32 1
  %4 = ptrtoint ptr %smcd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smcd, align 8
  %lock = getelementptr inbounds %struct.smcd_dev, ptr %5, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %6 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lgr, align 4
  %smcd6 = getelementptr inbounds %struct.smc_link_group, ptr %7, i32 0, i32 21, i32 0, i32 1
  %8 = ptrtoint ptr %smcd6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %smcd6, align 8
  %conn7 = getelementptr inbounds %struct.smcd_dev, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %conn7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %conn7, align 4
  %12 = ptrtoint ptr %rmb_desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmb_desc, align 4
  %14 = getelementptr inbounds %struct.smc_buf_desc, ptr %13, i32 0, i32 5
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %14, align 8
  %idxprom = zext i16 %16 to i32
  %arrayidx = getelementptr ptr, ptr %11, i32 %idxprom
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx, align 4
  %18 = load ptr, ptr %lgr, align 4
  %smcd10 = getelementptr inbounds %struct.smc_link_group, ptr %18, i32 0, i32 21, i32 0, i32 1
  %19 = ptrtoint ptr %smcd10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %smcd10, align 8
  %lock11 = getelementptr inbounds %struct.smcd_dev, ptr %20, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock11, i32 noundef %call2) #13
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_ism_get_vlan(ptr noundef %smcd, i16 noundef zeroext %vlanid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vlanid)
  %tobool.not = icmp eq i16 %vlanid, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #16
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %vlanid4 = getelementptr inbounds %struct.smc_ism_vlanid, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %vlanid4 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %vlanid, ptr %vlanid4, align 8
  %refcnt = getelementptr inbounds %struct.smc_ism_vlanid, ptr %call7.i.i, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  %2 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %refcnt, align 4
  %lock = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 5
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %vlan10 = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 7
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end3
  %vlan.0.in = phi ptr [ %vlan10, %if.end3 ], [ %vlan.0, %for.body.for.cond_crit_edge ]
  %3 = ptrtoint ptr %vlan.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %vlan.0 = load ptr, ptr %vlan.0.in, align 4
  %cmp13.not = icmp eq ptr %vlan.0, %vlan10
  br i1 %cmp13.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %vlanid15 = getelementptr inbounds %struct.smc_ism_vlanid, ptr %vlan.0, i32 0, i32 1
  %4 = ptrtoint ptr %vlanid15 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vlanid15, align 4
  %cmp18 = icmp eq i16 %5, %vlanid
  br i1 %cmp18, label %if.then20, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then20:                                        ; preds = %for.body
  %refcnt21 = getelementptr inbounds %struct.smc_ism_vlanid, ptr %vlan.0, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt21, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %refcnt21, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt21, ptr %refcnt21, i32 1, ptr elementtype(i32) %refcnt21) #13, !srcloc !64
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then20.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !65

if.then20.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then20
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !66

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then20.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then20.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt21, i32 noundef %.sink.i.i.i) #13
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %out

for.end:                                          ; preds = %for.cond
  %8 = ptrtoint ptr %smcd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %smcd, align 8
  %add_vlan_id = getelementptr inbounds %struct.smcd_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %add_vlan_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add_vlan_id, align 4
  %conv28 = zext i16 %vlanid to i64
  %call29 = tail call i32 %11(ptr noundef %smcd, i64 noundef %conv28) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %out

if.end32:                                         ; preds = %for.end
  %prev.i = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %13, ptr noundef %vlan10) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end32.out_crit_edge

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i.i:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %vlan10, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call7.i.i, ptr %13, align 4
  br label %out

out:                                              ; preds = %if.end.i.i, %if.end32.out_crit_edge, %if.then31, %refcount_inc.exit
  %rc.0 = phi i32 [ 0, %refcount_inc.exit ], [ -5, %if.then31 ], [ 0, %if.end32.out_crit_edge ], [ 0, %if.end.i.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_ism_put_vlan(ptr noundef %smcd, i16 noundef zeroext %vlanid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vlanid)
  %tobool.not = icmp eq i16 %vlanid, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %vlan5 = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 7
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.body1
  %vlan.0.in = phi ptr [ %vlan5, %do.body1 ], [ %vlan.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %vlan.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %vlan.0 = load ptr, ptr %vlan.0.in, align 4
  %cmp8.not = icmp eq ptr %vlan.0, %vlan5
  br i1 %cmp8.not, label %for.cond.out_crit_edge, label %for.body

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.body:                                         ; preds = %for.cond
  %vlanid10 = getelementptr inbounds %struct.smc_ism_vlanid, ptr %vlan.0, i32 0, i32 1
  %1 = ptrtoint ptr %vlanid10 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %vlanid10, align 4
  %cmp13 = icmp eq i16 %2, %vlanid
  br i1 %cmp13, label %if.then15, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then15:                                        ; preds = %for.body
  %refcnt = getelementptr inbounds %struct.smc_ism_vlanid, ptr %vlan.0, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !67
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #13
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #13, !srcloc !68
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end27, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.out_crit_edge, label %if.then10.i.i.i, !prof !66

if.end5.i.i.i.out_crit_edge:                      ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #13
  br label %out

if.end27:                                         ; preds = %if.then15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !69
  %4 = ptrtoint ptr %smcd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smcd, align 8
  %del_vlan_id = getelementptr inbounds %struct.smcd_ops, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %del_vlan_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %del_vlan_id, align 4
  %conv28 = zext i16 %vlanid to i64
  %call29 = tail call i32 %7(ptr noundef %smcd, i64 noundef %conv28) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  %spec.select = select i1 %tobool30.not, i32 0, i32 -5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vlan.0) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end27.list_del.exit_crit_edge

if.end27.list_del.exit_crit_edge:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %vlan.0, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %vlan.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vlan.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end27.list_del.exit_crit_edge
  %14 = ptrtoint ptr %vlan.0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %vlan.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %vlan.0, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %vlan.0) #13
  br label %out

out:                                              ; preds = %list_del.exit, %if.then10.i.i.i, %if.end5.i.i.i.out_crit_edge, %for.cond.out_crit_edge
  %rc.1 = phi i32 [ %spec.select, %list_del.exit ], [ 0, %if.end5.i.i.i.out_crit_edge ], [ 0, %if.then10.i.i.i ], [ -2, %for.cond.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %out ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_ism_unregister_dmb(ptr noundef %smcd, ptr nocapture noundef %dmb_desc) local_unnamed_addr #0 align 64 {
entry:
  %dmb = alloca %struct.smcd_dmb, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %dmb) #13
  %dma_addr = getelementptr inbounds %struct.smc_buf_desc, ptr %dmb_desc, i32 0, i32 5, i32 0, i32 2
  %0 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.smc_buf_desc, ptr %dmb_desc, i32 0, i32 5
  %3 = getelementptr inbounds i8, ptr %dmb, i32 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 24)
  %token = getelementptr inbounds %struct.smc_buf_desc, ptr %dmb_desc, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %token to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %token, align 8
  %7 = ptrtoint ptr %dmb to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %dmb, align 8
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %2, align 8
  %conv = zext i16 %9 to i32
  %sba_idx1 = getelementptr inbounds %struct.smcd_dmb, ptr %dmb, i32 0, i32 3
  %10 = ptrtoint ptr %sba_idx1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %sba_idx1, align 4
  %cpu_addr = getelementptr inbounds %struct.smc_buf_desc, ptr %dmb_desc, i32 0, i32 1
  %11 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpu_addr, align 8
  %cpu_addr2 = getelementptr inbounds %struct.smcd_dmb, ptr %dmb, i32 0, i32 6
  %13 = ptrtoint ptr %cpu_addr2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %cpu_addr2, align 8
  %dma_addr4 = getelementptr inbounds %struct.smcd_dmb, ptr %dmb, i32 0, i32 7
  %14 = ptrtoint ptr %dma_addr4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %1, ptr %dma_addr4, align 4
  %len = getelementptr inbounds %struct.smc_buf_desc, ptr %dmb_desc, i32 0, i32 3
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 8
  %dmb_len = getelementptr inbounds %struct.smcd_dmb, ptr %dmb, i32 0, i32 2
  %17 = ptrtoint ptr %dmb_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %dmb_len, align 8
  %18 = ptrtoint ptr %smcd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %smcd, align 8
  %unregister_dmb = getelementptr inbounds %struct.smcd_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %unregister_dmb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %unregister_dmb, align 4
  %call = call i32 %21(ptr noundef %smcd, ptr noundef nonnull %dmb) #13
  %22 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.if.then7_crit_edge
    i32 65535, label %if.end.if.then7_crit_edge23
  ]

if.end.if.then7_crit_edge23:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then7:                                         ; preds = %if.end.if.then7_crit_edge, %if.end.if.then7_crit_edge23
  %23 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %cpu_addr, align 8
  %24 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %dma_addr, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call, %if.then7 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %dmb) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_ism_register_dmb(ptr nocapture noundef readonly %lgr, i32 noundef %dmb_len, ptr nocapture noundef %dmb_desc) local_unnamed_addr #0 align 64 {
entry:
  %dmb = alloca %struct.smcd_dmb, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %dmb) #13
  %0 = call ptr @memset(ptr %dmb, i32 0, i32 40)
  %dmb_len1 = getelementptr inbounds %struct.smcd_dmb, ptr %dmb, i32 0, i32 2
  %1 = ptrtoint ptr %dmb_len1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %dmb_len, ptr %dmb_len1, align 8
  %2 = getelementptr inbounds %struct.smc_buf_desc, ptr %dmb_desc, i32 0, i32 5
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %2, align 8
  %conv = zext i16 %4 to i32
  %sba_idx2 = getelementptr inbounds %struct.smcd_dmb, ptr %dmb, i32 0, i32 3
  %5 = ptrtoint ptr %sba_idx2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %sba_idx2, align 4
  %vlan_id = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 4
  %6 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vlan_id, align 4
  %conv3 = zext i16 %7 to i32
  %vlan_id4 = getelementptr inbounds %struct.smcd_dmb, ptr %dmb, i32 0, i32 5
  %8 = ptrtoint ptr %vlan_id4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv3, ptr %vlan_id4, align 4
  %9 = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %9, align 8
  %rgid = getelementptr inbounds %struct.smcd_dmb, ptr %dmb, i32 0, i32 1
  %12 = ptrtoint ptr %rgid to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %rgid, align 8
  %smcd = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1
  %13 = ptrtoint ptr %smcd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %smcd, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %register_dmb = getelementptr inbounds %struct.smcd_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %register_dmb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %register_dmb, align 4
  %call = call i32 %18(ptr noundef %14, ptr noundef nonnull %dmb) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %sba_idx2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sba_idx2, align 4
  %conv7 = trunc i32 %20 to i16
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv7, ptr %2, align 8
  %22 = ptrtoint ptr %dmb to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %dmb, align 8
  %token = getelementptr inbounds %struct.smc_buf_desc, ptr %dmb_desc, i32 0, i32 5, i32 0, i32 1
  %24 = ptrtoint ptr %token to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %token, align 8
  %cpu_addr = getelementptr inbounds %struct.smcd_dmb, ptr %dmb, i32 0, i32 6
  %25 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cpu_addr, align 8
  %cpu_addr9 = getelementptr inbounds %struct.smc_buf_desc, ptr %dmb_desc, i32 0, i32 1
  %27 = ptrtoint ptr %cpu_addr9 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %cpu_addr9, align 8
  %dma_addr = getelementptr inbounds %struct.smcd_dmb, ptr %dmb, i32 0, i32 7
  %28 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_addr, align 4
  %dma_addr10 = getelementptr inbounds %struct.smc_buf_desc, ptr %dmb_desc, i32 0, i32 5, i32 0, i32 2
  %30 = ptrtoint ptr %dma_addr10 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %dma_addr10, align 8
  %31 = ptrtoint ptr %dmb_len1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dmb_len1, align 8
  %len = getelementptr inbounds %struct.smc_buf_desc, ptr %dmb_desc, i32 0, i32 3
  %33 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %dmb) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smcd_nl_get_device(ptr noundef %skb, ptr nocapture noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i104.i.i = alloca i8, align 1
  %tmp.i98.i.i = alloca i16, align 2
  %tmp.i96.i.i = alloca i16, align 2
  %tmp.i94.i.i = alloca i16, align 2
  %tmp.i92.i.i = alloca i32, align 4
  %tmp.i90.i.i = alloca i8, align 1
  %tmp.i.i.i = alloca i32, align 4
  %smc_pnet.i.i = alloca [17 x i8], align 1
  %smc_pci_dev.i.i = alloca %struct.smc_pci_dev, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 1), i32 noundef 0) #13
  %.pn26.i = load ptr, ptr @smcd_dev_list, align 4
  %cmp.not27.i = icmp eq ptr %.pn26.i, @smcd_dev_list
  br i1 %cmp.not27.i, label %entry.smc_nl_prep_smcd_dev.exit_crit_edge, label %for.body.lr.ph.i

entry.smc_nl_prep_smcd_dev.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %smc_nl_prep_smcd_dev.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %3 = getelementptr inbounds [17 x i8], ptr %smc_pnet.i.i, i32 0, i32 16
  %nlh3.i.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %pci_vendor.i.i.i = getelementptr inbounds %struct.smc_pci_dev, ptr %smc_pci_dev.i.i, i32 0, i32 2
  %pci_device.i.i.i = getelementptr inbounds %struct.smc_pci_dev, ptr %smc_pci_dev.i.i, i32 0, i32 3
  %pci_id.i.i.i = getelementptr inbounds %struct.smc_pci_dev, ptr %smc_pci_dev.i.i, i32 0, i32 4
  %pci_pchid.i.i = getelementptr inbounds %struct.smc_pci_dev, ptr %smc_pci_dev.i.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %next7.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn30.i = phi ptr [ %.pn26.i, %for.body.lr.ph.i ], [ %.pn.i, %next7.i.for.body.i_crit_edge ]
  %num.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %next7.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %num.028.i, i32 %2)
  %cmp3.i = icmp slt i32 %num.028.i, %2
  br i1 %cmp3.i, label %for.body.i.next7.i_crit_edge, label %if.end.i

for.body.i.next7.i_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %next7.i

if.end.i:                                         ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %smc_pnet.i.i) #13
  %4 = call ptr @memset(ptr %smc_pnet.i.i, i32 255, i32 17)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %smc_pci_dev.i.i) #13
  %5 = call ptr @memset(ptr %smc_pci_dev.i.i, i32 255, i32 28)
  %6 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cb, align 4
  %portid.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 12
  %8 = ptrtoint ptr %portid.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %portid.i.i, align 4
  %10 = ptrtoint ptr %nlh3.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nlh3.i.i, align 4
  %nlmsg_seq.i.i = getelementptr inbounds %struct.nlmsghdr, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %nlmsg_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nlmsg_seq.i.i, align 4
  %call.i.i = call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %9, i32 noundef %13, ptr noundef nonnull @smc_gen_nl_family, i32 noundef 2, i8 noundef zeroext 5) #13
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.smc_nl_handle_smcd_dev.exit.thread.i_crit_edge, label %if.end.i.i

if.end.i.smc_nl_handle_smcd_dev.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smc_nl_handle_smcd_dev.exit.thread.i

if.end.i.i:                                       ; preds = %if.end.i
  %14 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %call1.i.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32773, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call1.i.i.i.i, 0
  %tobool5.not125.i.i = icmp eq ptr %15, null
  %tobool5.not.i.i = select i1 %cmp.i.i.i.i, i1 true, i1 %tobool5.not125.i.i
  br i1 %tobool5.not.i.i, label %if.end.i.i.if.then.i.i119.i.i_crit_edge, label %if.end7.i.i

if.end.i.i.if.then.i.i119.i.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i119.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %lgr_cnt.i.i = getelementptr i8, ptr %.pn30.i, i32 140
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %lgr_cnt.i.i, i32 noundef 4) #13
  %16 = ptrtoint ptr %lgr_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %lgr_cnt.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #13
  %18 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %tmp.i.i.i, align 4
  %call.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool10.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end12.i.i, label %if.end7.i.i.if.then.i.i.i.i_crit_edge

if.end7.i.i.if.then.i.i.i.i_crit_edge:            ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i.i

if.end12.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.i = icmp sgt i32 %17, 0
  %conv13.i.i = zext i1 %cmp.i.i to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i90.i.i) #13
  %19 = ptrtoint ptr %tmp.i90.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv13.i.i, ptr %tmp.i90.i.i, align 1
  %call.i91.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i90.i.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i90.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91.i.i)
  %tobool15.not.i.i = icmp eq i32 %call.i91.i.i, 0
  br i1 %tobool15.not.i.i, label %if.end17.i.i, label %if.end12.i.i.if.then.i.i.i.i_crit_edge

if.end12.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i.i

if.end17.i.i:                                     ; preds = %if.end12.i.i
  %20 = call ptr @memset(ptr %smc_pci_dev.i.i, i32 0, i32 28)
  %parent.i.i = getelementptr i8, ptr %.pn30.i, i32 -808
  %21 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent.i.i, align 8
  %vendor.i.i.i = getelementptr i8, ptr %22, i32 -104
  %23 = ptrtoint ptr %vendor.i.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vendor.i.i.i, align 8
  %25 = ptrtoint ptr %pci_vendor.i.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %pci_vendor.i.i.i, align 2
  %device.i.i.i = getelementptr i8, ptr %22, i32 -102
  %26 = ptrtoint ptr %device.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %device.i.i.i, align 2
  %28 = ptrtoint ptr %pci_device.i.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %pci_device.i.i.i, align 4
  %init_name.i.i.i.i.i = getelementptr i8, ptr %22, i32 144
  %29 = ptrtoint ptr %init_name.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end17.i.i.smc_set_pci_values.exit.i.i_crit_edge

if.end17.i.i.smc_set_pci_values.exit.i.i_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smc_set_pci_values.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %22, align 4
  br label %smc_set_pci_values.exit.i.i

smc_set_pci_values.exit.i.i:                      ; preds = %if.end.i.i.i.i.i, %if.end17.i.i.smc_set_pci_values.exit.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi ptr [ %32, %if.end.i.i.i.i.i ], [ %30, %if.end17.i.i.smc_set_pci_values.exit.i.i_crit_edge ]
  %call1.i.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %pci_id.i.i.i, i32 noundef 16, ptr noundef nonnull @.str.15, ptr noundef %retval.0.i.i.i.i.i) #13
  %33 = ptrtoint ptr %smc_pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %smc_pci_dev.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i92.i.i) #13
  %35 = ptrtoint ptr %tmp.i92.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %tmp.i92.i.i, align 4
  %call.i93.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i92.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i92.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i)
  %tobool19.not.i.i = icmp eq i32 %call.i93.i.i, 0
  br i1 %tobool19.not.i.i, label %if.end21.i.i, label %smc_set_pci_values.exit.i.i.if.then.i.i.i.i_crit_edge

smc_set_pci_values.exit.i.i.if.then.i.i.i.i_crit_edge: ; preds = %smc_set_pci_values.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i.i

if.end21.i.i:                                     ; preds = %smc_set_pci_values.exit.i.i
  %36 = ptrtoint ptr %pci_pchid.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %pci_pchid.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i94.i.i) #13
  %38 = ptrtoint ptr %tmp.i94.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %tmp.i94.i.i, align 2
  %call.i95.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %tmp.i94.i.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i94.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95.i.i)
  %tobool23.not.i.i = icmp eq i32 %call.i95.i.i, 0
  br i1 %tobool23.not.i.i, label %if.end25.i.i, label %if.end21.i.i.if.then.i.i.i.i_crit_edge

if.end21.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i.i

if.end25.i.i:                                     ; preds = %if.end21.i.i
  %39 = ptrtoint ptr %pci_vendor.i.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %pci_vendor.i.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i96.i.i) #13
  %41 = ptrtoint ptr %tmp.i96.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %tmp.i96.i.i, align 2
  %call.i97.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 2, ptr noundef nonnull %tmp.i96.i.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i96.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97.i.i)
  %tobool27.not.i.i = icmp eq i32 %call.i97.i.i, 0
  br i1 %tobool27.not.i.i, label %if.end29.i.i, label %if.end25.i.i.if.then.i.i.i.i_crit_edge

if.end25.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i.i

if.end29.i.i:                                     ; preds = %if.end25.i.i
  %42 = ptrtoint ptr %pci_device.i.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %pci_device.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i98.i.i) #13
  %44 = ptrtoint ptr %tmp.i98.i.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %tmp.i98.i.i, align 2
  %call.i99.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 2, ptr noundef nonnull %tmp.i98.i.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i98.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99.i.i)
  %tobool31.not.i.i = icmp eq i32 %call.i99.i.i, 0
  br i1 %tobool31.not.i.i, label %if.end33.i.i, label %if.end29.i.i.if.then.i.i.i.i_crit_edge

if.end29.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i.i

if.end33.i.i:                                     ; preds = %if.end29.i.i
  %call.i5.i = call i32 @strlen(ptr noundef %pci_id.i.i.i) #17
  %add.i6.i = add i32 %call.i5.i, 1
  %call1.i7.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef %add.i6.i, ptr noundef %pci_id.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i)
  %tobool35.not.i.i = icmp eq i32 %call1.i7.i, 0
  br i1 %tobool35.not.i.i, label %if.end37.i.i, label %if.end33.i.i.if.then.i.i.i.i_crit_edge

if.end33.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i.i

if.end37.i.i:                                     ; preds = %if.end33.i.i
  %45 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %call1.i.i101.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32776, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i101.i.i)
  %cmp.i.i102.i.i = icmp slt i32 %call1.i.i101.i.i, 0
  %tobool39.not126.i.i = icmp eq ptr %46, null
  %tobool39.not.i.i = select i1 %cmp.i.i102.i.i, i1 true, i1 %tobool39.not126.i.i
  br i1 %tobool39.not.i.i, label %if.end37.i.i.if.then.i.i.i.i_crit_edge, label %if.end41.i.i

if.end37.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i.i

if.end41.i.i:                                     ; preds = %if.end37.i.i
  %pnetid_by_user.i.i = getelementptr i8, ptr %.pn30.i, i32 84
  %47 = ptrtoint ptr %pnetid_by_user.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %pnetid_by_user.i.i, align 4, !range !70
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i104.i.i) #13
  %49 = ptrtoint ptr %tmp.i104.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %tmp.i104.i.i, align 1
  %call.i105.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i104.i.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i104.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105.i.i)
  %tobool45.not.i.i = icmp eq i32 %call.i105.i.i, 0
  br i1 %tobool45.not.i.i, label %if.end47.i.i, label %if.end41.i.i.if.then.i.i.i_crit_edge

if.end41.i.i.if.then.i.i.i_crit_edge:             ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i

if.end47.i.i:                                     ; preds = %if.end41.i.i
  %pnetid.i.i = getelementptr i8, ptr %.pn30.i, i32 68
  %50 = call ptr @memcpy(ptr %smc_pnet.i.i, ptr %pnetid.i.i, i32 16)
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %3, align 1
  %call.i4.i = call i32 @strlen(ptr noundef nonnull %smc_pnet.i.i) #17
  %add.i.i = add i32 %call.i4.i, 1
  %call1.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef %add.i.i, ptr noundef nonnull %smc_pnet.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool52.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool52.not.i.i, label %smc_nl_handle_smcd_dev.exit.i, label %if.end47.i.i.if.then.i.i.i_crit_edge

if.end47.i.i.if.then.i.i.i_crit_edge:             ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end47.i.i.if.then.i.i.i_crit_edge, %if.end41.i.i.if.then.i.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %52 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %53, %46
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge, !prof !65

if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nla_nest_cancel.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 991, i32 noundef 9, ptr noundef null) #13
  br label %nla_nest_cancel.exit.i

nla_nest_cancel.exit.i:                           ; preds = %do.end.i.i.i, %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge
  %54 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i1.i = ptrtoint ptr %46 to i32
  %sub.ptr.rhs.cast.i.i2.i = ptrtoint ptr %55 to i32
  %sub.ptr.sub.i.i3.i = sub i32 %sub.ptr.lhs.cast.i.i1.i, %sub.ptr.rhs.cast.i.i2.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i3.i) #13
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %nla_nest_cancel.exit.i, %if.end37.i.i.if.then.i.i.i.i_crit_edge, %if.end33.i.i.if.then.i.i.i.i_crit_edge, %if.end29.i.i.if.then.i.i.i.i_crit_edge, %if.end25.i.i.if.then.i.i.i.i_crit_edge, %if.end21.i.i.if.then.i.i.i.i_crit_edge, %smc_set_pci_values.exit.i.i.if.then.i.i.i.i_crit_edge, %if.end12.i.i.if.then.i.i.i.i_crit_edge, %if.end7.i.i.if.then.i.i.i.i_crit_edge
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %56 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i112.i.i = icmp ugt ptr %57, %15
  br i1 %cmp.i.i112.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.nla_nest_cancel.exit.i.i_crit_edge, !prof !65

if.then.i.i.i.i.nla_nest_cancel.exit.i.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nla_nest_cancel.exit.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 991, i32 noundef 9, ptr noundef null) #13
  br label %nla_nest_cancel.exit.i.i

nla_nest_cancel.exit.i.i:                         ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.nla_nest_cancel.exit.i.i_crit_edge
  %58 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i113.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i.i114.i.i = ptrtoint ptr %59 to i32
  %sub.ptr.sub.i.i115.i.i = sub i32 %sub.ptr.lhs.cast.i.i113.i.i, %sub.ptr.rhs.cast.i.i114.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i115.i.i) #13
  br label %if.then.i.i119.i.i

if.then.i.i119.i.i:                               ; preds = %nla_nest_cancel.exit.i.i, %if.end.i.i.if.then.i.i119.i.i_crit_edge
  %data.i.i117.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %60 = ptrtoint ptr %data.i.i117.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i.i117.i.i, align 4
  %cmp.i.i118.i.i = icmp ugt ptr %61, %call.i.i
  br i1 %cmp.i.i118.i.i, label %do.end.i.i120.i.i, label %if.then.i.i119.i.i.nlmsg_cancel.exit.i.i_crit_edge, !prof !65

if.then.i.i119.i.i.nlmsg_cancel.exit.i.i_crit_edge: ; preds = %if.then.i.i119.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %nlmsg_cancel.exit.i.i

do.end.i.i120.i.i:                                ; preds = %if.then.i.i119.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 991, i32 noundef 9, ptr noundef null) #13
  br label %nlmsg_cancel.exit.i.i

nlmsg_cancel.exit.i.i:                            ; preds = %do.end.i.i120.i.i, %if.then.i.i119.i.i.nlmsg_cancel.exit.i.i_crit_edge
  %62 = ptrtoint ptr %data.i.i117.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data.i.i117.i.i, align 4
  %sub.ptr.lhs.cast.i.i121.i.i = ptrtoint ptr %call.i.i to i32
  %sub.ptr.rhs.cast.i.i122.i.i = ptrtoint ptr %63 to i32
  %sub.ptr.sub.i.i123.i.i = sub i32 %sub.ptr.lhs.cast.i.i121.i.i, %sub.ptr.rhs.cast.i.i122.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i123.i.i) #13
  br label %smc_nl_handle_smcd_dev.exit.thread.i

smc_nl_handle_smcd_dev.exit.thread.i:             ; preds = %nlmsg_cancel.exit.i.i, %if.end.i.smc_nl_handle_smcd_dev.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %smc_pci_dev.i.i) #13
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %smc_pnet.i.i) #13
  br label %smc_nl_prep_smcd_dev.exit

smc_nl_handle_smcd_dev.exit.i:                    ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %64 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %65 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %46 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %66 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv.i.i.i, ptr %46, align 2
  %67 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i107.i.i = ptrtoint ptr %67 to i32
  %sub.ptr.rhs.cast.i108.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i109.i.i = sub i32 %sub.ptr.lhs.cast.i107.i.i, %sub.ptr.rhs.cast.i108.i.i
  %conv.i110.i.i = trunc i32 %sub.ptr.sub.i109.i.i to i16
  %68 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv.i110.i.i, ptr %15, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %call.i.i, i32 -20
  %69 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %69 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i.i.i to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %70 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %sub.ptr.sub.i.i.i.i, ptr %add.ptr1.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %smc_pci_dev.i.i) #13
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %smc_pnet.i.i) #13
  br label %next7.i

next7.i:                                          ; preds = %smc_nl_handle_smcd_dev.exit.i, %for.body.i.next7.i_crit_edge
  %inc.i = add i32 %num.028.i, 1
  %71 = ptrtoint ptr %.pn30.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pn.i = load ptr, ptr %.pn30.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @smcd_dev_list
  br i1 %cmp.not.i, label %next7.i.smc_nl_prep_smcd_dev.exit_crit_edge, label %next7.i.for.body.i_crit_edge

next7.i.for.body.i_crit_edge:                     ; preds = %next7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

next7.i.smc_nl_prep_smcd_dev.exit_crit_edge:      ; preds = %next7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smc_nl_prep_smcd_dev.exit

smc_nl_prep_smcd_dev.exit:                        ; preds = %next7.i.smc_nl_prep_smcd_dev.exit_crit_edge, %smc_nl_handle_smcd_dev.exit.thread.i, %entry.smc_nl_prep_smcd_dev.exit_crit_edge
  %num.014.i = phi i32 [ %num.028.i, %smc_nl_handle_smcd_dev.exit.thread.i ], [ 0, %entry.smc_nl_prep_smcd_dev.exit_crit_edge ], [ %inc.i, %next7.i.smc_nl_prep_smcd_dev.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 1)) #13
  %72 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %num.014.i, ptr %0, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %73 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len, align 4
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_ism_signal_shutdown(ptr nocapture noundef readonly %lgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %peer_shutdown = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %peer_shutdown to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %peer_shutdown, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21
  %id = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 9
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %ev_info.sroa.0.0.copyload = load i32, ptr %id, align 8
  %vlan_id = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 4
  %3 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vlan_id, align 4
  %smcd = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 1
  %5 = ptrtoint ptr %smcd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smcd, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %signal_event = getelementptr inbounds %struct.smcd_ops, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %signal_event to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %signal_event, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %1, align 8
  %ev_info.sroa.5.0.insert.ext = zext i16 %4 to i64
  %ev_info.sroa.5.0.insert.shift = shl nuw nsw i64 %ev_info.sroa.5.0.insert.ext, 16
  %ev_info.sroa.0.0.insert.ext = zext i32 %ev_info.sroa.0.0.copyload to i64
  %ev_info.sroa.0.0.insert.shift = shl nuw i64 %ev_info.sroa.0.0.insert.ext, 32
  %ev_info.sroa.5.0.insert.insert = or i64 %ev_info.sroa.0.0.insert.shift, %ev_info.sroa.5.0.insert.shift
  %ev_info.sroa.0.0.insert.insert = or i64 %ev_info.sroa.5.0.insert.insert, 1
  %call = tail call i32 %10(ptr noundef %6, i64 noundef %12, i32 noundef 1, i32 noundef 128, i64 noundef %ev_info.sroa.0.0.insert.insert) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @smcd_alloc_dev(ptr noundef %parent, ptr noundef %name, ptr noundef %ops, i32 noundef %max_dmbs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1152) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %max_dmbs, i32 4) #13
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !65

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %conn55 = getelementptr inbounds %struct.smcd_dev, ptr %call7.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %conn55 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %conn55, align 4
  br label %if.then4

if.end7.i.i:                                      ; preds = %if.end
  %4 = extractvalue { i32, i1 } %1, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #18
  %conn = getelementptr inbounds %struct.smcd_dev, ptr %call7.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %conn to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8.i.i, ptr %conn, align 4
  %tobool3.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool3.not, label %if.end7.i.i.if.then4_crit_edge, label %if.end5

if.end7.i.i.if.then4_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

if.then4:                                         ; preds = %if.end7.i.i.if.then4_crit_edge, %kcalloc.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

if.end5:                                          ; preds = %if.end7.i.i
  %call6 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.2, i32 noundef 655370, i32 noundef 1, ptr noundef %name) #13
  %event_wq = getelementptr inbounds %struct.smcd_dev, ptr %call7.i.i, i32 0, i32 8
  %6 = ptrtoint ptr %event_wq to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6, ptr %event_wq, align 8
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %conn, align 4
  tail call void @kfree(ptr noundef %8) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.smcd_dev, ptr %call7.i.i, i32 0, i32 1
  %parent12 = getelementptr inbounds %struct.smcd_dev, ptr %call7.i.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %parent12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %parent, ptr %parent12, align 8
  %release = getelementptr inbounds %struct.smcd_dev, ptr %call7.i.i, i32 0, i32 1, i32 35
  %10 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @smcd_release, ptr %release, align 4
  tail call void @device_initialize(ptr noundef %dev) #13
  %call16 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev, ptr noundef %name) #13
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ops, ptr %call7.i.i, align 8
  %call21 = tail call i32 @smc_pnetid_by_table_smcd(ptr noundef nonnull %call7.i.i) #13
  %lock = getelementptr inbounds %struct.smcd_dev, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @smcd_alloc_dev.__key, i16 noundef signext 3) #13
  %lgr_lock = getelementptr inbounds %struct.smcd_dev, ptr %call7.i.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %lgr_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @smcd_alloc_dev.__key.4, i16 noundef signext 3) #13
  %vlan = getelementptr inbounds %struct.smcd_dev, ptr %call7.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %vlan to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %vlan, ptr %vlan, align 8
  %prev.i = getelementptr inbounds %struct.smcd_dev, ptr %call7.i.i, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %vlan, ptr %prev.i, align 4
  %lgr_list = getelementptr inbounds %struct.smcd_dev, ptr %call7.i.i, i32 0, i32 11
  %14 = ptrtoint ptr %lgr_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %lgr_list, ptr %lgr_list, align 8
  %prev.i53 = getelementptr inbounds %struct.smcd_dev, ptr %call7.i.i, i32 0, i32 11, i32 1
  %15 = ptrtoint ptr %prev.i53 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %lgr_list, ptr %prev.i53, align 4
  %lgrs_deleted = getelementptr inbounds %struct.smcd_dev, ptr %call7.i.i, i32 0, i32 14
  tail call void @__init_waitqueue_head(ptr noundef %lgrs_deleted, ptr noundef nonnull @.str.7, ptr noundef nonnull @smcd_alloc_dev.__key.6) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end11 ], [ null, %if.then9 ], [ null, %if.then4 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smcd_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %conn = getelementptr i8, ptr %dev, i32 996
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn, align 4
  tail call void @kfree(ptr noundef %1) #13
  tail call void @kfree(ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_pnetid_by_table_smcd(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smcd_register_dev(ptr noundef %smcd) #0 align 64 {
entry:
  %system_eid = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 1), i32 noundef 0) #13
  %0 = load volatile ptr, ptr @smcd_dev_list, align 4
  %cmp.i.not = icmp eq ptr %0, @smcd_dev_list
  br i1 %cmp.i.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %system_eid) #13
  %1 = ptrtoint ptr %system_eid to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %system_eid, align 4
  %2 = ptrtoint ptr %smcd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smcd, align 8
  %get_system_eid = getelementptr inbounds %struct.smcd_ops, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %get_system_eid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_system_eid, align 4
  call void %5(ptr noundef %smcd, ptr noundef nonnull %system_eid) #13
  %6 = ptrtoint ptr %system_eid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %system_eid, align 4
  %arrayidx = getelementptr i8, ptr %7, i32 24
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %9)
  %cmp.not = icmp eq i8 %9, 48
  br i1 %cmp.not, label %lor.lhs.false, label %if.then.if.then6_crit_edge

if.then.if.then6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.then
  %arrayidx2 = getelementptr i8, ptr %7, i32 28
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %11)
  %cmp4.not = icmp eq i8 %11, 48
  br i1 %cmp4.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then6_crit_edge

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.then.if.then6_crit_edge
  store i1 true, ptr @smc_ism_v2_capable, align 1
  %12 = call ptr @memcpy(ptr @smc_ism_v2_system_eid, ptr %7, i32 32)
  br label %if.end

if.end:                                           ; preds = %if.then6, %lor.lhs.false.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %system_eid) #13
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %pnetid = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 9
  %13 = ptrtoint ptr %pnetid to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pnetid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool9.not = icmp eq i8 %14, 0
  %list11 = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 4
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end7
  %15 = load ptr, ptr getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 0, i32 1), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list11, ptr noundef %15, ptr noundef nonnull @smcd_dev_list) #13
  br i1 %call.i.i, label %if.then10.if.end12.sink.split_crit_edge, label %if.then10.if.end12_crit_edge

if.then10.if.end12_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then10.if.end12.sink.split_crit_edge:          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.sink.split

if.else:                                          ; preds = %if.end7
  %16 = load ptr, ptr @smcd_dev_list, align 4
  %call.i.i38 = call zeroext i1 @__list_add_valid(ptr noundef %list11, ptr noundef nonnull @smcd_dev_list, ptr noundef %16) #13
  br i1 %call.i.i38, label %if.end.i.i40, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.end.i.i40:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  br label %if.end12.sink.split

if.end12.sink.split:                              ; preds = %if.end.i.i40, %if.then10.if.end12.sink.split_crit_edge
  %prev1.i.i.sink = phi ptr [ %prev1.i.i, %if.end.i.i40 ], [ getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 0, i32 1), %if.then10.if.end12.sink.split_crit_edge ]
  %.sink = phi ptr [ %16, %if.end.i.i40 ], [ @smcd_dev_list, %if.then10.if.end12.sink.split_crit_edge ]
  %smcd_dev_list.sink43 = phi ptr [ @smcd_dev_list, %if.end.i.i40 ], [ %15, %if.then10.if.end12.sink.split_crit_edge ]
  %17 = ptrtoint ptr %prev1.i.i.sink to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list11, ptr %prev1.i.i.sink, align 4
  %18 = ptrtoint ptr %list11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %.sink, ptr %list11, align 4
  %prev3.i.i39 = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %prev3.i.i39 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %smcd_dev_list.sink43, ptr %prev3.i.i39, align 4
  %20 = ptrtoint ptr %smcd_dev_list.sink43 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %list11, ptr %smcd_dev_list.sink43, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %if.else.if.end12_crit_edge, %if.then10.if.end12_crit_edge
  call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 1)) #13
  %call13 = call i32 @___ratelimit(ptr noundef nonnull @smcd_register_dev._rs, ptr noundef nonnull @__func__.smcd_register_dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.if.end21_crit_edge, label %do.end

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

do.end:                                           ; preds = %if.end12
  %init_name.i = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 1
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %24, %if.end.i ], [ %22, %do.end.dev_name.exit_crit_edge ]
  %pnetid_by_user = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 10
  %25 = ptrtoint ptr %pnetid_by_user to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pnetid_by_user, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool18.not = icmp eq i8 %26, 0
  %cond = select i1 %tobool18.not, ptr @.str.12, ptr @.str.11
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %retval.0.i, ptr noundef %pnetid, ptr noundef nonnull %cond) #19
  br label %if.end21

if.end21:                                         ; preds = %dev_name.exit, %if.end12.if.end21_crit_edge
  %dev22 = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 1
  %call23 = call i32 @device_add(ptr noundef %dev22) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end21.if.end27_crit_edge, label %if.then25

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then25:                                        ; preds = %if.end21
  call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 1), i32 noundef 0) #13
  %list26 = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 4
  %call.i.i41 = call zeroext i1 @__list_del_entry_valid(ptr noundef %list26) #13
  br i1 %call.i.i41, label %if.end.i.i42, label %if.then25.list_del.exit_crit_edge

if.then25.list_del.exit_crit_edge:                ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i42:                                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %list26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %list26, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i42, %if.then25.list_del.exit_crit_edge
  %33 = ptrtoint ptr %list26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %list26, align 4
  %prev.i = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 1)) #13
  br label %if.end27

if.end27:                                         ; preds = %list_del.exit, %if.end21.if.end27_crit_edge
  ret i32 %call23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smcd_unregister_dev(ptr noundef %smcd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @smcd_unregister_dev._rs, ptr noundef nonnull @__func__.smcd_unregister_dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %do.end.dev_name.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %retval.0.i) #19
  br label %if.end

if.end:                                           ; preds = %dev_name.exit, %entry.if.end_crit_edge
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 1), i32 noundef 0) #13
  %list = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %prev.i3.i, align 4
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 1)) #13
  %going_away = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 15
  %12 = ptrtoint ptr %going_away to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %going_away, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %going_away, align 4
  tail call void @smc_smcd_terminate_all(ptr noundef %smcd) #13
  %event_wq = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 8
  %13 = ptrtoint ptr %event_wq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %event_wq, align 8
  tail call void @destroy_workqueue(ptr noundef %14) #13
  %dev3 = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 1
  tail call void @device_del(ptr noundef %dev3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_smcd_terminate_all(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smcd_free_dev(ptr noundef %smcd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 1
  tail call void @put_device(ptr noundef %dev) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smcd_handle_event(ptr noundef %smcd, ptr nocapture noundef readonly %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %going_away = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 15
  %0 = ptrtoint ptr %going_away to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %going_away, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2592, i32 noundef 80) #16
  %tobool1.not = icmp eq ptr %call7.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__init_work(ptr noundef nonnull %call7.i, i32 noundef 0) #13
  %2 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %call7.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.14, ptr noundef nonnull @smcd_handle_event.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry7 = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry7, ptr %entry7, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry7, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @smc_ism_event_work, ptr %func, align 4
  %smcd9 = getelementptr inbounds %struct.smc_ism_event_work, ptr %call7.i, i32 0, i32 1
  %6 = ptrtoint ptr %smcd9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %smcd, ptr %smcd9, align 4
  %event10 = getelementptr inbounds %struct.smc_ism_event_work, ptr %call7.i, i32 0, i32 2
  %7 = call ptr @memcpy(ptr %event10, ptr %event, i32 32)
  %event_wq = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 8
  %8 = ptrtoint ptr %event_wq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %event_wq, align 8
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef nonnull %call7.i) #13
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_ism_event_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %event = getelementptr inbounds %struct.smc_ism_event_work, ptr %work, i32 0, i32 2
  %0 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %smcd = getelementptr inbounds %struct.smc_ism_event_work, ptr %work, i32 0, i32 1
  %3 = ptrtoint ptr %smcd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %smcd, align 4
  %tok = getelementptr inbounds %struct.smc_ism_event_work, ptr %work, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %tok to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %tok, align 8
  tail call void @smc_smcd_terminate(ptr noundef %4, i64 noundef %6, i16 noundef zeroext 4095) #13
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %info.i = getelementptr inbounds %struct.smc_ism_event_work, ptr %work, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %info.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %info.i, align 8
  %code.i = getelementptr inbounds %struct.smc_ism_event_work, ptr %work, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %code.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %10, label %sw.bb2.sw.epilog_crit_edge [
    i32 128, label %sw.bb.i
    i32 131, label %sw.bb3.i
  ]

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb.i:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  %ev_info.sroa.5.0.extract.shift.i = lshr i64 %8, 16
  %ev_info.sroa.5.0.extract.trunc.i = trunc i64 %ev_info.sroa.5.0.extract.shift.i to i16
  %smcd.i = getelementptr inbounds %struct.smc_ism_event_work, ptr %work, i32 0, i32 1
  %12 = ptrtoint ptr %smcd.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %smcd.i, align 4
  %tok.i = getelementptr inbounds %struct.smc_ism_event_work, ptr %work, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %tok.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tok.i, align 8
  tail call void @smc_smcd_terminate(ptr noundef %13, i64 noundef %15, i16 noundef zeroext %ev_info.sroa.5.0.extract.trunc.i) #13
  br label %sw.epilog

sw.bb3.i:                                         ; preds = %sw.bb2
  %conv17.i = and i64 %8, 65535
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %conv17.i)
  %cmp.i = icmp eq i64 %conv17.i, 1
  br i1 %cmp.i, label %if.then.i, label %sw.bb3.i.sw.epilog_crit_edge

sw.bb3.i.sw.epilog_crit_edge:                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #15
  %smcd7.i = getelementptr inbounds %struct.smc_ism_event_work, ptr %work, i32 0, i32 1
  %16 = ptrtoint ptr %smcd7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %smcd7.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %signal_event.i = getelementptr inbounds %struct.smcd_ops, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %signal_event.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %signal_event.i, align 4
  %tok10.i = getelementptr inbounds %struct.smc_ism_event_work, ptr %work, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %tok10.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %tok10.i, align 8
  %ev_info.sroa.5.0.insert.insert.i = and i64 %8, -65536
  %ev_info.sroa.0.0.insert.insert.i = or i64 %ev_info.sroa.5.0.insert.insert.i, 2
  %call.i = tail call i32 %21(ptr noundef %17, i64 noundef %23, i32 noundef 1, i32 noundef 131, i64 noundef %ev_info.sroa.0.0.insert.insert.i) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i, %sw.bb3.i.sw.epilog_crit_edge, %sw.bb.i, %sw.bb2.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  tail call void @kfree(ptr noundef %work) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smcd_handle_irq(ptr noundef %smcd, i32 noundef %dmbno) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %conn5 = getelementptr inbounds %struct.smcd_dev, ptr %smcd, i32 0, i32 6
  %0 = ptrtoint ptr %conn5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn5, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %dmbno
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %killed = getelementptr inbounds %struct.smc_connection, ptr %3, i32 0, i32 39
  %4 = ptrtoint ptr %killed to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %killed, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool6.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool6.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %state.i = getelementptr inbounds %struct.smc_connection, ptr %3, i32 0, i32 36, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %rx_tsklet = getelementptr inbounds %struct.smc_connection, ptr %3, i32 0, i32 36
  tail call void @__tasklet_schedule(ptr noundef %rx_tsklet) #13
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #13
  ret void
}

; Function Attrs: cold mustprogress nofree nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @smc_ism_init() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 false, ptr @smc_ism_v2_capable, align 1
  %0 = call ptr @memset(ptr @smc_ism_v2_system_eid, i32 0, i32 32)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_smcd_terminate(ptr noundef, i64 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold mustprogress nofree nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !15, !16, !18, !20, !21, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !34, !35, !36, !38, !40, !42, !43, !45, !47, !49, !51, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/smc/smc_ism.c", i32 23, i32 11}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @smcd_dev_list, !4, !"smcd_dev_list", i1 false, i1 false}
!4 = !{!"../net/smc/smc_ism.c", i32 21, i32 22}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../net/smc/smc_ism.c", i32 410, i32 19}
!7 = !{ptr @smcd_alloc_dev.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../net/smc/smc_ism.c", i32 426, i32 2}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @smcd_alloc_dev.__key.4, !11, !"__key", i1 false, i1 false}
!11 = !{!"../net/smc/smc_ism.c", i32 427, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @smcd_alloc_dev.__key.6, !14, !"__key", i1 false, i1 false}
!14 = !{!"../net/smc/smc_ism.c", i32 430, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__ksymtab_smcd_alloc_dev, !17, !"__ksymtab_smcd_alloc_dev", i1 false, i1 false}
!17 = !{!"../net/smc/smc_ism.c", i32 433, i32 1}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/smc/smc_ism.c", i32 457, i32 2}
!20 = !{ptr @smcd_register_dev._rs, !19, !"_rs", i1 false, i1 false}
!21 = !{ptr @__func__.smcd_register_dev, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @smcd_register_dev._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @smcd_register_dev._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__ksymtab_smcd_register_dev, !29, !"__ksymtab_smcd_register_dev", i1 false, i1 false}
!29 = !{!"../net/smc/smc_ism.c", i32 470, i32 1}
!30 = !{ptr @smcd_unregister_dev._rs, !31, !"_rs", i1 false, i1 false}
!31 = !{!"../net/smc/smc_ism.c", i32 474, i32 2}
!32 = !{ptr @__func__.smcd_unregister_dev, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @smcd_unregister_dev._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @smcd_unregister_dev._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @__ksymtab_smcd_unregister_dev, !37, !"__ksymtab_smcd_unregister_dev", i1 false, i1 false}
!37 = !{!"../net/smc/smc_ism.c", i32 485, i32 1}
!38 = !{ptr @__ksymtab_smcd_free_dev, !39, !"__ksymtab_smcd_free_dev", i1 false, i1 false}
!39 = !{!"../net/smc/smc_ism.c", i32 491, i32 1}
!40 = !{ptr @smcd_handle_event.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../net/smc/smc_ism.c", i32 514, i32 2}
!42 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @__ksymtab_smcd_handle_event, !44, !"__ksymtab_smcd_handle_event", i1 false, i1 false}
!44 = !{!"../net/smc/smc_ism.c", i32 519, i32 1}
!45 = !{ptr @__ksymtab_smcd_handle_irq, !46, !"__ksymtab_smcd_handle_irq", i1 false, i1 false}
!46 = !{!"../net/smc/smc_ism.c", i32 539, i32 1}
!47 = distinct !{null, !48, !"smc_ism_v2_capable", i1 false, i1 false}
!48 = !{!"../net/smc/smc_ism.c", i32 26, i32 13}
!49 = !{ptr @smc_ism_v2_system_eid, !50, !"smc_ism_v2_system_eid", i1 false, i1 false}
!50 = !{!"../net/smc/smc_ism.c", i32 27, i32 11}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/smc/smc_core.h", i32 480, i32 53}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../include/net/netlink.h", i32 991, i32 3}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 2148516318, i64 2148516350, i64 2148516379, i64 2148516413, i64 2148516444, i64 2148516467}
!65 = !{!"branch_weights", i32 1, i32 2000}
!66 = !{!"branch_weights", i32 2000, i32 1}
!67 = !{i64 2148604343}
!68 = !{i64 2148518783, i64 2148518815, i64 2148518844, i64 2148518878, i64 2148518909, i64 2148518932}
!69 = !{i64 2149838563}
!70 = !{i8 0, i8 2}
