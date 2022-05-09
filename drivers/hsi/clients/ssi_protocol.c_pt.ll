; ModuleID = '/llk/IR_all_yes/drivers/hsi/clients/ssi_protocol.c_pt.bc'
source_filename = "../drivers/hsi/clients/ssi_protocol.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ssip_slave_get_master\22, \22a\22\09"
module asm "\09.weak\09__crc_ssip_slave_get_master\09\09\09\09"
module asm "\09.long\09__crc_ssip_slave_get_master\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ssip_slave_get_master:\09\09\09\09\09"
module asm "\09.asciz \09\22ssip_slave_get_master\22\09\09\09\09\09"
module asm "__kstrtabns_ssip_slave_get_master:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ssip_slave_start_tx\22, \22a\22\09"
module asm "\09.weak\09__crc_ssip_slave_start_tx\09\09\09\09"
module asm "\09.long\09__crc_ssip_slave_start_tx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ssip_slave_start_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22ssip_slave_start_tx\22\09\09\09\09\09"
module asm "__kstrtabns_ssip_slave_start_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ssip_slave_stop_tx\22, \22a\22\09"
module asm "\09.weak\09__crc_ssip_slave_stop_tx\09\09\09\09"
module asm "\09.long\09__crc_ssip_slave_stop_tx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ssip_slave_stop_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22ssip_slave_stop_tx\22\09\09\09\09\09"
module asm "__kstrtabns_ssip_slave_stop_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ssip_slave_running\22, \22a\22\09"
module asm "\09.weak\09__crc_ssip_slave_running\09\09\09\09"
module asm "\09.long\09__crc_ssip_slave_running\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ssip_slave_running:\09\09\09\09\09"
module asm "\09.asciz \09\22ssip_slave_running\22\09\09\09\09\09"
module asm "__kstrtabns_ssip_slave_running:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ssip_reset_event\22, \22a\22\09"
module asm "\09.weak\09__crc_ssip_reset_event\09\09\09\09"
module asm "\09.long\09__crc_ssip_reset_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ssip_reset_event:\09\09\09\09\09"
module asm "\09.asciz \09\22ssip_reset_event\22\09\09\09\09\09"
module asm "__kstrtabns_ssip_reset_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hsi_client_driver = type { %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.ssi_protocol = type { i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.spinlock, ptr, %struct.list_head, %struct.list_head, %struct.work_struct, ptr, %struct.list_head, %struct.atomic_t, i32, i32 }
%struct.hsi_client = type { %struct.device, %struct.hsi_config, %struct.hsi_config, ptr, i8, %struct.notifier_block }
%struct.hsi_config = type { i32, ptr, i32, i32, i32, %union.anon.99 }
%union.anon.99 = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hsi_port = type { %struct.device, %struct.hsi_config, %struct.hsi_config, i32, i8, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.104, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.118, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.104 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.118 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.hsi_msg = type { %struct.list_head, ptr, %struct.sg_table, ptr, ptr, ptr, i32, i32, i32, i8 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }

@ssip_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ssip_list, ptr @ssip_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_ssip_slave_get_master = external dso_local constant [0 x i8], align 1
@__kstrtabns_ssip_slave_get_master = external dso_local constant [0 x i8], align 1
@__ksymtab_ssip_slave_get_master = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ssip_slave_get_master to i32), ptr @__kstrtab_ssip_slave_get_master, ptr @__kstrtabns_ssip_slave_get_master }, section "___ksymtab_gpl+ssip_slave_get_master", align 4
@ssip_slave_start_tx.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ssi_protocol\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ssip_slave_start_tx\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/hsi/clients/ssi_protocol.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"start TX %d\0A\00", [19 x i8] zeroinitializer }, align 32
@__kstrtab_ssip_slave_start_tx = external dso_local constant [0 x i8], align 1
@__kstrtabns_ssip_slave_start_tx = external dso_local constant [0 x i8], align 1
@__ksymtab_ssip_slave_start_tx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ssip_slave_start_tx to i32), ptr @__kstrtab_ssip_slave_start_tx, ptr @__kstrtabns_ssip_slave_start_tx }, section "___ksymtab_gpl+ssip_slave_start_tx", align 4
@ssip_slave_stop_tx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ssip_slave_stop_tx.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ssip_slave_stop_tx\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stop TX %d\0A\00", [20 x i8] zeroinitializer }, align 32
@__kstrtab_ssip_slave_stop_tx = external dso_local constant [0 x i8], align 1
@__kstrtabns_ssip_slave_stop_tx = external dso_local constant [0 x i8], align 1
@__ksymtab_ssip_slave_stop_tx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ssip_slave_stop_tx to i32), ptr @__kstrtab_ssip_slave_stop_tx, ptr @__kstrtabns_ssip_slave_stop_tx }, section "___ksymtab_gpl+ssip_slave_stop_tx", align 4
@__kstrtab_ssip_slave_running = external dso_local constant [0 x i8], align 1
@__kstrtabns_ssip_slave_running = external dso_local constant [0 x i8], align 1
@__ksymtab_ssip_slave_running = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ssip_slave_running to i32), ptr @__kstrtab_ssip_slave_running, ptr @__kstrtabns_ssip_slave_running }, section "___ksymtab_gpl+ssip_slave_running", align 4
@ssip_reset_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 1045, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CMT reset detected!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ssip_reset_event\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ssip_reset_event._entry_ptr = internal global ptr @ssip_reset_event._entry, section ".printk_index", align 4
@__kstrtab_ssip_reset_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_ssip_reset_event = external dso_local constant [0 x i8], align 1
@__ksymtab_ssip_reset_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ssip_reset_event to i32), ptr @__kstrtab_ssip_reset_event, ptr @__kstrtabns_ssip_reset_event }, section "___ksymtab_gpl+ssip_reset_event", align 4
@__initcall__kmod_ssi_protocol__368_1180_ssip_init6 = internal global ptr @ssip_init, section ".initcall6.init", align 4
@ssip_driver = internal global { %struct.hsi_client_driver, [52 x i8] } { %struct.hsi_client_driver { %struct.device_driver { ptr @.str.92, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr @ssi_protocol_probe, ptr null, ptr @ssi_protocol_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [52 x i8] zeroinitializer }, align 32
@ssip_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016SSI protocol driver removed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssip_exit\00", [22 x i8] zeroinitializer }, align 32
@ssip_exit._entry_ptr = internal global ptr @ssip_exit._entry, section ".printk_index", align 4
@__exitcall_ssip_exit = internal global ptr @ssip_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias369 = internal constant [36 x i8] c"ssi_protocol.alias=hsi:ssi-protocol\00", section ".modinfo", align 1
@__UNIQUE_ID_author370 = internal constant [60 x i8] c"ssi_protocol.author=Carlos Chinea <carlos.chinea@nokia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author371 = internal constant [72 x i8] c"ssi_protocol.author=Remi Denis-Courmont <remi.denis-courmont@nokia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description372 = internal constant [58 x i8] c"ssi_protocol.description=SSI protocol improved aka McSAAB\00", section ".modinfo", align 1
@__UNIQUE_ID_file373 = internal constant [51 x i8] c"ssi_protocol.file=drivers/hsi/clients/ssi_protocol\00", section ".modinfo", align 1
@__UNIQUE_ID_license374 = internal constant [25 x i8] c"ssi_protocol.license=GPL\00", section ".modinfo", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ssip_dump_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 428, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Main state: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ssip_dump_state\00", [16 x i8] zeroinitializer }, align 32
@ssip_dump_state._entry_ptr = internal global ptr @ssip_dump_state._entry, section ".printk_index", align 4
@ssip_dump_state._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 429, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Recv state: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@ssip_dump_state._entry_ptr.16 = internal global ptr @ssip_dump_state._entry.14, section ".printk_index", align 4
@ssip_dump_state._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 430, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Send state: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@ssip_dump_state._entry_ptr.19 = internal global ptr @ssip_dump_state._entry.17, section ".printk_index", align 4
@ssip_dump_state._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.2, i32 432, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CMT %s\0A\00", [24 x i8] zeroinitializer }, align 32
@ssip_dump_state._entry_ptr.22 = internal global ptr @ssip_dump_state._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Online\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Offline\00", [24 x i8] zeroinitializer }, align 32
@ssip_dump_state._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.13, ptr @.str.2, i32 434, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Wake test %d\0A\00", [18 x i8] zeroinitializer }, align 32
@ssip_dump_state._entry_ptr.27 = internal global ptr @ssip_dump_state._entry.25, section ".printk_index", align 4
@ssip_dump_state._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.13, ptr @.str.2, i32 435, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Data RX id: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@ssip_dump_state._entry_ptr.30 = internal global ptr @ssip_dump_state._entry.28, section ".printk_index", align 4
@ssip_dump_state._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.13, ptr @.str.2, i32 436, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Data TX id: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@ssip_dump_state._entry_ptr.33 = internal global ptr @ssip_dump_state._entry.31, section ".printk_index", align 4
@ssip_dump_state._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.13, ptr @.str.2, i32 439, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pending TX data (%p)\0A\00", [42 x i8] zeroinitializer }, align 32
@ssip_dump_state._entry_ptr.36 = internal global ptr @ssip_dump_state._entry.34, section ".printk_index", align 4
@ssip_reset.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ssip_reset\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Pending TX data\0A\00", [47 x i8] zeroinitializer }, align 32
@ssip_free_data.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ssip_free_data\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"free data: msg %p context %p skb %p\0A\00", [59 x i8] zeroinitializer }, align 32
@ssip_release_cmd.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 0, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ssip_release_cmd\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Release cmd 0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@ssip_rxcmd_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 823, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RX error detected\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ssip_rxcmd_complete\00", [44 x i8] zeroinitializer }, align 32
@ssip_rxcmd_complete._entry_ptr = internal global ptr @ssip_rxcmd_complete._entry, section ".printk_index", align 4
@ssip_rxcmd_complete.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 0, i8 -49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX cmd: 0x%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@ssip_rxcmd_complete._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.44, ptr @.str.2, i32 850, ptr @.str.48, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"command 0x%08x not supported\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ssip_rxcmd_complete._entry_ptr.49 = internal global ptr @ssip_rxcmd_complete._entry.46, section ".printk_index", align 4
@ssip_rx_bootinforeq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 669, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Boot info req on active state\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ssip_rx_bootinforeq\00", [44 x i8] zeroinitializer }, align 32
@ssip_rx_bootinforeq._entry_ptr = internal global ptr @ssip_rx_bootinforeq._entry, section ".printk_index", align 4
@ssip_rx_bootinforeq.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 0, i8 -85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Send BOOTINFO_RESP\0A\00", [44 x i8] zeroinitializer }, align 32
@ssip_rx_bootinforeq._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.51, ptr @.str.2, i32 687, ptr @.str.48, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"boot info req verid mismatch\0A\00", [34 x i8] zeroinitializer }, align 32
@ssip_rx_bootinforeq._entry_ptr.55 = internal global ptr @ssip_rx_bootinforeq._entry.53, section ".printk_index", align 4
@ssip_rx_bootinforeq.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.56, i8 0, i8 -83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Wrong state M(%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@ssip_rx_bootinforesp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 704, ptr @.str.48, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"boot info resp verid mismatch\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ssip_rx_bootinforesp\00", [43 x i8] zeroinitializer }, align 32
@ssip_rx_bootinforesp._entry_ptr = internal global ptr @ssip_rx_bootinforesp._entry, section ".printk_index", align 4
@ssip_rx_bootinforesp.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 0, i8 -78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"boot info resp ignored M(%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@ssip_rx_waketest.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.61, i8 0, i8 -75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ssip_rx_waketest\00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wake lines test ignored M(%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@ssip_rx_waketest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.2, i32 739, ptr @.str.63, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WAKELINES TEST %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@ssip_rx_waketest._entry_ptr = internal global ptr @ssip_rx_waketest._entry, section ".printk_index", align 4
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FAILED\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"OK\00", [29 x i8] zeroinitializer }, align 32
@ssip_rx_waketest.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.66, i8 0, i8 -70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CMT is ONLINE\0A\00", [17 x i8] zeroinitializer }, align 32
@ssip_rx_strans.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.68, i8 0, i8 -62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ssip_rx_strans\00", [17 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RX strans: %d frames\0A\00", [42 x i8] zeroinitializer }, align 32
@ssip_rx_strans._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 781, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"START TRANS wrong state: S(%d) M(%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@ssip_rx_strans._entry_ptr = internal global ptr @ssip_rx_strans._entry, section ".printk_index", align 4
@ssip_rx_strans._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.67, ptr @.str.2, i32 788, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"START TRANS id %d expected %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ssip_rx_strans._entry_ptr.72 = internal global ptr @ssip_rx_strans._entry.70, section ".printk_index", align 4
@ssip_rx_strans._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.67, ptr @.str.2, i32 796, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"No memory for rx skb\0A\00", [42 x i8] zeroinitializer }, align 32
@ssip_rx_strans._entry_ptr.75 = internal global ptr @ssip_rx_strans._entry.73, section ".printk_index", align 4
@ssip_rx_strans._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.67, ptr @.str.2, i32 803, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No memory for RX data msg\0A\00", [37 x i8] zeroinitializer }, align 32
@ssip_rx_strans._entry_ptr.78 = internal global ptr @ssip_rx_strans._entry.76, section ".printk_index", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@ssip_rx_data_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 647, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RX data error\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ssip_rx_data_complete\00", [42 x i8] zeroinitializer }, align 32
@ssip_rx_data_complete._entry_ptr = internal global ptr @ssip_rx_data_complete._entry, section ".printk_index", align 4
@ssip_pn_rx.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.2, ptr @.str.82, i8 0, i8 -103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ssip_pn_rx\00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Drop RX packet\0A\00", [16 x i8] zeroinitializer }, align 32
@ssip_pn_rx.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.2, ptr @.str.83, i8 0, i8 -101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Error drop RX packet\0A\00", [42 x i8] zeroinitializer }, align 32
@ssip_pn_rx.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.2, ptr @.str.84, i8 0, i8 -98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RX length fixed (%04x -> %u)\0A\00", [34 x i8] zeroinitializer }, align 32
@ssip_rx_ready.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.2, ptr @.str.86, i8 0, i8 -67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ssip_rx_ready\00", [18 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"READY on wrong state: S(%d) M(%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@ssip_rx_ready.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.2, ptr @.str.87, i8 0, i8 -66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Ignore spurious READY command\0A\00", [33 x i8] zeroinitializer }, align 32
@ssip_xmit.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.2, ptr @.str.89, i8 0, i8 -106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssip_xmit\00", [22 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Send STRANS (%d frames)\0A\00", [39 x i8] zeroinitializer }, align 32
@ssip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 1176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016SSI protocol aka McSAAB added\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssip_init\00", [22 x i8] zeroinitializer }, align 32
@ssip_init._entry_ptr = internal global ptr @ssip_init._entry, section ".printk_index", align 4
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ssi-protocol\00", [19 x i8] zeroinitializer }, align 32
@ssi_protocol_probe.ifname = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"phonet%d\00", [23 x i8] zeroinitializer }, align 32
@ssi_protocol_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.93 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ssi->lock\00", [21 x i8] zeroinitializer }, align 32
@ssi_protocol_probe.__key.94 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&ssi->rx_wd)\00", [18 x i8] zeroinitializer }, align 32
@ssi_protocol_probe.__key.96 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.97 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&ssi->tx_wd)\00", [18 x i8] zeroinitializer }, align 32
@ssi_protocol_probe.__key.98 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.99 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&ssi->keep_alive)\00", [45 x i8] zeroinitializer }, align 32
@ssi_protocol_probe.__key.100 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.101 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&ssi->work)\00", [34 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mcsaab-control\00", [17 x i8] zeroinitializer }, align 32
@ssi_protocol_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.2, i32 1099, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not get cmd channel (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ssi_protocol_probe\00", [45 x i8] zeroinitializer }, align 32
@ssi_protocol_probe._entry_ptr = internal global ptr @ssi_protocol_probe._entry, section ".printk_index", align 4
@.str.105 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mcsaab-data\00", [20 x i8] zeroinitializer }, align 32
@ssi_protocol_probe._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.104, ptr @.str.2, i32 1106, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not get data channel (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@ssi_protocol_probe._entry_ptr.108 = internal global ptr @ssi_protocol_probe._entry.106, section ".printk_index", align 4
@ssi_protocol_probe._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.104, ptr @.str.2, i32 1112, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No memory for commands\0A\00", [40 x i8] zeroinitializer }, align 32
@ssi_protocol_probe._entry_ptr.111 = internal global ptr @ssi_protocol_probe._entry.109, section ".printk_index", align 4
@ssi_protocol_probe._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.104, ptr @.str.2, i32 1118, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"No memory for netdev\0A\00", [42 x i8] zeroinitializer }, align 32
@ssi_protocol_probe._entry_ptr.114 = internal global ptr @ssi_protocol_probe._entry.112, section ".printk_index", align 4
@ssi_protocol_probe._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.104, ptr @.str.2, i32 1131, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Register netdev failed (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@ssi_protocol_probe._entry_ptr.117 = internal global ptr @ssi_protocol_probe._entry.115, section ".printk_index", align 4
@ssi_protocol_probe.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.2, ptr @.str.118, i8 1, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"channel configuration: cmd=%d, data=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ssip_rx_wd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.2, i32 487, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Watchdog triggered\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ssip_rx_wd\00", [21 x i8] zeroinitializer }, align 32
@ssip_rx_wd._entry_ptr = internal global ptr @ssip_rx_wd._entry, section ".printk_index", align 4
@ssip_tx_wd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.121, ptr @.str.2, i32 496, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ssip_tx_wd\00", [21 x i8] zeroinitializer }, align 32
@ssip_tx_wd._entry_ptr = internal global ptr @ssip_tx_wd._entry, section ".printk_index", align 4
@ssip_keep_alive.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.122, ptr @.str.2, ptr @.str.123, i8 0, i8 115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ssip_keep_alive\00", [16 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Keep alive kick in: m(%d) r(%d) s(%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@ssip_pn_setup.addr = internal constant { i8, [31 x i8] } { i8 21, [31 x i8] zeroinitializer }, align 32
@ssip_pn_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @ssip_pn_open, ptr @ssip_pn_stop, ptr @ssip_pn_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@phonet_header_ops = external dso_local constant %struct.header_ops, align 4
@ssip_pn_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.2, i32 927, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SSI port already claimed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ssip_pn_open\00", [19 x i8] zeroinitializer }, align 32
@ssip_pn_open._entry_ptr = internal global ptr @ssip_pn_open._entry, section ".printk_index", align 4
@ssip_pn_open._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.125, ptr @.str.2, i32 933, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Register HSI port event failed (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@ssip_pn_open._entry_ptr.128 = internal global ptr @ssip_pn_open._entry.126, section ".printk_index", align 4
@ssip_pn_open.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.125, ptr @.str.2, ptr @.str.129, i8 0, i8 -22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Configuring SSI port\0A\00", [42 x i8] zeroinitializer }, align 32
@ssip_start_rx.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.130, ptr @.str.2, ptr @.str.131, i8 0, i8 -126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ssip_start_rx\00", [18 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RX start M(%d) R(%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@ssip_start_rx.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.130, ptr @.str.2, ptr @.str.132, i8 0, i8 -122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Send READY\0A\00", [20 x i8] zeroinitializer }, align 32
@ssip_stop_rx.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.133, ptr @.str.2, ptr @.str.134, i8 0, i8 -120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ssip_stop_rx\00", [19 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RX stop M(%d)\0A\00", [17 x i8] zeroinitializer }, align 32
@ssip_send_bootinfo_req_cmd.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.135, ptr @.str.2, ptr @.str.136, i8 0, i8 126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ssip_send_bootinfo_req_cmd\00", [37 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Issuing BOOT INFO REQ command\0A\00", [33 x i8] zeroinitializer }, align 32
@ssip_send_bootinfo_req_cmd.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.135, ptr @.str.2, ptr @.str.137, i8 0, i8 127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Issuing RX command\0A\00", [44 x i8] zeroinitializer }, align 32
@ssip_pn_xmit.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.138, ptr @.str.2, ptr @.str.139, i8 0, i8 -7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ssip_pn_xmit\00", [19 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Dropping tx data: No memory\0A\00", [35 x i8] zeroinitializer }, align 32
@ssip_pn_xmit.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.138, ptr @.str.2, ptr @.str.140, i8 0, i8 -5, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.140 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Dropping tx data: CMT is OFFLINE\0A\00", [62 x i8] zeroinitializer }, align 32
@ssip_pn_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.138, ptr @.str.2, i32 1010, ptr @.str.142, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TX queue full %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ssip_pn_xmit._entry_ptr = internal global ptr @ssip_pn_xmit._entry, section ".printk_index", align 4
@ssip_pn_xmit.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.138, ptr @.str.2, ptr @.str.143, i8 0, i8 -2, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.143 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Start TX qlen %d\0A\00", [46 x i8] zeroinitializer }, align 32
@ssip_pn_xmit.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.138, ptr @.str.2, ptr @.str.144, i8 0, i8 -1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.144 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Start TX on SEND READY qlen %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ssip_tx_data_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.146, ptr @.str.2, i32 884, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TX data error\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ssip_tx_data_complete\00", [42 x i8] zeroinitializer }, align 32
@ssip_tx_data_complete._entry_ptr = internal global ptr @ssip_tx_data_complete._entry, section ".printk_index", align 4
@ssip_tx_data_complete.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.146, ptr @.str.2, ptr @.str.147, i8 0, i8 -33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.147 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Send SWBREAK\0A\00", [18 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.148 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.149 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.153 = private unnamed_addr constant [10 x i8] c"ssip_list\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 149, i32 8 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 346, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 374, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1045, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [12 x i8] c"ssip_driver\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1165, i32 33 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1185, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 428, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 429, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 430, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 431, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 433, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 435, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 436, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 439, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 414, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 194, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 221, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 823, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 829, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 850, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 669, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 685, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 687, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 694, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 704, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 711, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 723, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 738, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 744, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 777, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 780, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 787, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 796, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 803, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 647, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 614, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 620, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 631, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 755, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 761, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 602, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1176, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1167, i32 11 }
@___asan_gen_.432 = private unnamed_addr constant [7 x i8] c"ifname\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1076, i32 20 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1085, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1086, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1087, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1088, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1094, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1096, i32 55 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1099, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1103, i32 56 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1106, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1112, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1118, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1131, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1137, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 487, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 496, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 460, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1058, i32 18 }
@___asan_gen_.531 = private unnamed_addr constant [12 x i8] c"ssip_pn_ops\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1050, i32 36 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 927, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 932, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 936, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 521, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 538, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 546, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 505, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 510, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 996, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1004, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1010, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1016, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 1020, i32 3 }
@___asan_gen_.600 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 884, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.610 = private constant [38 x i8] c"../drivers/hsi/clients/ssi_protocol.c\00", align 1
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 895, i32 3 }
@llvm.compiler.used = appending global [200 x ptr] [ptr @__UNIQUE_ID_alias369, ptr @__UNIQUE_ID_author370, ptr @__UNIQUE_ID_author371, ptr @__UNIQUE_ID_description372, ptr @__UNIQUE_ID_file373, ptr @__UNIQUE_ID_license374, ptr @__exitcall_ssip_exit, ptr @__initcall__kmod_ssi_protocol__368_1180_ssip_init6, ptr @__ksymtab_ssip_reset_event, ptr @__ksymtab_ssip_slave_get_master, ptr @__ksymtab_ssip_slave_running, ptr @__ksymtab_ssip_slave_start_tx, ptr @__ksymtab_ssip_slave_stop_tx, ptr @ssi_protocol_probe._entry, ptr @ssi_protocol_probe._entry.106, ptr @ssi_protocol_probe._entry.109, ptr @ssi_protocol_probe._entry.112, ptr @ssi_protocol_probe._entry.115, ptr @ssi_protocol_probe._entry_ptr, ptr @ssi_protocol_probe._entry_ptr.108, ptr @ssi_protocol_probe._entry_ptr.111, ptr @ssi_protocol_probe._entry_ptr.114, ptr @ssi_protocol_probe._entry_ptr.117, ptr @ssip_dump_state._entry, ptr @ssip_dump_state._entry.14, ptr @ssip_dump_state._entry.17, ptr @ssip_dump_state._entry.20, ptr @ssip_dump_state._entry.25, ptr @ssip_dump_state._entry.28, ptr @ssip_dump_state._entry.31, ptr @ssip_dump_state._entry.34, ptr @ssip_dump_state._entry_ptr, ptr @ssip_dump_state._entry_ptr.16, ptr @ssip_dump_state._entry_ptr.19, ptr @ssip_dump_state._entry_ptr.22, ptr @ssip_dump_state._entry_ptr.27, ptr @ssip_dump_state._entry_ptr.30, ptr @ssip_dump_state._entry_ptr.33, ptr @ssip_dump_state._entry_ptr.36, ptr @ssip_exit, ptr @ssip_exit._entry, ptr @ssip_exit._entry_ptr, ptr @ssip_init._entry, ptr @ssip_init._entry_ptr, ptr @ssip_pn_open._entry, ptr @ssip_pn_open._entry.126, ptr @ssip_pn_open._entry_ptr, ptr @ssip_pn_open._entry_ptr.128, ptr @ssip_pn_xmit._entry, ptr @ssip_pn_xmit._entry_ptr, ptr @ssip_reset_event._entry, ptr @ssip_reset_event._entry_ptr, ptr @ssip_rx_bootinforeq._entry, ptr @ssip_rx_bootinforeq._entry.53, ptr @ssip_rx_bootinforeq._entry_ptr, ptr @ssip_rx_bootinforeq._entry_ptr.55, ptr @ssip_rx_bootinforesp._entry, ptr @ssip_rx_bootinforesp._entry_ptr, ptr @ssip_rx_data_complete._entry, ptr @ssip_rx_data_complete._entry_ptr, ptr @ssip_rx_strans._entry, ptr @ssip_rx_strans._entry.70, ptr @ssip_rx_strans._entry.73, ptr @ssip_rx_strans._entry.76, ptr @ssip_rx_strans._entry_ptr, ptr @ssip_rx_strans._entry_ptr.72, ptr @ssip_rx_strans._entry_ptr.75, ptr @ssip_rx_strans._entry_ptr.78, ptr @ssip_rx_waketest._entry, ptr @ssip_rx_waketest._entry_ptr, ptr @ssip_rx_wd._entry, ptr @ssip_rx_wd._entry_ptr, ptr @ssip_rxcmd_complete._entry, ptr @ssip_rxcmd_complete._entry.46, ptr @ssip_rxcmd_complete._entry_ptr, ptr @ssip_rxcmd_complete._entry_ptr.49, ptr @ssip_tx_data_complete._entry, ptr @ssip_tx_data_complete._entry_ptr, ptr @ssip_tx_wd._entry, ptr @ssip_tx_wd._entry_ptr, ptr @ssip_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @ssip_driver, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @ssi_protocol_probe.ifname, ptr @ssi_protocol_probe.__key, ptr @.str.93, ptr @ssi_protocol_probe.__key.94, ptr @.str.95, ptr @ssi_protocol_probe.__key.96, ptr @.str.97, ptr @ssi_protocol_probe.__key.98, ptr @.str.99, ptr @ssi_protocol_probe.__key.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @ssip_pn_setup.addr, ptr @ssip_pn_ops, ptr @.str.124, ptr @.str.125, ptr @.str.127, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147], section "llvm.metadata"
@0 = internal global [153 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssip_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssip_reset_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssip_driver to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssip_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssip_dump_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssip_dump_state._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssip_dump_state._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssip_dump_state._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssip_dump_state._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssip_dump_state._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssip_dump_state._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssip_dump_state._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssip_rxcmd_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssip_rxcmd_complete._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssip_rx_bootinforeq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssip_rx_bootinforeq._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssip_rx_bootinforesp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssip_rx_waketest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssip_rx_strans._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssip_rx_strans._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssip_rx_strans._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssip_rx_strans._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssip_rx_data_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_protocol_probe.ifname to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_protocol_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_protocol_probe.__key.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_protocol_probe.__key.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_protocol_probe.__key.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_protocol_probe.__key.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_protocol_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_protocol_probe._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_protocol_probe._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_protocol_probe._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_protocol_probe._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssip_rx_wd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssip_tx_wd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssip_pn_setup.addr to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssip_pn_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssip_pn_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssip_pn_open._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssip_pn_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssip_tx_data_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ssip_slave_get_master(ptr nocapture noundef readonly %slave) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %slave, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @ssip_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @ssip_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %cl = getelementptr i8, ptr %.pn, i32 -4
  %3 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cl, align 4
  %parent2 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent2, align 8
  %cmp3 = icmp eq ptr %2, %6
  br i1 %cmp3, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %master.0 = phi ptr [ inttoptr (i32 -19 to ptr), %for.cond.for.end_crit_edge ], [ %4, %for.body.for.end_crit_edge ]
  ret ptr %master.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssip_slave_start_tx(ptr noundef %master) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_slave_start_tx.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_slave_start_tx, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !330

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tx_usecnt = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_usecnt, i32 noundef 4) #9
  %2 = ptrtoint ptr %tx_usecnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %tx_usecnt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_slave_start_tx.__UNIQUE_ID_ddebug339, ptr noundef %master, ptr noundef nonnull @.str.3, i32 noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %send_state = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %send_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %send_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then5, label %do.end.if.end7_crit_edge

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %do.end
  %6 = ptrtoint ptr %send_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %send_state, align 4
  %keep_alive3.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %7, 2
  %call5.i = tail call i32 @mod_timer(ptr noundef %keep_alive3.i, i32 noundef %add.i) #9
  %tx_wd6.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add8.i = add i32 %8, 200
  %call9.i = tail call i32 @mod_timer(ptr noundef %tx_wd6.i, i32 noundef %add8.i) #9
  %pclaimed.i.i = getelementptr inbounds %struct.hsi_client, ptr %master, i32 0, i32 4
  %9 = ptrtoint ptr %pclaimed.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i.i = load i8, ptr %pclaimed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i, label %if.then5.if.end7_crit_edge, label %if.end.i

if.then5.if.end7_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 1
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 8
  %start_tx.i = getelementptr inbounds %struct.hsi_port, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %start_tx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %start_tx.i, align 4
  %call1.i = tail call i32 %13(ptr noundef %master) #9
  br label %if.end7

if.end7:                                          ; preds = %if.end.i, %if.then5.if.end7_crit_edge, %do.end.if.end7_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %tx_usecnt9 = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 17
  %call.i.i17 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_usecnt9, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %tx_usecnt9, i32 1, i32 3, i32 1) #9
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_usecnt9, ptr %tx_usecnt9, i32 1, ptr elementtype(i32) %tx_usecnt9) #9, !srcloc !331
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ssip_set_txstate(ptr noundef %ssi, i32 noundef %state) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %send_state = getelementptr inbounds %struct.ssi_protocol, ptr %ssi, i32 0, i32 1
  %0 = ptrtoint ptr %send_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %state, ptr %send_state, align 4
  %1 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge16
    i32 1, label %entry.sw.bb2_crit_edge
    i32 3, label %entry.sw.bb2_crit_edge17
    i32 4, label %entry.sw.bb2_crit_edge18
  ]

entry.sw.bb2_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb2_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb_crit_edge16:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge16
  %tx_wd = getelementptr inbounds %struct.ssi_protocol, ptr %ssi, i32 0, i32 7
  %call = tail call i32 @del_timer(ptr noundef %tx_wd) #9
  %recv_state = getelementptr inbounds %struct.ssi_protocol, ptr %ssi, i32 0, i32 2
  %2 = ptrtoint ptr %recv_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %recv_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %keep_alive = getelementptr inbounds %struct.ssi_protocol, ptr %ssi, i32 0, i32 9
  %call1 = tail call i32 @del_timer(ptr noundef %keep_alive) #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge17, %entry.sw.bb2_crit_edge18
  %keep_alive3 = getelementptr inbounds %struct.ssi_protocol, ptr %ssi, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %4, 2
  %call5 = tail call i32 @mod_timer(ptr noundef %keep_alive3, i32 noundef %add) #9
  %tx_wd6 = getelementptr inbounds %struct.ssi_protocol, ptr %ssi, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %add8 = add i32 %5, 200
  %call9 = tail call i32 @mod_timer(ptr noundef %tx_wd6, i32 noundef %add8) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssip_slave_stop_tx(ptr noundef %master) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tx_usecnt = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_usecnt, i32 noundef 4) #9
  %2 = ptrtoint ptr %tx_usecnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %tx_usecnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.rhs, label %entry.if.end28_crit_edge

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

land.rhs:                                         ; preds = %entry
  %.b75 = load i1, ptr @ssip_slave_stop_tx.__already_done, align 1
  br i1 %.b75, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !332

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ssip_slave_stop_tx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 363, i32 noundef 9, ptr noundef null) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %entry.if.end28_crit_edge
  %call.i.i76 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_usecnt, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !333
  tail call void @llvm.prefetch.p0(ptr %tx_usecnt, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_usecnt, ptr %tx_usecnt, i32 1, ptr elementtype(i32) %tx_usecnt) #9, !srcloc !334
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !335
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then38, label %if.end28.do.body47_crit_edge

if.end28.do.body47_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body47

if.then38:                                        ; preds = %if.end28
  %lock = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %send_state = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %send_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %send_state, align 4
  %.off = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then42, label %if.then38.if.end44_crit_edge

if.then38.if.end44_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then42:                                        ; preds = %if.then38
  %7 = ptrtoint ptr %send_state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %send_state, align 4
  %tx_wd.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 7
  %call.i = tail call i32 @del_timer(ptr noundef %tx_wd.i) #9
  %recv_state.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %recv_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %recv_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  br i1 %cmp.i, label %if.then.i, label %if.then42.ssip_set_txstate.exit_crit_edge

if.then42.ssip_set_txstate.exit_crit_edge:        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %ssip_set_txstate.exit

if.then.i:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  %keep_alive.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 9
  %call1.i = tail call i32 @del_timer(ptr noundef %keep_alive.i) #9
  br label %ssip_set_txstate.exit

ssip_set_txstate.exit:                            ; preds = %if.then.i, %if.then42.ssip_set_txstate.exit_crit_edge
  %pclaimed.i.i = getelementptr inbounds %struct.hsi_client, ptr %master, i32 0, i32 4
  %10 = ptrtoint ptr %pclaimed.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i.i = load i8, ptr %pclaimed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i, label %ssip_set_txstate.exit.if.end44_crit_edge, label %if.end.i

ssip_set_txstate.exit.if.end44_crit_edge:         ; preds = %ssip_set_txstate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.end.i:                                         ; preds = %ssip_set_txstate.exit
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 1
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i, align 8
  %stop_tx.i = getelementptr inbounds %struct.hsi_port, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %stop_tx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stop_tx.i, align 8
  %call1.i78 = tail call i32 %14(ptr noundef %master) #9
  br label %if.end44

if.end44:                                         ; preds = %if.end.i, %ssip_set_txstate.exit.if.end44_crit_edge, %if.then38.if.end44_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  br label %do.body47

do.body47:                                        ; preds = %if.end44, %if.end28.do.body47_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_slave_stop_tx.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_slave_stop_tx, %if.then58)) #9
          to label %do.end63 [label %if.then58], !srcloc !330

if.then58:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i77 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_usecnt, i32 noundef 4) #9
  %15 = ptrtoint ptr %tx_usecnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %tx_usecnt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_slave_stop_tx.__UNIQUE_ID_ddebug340, ptr noundef %master, ptr noundef nonnull @.str.5, i32 noundef %16) #9
  br label %do.end63

do.end63:                                         ; preds = %if.then58, %do.body47
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ssip_slave_running(ptr nocapture noundef readonly %master) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %netdev = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  ret i32 %and1.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ssip_reset_event(ptr nocapture noundef readonly %master) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cl = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #12
  %4 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cl, align 4
  tail call fastcc void @ssip_error(ptr noundef %5)
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ssip_error(ptr noundef %cl) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %cl, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %cl, ptr noundef nonnull @.str.12, i32 noundef %3) #12
  %recv_state.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %recv_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %recv_state.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %cl, ptr noundef nonnull @.str.15, i32 noundef %5) #12
  %send_state.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %send_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %send_state.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %cl, ptr noundef nonnull @.str.18, i32 noundef %7) #12
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.i = icmp eq i32 %9, 2
  %cond.i = select i1 %cmp.i, ptr @.str.23, ptr @.str.24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %cl, ptr noundef nonnull @.str.21, ptr noundef nonnull %cond.i) #12
  %flags.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %11, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %cl, ptr noundef nonnull @.str.26, i32 noundef %and1.i.i) #12
  %rxid.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %rxid.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rxid.i, align 4
  %conv.i = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %cl, ptr noundef nonnull @.str.29, i32 noundef %conv.i) #12
  %txid.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %txid.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %txid.i, align 1
  %conv27.i = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %cl, ptr noundef nonnull @.str.32, i32 noundef %conv27.i) #12
  %txqueue.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %txqueue.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %msg.061.i = load ptr, ptr %txqueue.i, align 4
  %cmp29.not62.i = icmp eq ptr %msg.061.i, %txqueue.i
  br i1 %cmp29.not62.i, label %entry.ssip_dump_state.exit_crit_edge, label %entry.do.end33.i_crit_edge

entry.do.end33.i_crit_edge:                       ; preds = %entry
  br label %do.end33.i

entry.ssip_dump_state.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ssip_dump_state.exit

do.end33.i:                                       ; preds = %do.end33.i.do.end33.i_crit_edge, %entry.do.end33.i_crit_edge
  %msg.063.i = phi ptr [ %msg.0.i, %do.end33.i.do.end33.i_crit_edge ], [ %msg.061.i, %entry.do.end33.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %cl, ptr noundef nonnull @.str.35, ptr noundef %msg.063.i) #12
  %17 = ptrtoint ptr %msg.063.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %msg.0.i = load ptr, ptr %msg.063.i, align 4
  %cmp29.not.i = icmp eq ptr %msg.0.i, %txqueue.i
  br i1 %cmp29.not.i, label %do.end33.i.ssip_dump_state.exit_crit_edge, label %do.end33.i.do.end33.i_crit_edge

do.end33.i.do.end33.i_crit_edge:                  ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33.i

do.end33.i.ssip_dump_state.exit_crit_edge:        ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ssip_dump_state.exit

ssip_dump_state.exit:                             ; preds = %do.end33.i.ssip_dump_state.exit_crit_edge, %entry.ssip_dump_state.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #9
  tail call fastcc void @ssip_reset(ptr noundef %cl)
  %cmdqueue.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 13
  %18 = ptrtoint ptr %cmdqueue.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %cmdqueue.i, align 4
  %cmp.i.not.i = icmp eq ptr %19, %cmdqueue.i
  br i1 %cmp.i.not.i, label %do.body3.i, label %do.end8.i, !prof !336

do.body3.i:                                       ; preds = %ssip_dump_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/hsi/clients/ssi_protocol.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 231, 0\0A.popsection", ""() #9, !srcloc !337
  unreachable

do.end8.i:                                        ; preds = %ssip_dump_state.exit
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #9
  %20 = ptrtoint ptr %cmdqueue.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cmdqueue.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %21) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end8.i.ssip_claim_cmd.exit_crit_edge

do.end8.i.ssip_claim_cmd.exit_crit_edge:          ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ssip_claim_cmd.exit

if.end.i.i.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %ssip_claim_cmd.exit

ssip_claim_cmd.exit:                              ; preds = %if.end.i.i.i, %do.end8.i.ssip_claim_cmd.exit_crit_edge
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #9
  %destructor.i = getelementptr inbounds %struct.hsi_msg, ptr %21, i32 0, i32 5
  %30 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @ssip_release_cmd, ptr %destructor.i, align 4
  %complete = getelementptr inbounds %struct.hsi_msg, ptr %21, i32 0, i32 4
  %31 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @ssip_rxcmd_complete, ptr %complete, align 4
  %ttype.i = getelementptr inbounds %struct.hsi_msg, ptr %21, i32 0, i32 9
  %32 = ptrtoint ptr %ttype.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i = load i8, ptr %ttype.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %ttype.i, align 4
  %call.i = tail call i32 @hsi_async(ptr noundef %cl, ptr noundef %21) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ssip_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #12
  %call1 = tail call i32 @hsi_register_client_driver(ptr noundef nonnull @ssip_driver) #9
  ret i32 %call1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ssip_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @driver_unregister(ptr noundef nonnull @ssip_driver) #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ssip_reset(ptr noundef %cl) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %cl, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %netdev = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_carrier_off(ptr noundef %3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pclaimed.i.i = getelementptr inbounds %struct.hsi_client, ptr %cl, i32 0, i32 4
  %6 = ptrtoint ptr %pclaimed.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i.i = load i8, ptr %pclaimed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i, label %if.end.hsi_flush.exit_crit_edge, label %if.end.i

if.end.hsi_flush.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %hsi_flush.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i = getelementptr inbounds %struct.device, ptr %cl, i32 0, i32 1
  %7 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i, align 8
  %flush.i = getelementptr inbounds %struct.hsi_port, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %flush.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %flush.i, align 8
  %call1.i = tail call i32 %10(ptr noundef %cl) #9
  br label %hsi_flush.exit

hsi_flush.exit:                                   ; preds = %if.end.i, %if.end.hsi_flush.exit_crit_edge
  %lock = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %send_state = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %send_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %send_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not = icmp eq i32 %12, 0
  br i1 %cmp.not, label %hsi_flush.exit.if.end6_crit_edge, label %if.then4

hsi_flush.exit.if.end6_crit_edge:                 ; preds = %hsi_flush.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %hsi_flush.exit
  %13 = ptrtoint ptr %pclaimed.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i.i60 = load i8, ptr %pclaimed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i60)
  %tobool.not.i61 = icmp sgt i8 %bf.load.i.i60, -1
  br i1 %tobool.not.i61, label %if.then4.if.end6_crit_edge, label %if.end.i64

if.then4.if.end6_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end.i64:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i62 = getelementptr inbounds %struct.device, ptr %cl, i32 0, i32 1
  %14 = ptrtoint ptr %parent.i62 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i62, align 8
  %stop_tx.i = getelementptr inbounds %struct.hsi_port, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %stop_tx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stop_tx.i, align 8
  %call1.i63 = tail call i32 %17(ptr noundef %cl) #9
  br label %if.end6

if.end6:                                          ; preds = %if.end.i64, %if.then4.if.end6_crit_edge, %hsi_flush.exit.if.end6_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %flags = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 3
  %call8 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end6.if.end10_crit_edge, label %if.then9

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ssi_waketest(ptr noundef %cl, i32 noundef 0) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6.if.end10_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %rx_wd = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 8
  %call12 = tail call i32 @del_timer(ptr noundef %rx_wd) #9
  %tx_wd = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 7
  %call13 = tail call i32 @del_timer(ptr noundef %tx_wd) #9
  %keep_alive = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 9
  %call14 = tail call i32 @del_timer(ptr noundef %keep_alive) #9
  %txqueue = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 12
  %18 = call ptr @memset(ptr %1, i32 0, i32 18)
  %19 = ptrtoint ptr %txqueue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %txqueue, align 4
  %cmp.i.not67 = icmp eq ptr %20, %txqueue
  br i1 %cmp.i.not67, label %if.end10.for.end_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %ssip_free_data.exit.for.body_crit_edge, %if.end10.for.body_crit_edge
  %head.068 = phi ptr [ %tmp.069, %ssip_free_data.exit.for.body_crit_edge ], [ %20, %if.end10.for.body_crit_edge ]
  %21 = ptrtoint ptr %head.068 to i32
  call void @__asan_load4_noabort(i32 %21)
  %tmp.069 = load ptr, ptr %head.068, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_reset.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_reset, %if.then28)) #9
          to label %do.end [label %if.then28], !srcloc !330

if.then28:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_reset.__UNIQUE_ID_ddebug341, ptr noundef %cl, ptr noundef nonnull @.str.38) #9
  br label %do.end

do.end:                                           ; preds = %if.then28, %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head.068) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del.exit_crit_edge

do.end.list_del.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %head.068, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %head.068 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.068, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end.list_del.exit_crit_edge
  %28 = ptrtoint ptr %head.068 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %head.068, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %head.068, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %context.i = getelementptr inbounds %struct.hsi_msg, ptr %head.068, i32 0, i32 3
  %30 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %context.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_free_data.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_reset, %if.then.i)) #9
          to label %ssip_free_data.exit [label %if.then.i], !srcloc !330

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %context.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ssip_free_data.__UNIQUE_ID_ddebug337, ptr noundef nonnull @.str.40, ptr noundef %head.068, ptr noundef %33, ptr noundef %31) #9
  br label %ssip_free_data.exit

ssip_free_data.exit:                              ; preds = %if.then.i, %list_del.exit
  %destructor.i = getelementptr inbounds %struct.hsi_msg, ptr %head.068, i32 0, i32 5
  %34 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %destructor.i, align 4
  tail call void @consume_skb(ptr noundef %31) #9
  tail call void @hsi_free_msg(ptr noundef %head.068) #9
  %cmp.i.not = icmp eq ptr %tmp.069, %txqueue
  br i1 %cmp.i.not, label %ssip_free_data.exit.for.end_crit_edge, label %ssip_free_data.exit.for.body_crit_edge

ssip_free_data.exit.for.body_crit_edge:           ; preds = %ssip_free_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

ssip_free_data.exit.for.end_crit_edge:            ; preds = %ssip_free_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %ssip_free_data.exit.for.end_crit_edge, %if.end10.for.end_crit_edge
  %txqueue_len = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 6
  %35 = ptrtoint ptr %txqueue_len to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %txqueue_len, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssip_rxcmd_complete(ptr noundef %msg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cl1 = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %cl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl1, align 4
  %sgt.i = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 2
  %2 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sgt.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and.i.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %ssip_get_cmd.exit, label %do.body2.i.i.i, !prof !332

do.body2.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !338
  unreachable

ssip_get_cmd.exit:                                ; preds = %entry
  %and.i.i.i = and i32 %5, -4
  %6 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %6) #9
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %8
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i, align 4
  %shr = lshr i32 %10, 28
  %status = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 6
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp = icmp eq i32 %12, 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %ssip_get_cmd.exit
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.43) #12
  %13 = ptrtoint ptr %cl1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cl1, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_release_cmd.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_rxcmd_complete, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !330

if.then.i:                                        ; preds = %do.end
  %17 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sgt.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %and.i.i.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %ssip_get_cmd.exit.i, label %do.body2.i.i.i.i, !prof !332

do.body2.i.i.i.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !338
  unreachable

ssip_get_cmd.exit.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %cl1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cl1, align 4
  %and.i.i.i.i41 = and i32 %20, -4
  %23 = inttoptr i32 %and.i.i.i.i41 to ptr
  %call1.i.i.i = tail call ptr @page_address(ptr noundef %23) #9
  %offset.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %18, i32 0, i32 1
  %24 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %call1.i.i.i, i32 %25
  %26 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_release_cmd.__UNIQUE_ID_ddebug338, ptr noundef %22, ptr noundef nonnull @.str.42, i32 noundef %27) #9
  br label %do.end.i

do.end.i:                                         ; preds = %ssip_get_cmd.exit.i, %do.end
  %lock.i = getelementptr inbounds %struct.ssi_protocol, ptr %16, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #9
  %cmdqueue.i = getelementptr inbounds %struct.ssi_protocol, ptr %16, i32 0, i32 13
  %prev.i.i = getelementptr inbounds %struct.ssi_protocol, ptr %16, i32 0, i32 13, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %msg, ptr noundef %29, ptr noundef %cmdqueue.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.ssip_release_cmd.exit_crit_edge

do.end.i.ssip_release_cmd.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ssip_release_cmd.exit

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg, ptr %prev.i.i, align 4
  %31 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %cmdqueue.i, ptr %msg, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %msg, ptr %29, align 4
  br label %ssip_release_cmd.exit

ssip_release_cmd.exit:                            ; preds = %if.end.i.i.i, %do.end.i.ssip_release_cmd.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #9
  tail call fastcc void @ssip_error(ptr noundef %1)
  br label %cleanup

if.end:                                           ; preds = %ssip_get_cmd.exit
  %ttype.i = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 9
  %34 = ptrtoint ptr %ttype.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i = load i8, ptr %ttype.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %ttype.i, align 4
  %call.i = tail call i32 @hsi_async(ptr noundef %1, ptr noundef %msg) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_rxcmd_complete.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_rxcmd_complete, %if.then7)) #9
          to label %do.end11 [label %if.then7], !srcloc !330

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_rxcmd_complete.__UNIQUE_ID_ddebug360, ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef %10) #9
  br label %do.end11

do.end11:                                         ; preds = %if.then7, %if.end
  %35 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %shr, label %do.end18 [
    i32 0, label %do.end11.cleanup_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb12
    i32 3, label %sw.bb13
    i32 4, label %sw.bb14
    i32 5, label %sw.bb15
  ]

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ssip_rx_bootinforeq(ptr noundef %1, i32 noundef %10)
  br label %cleanup

sw.bb12:                                          ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ssip_rx_bootinforesp(ptr noundef %1, i32 noundef %10)
  br label %cleanup

sw.bb13:                                          ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ssip_rx_waketest(ptr noundef %1, i32 noundef %10)
  br label %cleanup

sw.bb14:                                          ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ssip_rx_strans(ptr noundef %1, i32 noundef %10)
  br label %cleanup

sw.bb15:                                          ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ssip_rx_ready(ptr noundef %1)
  br label %cleanup

do.end18:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.47, i32 noundef %10) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb, %do.end11.cleanup_crit_edge, %ssip_release_cmd.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssi_waketest(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssip_free_data(ptr noundef %msg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 3
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_free_data.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_free_data, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !330

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ssip_free_data.__UNIQUE_ID_ddebug337, ptr noundef nonnull @.str.40, ptr noundef %msg, ptr noundef %3, ptr noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %destructor = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 5
  %4 = ptrtoint ptr %destructor to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %destructor, align 4
  tail call void @consume_skb(ptr noundef %1) #9
  tail call void @hsi_free_msg(ptr noundef %msg) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hsi_free_msg(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssip_release_cmd(ptr noundef %msg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %cl = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_release_cmd.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_release_cmd, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !330

if.then:                                          ; preds = %entry
  %sgt.i = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 2
  %4 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sgt.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and.i.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %ssip_get_cmd.exit, label %do.body2.i.i.i, !prof !332

do.body2.i.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !338
  unreachable

ssip_get_cmd.exit:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cl, align 4
  %and.i.i.i = and i32 %7, -4
  %10 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %10) #9
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %12
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_release_cmd.__UNIQUE_ID_ddebug338, ptr noundef %9, ptr noundef nonnull @.str.42, i32 noundef %14) #9
  br label %do.end

do.end:                                           ; preds = %ssip_get_cmd.exit, %entry
  %lock = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %cmdqueue = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 13
  %prev.i = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 13, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %msg, ptr noundef %16, ptr noundef %cmdqueue) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_add_tail.exit_crit_edge

do.end.list_add_tail.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg, ptr %prev.i, align 4
  %18 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cmdqueue, ptr %msg, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %msg, ptr %16, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ssip_rx_bootinforeq(ptr noundef %cl, i32 noundef %cmd) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %cl, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 287454020, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 287454020
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %3, label %do.body30 [
    i32 2, label %do.end
    i32 0, label %if.end.sw.bb1_crit_edge
    i32 1, label %if.end.sw.bb1_crit_edge73
  ]

if.end.sw.bb1_crit_edge73:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

if.end.sw.bb1_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %cl, ptr noundef nonnull @.str.50) #12
  tail call fastcc void @ssip_error(ptr noundef %cl)
  br label %sw.bb1

sw.bb1:                                           ; preds = %do.end, %if.end.sw.bb1_crit_edge, %if.end.sw.bb1_crit_edge73
  %lock = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %1, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %flags = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 3
  %call4 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then5, label %sw.bb1.if.end6_crit_edge

sw.bb1.if.end6_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ssi_waketest(ptr noundef %cl, i32 noundef 1) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %sw.bb1.if.end6_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %tx_wd = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %6, 200
  %call9 = tail call i32 @mod_timer(ptr noundef %tx_wd, i32 noundef %add) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_rx_bootinforeq.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_rx_bootinforeq, %if.then16)) #9
          to label %do.end20 [label %if.then16], !srcloc !330

if.then16:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_rx_bootinforeq.__UNIQUE_ID_ddebug352, ptr noundef %cl, ptr noundef nonnull @.str.52) #9
  br label %do.end20

do.end20:                                         ; preds = %if.then16, %if.end6
  %and = and i32 %cmd, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp21.not = icmp eq i32 %and, 1
  br i1 %cmp21.not, label %do.end20.if.end27_crit_edge, label %do.end25

do.end20.if.end27_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

do.end25:                                         ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %cl, ptr noundef nonnull @.str.54) #12
  br label %if.end27

if.end27:                                         ; preds = %do.end25, %do.end20.if.end27_crit_edge
  %cmdqueue.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %cmdqueue.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %cmdqueue.i, align 4
  %cmp.i.not.i = icmp eq ptr %8, %cmdqueue.i
  br i1 %cmp.i.not.i, label %do.body3.i, label %do.end8.i, !prof !336

do.body3.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/hsi/clients/ssi_protocol.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 231, 0\0A.popsection", ""() #9, !srcloc !337
  unreachable

do.end8.i:                                        ; preds = %if.end27
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %9 = ptrtoint ptr %cmdqueue.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmdqueue.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end8.i.ssip_claim_cmd.exit_crit_edge

do.end8.i.ssip_claim_cmd.exit_crit_edge:          ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ssip_claim_cmd.exit

if.end.i.i.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %ssip_claim_cmd.exit

ssip_claim_cmd.exit:                              ; preds = %if.end.i.i.i, %do.end8.i.ssip_claim_cmd.exit_crit_edge
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %destructor.i = getelementptr inbounds %struct.hsi_msg, ptr %10, i32 0, i32 5
  %19 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ssip_release_cmd, ptr %destructor.i, align 4
  %sgt.i = getelementptr inbounds %struct.hsi_msg, ptr %10, i32 0, i32 2
  %20 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sgt.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %and.i.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %ssip_set_cmd.exit, label %do.body2.i.i.i, !prof !332

do.body2.i.i.i:                                   ; preds = %ssip_claim_cmd.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !338
  unreachable

ssip_set_cmd.exit:                                ; preds = %ssip_claim_cmd.exit
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i.i = and i32 %23, -4
  %24 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %24) #9
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %21, i32 0, i32 1
  %25 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %26
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 536870913, ptr %add.ptr.i.i, align 4
  %complete = getelementptr inbounds %struct.hsi_msg, ptr %10, i32 0, i32 4
  %28 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @ssip_release_cmd, ptr %complete, align 4
  %ttype.i = getelementptr inbounds %struct.hsi_msg, ptr %10, i32 0, i32 9
  %29 = ptrtoint ptr %ttype.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i = load i8, ptr %ttype.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %ttype.i, align 4
  %call.i = tail call i32 @hsi_async(ptr noundef %cl, ptr noundef %10) #9
  br label %cleanup

do.body30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_rx_bootinforeq.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_rx_bootinforeq, %if.then42)) #9
          to label %cleanup [label %if.then42], !srcloc !330

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_rx_bootinforeq.__UNIQUE_ID_ddebug353, ptr noundef %cl, ptr noundef nonnull @.str.56, i32 noundef %31) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %do.body30, %ssip_set_cmd.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ssip_rx_bootinforesp(ptr noundef %cl, i32 noundef %cmd) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %cl, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %and = and i32 %cmd, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp.not = icmp eq i32 %and, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %cl, ptr noundef nonnull @.str.57) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %lock = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp1.not = icmp eq i32 %3, 2
  br i1 %cmp1.not, label %do.body5, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %tx_wd = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %4, 200
  %call4 = tail call i32 @mod_timer(ptr noundef %tx_wd, i32 noundef %add) #9
  br label %if.end15

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_rx_bootinforesp.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_rx_bootinforesp, %if.then9)) #9
          to label %if.end15 [label %if.then9], !srcloc !330

if.then9:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_rx_bootinforesp.__UNIQUE_ID_ddebug354, ptr noundef %cl, ptr noundef nonnull @.str.59, i32 noundef %6) #9
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %do.body5, %if.then2
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ssip_rx_waketest(ptr noundef %cl, i32 noundef %cmd) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %cl, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_rx_waketest.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_rx_waketest, %if.then4)) #9
          to label %do.end [label %if.then4], !srcloc !330

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_rx_waketest.__UNIQUE_ID_ddebug355, ptr noundef %cl, ptr noundef nonnull @.str.61, i32 noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %flags = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 3
  %call9 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end7.if.end12_crit_edge, label %if.then11

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ssi_waketest(ptr noundef %cl, i32 noundef 0) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end7.if.end12_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %1, align 4
  %tx_wd = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 7
  %call15 = tail call i32 @del_timer(ptr noundef %tx_wd) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %and21 = and i32 %cmd, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %cond = select i1 %tobool22.not, ptr @.str.65, ptr @.str.64
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %cl, ptr noundef nonnull @.str.62, ptr noundef nonnull %cond) #12
  br i1 %tobool22.not, label %do.body27, label %if.then25

if.then25:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ssip_error(ptr noundef %cl)
  br label %cleanup

do.body27:                                        ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_rx_waketest.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_rx_waketest, %if.then39)) #9
          to label %do.end43 [label %if.then39], !srcloc !330

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_rx_waketest.__UNIQUE_ID_ddebug356, ptr noundef %cl, ptr noundef nonnull @.str.66) #9
  br label %do.end43

do.end43:                                         ; preds = %if.then39, %do.body27
  %netdev = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 103
  %9 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %10) #9
  %11 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev, align 4
  tail call void @netif_carrier_on(ptr noundef %12) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %if.then25, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ssip_rx_strans(ptr noundef %cl, i32 noundef %cmd) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %cl, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %shr = lshr i32 %cmd, 8
  %and = and i32 %shr, 65535
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_rx_strans.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_rx_strans, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !330

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_rx_strans.__UNIQUE_ID_ddebug359, ptr noundef %cl, ptr noundef nonnull @.str.68, i32 noundef %and) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end17, label %do.end13, !prof !332

do.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %send_state = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %send_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %send_state, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %cl, ptr noundef nonnull @.str.69, i32 noundef %5, i32 noundef %3) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  br label %cleanup

if.end17:                                         ; preds = %do.end
  %recv_state.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %recv_state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %recv_state.i, align 4
  %keep_alive7.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %7, 2
  %call9.i = tail call i32 @mod_timer(ptr noundef %keep_alive7.i, i32 noundef %add.i) #9
  %rx_wd10.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add12.i = add i32 %8, 200
  %call13.i = tail call i32 @mod_timer(ptr noundef %rx_wd10.i, i32 noundef %add12.i) #9
  %and18 = and i32 %cmd, 255
  %rxid = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %rxid to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rxid, align 4
  %conv = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and18, i32 %conv)
  %cmp19.not = icmp eq i32 %and18, %conv
  br i1 %cmp19.not, label %if.end36, label %do.end30, !prof !332

do.end30:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %cl, ptr noundef nonnull @.str.71, i32 noundef %and18, i32 noundef %conv) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  br label %out1

if.end36:                                         ; preds = %if.end17
  %inc = add i8 %10, 1
  %11 = ptrtoint ptr %rxid to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %inc, ptr %rxid, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %netdev = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev, align 4
  %mul = shl nuw nsw i32 %and, 2
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %13, i32 noundef %mul, i32 noundef 2592) #9
  %tobool40.not = icmp eq ptr %call.i, null
  br i1 %tobool40.not, label %do.end52, label %if.end54, !prof !336

do.end52:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %cl, ptr noundef nonnull @.str.74) #12
  br label %out1

if.end54:                                         ; preds = %if.end36
  %14 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev, align 4
  %16 = getelementptr inbounds %struct.anon.44, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %16, align 8
  %call57 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %mul) #9
  %call58 = tail call fastcc ptr @ssip_alloc_data(ptr noundef %1, ptr noundef nonnull %call.i)
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %do.end71, label %if.end73, !prof !336

do.end71:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %cl, ptr noundef nonnull @.str.77) #12
  tail call void @consume_skb(ptr noundef nonnull %call.i) #9
  br label %out1

if.end73:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %complete = getelementptr inbounds %struct.hsi_msg, ptr %call58, i32 0, i32 4
  %18 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ssip_rx_data_complete, ptr %complete, align 4
  %ttype.i = getelementptr inbounds %struct.hsi_msg, ptr %call58, i32 0, i32 9
  %19 = ptrtoint ptr %ttype.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i = load i8, ptr %ttype.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %ttype.i, align 4
  %call.i108 = tail call i32 @hsi_async(ptr noundef %cl, ptr noundef nonnull %call58) #9
  br label %cleanup

out1:                                             ; preds = %do.end71, %do.end52, %do.end30
  tail call fastcc void @ssip_error(ptr noundef %cl)
  br label %cleanup

cleanup:                                          ; preds = %out1, %if.end73, %do.end13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ssip_rx_ready(ptr noundef %cl) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %cl, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end13, label %do.body, !prof !332

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_rx_ready.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_rx_ready, %if.then10)) #9
          to label %do.end [label %if.then10], !srcloc !330

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %send_state = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %send_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %send_state, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_rx_ready.__UNIQUE_ID_ddebug357, ptr noundef %cl, ptr noundef nonnull @.str.86, i32 noundef %5, i32 noundef %7) #9
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  br label %cleanup

if.end13:                                         ; preds = %entry
  %send_state14 = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %send_state14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %send_state14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp15.not = icmp eq i32 %9, 1
  br i1 %cmp15.not, label %if.end35, label %do.body17

do.body17:                                        ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_rx_ready.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_rx_ready, %if.then29)) #9
          to label %do.end33 [label %if.then29], !srcloc !330

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_rx_ready.__UNIQUE_ID_ddebug358, ptr noundef %cl, ptr noundef nonnull @.str.87) #9
  br label %do.end33

do.end33:                                         ; preds = %if.then29, %do.body17
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  br label %cleanup

if.end35:                                         ; preds = %if.end13
  %10 = ptrtoint ptr %send_state14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %send_state14, align 4
  %tx_wd.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 7
  %call.i = tail call i32 @del_timer(ptr noundef %tx_wd.i) #9
  %recv_state.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %recv_state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %recv_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i = icmp eq i32 %12, 0
  br i1 %cmp.i, label %if.then.i, label %if.end35.ssip_set_txstate.exit_crit_edge

if.end35.ssip_set_txstate.exit_crit_edge:         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %ssip_set_txstate.exit

if.then.i:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %keep_alive.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 9
  %call1.i = tail call i32 @del_timer(ptr noundef %keep_alive.i) #9
  br label %ssip_set_txstate.exit

ssip_set_txstate.exit:                            ; preds = %if.then.i, %if.end35.ssip_set_txstate.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  tail call fastcc void @ssip_xmit(ptr noundef %cl)
  br label %cleanup

cleanup:                                          ; preds = %ssip_set_txstate.exit, %do.end33, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsi_async(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ssip_alloc_data(ptr nocapture noundef readonly %ssi, ptr noundef %skb) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv, 1
  %call1 = tail call ptr @hsi_alloc_msg(i32 noundef %add, i32 noundef 2592) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %nents.i = getelementptr inbounds %struct.hsi_msg, ptr %call1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nents.i, align 4
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nr_frags.i, align 2
  %conv.i = zext i8 %9 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add.i)
  %cmp.not.i = icmp eq i32 %5, %add.i
  br i1 %cmp.not.i, label %do.end8.i, label %do.body3.i, !prof !332

do.body3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/hsi/clients/ssi_protocol.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 176, 0\0A.popsection", ""() #9, !srcloc !339
  unreachable

do.end8.i:                                        ; preds = %if.end
  %sgt.i = getelementptr inbounds %struct.hsi_msg, ptr %call1, i32 0, i32 2
  %10 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sgt.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %16 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %15, %17
  %18 = ptrtoint ptr %13 to i32
  %cmp.i.i = icmp ugt ptr %13, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %do.end8.i.do.body5.i.i_crit_edge, !prof !332

do.end8.i.do.body5.i.i_crit_edge:                 ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i

land.lhs.true.i.i:                                ; preds = %do.end8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %19 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i = icmp ugt ptr %19, %13
  br i1 %cmp1.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.do.body5.i.i_crit_edge, !prof !332

land.lhs.true.i.i.do.body5.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %sub.i53.i = add i32 %18, 1073741824
  %shr.i.i = lshr i32 %sub.i53.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %20 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %20, %shr.i.i
  %call.i.i = tail call i32 @pfn_valid(i32 noundef %add.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.i, label %land.rhs.i.i.do.body5.i.i_crit_edge, label %do.end8.i.i, !prof !336

land.rhs.i.i.do.body5.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i.i

do.body5.i.i:                                     ; preds = %land.rhs.i.i.do.body5.i.i_crit_edge, %land.lhs.true.i.i.do.body5.i.i_crit_edge, %do.end8.i.do.body5.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !340
  unreachable

do.end8.i.i:                                      ; preds = %land.rhs.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %21 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i = getelementptr %struct.page, ptr %21, i32 %shr.i.i
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %11, align 4
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  %and2.i.i.i.i = and i32 %24, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.body11.i.i.i.i, label %do.body5.i.i.i.i, !prof !332

do.body5.i.i.i.i:                                 ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !341
  unreachable

do.body11.i.i.i.i:                                ; preds = %do.end8.i.i
  %and.i.i.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %sg_set_buf.exit.i, label %do.body19.i.i.i.i, !prof !332

do.body19.i.i.i.i:                                ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !342
  unreachable

sg_set_buf.exit.i:                                ; preds = %do.body11.i.i.i.i
  %and.i.i = and i32 %18, 4095
  %and.i.i.i.i = and i32 %23, 3
  %or.i.i.i.i = or i32 %and.i.i.i.i, %24
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or.i.i.i.i, ptr %11, align 4
  %offset1.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %11, i32 0, i32 1
  %26 = ptrtoint ptr %offset1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and.i.i, ptr %offset1.i.i.i, align 4
  %length.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %11, i32 0, i32 2
  %27 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub.i.i, ptr %length.i.i.i, align 4
  %28 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %end.i, align 4
  %nr_frags1257.i = getelementptr inbounds %struct.skb_shared_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %nr_frags1257.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %nr_frags1257.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp1459.not.i = icmp eq i8 %31, 0
  br i1 %cmp1459.not.i, label %sg_set_buf.exit.i.ssip_skb_to_msg.exit_crit_edge, label %sg_set_buf.exit.i.for.body.i_crit_edge

sg_set_buf.exit.i.for.body.i_crit_edge:           ; preds = %sg_set_buf.exit.i
  br label %for.body.i

sg_set_buf.exit.i.ssip_skb_to_msg.exit_crit_edge: ; preds = %sg_set_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ssip_skb_to_msg.exit

for.body.i:                                       ; preds = %sg_set_page.exit.i.for.body.i_crit_edge, %sg_set_buf.exit.i.for.body.i_crit_edge
  %i.061.i = phi i32 [ %inc.i, %sg_set_page.exit.i.for.body.i_crit_edge ], [ 0, %sg_set_buf.exit.i.for.body.i_crit_edge ]
  %sg.060.i = phi ptr [ %call16.i, %sg_set_page.exit.i.for.body.i_crit_edge ], [ %11, %sg_set_buf.exit.i.for.body.i_crit_edge ]
  %call16.i = tail call ptr @sg_next(ptr noundef %sg.060.i) #9
  %tobool18.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool18.not.i, label %do.body28.i, label %do.end36.i, !prof !336

do.body28.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/hsi/clients/ssi_protocol.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 182, 0\0A.popsection", ""() #9, !srcloc !343
  unreachable

do.end36.i:                                       ; preds = %for.body.i
  %32 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %end.i, align 4
  %arrayidx.i = getelementptr %struct.skb_shared_info, ptr %33, i32 0, i32 12, i32 %i.061.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 4
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %33, i32 0, i32 12, i32 %i.061.i, i32 1
  %36 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bv_len.i.i, align 4
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %33, i32 0, i32 12, i32 %i.061.i, i32 2
  %38 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bv_offset.i.i, align 4
  %40 = ptrtoint ptr %call16.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %call16.i, align 4
  %42 = ptrtoint ptr %35 to i32
  %and2.i.i.i = and i32 %42, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !332

do.body5.i.i.i:                                   ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !341
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end36.i
  %and.i.i.i56.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i56.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i56.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_page.exit.i, label %do.body19.i.i.i, !prof !332

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !342
  unreachable

sg_set_page.exit.i:                               ; preds = %do.body11.i.i.i
  %and.i.i.i = and i32 %41, 3
  %or.i.i.i = or i32 %and.i.i.i, %42
  %43 = ptrtoint ptr %call16.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or.i.i.i, ptr %call16.i, align 4
  %offset1.i.i = getelementptr inbounds %struct.scatterlist, ptr %call16.i, i32 0, i32 1
  %44 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %39, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %call16.i, i32 0, i32 2
  %45 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %37, ptr %length.i.i, align 4
  %inc.i = add nuw nsw i32 %i.061.i, 1
  %46 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %end.i, align 4
  %nr_frags12.i = getelementptr inbounds %struct.skb_shared_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %nr_frags12.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %nr_frags12.i, align 2
  %conv13.i = zext i8 %49 to i32
  %cmp14.i = icmp ult i32 %inc.i, %conv13.i
  br i1 %cmp14.i, label %sg_set_page.exit.i.for.body.i_crit_edge, label %sg_set_page.exit.i.ssip_skb_to_msg.exit_crit_edge

sg_set_page.exit.i.ssip_skb_to_msg.exit_crit_edge: ; preds = %sg_set_page.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ssip_skb_to_msg.exit

sg_set_page.exit.i.for.body.i_crit_edge:          ; preds = %sg_set_page.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

ssip_skb_to_msg.exit:                             ; preds = %sg_set_page.exit.i.ssip_skb_to_msg.exit_crit_edge, %sg_set_buf.exit.i.ssip_skb_to_msg.exit_crit_edge
  %destructor = getelementptr inbounds %struct.hsi_msg, ptr %call1, i32 0, i32 5
  %50 = ptrtoint ptr %destructor to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @ssip_free_data, ptr %destructor, align 4
  %channel_id_data = getelementptr inbounds %struct.ssi_protocol, ptr %ssi, i32 0, i32 19
  %51 = ptrtoint ptr %channel_id_data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %channel_id_data, align 4
  %channel = getelementptr inbounds %struct.hsi_msg, ptr %call1, i32 0, i32 8
  %53 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %channel, align 4
  %context = getelementptr inbounds %struct.hsi_msg, ptr %call1, i32 0, i32 3
  %54 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %skb, ptr %context, align 4
  br label %cleanup

cleanup:                                          ; preds = %ssip_skb_to_msg.exit, %entry.cleanup_crit_edge
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssip_rx_data_complete(ptr noundef %msg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cl1 = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %cl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl1, align 4
  %status = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 6
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.79) #12
  %context.i = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 3
  %4 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_free_data.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_rx_data_complete, %if.then.i)) #9
          to label %ssip_free_data.exit [label %if.then.i], !srcloc !330

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %context.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ssip_free_data.__UNIQUE_ID_ddebug337, ptr noundef nonnull @.str.40, ptr noundef %msg, ptr noundef %7, ptr noundef %5) #9
  br label %ssip_free_data.exit

ssip_free_data.exit:                              ; preds = %if.then.i, %do.end
  %destructor.i = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 5
  %8 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %destructor.i, align 4
  tail call void @consume_skb(ptr noundef %5) #9
  tail call void @hsi_free_msg(ptr noundef %msg) #9
  tail call fastcc void @ssip_error(ptr noundef %1)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i, align 4
  %rx_wd = getelementptr inbounds %struct.ssi_protocol, ptr %10, i32 0, i32 8
  %call2 = tail call i32 @del_timer(ptr noundef %rx_wd) #9
  %context = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 3
  %11 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %context, align 4
  tail call fastcc void @ssip_pn_rx(ptr noundef %12)
  tail call void @hsi_free_msg(ptr noundef %msg) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ssip_free_data.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hsi_alloc_msg(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ssip_pn_rx(ptr noundef %skb) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %do.body, label %if.end13, !prof !336

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_pn_rx.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_pn_rx, %if.then11)) #9
          to label %do.end [label %if.then11], !srcloc !330

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev12 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 133
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_pn_rx.__UNIQUE_ID_ddebug349, ptr noundef %dev12, ptr noundef nonnull @.str.82) #9
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 6
  %5 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %6, 1
  store i32 %inc, ptr %rx_dropped, align 8
  tail call void @consume_skb(ptr noundef %skb) #9
  br label %cleanup

if.end13:                                         ; preds = %entry
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %9 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %8, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub.i.i)
  %cmp.i = icmp ugt i32 %sub.i.i, 5
  br i1 %cmp.i, label %if.end13.if.end45_crit_edge, label %if.end.i, !prof !332

if.end13.if.end45_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %8)
  %cmp3.i = icmp ult i32 %8, 6
  br i1 %cmp3.i, label %if.end.i.do.body24_crit_edge, label %pskb_may_pull.exit, !prof !336

if.end.i.do.body24_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body24

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 6, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #9
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.do.body24_crit_edge, label %pskb_may_pull.exit.if.end45_crit_edge, !prof !336

pskb_may_pull.exit.if.end45_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

pskb_may_pull.exit.do.body24_crit_edge:           ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body24

do.body24:                                        ; preds = %pskb_may_pull.exit.do.body24_crit_edge, %if.end.i.do.body24_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_pn_rx.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_pn_rx, %if.then36)) #9
          to label %do.end40 [label %if.then36], !srcloc !330

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  %dev37 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 133
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_pn_rx.__UNIQUE_ID_ddebug350, ptr noundef %dev37, ptr noundef nonnull @.str.83) #9
  br label %do.end40

do.end40:                                         ; preds = %if.then36, %do.body24
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 4
  %11 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_errors, align 8
  %inc42 = add i32 %12, 1
  store i32 %inc42, ptr %rx_errors, align 8
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 10
  %13 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_length_errors, align 8
  %inc44 = add i32 %14, 1
  store i32 %inc44, ptr %rx_length_errors, align 8
  tail call void @consume_skb(ptr noundef %skb) #9
  br label %cleanup

if.end45:                                         ; preds = %pskb_may_pull.exit.if.end45_crit_edge, %if.end13.if.end45_crit_edge
  %stats46 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36
  %15 = ptrtoint ptr %stats46 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stats46, align 8
  %inc47 = add i32 %16, 1
  store i32 %inc47, ptr %stats46, align 8
  %17 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i.i, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 2
  %19 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %20, %18
  store i32 %add, ptr %rx_bytes, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_pn_rx.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_pn_rx, %if.then63)) #9
          to label %do.end72 [label %if.then63], !srcloc !330

if.then63:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %dev64 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 133
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %arrayidx66 = getelementptr i16, ptr %22, i32 2
  %23 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx66, align 2
  %conv = zext i16 %24 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_pn_rx.__UNIQUE_ID_ddebug351, ptr noundef %dev64, ptr noundef nonnull @.str.84, i32 noundef %conv, i32 noundef %conv) #9
  br label %do.end72

do.end72:                                         ; preds = %if.then63, %if.end45
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %25 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 245, ptr %protocol, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %28 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %27 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %30 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %31 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len.i.i, align 4
  %sub.i102 = add i32 %32, -1
  store i32 %sub.i102, ptr %len.i.i, align 4
  %33 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i102, i32 %34)
  %cmp.i103 = icmp ult i32 %sub.i102, %34
  br i1 %cmp.i103, label %do.body4.i, label %__skb_pull.exit, !prof !336

do.body4.i:                                       ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #9, !srcloc !344
  unreachable

__skb_pull.exit:                                  ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %27, i32 1
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr.i, ptr %data.i, align 4
  %call74 = tail call i32 @netif_rx(ptr noundef %skb) #9
  br label %cleanup

cleanup:                                          ; preds = %__skb_pull.exit, %do.end40, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ssip_xmit(ptr noundef %cl) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %cl, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %txqueue = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %txqueue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %txqueue, align 4
  %cmp.i.not = icmp eq ptr %3, %txqueue
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %txqueue_len = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %txqueue_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %txqueue_len, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %txqueue_len, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %cmdqueue.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %cmdqueue.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %cmdqueue.i, align 4
  %cmp.i.not.i = icmp eq ptr %15, %cmdqueue.i
  br i1 %cmp.i.not.i, label %do.body3.i, label %do.end8.i, !prof !336

do.body3.i:                                       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/hsi/clients/ssi_protocol.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 231, 0\0A.popsection", ""() #9, !srcloc !337
  unreachable

do.end8.i:                                        ; preds = %list_del.exit
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %16 = ptrtoint ptr %cmdqueue.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cmdqueue.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %17) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end8.i.ssip_claim_cmd.exit_crit_edge

do.end8.i.ssip_claim_cmd.exit_crit_edge:          ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ssip_claim_cmd.exit

if.end.i.i.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %ssip_claim_cmd.exit

ssip_claim_cmd.exit:                              ; preds = %if.end.i.i.i, %do.end8.i.ssip_claim_cmd.exit_crit_edge
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  %prev.i.i1 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i1, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %destructor.i = getelementptr inbounds %struct.hsi_msg, ptr %17, i32 0, i32 5
  %26 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ssip_release_cmd, ptr %destructor.i, align 4
  %context = getelementptr inbounds %struct.hsi_msg, ptr %3, i32 0, i32 3
  %27 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %context, align 4
  %context6 = getelementptr inbounds %struct.hsi_msg, ptr %17, i32 0, i32 3
  %29 = ptrtoint ptr %context6 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %3, ptr %context6, align 4
  %complete = getelementptr inbounds %struct.hsi_msg, ptr %17, i32 0, i32 4
  %30 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @ssip_strans_complete, ptr %complete, align 4
  store ptr @ssip_free_strans, ptr %destructor.i, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %len = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 6
  %sgt.i = getelementptr inbounds %struct.hsi_msg, ptr %17, i32 0, i32 2
  %31 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sgt.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %and.i.i.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %ssip_set_cmd.exit, label %do.body2.i.i.i, !prof !332

do.body2.i.i.i:                                   ; preds = %ssip_claim_cmd.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !338
  unreachable

ssip_set_cmd.exit:                                ; preds = %ssip_claim_cmd.exit
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len, align 4
  %sub = shl i32 %36, 6
  %37 = add i32 %sub, 192
  %shl = and i32 %37, 268435200
  %txid = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 5
  %38 = ptrtoint ptr %txid to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %txid, align 1
  %conv = zext i8 %39 to i32
  %or = or i32 %shl, %conv
  %or9 = or i32 %or, 1073741824
  %and.i.i.i = and i32 %34, -4
  %40 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %40) #9
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %32, i32 0, i32 1
  %41 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %42
  %43 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or9, ptr %add.ptr.i.i, align 4
  %44 = ptrtoint ptr %txid to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %txid, align 1
  %inc = add i8 %45, 1
  store i8 %inc, ptr %txid, align 1
  %send_state.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %send_state.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 3, ptr %send_state.i, align 4
  %keep_alive3.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %47, 2
  %call5.i = tail call i32 @mod_timer(ptr noundef %keep_alive3.i, i32 noundef %add.i) #9
  %tx_wd6.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %add8.i = add i32 %48, 200
  %call9.i = tail call i32 @mod_timer(ptr noundef %tx_wd6.i, i32 noundef %add8.i) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_xmit.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_xmit, %if.then17)) #9
          to label %do.end [label %if.then17], !srcloc !330

if.then17:                                        ; preds = %ssip_set_cmd.exit
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len, align 4
  %sub19 = add i32 %50, -1
  %shr20 = lshr i32 %sub19, 2
  %add21 = add nuw nsw i32 %shr20, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_xmit.__UNIQUE_ID_ddebug348, ptr noundef %cl, ptr noundef nonnull @.str.89, i32 noundef %add21) #9
  br label %do.end

do.end:                                           ; preds = %if.then17, %ssip_set_cmd.exit
  %ttype.i = getelementptr inbounds %struct.hsi_msg, ptr %17, i32 0, i32 9
  %51 = ptrtoint ptr %ttype.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load.i = load i8, ptr %ttype.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %ttype.i, align 4
  %call.i = tail call i32 @hsi_async(ptr noundef %cl, ptr noundef %17) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssip_strans_complete(ptr noundef %msg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cl1 = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %cl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %context = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 3
  %4 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_release_cmd.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_strans_complete, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !330

if.then.i:                                        ; preds = %entry
  %sgt.i.i = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 2
  %6 = ptrtoint ptr %sgt.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sgt.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %and.i.i.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %ssip_get_cmd.exit.i, label %do.body2.i.i.i.i, !prof !332

do.body2.i.i.i.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !338
  unreachable

ssip_get_cmd.exit.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %cl1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cl1, align 4
  %and.i.i.i.i = and i32 %9, -4
  %12 = inttoptr i32 %and.i.i.i.i to ptr
  %call1.i.i.i = tail call ptr @page_address(ptr noundef %12) #9
  %offset.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 1
  %13 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %call1.i.i.i, i32 %14
  %15 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_release_cmd.__UNIQUE_ID_ddebug338, ptr noundef %11, ptr noundef nonnull @.str.42, i32 noundef %16) #9
  br label %do.end.i

do.end.i:                                         ; preds = %ssip_get_cmd.exit.i, %entry
  %lock.i = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #9
  %cmdqueue.i = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 13
  %prev.i.i = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 13, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %msg, ptr noundef %18, ptr noundef %cmdqueue.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.ssip_release_cmd.exit_crit_edge

do.end.i.ssip_release_cmd.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ssip_release_cmd.exit

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %cmdqueue.i, ptr %msg, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %msg, ptr %18, align 4
  br label %ssip_release_cmd.exit

ssip_release_cmd.exit:                            ; preds = %if.end.i.i.i, %do.end.i.ssip_release_cmd.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #9
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #9
  %send_state.i = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 1
  %23 = ptrtoint ptr %send_state.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %send_state.i, align 4
  %keep_alive3.i = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %24, 2
  %call5.i = tail call i32 @mod_timer(ptr noundef %keep_alive3.i, i32 noundef %add.i) #9
  %tx_wd6.i = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %add8.i = add i32 %25, 200
  %call9.i = tail call i32 @mod_timer(ptr noundef %tx_wd6.i, i32 noundef %add8.i) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #9
  %ttype.i = getelementptr inbounds %struct.hsi_msg, ptr %5, i32 0, i32 9
  %26 = ptrtoint ptr %ttype.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i = load i8, ptr %ttype.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %ttype.i, align 4
  %call.i = tail call i32 @hsi_async(ptr noundef %1, ptr noundef %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssip_free_strans(ptr noundef %msg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 3
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %context.i = getelementptr inbounds %struct.hsi_msg, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_free_data.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_free_strans, %if.then.i)) #9
          to label %ssip_free_data.exit [label %if.then.i], !srcloc !330

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ssip_free_data.__UNIQUE_ID_ddebug337, ptr noundef nonnull @.str.40, ptr noundef %1, ptr noundef %5, ptr noundef %3) #9
  br label %ssip_free_data.exit

ssip_free_data.exit:                              ; preds = %if.then.i, %entry
  %destructor.i = getelementptr inbounds %struct.hsi_msg, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %destructor.i, align 4
  tail call void @consume_skb(ptr noundef %3) #9
  tail call void @hsi_free_msg(ptr noundef %1) #9
  %cl.i = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %cl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cl.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_release_cmd.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_free_strans, %if.then.i2)) #9
          to label %do.end.i [label %if.then.i2], !srcloc !330

if.then.i2:                                       ; preds = %ssip_free_data.exit
  %sgt.i.i = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %sgt.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sgt.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %and.i.i.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %ssip_get_cmd.exit.i, label %do.body2.i.i.i.i, !prof !332

do.body2.i.i.i.i:                                 ; preds = %if.then.i2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !338
  unreachable

ssip_get_cmd.exit.i:                              ; preds = %if.then.i2
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %cl.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cl.i, align 4
  %and.i.i.i.i = and i32 %14, -4
  %17 = inttoptr i32 %and.i.i.i.i to ptr
  %call1.i.i.i = tail call ptr @page_address(ptr noundef %17) #9
  %offset.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %12, i32 0, i32 1
  %18 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %call1.i.i.i, i32 %19
  %20 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_release_cmd.__UNIQUE_ID_ddebug338, ptr noundef %16, ptr noundef nonnull @.str.42, i32 noundef %21) #9
  br label %do.end.i

do.end.i:                                         ; preds = %ssip_get_cmd.exit.i, %ssip_free_data.exit
  %lock.i = getelementptr inbounds %struct.ssi_protocol, ptr %10, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #9
  %cmdqueue.i = getelementptr inbounds %struct.ssi_protocol, ptr %10, i32 0, i32 13
  %prev.i.i = getelementptr inbounds %struct.ssi_protocol, ptr %10, i32 0, i32 13, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %msg, ptr noundef %23, ptr noundef %cmdqueue.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.ssip_release_cmd.exit_crit_edge

do.end.i.ssip_release_cmd.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ssip_release_cmd.exit

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %cmdqueue.i, ptr %msg, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %msg, ptr %23, align 4
  br label %ssip_release_cmd.exit

ssip_release_cmd.exit:                            ; preds = %if.end.i.i.i, %do.end.i.ssip_release_cmd.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsi_register_client_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssi_protocol_probe(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 300) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.ssi_protocol, ptr %call7.i.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.93, ptr noundef nonnull @ssi_protocol_probe.__key, i16 noundef signext 3) #9
  %rx_wd = getelementptr inbounds %struct.ssi_protocol, ptr %call7.i.i, i32 0, i32 8
  tail call void @init_timer_key(ptr noundef %rx_wd, ptr noundef nonnull @ssip_rx_wd, i32 noundef 524288, ptr noundef nonnull @.str.95, ptr noundef nonnull @ssi_protocol_probe.__key.94) #9
  %tx_wd = getelementptr inbounds %struct.ssi_protocol, ptr %call7.i.i, i32 0, i32 7
  tail call void @init_timer_key(ptr noundef %tx_wd, ptr noundef nonnull @ssip_tx_wd, i32 noundef 524288, ptr noundef nonnull @.str.97, ptr noundef nonnull @ssi_protocol_probe.__key.96) #9
  %keep_alive = getelementptr inbounds %struct.ssi_protocol, ptr %call7.i.i, i32 0, i32 9
  tail call void @init_timer_key(ptr noundef %keep_alive, ptr noundef nonnull @ssip_keep_alive, i32 noundef 0, ptr noundef nonnull @.str.99, ptr noundef nonnull @ssi_protocol_probe.__key.98) #9
  %txqueue = getelementptr inbounds %struct.ssi_protocol, ptr %call7.i.i, i32 0, i32 12
  %1 = ptrtoint ptr %txqueue to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %txqueue, ptr %txqueue, align 8
  %prev.i = getelementptr inbounds %struct.ssi_protocol, ptr %call7.i.i, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %txqueue, ptr %prev.i, align 4
  %cmdqueue = getelementptr inbounds %struct.ssi_protocol, ptr %call7.i.i, i32 0, i32 13
  %3 = ptrtoint ptr %cmdqueue to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %cmdqueue, ptr %cmdqueue, align 8
  %prev.i129 = getelementptr inbounds %struct.ssi_protocol, ptr %call7.i.i, i32 0, i32 13, i32 1
  %4 = ptrtoint ptr %prev.i129 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cmdqueue, ptr %prev.i129, align 4
  %tx_usecnt = getelementptr inbounds %struct.ssi_protocol, ptr %call7.i.i, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_usecnt, i32 noundef 4) #9
  %5 = ptrtoint ptr %tx_usecnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %tx_usecnt, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %cl11 = getelementptr inbounds %struct.ssi_protocol, ptr %call7.i.i, i32 0, i32 15
  %7 = ptrtoint ptr %cl11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %cl11, align 4
  %work = getelementptr inbounds %struct.ssi_protocol, ptr %call7.i.i, i32 0, i32 14
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #9
  %8 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.ssi_protocol, ptr %call7.i.i, i32 0, i32 14, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.101, ptr noundef nonnull @ssi_protocol_probe.__key.100, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry16 = getelementptr inbounds %struct.ssi_protocol, ptr %call7.i.i, i32 0, i32 14, i32 1
  %9 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry16, ptr %entry16, align 4
  %prev.i130 = getelementptr inbounds %struct.ssi_protocol, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i130 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry16, ptr %prev.i130, align 8
  %func = getelementptr inbounds %struct.ssi_protocol, ptr %call7.i.i, i32 0, i32 14, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ssip_xmit_work, ptr %func, align 4
  %call20 = tail call i32 @hsi_get_channel_id_by_name(ptr noundef %dev, ptr noundef nonnull @.str.102) #9
  %channel_id_cmd = getelementptr inbounds %struct.ssi_protocol, ptr %call7.i.i, i32 0, i32 18
  %12 = ptrtoint ptr %channel_id_cmd to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call20, ptr %channel_id_cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %if.then22, label %if.end27

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.103, i32 noundef %call20) #12
  br label %out

if.end27:                                         ; preds = %do.body
  %call28 = tail call i32 @hsi_get_channel_id_by_name(ptr noundef %dev, ptr noundef nonnull @.str.105) #9
  %channel_id_data = getelementptr inbounds %struct.ssi_protocol, ptr %call7.i.i, i32 0, i32 19
  %13 = ptrtoint ptr %channel_id_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call28, ptr %channel_id_data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp30 = icmp slt i32 %call28, 0
  br i1 %cmp30, label %if.then31, label %if.end27.for.body.i_crit_edge

if.end27.for.body.i_crit_edge:                    ; preds = %if.end27
  br label %for.body.i

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.107, i32 noundef %call28) #12
  br label %out

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %if.end27.for.body.i_crit_edge
  %i.017.i = phi i32 [ %inc.i, %list_add_tail.exit.i.for.body.i_crit_edge ], [ 0, %if.end27.for.body.i_crit_edge ]
  %call.i = tail call ptr @hsi_alloc_msg(i32 noundef 1, i32 noundef 3264) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.i.out.i_crit_edge, label %if.end.i

for.body.i.out.i_crit_edge:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i131 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 4) #13
  %tobool2.not.i = icmp eq ptr %call7.i.i131, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @hsi_free_msg(ptr noundef nonnull %call.i) #9
  br label %out.i

if.end4.i:                                        ; preds = %if.end.i
  %sgt.i = getelementptr inbounds %struct.hsi_msg, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sgt.i, align 4
  tail call void @sg_init_one(ptr noundef %16, ptr noundef nonnull %call7.i.i131, i32 noundef 4) #9
  %17 = ptrtoint ptr %channel_id_cmd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channel_id_cmd, align 4
  %channel.i = getelementptr inbounds %struct.hsi_msg, ptr %call.i, i32 0, i32 8
  %19 = ptrtoint ptr %channel.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %channel.i, align 4
  %20 = ptrtoint ptr %prev.i129 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i129, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %21, ptr noundef %cmdqueue) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end4.i.list_add_tail.exit.i_crit_edge

if.end4.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %prev.i129 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %prev.i129, align 4
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %cmdqueue, ptr %call.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %call.i, ptr %21, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end4.i.list_add_tail.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 5
  br i1 %exitcond.not.i, label %if.end43, label %list_add_tail.exit.i.for.body.i_crit_edge

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

out.i:                                            ; preds = %if.then3.i, %for.body.i.out.i_crit_edge
  %26 = ptrtoint ptr %cmdqueue to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmdqueue, align 8
  %cmp.not21.i.i = icmp eq ptr %27, %cmdqueue
  br i1 %cmp.not21.i.i, label %out.i.do.end42_crit_edge, label %out.i.for.body.i.i_crit_edge

out.i.for.body.i.i_crit_edge:                     ; preds = %out.i
  br label %for.body.i.i

out.i.do.end42_crit_edge:                         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42

for.body.i.i:                                     ; preds = %sg_virt.exit.i.i.for.body.i.i_crit_edge, %out.i.for.body.i.i_crit_edge
  %msg.022.i.i = phi ptr [ %tmp.0.i.i, %sg_virt.exit.i.i.for.body.i.i_crit_edge ], [ %27, %out.i.for.body.i.i_crit_edge ]
  %28 = ptrtoint ptr %msg.022.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %tmp.0.i.i = load ptr, ptr %msg.022.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %msg.022.i.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.i.list_del.exit.i.i_crit_edge

for.body.i.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.022.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i.i, align 4
  %31 = ptrtoint ptr %msg.022.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %msg.022.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i.i.list_del.exit.i.i_crit_edge
  %35 = ptrtoint ptr %msg.022.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %msg.022.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.022.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %destructor.i.i = getelementptr inbounds %struct.hsi_msg, ptr %msg.022.i.i, i32 0, i32 5
  %37 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %destructor.i.i, align 4
  %sgt.i.i = getelementptr inbounds %struct.hsi_msg, ptr %msg.022.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %sgt.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sgt.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %and.i.i.i.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %sg_virt.exit.i.i, label %do.body2.i.i.i.i, !prof !332

do.body2.i.i.i.i:                                 ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !338
  unreachable

sg_virt.exit.i.i:                                 ; preds = %list_del.exit.i.i
  %and.i.i.i.i = and i32 %41, -4
  %42 = inttoptr i32 %and.i.i.i.i to ptr
  %call1.i.i.i = tail call ptr @page_address(ptr noundef %42) #9
  %offset.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %39, i32 0, i32 1
  %43 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %call1.i.i.i, i32 %44
  tail call void @kfree(ptr noundef %add.ptr.i.i.i) #9
  tail call void @hsi_free_msg(ptr noundef %msg.022.i.i) #9
  %cmp.not.i.i = icmp eq ptr %tmp.0.i.i, %cmdqueue
  br i1 %cmp.not.i.i, label %sg_virt.exit.i.i.do.end42_crit_edge, label %sg_virt.exit.i.i.for.body.i.i_crit_edge

sg_virt.exit.i.i.for.body.i.i_crit_edge:          ; preds = %sg_virt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

sg_virt.exit.i.i.do.end42_crit_edge:              ; preds = %sg_virt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42

do.end42:                                         ; preds = %sg_virt.exit.i.i.do.end42_crit_edge, %out.i.do.end42_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.110) #12
  br label %out

if.end43:                                         ; preds = %list_add_tail.exit.i
  %call44 = tail call ptr @alloc_netdev_mqs(i32 noundef 0, ptr noundef nonnull @ssi_protocol_probe.ifname, i8 noundef zeroext 0, ptr noundef nonnull @ssip_pn_setup, i32 noundef 1, i32 noundef 1) #9
  %netdev = getelementptr inbounds %struct.ssi_protocol, ptr %call7.i.i, i32 0, i32 11
  %45 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call44, ptr %netdev, align 4
  %tobool46.not = icmp eq ptr %call44, null
  br i1 %tobool46.not, label %do.end50, label %if.end51

do.end50:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.113) #12
  br label %out1

if.end51:                                         ; preds = %if.end43
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call44, i32 0, i32 30
  %46 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 6, ptr %min_mtu, align 8
  %47 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %netdev, align 4
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 31
  %49 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 65535, ptr %max_mtu, align 4
  %50 = load ptr, ptr %netdev, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 133, i32 1
  %51 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %dev, ptr %parent, align 8
  %52 = load ptr, ptr %netdev, align 4
  tail call void @netif_carrier_off(ptr noundef %52) #9
  %53 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %netdev, align 4
  %call58 = tail call i32 @register_netdev(ptr noundef %54) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %do.end63, label %if.end64

do.end63:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.116, i32 noundef %call58) #12
  %55 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %netdev, align 4
  tail call void @free_netdev(ptr noundef %56) #9
  br label %out1

if.end64:                                         ; preds = %if.end51
  %link = getelementptr inbounds %struct.ssi_protocol, ptr %call7.i.i, i32 0, i32 16
  %57 = load ptr, ptr @ssip_list, align 4
  %call.i.i133 = tail call zeroext i1 @__list_add_valid(ptr noundef %link, ptr noundef nonnull @ssip_list, ptr noundef %57) #9
  br i1 %call.i.i133, label %if.end.i.i, label %if.end64.list_add.exit_crit_edge

if.end64.list_add.exit_crit_edge:                 ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %link, ptr %prev1.i.i, align 4
  %59 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %57, ptr %link, align 8
  %prev3.i.i = getelementptr inbounds %struct.ssi_protocol, ptr %call7.i.i, i32 0, i32 16, i32 1
  %60 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @ssip_list, ptr %prev3.i.i, align 4
  store volatile ptr %link, ptr @ssip_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end64.list_add.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssi_protocol_probe.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssi_protocol_probe, %if.then71)) #9
          to label %cleanup [label %if.then71], !srcloc !330

if.then71:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %channel_id_cmd to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %channel_id_cmd, align 4
  %63 = ptrtoint ptr %channel_id_data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %channel_id_data, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssi_protocol_probe.__UNIQUE_ID_ddebug367, ptr noundef %dev, ptr noundef nonnull @.str.118, i32 noundef %62, i32 noundef %64) #9
  br label %cleanup

out1:                                             ; preds = %do.end63, %do.end50
  %err.0 = phi i32 [ %call58, %do.end63 ], [ -12, %do.end50 ]
  %65 = ptrtoint ptr %cmdqueue to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cmdqueue, align 8
  %cmp.not21.i = icmp eq ptr %66, %cmdqueue
  br i1 %cmp.not21.i, label %out1.out_crit_edge, label %out1.for.body.i136_crit_edge

out1.for.body.i136_crit_edge:                     ; preds = %out1
  br label %for.body.i136

out1.out_crit_edge:                               ; preds = %out1
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body.i136:                                    ; preds = %sg_virt.exit.i.for.body.i136_crit_edge, %out1.for.body.i136_crit_edge
  %msg.022.i = phi ptr [ %tmp.0.i, %sg_virt.exit.i.for.body.i136_crit_edge ], [ %66, %out1.for.body.i136_crit_edge ]
  %67 = ptrtoint ptr %msg.022.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %tmp.0.i = load ptr, ptr %msg.022.i, align 4
  %call.i.i.i135 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %msg.022.i) #9
  br i1 %call.i.i.i135, label %if.end.i.i.i138, label %for.body.i136.list_del.exit.i_crit_edge

for.body.i136.list_del.exit.i_crit_edge:          ; preds = %for.body.i136
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i138:                                  ; preds = %for.body.i136
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i137 = getelementptr inbounds %struct.list_head, ptr %msg.022.i, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i.i.i137 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i.i.i137, align 4
  %70 = ptrtoint ptr %msg.022.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %msg.022.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev1.i.i.i.i, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %71, ptr %69, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i138, %for.body.i136.list_del.exit.i_crit_edge
  %74 = ptrtoint ptr %msg.022.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr inttoptr (i32 256 to ptr), ptr %msg.022.i, align 4
  %prev.i.i139 = getelementptr inbounds %struct.list_head, ptr %msg.022.i, i32 0, i32 1
  %75 = ptrtoint ptr %prev.i.i139 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i139, align 4
  %destructor.i = getelementptr inbounds %struct.hsi_msg, ptr %msg.022.i, i32 0, i32 5
  %76 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %destructor.i, align 4
  %sgt.i140 = getelementptr inbounds %struct.hsi_msg, ptr %msg.022.i, i32 0, i32 2
  %77 = ptrtoint ptr %sgt.i140 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sgt.i140, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  %and.i.i.i.i141 = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i141)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i141, 0
  br i1 %tobool.i.not.i.i.i, label %sg_virt.exit.i, label %do.body2.i.i.i, !prof !332

do.body2.i.i.i:                                   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !338
  unreachable

sg_virt.exit.i:                                   ; preds = %list_del.exit.i
  %and.i.i.i = and i32 %80, -4
  %81 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %81) #9
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %78, i32 0, i32 1
  %82 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %83
  tail call void @kfree(ptr noundef %add.ptr.i.i) #9
  tail call void @hsi_free_msg(ptr noundef %msg.022.i) #9
  %cmp.not.i = icmp eq ptr %tmp.0.i, %cmdqueue
  br i1 %cmp.not.i, label %sg_virt.exit.i.out_crit_edge, label %sg_virt.exit.i.for.body.i136_crit_edge

sg_virt.exit.i.for.body.i136_crit_edge:           ; preds = %sg_virt.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i136

sg_virt.exit.i.out_crit_edge:                     ; preds = %sg_virt.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out:                                              ; preds = %sg_virt.exit.i.out_crit_edge, %out1.out_crit_edge, %do.end42, %if.then31, %if.then22
  %err.1 = phi i32 [ %call20, %if.then22 ], [ %call28, %if.then31 ], [ -12, %do.end42 ], [ %err.0, %out1.out_crit_edge ], [ %err.0, %sg_virt.exit.i.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then71, %list_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then71 ], [ 0, %list_add.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssi_protocol_remove(ptr nocapture noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %link = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %link) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 16, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %link, align 4
  %prev.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 16, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %netdev = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev, align 4
  tail call void @unregister_netdev(ptr noundef %11) #9
  %cmdqueue.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %cmdqueue.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmdqueue.i, align 4
  %cmp.not21.i = icmp eq ptr %13, %cmdqueue.i
  br i1 %cmp.not21.i, label %list_del.exit.ssip_free_cmds.exit_crit_edge, label %list_del.exit.for.body.i_crit_edge

list_del.exit.for.body.i_crit_edge:               ; preds = %list_del.exit
  br label %for.body.i

list_del.exit.ssip_free_cmds.exit_crit_edge:      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ssip_free_cmds.exit

for.body.i:                                       ; preds = %sg_virt.exit.i.for.body.i_crit_edge, %list_del.exit.for.body.i_crit_edge
  %msg.022.i = phi ptr [ %tmp.0.i, %sg_virt.exit.i.for.body.i_crit_edge ], [ %13, %list_del.exit.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %msg.022.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %tmp.0.i = load ptr, ptr %msg.022.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %msg.022.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.022.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %msg.022.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %msg.022.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %21 = ptrtoint ptr %msg.022.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %msg.022.i, align 4
  %prev.i.i5 = getelementptr inbounds %struct.list_head, ptr %msg.022.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i5, align 4
  %destructor.i = getelementptr inbounds %struct.hsi_msg, ptr %msg.022.i, i32 0, i32 5
  %23 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %destructor.i, align 4
  %sgt.i = getelementptr inbounds %struct.hsi_msg, ptr %msg.022.i, i32 0, i32 2
  %24 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sgt.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %and.i.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_virt.exit.i, label %do.body2.i.i.i, !prof !332

do.body2.i.i.i:                                   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !338
  unreachable

sg_virt.exit.i:                                   ; preds = %list_del.exit.i
  %and.i.i.i = and i32 %27, -4
  %28 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %28) #9
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %25, i32 0, i32 1
  %29 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %30
  tail call void @kfree(ptr noundef %add.ptr.i.i) #9
  tail call void @hsi_free_msg(ptr noundef %msg.022.i) #9
  %cmp.not.i = icmp eq ptr %tmp.0.i, %cmdqueue.i
  br i1 %cmp.not.i, label %sg_virt.exit.i.ssip_free_cmds.exit_crit_edge, label %sg_virt.exit.i.for.body.i_crit_edge

sg_virt.exit.i.for.body.i_crit_edge:              ; preds = %sg_virt.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

sg_virt.exit.i.ssip_free_cmds.exit_crit_edge:     ; preds = %sg_virt.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ssip_free_cmds.exit

ssip_free_cmds.exit:                              ; preds = %sg_virt.exit.i.ssip_free_cmds.exit_crit_edge, %list_del.exit.ssip_free_cmds.exit_crit_edge
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssip_rx_wd(ptr nocapture noundef readonly %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cl1 = getelementptr i8, ptr %t, i32 204
  %0 = ptrtoint ptr %cl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.119) #12
  tail call fastcc void @ssip_error(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssip_tx_wd(ptr nocapture noundef readonly %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cl1 = getelementptr i8, ptr %t, i32 252
  %0 = ptrtoint ptr %cl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.119) #12
  tail call fastcc void @ssip_error(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssip_keep_alive(ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cl1 = getelementptr i8, ptr %t, i32 156
  %0 = ptrtoint ptr %cl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_keep_alive.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_keep_alive, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !330

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %t, i32 -120
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %recv_state = getelementptr i8, ptr %t, i32 -112
  %4 = ptrtoint ptr %recv_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %recv_state, align 4
  %send_state = getelementptr i8, ptr %t, i32 -116
  %6 = ptrtoint ptr %send_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %send_state, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_keep_alive.__UNIQUE_ID_ddebug342, ptr noundef %1, ptr noundef nonnull @.str.123, i32 noundef %3, i32 noundef %5, i32 noundef %7) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr i8, ptr %t, i32 48
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %recv_state5 = getelementptr i8, ptr %t, i32 -112
  %8 = ptrtoint ptr %recv_state5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %recv_state5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then6, label %do.end.if.end14_crit_edge

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then6:                                         ; preds = %do.end
  %send_state7 = getelementptr i8, ptr %t, i32 -116
  %10 = ptrtoint ptr %send_state7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %send_state7, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %11, label %if.then6.if.end14_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %if.then6.cleanup_crit_edge
  ]

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6.if.end14_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

sw.bb:                                            ; preds = %if.then6
  %tx_usecnt = getelementptr i8, ptr %t, i32 168
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_usecnt, i32 noundef 4) #9
  %13 = ptrtoint ptr %tx_usecnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %tx_usecnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp9 = icmp eq i32 %14, 0
  br i1 %cmp9, label %sw.bb.if.end14_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.if.end14_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end14:                                         ; preds = %sw.bb.if.end14_crit_edge, %if.then6.if.end14_crit_edge, %do.end.if.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %15, 2
  %call16 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %sw.bb.cleanup_crit_edge, %if.then6.cleanup_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssip_xmit_work(ptr nocapture noundef readonly %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cl1 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %cl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl1, align 4
  tail call fastcc void @ssip_xmit(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsi_get_channel_id_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssip_pn_setup(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %features, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %1 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ssip_pn_ops, ptr %netdev_ops, align 8
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 820, ptr %type, align 16
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 144, ptr %flags, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4000, ptr %mtu, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %5 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %hard_header_len, align 2
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %6 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %addr_len, align 1
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull @ssip_pn_setup.addr, i32 noundef 1) #9
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %7 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 100, ptr %tx_queue_len, align 16
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %8 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %needs_free_netdev, align 8
  %header_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %9 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @phonet_header_ops, ptr %header_ops, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssip_pn_open(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @hsi_claim_port(ptr noundef %1, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.124) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @hsi_register_port_event(ptr noundef %1, ptr noundef nonnull @ssip_port_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %do.body11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.127, i32 noundef %call3) #12
  br label %cleanup

do.body11:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_pn_open.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_pn_open, %if.then16)) #9
          to label %do.end20 [label %if.then16], !srcloc !330

if.then16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_pn_open.__UNIQUE_ID_ddebug362, ptr noundef %1, ptr noundef nonnull @.str.129) #9
  br label %do.end20

do.end20:                                         ; preds = %if.then16, %do.body11
  %pclaimed.i.i = getelementptr inbounds %struct.hsi_client, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %pclaimed.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i.i = load i8, ptr %pclaimed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i, label %do.end20.hsi_setup.exit_crit_edge, label %if.end.i

do.end20.hsi_setup.exit_crit_edge:                ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %hsi_setup.exit

if.end.i:                                         ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i, align 8
  %setup.i = getelementptr inbounds %struct.hsi_port, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %setup.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %setup.i, align 4
  %call1.i = tail call i32 %8(ptr noundef %1) #9
  br label %hsi_setup.exit

hsi_setup.exit:                                   ; preds = %if.end.i, %do.end20.hsi_setup.exit_crit_edge
  %flags = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 3
  %call22 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %hsi_setup.exit.if.end25_crit_edge

hsi_setup.exit.if.end25_crit_edge:                ; preds = %hsi_setup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then24:                                        ; preds = %hsi_setup.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ssi_waketest(ptr noundef %1, i32 noundef 1) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %hsi_setup.exit.if.end25_crit_edge
  %lock = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %3, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  tail call fastcc void @ssip_send_bootinfo_req_cmd(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end8, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call3, %do.end8 ], [ 0, %if.end25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssip_pn_stop(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  tail call fastcc void @ssip_reset(ptr noundef %1)
  %call = tail call i32 @hsi_unregister_port_event(ptr noundef %1) #9
  tail call void @hsi_release_port(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssip_pn_xmit(ptr noundef %skb, ptr nocapture noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %4 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 245, i16 %5)
  %cmp.not = icmp eq i16 %5, 245
  br i1 %cmp.not, label %lor.lhs.false, label %entry.drop_crit_edge

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop

lor.lhs.false:                                    ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp3 = icmp ult i32 %7, 6
  br i1 %cmp3, label %lor.lhs.false.drop_crit_edge, label %if.end

lor.lhs.false.drop_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop

if.end:                                           ; preds = %lor.lhs.false
  %and = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %sub = sub nuw nsw i32 4, %and
  %call.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end11_crit_edge, label %land.lhs.true.inc_dropped_crit_edge

land.lhs.true.inc_dropped_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %inc_dropped

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %8 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end11.if.end15_crit_edge, label %skb_header_cloned.exit.i

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

skb_header_cloned.exit.i:                         ; preds = %if.end11
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %9 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %10, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #9
  %11 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i = and i32 %12, 65535
  %shr.i.i = ashr i32 %12, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br i1 %cmp.i.not.i, label %skb_header_cloned.exit.i.if.end15_crit_edge, label %skb_cow_head.exit

skb_header_cloned.exit.i.if.end15_crit_edge:      ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool13.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool13.not, label %skb_cow_head.exit.if.end15_crit_edge, label %skb_cow_head.exit.drop_crit_edge

skb_cow_head.exit.drop_crit_edge:                 ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop

skb_cow_head.exit.if.end15_crit_edge:             ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end15:                                         ; preds = %skb_cow_head.exit.if.end15_crit_edge, %skb_header_cloned.exit.i.if.end15_crit_edge, %if.end11.if.end15_crit_edge
  %call18 = tail call fastcc ptr @ssip_alloc_data(ptr noundef %3, ptr noundef %skb)
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %do.body, label %if.end28

do.body:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_pn_xmit.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_pn_xmit, %if.then26)) #9
          to label %drop [label %if.then26], !srcloc !330

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_pn_xmit.__UNIQUE_ID_ddebug363, ptr noundef %1, ptr noundef nonnull @.str.139) #9
  br label %drop

if.end28:                                         ; preds = %if.end15
  %complete = getelementptr inbounds %struct.hsi_msg, ptr %call18, i32 0, i32 4
  %13 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ssip_tx_data_complete, ptr %complete, align 4
  %lock = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp29.not = icmp eq i32 %15, 2
  br i1 %cmp29.not, label %if.end56, label %if.then37, !prof !332

if.then37:                                        ; preds = %if.end28
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_pn_xmit.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_pn_xmit, %if.then51)) #9
          to label %drop2 [label %if.then51], !srcloc !330

if.then51:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_pn_xmit.__UNIQUE_ID_ddebug364, ptr noundef %1, ptr noundef nonnull @.str.140) #9
  br label %drop2

if.end56:                                         ; preds = %if.end28
  %txqueue = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 12
  %prev.i = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 12, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call18, ptr noundef %17, ptr noundef %txqueue) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end56.list_add_tail.exit_crit_edge

if.end56.list_add_tail.exit_crit_edge:            ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call18, ptr %prev.i, align 4
  %19 = ptrtoint ptr %call18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %txqueue, ptr %call18, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call18, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %call18, ptr %17, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end56.list_add_tail.exit_crit_edge
  %txqueue_len = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 6
  %22 = ptrtoint ptr %txqueue_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %txqueue_len, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %txqueue_len, align 4
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %24 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_queue_len, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %inc)
  %cmp58 = icmp ult i32 %25, %inc
  br i1 %cmp58, label %do.end63, label %list_add_tail.exit.if.end66_crit_edge

list_add_tail.exit.if.end66_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

do.end63:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.141, i32 noundef %inc) #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %26 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %27, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  br label %if.end66

if.end66:                                         ; preds = %do.end63, %list_add_tail.exit.if.end66_crit_edge
  %send_state = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 1
  %28 = ptrtoint ptr %send_state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %send_state, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %29, label %if.else114 [
    i32 0, label %if.then69
    i32 2, label %do.body94
  ]

if.then69:                                        ; preds = %if.end66
  tail call fastcc void @ssip_set_txstate(ptr noundef %3, i32 noundef 1)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_pn_xmit.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_pn_xmit, %if.then83)) #9
          to label %do.end88 [label %if.then83], !srcloc !330

if.then83:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %txqueue_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %txqueue_len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_pn_xmit.__UNIQUE_ID_ddebug365, ptr noundef %1, ptr noundef nonnull @.str.143, i32 noundef %32) #9
  br label %do.end88

do.end88:                                         ; preds = %if.then83, %if.then69
  %pclaimed.i.i = getelementptr inbounds %struct.hsi_client, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %pclaimed.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i.i175 = load i8, ptr %pclaimed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i175)
  %tobool.not.i = icmp sgt i8 %bf.load.i.i175, -1
  br i1 %tobool.not.i, label %do.end88.if.end117_crit_edge, label %if.end.i

do.end88.if.end117_crit_edge:                     ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end117

if.end.i:                                         ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent.i, align 8
  %start_tx.i = getelementptr inbounds %struct.hsi_port, ptr %35, i32 0, i32 10
  %36 = ptrtoint ptr %start_tx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %start_tx.i, align 4
  %call1.i = tail call i32 %37(ptr noundef %1) #9
  br label %if.end117

do.body94:                                        ; preds = %if.end66
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_pn_xmit.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_pn_xmit, %if.then106)) #9
          to label %do.end111 [label %if.then106], !srcloc !330

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %txqueue_len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %txqueue_len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_pn_xmit.__UNIQUE_ID_ddebug366, ptr noundef %1, ptr noundef nonnull @.str.144, i32 noundef %39) #9
  br label %do.end111

do.end111:                                        ; preds = %if.then106, %do.body94
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %work = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %40 = load ptr, ptr @system_wq, align 4
  %call.i.i176 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %40, ptr noundef %work) #9
  br label %if.end117

if.else114:                                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  br label %if.end117

if.end117:                                        ; preds = %if.else114, %do.end111, %if.end.i, %do.end88.if.end117_crit_edge
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %41 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_packets, align 4
  %inc118 = add i32 %42, 1
  store i32 %inc118, ptr %tx_packets, align 4
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  br label %cleanup

drop2:                                            ; preds = %if.then51, %if.then37
  tail call void @hsi_free_msg(ptr noundef nonnull %call18) #9
  br label %drop

drop:                                             ; preds = %drop2, %if.then26, %do.body, %skb_cow_head.exit.drop_crit_edge, %lor.lhs.false.drop_crit_edge, %entry.drop_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #9
  br label %inc_dropped

inc_dropped:                                      ; preds = %drop, %land.lhs.true.inc_dropped_crit_edge
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  br label %cleanup

cleanup:                                          ; preds = %inc_dropped, %if.end117
  %tx_dropped.sink184 = phi ptr [ %tx_dropped, %inc_dropped ], [ %tx_bytes, %if.end117 ]
  %.sink183 = phi i32 [ 1, %inc_dropped ], [ %44, %if.end117 ]
  %45 = ptrtoint ptr %tx_dropped.sink184 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_dropped.sink184, align 4
  %inc122 = add i32 %46, %.sink183
  store i32 %inc122, ptr %tx_dropped.sink184, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsi_claim_port(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsi_register_port_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssip_port_event(ptr noundef %cl, i32 noundef %event) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ssip_start_rx(ptr noundef %cl)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %cl, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_stop_rx.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_port_event, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !330

if.then.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_stop_rx.__UNIQUE_ID_ddebug347, ptr noundef %cl, ptr noundef nonnull @.str.134, i32 noundef %4) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %sw.bb1
  %lock.i = getelementptr inbounds %struct.ssi_protocol, ptr %2, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #9
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i = icmp eq i32 %6, 2
  br i1 %cmp.i, label %if.then11.i, label %do.end.i.ssip_stop_rx.exit_crit_edge, !prof !332

do.end.i.ssip_stop_rx.exit_crit_edge:             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ssip_stop_rx.exit

if.then11.i:                                      ; preds = %do.end.i
  %recv_state.i.i = getelementptr inbounds %struct.ssi_protocol, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %recv_state.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %recv_state.i.i, align 4
  %rx_wd.i.i = getelementptr inbounds %struct.ssi_protocol, ptr %2, i32 0, i32 8
  %call.i.i = tail call i32 @del_timer(ptr noundef %rx_wd.i.i) #9
  %send_state.i.i = getelementptr inbounds %struct.ssi_protocol, ptr %2, i32 0, i32 1
  %8 = ptrtoint ptr %send_state.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %send_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i = icmp eq i32 %9, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then11.i.ssip_stop_rx.exit_crit_edge

if.then11.i.ssip_stop_rx.exit_crit_edge:          ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ssip_stop_rx.exit

if.then.i.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  %keep_alive.i.i = getelementptr inbounds %struct.ssi_protocol, ptr %2, i32 0, i32 9
  %call1.i.i = tail call i32 @del_timer(ptr noundef %keep_alive.i.i) #9
  br label %ssip_stop_rx.exit

ssip_stop_rx.exit:                                ; preds = %if.then.i.i, %if.then11.i.ssip_stop_rx.exit_crit_edge, %do.end.i.ssip_stop_rx.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %ssip_stop_rx.exit, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ssip_send_bootinfo_req_cmd(ptr noundef %cl) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %cl, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_send_bootinfo_req_cmd.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_send_bootinfo_req_cmd, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !330

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_send_bootinfo_req_cmd.__UNIQUE_ID_ddebug343, ptr noundef %cl, ptr noundef nonnull @.str.136) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cmdqueue.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %cmdqueue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %cmdqueue.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %cmdqueue.i
  br i1 %cmp.i.not.i, label %do.body3.i, label %do.end8.i, !prof !336

do.body3.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/hsi/clients/ssi_protocol.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 231, 0\0A.popsection", ""() #9, !srcloc !337
  unreachable

do.end8.i:                                        ; preds = %do.end
  %lock.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #9
  %4 = ptrtoint ptr %cmdqueue.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmdqueue.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end8.i.ssip_claim_cmd.exit_crit_edge

do.end8.i.ssip_claim_cmd.exit_crit_edge:          ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ssip_claim_cmd.exit

if.end.i.i.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %ssip_claim_cmd.exit

ssip_claim_cmd.exit:                              ; preds = %if.end.i.i.i, %do.end8.i.ssip_claim_cmd.exit_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #9
  %destructor.i = getelementptr inbounds %struct.hsi_msg, ptr %5, i32 0, i32 5
  %14 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ssip_release_cmd, ptr %destructor.i, align 4
  %sgt.i = getelementptr inbounds %struct.hsi_msg, ptr %5, i32 0, i32 2
  %15 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sgt.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %and.i.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %ssip_set_cmd.exit, label %do.body2.i.i.i, !prof !332

do.body2.i.i.i:                                   ; preds = %ssip_claim_cmd.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !338
  unreachable

ssip_set_cmd.exit:                                ; preds = %ssip_claim_cmd.exit
  %and.i.i.i = and i32 %18, -4
  %19 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %19) #9
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %16, i32 0, i32 1
  %20 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %21
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 268435457, ptr %add.ptr.i.i, align 4
  %complete = getelementptr inbounds %struct.hsi_msg, ptr %5, i32 0, i32 4
  %23 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @ssip_release_cmd, ptr %complete, align 4
  %ttype.i = getelementptr inbounds %struct.hsi_msg, ptr %5, i32 0, i32 9
  %24 = ptrtoint ptr %ttype.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i = load i8, ptr %ttype.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %ttype.i, align 4
  %call.i = tail call i32 @hsi_async(ptr noundef %cl, ptr noundef %5) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_send_bootinfo_req_cmd.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_send_bootinfo_req_cmd, %if.then18)) #9
          to label %do.end22 [label %if.then18], !srcloc !330

if.then18:                                        ; preds = %ssip_set_cmd.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_send_bootinfo_req_cmd.__UNIQUE_ID_ddebug344, ptr noundef %cl, ptr noundef nonnull @.str.137) #9
  br label %do.end22

do.end22:                                         ; preds = %if.then18, %ssip_set_cmd.exit
  %25 = ptrtoint ptr %cmdqueue.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %cmdqueue.i, align 4
  %cmp.i.not.i39 = icmp eq ptr %26, %cmdqueue.i
  br i1 %cmp.i.not.i39, label %do.body3.i40, label %do.end8.i43, !prof !336

do.body3.i40:                                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/hsi/clients/ssi_protocol.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 231, 0\0A.popsection", ""() #9, !srcloc !337
  unreachable

do.end8.i43:                                      ; preds = %do.end22
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #9
  %27 = ptrtoint ptr %cmdqueue.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cmdqueue.i, align 4
  %call.i.i.i42 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %28) #9
  br i1 %call.i.i.i42, label %if.end.i.i.i46, label %do.end8.i43.ssip_claim_cmd.exit49_crit_edge

do.end8.i43.ssip_claim_cmd.exit49_crit_edge:      ; preds = %do.end8.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %ssip_claim_cmd.exit49

if.end.i.i.i46:                                   ; preds = %do.end8.i43
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i44 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i44, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  %prev1.i.i.i.i45 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i.i45 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i.i45, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %ssip_claim_cmd.exit49

ssip_claim_cmd.exit49:                            ; preds = %if.end.i.i.i46, %do.end8.i43.ssip_claim_cmd.exit49_crit_edge
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %28, align 4
  %prev.i.i47 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i47 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i47, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #9
  %destructor.i48 = getelementptr inbounds %struct.hsi_msg, ptr %28, i32 0, i32 5
  %37 = ptrtoint ptr %destructor.i48 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @ssip_release_cmd, ptr %destructor.i48, align 4
  %complete24 = getelementptr inbounds %struct.hsi_msg, ptr %28, i32 0, i32 4
  %38 = ptrtoint ptr %complete24 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @ssip_rxcmd_complete, ptr %complete24, align 4
  %ttype.i50 = getelementptr inbounds %struct.hsi_msg, ptr %28, i32 0, i32 9
  %39 = ptrtoint ptr %ttype.i50 to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.i51 = load i8, ptr %ttype.i50, align 4
  %bf.clear.i = and i8 %bf.load.i51, 127
  store i8 %bf.clear.i, ptr %ttype.i50, align 4
  %call.i52 = tail call i32 @hsi_async(ptr noundef %cl, ptr noundef %28) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ssip_start_rx(ptr noundef %cl) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %cl, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_start_rx.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_start_rx, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !330

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %recv_state = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %recv_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %recv_state, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_start_rx.__UNIQUE_ID_ddebug345, ptr noundef %cl, ptr noundef nonnull @.str.131, i32 noundef %3, i32 noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not = icmp eq i32 %7, 2
  br i1 %cmp.not, label %lor.lhs.false, label %do.end.if.then7_crit_edge

do.end.if.then7_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

lor.lhs.false:                                    ; preds = %do.end
  %recv_state5 = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %recv_state5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %recv_state5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp6 = icmp eq i32 %9, 1
  br i1 %cmp6, label %lor.lhs.false.if.then7_crit_edge, label %if.end9

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %do.end.if.then7_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %recv_state5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %recv_state5, align 4
  %tx_usecnt.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_usecnt.i, i32 noundef 4) #9
  %11 = ptrtoint ptr %tx_usecnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %tx_usecnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %sw.bb6.i, label %if.end9.ssip_set_rxstate.exit_crit_edge

if.end9.ssip_set_rxstate.exit_crit_edge:          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %ssip_set_rxstate.exit

sw.bb6.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %keep_alive7.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %13, 2
  %call9.i = tail call i32 @mod_timer(ptr noundef %keep_alive7.i, i32 noundef %add.i) #9
  %rx_wd10.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add12.i = add i32 %14, 200
  %call13.i = tail call i32 @mod_timer(ptr noundef %rx_wd10.i, i32 noundef %add12.i) #9
  br label %ssip_set_rxstate.exit

ssip_set_rxstate.exit:                            ; preds = %sw.bb6.i, %if.end9.ssip_set_rxstate.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %cmdqueue.i = getelementptr inbounds %struct.ssi_protocol, ptr %1, i32 0, i32 13
  %15 = ptrtoint ptr %cmdqueue.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %cmdqueue.i, align 4
  %cmp.i.not.i = icmp eq ptr %16, %cmdqueue.i
  br i1 %cmp.i.not.i, label %do.body3.i, label %do.end8.i, !prof !336

do.body3.i:                                       ; preds = %ssip_set_rxstate.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/hsi/clients/ssi_protocol.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 231, 0\0A.popsection", ""() #9, !srcloc !337
  unreachable

do.end8.i:                                        ; preds = %ssip_set_rxstate.exit
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %17 = ptrtoint ptr %cmdqueue.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cmdqueue.i, align 4
  %call.i.i.i47 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %18) #9
  br i1 %call.i.i.i47, label %if.end.i.i.i, label %do.end8.i.ssip_claim_cmd.exit_crit_edge

do.end8.i.ssip_claim_cmd.exit_crit_edge:          ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ssip_claim_cmd.exit

if.end.i.i.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %ssip_claim_cmd.exit

ssip_claim_cmd.exit:                              ; preds = %if.end.i.i.i, %do.end8.i.ssip_claim_cmd.exit_crit_edge
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %destructor.i = getelementptr inbounds %struct.hsi_msg, ptr %18, i32 0, i32 5
  %27 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @ssip_release_cmd, ptr %destructor.i, align 4
  %sgt.i = getelementptr inbounds %struct.hsi_msg, ptr %18, i32 0, i32 2
  %28 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sgt.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %and.i.i.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %ssip_set_cmd.exit, label %do.body2.i.i.i, !prof !332

do.body2.i.i.i:                                   ; preds = %ssip_claim_cmd.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !338
  unreachable

ssip_set_cmd.exit:                                ; preds = %ssip_claim_cmd.exit
  %and.i.i.i = and i32 %31, -4
  %32 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %32) #9
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %29, i32 0, i32 1
  %33 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %34
  %35 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1342177280, ptr %add.ptr.i.i, align 4
  %complete = getelementptr inbounds %struct.hsi_msg, ptr %18, i32 0, i32 4
  %36 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @ssip_release_cmd, ptr %complete, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_start_rx.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_start_rx, %if.then24)) #9
          to label %do.end28 [label %if.then24], !srcloc !330

if.then24:                                        ; preds = %ssip_set_cmd.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_start_rx.__UNIQUE_ID_ddebug346, ptr noundef %cl, ptr noundef nonnull @.str.132) #9
  br label %do.end28

do.end28:                                         ; preds = %if.then24, %ssip_set_cmd.exit
  %ttype.i = getelementptr inbounds %struct.hsi_msg, ptr %18, i32 0, i32 9
  %37 = ptrtoint ptr %ttype.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load.i = load i8, ptr %ttype.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %ttype.i, align 4
  %call.i = tail call i32 @hsi_async(ptr noundef %cl, ptr noundef %18) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %if.then7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsi_unregister_port_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hsi_release_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssip_tx_data_complete(ptr noundef %msg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cl1 = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %cl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %status = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 6
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp eq i32 %5, 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.145) #12
  tail call fastcc void @ssip_error(ptr noundef %1)
  br label %out

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %txqueue = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %txqueue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %txqueue, align 4
  %cmp.i.not = icmp eq ptr %7, %txqueue
  br i1 %cmp.i.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %send_state.i = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %send_state.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %send_state.i, align 4
  %keep_alive3.i = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %9, 2
  %call5.i = tail call i32 @mod_timer(ptr noundef %keep_alive3.i, i32 noundef %add.i) #9
  %tx_wd6.i = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add8.i = add i32 %10, 200
  %call9.i = tail call i32 @mod_timer(ptr noundef %tx_wd6.i, i32 noundef %add8.i) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %cmdqueue.i = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 13
  %11 = ptrtoint ptr %cmdqueue.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %cmdqueue.i, align 4
  %cmp.i.not.i = icmp eq ptr %12, %cmdqueue.i
  br i1 %cmp.i.not.i, label %do.body3.i, label %do.end8.i, !prof !336

do.body3.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/hsi/clients/ssi_protocol.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 231, 0\0A.popsection", ""() #9, !srcloc !337
  unreachable

do.end8.i:                                        ; preds = %if.then3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %13 = ptrtoint ptr %cmdqueue.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmdqueue.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %14) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end8.i.ssip_claim_cmd.exit_crit_edge

do.end8.i.ssip_claim_cmd.exit_crit_edge:          ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ssip_claim_cmd.exit

if.end.i.i.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %ssip_claim_cmd.exit

ssip_claim_cmd.exit:                              ; preds = %if.end.i.i.i, %do.end8.i.ssip_claim_cmd.exit_crit_edge
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %destructor.i = getelementptr inbounds %struct.hsi_msg, ptr %14, i32 0, i32 5
  %23 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @ssip_release_cmd, ptr %destructor.i, align 4
  %sgt.i = getelementptr inbounds %struct.hsi_msg, ptr %14, i32 0, i32 2
  %24 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sgt.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %and.i.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %ssip_set_cmd.exit, label %do.body2.i.i.i, !prof !332

do.body2.i.i.i:                                   ; preds = %ssip_claim_cmd.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !338
  unreachable

ssip_set_cmd.exit:                                ; preds = %ssip_claim_cmd.exit
  %and.i.i.i = and i32 %27, -4
  %28 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %28) #9
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %25, i32 0, i32 1
  %29 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %30
  %31 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %add.ptr.i.i, align 4
  %complete = getelementptr inbounds %struct.hsi_msg, ptr %14, i32 0, i32 4
  %32 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @ssip_swbreak_complete, ptr %complete, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_tx_data_complete.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_tx_data_complete, %if.then11)) #9
          to label %do.end15 [label %if.then11], !srcloc !330

if.then11:                                        ; preds = %ssip_set_cmd.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_tx_data_complete.__UNIQUE_ID_ddebug361, ptr noundef %1, ptr noundef nonnull @.str.147) #9
  br label %do.end15

do.end15:                                         ; preds = %if.then11, %ssip_set_cmd.exit
  %ttype.i = getelementptr inbounds %struct.hsi_msg, ptr %14, i32 0, i32 9
  %33 = ptrtoint ptr %ttype.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i = load i8, ptr %ttype.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %ttype.i, align 4
  %call.i = tail call i32 @hsi_async(ptr noundef %1, ptr noundef %14) #9
  br label %out

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  tail call fastcc void @ssip_xmit(ptr noundef %1)
  br label %out

out:                                              ; preds = %if.else, %do.end15, %do.end
  %context.i = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 3
  %34 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %context.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_free_data.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_tx_data_complete, %if.then.i)) #9
          to label %ssip_free_data.exit [label %if.then.i], !srcloc !330

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %context.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ssip_free_data.__UNIQUE_ID_ddebug337, ptr noundef nonnull @.str.40, ptr noundef %msg, ptr noundef %37, ptr noundef %35) #9
  br label %ssip_free_data.exit

ssip_free_data.exit:                              ; preds = %if.then.i, %out
  %destructor.i34 = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 5
  %38 = ptrtoint ptr %destructor.i34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %destructor.i34, align 4
  tail call void @consume_skb(ptr noundef %35) #9
  tail call void @hsi_free_msg(ptr noundef %msg) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssip_swbreak_complete(ptr noundef %msg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cl1 = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %cl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssip_release_cmd.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssip_swbreak_complete, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !330

if.then.i:                                        ; preds = %entry
  %sgt.i.i = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 2
  %4 = ptrtoint ptr %sgt.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sgt.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and.i.i.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %ssip_get_cmd.exit.i, label %do.body2.i.i.i.i, !prof !332

do.body2.i.i.i.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !338
  unreachable

ssip_get_cmd.exit.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %cl1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cl1, align 4
  %and.i.i.i.i = and i32 %7, -4
  %10 = inttoptr i32 %and.i.i.i.i to ptr
  %call1.i.i.i = tail call ptr @page_address(ptr noundef %10) #9
  %offset.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %call1.i.i.i, i32 %12
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssip_release_cmd.__UNIQUE_ID_ddebug338, ptr noundef %9, ptr noundef nonnull @.str.42, i32 noundef %14) #9
  br label %do.end.i

do.end.i:                                         ; preds = %ssip_get_cmd.exit.i, %entry
  %lock.i = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #9
  %cmdqueue.i = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 13
  %prev.i.i = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 13, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %msg, ptr noundef %16, ptr noundef %cmdqueue.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.ssip_release_cmd.exit_crit_edge

do.end.i.ssip_release_cmd.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ssip_release_cmd.exit

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cmdqueue.i, ptr %msg, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %msg, ptr %16, align 4
  br label %ssip_release_cmd.exit

ssip_release_cmd.exit:                            ; preds = %if.end.i.i.i, %do.end.i.ssip_release_cmd.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #9
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #9
  %txqueue = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 12
  %21 = ptrtoint ptr %txqueue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %txqueue, align 4
  %cmp.i.not = icmp eq ptr %22, %txqueue
  br i1 %cmp.i.not, label %if.then, label %if.else8

if.then:                                          ; preds = %ssip_release_cmd.exit
  %tx_usecnt = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_usecnt, i32 noundef 4) #9
  %23 = ptrtoint ptr %tx_usecnt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %tx_usecnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool4.not = icmp eq i32 %24, 0
  %send_state.i24 = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 1
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then
  %25 = ptrtoint ptr %send_state.i24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %send_state.i24, align 4
  %tx_wd.i = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 7
  %call.i = tail call i32 @del_timer(ptr noundef %tx_wd.i) #9
  %recv_state.i = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 2
  %26 = ptrtoint ptr %recv_state.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %recv_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i22 = icmp eq i32 %27, 0
  br i1 %cmp.i22, label %if.then.i23, label %if.then5.if.end_crit_edge

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i23:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %keep_alive.i = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 9
  %call1.i = tail call i32 @del_timer(ptr noundef %keep_alive.i) #9
  br label %if.end

if.else:                                          ; preds = %if.then
  %28 = ptrtoint ptr %send_state.i24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %send_state.i24, align 4
  %tx_wd.i25 = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 7
  %call.i26 = tail call i32 @del_timer(ptr noundef %tx_wd.i25) #9
  %recv_state.i27 = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 2
  %29 = ptrtoint ptr %recv_state.i27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %recv_state.i27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i28 = icmp eq i32 %30, 0
  br i1 %cmp.i28, label %if.then.i31, label %if.else.ssip_set_txstate.exit32_crit_edge

if.else.ssip_set_txstate.exit32_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %ssip_set_txstate.exit32

if.then.i31:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %keep_alive.i29 = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 9
  %call1.i30 = tail call i32 @del_timer(ptr noundef %keep_alive.i29) #9
  br label %ssip_set_txstate.exit32

ssip_set_txstate.exit32:                          ; preds = %if.then.i31, %if.else.ssip_set_txstate.exit32_crit_edge
  %pclaimed.i.i = getelementptr inbounds %struct.hsi_client, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %pclaimed.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i.i = load i8, ptr %pclaimed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i, label %ssip_set_txstate.exit32.if.end_crit_edge, label %if.end.i

ssip_set_txstate.exit32.if.end_crit_edge:         ; preds = %ssip_set_txstate.exit32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %ssip_set_txstate.exit32
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parent.i, align 8
  %stop_tx.i = getelementptr inbounds %struct.hsi_port, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %stop_tx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %stop_tx.i, align 8
  %call1.i33 = tail call i32 %35(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.end.i, %ssip_set_txstate.exit32.if.end_crit_edge, %if.then.i23, %if.then5.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #9
  br label %if.end11

if.else8:                                         ; preds = %ssip_release_cmd.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #9
  tail call fastcc void @ssip_xmit(ptr noundef %1)
  br label %if.end11

if.end11:                                         ; preds = %if.else8, %if.end
  %netdev = getelementptr inbounds %struct.ssi_protocol, ptr %3, i32 0, i32 11
  %36 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %netdev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 103
  %38 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %39) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 153)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 153)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !18, !20, !22, !23, !24, !25, !26, !27, !29, !31, !33, !34, !35, !36, !38, !40, !42, !44, !46, !48, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !103, !105, !106, !108, !109, !110, !111, !113, !114, !115, !116, !118, !119, !121, !122, !123, !125, !126, !128, !129, !130, !131, !133, !134, !136, !137, !138, !140, !141, !142, !143, !144, !145, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !179, !180, !182, !183, !185, !186, !187, !189, !190, !192, !193, !194, !196, !197, !198, !199, !201, !203, !205, !207, !208, !210, !211, !213, !214, !216, !217, !219, !220, !222, !224, !225, !226, !227, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !250, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !265, !267, !268, !269, !270, !272, !273, !274, !276, !277, !279, !280, !281, !283, !284, !286, !287, !288, !290, !291, !292, !294, !295, !297, !298, !299, !301, !302, !304, !305, !306, !307, !309, !310, !312, !313, !315, !316, !317, !318, !320}
!llvm.module.flags = !{!321, !322, !323, !324, !325, !326, !327, !328}
!llvm.ident = !{!329}

!0 = !{ptr @__ksymtab_ssip_slave_get_master, !1, !"__ksymtab_ssip_slave_get_master", i1 false, i1 false}
!1 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 340, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 346, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @ssip_slave_start_tx.__UNIQUE_ID_ddebug339, !3, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!8 = !{ptr @__ksymtab_ssip_slave_start_tx, !9, !"__ksymtab_ssip_slave_start_tx", i1 false, i1 false}
!9 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 357, i32 1}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 363, i32 2}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 374, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ssip_slave_stop_tx.__UNIQUE_ID_ddebug340, !13, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!16 = !{ptr @__ksymtab_ssip_slave_stop_tx, !17, !"__ksymtab_ssip_slave_stop_tx", i1 false, i1 false}
!17 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 378, i32 1}
!18 = !{ptr @__ksymtab_ssip_slave_running, !19, !"__ksymtab_ssip_slave_running", i1 false, i1 false}
!19 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 385, i32 1}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1045, i32 2}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ssip_reset_event._entry, !21, !"_entry", i1 false, i1 false}
!26 = !{ptr @ssip_reset_event._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @__ksymtab_ssip_reset_event, !28, !"__ksymtab_ssip_reset_event", i1 false, i1 false}
!28 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1048, i32 1}
!29 = !{ptr @__initcall__kmod_ssi_protocol__368_1180_ssip_init6, !30, !"__initcall__kmod_ssi_protocol__368_1180_ssip_init6", i1 false, i1 false}
!30 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1180, i32 1}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1185, i32 2}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ssip_exit._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @ssip_exit._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @__exitcall_ssip_exit, !37, !"__exitcall_ssip_exit", i1 false, i1 false}
!37 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1187, i32 1}
!38 = !{ptr @__UNIQUE_ID_alias369, !39, !"__UNIQUE_ID_alias369", i1 false, i1 false}
!39 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1189, i32 1}
!40 = !{ptr @__UNIQUE_ID_author370, !41, !"__UNIQUE_ID_author370", i1 false, i1 false}
!41 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1190, i32 1}
!42 = !{ptr @__UNIQUE_ID_author371, !43, !"__UNIQUE_ID_author371", i1 false, i1 false}
!43 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1191, i32 1}
!44 = !{ptr @__UNIQUE_ID_description372, !45, !"__UNIQUE_ID_description372", i1 false, i1 false}
!45 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1192, i32 1}
!46 = !{ptr @__UNIQUE_ID_file373, !47, !"__UNIQUE_ID_file373", i1 false, i1 false}
!47 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1193, i32 1}
!48 = !{ptr @__UNIQUE_ID_license374, !47, !"__UNIQUE_ID_license374", i1 false, i1 false}
!49 = !{ptr @ssip_list, !50, !"ssip_list", i1 false, i1 false}
!50 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 149, i32 8}
!51 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 428, i32 2}
!53 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ssip_dump_state._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @ssip_dump_state._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 429, i32 2}
!58 = !{ptr @ssip_dump_state._entry.14, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ssip_dump_state._entry_ptr.16, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 430, i32 2}
!62 = !{ptr @ssip_dump_state._entry.17, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ssip_dump_state._entry_ptr.19, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 431, i32 2}
!66 = !{ptr @ssip_dump_state._entry.20, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ssip_dump_state._entry_ptr.22, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 433, i32 2}
!72 = !{ptr @ssip_dump_state._entry.25, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @ssip_dump_state._entry_ptr.27, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 435, i32 2}
!76 = !{ptr @ssip_dump_state._entry.28, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @ssip_dump_state._entry_ptr.30, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 436, i32 2}
!80 = !{ptr @ssip_dump_state._entry.31, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @ssip_dump_state._entry_ptr.33, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 439, i32 3}
!84 = !{ptr @ssip_dump_state._entry.34, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @ssip_dump_state._entry_ptr.36, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 414, i32 3}
!88 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @ssip_reset.__UNIQUE_ID_ddebug341, !87, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 194, i32 2}
!92 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @ssip_free_data.__UNIQUE_ID_ddebug337, !91, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 221, i32 2}
!96 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @ssip_release_cmd.__UNIQUE_ID_ddebug338, !95, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 823, i32 3}
!100 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @ssip_rxcmd_complete._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @ssip_rxcmd_complete._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 829, i32 2}
!105 = !{ptr @ssip_rxcmd_complete.__UNIQUE_ID_ddebug360, !104, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 850, i32 3}
!108 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @ssip_rxcmd_complete._entry.46, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @ssip_rxcmd_complete._entry_ptr.49, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 669, i32 3}
!113 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @ssip_rx_bootinforeq._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @ssip_rx_bootinforeq._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 685, i32 3}
!118 = !{ptr @ssip_rx_bootinforeq.__UNIQUE_ID_ddebug352, !117, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 687, i32 4}
!121 = !{ptr @ssip_rx_bootinforeq._entry.53, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @ssip_rx_bootinforeq._entry_ptr.55, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 694, i32 3}
!125 = !{ptr @ssip_rx_bootinforeq.__UNIQUE_ID_ddebug353, !124, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 704, i32 3}
!128 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @ssip_rx_bootinforesp._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @ssip_rx_bootinforesp._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 711, i32 3}
!133 = !{ptr @ssip_rx_bootinforesp.__UNIQUE_ID_ddebug354, !132, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!134 = !{ptr @.str.60, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 723, i32 3}
!136 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @ssip_rx_waketest.__UNIQUE_ID_ddebug355, !135, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!138 = !{ptr @.str.62, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 738, i32 2}
!140 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @ssip_rx_waketest._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @ssip_rx_waketest._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 744, i32 2}
!147 = !{ptr @ssip_rx_waketest.__UNIQUE_ID_ddebug356, !146, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!148 = !{ptr @.str.67, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 777, i32 2}
!150 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @ssip_rx_strans.__UNIQUE_ID_ddebug359, !149, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!152 = !{ptr @.str.69, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 780, i32 3}
!154 = !{ptr @ssip_rx_strans._entry, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @ssip_rx_strans._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.71, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 787, i32 3}
!158 = !{ptr @ssip_rx_strans._entry.70, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @ssip_rx_strans._entry_ptr.72, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.74, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 796, i32 3}
!162 = !{ptr @ssip_rx_strans._entry.73, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @ssip_rx_strans._entry_ptr.75, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.77, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 803, i32 3}
!166 = !{ptr @ssip_rx_strans._entry.76, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @ssip_rx_strans._entry_ptr.78, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.79, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 647, i32 3}
!170 = !{ptr @.str.80, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @ssip_rx_data_complete._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @ssip_rx_data_complete._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.81, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 614, i32 3}
!175 = !{ptr @.str.82, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @ssip_pn_rx.__UNIQUE_ID_ddebug349, !174, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!177 = !{ptr @.str.83, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 620, i32 3}
!179 = !{ptr @ssip_pn_rx.__UNIQUE_ID_ddebug350, !178, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!180 = !{ptr @.str.84, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 631, i32 2}
!182 = !{ptr @ssip_pn_rx.__UNIQUE_ID_ddebug351, !181, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!183 = !{ptr @.str.85, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 755, i32 3}
!185 = !{ptr @.str.86, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @ssip_rx_ready.__UNIQUE_ID_ddebug357, !184, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!187 = !{ptr @.str.87, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 761, i32 3}
!189 = !{ptr @ssip_rx_ready.__UNIQUE_ID_ddebug358, !188, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!190 = !{ptr @.str.88, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 602, i32 2}
!192 = !{ptr @.str.89, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @ssip_xmit.__UNIQUE_ID_ddebug348, !191, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!194 = !{ptr @.str.90, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1176, i32 2}
!196 = !{ptr @.str.91, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @ssip_init._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @ssip_init._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.92, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1167, i32 11}
!201 = !{ptr @ssip_driver, !202, !"ssip_driver", i1 false, i1 false}
!202 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1165, i32 33}
!203 = !{ptr @ssi_protocol_probe.ifname, !204, !"ifname", i1 false, i1 false}
!204 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1076, i32 20}
!205 = !{ptr @ssi_protocol_probe.__key, !206, !"__key", i1 false, i1 false}
!206 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1085, i32 2}
!207 = !{ptr @.str.93, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @ssi_protocol_probe.__key.94, !209, !"__key", i1 false, i1 false}
!209 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1086, i32 2}
!210 = !{ptr @.str.95, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @ssi_protocol_probe.__key.96, !212, !"__key", i1 false, i1 false}
!212 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1087, i32 2}
!213 = !{ptr @.str.97, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @ssi_protocol_probe.__key.98, !215, !"__key", i1 false, i1 false}
!215 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1088, i32 2}
!216 = !{ptr @.str.99, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @ssi_protocol_probe.__key.100, !218, !"__key", i1 false, i1 false}
!218 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1094, i32 2}
!219 = !{ptr @.str.101, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.102, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1096, i32 55}
!222 = !{ptr @.str.103, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1099, i32 3}
!224 = !{ptr @.str.104, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @ssi_protocol_probe._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @ssi_protocol_probe._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.105, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1103, i32 56}
!229 = !{ptr @.str.107, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1106, i32 3}
!231 = !{ptr @ssi_protocol_probe._entry.106, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @ssi_protocol_probe._entry_ptr.108, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.110, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1112, i32 3}
!235 = !{ptr @ssi_protocol_probe._entry.109, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @ssi_protocol_probe._entry_ptr.111, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.113, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1118, i32 3}
!239 = !{ptr @ssi_protocol_probe._entry.112, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @ssi_protocol_probe._entry_ptr.114, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.116, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1131, i32 3}
!243 = !{ptr @ssi_protocol_probe._entry.115, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @ssi_protocol_probe._entry_ptr.117, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.118, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1137, i32 2}
!247 = !{ptr @ssi_protocol_probe.__UNIQUE_ID_ddebug367, !246, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!248 = !{ptr @.str.119, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 487, i32 2}
!250 = !{ptr @.str.120, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @ssip_rx_wd._entry, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @ssip_rx_wd._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.121, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 496, i32 2}
!255 = !{ptr @ssip_tx_wd._entry, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @ssip_tx_wd._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.122, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 460, i32 2}
!259 = !{ptr @.str.123, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @ssip_keep_alive.__UNIQUE_ID_ddebug342, !258, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!261 = !{ptr @ssip_pn_setup.addr, !262, !"addr", i1 false, i1 false}
!262 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1058, i32 18}
!263 = !{ptr @ssip_pn_ops, !264, !"ssip_pn_ops", i1 false, i1 false}
!264 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1050, i32 36}
!265 = !{ptr @.str.124, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 927, i32 3}
!267 = !{ptr @.str.125, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @ssip_pn_open._entry, !266, !"_entry", i1 false, i1 false}
!269 = !{ptr @ssip_pn_open._entry_ptr, !266, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.127, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 932, i32 3}
!272 = !{ptr @ssip_pn_open._entry.126, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @ssip_pn_open._entry_ptr.128, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.129, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 936, i32 2}
!276 = !{ptr @ssip_pn_open.__UNIQUE_ID_ddebug362, !275, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!277 = !{ptr @.str.130, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 521, i32 2}
!279 = !{ptr @.str.131, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @ssip_start_rx.__UNIQUE_ID_ddebug345, !278, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!281 = !{ptr @.str.132, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 538, i32 2}
!283 = !{ptr @ssip_start_rx.__UNIQUE_ID_ddebug346, !282, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!284 = !{ptr @.str.133, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 546, i32 2}
!286 = !{ptr @.str.134, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @ssip_stop_rx.__UNIQUE_ID_ddebug347, !285, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!288 = !{ptr @.str.135, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 505, i32 2}
!290 = !{ptr @.str.136, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @ssip_send_bootinfo_req_cmd.__UNIQUE_ID_ddebug343, !289, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!292 = !{ptr @.str.137, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 510, i32 2}
!294 = !{ptr @ssip_send_bootinfo_req_cmd.__UNIQUE_ID_ddebug344, !293, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!295 = !{ptr @.str.138, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 996, i32 3}
!297 = !{ptr @.str.139, !296, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @ssip_pn_xmit.__UNIQUE_ID_ddebug363, !296, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!299 = !{ptr @.str.140, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1004, i32 3}
!301 = !{ptr @ssip_pn_xmit.__UNIQUE_ID_ddebug364, !300, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!302 = !{ptr @.str.141, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1010, i32 3}
!304 = !{ptr @.str.142, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @ssip_pn_xmit._entry, !303, !"_entry", i1 false, i1 false}
!306 = !{ptr @ssip_pn_xmit._entry_ptr, !303, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.143, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1016, i32 3}
!309 = !{ptr @ssip_pn_xmit.__UNIQUE_ID_ddebug365, !308, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!310 = !{ptr @.str.144, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 1020, i32 3}
!312 = !{ptr @ssip_pn_xmit.__UNIQUE_ID_ddebug366, !311, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!313 = !{ptr @.str.145, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 884, i32 3}
!315 = !{ptr @.str.146, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @ssip_tx_data_complete._entry, !314, !"_entry", i1 false, i1 false}
!317 = !{ptr @ssip_tx_data_complete._entry_ptr, !314, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.147, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/hsi/clients/ssi_protocol.c", i32 895, i32 3}
!320 = !{ptr @ssip_tx_data_complete.__UNIQUE_ID_ddebug361, !319, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!321 = !{i32 1, !"wchar_size", i32 2}
!322 = !{i32 1, !"min_enum_size", i32 4}
!323 = !{i32 8, !"branch-target-enforcement", i32 0}
!324 = !{i32 8, !"sign-return-address", i32 0}
!325 = !{i32 8, !"sign-return-address-all", i32 0}
!326 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!327 = !{i32 7, !"uwtable", i32 1}
!328 = !{i32 7, !"frame-pointer", i32 2}
!329 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!330 = !{i64 2148749749, i64 2148749754, i64 2148749767, i64 2148749811, i64 2148749845, i64 2148749866}
!331 = !{i64 2148146312, i64 2148146338, i64 2148146367, i64 2148146401, i64 2148146432, i64 2148146455}
!332 = !{!"branch_weights", i32 2000, i32 1}
!333 = !{i64 2148234764}
!334 = !{i64 2148149497, i64 2148149529, i64 2148149558, i64 2148149592, i64 2148149623, i64 2148149646}
!335 = !{i64 2148234993}
!336 = !{!"branch_weights", i32 1, i32 2000}
!337 = !{i64 2156217707, i64 2156218206, i64 2156217744, i64 2156217800, i64 2156217834, i64 2156217858, i64 2156217899, i64 2156217920, i64 2156217948, i64 2156217982}
!338 = !{i64 2154646245, i64 2154646737, i64 2154646282, i64 2154646338, i64 2154646372, i64 2154646396, i64 2154646437, i64 2154646458, i64 2154646486, i64 2154646520}
!339 = !{i64 2156209266, i64 2156209765, i64 2156209303, i64 2156209359, i64 2156209393, i64 2156209417, i64 2156209458, i64 2156209479, i64 2156209507, i64 2156209541}
!340 = !{i64 2154649006, i64 2154649498, i64 2154649043, i64 2154649099, i64 2154649133, i64 2154649157, i64 2154649198, i64 2154649219, i64 2154649247, i64 2154649281}
!341 = !{i64 2154642687, i64 2154643179, i64 2154642724, i64 2154642780, i64 2154642814, i64 2154642838, i64 2154642879, i64 2154642900, i64 2154642928, i64 2154642962}
!342 = !{i64 2154644297, i64 2154644789, i64 2154644334, i64 2154644390, i64 2154644424, i64 2154644448, i64 2154644489, i64 2154644510, i64 2154644538, i64 2154644572}
!343 = !{i64 2156210928, i64 2156211427, i64 2156210965, i64 2156211021, i64 2156211055, i64 2156211079, i64 2156211120, i64 2156211141, i64 2156211169, i64 2156211203}
!344 = !{i64 2154879307, i64 2154879795, i64 2154879344, i64 2154879400, i64 2154879434, i64 2154879458, i64 2154879499, i64 2154879520, i64 2154879548, i64 2154879582}
