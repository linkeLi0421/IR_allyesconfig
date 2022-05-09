; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-core/dvb_net.c_pt.bc'
source_filename = "../drivers/media/dvb-core/dvb_net.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dvb_net_release\22, \22a\22\09"
module asm "\09.weak\09__crc_dvb_net_release\09\09\09\09"
module asm "\09.long\09__crc_dvb_net_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_net_release:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_net_release\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_net_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dvb_net_init\22, \22a\22\09"
module asm "\09.weak\09__crc_dvb_net_init\09\09\09\09"
module asm "\09.long\09__crc_dvb_net_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_net_init:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_net_init\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_net_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dvb_device = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net_priv = type { i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, [10 x ptr], [10 x [6 x i8]], i32, %struct.work_struct, %struct.work_struct, i8, i32, i8, ptr, ptr, i16, i16, i8, i8, i8, i32, i32, %struct.mutex }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmx_ts_feed = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_net_if = type { i16, i16, i8 }
%struct.__dvb_net_if_old = type { i16, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.108, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.122, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.108 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.122 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.dmx_section_filter = type { [18 x i8], [18 x i8], [18 x i8], ptr, ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
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
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.dvb_net_ule_handle = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, i8, i8, i8 }

@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/media/dvb-core/dvb_net.c\00", [63 x i8] zeroinitializer }, align 32
@__kstrtab_dvb_net_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_net_release = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_net_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_net_release to i32), ptr @__kstrtab_dvb_net_release, ptr @__kstrtabns_dvb_net_release }, section "___ksymtab+dvb_net_release", align 4
@dvb_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&dvbnet->ioctl_mutex\00", [43 x i8] zeroinitializer }, align 32
@dvbdev_net = internal constant { %struct.dvb_device, [32 x i8] } { %struct.dvb_device { %struct.list_head zeroinitializer, ptr @dvb_net_fops, ptr null, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, %struct.wait_queue_head zeroinitializer, ptr null, ptr @.str.14, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_dvb_net_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_net_init = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_net_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_net_init to i32), ptr @__kstrtab_dvb_net_init, ptr @__kstrtabns_dvb_net_init }, section "___ksymtab+dvb_net_init", align 4
@dvb_net_remove_if._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 1414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016dvb_net: removed network interface %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dvb_net_remove_if\00", [46 x i8] zeroinitializer }, align 32
@dvb_net_remove_if._entry_ptr = internal global ptr @dvb_net_remove_if._entry, section ".printk_index", align 4
@dvb_net_feed_stop.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str, ptr @.str.6, i8 1, i8 33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dvb_core\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dvb_net_feed_stop\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stop secfeed\0A\00", [18 x i8] zeroinitializer }, align 32
@dvb_net_feed_stop.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str, ptr @.str.7, i8 1, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"release secfilter\0A\00", [45 x i8] zeroinitializer }, align 32
@dvb_net_feed_stop.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str, ptr @.str.8, i8 1, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"release multi_filter[%d]\0A\00", [38 x i8] zeroinitializer }, align 32
@dvb_net_feed_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str, i32 1183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013dvb_net: %s: no feed to stop\0A\00", [32 x i8] zeroinitializer }, align 32
@dvb_net_feed_stop._entry_ptr = internal global ptr @dvb_net_feed_stop._entry, section ".printk_index", align 4
@dvb_net_feed_stop.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str, ptr @.str.10, i8 1, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stop tsfeed\0A\00", [19 x i8] zeroinitializer }, align 32
@dvb_net_feed_stop._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str, i32 1194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013dvb_net: %s: no ts feed to stop\0A\00", [61 x i8] zeroinitializer }, align 32
@dvb_net_feed_stop._entry_ptr.13 = internal global ptr @dvb_net_feed_stop._entry.11, section ".printk_index", align 4
@dvb_net_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dvb_net_ioctl, ptr null, ptr null, i32 0, ptr @dvb_generic_open, ptr null, ptr @dvb_net_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dvb-net\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dvb\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dvb%d%u%d\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dvb%d_%d\00", [23 x i8] zeroinitializer }, align 32
@dvb_net_add_if.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&priv->set_multicast_list_wq)\00", [48 x i8] zeroinitializer }, align 32
@dvb_net_add_if.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&priv->restart_net_feed_wq)\00", [50 x i8] zeroinitializer }, align 32
@dvb_net_add_if.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&priv->mutex\00", [19 x i8] zeroinitializer }, align 32
@dvb_net_add_if._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str, i32 1395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016dvb_net: created network interface %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_net_add_if\00", [17 x i8] zeroinitializer }, align 32
@dvb_net_add_if._entry_ptr = internal global ptr @dvb_net_add_if._entry, section ".printk_index", align 4
@dvb_header_ops = internal constant { %struct.header_ops, [40 x i8] } { %struct.header_ops { ptr @eth_header, ptr @eth_header_parse, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @dvb_net_open, ptr @dvb_net_stop, ptr @dvb_net_tx, ptr null, ptr null, ptr null, ptr @dvb_net_set_multicast_list, ptr @dvb_net_set_mac, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@dvb_net_feed_start.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.25, ptr @.str, ptr @.str.26, i8 1, i8 8, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dvb_net_feed_start\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rx_mode %i\0A\00", [20 x i8] zeroinitializer }, align 32
@dvb_net_feed_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str, i32 1060, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013dvb_net: %s: BUG %d\0A\00", [41 x i8] zeroinitializer }, align 32
@dvb_net_feed_start._entry_ptr = internal global ptr @dvb_net_feed_start._entry, section ".printk_index", align 4
@dvb_net_feed_start.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.25, ptr @.str, ptr @.str.28, i8 1, i8 10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"alloc secfeed\0A\00", [17 x i8] zeroinitializer }, align 32
@dvb_net_feed_start._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str, i32 1072, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013dvb_net: %s: could not allocate section feed\0A\00", [48 x i8] zeroinitializer }, align 32
@dvb_net_feed_start._entry_ptr.31 = internal global ptr @dvb_net_feed_start._entry.29, section ".printk_index", align 4
@dvb_net_feed_start._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str, i32 1079, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013dvb_net: %s: could not set section feed\0A\00", [53 x i8] zeroinitializer }, align 32
@dvb_net_feed_start._entry_ptr.34 = internal global ptr @dvb_net_feed_start._entry.32, section ".printk_index", align 4
@dvb_net_feed_start.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.25, ptr @.str, ptr @.str.35, i8 1, i8 15, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"set secfilter\0A\00", [17 x i8] zeroinitializer }, align 32
@mask_normal = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@dvb_net_feed_start.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.25, ptr @.str, ptr @.str.36, i8 1, i8 17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"set multi_secfilter[%d]\0A\00", [39 x i8] zeroinitializer }, align 32
@dvb_net_feed_start.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.25, ptr @.str, ptr @.str.37, i8 1, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"set multi_secfilter[0]\0A\00", [40 x i8] zeroinitializer }, align 32
@mac_allmulti = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\01\00^\00\00\00", [26 x i8] zeroinitializer }, align 32
@mask_allmulti = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\00\00\00", [26 x i8] zeroinitializer }, align 32
@dvb_net_feed_start.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.25, ptr @.str, ptr @.str.35, i8 1, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mask_promisc = internal global { [6 x i8], [26 x i8] } zeroinitializer, align 32
@dvb_net_feed_start.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.25, ptr @.str, ptr @.str.38, i8 1, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"start filtering\0A\00", [47 x i8] zeroinitializer }, align 32
@dvb_net_feed_start.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.25, ptr @.str, ptr @.str.39, i8 1, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"alloc tsfeed\0A\00", [18 x i8] zeroinitializer }, align 32
@dvb_net_feed_start._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.25, ptr @.str, i32 1120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013dvb_net: %s: could not allocate ts feed\0A\00", [53 x i8] zeroinitializer }, align 32
@dvb_net_feed_start._entry_ptr.42 = internal global ptr @dvb_net_feed_start._entry.40, section ".printk_index", align 4
@dvb_net_feed_start._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.25, ptr @.str, i32 1134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013dvb_net: %s: could not set ts feed\0A\00", [58 x i8] zeroinitializer }, align 32
@dvb_net_feed_start._entry_ptr.45 = internal global ptr @dvb_net_feed_start._entry.43, section ".printk_index", align 4
@dvb_net_feed_start.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.25, ptr @.str, ptr @.str.38, i8 1, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dvb_net_sec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str, i32 903, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014dvb_net: %s: IP/MPE packet length = %d too small.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dvb_net_sec\00", [20 x i8] zeroinitializer }, align 32
@dvb_net_sec._entry_ptr = internal global ptr @dvb_net_sec._entry, section ".printk_index", align 4
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\AA\AA\03\00\00\00\00", [25 x i8] zeroinitializer }, align 32
@dvb_net_filter_sec_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str, i32 1019, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013dvb_net: %s: could not get filter\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dvb_net_filter_sec_set\00", [41 x i8] zeroinitializer }, align 32
@dvb_net_filter_sec_set._entry_ptr = internal global ptr @dvb_net_filter_sec_set._entry, section ".printk_index", align 4
@dvb_net_filter_sec_set.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.50, ptr @.str, ptr @.str.51, i8 1, i8 5, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"filter mac=%pM mask=%pM\0A\00", [39 x i8] zeroinitializer }, align 32
@dvb_net_ts_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str, i32 882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014dvb_net: buffer2 not NULL: %p.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dvb_net_ts_callback\00", [44 x i8] zeroinitializer }, align 32
@dvb_net_ts_callback._entry_ptr = internal global ptr @dvb_net_ts_callback._entry, section ".printk_index", align 4
@dvb_net_ts_callback._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str, i32 884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014dvb_net: length > 32k: %zu.\0A\00", [33 x i8] zeroinitializer }, align 32
@dvb_net_ts_callback._entry_ptr.56 = internal global ptr @dvb_net_ts_callback._entry.54, section ".printk_index", align 4
@dvb_net_ule_new_ts_cell._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014dvb_net: %lu: Invalid TS cell: SYNC %#x, TEI %u, SC %#x.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dvb_net_ule_new_ts_cell\00", [40 x i8] zeroinitializer }, align 32
@dvb_net_ule_new_ts_cell._entry_ptr = internal global ptr @dvb_net_ule_new_ts_cell._entry, section ".printk_index", align 4
@dvb_net_ule_ts_pusi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013dvb_net: %lu: Invalid ULE packet (pointer field %d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dvb_net_ule_ts_pusi\00", [44 x i8] zeroinitializer }, align 32
@dvb_net_ule_ts_pusi._entry_ptr = internal global ptr @dvb_net_ule_ts_pusi._entry, section ".printk_index", align 4
@dvb_net_ule_new_ts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014dvb_net: %lu: TS discontinuity: got %#x, expected %#x.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dvb_net_ule_new_ts\00", [45 x i8] zeroinitializer }, align 32
@dvb_net_ule_new_ts._entry_ptr = internal global ptr @dvb_net_ule_new_ts._entry, section ".printk_index", align 4
@dvb_net_ule_new_ts._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014dvb_net: %lu: Invalid pointer field: %u.\0A\00", [52 x i8] zeroinitializer }, align 32
@dvb_net_ule_new_ts._entry_ptr.65 = internal global ptr @dvb_net_ule_new_ts._entry.63, section ".printk_index", align 4
@dvb_net_ule_new_ts._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"\014dvb_net: %lu: Expected %d more SNDU bytes, but got PUSI (pf %d, h->ts_remain %d).  Flushing incomplete payload.\0A\00", [45 x i8] zeroinitializer }, align 32
@dvb_net_ule_new_ts._entry_ptr.68 = internal global ptr @dvb_net_ule_new_ts._entry.66, section ".printk_index", align 4
@dvb_net_ule_new_payload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014dvb_net: Invalid payload packing: only %d bytes left in TS.  Resyncing.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dvb_net_ule_new_payload\00", [40 x i8] zeroinitializer }, align 32
@dvb_net_ule_new_payload._entry_ptr = internal global ptr @dvb_net_ule_new_payload._entry, section ".printk_index", align 4
@dvb_net_ule_new_payload._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014dvb_net: %lu: Invalid ULE SNDU length %u. Resyncing.\0A\00", [40 x i8] zeroinitializer }, align 32
@dvb_net_ule_new_payload._entry_ptr.73 = internal global ptr @dvb_net_ule_new_payload._entry.71, section ".printk_index", align 4
@dvb_net_ule_new_payload._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.70, ptr @.str, i32 585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015dvb_net: %s: Memory squeeze, dropping packet.\0A\00", [47 x i8] zeroinitializer }, align 32
@dvb_net_ule_new_payload._entry_ptr.76 = internal global ptr @dvb_net_ule_new_payload._entry.74, section ".printk_index", align 4
@dvb_net_ule_check_crc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str, i32 657, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"\014dvb_net: %lu: CRC32 check FAILED: %08x / %08x, SNDU len %d type %#x, ts_remain %d, next 2: %x.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dvb_net_ule_check_crc\00", [42 x i8] zeroinitializer }, align 32
@dvb_net_ule_check_crc._entry_ptr = internal global ptr @dvb_net_ule_check_crc._entry, section ".printk_index", align 4
@dvb_net_ule_check_crc.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.78, ptr @.str, ptr @.str.79, i8 0, i8 -83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"Dropping SNDU: MAC destination address does not match: dest addr: %pM, h->dev addr: %pM\0A\00", [39 x i8] zeroinitializer }, align 32
@handle_ule_extensions.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.80, ptr @.str, ptr @.str.81, i8 0, i8 69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"handle_ule_extensions\00", [42 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"ule_next_hdr=%p, ule_sndu_type=%i, l=%i, total_ext_len=%i\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"dvb_net: ule_next_hdr=%p, ule_sndu_type=%i, l=%i, total_ext_len=%i\0A\00", [60 x i8] zeroinitializer }, align 32
@handle_one_ule_extension.ule_mandatory_ext_handlers = internal constant { <{ ptr, ptr, [253 x ptr] }>, [228 x i8] } { <{ ptr, ptr, [253 x ptr] }> <{ ptr @ule_test_sndu, ptr @ule_bridged_sndu, [253 x ptr] zeroinitializer }>, [228 x i8] zeroinitializer }, align 32
@handle_one_ule_extension.ule_optional_ext_handlers = internal constant { <{ ptr, [254 x ptr] }>, [228 x i8] } { <{ ptr, [254 x ptr] }> <{ ptr @ule_exthdr_padding, [254 x ptr] zeroinitializer }>, [228 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@wq_set_multicast_list.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.83, ptr @.str, ptr @.str.84, i8 1, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wq_set_multicast_list\00", [42 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"promiscuous mode\0A\00", [46 x i8] zeroinitializer }, align 32
@wq_set_multicast_list.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.83, ptr @.str, ptr @.str.85, i8 1, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"allmulti mode\0A\00", [17 x i8] zeroinitializer }, align 32
@wq_set_multicast_list.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.83, ptr @.str, ptr @.str.86, i8 1, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"set_mc_list, %d entries\0A\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.87 = internal global [7 x i64] [i64 5, i64 32, i64 28469, i64 3221516084, i64 3221516086, i64 3221647156, i64 3221647158]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1604, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1623, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [11 x i8] c"dvbdev_net\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1588, i32 32 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1414, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1159, i32 5 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1164, i32 5 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1172, i32 6 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1183, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1187, i32 5 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1194, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant [13 x i8] c"dvb_net_fops\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1580, i32 37 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1593, i32 10 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1356, i32 8 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1362, i32 33 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1366, i32 33 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1384, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1385, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1386, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1395, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant [15 x i8] c"dvb_header_ops\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1302, i32 32 }
@___asan_gen_.188 = private unnamed_addr constant [15 x i8] c"dvb_netdev_ops\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1308, i32 36 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1057, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1060, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1067, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1071, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1079, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1086, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant [12 x i8] c"mask_normal\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1004, i32 11 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1093, i32 5 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1100, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant [13 x i8] c"mac_allmulti\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1006, i32 11 }
@___asan_gen_.233 = private unnamed_addr constant [14 x i8] c"mask_allmulti\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1005, i32 11 }
@___asan_gen_.236 = private unnamed_addr constant [13 x i8] c"mask_promisc\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1007, i32 11 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1111, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1117, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1120, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1134, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 902, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 923, i32 40 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1019, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1045, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 882, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 884, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 337, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 372, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 399, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 429, i32 5 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 468, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 497, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 517, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 584, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 652, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 692, i32 4 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 276, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant [27 x i8] c"ule_mandatory_ext_handlers\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 220, i32 15 }
@___asan_gen_.380 = private unnamed_addr constant [26 x i8] c"ule_optional_ext_handlers\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 224, i32 15 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1227, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1230, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.393 = private constant [36 x i8] c"../drivers/media/dvb-core/dvb_net.c\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 1235, i32 3 }
@llvm.compiler.used = appending global [125 x ptr] [ptr @__ksymtab_dvb_net_init, ptr @__ksymtab_dvb_net_release, ptr @dvb_net_add_if._entry, ptr @dvb_net_add_if._entry_ptr, ptr @dvb_net_feed_start._entry, ptr @dvb_net_feed_start._entry.29, ptr @dvb_net_feed_start._entry.32, ptr @dvb_net_feed_start._entry.40, ptr @dvb_net_feed_start._entry.43, ptr @dvb_net_feed_start._entry_ptr, ptr @dvb_net_feed_start._entry_ptr.31, ptr @dvb_net_feed_start._entry_ptr.34, ptr @dvb_net_feed_start._entry_ptr.42, ptr @dvb_net_feed_start._entry_ptr.45, ptr @dvb_net_feed_stop._entry, ptr @dvb_net_feed_stop._entry.11, ptr @dvb_net_feed_stop._entry_ptr, ptr @dvb_net_feed_stop._entry_ptr.13, ptr @dvb_net_filter_sec_set._entry, ptr @dvb_net_filter_sec_set._entry_ptr, ptr @dvb_net_remove_if._entry, ptr @dvb_net_remove_if._entry_ptr, ptr @dvb_net_sec._entry, ptr @dvb_net_sec._entry_ptr, ptr @dvb_net_ts_callback._entry, ptr @dvb_net_ts_callback._entry.54, ptr @dvb_net_ts_callback._entry_ptr, ptr @dvb_net_ts_callback._entry_ptr.56, ptr @dvb_net_ule_check_crc._entry, ptr @dvb_net_ule_check_crc._entry_ptr, ptr @dvb_net_ule_new_payload._entry, ptr @dvb_net_ule_new_payload._entry.71, ptr @dvb_net_ule_new_payload._entry.74, ptr @dvb_net_ule_new_payload._entry_ptr, ptr @dvb_net_ule_new_payload._entry_ptr.73, ptr @dvb_net_ule_new_payload._entry_ptr.76, ptr @dvb_net_ule_new_ts._entry, ptr @dvb_net_ule_new_ts._entry.63, ptr @dvb_net_ule_new_ts._entry.66, ptr @dvb_net_ule_new_ts._entry_ptr, ptr @dvb_net_ule_new_ts._entry_ptr.65, ptr @dvb_net_ule_new_ts._entry_ptr.68, ptr @dvb_net_ule_new_ts_cell._entry, ptr @dvb_net_ule_new_ts_cell._entry_ptr, ptr @dvb_net_ule_ts_pusi._entry, ptr @dvb_net_ule_ts_pusi._entry_ptr, ptr @.str, ptr @dvb_net_init.__key, ptr @.str.1, ptr @dvbdev_net, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @dvb_net_fops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @dvb_net_add_if.__key, ptr @.str.18, ptr @dvb_net_add_if.__key.19, ptr @.str.20, ptr @dvb_net_add_if.__key.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @dvb_header_ops, ptr @dvb_netdev_ops, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @mask_normal, ptr @.str.36, ptr @.str.37, ptr @mac_allmulti, ptr @mask_allmulti, ptr @mask_promisc, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @handle_one_ule_extension.ule_mandatory_ext_handlers, ptr @handle_one_ule_extension.ule_optional_ext_handlers, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86], section "llvm.metadata"
@0 = internal global [101 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbdev_net to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_net_remove_if._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_net_feed_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_net_feed_stop._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_net_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_net_add_if.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_net_add_if.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_net_add_if.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_net_add_if._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_header_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_net_feed_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_net_feed_start._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_net_feed_start._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mask_normal to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_allmulti to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mask_allmulti to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mask_promisc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_net_feed_start._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_net_feed_start._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_net_sec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_net_filter_sec_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_net_ts_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_net_ts_callback._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_net_ule_new_ts_cell._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_net_ule_ts_pusi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_net_ule_new_ts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_net_ule_new_ts._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_net_ule_new_ts._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_net_ule_new_payload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_net_ule_new_payload._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_net_ule_new_payload._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_net_ule_check_crc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_one_ule_extension.ule_mandatory_ext_handlers to i32), i32 1020, i32 1248, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_one_ule_extension.ule_optional_ext_handlers to i32), i32 1020, i32 1248, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dvb_net_release(ptr nocapture noundef %dvbnet) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %exit = getelementptr inbounds %struct.dvb_net, ptr %dvbnet, i32 0, i32 3
  %0 = ptrtoint ptr %exit to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %exit, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %exit, align 4
  %1 = ptrtoint ptr %dvbnet to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dvbnet, align 4
  %users = getelementptr inbounds %struct.dvb_device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp slt i32 %4, 1
  br i1 %cmp, label %do.body1, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

do.body1:                                         ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1605) #11
  %5 = ptrtoint ptr %dvbnet to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dvbnet, align 4
  %users6 = getelementptr inbounds %struct.dvb_device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %users6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %users6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp7 = icmp eq i32 %8, 1
  br i1 %cmp7, label %do.body1.if.end19_crit_edge, label %if.end

do.body1.if.end19_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.end:                                           ; preds = %do.body1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %9 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %10 = ptrtoint ptr %dvbnet to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dvbnet, align 4
  %wait_queue40 = getelementptr inbounds %struct.dvb_device, ptr %11, i32 0, i32 9
  %call41 = call i32 @prepare_to_wait_event(ptr noundef %wait_queue40, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %12 = ptrtoint ptr %dvbnet to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dvbnet, align 4
  %users1142 = getelementptr inbounds %struct.dvb_device, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %users1142 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %users1142, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp1243 = icmp eq i32 %15, 1
  br i1 %cmp1243, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #11
  %16 = ptrtoint ptr %dvbnet to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dvbnet, align 4
  %wait_queue = getelementptr inbounds %struct.dvb_device, ptr %17, i32 0, i32 9
  %call = call i32 @prepare_to_wait_event(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %18 = ptrtoint ptr %dvbnet to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dvbnet, align 4
  %users11 = getelementptr inbounds %struct.dvb_device, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %users11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %users11, align 4
  %cmp12 = icmp eq i32 %21, 1
  br i1 %cmp12, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  %22 = ptrtoint ptr %dvbnet to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dvbnet, align 4
  %wait_queue16 = getelementptr inbounds %struct.dvb_device, ptr %23, i32 0, i32 9
  call void @finish_wait(ptr noundef %wait_queue16, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end19

if.end19:                                         ; preds = %for.end, %do.body1.if.end19_crit_edge, %entry.if.end19_crit_edge
  %24 = ptrtoint ptr %dvbnet to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dvbnet, align 4
  call void @dvb_unregister_device(ptr noundef %25) #11
  %arrayidx = getelementptr %struct.dvb_net, ptr %dvbnet, i32 0, i32 2, i32 0
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not = icmp eq i32 %27, 0
  br i1 %tobool.not, label %if.end19.for.inc_crit_edge, label %if.end24

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %call25 = call fastcc i32 @dvb_net_remove_if(ptr noundef %dvbnet, i32 noundef 0)
  br label %for.inc

for.inc:                                          ; preds = %if.end24, %if.end19.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.dvb_net, ptr %dvbnet, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.1 = icmp eq i32 %29, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end24.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.end24.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %call25.1 = call fastcc i32 @dvb_net_remove_if(ptr noundef %dvbnet, i32 noundef 1)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end24.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.dvb_net, ptr %dvbnet, i32 0, i32 2, i32 2
  %30 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.2 = icmp eq i32 %31, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end24.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

if.end24.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  %call25.2 = call fastcc i32 @dvb_net_remove_if(ptr noundef %dvbnet, i32 noundef 2)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end24.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.dvb_net, ptr %dvbnet, i32 0, i32 2, i32 3
  %32 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.3 = icmp eq i32 %33, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end24.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

if.end24.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  %call25.3 = call fastcc i32 @dvb_net_remove_if(ptr noundef %dvbnet, i32 noundef 3)
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end24.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.dvb_net, ptr %dvbnet, i32 0, i32 2, i32 4
  %34 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.4 = icmp eq i32 %35, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end24.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

if.end24.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  %call25.4 = call fastcc i32 @dvb_net_remove_if(ptr noundef %dvbnet, i32 noundef 4)
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end24.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.dvb_net, ptr %dvbnet, i32 0, i32 2, i32 5
  %36 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.5 = icmp eq i32 %37, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end24.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5

if.end24.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  %call25.5 = call fastcc i32 @dvb_net_remove_if(ptr noundef %dvbnet, i32 noundef 5)
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end24.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.dvb_net, ptr %dvbnet, i32 0, i32 2, i32 6
  %38 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.6 = icmp eq i32 %39, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.end24.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.6

if.end24.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  %call25.6 = call fastcc i32 @dvb_net_remove_if(ptr noundef %dvbnet, i32 noundef 6)
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end24.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.dvb_net, ptr %dvbnet, i32 0, i32 2, i32 7
  %40 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.7 = icmp eq i32 %41, 0
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.end24.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.7

if.end24.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  %call25.7 = call fastcc i32 @dvb_net_remove_if(ptr noundef %dvbnet, i32 noundef 7)
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.end24.7, %for.inc.6.for.inc.7_crit_edge
  %arrayidx.8 = getelementptr %struct.dvb_net, ptr %dvbnet, i32 0, i32 2, i32 8
  %42 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.8 = icmp eq i32 %43, 0
  br i1 %tobool.not.8, label %for.inc.7.for.inc.8_crit_edge, label %if.end24.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.8

if.end24.8:                                       ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #13
  %call25.8 = call fastcc i32 @dvb_net_remove_if(ptr noundef %dvbnet, i32 noundef 8)
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.end24.8, %for.inc.7.for.inc.8_crit_edge
  %arrayidx.9 = getelementptr %struct.dvb_net, ptr %dvbnet, i32 0, i32 2, i32 9
  %44 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.9 = icmp eq i32 %45, 0
  br i1 %tobool.not.9, label %for.inc.8.for.inc.9_crit_edge, label %if.end24.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.9

if.end24.9:                                       ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #13
  %call25.9 = call fastcc i32 @dvb_net_remove_if(ptr noundef %dvbnet, i32 noundef 9)
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.end24.9, %for.inc.8.for.inc.9_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_net_remove_if(ptr nocapture noundef %dvbnet, i32 noundef %num) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.dvb_net, ptr %dvbnet, i32 0, i32 1, i32 %num
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr %struct.dvb_net, ptr %dvbnet, i32 0, i32 2, i32 %num
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %add.ptr.i, align 4
  %call1.i = tail call fastcc i32 @dvb_net_feed_stop(ptr noundef %1) #11
  %set_multicast_list_wq = getelementptr i8, ptr %1, i32 2444
  %call6 = tail call zeroext i1 @flush_work(ptr noundef %set_multicast_list_wq) #11
  %restart_net_feed_wq = getelementptr i8, ptr %1, i32 2488
  %call7 = tail call zeroext i1 @flush_work(ptr noundef %restart_net_feed_wq) #11
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %1) #14
  tail call void @unregister_netdev(ptr noundef %1) #11
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %arrayidx1, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx, align 4
  tail call void @free_netdev(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_net_init(ptr noundef %adap, ptr noundef %dvbnet, ptr noundef %dmx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ioctl_mutex = getelementptr inbounds %struct.dvb_net, ptr %dvbnet, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %ioctl_mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @dvb_net_init.__key) #11
  %demux = getelementptr inbounds %struct.dvb_net, ptr %dvbnet, i32 0, i32 4
  %0 = ptrtoint ptr %demux to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dmx, ptr %demux, align 4
  %uglygep = getelementptr i8, ptr %dvbnet, i32 44
  %1 = call ptr @memset(ptr %uglygep, i32 0, i32 40)
  %call = tail call i32 @dvb_register_device(ptr noundef %adap, ptr noundef %dvbnet, ptr noundef nonnull @dvbdev_net, ptr noundef %dvbnet, i32 noundef 5, i32 noundef 0) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_net_stop(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %add.ptr.i, align 4
  %call1 = tail call fastcc i32 @dvb_net_feed_stop(ptr noundef %dev)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_net_feed_stop(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %mutex = getelementptr i8, ptr %dev, i32 2568
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %feedtype = getelementptr i8, ptr %dev, i32 2532
  %0 = ptrtoint ptr %feedtype to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %feedtype, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.if.end139_crit_edge [
    i8 0, label %if.then
    i8 1, label %if.then92
  ]

entry.if.end139_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139

if.then:                                          ; preds = %entry
  %secfeed = getelementptr i8, ptr %dev, i32 2324
  %3 = ptrtoint ptr %secfeed to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %secfeed, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %do.end83, label %if.then2

if.then2:                                         ; preds = %if.then
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %if.then2.if.end17_crit_edge, label %do.body6

if.then2.if.end17_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

do.body6:                                         ; preds = %if.then2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_net_feed_stop.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_net_feed_stop, %if.then11)) #11
          to label %do.end13 [label %if.then11], !srcloc !218

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @dvb_net_feed_stop.__UNIQUE_ID_ddebug361, ptr noundef %dev, ptr noundef nonnull @.str.6) #11
  br label %do.end13

do.end13:                                         ; preds = %if.then11, %do.body6
  %7 = ptrtoint ptr %secfeed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %secfeed, align 4
  %stop_filtering = getelementptr inbounds %struct.dmx_section_feed, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %stop_filtering to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stop_filtering, align 4
  %call16 = tail call i32 %10(ptr noundef %8) #11
  br label %if.end17

if.end17:                                         ; preds = %do.end13, %if.then2.if.end17_crit_edge
  %secfilter = getelementptr i8, ptr %dev, i32 2328
  %11 = ptrtoint ptr %secfilter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %secfilter, align 4
  %tobool18.not = icmp eq ptr %12, null
  br i1 %tobool18.not, label %if.end17.if.end44_crit_edge, label %do.body21

if.end17.if.end44_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

do.body21:                                        ; preds = %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_net_feed_stop.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_net_feed_stop, %if.then33)) #11
          to label %do.end38 [label %if.then33], !srcloc !218

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @dvb_net_feed_stop.__UNIQUE_ID_ddebug362, ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  br label %do.end38

do.end38:                                         ; preds = %if.then33, %do.body21
  %13 = ptrtoint ptr %secfeed to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %secfeed, align 4
  %release_filter = getelementptr inbounds %struct.dmx_section_feed, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %release_filter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %release_filter, align 4
  %17 = ptrtoint ptr %secfilter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %secfilter, align 4
  %call42 = tail call i32 %16(ptr noundef %14, ptr noundef %18) #11
  %19 = ptrtoint ptr %secfilter to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %secfilter, align 4
  br label %if.end44

if.end44:                                         ; preds = %do.end38, %if.end17.if.end44_crit_edge
  %multi_num = getelementptr i8, ptr %dev, i32 2336
  %20 = ptrtoint ptr %multi_num to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %multi_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp45196 = icmp sgt i32 %21, 0
  br i1 %cmp45196, label %if.end44.for.body_crit_edge, label %if.end44.for.end_crit_edge

if.end44.for.end_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end44.for.body_crit_edge:                      ; preds = %if.end44
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end44.for.body_crit_edge
  %i.0197 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end44.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dvb_net_priv, ptr %add.ptr.i, i32 0, i32 9, i32 %i.0197
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %tobool47.not = icmp eq ptr %23, null
  br i1 %tobool47.not, label %for.body.for.inc_crit_edge, label %do.body50

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body50:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_net_feed_stop.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_net_feed_stop, %if.then62)) #11
          to label %do.end67 [label %if.then62], !srcloc !218

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @dvb_net_feed_stop.__UNIQUE_ID_ddebug363, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %i.0197) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then62, %do.body50
  %24 = ptrtoint ptr %secfeed to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %secfeed, align 4
  %release_filter69 = getelementptr inbounds %struct.dmx_section_feed, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %release_filter69 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %release_filter69, align 4
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %call73 = tail call i32 %27(ptr noundef %25, ptr noundef %29) #11
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end67, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0197, 1
  %31 = ptrtoint ptr %multi_num to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %multi_num, align 4
  %cmp45 = icmp slt i32 %inc, %32
  br i1 %cmp45, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end44.for.end_crit_edge
  %demux = getelementptr i8, ptr %dev, i32 2320
  %33 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %demux, align 4
  %release_section_feed = getelementptr inbounds %struct.dmx_demux, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %release_section_feed to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %release_section_feed, align 4
  %37 = ptrtoint ptr %secfeed to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %secfeed, align 4
  %call79 = tail call i32 %36(ptr noundef %34, ptr noundef %38) #11
  %39 = ptrtoint ptr %secfeed to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %secfeed, align 4
  br label %if.end139

do.end83:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %dev) #14
  br label %if.end139

if.then92:                                        ; preds = %entry
  %tsfeed = getelementptr i8, ptr %dev, i32 2332
  %40 = ptrtoint ptr %tsfeed to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tsfeed, align 4
  %tobool93.not = icmp eq ptr %41, null
  br i1 %tobool93.not, label %do.end131, label %if.then94

if.then94:                                        ; preds = %if.then92
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool97.not = icmp eq i32 %43, 0
  br i1 %tobool97.not, label %if.then94.if.end122_crit_edge, label %do.body100

if.then94.if.end122_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end122

do.body100:                                       ; preds = %if.then94
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_net_feed_stop.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_net_feed_stop, %if.then112)) #11
          to label %do.end117 [label %if.then112], !srcloc !218

if.then112:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @dvb_net_feed_stop.__UNIQUE_ID_ddebug364, ptr noundef %dev, ptr noundef nonnull @.str.10) #11
  br label %do.end117

do.end117:                                        ; preds = %if.then112, %do.body100
  %44 = ptrtoint ptr %tsfeed to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tsfeed, align 4
  %stop_filtering119 = getelementptr inbounds %struct.dmx_ts_feed, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %stop_filtering119 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %stop_filtering119, align 4
  %call121 = tail call i32 %47(ptr noundef %45) #11
  br label %if.end122

if.end122:                                        ; preds = %do.end117, %if.then94.if.end122_crit_edge
  %demux123 = getelementptr i8, ptr %dev, i32 2320
  %48 = ptrtoint ptr %demux123 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %demux123, align 4
  %release_ts_feed = getelementptr inbounds %struct.dmx_demux, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %release_ts_feed to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %release_ts_feed, align 4
  %52 = ptrtoint ptr %tsfeed to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tsfeed, align 4
  %call126 = tail call i32 %51(ptr noundef %49, ptr noundef %53) #11
  %54 = ptrtoint ptr %tsfeed to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %tsfeed, align 4
  br label %if.end139

do.end131:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #13
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %dev) #14
  br label %if.end139

if.end139:                                        ; preds = %do.end131, %if.end122, %do.end83, %for.end, %entry.if.end139_crit_edge
  %ret.0 = phi i32 [ 0, %for.end ], [ 0, %do.end83 ], [ 0, %if.end122 ], [ 0, %do.end131 ], [ -22, %entry.if.end139_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_net_ioctl(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dvb_usercopy(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg, ptr noundef nonnull @dvb_net_do_ioctl) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_generic_open(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_net_close(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %call = tail call i32 @dvb_generic_release(ptr noundef %inode, ptr noundef %file) #11
  %users = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %exit = getelementptr inbounds %struct.dvb_net, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %exit to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %exit, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %cmp1 = icmp slt i8 %bf.load, 0
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %wait_queue = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %wait_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usercopy(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_net_do_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, ptr noundef %parg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %4 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_flags, align 4
  %and = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup121_crit_edge, label %if.end

entry.cleanup121_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup121

if.end:                                           ; preds = %entry
  %ioctl_mutex = getelementptr inbounds %struct.dvb_net, ptr %3, i32 0, i32 5
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %ioctl_mutex, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup121_crit_edge

if.end.cleanup121_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup121

if.end2:                                          ; preds = %if.end
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %cmd, label %if.end2.ioctl_error_crit_edge [
    i32 -1073320140, label %sw.bb
    i32 -1073320138, label %sw.bb16
    i32 28469, label %sw.bb44
    i32 -1073451212, label %sw.bb58
    i32 -1073451210, label %sw.bb82
  ]

if.end2.ioctl_error_crit_edge:                    ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %ioctl_error

sw.bb:                                            ; preds = %if.end2
  %call3 = tail call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %call3, label %if.end5, label %sw.bb.ioctl_error_crit_edge

sw.bb.ioctl_error_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %ioctl_error

if.end5:                                          ; preds = %sw.bb
  %adapter = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 4
  %module = getelementptr inbounds %struct.dvb_adapter, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %module, align 4
  %call6 = tail call zeroext i1 @try_module_get(ptr noundef %10) #11
  br i1 %call6, label %if.end8, label %if.end5.ioctl_error_crit_edge

if.end5.ioctl_error_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %ioctl_error

if.end8:                                          ; preds = %if.end5
  %11 = ptrtoint ptr %parg to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %parg, align 2
  %feedtype = getelementptr inbounds %struct.dvb_net_if, ptr %parg, i32 0, i32 2
  %13 = ptrtoint ptr %feedtype to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %feedtype, align 2
  %call9 = tail call fastcc i32 @dvb_net_add_if(ptr noundef %3, i16 noundef zeroext %12, i8 noundef zeroext %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter, align 4
  %module13 = getelementptr inbounds %struct.dvb_adapter, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %module13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %module13, align 4
  tail call void @module_put(ptr noundef %18) #11
  br label %ioctl_error

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i32 %call9 to i16
  %if_num = getelementptr inbounds %struct.dvb_net_if, ptr %parg, i32 0, i32 1
  %19 = ptrtoint ptr %if_num to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv, ptr %if_num, align 2
  br label %ioctl_error

sw.bb16:                                          ; preds = %if.end2
  %if_num19 = getelementptr inbounds %struct.dvb_net_if, ptr %parg, i32 0, i32 1
  %20 = ptrtoint ptr %if_num19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %if_num19, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %21)
  %cmp21 = icmp ugt i16 %21, 9
  br i1 %cmp21, label %sw.bb16.ioctl_error_crit_edge, label %if.end24

sw.bb16.ioctl_error_crit_edge:                    ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #13
  br label %ioctl_error

if.end24:                                         ; preds = %sw.bb16
  %conv20 = zext i16 %21 to i32
  %22 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %conv20, i32 10) #11, !srcloc !219
  %and29 = and i32 %22, %conv20
  %arrayidx = getelementptr %struct.dvb_net, ptr %3, i32 0, i32 2, i32 %and29
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool30.not = icmp eq i32 %24, 0
  br i1 %tobool30.not, label %if.end24.ioctl_error_crit_edge, label %if.end32

if.end24.ioctl_error_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %ioctl_error

if.end32:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx33 = getelementptr %struct.dvb_net, ptr %3, i32 0, i32 1, i32 %and29
  %25 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx33, align 4
  %pid35 = getelementptr i8, ptr %26, i32 2308
  %27 = ptrtoint ptr %pid35 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %pid35, align 4
  %29 = ptrtoint ptr %parg to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %parg, align 2
  %feedtype37 = getelementptr i8, ptr %26, i32 2532
  %30 = ptrtoint ptr %feedtype37 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %feedtype37, align 4
  %feedtype38 = getelementptr inbounds %struct.dvb_net_if, ptr %parg, i32 0, i32 2
  %32 = ptrtoint ptr %feedtype38 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %feedtype38, align 2
  br label %ioctl_error

sw.bb44:                                          ; preds = %if.end2
  %call45 = tail call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %call45, label %if.end47, label %sw.bb44.ioctl_error_crit_edge

sw.bb44.ioctl_error_crit_edge:                    ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #13
  br label %ioctl_error

if.end47:                                         ; preds = %sw.bb44
  %cmp48 = icmp ugt ptr %parg, inttoptr (i32 9 to ptr)
  br i1 %cmp48, label %if.end47.ioctl_error_crit_edge, label %if.end51

if.end47.ioctl_error_crit_edge:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %ioctl_error

if.end51:                                         ; preds = %if.end47
  %33 = ptrtoint ptr %parg to i32
  %call52 = tail call fastcc i32 @dvb_net_remove_if(ptr noundef %3, i32 noundef %33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then54, label %if.end51.ioctl_error_crit_edge

if.end51.ioctl_error_crit_edge:                   ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %ioctl_error

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %adapter55 = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %adapter55 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter55, align 4
  %module56 = getelementptr inbounds %struct.dvb_adapter, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %module56 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %module56, align 4
  tail call void @module_put(ptr noundef %37) #11
  br label %ioctl_error

sw.bb58:                                          ; preds = %if.end2
  %call61 = tail call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %call61, label %if.end63, label %sw.bb58.ioctl_error_crit_edge

sw.bb58.ioctl_error_crit_edge:                    ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #13
  br label %ioctl_error

if.end63:                                         ; preds = %sw.bb58
  %adapter64 = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %adapter64 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter64, align 4
  %module65 = getelementptr inbounds %struct.dvb_adapter, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %module65 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %module65, align 4
  %call66 = tail call zeroext i1 @try_module_get(ptr noundef %41) #11
  br i1 %call66, label %if.end68, label %if.end63.ioctl_error_crit_edge

if.end63.ioctl_error_crit_edge:                   ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %ioctl_error

if.end68:                                         ; preds = %if.end63
  %42 = ptrtoint ptr %parg to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %parg, align 2
  %call70 = tail call fastcc i32 @dvb_net_add_if(ptr noundef %3, i16 noundef zeroext %43, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.then73, label %if.end76

if.then73:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %adapter64 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adapter64, align 4
  %module75 = getelementptr inbounds %struct.dvb_adapter, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %module75 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %module75, align 4
  tail call void @module_put(ptr noundef %47) #11
  br label %ioctl_error

if.end76:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %conv77 = trunc i32 %call70 to i16
  %if_num78 = getelementptr inbounds %struct.__dvb_net_if_old, ptr %parg, i32 0, i32 1
  %48 = ptrtoint ptr %if_num78 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv77, ptr %if_num78, align 2
  br label %ioctl_error

sw.bb82:                                          ; preds = %if.end2
  %if_num87 = getelementptr inbounds %struct.__dvb_net_if_old, ptr %parg, i32 0, i32 1
  %49 = ptrtoint ptr %if_num87 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %if_num87, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %50)
  %cmp89 = icmp ugt i16 %50, 9
  br i1 %cmp89, label %sw.bb82.ioctl_error_crit_edge, label %if.end92

sw.bb82.ioctl_error_crit_edge:                    ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #13
  br label %ioctl_error

if.end92:                                         ; preds = %sw.bb82
  %conv88 = zext i16 %50 to i32
  %51 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %conv88, i32 10) #11, !srcloc !219
  %and104 = and i32 %51, %conv88
  %arrayidx106 = getelementptr %struct.dvb_net, ptr %3, i32 0, i32 2, i32 %and104
  %52 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool107.not = icmp eq i32 %53, 0
  br i1 %tobool107.not, label %if.end92.ioctl_error_crit_edge, label %if.end109

if.end92.ioctl_error_crit_edge:                   ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %ioctl_error

if.end109:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx111 = getelementptr %struct.dvb_net, ptr %3, i32 0, i32 1, i32 %and104
  %54 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx111, align 4
  %pid113 = getelementptr i8, ptr %55, i32 2308
  %56 = ptrtoint ptr %pid113 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %pid113, align 4
  %58 = ptrtoint ptr %parg to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %parg, align 2
  br label %ioctl_error

ioctl_error:                                      ; preds = %if.end109, %if.end92.ioctl_error_crit_edge, %sw.bb82.ioctl_error_crit_edge, %if.end76, %if.then73, %if.end63.ioctl_error_crit_edge, %sw.bb58.ioctl_error_crit_edge, %if.then54, %if.end51.ioctl_error_crit_edge, %if.end47.ioctl_error_crit_edge, %sw.bb44.ioctl_error_crit_edge, %if.end32, %if.end24.ioctl_error_crit_edge, %sw.bb16.ioctl_error_crit_edge, %if.end14, %if.then11, %if.end5.ioctl_error_crit_edge, %sw.bb.ioctl_error_crit_edge, %if.end2.ioctl_error_crit_edge
  %ret.4 = phi i32 [ %call52, %if.end51.ioctl_error_crit_edge ], [ 0, %if.then54 ], [ -1, %sw.bb44.ioctl_error_crit_edge ], [ -22, %if.end47.ioctl_error_crit_edge ], [ -25, %if.end2.ioctl_error_crit_edge ], [ %call9, %if.then11 ], [ 0, %if.end14 ], [ -1, %sw.bb.ioctl_error_crit_edge ], [ -1, %if.end5.ioctl_error_crit_edge ], [ 0, %if.end32 ], [ -22, %sw.bb16.ioctl_error_crit_edge ], [ -22, %if.end24.ioctl_error_crit_edge ], [ %call70, %if.then73 ], [ 0, %if.end76 ], [ -1, %sw.bb58.ioctl_error_crit_edge ], [ -1, %if.end63.ioctl_error_crit_edge ], [ 0, %if.end109 ], [ -22, %sw.bb82.ioctl_error_crit_edge ], [ -22, %if.end92.ioctl_error_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ioctl_mutex) #11
  br label %cleanup121

cleanup121:                                       ; preds = %ioctl_error, %if.end.cleanup121_crit_edge, %entry.cleanup121_crit_edge
  %retval.0 = phi i32 [ %ret.4, %ioctl_error ], [ -1, %entry.cleanup121_crit_edge ], [ -512, %if.end.cleanup121_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_net_add_if(ptr nocapture noundef %dvbnet, i16 noundef zeroext %pid, i8 noundef zeroext %feedtype) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %feedtype)
  %switch = icmp ult i8 %feedtype, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr %struct.dvb_net, ptr %dvbnet, i32 0, i32 2, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.end.if.end8_crit_edge, label %for.inc.i

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

for.inc.i:                                        ; preds = %if.end
  %arrayidx.1.i = getelementptr %struct.dvb_net, ptr %dvbnet, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.1.i = icmp eq i32 %3, 0
  br i1 %tobool.not.1.i, label %for.inc.i.if.end8_crit_edge, label %for.inc.1.i

for.inc.i.if.end8_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.dvb_net, ptr %dvbnet, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.2.i = icmp eq i32 %5, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.if.end8_crit_edge, label %for.inc.2.i

for.inc.1.i.if.end8_crit_edge:                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr %struct.dvb_net, ptr %dvbnet, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.3.i = icmp eq i32 %7, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.if.end8_crit_edge, label %for.inc.3.i

for.inc.2.i.if.end8_crit_edge:                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %arrayidx.4.i = getelementptr %struct.dvb_net, ptr %dvbnet, i32 0, i32 2, i32 4
  %8 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.4.i = icmp eq i32 %9, 0
  br i1 %tobool.not.4.i, label %for.inc.3.i.if.end8_crit_edge, label %for.inc.4.i

for.inc.3.i.if.end8_crit_edge:                    ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %arrayidx.5.i = getelementptr %struct.dvb_net, ptr %dvbnet, i32 0, i32 2, i32 5
  %10 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.5.i = icmp eq i32 %11, 0
  br i1 %tobool.not.5.i, label %for.inc.4.i.if.end8_crit_edge, label %for.inc.5.i

for.inc.4.i.if.end8_crit_edge:                    ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %arrayidx.6.i = getelementptr %struct.dvb_net, ptr %dvbnet, i32 0, i32 2, i32 6
  %12 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.6.i = icmp eq i32 %13, 0
  br i1 %tobool.not.6.i, label %for.inc.5.i.if.end8_crit_edge, label %for.inc.6.i

for.inc.5.i.if.end8_crit_edge:                    ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %arrayidx.7.i = getelementptr %struct.dvb_net, ptr %dvbnet, i32 0, i32 2, i32 7
  %14 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.7.i = icmp eq i32 %15, 0
  br i1 %tobool.not.7.i, label %for.inc.6.i.if.end8_crit_edge, label %for.inc.7.i

for.inc.6.i.if.end8_crit_edge:                    ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %arrayidx.8.i = getelementptr %struct.dvb_net, ptr %dvbnet, i32 0, i32 2, i32 8
  %16 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.8.i = icmp eq i32 %17, 0
  br i1 %tobool.not.8.i, label %for.inc.7.i.if.end8_crit_edge, label %for.inc.8.i

for.inc.7.i.if.end8_crit_edge:                    ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %arrayidx.9.i = getelementptr %struct.dvb_net, ptr %dvbnet, i32 0, i32 2, i32 9
  %18 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.9.i = icmp eq i32 %19, 0
  br i1 %tobool.not.9.i, label %for.inc.8.i.if.end8_crit_edge, label %for.inc.8.i.cleanup_crit_edge

for.inc.8.i.cleanup_crit_edge:                    ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.8.i.if.end8_crit_edge:                    ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end8:                                          ; preds = %for.inc.8.i.if.end8_crit_edge, %for.inc.7.i.if.end8_crit_edge, %for.inc.6.i.if.end8_crit_edge, %for.inc.5.i.if.end8_crit_edge, %for.inc.4.i.if.end8_crit_edge, %for.inc.3.i.if.end8_crit_edge, %for.inc.2.i.if.end8_crit_edge, %for.inc.1.i.if.end8_crit_edge, %for.inc.i.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %i.015.lcssa.i = phi i32 [ 0, %if.end.if.end8_crit_edge ], [ 1, %for.inc.i.if.end8_crit_edge ], [ 2, %for.inc.1.i.if.end8_crit_edge ], [ 3, %for.inc.2.i.if.end8_crit_edge ], [ 4, %for.inc.3.i.if.end8_crit_edge ], [ 5, %for.inc.4.i.if.end8_crit_edge ], [ 6, %for.inc.5.i.if.end8_crit_edge ], [ 7, %for.inc.6.i.if.end8_crit_edge ], [ 8, %for.inc.7.i.if.end8_crit_edge ], [ 9, %for.inc.8.i.if.end8_crit_edge ]
  %arrayidx5.i = getelementptr %struct.dvb_net, ptr %dvbnet, i32 0, i32 2, i32 %i.015.lcssa.i
  %20 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %arrayidx5.i, align 4
  %call9 = tail call ptr @alloc_netdev_mqs(i32 noundef 356, ptr noundef nonnull @.str.15, i8 noundef zeroext 0, ptr noundef nonnull @dvb_net_setup, i32 noundef 1, i32 noundef 1) #11
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %21 = ptrtoint ptr %dvbnet to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dvbnet, align 4
  %id = getelementptr inbounds %struct.dvb_device, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool12.not = icmp eq i32 %24, 0
  %adapter21 = getelementptr inbounds %struct.dvb_device, ptr %22, i32 0, i32 2
  %25 = ptrtoint ptr %adapter21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter21, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %call17 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call9, i32 noundef 16, ptr noundef nonnull @.str.16, i32 noundef %28, i32 noundef %24, i32 noundef %i.015.lcssa.i)
  br label %if.end24

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %call23 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call9, i32 noundef 16, ptr noundef nonnull @.str.17, i32 noundef %28, i32 noundef %i.015.lcssa.i)
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then13
  %addr_len = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 56
  %29 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 6, ptr %addr_len, align 1
  %30 = ptrtoint ptr %dvbnet to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dvbnet, align 4
  %adapter26 = getelementptr inbounds %struct.dvb_device, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %adapter26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adapter26, align 4
  %proposed_mac = getelementptr inbounds %struct.dvb_adapter, ptr %33, i32 0, i32 4
  tail call void @dev_addr_mod(ptr noundef nonnull %call9, i32 noundef 0, ptr noundef %proposed_mac, i32 noundef 6) #11
  %arrayidx = getelementptr %struct.dvb_net, ptr %dvbnet, i32 0, i32 1, i32 %i.015.lcssa.i
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call9, ptr %arrayidx, align 4
  %net29 = getelementptr i8, ptr %call9, i32 2312
  %35 = ptrtoint ptr %net29 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call9, ptr %net29, align 4
  %demux = getelementptr inbounds %struct.dvb_net, ptr %dvbnet, i32 0, i32 4
  %36 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %demux, align 4
  %demux30 = getelementptr i8, ptr %call9, i32 2320
  %38 = ptrtoint ptr %demux30 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %demux30, align 4
  %pid31 = getelementptr i8, ptr %call9, i32 2308
  %39 = ptrtoint ptr %pid31 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %pid, ptr %pid31, align 4
  %rx_mode = getelementptr i8, ptr %call9, i32 2440
  %40 = ptrtoint ptr %rx_mode to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %rx_mode, align 4
  %need_pusi = getelementptr i8, ptr %call9, i32 2536
  %41 = ptrtoint ptr %need_pusi to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %need_pusi, align 4
  %tscc = getelementptr i8, ptr %call9, i32 2540
  %42 = ptrtoint ptr %tscc to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %tscc, align 4
  %feedtype32 = getelementptr i8, ptr %call9, i32 2532
  %43 = ptrtoint ptr %feedtype32 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %feedtype, ptr %feedtype32, align 4
  %ule_skb.i = getelementptr i8, ptr %call9, i32 2544
  %ule_sndu_remain.i = getelementptr i8, ptr %call9, i32 2560
  %44 = ptrtoint ptr %ule_sndu_remain.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %ule_sndu_remain.i, align 4
  %ule_dbit.i = getelementptr i8, ptr %call9, i32 2557
  %45 = call ptr @memset(ptr %ule_skb.i, i32 0, i32 13)
  %46 = ptrtoint ptr %ule_dbit.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -1, ptr %ule_dbit.i, align 1
  %ule_bridged.i = getelementptr i8, ptr %call9, i32 2558
  %47 = ptrtoint ptr %ule_bridged.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %ule_bridged.i, align 2
  %set_multicast_list_wq = getelementptr i8, ptr %call9, i32 2444
  tail call void @__init_work(ptr noundef %set_multicast_list_wq, i32 noundef 0) #11
  %48 = ptrtoint ptr %set_multicast_list_wq to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -64, ptr %set_multicast_list_wq, align 4
  %lockdep_map = getelementptr i8, ptr %call9, i32 2460
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.18, ptr noundef nonnull @dvb_net_add_if.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry36 = getelementptr i8, ptr %call9, i32 2448
  %49 = ptrtoint ptr %entry36 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %entry36, ptr %entry36, align 4
  %prev.i = getelementptr i8, ptr %call9, i32 2452
  %50 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %entry36, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call9, i32 2456
  %51 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @wq_set_multicast_list, ptr %func, align 4
  %restart_net_feed_wq = getelementptr i8, ptr %call9, i32 2488
  tail call void @__init_work(ptr noundef %restart_net_feed_wq, i32 noundef 0) #11
  %52 = ptrtoint ptr %restart_net_feed_wq to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -64, ptr %restart_net_feed_wq, align 4
  %lockdep_map44 = getelementptr i8, ptr %call9, i32 2504
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map44, ptr noundef nonnull @.str.20, ptr noundef nonnull @dvb_net_add_if.__key.19, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry46 = getelementptr i8, ptr %call9, i32 2492
  %53 = ptrtoint ptr %entry46 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %entry46, ptr %entry46, align 4
  %prev.i115 = getelementptr i8, ptr %call9, i32 2496
  %54 = ptrtoint ptr %prev.i115 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %entry46, ptr %prev.i115, align 4
  %func48 = getelementptr i8, ptr %call9, i32 2500
  %55 = ptrtoint ptr %func48 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @wq_restart_net_feed, ptr %func48, align 4
  %mutex = getelementptr i8, ptr %call9, i32 2568
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.22, ptr noundef nonnull @dvb_net_add_if.__key.21) #11
  %conv54 = zext i16 %pid to i32
  %base_addr = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 5
  %56 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv54, ptr %base_addr, align 32
  %call55 = tail call i32 @register_netdev(ptr noundef nonnull %call9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.then58, label %do.end64

if.then58:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %arrayidx, align 4
  tail call void @free_netdev(ptr noundef nonnull %call9) #11
  br label %cleanup

do.end64:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull %call9) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %if.then58, %if.end8.cleanup_crit_edge, %for.inc.8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call55, %if.then58 ], [ %i.015.lcssa.i, %do.end64 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ], [ -22, %for.inc.8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dvb_net_setup(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ether_setup(ptr noundef %dev) #11
  %header_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %0 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @dvb_header_ops, ptr %header_ops, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %1 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @dvb_netdev_ops, ptr %netdev_ops, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %2 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4096, ptr %mtu, align 4
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %3 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4096, ptr %max_mtu, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %or = or i32 %5, 128
  store i32 %or, ptr %flags, align 8
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wq_set_multicast_list(ptr nocapture noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr i8, ptr %work, i32 -132
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %call = tail call fastcc i32 @dvb_net_feed_stop(ptr noundef %1)
  %rx_mode = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %rx_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %rx_mode, align 4
  %nested_level.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 73
  %3 = ptrtoint ptr %nested_level.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %nested_level.i, align 1
  tail call fastcc void @local_bh_disable() #11
  %addr_list_lock.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 63
  %conv.i = zext i8 %4 to i32
  tail call void @_raw_spin_lock_nested(ptr noundef %addr_list_lock.i, i32 noundef %conv.i) #11
  %flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %and = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %do.body1

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wq_set_multicast_list.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wq_set_multicast_list, %if.then7)) #11
          to label %if.end77.sink.split [label %if.then7], !srcloc !218

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wq_set_multicast_list.__UNIQUE_ID_ddebug365, ptr noundef %1, ptr noundef nonnull @.str.84) #11
  br label %if.end77.sink.split

if.else:                                          ; preds = %entry
  %and12 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else35, label %do.body16

do.body16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wq_set_multicast_list.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wq_set_multicast_list, %if.then28)) #11
          to label %if.end77.sink.split [label %if.then28], !srcloc !218

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wq_set_multicast_list.__UNIQUE_ID_ddebug366, ptr noundef %1, ptr noundef nonnull @.str.85) #11
  br label %if.end77.sink.split

if.else35:                                        ; preds = %if.else
  %mc = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 66, i32 1
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.else35.if.end77_crit_edge, label %if.then36

if.else35.if.end77_crit_edge:                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

if.then36:                                        ; preds = %if.else35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wq_set_multicast_list.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wq_set_multicast_list, %if.then50)) #11
          to label %do.end57 [label %if.then50], !srcloc !218

if.then50:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wq_set_multicast_list.__UNIQUE_ID_ddebug367, ptr noundef %1, ptr noundef nonnull @.str.86, i32 noundef %10) #11
  br label %do.end57

do.end57:                                         ; preds = %if.then50, %if.then36
  %11 = ptrtoint ptr %rx_mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %rx_mode, align 4
  %multi_num = getelementptr i8, ptr %work, i32 -108
  %12 = ptrtoint ptr %multi_num to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %multi_num, align 4
  %13 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %13)
  %ha.0109 = load ptr, ptr %mc, align 4
  %cmp66.not110 = icmp eq ptr %ha.0109, %mc
  br i1 %cmp66.not110, label %do.end57.if.end77_crit_edge, label %for.body.lr.ph

do.end57.if.end77_crit_edge:                      ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

for.body.lr.ph:                                   ; preds = %do.end57
  %multi_num.i = getelementptr i8, ptr %1, i32 2336
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  br label %for.body

for.body:                                         ; preds = %dvb_set_mc_filter.exit.for.body_crit_edge, %for.body.lr.ph
  %ha.0111 = phi ptr [ %ha.0109, %for.body.lr.ph ], [ %ha.0, %dvb_set_mc_filter.exit.for.body_crit_edge ]
  %14 = ptrtoint ptr %multi_num.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %multi_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %15)
  %cmp.i = icmp eq i32 %15, 10
  br i1 %cmp.i, label %for.body.dvb_set_mc_filter.exit_crit_edge, label %if.end.i

for.body.dvb_set_mc_filter.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %dvb_set_mc_filter.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0111, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.dvb_net_priv, ptr %add.ptr.i.i, i32 0, i32 10, i32 %15
  %16 = call ptr @memcpy(ptr %arrayidx.i, ptr %addr, i32 6)
  %17 = ptrtoint ptr %multi_num.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %multi_num.i, align 4
  %inc.i = add i32 %18, 1
  store i32 %inc.i, ptr %multi_num.i, align 4
  br label %dvb_set_mc_filter.exit

dvb_set_mc_filter.exit:                           ; preds = %if.end.i, %for.body.dvb_set_mc_filter.exit_crit_edge
  %19 = ptrtoint ptr %ha.0111 to i32
  call void @__asan_load4_noabort(i32 %19)
  %ha.0 = load ptr, ptr %ha.0111, align 4
  %cmp66.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp66.not, label %dvb_set_mc_filter.exit.if.end77_crit_edge, label %dvb_set_mc_filter.exit.for.body_crit_edge

dvb_set_mc_filter.exit.for.body_crit_edge:        ; preds = %dvb_set_mc_filter.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

dvb_set_mc_filter.exit.if.end77_crit_edge:        ; preds = %dvb_set_mc_filter.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

if.end77.sink.split:                              ; preds = %if.then28, %do.body16, %if.then7, %do.body1
  %.sink = phi i32 [ 3, %do.body1 ], [ 3, %if.then7 ], [ 2, %do.body16 ], [ 2, %if.then28 ]
  %20 = ptrtoint ptr %rx_mode to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %rx_mode, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.end77.sink.split, %dvb_set_mc_filter.exit.if.end77_crit_edge, %do.end57.if.end77_crit_edge, %if.else35.if.end77_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i) #11
  tail call fastcc void @dvb_net_feed_start(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wq_restart_net_feed(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr i8, ptr %work, i32 -176
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call fastcc i32 @dvb_net_feed_stop(ptr noundef %1)
  tail call fastcc void @dvb_net_feed_start(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_header(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_header_parse(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_net_open(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %add.ptr.i, align 4
  tail call fastcc void @dvb_net_feed_start(ptr noundef %dev)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_net_tx(ptr noundef %skb, ptr nocapture noundef readnone %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @consume_skb(ptr noundef %skb) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dvb_net_set_multicast_list(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %set_multicast_list_wq = getelementptr i8, ptr %dev, i32 2444
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %set_multicast_list_wq) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_net_set_mac(ptr noundef %dev, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #11
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %restart_net_feed_wq = getelementptr i8, ptr %dev, i32 2488
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %restart_net_feed_wq) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dvb_net_feed_start(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %demux1 = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux1, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_net_feed_start.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_net_feed_start, %if.then)) #11
          to label %do.end7 [label %if.then], !srcloc !218

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rx_mode = getelementptr i8, ptr %dev, i32 2440
  %4 = ptrtoint ptr %rx_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_mode, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @dvb_net_feed_start.__UNIQUE_ID_ddebug352, ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %5) #11
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %mutex = getelementptr i8, ptr %dev, i32 2568
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %tsfeed = getelementptr i8, ptr %dev, i32 2332
  %6 = ptrtoint ptr %tsfeed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tsfeed, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %lor.lhs.false, label %do.end7.do.end17_crit_edge

do.end7.do.end17_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end17

lor.lhs.false:                                    ; preds = %do.end7
  %secfeed = getelementptr i8, ptr %dev, i32 2324
  %8 = ptrtoint ptr %secfeed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %secfeed, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %lor.lhs.false10, label %lor.lhs.false.do.end17_crit_edge

lor.lhs.false.do.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end17

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %secfilter = getelementptr i8, ptr %dev, i32 2328
  %10 = ptrtoint ptr %secfilter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %secfilter, align 4
  %tobool11.not = icmp eq ptr %11, null
  br i1 %tobool11.not, label %lor.lhs.false12, label %lor.lhs.false10.do.end17_crit_edge

lor.lhs.false10.do.end17_crit_edge:               ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end17

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %multi_secfilter = getelementptr i8, ptr %dev, i32 2340
  %12 = ptrtoint ptr %multi_secfilter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %multi_secfilter, align 4
  %tobool13.not = icmp eq ptr %13, null
  br i1 %tobool13.not, label %lor.lhs.false12.if.end20_crit_edge, label %lor.lhs.false12.do.end17_crit_edge

lor.lhs.false12.do.end17_crit_edge:               ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end17

lor.lhs.false12.if.end20_crit_edge:               ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

do.end17:                                         ; preds = %lor.lhs.false12.do.end17_crit_edge, %lor.lhs.false10.do.end17_crit_edge, %lor.lhs.false.do.end17_crit_edge, %do.end7.do.end17_crit_edge
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef 1060) #14
  br label %if.end20

if.end20:                                         ; preds = %do.end17, %lor.lhs.false12.if.end20_crit_edge
  %secfeed21 = getelementptr i8, ptr %dev, i32 2324
  %14 = ptrtoint ptr %secfeed21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %secfeed21, align 4
  %secfilter22 = getelementptr i8, ptr %dev, i32 2328
  %15 = ptrtoint ptr %secfilter22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %secfilter22, align 4
  %16 = ptrtoint ptr %tsfeed to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %tsfeed, align 4
  %feedtype = getelementptr i8, ptr %dev, i32 2532
  %17 = ptrtoint ptr %feedtype to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %feedtype, align 4
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %18, label %if.end20.cleanup285_crit_edge [
    i8 0, label %do.body27
    i8 1, label %if.then201
  ]

if.end20.cleanup285_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup285

do.body27:                                        ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_net_feed_start.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_net_feed_start, %if.then39)) #11
          to label %do.end44 [label %if.then39], !srcloc !218

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @dvb_net_feed_start.__UNIQUE_ID_ddebug353, ptr noundef %dev, ptr noundef nonnull @.str.28) #11
  br label %do.end44

do.end44:                                         ; preds = %if.then39, %do.body27
  %allocate_section_feed = getelementptr inbounds %struct.dmx_demux, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %allocate_section_feed to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %allocate_section_feed, align 4
  %call46 = tail call i32 %21(ptr noundef %1, ptr noundef %secfeed21, ptr noundef nonnull @dvb_net_sec_callback) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %do.end52, label %if.end55

do.end52:                                         ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #13
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %dev) #14
  br label %cleanup285

if.end55:                                         ; preds = %do.end44
  %22 = ptrtoint ptr %secfeed21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %secfeed21, align 4
  %set = getelementptr inbounds %struct.dmx_section_feed, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set, align 4
  %pid = getelementptr i8, ptr %dev, i32 2308
  %26 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %pid, align 4
  %call58 = tail call i32 %25(ptr noundef %23, i16 noundef zeroext %27, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %do.end64, label %if.end74

do.end64:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %dev) #14
  %28 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %demux1, align 4
  %release_section_feed = getelementptr inbounds %struct.dmx_demux, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %release_section_feed to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %release_section_feed, align 4
  %32 = ptrtoint ptr %secfeed21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %secfeed21, align 4
  %call72 = tail call i32 %31(ptr noundef %29, ptr noundef %33) #11
  %34 = ptrtoint ptr %secfeed21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %secfeed21, align 4
  br label %cleanup285

if.end74:                                         ; preds = %if.end55
  %rx_mode75 = getelementptr i8, ptr %dev, i32 2440
  %35 = ptrtoint ptr %rx_mode75 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_mode75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %36)
  %cmp76.not = icmp eq i32 %36, 3
  br i1 %cmp76.not, label %if.end74.sw.bb152_crit_edge, label %do.body80

if.end74.sw.bb152_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb152

do.body80:                                        ; preds = %if.end74
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_net_feed_start.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_net_feed_start, %if.then92)) #11
          to label %if.end100 [label %if.then92], !srcloc !218

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @dvb_net_feed_start.__UNIQUE_ID_ddebug354, ptr noundef %dev, ptr noundef nonnull @.str.35) #11
  br label %if.end100

if.end100:                                        ; preds = %if.then92, %do.body80
  tail call fastcc void @dvb_net_filter_sec_set(ptr noundef %dev, ptr noundef %secfilter22, ptr noundef %3, ptr noundef nonnull @mask_normal)
  %37 = ptrtoint ptr %rx_mode75 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr = load i32, ptr %rx_mode75, align 4
  %38 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %.pr, label %if.end100.do.body176_crit_edge [
    i32 1, label %for.cond.preheader
    i32 2, label %sw.bb128
    i32 3, label %if.end100.sw.bb152_crit_edge
  ]

if.end100.sw.bb152_crit_edge:                     ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb152

if.end100.do.body176_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body176

for.cond.preheader:                               ; preds = %if.end100
  %multi_num = getelementptr i8, ptr %dev, i32 2336
  %39 = ptrtoint ptr %multi_num to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %multi_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp10234 = icmp sgt i32 %40, 0
  br i1 %cmp10234, label %for.cond.preheader.do.body105_crit_edge, label %for.cond.preheader.do.body176_crit_edge

for.cond.preheader.do.body176_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body176

for.cond.preheader.do.body105_crit_edge:          ; preds = %for.cond.preheader
  br label %do.body105

do.body105:                                       ; preds = %do.end122.do.body105_crit_edge, %for.cond.preheader.do.body105_crit_edge
  %i.035 = phi i32 [ %inc, %do.end122.do.body105_crit_edge ], [ 0, %for.cond.preheader.do.body105_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_net_feed_start.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_net_feed_start, %if.then117)) #11
          to label %do.end122 [label %if.then117], !srcloc !218

if.then117:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @dvb_net_feed_start.__UNIQUE_ID_ddebug355, ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %i.035) #11
  br label %do.end122

do.end122:                                        ; preds = %if.then117, %do.body105
  %arrayidx124 = getelementptr %struct.dvb_net_priv, ptr %add.ptr.i, i32 0, i32 9, i32 %i.035
  %arrayidx125 = getelementptr %struct.dvb_net_priv, ptr %add.ptr.i, i32 0, i32 10, i32 %i.035
  tail call fastcc void @dvb_net_filter_sec_set(ptr noundef %dev, ptr noundef %arrayidx124, ptr noundef %arrayidx125, ptr noundef nonnull @mask_normal)
  %inc = add nuw nsw i32 %i.035, 1
  %41 = ptrtoint ptr %multi_num to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %multi_num, align 4
  %cmp102 = icmp slt i32 %inc, %42
  br i1 %cmp102, label %do.end122.do.body105_crit_edge, label %do.end122.do.body176_crit_edge

do.end122.do.body176_crit_edge:                   ; preds = %do.end122
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body176

do.end122.do.body105_crit_edge:                   ; preds = %do.end122
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body105

sw.bb128:                                         ; preds = %if.end100
  %multi_num129 = getelementptr i8, ptr %dev, i32 2336
  %43 = ptrtoint ptr %multi_num129 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %multi_num129, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_net_feed_start.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_net_feed_start, %if.then143)) #11
          to label %do.end148 [label %if.then143], !srcloc !218

if.then143:                                       ; preds = %sw.bb128
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @dvb_net_feed_start.__UNIQUE_ID_ddebug356, ptr noundef %dev, ptr noundef nonnull @.str.37) #11
  br label %do.end148

do.end148:                                        ; preds = %if.then143, %sw.bb128
  %multi_secfilter149 = getelementptr i8, ptr %dev, i32 2340
  tail call fastcc void @dvb_net_filter_sec_set(ptr noundef %dev, ptr noundef %multi_secfilter149, ptr noundef nonnull @mac_allmulti, ptr noundef nonnull @mask_allmulti)
  br label %do.body176

sw.bb152:                                         ; preds = %if.end100.sw.bb152_crit_edge, %if.end74.sw.bb152_crit_edge
  %multi_num153 = getelementptr i8, ptr %dev, i32 2336
  %44 = ptrtoint ptr %multi_num153 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %multi_num153, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_net_feed_start.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_net_feed_start, %if.then167)) #11
          to label %do.end172 [label %if.then167], !srcloc !218

if.then167:                                       ; preds = %sw.bb152
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @dvb_net_feed_start.__UNIQUE_ID_ddebug357, ptr noundef %dev, ptr noundef nonnull @.str.35) #11
  br label %do.end172

do.end172:                                        ; preds = %if.then167, %sw.bb152
  tail call fastcc void @dvb_net_filter_sec_set(ptr noundef %dev, ptr noundef %secfilter22, ptr noundef %3, ptr noundef nonnull @mask_promisc)
  br label %do.body176

do.body176:                                       ; preds = %do.end172, %do.end148, %do.end122.do.body176_crit_edge, %for.cond.preheader.do.body176_crit_edge, %if.end100.do.body176_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_net_feed_start.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_net_feed_start, %if.then188)) #11
          to label %do.end193 [label %if.then188], !srcloc !218

if.then188:                                       ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @dvb_net_feed_start.__UNIQUE_ID_ddebug358, ptr noundef %dev, ptr noundef nonnull @.str.38) #11
  br label %do.end193

do.end193:                                        ; preds = %if.then188, %do.body176
  %45 = ptrtoint ptr %secfeed21 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %secfeed21, align 4
  %start_filtering = getelementptr inbounds %struct.dmx_section_feed, ptr %46, i32 0, i32 13
  %47 = ptrtoint ptr %start_filtering to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %start_filtering, align 4
  %call196 = tail call i32 %48(ptr noundef %46) #11
  br label %cleanup285

if.then201:                                       ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_net_feed_start.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_net_feed_start, %if.then216)) #11
          to label %do.end221 [label %if.then216], !srcloc !218

if.then216:                                       ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @dvb_net_feed_start.__UNIQUE_ID_ddebug359, ptr noundef %dev, ptr noundef nonnull @.str.39) #11
  br label %do.end221

do.end221:                                        ; preds = %if.then216, %if.then201
  %allocate_ts_feed = getelementptr inbounds %struct.dmx_demux, ptr %1, i32 0, i32 6
  %49 = ptrtoint ptr %allocate_ts_feed to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %allocate_ts_feed, align 4
  %call223 = tail call i32 %50(ptr noundef %1, ptr noundef %tsfeed, ptr noundef nonnull @dvb_net_ts_callback) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call223)
  %cmp224 = icmp slt i32 %call223, 0
  br i1 %cmp224, label %do.end229, label %if.end234

do.end229:                                        ; preds = %do.end221
  call void @__sanitizer_cov_trace_pc() #13
  %call233 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %dev) #14
  br label %cleanup285

if.end234:                                        ; preds = %do.end221
  %51 = ptrtoint ptr %tsfeed to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tsfeed, align 4
  %priv236 = getelementptr inbounds %struct.dmx_ts_feed, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %priv236 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %dev, ptr %priv236, align 4
  %54 = load ptr, ptr %tsfeed, align 4
  %set238 = getelementptr inbounds %struct.dmx_ts_feed, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %set238 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %set238, align 4
  %pid240 = getelementptr i8, ptr %dev, i32 2308
  %57 = ptrtoint ptr %pid240 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %pid240, align 4
  %call241 = tail call i32 %56(ptr noundef %54, i16 noundef zeroext %58, i32 noundef 1, i32 noundef 20, i64 noundef 10000000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call241)
  %cmp242 = icmp slt i32 %call241, 0
  br i1 %cmp242, label %do.end247, label %do.body259

do.end247:                                        ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #13
  %call251 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %dev) #14
  %59 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %demux1, align 4
  %release_ts_feed = getelementptr inbounds %struct.dmx_demux, ptr %60, i32 0, i32 7
  %61 = ptrtoint ptr %release_ts_feed to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %release_ts_feed, align 4
  %63 = ptrtoint ptr %tsfeed to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tsfeed, align 4
  %call255 = tail call i32 %62(ptr noundef %60, ptr noundef %64) #11
  %65 = ptrtoint ptr %tsfeed to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %tsfeed, align 4
  br label %cleanup285

do.body259:                                       ; preds = %if.end234
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_net_feed_start.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_net_feed_start, %if.then271)) #11
          to label %do.end276 [label %if.then271], !srcloc !218

if.then271:                                       ; preds = %do.body259
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @dvb_net_feed_start.__UNIQUE_ID_ddebug360, ptr noundef %dev, ptr noundef nonnull @.str.38) #11
  br label %do.end276

do.end276:                                        ; preds = %if.then271, %do.body259
  %66 = ptrtoint ptr %tsfeed to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tsfeed, align 4
  %start_filtering278 = getelementptr inbounds %struct.dmx_ts_feed, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %start_filtering278 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %start_filtering278, align 4
  %call280 = tail call i32 %69(ptr noundef %67) #11
  br label %cleanup285

cleanup285:                                       ; preds = %do.end276, %do.end247, %do.end229, %do.end193, %do.end64, %do.end52, %if.end20.cleanup285_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_net_sec_callback(ptr nocapture noundef readonly %buffer1, i32 noundef %buffer1_len, ptr nocapture noundef readnone %buffer2, i32 noundef %buffer2_len, ptr nocapture noundef readonly %filter, ptr nocapture noundef readnone %buffer_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dmx_section_filter, ptr %filter, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %stats1.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %buffer1_len)
  %cmp.i = icmp slt i32 %buffer1_len, 16
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %1, i32 noundef %buffer1_len) #14
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %2 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_errors.i, align 4
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %rx_errors.i, align 4
  %rx_length_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 10
  %4 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_length_errors.i, align 4
  %inc2.i = add i32 %5, 1
  store i32 %inc2.i, ptr %rx_length_errors.i, align 4
  br label %dvb_net_sec.exit

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr i8, ptr %buffer1, i32 5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %7 to i32
  %and.i = and i32 %conv.i, 60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp3.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp3.not.i, label %if.end9.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %rx_errors6.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %8 = ptrtoint ptr %rx_errors6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_errors6.i, align 4
  %inc7.i = add i32 %9, 1
  store i32 %inc7.i, ptr %rx_errors6.i, align 4
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 12
  %10 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_crc_errors.i, align 4
  %inc8.i = add i32 %11, 1
  store i32 %inc8.i, ptr %rx_crc_errors.i, align 4
  br label %dvb_net_sec.exit

if.end9.i:                                        ; preds = %if.end.i
  %and12.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool.not.i, label %if.end9.i.if.end22.i_crit_edge, label %if.then13.i

if.end9.i.if.end22.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

if.then13.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %buffer1_len)
  %cmp14.i = icmp ult i32 %buffer1_len, 24
  br i1 %cmp14.i, label %if.then13.i.if.then19.i_crit_edge, label %lor.lhs.false.i

if.then13.i.if.then19.i_crit_edge:                ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19.i

lor.lhs.false.i:                                  ; preds = %if.then13.i
  %arrayidx16.i = getelementptr i8, ptr %buffer1, i32 12
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %arrayidx16.i, ptr noundef nonnull dereferenceable(6) @.str.48, i32 6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool18.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool18.not.i, label %lor.lhs.false.i.if.end22.i_crit_edge, label %lor.lhs.false.i.if.then19.i_crit_edge

lor.lhs.false.i.if.then19.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19.i

lor.lhs.false.i.if.end22.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

if.then19.i:                                      ; preds = %lor.lhs.false.i.if.then19.i_crit_edge, %if.then13.i.if.then19.i_crit_edge
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %12 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_dropped.i, align 4
  %inc20.i = add i32 %13, 1
  store i32 %inc20.i, ptr %rx_dropped.i, align 4
  br label %dvb_net_sec.exit

if.end22.i:                                       ; preds = %lor.lhs.false.i.if.end22.i_crit_edge, %if.end9.i.if.end22.i_crit_edge
  %snap.0.i = phi i32 [ 0, %if.end9.i.if.end22.i_crit_edge ], [ 8, %lor.lhs.false.i.if.end22.i_crit_edge ]
  %arrayidx23.i = getelementptr i8, ptr %buffer1, i32 7
  %14 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx23.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool24.not.i = icmp eq i8 %15, 0
  br i1 %tobool24.not.i, label %if.end29.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  %rx_errors26.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %16 = ptrtoint ptr %rx_errors26.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_errors26.i, align 4
  %inc27.i = add i32 %17, 1
  store i32 %inc27.i, ptr %rx_errors26.i, align 4
  %rx_frame_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 13
  %18 = ptrtoint ptr %rx_frame_errors.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_frame_errors.i, align 4
  %inc28.i = add i32 %19, 1
  store i32 %inc28.i, ptr %rx_frame_errors.i, align 4
  br label %dvb_net_sec.exit

if.end29.i:                                       ; preds = %if.end22.i
  %sub32.i = sub nuw nsw i32 %buffer1_len, %snap.0.i
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %sub32.i, i32 noundef 2592) #11
  %tobool34.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool34.not.i, label %if.then35.i, label %if.end38.i

if.then35.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  %rx_dropped36.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %20 = ptrtoint ptr %rx_dropped36.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_dropped36.i, align 4
  %inc37.i = add i32 %21, 1
  store i32 %inc37.i, ptr %rx_dropped36.i, align 4
  br label %dvb_net_sec.exit

if.end38.i:                                       ; preds = %if.end29.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 2
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %24 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %25, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %26 = getelementptr inbounds %struct.anon.44, ptr %call.i.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %1, ptr %26, align 8
  %sub40.i = add nsw i32 %buffer1_len, -16
  %add41.i = add nsw i32 %buffer1_len, -2
  %sub42.i = sub nuw nsw i32 %add41.i, %snap.0.i
  %call43.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %sub42.i) #11
  %add.ptr.i = getelementptr i8, ptr %call43.i, i32 14
  %add.ptr44.i = getelementptr i8, ptr %buffer1, i32 12
  %add.ptr45.i = getelementptr i8, ptr %add.ptr44.i, i32 %snap.0.i
  %sub48.i = sub nsw i32 %sub40.i, %snap.0.i
  %28 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr45.i, i32 %sub48.i)
  %arrayidx49.i = getelementptr i8, ptr %buffer1, i32 11
  %29 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx49.i, align 1
  %31 = ptrtoint ptr %call43.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %call43.i, align 1
  %arrayidx51.i = getelementptr i8, ptr %buffer1, i32 10
  %32 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx51.i, align 1
  %arrayidx52.i = getelementptr i8, ptr %call43.i, i32 1
  %34 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx52.i, align 1
  %arrayidx53.i = getelementptr i8, ptr %buffer1, i32 9
  %35 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx53.i, align 1
  %arrayidx54.i = getelementptr i8, ptr %call43.i, i32 2
  %37 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx54.i, align 1
  %arrayidx55.i = getelementptr i8, ptr %buffer1, i32 8
  %38 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx55.i, align 1
  %arrayidx56.i = getelementptr i8, ptr %call43.i, i32 3
  %40 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %arrayidx56.i, align 1
  %arrayidx57.i = getelementptr i8, ptr %buffer1, i32 4
  %41 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx57.i, align 1
  %arrayidx58.i = getelementptr i8, ptr %call43.i, i32 4
  %43 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %arrayidx58.i, align 1
  %arrayidx59.i = getelementptr i8, ptr %buffer1, i32 3
  %44 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx59.i, align 1
  %arrayidx60.i = getelementptr i8, ptr %call43.i, i32 5
  %46 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %arrayidx60.i, align 1
  %arrayidx66.i = getelementptr i8, ptr %call43.i, i32 6
  %47 = call ptr @memset(ptr %arrayidx66.i, i32 0, i32 6)
  br i1 %tobool.not.i, label %if.else.i, label %if.then68.i

if.then68.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx69.i = getelementptr i8, ptr %buffer1, i32 18
  %48 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx69.i, align 1
  %arrayidx70.i = getelementptr i8, ptr %call43.i, i32 12
  %50 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx70.i, align 1
  %arrayidx71.i = getelementptr i8, ptr %buffer1, i32 19
  %51 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx71.i, align 1
  br label %if.end84.i

if.else.i:                                        ; preds = %if.end38.i
  %53 = ptrtoint ptr %add.ptr44.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %add.ptr44.i, align 1
  %.mask.i = and i8 %54, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %.mask.i)
  %cmp75.i = icmp eq i8 %.mask.i, 96
  %arrayidx78.i = getelementptr i8, ptr %call43.i, i32 12
  br i1 %cmp75.i, label %if.then77.i, label %if.else80.i

if.then77.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -122, ptr %arrayidx78.i, align 1
  br label %if.end84.i

if.else80.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 8, ptr %arrayidx78.i, align 1
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.else80.i, %if.then77.i, %if.then68.i
  %.sink.i = phi i8 [ -35, %if.then77.i ], [ 0, %if.else80.i ], [ %52, %if.then68.i ]
  %arrayidx79.i = getelementptr i8, ptr %call43.i, i32 13
  %57 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %.sink.i, ptr %arrayidx79.i, align 1
  %58 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 18
  %60 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %59 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %61 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 21
  %62 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %hard_header_len.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 19
  %63 = ptrtoint ptr %hard_header_len.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %hard_header_len.i.i, align 2
  %conv.i.i = zext i16 %64 to i32
  %call.i.i = tail call ptr @skb_pull(ptr noundef nonnull %call.i.i.i, i32 noundef %conv.i.i) #11
  %65 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %head.i.i.i, align 8
  %67 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %68 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %66, i32 %conv.i.i.i.i
  %69 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %add.ptr.i.i.i.i, align 1
  %71 = and i8 %70, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i.i = icmp eq i8 %71, 0
  br i1 %tobool.not.i.i, label %if.end84.i.if.end12.i.i_crit_edge, label %if.then.i.i

if.end84.i.if.end12.i.i_crit_edge:                ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i.i

if.then.i.i:                                      ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #13
  %broadcast.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 99
  %72 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %74 = ptrtoint ptr %broadcast.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %broadcast.i.i, align 4
  %xor.i.i.i = xor i32 %75, %73
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 4
  %76 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr %struct.net_device, ptr %1, i32 0, i32 99, i32 4
  %78 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %79, %77
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  %pkt_type.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15
  %80 = ptrtoint ptr %pkt_type.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %bf.load.i.i = load i16, ptr %pkt_type.i.i, align 8
  %bf.clear.i.i = and i16 %bf.load.i.i, 8191
  %.33.i.i = select i1 %cmp.i.i.i, i16 8192, i16 16384
  %bf.set.i.i = or i16 %.33.i.i, %bf.clear.i.i
  store i16 %bf.set.i.i, ptr %pkt_type.i.i, align 8
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then.i.i, %if.end84.i.if.end12.i.i_crit_edge
  %h_proto.i.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i.i, i32 0, i32 2
  %81 = ptrtoint ptr %h_proto.i.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %82 = load i16, ptr %h_proto.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1535, i16 %82)
  %cmp.i.i = icmp ugt i16 %82, 1535
  br i1 %cmp.i.i, label %if.end12.i.i.dvb_net_eth_type_trans.exit.i_crit_edge, label %if.end17.i.i

if.end12.i.i.dvb_net_eth_type_trans.exit.i_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dvb_net_eth_type_trans.exit.i

if.end17.i.i:                                     ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %83 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data.i.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %84, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %86)
  %cmp19.i.i = icmp eq i16 %86, -1
  %..i.i = select i1 %cmp19.i.i, i16 1, i16 4
  br label %dvb_net_eth_type_trans.exit.i

dvb_net_eth_type_trans.exit.i:                    ; preds = %if.end17.i.i, %if.end12.i.i.dvb_net_eth_type_trans.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ %82, %if.end12.i.i.dvb_net_eth_type_trans.exit.i_crit_edge ], [ %..i.i, %if.end17.i.i ]
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 18
  %87 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %retval.0.i.i, ptr %protocol.i, align 8
  %88 = ptrtoint ptr %stats1.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %stats1.i, align 4
  %inc86.i = add i32 %89, 1
  store i32 %inc86.i, ptr %stats1.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %90 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %len.i, align 4
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %92 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %rx_bytes.i, align 4
  %add87.i = add i32 %93, %91
  store i32 %add87.i, ptr %rx_bytes.i, align 4
  %call88.i = tail call i32 @netif_rx(ptr noundef nonnull %call.i.i.i) #11
  br label %dvb_net_sec.exit

dvb_net_sec.exit:                                 ; preds = %dvb_net_eth_type_trans.exit.i, %if.then35.i, %if.then25.i, %if.then19.i, %if.then5.i, %do.end.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dvb_net_filter_sec_set(ptr noundef %dev, ptr noundef %secfilter, ptr noundef %mac, ptr noundef %mac_mask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %secfilter to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %secfilter, align 4
  %secfeed = getelementptr i8, ptr %dev, i32 2324
  %1 = ptrtoint ptr %secfeed to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %secfeed, align 4
  %allocate_filter = getelementptr inbounds %struct.dmx_section_feed, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %allocate_filter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %allocate_filter, align 4
  %call2 = tail call i32 %4(ptr noundef %2, ptr noundef %secfilter) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %dev) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %secfilter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %secfilter, align 4
  %priv4 = getelementptr inbounds %struct.dmx_section_filter, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %priv4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %priv4, align 4
  %8 = load ptr, ptr %secfilter, align 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 18)
  %10 = load ptr, ptr %secfilter, align 4
  %filter_mask = getelementptr inbounds %struct.dmx_section_filter, ptr %10, i32 0, i32 1
  %11 = call ptr @memset(ptr %filter_mask, i32 0, i32 18)
  %12 = load ptr, ptr %secfilter, align 4
  %filter_mode = getelementptr inbounds %struct.dmx_section_filter, ptr %12, i32 0, i32 2
  %13 = call ptr @memset(ptr %filter_mode, i32 255, i32 18)
  %14 = load ptr, ptr %secfilter, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 62, ptr %14, align 4
  %arrayidx9 = getelementptr i8, ptr %mac, i32 5
  %16 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx9, align 1
  %18 = load ptr, ptr %secfilter, align 4
  %arrayidx11 = getelementptr [18 x i8], ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %17, ptr %arrayidx11, align 1
  %arrayidx12 = getelementptr i8, ptr %mac, i32 4
  %20 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx12, align 1
  %22 = load ptr, ptr %secfilter, align 4
  %arrayidx14 = getelementptr [18 x i8], ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %21, ptr %arrayidx14, align 4
  %arrayidx15 = getelementptr i8, ptr %mac, i32 3
  %24 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx15, align 1
  %26 = load ptr, ptr %secfilter, align 4
  %arrayidx17 = getelementptr [18 x i8], ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %25, ptr %arrayidx17, align 4
  %arrayidx18 = getelementptr i8, ptr %mac, i32 2
  %28 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx18, align 1
  %30 = load ptr, ptr %secfilter, align 4
  %arrayidx20 = getelementptr [18 x i8], ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %29, ptr %arrayidx20, align 1
  %arrayidx21 = getelementptr i8, ptr %mac, i32 1
  %32 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx21, align 1
  %34 = load ptr, ptr %secfilter, align 4
  %arrayidx23 = getelementptr [18 x i8], ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %33, ptr %arrayidx23, align 2
  %36 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %mac, align 1
  %38 = load ptr, ptr %secfilter, align 4
  %arrayidx26 = getelementptr [18 x i8], ptr %38, i32 0, i32 11
  %39 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %37, ptr %arrayidx26, align 1
  %40 = load ptr, ptr %secfilter, align 4
  %filter_mask27 = getelementptr inbounds %struct.dmx_section_filter, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %filter_mask27 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -1, ptr %filter_mask27, align 2
  %arrayidx29 = getelementptr i8, ptr %mac_mask, i32 5
  %42 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx29, align 1
  %44 = load ptr, ptr %secfilter, align 4
  %arrayidx31 = getelementptr %struct.dmx_section_filter, ptr %44, i32 0, i32 1, i32 3
  %45 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %43, ptr %arrayidx31, align 1
  %arrayidx32 = getelementptr i8, ptr %mac_mask, i32 4
  %46 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx32, align 1
  %48 = load ptr, ptr %secfilter, align 4
  %arrayidx34 = getelementptr %struct.dmx_section_filter, ptr %48, i32 0, i32 1, i32 4
  %49 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %47, ptr %arrayidx34, align 2
  %arrayidx35 = getelementptr i8, ptr %mac_mask, i32 3
  %50 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx35, align 1
  %52 = load ptr, ptr %secfilter, align 4
  %arrayidx37 = getelementptr %struct.dmx_section_filter, ptr %52, i32 0, i32 1, i32 8
  %53 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %51, ptr %arrayidx37, align 2
  %arrayidx38 = getelementptr i8, ptr %mac_mask, i32 2
  %54 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx38, align 1
  %56 = load ptr, ptr %secfilter, align 4
  %arrayidx40 = getelementptr %struct.dmx_section_filter, ptr %56, i32 0, i32 1, i32 9
  %57 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %55, ptr %arrayidx40, align 1
  %arrayidx41 = getelementptr i8, ptr %mac_mask, i32 1
  %58 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx41, align 1
  %60 = load ptr, ptr %secfilter, align 4
  %arrayidx43 = getelementptr %struct.dmx_section_filter, ptr %60, i32 0, i32 1, i32 10
  %61 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %59, ptr %arrayidx43, align 2
  %62 = ptrtoint ptr %mac_mask to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %mac_mask, align 1
  %64 = load ptr, ptr %secfilter, align 4
  %arrayidx46 = getelementptr %struct.dmx_section_filter, ptr %64, i32 0, i32 1, i32 11
  %65 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %63, ptr %arrayidx46, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_net_filter_sec_set.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_net_filter_sec_set, %if.then53)) #11
          to label %cleanup [label %if.then53], !srcloc !218

if.then53:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @dvb_net_filter_sec_set.__UNIQUE_ID_ddebug351, ptr noundef %dev, ptr noundef nonnull @.str.51, ptr noundef %mac, ptr noundef %mac_mask) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_net_ts_callback(ptr noundef %buffer1, i32 noundef %buffer1_len, ptr noundef %buffer2, i32 noundef %buffer2_len, ptr nocapture noundef readonly %feed, ptr nocapture noundef readnone %buffer_flags) #0 align 64 {
entry:
  %h.i = alloca %struct.dvb_net_ule_handle, align 4
  %ulen.i = alloca i16, align 2
  %utype.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dmx_ts_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %tobool.not = icmp eq ptr %buffer2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull %buffer2) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %buffer1_len)
  %cmp = icmp ugt i32 %buffer1_len, 32768
  br i1 %cmp, label %do.end4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %buffer1_len) #14
  br label %if.end7

if.end7:                                          ; preds = %do.end4, %if.end.if.end7_crit_edge
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %h.i) #11
  %2 = ptrtoint ptr %h.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %h.i, align 4
  %priv.i = getelementptr inbounds %struct.dvb_net_ule_handle, ptr %h.i, i32 0, i32 1
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr.i.i, ptr %priv.i, align 4
  %ethh.i = getelementptr inbounds %struct.dvb_net_ule_handle, ptr %h.i, i32 0, i32 2
  %4 = ptrtoint ptr %ethh.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ethh.i, align 4
  %buf2.i = getelementptr inbounds %struct.dvb_net_ule_handle, ptr %h.i, i32 0, i32 3
  %5 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %buffer1, ptr %buf2.i, align 4
  %buf_len3.i = getelementptr inbounds %struct.dvb_net_ule_handle, ptr %h.i, i32 0, i32 4
  %6 = ptrtoint ptr %buf_len3.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %buffer1_len, ptr %buf_len3.i, align 4
  %skipped.i = getelementptr inbounds %struct.dvb_net_ule_handle, ptr %h.i, i32 0, i32 5
  %ts.i = getelementptr inbounds %struct.dvb_net_ule_handle, ptr %h.i, i32 0, i32 6
  %ts_end.i = getelementptr inbounds %struct.dvb_net_ule_handle, ptr %h.i, i32 0, i32 7
  %from_where.i = getelementptr inbounds %struct.dvb_net_ule_handle, ptr %h.i, i32 0, i32 8
  %ts_remain.i = getelementptr inbounds %struct.dvb_net_ule_handle, ptr %h.i, i32 0, i32 9
  %how_much.i = getelementptr inbounds %struct.dvb_net_ule_handle, ptr %h.i, i32 0, i32 10
  %new_ts.i = getelementptr inbounds %struct.dvb_net_ule_handle, ptr %h.i, i32 0, i32 11
  %7 = call ptr @memset(ptr %skipped.i, i32 0, i32 18)
  %8 = ptrtoint ptr %new_ts.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %new_ts.i, align 2
  %error.i = getelementptr inbounds %struct.dvb_net_ule_handle, ptr %h.i, i32 0, i32 12
  %9 = ptrtoint ptr %error.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %error.i, align 1
  %10 = ptrtoint ptr %ts.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buffer1, ptr %ts.i, align 4
  %add.ptr.i = getelementptr i8, ptr %buffer1, i32 %buffer1_len
  %11 = ptrtoint ptr %ts_end.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr.i, ptr %ts_end.i, align 4
  %cmp236.i = icmp ugt ptr %add.ptr.i, %buffer1
  br i1 %cmp236.i, label %if.end7.for.body.i_crit_edge, label %if.end7.dvb_net_ule.exit_crit_edge

if.end7.dvb_net_ule.exit_crit_edge:               ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %dvb_net_ule.exit

if.end7.for.body.i_crit_edge:                     ; preds = %if.end7
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.backedge.i.for.body.i_crit_edge, %if.end7.for.body.i_crit_edge
  %12 = phi ptr [ %380, %for.cond.backedge.i.for.body.i_crit_edge ], [ %buffer1, %if.end7.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %new_ts.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %new_ts.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %for.body.i.if.end15.i_crit_edge, label %if.then.i

for.body.i.if.end15.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

if.then.i:                                        ; preds = %for.body.i
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 71, i8 %16)
  %cmp.not.i.i = icmp eq i8 %16, 71
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.then.i.do.end.i.i_crit_edge

if.then.i.do.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

lor.lhs.false.i.i:                                ; preds = %if.then.i
  %arrayidx3.i.i = getelementptr i8, ptr %12, i32 1
  %17 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %tobool.not.i.i = icmp sgt i8 %18, -1
  br i1 %tobool.not.i.i, label %lor.lhs.false5.i.i, label %lor.lhs.false.i.i.do.end.i.i_crit_edge

lor.lhs.false.i.i.do.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

lor.lhs.false5.i.i:                               ; preds = %lor.lhs.false.i.i
  %arrayidx7.i.i = getelementptr i8, ptr %12, i32 3
  %19 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %20)
  %cmp10.not.i.i = icmp ult i8 %20, 64
  br i1 %cmp10.not.i.i, label %dvb_net_ule_new_ts_cell.exit.thread.i, label %lor.lhs.false5.i.i.do.end.i.i_crit_edge

lor.lhs.false5.i.i.do.end.i.i_crit_edge:          ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %lor.lhs.false5.i.i.do.end.i.i_crit_edge, %lor.lhs.false.i.i.do.end.i.i_crit_edge, %if.then.i.do.end.i.i_crit_edge
  %21 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv.i, align 4
  %ts_count.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %22, i32 0, i32 25
  %23 = ptrtoint ptr %ts_count.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ts_count.i.i, align 4
  %conv14.i.i = zext i8 %16 to i32
  %arrayidx16.i.i = getelementptr i8, ptr %12, i32 1
  %25 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx16.i.i, align 1
  %27 = lshr i8 %26, 7
  %28 = zext i8 %27 to i32
  %arrayidx20.i.i = getelementptr i8, ptr %12, i32 3
  %29 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx20.i.i, align 1
  %31 = lshr i8 %30, 6
  %32 = zext i8 %31 to i32
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %24, i32 noundef %conv14.i.i, i32 noundef %28, i32 noundef %32) #14
  %33 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv.i, align 4
  %ule_skb.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %34, i32 0, i32 17
  %35 = ptrtoint ptr %ule_skb.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ule_skb.i.i, align 4
  %tobool25.not.i.i = icmp eq ptr %36, null
  br i1 %tobool25.not.i.i, label %do.end.i.i.dvb_net_ule_new_ts_cell.exit.i_crit_edge, label %if.then26.i.i

do.end.i.i.dvb_net_ule_new_ts_cell.exit.i_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dvb_net_ule_new_ts_cell.exit.i

if.then26.i.i:                                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @consume_skb(ptr noundef nonnull %36) #11
  %37 = ptrtoint ptr %h.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %h.i, align 4
  %rx_errors.i.i = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 36, i32 4
  %39 = ptrtoint ptr %rx_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_errors.i.i, align 8
  %inc.i.i = add i32 %40, 1
  store i32 %inc.i.i, ptr %rx_errors.i.i, align 8
  %rx_frame_errors.i.i = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 36, i32 13
  %41 = ptrtoint ptr %rx_frame_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_frame_errors.i.i, align 4
  %inc31.i.i = add i32 %42, 1
  store i32 %inc31.i.i, ptr %rx_frame_errors.i.i, align 4
  br label %dvb_net_ule_new_ts_cell.exit.i

dvb_net_ule_new_ts_cell.exit.thread.i:            ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %ts_remain.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -72, ptr %ts_remain.i, align 4
  %add.ptr40.i.i = getelementptr i8, ptr %12, i32 4
  %44 = ptrtoint ptr %from_where.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr40.i.i, ptr %from_where.i, align 4
  br label %if.end15.i

dvb_net_ule_new_ts_cell.exit.i:                   ; preds = %if.then26.i.i, %do.end.i.i.dvb_net_ule_new_ts_cell.exit.i_crit_edge
  %45 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv.i, align 4
  %ule_skb.i.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %46, i32 0, i32 17
  %ule_sndu_remain.i.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %46, i32 0, i32 24
  %47 = ptrtoint ptr %ule_sndu_remain.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %ule_sndu_remain.i.i.i, align 4
  %ule_dbit.i.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %46, i32 0, i32 22
  %48 = call ptr @memset(ptr %ule_skb.i.i.i, i32 0, i32 13)
  %49 = ptrtoint ptr %ule_dbit.i.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -1, ptr %ule_dbit.i.i.i, align 1
  %ule_bridged.i.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %46, i32 0, i32 23
  %50 = ptrtoint ptr %ule_bridged.i.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %ule_bridged.i.i.i, align 2
  %need_pusi.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %46, i32 0, i32 15
  %51 = ptrtoint ptr %need_pusi.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %need_pusi.i.i, align 4
  %52 = ptrtoint ptr %ts.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ts.i, align 4
  %add.ptr.i153.i = getelementptr i8, ptr %53, i32 188
  store ptr %add.ptr.i153.i, ptr %ts.i, align 4
  %ts_count36.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %46, i32 0, i32 25
  %54 = ptrtoint ptr %ts_count36.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ts_count36.i.i, align 4
  %inc37.i.i = add i32 %55, 1
  store i32 %inc37.i.i, ptr %ts_count36.i.i, align 4
  br label %for.cond.backedge.i

if.end15.i:                                       ; preds = %dvb_net_ule_new_ts_cell.exit.thread.i, %for.body.i.if.end15.i_crit_edge
  %56 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv.i, align 4
  %need_pusi.i = getelementptr inbounds %struct.dvb_net_priv, ptr %57, i32 0, i32 15
  %58 = ptrtoint ptr %need_pusi.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %need_pusi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool17.not.i = icmp eq i32 %59, 0
  br i1 %tobool17.not.i, label %if.end15.i.if.end23.i_crit_edge, label %if.then18.i

if.end15.i.if.end23.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

if.then18.i:                                      ; preds = %if.end15.i
  %60 = ptrtoint ptr %ts.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ts.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %61, i32 1
  %62 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i.i, align 1
  %64 = and i8 %63, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i155.i = icmp eq i8 %64, 0
  br i1 %tobool.not.i155.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then18.i
  %arrayidx2.i.i = getelementptr i8, ptr %61, i32 3
  %65 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx2.i.i, align 1
  %67 = and i8 %66, 15
  %tscc.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %57, i32 0, i32 16
  %68 = ptrtoint ptr %tscc.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %tscc.i.i, align 4
  %arrayidx7.i157.i = getelementptr i8, ptr %61, i32 4
  %69 = ptrtoint ptr %arrayidx7.i157.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx7.i157.i, align 1
  %conv8.i.i = zext i8 %70 to i32
  %71 = ptrtoint ptr %ts_remain.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %ts_remain.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %70, i8 %72)
  %cmp.i.i = icmp ugt i8 %70, %72
  br i1 %cmp.i.i, label %do.end.i163.i, label %dvb_net_ule_ts_pusi.exit.thread.i

do.end.i163.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %ts_count.i159.i = getelementptr inbounds %struct.dvb_net_priv, ptr %57, i32 0, i32 25
  %73 = ptrtoint ptr %ts_count.i159.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ts_count.i159.i, align 4
  %call.i160.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %74, i32 noundef %conv8.i.i) #14
  %75 = ptrtoint ptr %ts.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ts.i, align 4
  %add.ptr.i161.i = getelementptr i8, ptr %76, i32 188
  store ptr %add.ptr.i161.i, ptr %ts.i, align 4
  %77 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %priv.i, align 4
  %ts_count18.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %78, i32 0, i32 25
  %79 = ptrtoint ptr %ts_count18.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ts_count18.i.i, align 4
  %inc.i162.i = add i32 %80, 1
  store i32 %inc.i162.i, ptr %ts_count18.i.i, align 4
  br label %for.cond.backedge.i

dvb_net_ule_ts_pusi.exit.thread.i:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx20.i164.i = getelementptr i8, ptr %61, i32 5
  %add.ptr24.i.i = getelementptr i8, ptr %arrayidx20.i164.i, i32 %conv8.i.i
  %81 = ptrtoint ptr %from_where.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %add.ptr24.i.i, ptr %from_where.i, align 4
  %82 = ptrtoint ptr %arrayidx7.i157.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx7.i157.i, align 1
  %add.neg.i.i = xor i8 %83, -1
  %sub.i.i = add i8 %72, %add.neg.i.i
  %84 = ptrtoint ptr %ts_remain.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %sub.i.i, ptr %ts_remain.i, align 4
  %85 = ptrtoint ptr %skipped.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %skipped.i, align 4
  br label %if.end23.i

if.else.i.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  %86 = ptrtoint ptr %skipped.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %skipped.i, align 4
  %inc32.i.i = add i32 %87, 1
  store i32 %inc32.i.i, ptr %skipped.i, align 4
  %add.ptr34.i.i = getelementptr i8, ptr %61, i32 188
  %88 = ptrtoint ptr %ts.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %add.ptr34.i.i, ptr %ts.i, align 4
  %ts_count36.i167.i = getelementptr inbounds %struct.dvb_net_priv, ptr %57, i32 0, i32 25
  %89 = ptrtoint ptr %ts_count36.i167.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ts_count36.i167.i, align 4
  %inc37.i168.i = add i32 %90, 1
  store i32 %inc37.i168.i, ptr %ts_count36.i167.i, align 4
  br label %for.cond.backedge.i

if.end23.i:                                       ; preds = %dvb_net_ule_ts_pusi.exit.thread.i, %if.end15.i.if.end23.i_crit_edge
  br i1 %tobool.not.i, label %if.end23.i.if.end31.i_crit_edge, label %if.then26.i

if.end23.i.if.end31.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

if.then26.i:                                      ; preds = %if.end23.i
  %91 = ptrtoint ptr %ts.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ts.i, align 4
  %arrayidx.i171.i = getelementptr i8, ptr %92, i32 3
  %93 = ptrtoint ptr %arrayidx.i171.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx.i171.i, align 1
  %95 = and i8 %94, 15
  %tscc.i173.i = getelementptr inbounds %struct.dvb_net_priv, ptr %57, i32 0, i32 16
  %96 = ptrtoint ptr %tscc.i173.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %tscc.i173.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %95, i8 %97)
  %cmp.i174.i = icmp eq i8 %95, %97
  br i1 %cmp.i174.i, label %if.then.i175.i, label %do.end.i180.i

if.then.i175.i:                                   ; preds = %if.then26.i
  %add.i.i = add i8 %94, 1
  %and6.i.i = and i8 %add.i.i, 15
  %98 = ptrtoint ptr %tscc.i173.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %and6.i.i, ptr %tscc.i173.i, align 4
  %arrayidx29.i.i = getelementptr i8, ptr %92, i32 1
  %99 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx29.i.i, align 1
  %101 = and i8 %100, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool32.not.i.i = icmp eq i8 %101, 0
  br i1 %tobool32.not.i.i, label %if.then.i175.i.if.end31.i_crit_edge, label %if.then33.i.i

if.then.i175.i.if.end31.i_crit_edge:              ; preds = %if.then.i175.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

do.end.i180.i:                                    ; preds = %if.then26.i
  %conv1.i.i = zext i8 %97 to i32
  %and.i.i = zext i8 %95 to i32
  %ts_count.i176.i = getelementptr inbounds %struct.dvb_net_priv, ptr %57, i32 0, i32 25
  %102 = ptrtoint ptr %ts_count.i176.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ts_count.i176.i, align 4
  %call.i177.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %103, i32 noundef %and.i.i, i32 noundef %conv1.i.i) #14
  %104 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %priv.i, align 4
  %ule_skb.i178.i = getelementptr inbounds %struct.dvb_net_priv, ptr %105, i32 0, i32 17
  %106 = ptrtoint ptr %ule_skb.i178.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ule_skb.i178.i, align 4
  %tobool.not.i179.i = icmp eq ptr %107, null
  br i1 %tobool.not.i179.i, label %do.end.i180.i.if.end.i189.i_crit_edge, label %if.then19.i.i

do.end.i180.i.if.end.i189.i_crit_edge:            ; preds = %do.end.i180.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i189.i

if.then19.i.i:                                    ; preds = %do.end.i180.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @consume_skb(ptr noundef nonnull %107) #11
  %108 = ptrtoint ptr %h.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %h.i, align 4
  %rx_errors.i181.i = getelementptr inbounds %struct.net_device, ptr %109, i32 0, i32 36, i32 4
  %110 = ptrtoint ptr %rx_errors.i181.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %rx_errors.i181.i, align 8
  %inc.i182.i = add i32 %111, 1
  store i32 %inc.i182.i, ptr %rx_errors.i181.i, align 8
  %rx_frame_errors.i183.i = getelementptr inbounds %struct.net_device, ptr %109, i32 0, i32 36, i32 13
  %112 = ptrtoint ptr %rx_frame_errors.i183.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %rx_frame_errors.i183.i, align 4
  %inc24.i.i = add i32 %113, 1
  store i32 %inc24.i.i, ptr %rx_frame_errors.i183.i, align 4
  br label %if.end.i189.i

if.end.i189.i:                                    ; preds = %if.then19.i.i, %do.end.i180.i.if.end.i189.i_crit_edge
  %114 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %priv.i, align 4
  %ule_skb.i.i184.i = getelementptr inbounds %struct.dvb_net_priv, ptr %115, i32 0, i32 17
  %ule_sndu_remain.i.i185.i = getelementptr inbounds %struct.dvb_net_priv, ptr %115, i32 0, i32 24
  %116 = ptrtoint ptr %ule_sndu_remain.i.i185.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %ule_sndu_remain.i.i185.i, align 4
  %ule_dbit.i.i186.i = getelementptr inbounds %struct.dvb_net_priv, ptr %115, i32 0, i32 22
  %117 = call ptr @memset(ptr %ule_skb.i.i184.i, i32 0, i32 13)
  %118 = ptrtoint ptr %ule_dbit.i.i186.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 -1, ptr %ule_dbit.i.i186.i, align 1
  %ule_bridged.i.i187.i = getelementptr inbounds %struct.dvb_net_priv, ptr %115, i32 0, i32 23
  %119 = ptrtoint ptr %ule_bridged.i.i187.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %ule_bridged.i.i187.i, align 2
  %need_pusi.i188.i = getelementptr inbounds %struct.dvb_net_priv, ptr %115, i32 0, i32 15
  %120 = ptrtoint ptr %need_pusi.i188.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 1, ptr %need_pusi.i188.i, align 4
  br label %for.cond.backedge.i

if.then33.i.i:                                    ; preds = %if.then.i175.i
  %121 = ptrtoint ptr %need_pusi.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %need_pusi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool36.not.i.i = icmp eq i32 %122, 0
  br i1 %tobool36.not.i.i, label %if.then37.i.i, label %if.else90.i.i

if.then37.i.i:                                    ; preds = %if.then33.i.i
  %123 = ptrtoint ptr %from_where.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %from_where.i, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %124, align 1
  %conv38.i.i = zext i8 %126 to i32
  %127 = ptrtoint ptr %ts_remain.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %ts_remain.i, align 4
  %conv39.i.i = zext i8 %128 to i32
  %sub.i192.i = add nsw i32 %conv39.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i192.i, i32 %conv38.i.i)
  %cmp40.i.i = icmp sgt i32 %sub.i192.i, %conv38.i.i
  br i1 %cmp40.i.i, label %lor.lhs.false.i193.i, label %if.then37.i.i.do.end49.i.i_crit_edge

if.then37.i.i.do.end49.i.i_crit_edge:             ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end49.i.i

lor.lhs.false.i193.i:                             ; preds = %if.then37.i.i
  %ule_sndu_remain.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %57, i32 0, i32 24
  %129 = ptrtoint ptr %ule_sndu_remain.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %ule_sndu_remain.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %conv38.i.i)
  %cmp45.not.i.i = icmp eq i32 %130, %conv38.i.i
  br i1 %cmp45.not.i.i, label %if.end84.i.i, label %lor.lhs.false.i193.i.do.end49.i.i_crit_edge

lor.lhs.false.i193.i.do.end49.i.i_crit_edge:      ; preds = %lor.lhs.false.i193.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end49.i.i

do.end49.i.i:                                     ; preds = %lor.lhs.false.i193.i.do.end49.i.i_crit_edge, %if.then37.i.i.do.end49.i.i_crit_edge
  %ts_count52.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %57, i32 0, i32 25
  %131 = ptrtoint ptr %ts_count52.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %ts_count52.i.i, align 4
  %call55.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %132, i32 noundef %conv38.i.i) #14
  %133 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %priv.i, align 4
  %ule_skb57.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %134, i32 0, i32 17
  %135 = ptrtoint ptr %ule_skb57.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ule_skb57.i.i, align 4
  %tobool58.not.i.i = icmp eq ptr %136, null
  br i1 %tobool58.not.i.i, label %do.end49.i.i.if.end62.i.i_crit_edge, label %if.then59.i.i

do.end49.i.i.if.end62.i.i_crit_edge:              ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62.i.i

if.then59.i.i:                                    ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %137 = ptrtoint ptr %error.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 1, ptr %error.i, align 1
  call void @consume_skb(ptr noundef nonnull %136) #11
  br label %if.end62.i.i

if.end62.i.i:                                     ; preds = %if.then59.i.i, %do.end49.i.i.if.end62.i.i_crit_edge
  %138 = ptrtoint ptr %error.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %error.i, align 1, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool64.not.i.i = icmp eq i8 %139, 0
  br i1 %tobool64.not.i.i, label %lor.lhs.false66.i.i, label %if.end62.i.i.if.then70.i.i_crit_edge

if.end62.i.i.if.then70.i.i_crit_edge:             ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then70.i.i

lor.lhs.false66.i.i:                              ; preds = %if.end62.i.i
  %140 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %priv.i, align 4
  %ule_sndu_remain68.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %141, i32 0, i32 24
  %142 = ptrtoint ptr %ule_sndu_remain68.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %ule_sndu_remain68.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool69.not.i.i = icmp eq i32 %143, 0
  br i1 %tobool69.not.i.i, label %lor.lhs.false66.i.i.if.end80.i.i_crit_edge, label %lor.lhs.false66.i.i.if.then70.i.i_crit_edge

lor.lhs.false66.i.i.if.then70.i.i_crit_edge:      ; preds = %lor.lhs.false66.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then70.i.i

lor.lhs.false66.i.i.if.end80.i.i_crit_edge:       ; preds = %lor.lhs.false66.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80.i.i

if.then70.i.i:                                    ; preds = %lor.lhs.false66.i.i.if.then70.i.i_crit_edge, %if.end62.i.i.if.then70.i.i_crit_edge
  %144 = ptrtoint ptr %h.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %h.i, align 4
  %rx_errors73.i.i = getelementptr inbounds %struct.net_device, ptr %145, i32 0, i32 36, i32 4
  %146 = ptrtoint ptr %rx_errors73.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %rx_errors73.i.i, align 8
  %inc74.i.i = add i32 %147, 1
  store i32 %inc74.i.i, ptr %rx_errors73.i.i, align 8
  %rx_frame_errors77.i.i = getelementptr inbounds %struct.net_device, ptr %145, i32 0, i32 36, i32 13
  %148 = ptrtoint ptr %rx_frame_errors77.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %rx_frame_errors77.i.i, align 4
  %inc78.i.i = add i32 %149, 1
  store i32 %inc78.i.i, ptr %rx_frame_errors77.i.i, align 4
  %150 = ptrtoint ptr %error.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 0, ptr %error.i, align 1
  br label %if.end80.i.i

if.end80.i.i:                                     ; preds = %if.then70.i.i, %lor.lhs.false66.i.i.if.end80.i.i_crit_edge
  %151 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %priv.i, align 4
  %ule_skb.i182.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %152, i32 0, i32 17
  %ule_sndu_remain.i183.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %152, i32 0, i32 24
  %153 = ptrtoint ptr %ule_sndu_remain.i183.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %ule_sndu_remain.i183.i.i, align 4
  %ule_dbit.i184.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %152, i32 0, i32 22
  %154 = call ptr @memset(ptr %ule_skb.i182.i.i, i32 0, i32 13)
  %155 = ptrtoint ptr %ule_dbit.i184.i.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 -1, ptr %ule_dbit.i184.i.i, align 1
  %ule_bridged.i185.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %152, i32 0, i32 23
  %156 = ptrtoint ptr %ule_bridged.i185.i.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 0, ptr %ule_bridged.i185.i.i, align 2
  %need_pusi83.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %152, i32 0, i32 15
  %157 = ptrtoint ptr %need_pusi83.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 1, ptr %need_pusi83.i.i, align 4
  br label %for.cond.backedge.i

if.end84.i.i:                                     ; preds = %lor.lhs.false.i193.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i194.i = getelementptr i8, ptr %124, i32 1
  %158 = ptrtoint ptr %from_where.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %add.ptr.i194.i, ptr %from_where.i, align 4
  %sub88.i.i = add i8 %128, -1
  %159 = ptrtoint ptr %ts_remain.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %sub88.i.i, ptr %ts_remain.i, align 4
  br label %if.end93.i.i

if.else90.i.i:                                    ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %160 = ptrtoint ptr %need_pusi.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %need_pusi.i, align 4
  br label %if.end93.i.i

if.end93.i.i:                                     ; preds = %if.else90.i.i, %if.end84.i.i
  %ule_sndu_remain95.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %57, i32 0, i32 24
  %161 = ptrtoint ptr %ule_sndu_remain95.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %ule_sndu_remain95.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 183, i32 %162)
  %cmp96.i.i = icmp sgt i32 %162, 183
  br i1 %cmp96.i.i, label %if.then98.i.i, label %if.end93.i.i.if.end31.i_crit_edge

if.end93.i.i.if.end31.i_crit_edge:                ; preds = %if.end93.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

if.then98.i.i:                                    ; preds = %if.end93.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %163 = ptrtoint ptr %h.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %h.i, align 4
  %rx_errors101.i.i = getelementptr inbounds %struct.net_device, ptr %164, i32 0, i32 36, i32 4
  %165 = ptrtoint ptr %rx_errors101.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %rx_errors101.i.i, align 8
  %inc102.i.i = add i32 %166, 1
  store i32 %inc102.i.i, ptr %rx_errors101.i.i, align 8
  %rx_length_errors.i.i = getelementptr inbounds %struct.net_device, ptr %164, i32 0, i32 36, i32 10
  %167 = ptrtoint ptr %rx_length_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %rx_length_errors.i.i, align 8
  %inc105.i.i = add i32 %168, 1
  store i32 %inc105.i.i, ptr %rx_length_errors.i.i, align 8
  %ts_count110.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %57, i32 0, i32 25
  %169 = ptrtoint ptr %ts_count110.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %ts_count110.i.i, align 4
  %171 = ptrtoint ptr %ule_sndu_remain95.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %ule_sndu_remain95.i.i, align 4
  %arrayidx114.i.i = getelementptr i8, ptr %92, i32 4
  %173 = ptrtoint ptr %arrayidx114.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx114.i.i, align 1
  %conv115.i.i = zext i8 %174 to i32
  %175 = ptrtoint ptr %ts_remain.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %ts_remain.i, align 4
  %conv117.i.i = zext i8 %176 to i32
  %call118.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %170, i32 noundef %172, i32 noundef %conv115.i.i, i32 noundef %conv117.i.i) #14
  %177 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %priv.i, align 4
  %ule_skb120.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %178, i32 0, i32 17
  %179 = ptrtoint ptr %ule_skb120.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %ule_skb120.i.i, align 4
  call void @consume_skb(ptr noundef %180) #11
  %181 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %priv.i, align 4
  %ule_skb.i186.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %182, i32 0, i32 17
  %ule_sndu_remain.i187.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %182, i32 0, i32 24
  %183 = ptrtoint ptr %ule_sndu_remain.i187.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 0, ptr %ule_sndu_remain.i187.i.i, align 4
  %ule_dbit.i188.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %182, i32 0, i32 22
  %184 = call ptr @memset(ptr %ule_skb.i186.i.i, i32 0, i32 13)
  %185 = ptrtoint ptr %ule_dbit.i188.i.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 -1, ptr %ule_dbit.i188.i.i, align 1
  %ule_bridged.i189.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %182, i32 0, i32 23
  %186 = ptrtoint ptr %ule_bridged.i189.i.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 0, ptr %ule_bridged.i189.i.i, align 2
  %187 = ptrtoint ptr %ts.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %ts.i, align 4
  %arrayidx123.i.i = getelementptr i8, ptr %188, i32 4
  %189 = ptrtoint ptr %arrayidx123.i.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx123.i.i, align 1
  %conv124.i.i = zext i8 %190 to i32
  %191 = ptrtoint ptr %from_where.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %from_where.i, align 4
  %add.ptr126.i.i = getelementptr i8, ptr %192, i32 %conv124.i.i
  store ptr %add.ptr126.i.i, ptr %from_where.i, align 4
  %193 = load i8, ptr %arrayidx123.i.i, align 1
  %194 = ptrtoint ptr %ts_remain.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %ts_remain.i, align 4
  %sub132.i.i = sub i8 %195, %193
  store i8 %sub132.i.i, ptr %ts_remain.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then98.i.i, %if.end93.i.i.if.end31.i_crit_edge, %if.then.i175.i.if.end31.i_crit_edge, %if.end23.i.if.end31.i_crit_edge
  %196 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %priv.i, align 4
  %ule_skb.i = getelementptr inbounds %struct.dvb_net_priv, ptr %197, i32 0, i32 17
  %198 = ptrtoint ptr %ule_skb.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %ule_skb.i, align 4
  %cmp33.i = icmp eq ptr %199, null
  br i1 %cmp33.i, label %if.then34.i, label %if.end31.i.if.end42.i_crit_edge

if.end31.i.if.end42.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

if.then34.i:                                      ; preds = %if.end31.i
  %200 = ptrtoint ptr %ts_remain.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %ts_remain.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %201)
  %cmp.i197.i = icmp ult i8 %201, 2
  br i1 %cmp.i197.i, label %do.end.i203.i, label %if.end.i205.i

do.end.i203.i:                                    ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i = zext i8 %201 to i32
  %call.i198.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %conv.i.i) #14
  %202 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %priv.i, align 4
  %ule_sndu_len.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %203, i32 0, i32 19
  %204 = ptrtoint ptr %ule_sndu_len.i.i to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 0, ptr %ule_sndu_len.i.i, align 4
  %need_pusi.i200.i = getelementptr inbounds %struct.dvb_net_priv, ptr %203, i32 0, i32 15
  %205 = ptrtoint ptr %need_pusi.i200.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 1, ptr %need_pusi.i200.i, align 4
  %206 = ptrtoint ptr %ts.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %ts.i, align 4
  %add.ptr.i202.i = getelementptr i8, ptr %207, i32 188
  store ptr %add.ptr.i202.i, ptr %ts.i, align 4
  br label %for.cond.backedge.i

if.end.i205.i:                                    ; preds = %if.then34.i
  %ule_sndu_len6.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %197, i32 0, i32 19
  %208 = ptrtoint ptr %ule_sndu_len6.i.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %ule_sndu_len6.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %209)
  %tobool.not.i204.i = icmp eq i16 %209, 0
  br i1 %tobool.not.i204.i, label %if.then7.i.i, label %if.end.i205.i.if.end61.i.i_crit_edge

if.end.i205.i.if.end61.i.i_crit_edge:             ; preds = %if.end.i205.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61.i.i

if.then7.i.i:                                     ; preds = %if.end.i205.i
  %210 = ptrtoint ptr %from_where.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %from_where.i, align 4
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %211, align 1
  %conv8.i207.i = zext i8 %213 to i16
  %shl.i.i = shl nuw i16 %conv8.i207.i, 8
  %arrayidx10.i.i = getelementptr i8, ptr %211, i32 1
  %214 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %arrayidx10.i.i, align 1
  %conv11.i.i = zext i8 %215 to i16
  %shl.i.masked.i = and i16 %shl.i.i, 32512
  %and23.i.i = or i16 %shl.i.masked.i, %conv11.i.i
  %or.i.lobit.i = lshr i8 %213, 7
  %216 = ptrtoint ptr %ule_sndu_len6.i.i to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 %and23.i.i, ptr %ule_sndu_len6.i.i, align 4
  %ule_dbit27.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %197, i32 0, i32 22
  %217 = ptrtoint ptr %ule_dbit27.i.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %or.i.lobit.i, ptr %ule_dbit27.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %and23.i.i)
  %cmp32.i.i = icmp ult i16 %and23.i.i, 5
  br i1 %cmp32.i.i, label %do.end36.i.i, label %if.end55.i.i

do.end36.i.i:                                     ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv31.i.i = zext i16 %and23.i.i to i32
  %ts_count.i209.i = getelementptr inbounds %struct.dvb_net_priv, ptr %197, i32 0, i32 25
  %218 = ptrtoint ptr %ts_count.i209.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %ts_count.i209.i, align 4
  %call42.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %219, i32 noundef %conv31.i.i) #14
  %220 = ptrtoint ptr %h.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %h.i, align 4
  %rx_errors.i210.i = getelementptr inbounds %struct.net_device, ptr %221, i32 0, i32 36, i32 4
  %222 = ptrtoint ptr %rx_errors.i210.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %rx_errors.i210.i, align 8
  %inc.i211.i = add i32 %223, 1
  store i32 %inc.i211.i, ptr %rx_errors.i210.i, align 8
  %rx_length_errors.i212.i = getelementptr inbounds %struct.net_device, ptr %221, i32 0, i32 36, i32 10
  %224 = ptrtoint ptr %rx_length_errors.i212.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %rx_length_errors.i212.i, align 8
  %inc45.i.i = add i32 %225, 1
  store i32 %inc45.i.i, ptr %rx_length_errors.i212.i, align 8
  %226 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %priv.i, align 4
  %ule_sndu_len47.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %227, i32 0, i32 19
  %228 = ptrtoint ptr %ule_sndu_len47.i.i to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 0, ptr %ule_sndu_len47.i.i, align 4
  %need_pusi49.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %227, i32 0, i32 15
  %229 = ptrtoint ptr %need_pusi49.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 1, ptr %need_pusi49.i.i, align 4
  %230 = ptrtoint ptr %new_ts.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 1, ptr %new_ts.i, align 2
  %231 = ptrtoint ptr %ts.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %ts.i, align 4
  %add.ptr51.i.i = getelementptr i8, ptr %232, i32 188
  store ptr %add.ptr51.i.i, ptr %ts.i, align 4
  %ts_count53.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %227, i32 0, i32 25
  %233 = ptrtoint ptr %ts_count53.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %ts_count53.i.i, align 4
  %inc54.i.i = add i32 %234, 1
  store i32 %inc54.i.i, ptr %ts_count53.i.i, align 4
  br label %for.cond.backedge.i

if.end55.i.i:                                     ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i213.i = add i8 %201, -2
  %235 = ptrtoint ptr %ts_remain.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %sub.i213.i, ptr %ts_remain.i, align 4
  %add.ptr60.i.i = getelementptr i8, ptr %211, i32 2
  %236 = ptrtoint ptr %from_where.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr %add.ptr60.i.i, ptr %from_where.i, align 4
  br label %if.end61.i.i

if.end61.i.i:                                     ; preds = %if.end55.i.i, %if.end.i205.i.if.end61.i.i_crit_edge
  %237 = phi i8 [ %sub.i213.i, %if.end55.i.i ], [ %201, %if.end.i205.i.if.end61.i.i_crit_edge ]
  %238 = ptrtoint ptr %ule_sndu_len6.i.i to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %ule_sndu_len6.i.i, align 4
  %conv64.i.i = zext i16 %239 to i32
  %add.i214.i = add nuw nsw i32 %conv64.i.i, 2
  %ule_sndu_remain.i215.i = getelementptr inbounds %struct.dvb_net_priv, ptr %197, i32 0, i32 24
  %240 = ptrtoint ptr %ule_sndu_remain.i215.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %add.i214.i, ptr %ule_sndu_remain.i215.i, align 4
  %241 = zext i8 %237 to i64
  call void @__sanitizer_cov_trace_switch(i64 %241, ptr @__sancov_gen_cov_switch_values.90)
  switch i8 %237, label %sw.default.i.i [
    i8 1, label %sw.bb.i.i
    i8 0, label %if.end61.i.i.sw.bb83.i.i_crit_edge
  ]

if.end61.i.i.sw.bb83.i.i_crit_edge:               ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb83.i.i

sw.bb.i.i:                                        ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec.i.i = add nuw nsw i32 %conv64.i.i, 1
  %242 = ptrtoint ptr %ule_sndu_remain.i215.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %dec.i.i, ptr %ule_sndu_remain.i215.i, align 4
  %243 = ptrtoint ptr %from_where.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %from_where.i, align 4
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %244, align 1
  %conv72.i.i = zext i8 %246 to i16
  %shl73.i.i = shl nuw i16 %conv72.i.i, 8
  %ule_sndu_type.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %197, i32 0, i32 20
  %247 = ptrtoint ptr %ule_sndu_type.i.i to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 %shl73.i.i, ptr %ule_sndu_type.i.i, align 2
  %ule_sndu_type_1.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %197, i32 0, i32 21
  %248 = ptrtoint ptr %ule_sndu_type_1.i.i to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 1, ptr %ule_sndu_type_1.i.i, align 4
  %249 = ptrtoint ptr %ts_remain.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 0, ptr %ts_remain.i, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %244, i32 1
  store ptr %add.ptr82.i.i, ptr %from_where.i, align 4
  br label %sw.bb83.i.i

sw.bb83.i.i:                                      ; preds = %sw.bb.i.i, %if.end61.i.i.sw.bb83.i.i_crit_edge
  %250 = ptrtoint ptr %new_ts.i to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 1, ptr %new_ts.i, align 2
  %251 = ptrtoint ptr %ts.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %ts.i, align 4
  %add.ptr86.i.i = getelementptr i8, ptr %252, i32 188
  store ptr %add.ptr86.i.i, ptr %ts.i, align 4
  %ts_count88.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %197, i32 0, i32 25
  %253 = ptrtoint ptr %ts_count88.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %ts_count88.i.i, align 4
  %inc89.i.i = add i32 %254, 1
  store i32 %inc89.i.i, ptr %ts_count88.i.i, align 4
  br label %for.cond.backedge.i

sw.default.i.i:                                   ; preds = %if.end61.i.i
  %ule_sndu_type_191.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %197, i32 0, i32 21
  %255 = ptrtoint ptr %ule_sndu_type_191.i.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %ule_sndu_type_191.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %256)
  %tobool92.not.i.i = icmp eq i8 %256, 0
  br i1 %tobool92.not.i.i, label %if.else110.i.i, label %if.then93.i.i

if.then93.i.i:                                    ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %257 = ptrtoint ptr %ule_sndu_type_191.i.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 0, ptr %ule_sndu_type_191.i.i, align 4
  %258 = ptrtoint ptr %from_where.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %from_where.i, align 4
  %260 = ptrtoint ptr %259 to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %259, align 1
  %conv98.i.i = zext i8 %261 to i16
  %ule_sndu_type100.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %197, i32 0, i32 20
  %262 = ptrtoint ptr %ule_sndu_type100.i.i to i32
  call void @__asan_load2_noabort(i32 %262)
  %263 = load i16, ptr %ule_sndu_type100.i.i, align 2
  %or102.i.i = or i16 %263, %conv98.i.i
  store i16 %or102.i.i, ptr %ule_sndu_type100.i.i, align 2
  br label %sw.epilog.i.i

if.else110.i.i:                                   ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %264 = ptrtoint ptr %from_where.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %from_where.i, align 4
  %266 = ptrtoint ptr %265 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %265, align 1
  %conv113.i.i = zext i8 %267 to i16
  %shl114.i.i = shl nuw i16 %conv113.i.i, 8
  %arrayidx116.i.i = getelementptr i8, ptr %265, i32 1
  %268 = ptrtoint ptr %arrayidx116.i.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %arrayidx116.i.i, align 1
  %conv117.i216.i = zext i8 %269 to i16
  %or118.i.i = or i16 %shl114.i.i, %conv117.i216.i
  %ule_sndu_type121.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %197, i32 0, i32 20
  %270 = ptrtoint ptr %ule_sndu_type121.i.i to i32
  call void @__asan_store2_noabort(i32 %270)
  store i16 %or118.i.i, ptr %ule_sndu_type121.i.i, align 2
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %if.else110.i.i, %if.then93.i.i
  %.sink220.i.i = phi i32 [ 1, %if.then93.i.i ], [ 2, %if.else110.i.i ]
  %.sink218.i.i = phi i8 [ -1, %if.then93.i.i ], [ -2, %if.else110.i.i ]
  %271 = ptrtoint ptr %from_where.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %from_where.i, align 4
  %add.ptr105.i.i = getelementptr i8, ptr %272, i32 %.sink220.i.i
  store ptr %add.ptr105.i.i, ptr %from_where.i, align 4
  %sub108.i.i = add i8 %.sink218.i.i, %237
  %273 = ptrtoint ptr %ts_remain.i to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 %sub108.i.i, ptr %ts_remain.i, align 4
  %274 = ptrtoint ptr %ule_sndu_len6.i.i to i32
  call void @__asan_load2_noabort(i32 %274)
  %275 = load i16, ptr %ule_sndu_len6.i.i, align 4
  %conv131.i.i = zext i16 %275 to i32
  %add133.i.i = add nuw nsw i32 %conv131.i.i, 20
  %call.i.i.i.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add133.i.i, i32 noundef 2592) #11
  %276 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %priv.i, align 4
  %ule_skb.i217.i = getelementptr inbounds %struct.dvb_net_priv, ptr %277, i32 0, i32 17
  %278 = ptrtoint ptr %ule_skb.i217.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr %call.i.i.i.i, ptr %ule_skb.i217.i, align 4
  %tobool138.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool138.not.i.i, label %dvb_net_ule_new_payload.exit.i, label %if.end38.thread.i

if.end38.thread.i:                                ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %ule_sndu_len150.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %277, i32 0, i32 19
  %279 = ptrtoint ptr %ule_sndu_len150.i.i to i32
  call void @__asan_load2_noabort(i32 %279)
  %280 = load i16, ptr %ule_sndu_len150.i.i, align 4
  %conv151.i.i = zext i16 %280 to i32
  %ule_sndu_remain153.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %277, i32 0, i32 24
  %281 = ptrtoint ptr %ule_sndu_remain153.i.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %conv151.i.i, ptr %ule_sndu_remain153.i.i, align 4
  %282 = ptrtoint ptr %h.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %h.i, align 4
  %284 = getelementptr inbounds %struct.anon.44, ptr %call.i.i.i.i, i32 0, i32 2
  %285 = ptrtoint ptr %284 to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr %283, ptr %284, align 8
  %286 = ptrtoint ptr %ule_skb.i217.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %ule_skb.i217.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %287, i32 0, i32 19
  %288 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %289, i32 20
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %287, i32 0, i32 16
  %290 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %291, i32 20
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  br label %if.end42.i

dvb_net_ule_new_payload.exit.i:                   ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %292 = ptrtoint ptr %h.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %h.i, align 4
  %call144.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %293) #14
  %294 = ptrtoint ptr %h.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %h.i, align 4
  %rx_dropped.i.i = getelementptr inbounds %struct.net_device, ptr %295, i32 0, i32 36, i32 6
  %296 = ptrtoint ptr %rx_dropped.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %rx_dropped.i.i, align 8
  %inc147.i.i = add i32 %297, 1
  store i32 %inc147.i.i, ptr %rx_dropped.i.i, align 8
  br label %dvb_net_ule.exit

if.end42.i:                                       ; preds = %if.end38.thread.i, %if.end31.i.if.end42.i_crit_edge
  %298 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %priv.i, align 4
  %ule_sndu_remain.i = getelementptr inbounds %struct.dvb_net_priv, ptr %299, i32 0, i32 24
  %300 = ptrtoint ptr %ule_sndu_remain.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %ule_sndu_remain.i, align 4
  %302 = ptrtoint ptr %ts_remain.i to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %ts_remain.i, align 4
  %conv.i = zext i8 %303 to i32
  %304 = call i32 @llvm.smin.i32(i32 %301, i32 %conv.i) #11
  %conv47.i = trunc i32 %304 to i8
  %305 = ptrtoint ptr %how_much.i to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 %conv47.i, ptr %how_much.i, align 1
  %ule_skb50.i = getelementptr inbounds %struct.dvb_net_priv, ptr %299, i32 0, i32 17
  %306 = ptrtoint ptr %ule_skb50.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %ule_skb50.i, align 4
  %308 = ptrtoint ptr %from_where.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %from_where.i, align 4
  %conv53.i = and i32 %304, 255
  %call.i219.i = call ptr @skb_put(ptr noundef %307, i32 noundef %conv53.i) #11
  %310 = call ptr @memcpy(ptr %call.i219.i, ptr %309, i32 %conv53.i)
  %311 = ptrtoint ptr %how_much.i to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %how_much.i, align 1
  %conv56.i = zext i8 %312 to i32
  %313 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %priv.i, align 4
  %ule_sndu_remain58.i = getelementptr inbounds %struct.dvb_net_priv, ptr %314, i32 0, i32 24
  %315 = ptrtoint ptr %ule_sndu_remain58.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %ule_sndu_remain58.i, align 4
  %sub.i = sub i32 %316, %conv56.i
  store i32 %sub.i, ptr %ule_sndu_remain58.i, align 4
  %317 = ptrtoint ptr %ts_remain.i to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %ts_remain.i, align 4
  %sub63.i = sub i8 %318, %312
  store i8 %sub63.i, ptr %ts_remain.i, align 4
  %319 = ptrtoint ptr %from_where.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %from_where.i, align 4
  %add.ptr68.i = getelementptr i8, ptr %320, i32 %conv56.i
  store ptr %add.ptr68.i, ptr %from_where.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp71.i = icmp slt i32 %sub.i, 1
  br i1 %cmp71.i, label %if.then73.i, label %if.end42.i.if.end111.i_crit_edge

if.end42.i.if.end111.i_crit_edge:                 ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111.i

if.then73.i:                                      ; preds = %if.end42.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ulen.i) #11
  %ule_sndu_len.i = getelementptr inbounds %struct.dvb_net_priv, ptr %314, i32 0, i32 19
  %321 = ptrtoint ptr %ule_sndu_len.i to i32
  call void @__asan_load2_noabort(i32 %321)
  %322 = load i16, ptr %ule_sndu_len.i, align 4
  %323 = ptrtoint ptr %ulen.i to i32
  call void @__asan_store2_noabort(i32 %323)
  store i16 %322, ptr %ulen.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %utype.i) #11
  %ule_sndu_type.i = getelementptr inbounds %struct.dvb_net_priv, ptr %314, i32 0, i32 20
  %324 = ptrtoint ptr %ule_sndu_type.i to i32
  call void @__asan_load2_noabort(i32 %324)
  %325 = load i16, ptr %ule_sndu_type.i, align 2
  %326 = ptrtoint ptr %utype.i to i32
  call void @__asan_store2_noabort(i32 %326)
  store i16 %325, ptr %utype.i, align 2
  %ule_skb81.i = getelementptr inbounds %struct.dvb_net_priv, ptr %314, i32 0, i32 17
  %327 = ptrtoint ptr %ule_skb81.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %ule_skb81.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %328, i32 0, i32 19
  %329 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %328, i32 0, i32 6
  %331 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %len.i, align 4
  %sub85.i = add i32 %332, -4
  %ule_dbit.i = getelementptr inbounds %struct.dvb_net_priv, ptr %314, i32 0, i32 22
  %333 = ptrtoint ptr %ule_dbit.i to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %ule_dbit.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %334)
  %tobool87.not.i = icmp eq i8 %334, 0
  br i1 %tobool87.not.i, label %if.then73.i.if.end91.i_crit_edge, label %if.then88.i

if.then73.i.if.end91.i_crit_edge:                 ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91.i

if.then88.i:                                      ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #13
  %335 = or i16 %322, -32768
  %336 = ptrtoint ptr %ulen.i to i32
  call void @__asan_store2_noabort(i32 %336)
  store i16 %335, ptr %ulen.i, align 2
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.then88.i, %if.then73.i.if.end91.i_crit_edge
  %call.i220.i = call i32 @crc32_be(i32 noundef -1, ptr noundef nonnull %ulen.i, i32 noundef 2) #16
  %call.1.i.i = call i32 @crc32_be(i32 noundef %call.i220.i, ptr noundef nonnull %utype.i, i32 noundef 2) #16
  %call.2.i.i = call i32 @crc32_be(i32 noundef %call.1.i.i, ptr noundef %330, i32 noundef %sub85.i) #16
  %337 = ptrtoint ptr %ule_skb81.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %ule_skb81.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %338, i32 0, i32 16
  %339 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %tail.i.i, align 8
  %add.ptr96.i = getelementptr i8, ptr %340, i32 -4
  %341 = ptrtoint ptr %add.ptr96.i to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %add.ptr96.i, align 1
  %conv97.i = zext i8 %342 to i32
  %shl.i = shl nuw i32 %conv97.i, 24
  %add.ptr98.i = getelementptr i8, ptr %340, i32 -3
  %343 = ptrtoint ptr %add.ptr98.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %add.ptr98.i, align 1
  %conv99.i = zext i8 %344 to i32
  %shl100.i = shl nuw nsw i32 %conv99.i, 16
  %or101.i = or i32 %shl100.i, %shl.i
  %add.ptr102.i = getelementptr i8, ptr %340, i32 -2
  %345 = ptrtoint ptr %add.ptr102.i to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %add.ptr102.i, align 1
  %conv103.i = zext i8 %346 to i32
  %shl104.i = shl nuw nsw i32 %conv103.i, 8
  %or105.i = or i32 %or101.i, %shl104.i
  %add.ptr106.i = getelementptr i8, ptr %340, i32 -1
  %347 = ptrtoint ptr %add.ptr106.i to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %add.ptr106.i, align 1
  %conv107.i = zext i8 %348 to i32
  %or108.i = or i32 %or105.i, %conv107.i
  call fastcc void @dvb_net_ule_check_crc(ptr noundef nonnull %h.i, i32 noundef %call.2.i.i, i32 noundef %or108.i) #11
  %349 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %priv.i, align 4
  %ule_skb.i221.i = getelementptr inbounds %struct.dvb_net_priv, ptr %350, i32 0, i32 17
  %ule_sndu_remain.i222.i = getelementptr inbounds %struct.dvb_net_priv, ptr %350, i32 0, i32 24
  %351 = ptrtoint ptr %ule_sndu_remain.i222.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 0, ptr %ule_sndu_remain.i222.i, align 4
  %ule_dbit.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %350, i32 0, i32 22
  %352 = call ptr @memset(ptr %ule_skb.i221.i, i32 0, i32 13)
  %353 = ptrtoint ptr %ule_dbit.i.i to i32
  call void @__asan_store1_noabort(i32 %353)
  store i8 -1, ptr %ule_dbit.i.i, align 1
  %ule_bridged.i.i = getelementptr inbounds %struct.dvb_net_priv, ptr %350, i32 0, i32 23
  %354 = ptrtoint ptr %ule_bridged.i.i to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 0, ptr %ule_bridged.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %utype.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ulen.i) #11
  %355 = ptrtoint ptr %ts_remain.i to i32
  call void @__asan_load1_noabort(i32 %355)
  %.pr234.i = load i8, ptr %ts_remain.i, align 4
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.end91.i, %if.end42.i.if.end111.i_crit_edge
  %356 = phi i8 [ %.pr234.i, %if.end91.i ], [ %sub63.i, %if.end42.i.if.end111.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %356)
  %cmp114.i = icmp ugt i8 %356, 1
  br i1 %cmp114.i, label %land.lhs.true.i, label %if.end111.i.if.else.i_crit_edge

if.end111.i.if.else.i_crit_edge:                  ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end111.i
  %357 = ptrtoint ptr %from_where.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %from_where.i, align 4
  %359 = ptrtoint ptr %358 to i32
  call void @__asan_load2_noabort(i32 %359)
  %360 = load i16, ptr %358, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %360)
  %cmp118.not.i = icmp eq i16 %360, -1
  br i1 %cmp118.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then120.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then120.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %361 = ptrtoint ptr %new_ts.i to i32
  call void @__asan_store1_noabort(i32 %361)
  store i8 0, ptr %new_ts.i, align 2
  %362 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %priv.i, align 4
  %ule_skb123.i = getelementptr inbounds %struct.dvb_net_priv, ptr %363, i32 0, i32 17
  %364 = ptrtoint ptr %ule_skb123.i to i32
  call void @__asan_store4_noabort(i32 %364)
  store ptr null, ptr %ule_skb123.i, align 4
  %ule_sndu_type_1.i = getelementptr inbounds %struct.dvb_net_priv, ptr %363, i32 0, i32 21
  %365 = ptrtoint ptr %ule_sndu_type_1.i to i32
  call void @__asan_store1_noabort(i32 %365)
  store i8 0, ptr %ule_sndu_type_1.i, align 4
  %ule_sndu_len126.i = getelementptr inbounds %struct.dvb_net_priv, ptr %363, i32 0, i32 19
  %366 = ptrtoint ptr %ule_sndu_len126.i to i32
  call void @__asan_store2_noabort(i32 %366)
  store i16 0, ptr %ule_sndu_len126.i, align 4
  br label %for.cond.backedge.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end111.i.if.else.i_crit_edge
  %367 = ptrtoint ptr %new_ts.i to i32
  call void @__asan_store1_noabort(i32 %367)
  store i8 1, ptr %new_ts.i, align 2
  %368 = ptrtoint ptr %ts.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %ts.i, align 4
  %add.ptr129.i = getelementptr i8, ptr %369, i32 188
  store ptr %add.ptr129.i, ptr %ts.i, align 4
  %370 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %priv.i, align 4
  %ts_count.i = getelementptr inbounds %struct.dvb_net_priv, ptr %371, i32 0, i32 25
  %372 = ptrtoint ptr %ts_count.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %ts_count.i, align 4
  %inc.i = add i32 %373, 1
  store i32 %inc.i, ptr %ts_count.i, align 4
  %ule_skb132.i = getelementptr inbounds %struct.dvb_net_priv, ptr %371, i32 0, i32 17
  %374 = ptrtoint ptr %ule_skb132.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %ule_skb132.i, align 4
  %cmp133.i = icmp eq ptr %375, null
  br i1 %cmp133.i, label %if.then135.i, label %if.else.i.for.cond.backedge.i_crit_edge

if.else.i.for.cond.backedge.i_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i

if.then135.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %need_pusi137.i = getelementptr inbounds %struct.dvb_net_priv, ptr %371, i32 0, i32 15
  %376 = ptrtoint ptr %need_pusi137.i to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 1, ptr %need_pusi137.i, align 4
  %ule_sndu_type_1139.i = getelementptr inbounds %struct.dvb_net_priv, ptr %371, i32 0, i32 21
  %377 = ptrtoint ptr %ule_sndu_type_1139.i to i32
  call void @__asan_store1_noabort(i32 %377)
  store i8 0, ptr %ule_sndu_type_1139.i, align 4
  %ule_sndu_len141.i = getelementptr inbounds %struct.dvb_net_priv, ptr %371, i32 0, i32 19
  %378 = ptrtoint ptr %ule_sndu_len141.i to i32
  call void @__asan_store2_noabort(i32 %378)
  store i16 0, ptr %ule_sndu_len141.i, align 4
  br label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %if.then135.i, %if.else.i.for.cond.backedge.i_crit_edge, %if.then120.i, %sw.bb83.i.i, %do.end36.i.i, %do.end.i203.i, %if.end80.i.i, %if.end.i189.i, %if.else.i.i, %do.end.i163.i, %dvb_net_ule_new_ts_cell.exit.i
  %379 = ptrtoint ptr %ts.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %ts.i, align 4
  %381 = ptrtoint ptr %ts_end.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %ts_end.i, align 4
  %cmp.i = icmp ult ptr %380, %382
  br i1 %cmp.i, label %for.cond.backedge.i.for.body.i_crit_edge, label %for.cond.backedge.i.dvb_net_ule.exit_crit_edge

for.cond.backedge.i.dvb_net_ule.exit_crit_edge:   ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dvb_net_ule.exit

for.cond.backedge.i.for.body.i_crit_edge:         ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

dvb_net_ule.exit:                                 ; preds = %for.cond.backedge.i.dvb_net_ule.exit_crit_edge, %dvb_net_ule_new_payload.exit.i, %if.end7.dvb_net_ule.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %h.i) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dvb_net_ule_check_crc(ptr nocapture noundef %h, i32 noundef %ule_crc, i32 noundef %expected_crc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %ule_crc, i32 %expected_crc)
  %cmp.not = icmp eq i32 %ule_crc, %expected_crc
  %priv14 = getelementptr inbounds %struct.dvb_net_ule_handle, ptr %h, i32 0, i32 1
  %0 = ptrtoint ptr %priv14 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv14, align 4
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %ts_count = getelementptr inbounds %struct.dvb_net_priv, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %ts_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ts_count, align 4
  %ule_sndu_len = getelementptr inbounds %struct.dvb_net_priv, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %ule_sndu_len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ule_sndu_len, align 4
  %conv = zext i16 %5 to i32
  %ule_sndu_type = getelementptr inbounds %struct.dvb_net_priv, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %ule_sndu_type to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ule_sndu_type, align 2
  %conv3 = zext i16 %7 to i32
  %ts_remain = getelementptr inbounds %struct.dvb_net_ule_handle, ptr %h, i32 0, i32 9
  %8 = ptrtoint ptr %ts_remain to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ts_remain, align 4
  %conv4 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp7 = icmp ugt i8 %9, 2
  br i1 %cmp7, label %cond.true, label %do.end.cond.end_crit_edge

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %from_where = getelementptr inbounds %struct.dvb_net_ule_handle, ptr %h, i32 0, i32 8
  %10 = ptrtoint ptr %from_where to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %from_where, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 2
  %conv9 = zext i16 %13 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %conv9, %cond.true ], [ 0, %do.end.cond.end_crit_edge ]
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %3, i32 noundef %ule_crc, i32 noundef %expected_crc, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %cond) #14
  %14 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %h, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 36, i32 4
  %16 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %17, 1
  store i32 %inc, ptr %rx_errors, align 8
  %18 = load ptr, ptr %h, align 4
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 36, i32 12
  %19 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_crc_errors, align 8
  %inc12 = add i32 %20, 1
  store i32 %inc12, ptr %rx_crc_errors, align 8
  %21 = ptrtoint ptr %priv14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv14, align 4
  %ule_skb = getelementptr inbounds %struct.dvb_net_priv, ptr %22, i32 0, i32 17
  %23 = ptrtoint ptr %ule_skb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ule_skb, align 4
  tail call void @consume_skb(ptr noundef %24) #11
  br label %cleanup105

if.end:                                           ; preds = %entry
  %ule_skb15 = getelementptr inbounds %struct.dvb_net_priv, ptr %1, i32 0, i32 17
  %25 = ptrtoint ptr %ule_skb15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ule_skb15, align 4
  %tail = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 16
  %27 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail, align 8
  %add.ptr = getelementptr i8, ptr %28, i32 -4
  store ptr %add.ptr, ptr %tail, align 8
  %29 = ptrtoint ptr %priv14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv14, align 4
  %ule_skb17 = getelementptr inbounds %struct.dvb_net_priv, ptr %30, i32 0, i32 17
  %31 = ptrtoint ptr %ule_skb17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ule_skb17, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len, align 4
  %sub = add i32 %34, -4
  store i32 %sub, ptr %len, align 4
  %35 = load ptr, ptr %priv14, align 4
  %ule_dbit = getelementptr inbounds %struct.dvb_net_priv, ptr %35, i32 0, i32 22
  %36 = ptrtoint ptr %ule_dbit to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ule_dbit, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not = icmp eq i8 %37, 0
  br i1 %tobool.not, label %if.then19, label %if.end.if.end49_crit_edge

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then19:                                        ; preds = %if.end
  %rx_mode.i = getelementptr inbounds %struct.dvb_net_priv, ptr %35, i32 0, i32 11
  %38 = ptrtoint ptr %rx_mode.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %39)
  %cmp.i = icmp eq i32 %39, 3
  br i1 %cmp.i, label %if.then19.if.end42_crit_edge, label %if.end.i

if.then19.if.end42_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.end.i:                                         ; preds = %if.then19
  %ule_skb.i = getelementptr inbounds %struct.dvb_net_priv, ptr %35, i32 0, i32 17
  %40 = ptrtoint ptr %ule_skb.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ule_skb.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 19
  %42 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 1
  %46 = and i8 %45, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i = icmp eq i8 %46, 0
  br i1 %tobool.not.i, label %if.else35.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %43, align 4
  %xor.i.i = xor i32 %48, -1
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 4
  %49 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %50, -1
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor3.i.i, %xor.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then2.i.if.end42_crit_edge, label %if.then6.i

if.then2.i.if.end42_crit_edge:                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then6.i:                                       ; preds = %if.then2.i
  %51 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %39, label %if.then6.i.do.body24_crit_edge [
    i32 1, label %for.cond.preheader.i
    i32 2, label %if.then6.i.if.end42_crit_edge
  ]

if.then6.i.if.end42_crit_edge:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then6.i.do.body24_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body24

for.cond.preheader.i:                             ; preds = %if.then6.i
  %multi_num.i = getelementptr inbounds %struct.dvb_net_priv, ptr %35, i32 0, i32 8
  %52 = ptrtoint ptr %multi_num.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %multi_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp1369.i = icmp sgt i32 %53, 0
  br i1 %cmp1369.i, label %for.cond.preheader.i.land.rhs.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.cond.preheader.i.land.rhs.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %for.cond.preheader.i.land.rhs.i_crit_edge
  %i.070.i = phi i32 [ %inc.i, %for.inc.i.land.rhs.i_crit_edge ], [ 0, %for.cond.preheader.i.land.rhs.i_crit_edge ]
  %arrayidx19.i = getelementptr %struct.dvb_net_priv, ptr %35, i32 0, i32 10, i32 %i.070.i
  %54 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx19.i, align 4
  %xor.i56.i = xor i32 %55, %48
  %add.ptr1.i.i = getelementptr i8, ptr %arrayidx19.i, i32 4
  %56 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i58.i = xor i16 %57, %50
  %xor3.i59.i = zext i16 %xor37.i58.i to i32
  %or.i60.i = or i32 %xor.i56.i, %xor3.i59.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i60.i)
  %cmp.i61.i = icmp eq i32 %or.i60.i, 0
  br i1 %cmp.i61.i, label %land.rhs.i.for.end.i_crit_edge, label %for.inc.i

land.rhs.i.for.end.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.i:                                        ; preds = %land.rhs.i
  %inc.i = add nuw nsw i32 %i.070.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %53
  br i1 %exitcond.not.i, label %for.inc.i.do.body24_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

for.inc.i.do.body24_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body24

for.end.i:                                        ; preds = %land.rhs.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %i.070.i, %land.rhs.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %53)
  %cmp23.not.i = icmp eq i32 %i.0.lcssa.i, %53
  br i1 %cmp23.not.i, label %for.end.i.do.body24_crit_edge, label %for.end.i.if.end42_crit_edge

for.end.i.if.end42_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

for.end.i.do.body24_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body24

if.else35.i:                                      ; preds = %if.end.i
  %58 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %h, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %59, i32 0, i32 86
  %60 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev_addr.i, align 64
  %62 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %43, align 4
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %61, align 4
  %xor.i62.i = xor i32 %65, %63
  %add.ptr.i63.i = getelementptr i8, ptr %43, i32 4
  %66 = ptrtoint ptr %add.ptr.i63.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %add.ptr.i63.i, align 2
  %add.ptr1.i64.i = getelementptr i8, ptr %61, i32 4
  %68 = ptrtoint ptr %add.ptr1.i64.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %add.ptr1.i64.i, align 2
  %xor37.i65.i = xor i16 %69, %67
  %xor3.i66.i = zext i16 %xor37.i65.i to i32
  %or.i67.i = or i32 %xor.i62.i, %xor3.i66.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i67.i)
  %cmp.i68.i = icmp eq i32 %or.i67.i, 0
  br i1 %cmp.i68.i, label %if.else35.i.if.end42_crit_edge, label %if.else35.i.do.body24_crit_edge

if.else35.i.do.body24_crit_edge:                  ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body24

if.else35.i.if.end42_crit_edge:                   ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

do.body24:                                        ; preds = %if.else35.i.do.body24_crit_edge, %for.end.i.do.body24_crit_edge, %for.inc.i.do.body24_crit_edge, %if.then6.i.do.body24_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_net_ule_check_crc.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_net_ule_check_crc, %if.then30)) #11
          to label %do.end39 [label %if.then30], !srcloc !218

if.then30:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %h, align 4
  %72 = ptrtoint ptr %priv14 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %priv14, align 4
  %ule_skb33 = getelementptr inbounds %struct.dvb_net_priv, ptr %73, i32 0, i32 17
  %74 = ptrtoint ptr %ule_skb33 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ule_skb33, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 19
  %76 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %71, i32 0, i32 86
  %78 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev_addr, align 64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @dvb_net_ule_check_crc.__UNIQUE_ID_ddebug348, ptr noundef %71, ptr noundef nonnull @.str.79, ptr noundef %77, ptr noundef %79) #11
  br label %do.end39

do.end39:                                         ; preds = %if.then30, %do.body24
  %80 = ptrtoint ptr %priv14 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %priv14, align 4
  %ule_skb41 = getelementptr inbounds %struct.dvb_net_priv, ptr %81, i32 0, i32 17
  %82 = ptrtoint ptr %ule_skb41 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ule_skb41, align 4
  tail call void @consume_skb(ptr noundef %83) #11
  br label %cleanup105

if.end42:                                         ; preds = %if.else35.i.if.end42_crit_edge, %for.end.i.if.end42_crit_edge, %if.then6.i.if.end42_crit_edge, %if.then2.i.if.end42_crit_edge, %if.then19.if.end42_crit_edge
  %ule_skb44 = getelementptr inbounds %struct.dvb_net_priv, ptr %35, i32 0, i32 17
  %84 = ptrtoint ptr %ule_skb44 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ule_skb44, align 4
  %data.i1 = getelementptr inbounds %struct.sk_buff, ptr %85, i32 0, i32 19
  %86 = ptrtoint ptr %data.i1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %data.i1, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load1_noabort(i32 %88)
  %dest_addr.sroa.0.0.copyload12 = load i8, ptr %87, align 1
  %dest_addr.sroa.6.0..sroa_idx13 = getelementptr inbounds i8, ptr %87, i32 1
  %89 = ptrtoint ptr %dest_addr.sroa.6.0..sroa_idx13 to i32
  call void @__asan_load1_noabort(i32 %89)
  %dest_addr.sroa.6.0.copyload14 = load i8, ptr %dest_addr.sroa.6.0..sroa_idx13, align 1
  %dest_addr.sroa.7.0..sroa_idx15 = getelementptr inbounds i8, ptr %87, i32 2
  %90 = ptrtoint ptr %dest_addr.sroa.7.0..sroa_idx15 to i32
  call void @__asan_load1_noabort(i32 %90)
  %dest_addr.sroa.7.0.copyload16 = load i8, ptr %dest_addr.sroa.7.0..sroa_idx15, align 1
  %dest_addr.sroa.8.0..sroa_idx17 = getelementptr inbounds i8, ptr %87, i32 3
  %91 = ptrtoint ptr %dest_addr.sroa.8.0..sroa_idx17 to i32
  call void @__asan_load1_noabort(i32 %91)
  %dest_addr.sroa.8.0.copyload18 = load i8, ptr %dest_addr.sroa.8.0..sroa_idx17, align 1
  %dest_addr.sroa.9.0..sroa_idx19 = getelementptr inbounds i8, ptr %87, i32 4
  %92 = ptrtoint ptr %dest_addr.sroa.9.0..sroa_idx19 to i32
  call void @__asan_load1_noabort(i32 %92)
  %dest_addr.sroa.9.0.copyload20 = load i8, ptr %dest_addr.sroa.9.0..sroa_idx19, align 1
  %dest_addr.sroa.10.0..sroa_idx21 = getelementptr inbounds i8, ptr %87, i32 5
  %93 = ptrtoint ptr %dest_addr.sroa.10.0..sroa_idx21 to i32
  call void @__asan_load1_noabort(i32 %93)
  %dest_addr.sroa.10.0.copyload22 = load i8, ptr %dest_addr.sroa.10.0..sroa_idx21, align 1
  %call47 = tail call ptr @skb_pull(ptr noundef %85, i32 noundef 6) #11
  br label %if.end49

if.end49:                                         ; preds = %if.end42, %if.end.if.end49_crit_edge
  %dest_addr.sroa.0.0 = phi i8 [ %dest_addr.sroa.0.0.copyload12, %if.end42 ], [ 0, %if.end.if.end49_crit_edge ]
  %dest_addr.sroa.6.0 = phi i8 [ %dest_addr.sroa.6.0.copyload14, %if.end42 ], [ 0, %if.end.if.end49_crit_edge ]
  %dest_addr.sroa.7.0 = phi i8 [ %dest_addr.sroa.7.0.copyload16, %if.end42 ], [ 0, %if.end.if.end49_crit_edge ]
  %dest_addr.sroa.8.0 = phi i8 [ %dest_addr.sroa.8.0.copyload18, %if.end42 ], [ 0, %if.end.if.end49_crit_edge ]
  %dest_addr.sroa.9.0 = phi i8 [ %dest_addr.sroa.9.0.copyload20, %if.end42 ], [ 0, %if.end.if.end49_crit_edge ]
  %dest_addr.sroa.10.0 = phi i8 [ %dest_addr.sroa.10.0.copyload22, %if.end42 ], [ 0, %if.end.if.end49_crit_edge ]
  %94 = ptrtoint ptr %priv14 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %priv14, align 4
  %ule_sndu_type51 = getelementptr inbounds %struct.dvb_net_priv, ptr %95, i32 0, i32 20
  %96 = ptrtoint ptr %ule_sndu_type51 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %ule_sndu_type51, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %97)
  %cmp53 = icmp ult i16 %97, 1536
  br i1 %cmp53, label %if.then55, label %if.end49.if.end67_crit_edge

if.end49.if.end67_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

if.then55:                                        ; preds = %if.end49
  %call57 = tail call fastcc i32 @handle_ule_extensions(ptr noundef %95)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  %98 = ptrtoint ptr %priv14 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %priv14, align 4
  %ule_skb62 = getelementptr inbounds %struct.dvb_net_priv, ptr %99, i32 0, i32 17
  %100 = ptrtoint ptr %ule_skb62 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ule_skb62, align 4
  br i1 %cmp58, label %if.then60, label %if.end63

if.then60:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @consume_skb(ptr noundef %101) #11
  br label %cleanup105

if.end63:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #13
  %call66 = tail call ptr @skb_pull(ptr noundef %101, i32 noundef %call57) #11
  br label %if.end67

if.end67:                                         ; preds = %if.end63, %if.end49.if.end67_crit_edge
  %102 = ptrtoint ptr %priv14 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %priv14, align 4
  %ule_bridged = getelementptr inbounds %struct.dvb_net_priv, ptr %103, i32 0, i32 23
  %104 = ptrtoint ptr %ule_bridged to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %ule_bridged, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool69.not = icmp eq i8 %105, 0
  br i1 %tobool69.not, label %if.then70, label %if.end67.if.end85_crit_edge

if.end67.if.end85_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  %ule_skb72 = getelementptr inbounds %struct.dvb_net_priv, ptr %103, i32 0, i32 17
  %106 = ptrtoint ptr %ule_skb72 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ule_skb72, align 4
  %call73 = tail call ptr @skb_push(ptr noundef %107, i32 noundef 14) #11
  %108 = ptrtoint ptr %priv14 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %priv14, align 4
  %ule_skb75 = getelementptr inbounds %struct.dvb_net_priv, ptr %109, i32 0, i32 17
  %110 = ptrtoint ptr %ule_skb75 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ule_skb75, align 4
  %data76 = getelementptr inbounds %struct.sk_buff, ptr %111, i32 0, i32 19
  %112 = ptrtoint ptr %data76 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %data76, align 4
  %ethh = getelementptr inbounds %struct.dvb_net_ule_handle, ptr %h, i32 0, i32 2
  %114 = ptrtoint ptr %ethh to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %113, ptr %ethh, align 4
  %115 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %dest_addr.sroa.0.0, ptr %113, align 1
  %dest_addr.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %113, i32 1
  %116 = ptrtoint ptr %dest_addr.sroa.6.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %dest_addr.sroa.6.0, ptr %dest_addr.sroa.6.0..sroa_idx, align 1
  %dest_addr.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %113, i32 2
  %117 = ptrtoint ptr %dest_addr.sroa.7.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %dest_addr.sroa.7.0, ptr %dest_addr.sroa.7.0..sroa_idx, align 1
  %dest_addr.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %113, i32 3
  %118 = ptrtoint ptr %dest_addr.sroa.8.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %dest_addr.sroa.8.0, ptr %dest_addr.sroa.8.0..sroa_idx, align 1
  %dest_addr.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %113, i32 4
  %119 = ptrtoint ptr %dest_addr.sroa.9.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %dest_addr.sroa.9.0, ptr %dest_addr.sroa.9.0..sroa_idx, align 1
  %dest_addr.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %113, i32 5
  %120 = ptrtoint ptr %dest_addr.sroa.10.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %dest_addr.sroa.10.0, ptr %dest_addr.sroa.10.0..sroa_idx, align 1
  %121 = load ptr, ptr %ethh, align 4
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %121, i32 0, i32 1
  %122 = call ptr @memset(ptr %h_source, i32 0, i32 6)
  %123 = load ptr, ptr %priv14, align 4
  %ule_sndu_type83 = getelementptr inbounds %struct.dvb_net_priv, ptr %123, i32 0, i32 20
  %124 = ptrtoint ptr %ule_sndu_type83 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %ule_sndu_type83, align 2
  %126 = load ptr, ptr %ethh, align 4
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %h_proto to i32
  call void @__asan_storeN_noabort(i32 %127, i32 2)
  store i16 %125, ptr %h_proto, align 1
  br label %if.end85

if.end85:                                         ; preds = %if.then70, %if.end67.if.end85_crit_edge
  %128 = ptrtoint ptr %priv14 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %priv14, align 4
  %ule_bridged87 = getelementptr inbounds %struct.dvb_net_priv, ptr %129, i32 0, i32 23
  %130 = ptrtoint ptr %ule_bridged87 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %ule_bridged87, align 2
  %131 = load ptr, ptr %priv14, align 4
  %ule_skb89 = getelementptr inbounds %struct.dvb_net_priv, ptr %131, i32 0, i32 17
  %132 = ptrtoint ptr %ule_skb89 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ule_skb89, align 4
  %134 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %h, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %133, i32 0, i32 19
  %136 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %133, i32 0, i32 18
  %138 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %137 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %139 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %133, i32 0, i32 15, i32 0, i32 21
  %140 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %135, i32 0, i32 19
  %141 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %hard_header_len.i, align 2
  %conv.i = zext i16 %142 to i32
  %call.i = tail call ptr @skb_pull(ptr noundef %133, i32 noundef %conv.i) #11
  %143 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %head.i.i, align 8
  %145 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i.i = zext i16 %146 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %144, i32 %conv.i.i.i
  %147 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %add.ptr.i.i.i, align 1
  %149 = and i8 %148, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool.not.i2 = icmp eq i8 %149, 0
  br i1 %tobool.not.i2, label %if.end85.if.end12.i_crit_edge, label %if.then.i

if.end85.if.end12.i_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then.i:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  %broadcast.i = getelementptr inbounds %struct.net_device, ptr %135, i32 0, i32 99
  %150 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %add.ptr.i.i.i, align 4
  %152 = ptrtoint ptr %broadcast.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %broadcast.i, align 4
  %xor.i.i3 = xor i32 %153, %151
  %add.ptr.i.i4 = getelementptr i8, ptr %add.ptr.i.i.i, i32 4
  %154 = ptrtoint ptr %add.ptr.i.i4 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %add.ptr.i.i4, align 2
  %add.ptr1.i.i5 = getelementptr %struct.net_device, ptr %135, i32 0, i32 99, i32 4
  %156 = ptrtoint ptr %add.ptr1.i.i5 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %add.ptr1.i.i5, align 2
  %xor37.i.i6 = xor i16 %157, %155
  %xor3.i.i7 = zext i16 %xor37.i.i6 to i32
  %or.i.i8 = or i32 %xor.i.i3, %xor3.i.i7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i8)
  %cmp.i.i9 = icmp eq i32 %or.i.i8, 0
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %133, i32 0, i32 15
  %158 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  %.33.i = select i1 %cmp.i.i9, i16 8192, i16 16384
  %bf.set.i = or i16 %.33.i, %bf.clear.i
  store i16 %bf.set.i, ptr %pkt_type.i, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then.i, %if.end85.if.end12.i_crit_edge
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %159 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %159, i32 2)
  %160 = load i16, ptr %h_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1535, i16 %160)
  %cmp.i10 = icmp ugt i16 %160, 1535
  br i1 %cmp.i10, label %if.end12.i.dvb_net_eth_type_trans.exit_crit_edge, label %if.end17.i

if.end12.i.dvb_net_eth_type_trans.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dvb_net_eth_type_trans.exit

if.end17.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  %161 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %data.i.i, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %162, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %164)
  %cmp19.i = icmp eq i16 %164, -1
  %..i = select i1 %cmp19.i, i16 1, i16 4
  br label %dvb_net_eth_type_trans.exit

dvb_net_eth_type_trans.exit:                      ; preds = %if.end17.i, %if.end12.i.dvb_net_eth_type_trans.exit_crit_edge
  %retval.0.i11 = phi i16 [ %160, %if.end12.i.dvb_net_eth_type_trans.exit_crit_edge ], [ %..i, %if.end17.i ]
  %165 = ptrtoint ptr %priv14 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %priv14, align 4
  %ule_skb93 = getelementptr inbounds %struct.dvb_net_priv, ptr %166, i32 0, i32 17
  %167 = ptrtoint ptr %ule_skb93 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %ule_skb93, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %168, i32 0, i32 15, i32 0, i32 18
  %169 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %retval.0.i11, ptr %protocol, align 8
  %170 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %h, align 4
  %stats95 = getelementptr inbounds %struct.net_device, ptr %171, i32 0, i32 36
  %172 = ptrtoint ptr %stats95 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %stats95, align 8
  %inc96 = add i32 %173, 1
  store i32 %inc96, ptr %stats95, align 8
  %174 = load ptr, ptr %priv14, align 4
  %ule_skb98 = getelementptr inbounds %struct.dvb_net_priv, ptr %174, i32 0, i32 17
  %175 = ptrtoint ptr %ule_skb98 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %ule_skb98, align 4
  %len99 = getelementptr inbounds %struct.sk_buff, ptr %176, i32 0, i32 6
  %177 = ptrtoint ptr %len99 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %len99, align 4
  %179 = load ptr, ptr %h, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %179, i32 0, i32 36, i32 2
  %180 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %181, %178
  store i32 %add, ptr %rx_bytes, align 8
  %182 = load ptr, ptr %priv14, align 4
  %ule_skb103 = getelementptr inbounds %struct.dvb_net_priv, ptr %182, i32 0, i32 17
  %183 = ptrtoint ptr %ule_skb103 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %ule_skb103, align 4
  %call104 = tail call i32 @netif_rx(ptr noundef %184) #11
  br label %cleanup105

cleanup105:                                       ; preds = %dvb_net_eth_type_trans.exit, %if.then60, %do.end39, %cond.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_be(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @handle_ule_extensions(ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ule_skb = getelementptr inbounds %struct.dvb_net_priv, ptr %p, i32 0, i32 17
  %0 = ptrtoint ptr %ule_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ule_skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %ule_next_hdr = getelementptr inbounds %struct.dvb_net_priv, ptr %p, i32 0, i32 18
  %4 = ptrtoint ptr %ule_next_hdr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %ule_next_hdr, align 4
  %ule_sndu_type.i = getelementptr inbounds %struct.dvb_net_priv, ptr %p, i32 0, i32 20
  %ule_bridged.i = getelementptr inbounds %struct.dvb_net_priv, ptr %p, i32 0, i32 23
  %ule_dbit.i = getelementptr inbounds %struct.dvb_net_priv, ptr %p, i32 0, i32 22
  br label %do.body

do.body:                                          ; preds = %do.cond8.do.body_crit_edge, %entry
  %total_ext_len.0 = phi i32 [ 0, %entry ], [ %add, %do.cond8.do.body_crit_edge ]
  %5 = ptrtoint ptr %ule_sndu_type.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ule_sndu_type.i, align 2
  %and.i = lshr i16 %6, 8
  %7 = and i16 %and.i, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp.i = icmp eq i16 %7, 0
  br i1 %cmp.i, label %if.then.i, label %if.else28.i

if.then.i:                                        ; preds = %do.body
  %8 = and i16 %6, 255
  %idxprom.i = zext i16 %8 to i32
  %arrayidx.i = getelementptr [255 x ptr], ptr @handle_one_ule_extension.ule_mandatory_ext_handlers, i32 0, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.then.i.cleanup_crit_edge, label %if.then8.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8.i:                                       ; preds = %if.then.i
  %call.i = tail call i32 %10(ptr noundef %p) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp11.i = icmp sgt i32 %call.i, -1
  br i1 %cmp11.i, label %if.then13.i, label %if.then8.i.cleanup_crit_edge

if.then8.i.cleanup_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then13.i:                                      ; preds = %if.then8.i
  %11 = ptrtoint ptr %ule_next_hdr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ule_next_hdr, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %call.i
  store ptr %add.ptr.i, ptr %ule_next_hdr, align 4
  %13 = ptrtoint ptr %ule_bridged.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ule_bridged.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool14.not.i = icmp eq i8 %14, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %if.else.i

if.then15.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i, align 2
  %17 = ptrtoint ptr %ule_sndu_type.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %ule_sndu_type.i, align 2
  %add.ptr19.i = getelementptr i8, ptr %add.ptr.i, i32 2
  %18 = ptrtoint ptr %ule_next_hdr to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr19.i, ptr %ule_next_hdr, align 4
  br label %if.end

if.else.i:                                        ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %ule_dbit.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ule_dbit.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool22.not.i = icmp eq i8 %20, 0
  %mul.i = select i1 %tobool22.not.i, i32 18, i32 12
  %add.ptr23.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %21 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr23.i, align 2
  %23 = ptrtoint ptr %ule_sndu_type.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %ule_sndu_type.i, align 2
  br label %if.end

if.else28.i:                                      ; preds = %do.body
  %24 = shl nuw nsw i16 %7, 1
  %shl.i = zext i16 %24 to i32
  %conv5.mask.i = and i16 %6, 255
  %idxprom30.i = zext i16 %conv5.mask.i to i32
  %arrayidx31.i = getelementptr [255 x ptr], ptr @handle_one_ule_extension.ule_optional_ext_handlers, i32 0, i32 %idxprom30.i
  %25 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx31.i, align 4
  %tobool32.not.i = icmp eq ptr %26, null
  br i1 %tobool32.not.i, label %if.else28.i.if.end37.i_crit_edge, label %if.then33.i

if.else28.i.if.end37.i_crit_edge:                 ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

if.then33.i:                                      ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #13
  %call36.i = tail call i32 %26(ptr noundef %p) #11
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then33.i, %if.else28.i.if.end37.i_crit_edge
  %27 = ptrtoint ptr %ule_next_hdr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ule_next_hdr, align 4
  %add.ptr39.i = getelementptr i8, ptr %28, i32 %shl.i
  store ptr %add.ptr39.i, ptr %ule_next_hdr, align 4
  %add.ptr41.i = getelementptr i8, ptr %add.ptr39.i, i32 -2
  %29 = ptrtoint ptr %add.ptr41.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr41.i, align 2
  %31 = ptrtoint ptr %ule_sndu_type.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %ule_sndu_type.i, align 2
  br label %if.end

if.end:                                           ; preds = %if.end37.i, %if.else.i, %if.then15.i
  %ext_len.0.i.ph = phi i32 [ %shl.i, %if.end37.i ], [ %call.i, %if.then15.i ], [ %call.i, %if.else.i ]
  %add = add i32 %ext_len.0.i.ph, %total_ext_len.0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_ule_extensions.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_ule_extensions, %if.then5)) #11
          to label %do.cond8 [label %if.then5], !srcloc !218

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %ule_next_hdr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ule_next_hdr, align 4
  %34 = ptrtoint ptr %ule_sndu_type.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %ule_sndu_type.i, align 2
  %conv = zext i16 %35 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_ule_extensions.__UNIQUE_ID_ddebug347, ptr noundef nonnull @.str.82, ptr noundef %33, i32 noundef %conv, i32 noundef %ext_len.0.i.ph, i32 noundef %add) #11
  br label %do.cond8

do.cond8:                                         ; preds = %if.then5, %if.end
  %36 = ptrtoint ptr %ule_sndu_type.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ule_sndu_type.i, align 2
  %cmp11 = icmp ult i16 %37, 1536
  br i1 %cmp11, label %do.cond8.do.body_crit_edge, label %do.cond8.cleanup_crit_edge

do.cond8.cleanup_crit_edge:                       ; preds = %do.cond8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.cond8.do.body_crit_edge:                       ; preds = %do.cond8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

cleanup:                                          ; preds = %do.cond8.cleanup_crit_edge, %if.then8.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %do.cond8.cleanup_crit_edge ], [ %call.i, %if.then8.i.cleanup_crit_edge ], [ -1, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ule_test_sndu(ptr nocapture noundef readnone %p) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ule_bridged_sndu(ptr nocapture noundef %p) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ule_next_hdr = getelementptr inbounds %struct.dvb_net_priv, ptr %p, i32 0, i32 18
  %0 = ptrtoint ptr %ule_next_hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ule_next_hdr, align 4
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %h_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %3)
  %cmp = icmp ult i16 %3, 1536
  br i1 %cmp, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then:                                          ; preds = %entry
  %conv = zext i16 %3 to i32
  %ule_sndu_len = getelementptr inbounds %struct.dvb_net_priv, ptr %p, i32 0, i32 19
  %4 = ptrtoint ptr %ule_sndu_len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ule_sndu_len, align 4
  %conv2 = zext i16 %5 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 14
  %ule_skb = getelementptr inbounds %struct.dvb_net_priv, ptr %p, i32 0, i32 17
  %6 = ptrtoint ptr %ule_skb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ule_skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i32
  %sub.ptr.sub.neg = sub i32 %conv2, %sub.ptr.lhs.cast
  %sub = add i32 %sub.ptr.sub.neg, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp6.not = icmp eq i32 %sub, %conv
  br i1 %cmp6.not, label %if.then.if.end9_crit_edge, label %if.then.cleanup10_crit_edge

if.then.cleanup10_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup10

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.end9:                                          ; preds = %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  %ule_bridged = getelementptr inbounds %struct.dvb_net_priv, ptr %p, i32 0, i32 23
  %10 = ptrtoint ptr %ule_bridged to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %ule_bridged, align 2
  br label %cleanup10

cleanup10:                                        ; preds = %if.end9, %if.then.cleanup10_crit_edge
  %retval.1 = phi i32 [ 0, %if.end9 ], [ -1, %if.then.cleanup10_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ule_exthdr_padding(ptr nocapture noundef readnone %p) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_generic_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !24, !25, !27, !28, !29, !31, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !51, !53, !54, !56, !57, !59, !60, !61, !62, !64, !66, !68, !69, !70, !72, !73, !74, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !90, !91, !93, !94, !96, !98, !99, !101, !102, !104, !105, !106, !108, !109, !110, !112, !114, !115, !116, !117, !119, !121, !122, !123, !124, !126, !127, !129, !131, !133, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !185, !187, !188, !190, !192, !193, !194, !195, !197, !199, !201, !202, !203, !205, !206, !208}
!llvm.module.flags = !{!209, !210, !211, !212, !213, !214, !215, !216}
!llvm.ident = !{!217}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1604, i32 3}
!2 = !{ptr @__ksymtab_dvb_net_release, !3, !"__ksymtab_dvb_net_release", i1 false, i1 false}
!3 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1615, i32 1}
!4 = !{ptr @dvb_net_init.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1623, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__ksymtab_dvb_net_init, !8, !"__ksymtab_dvb_net_init", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1632, i32 1}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1414, i32 2}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @dvb_net_remove_if._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @dvb_net_remove_if._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1159, i32 5}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @dvb_net_feed_stop.__UNIQUE_ID_ddebug361, !15, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1164, i32 5}
!21 = !{ptr @dvb_net_feed_stop.__UNIQUE_ID_ddebug362, !20, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1172, i32 6}
!24 = !{ptr @dvb_net_feed_stop.__UNIQUE_ID_ddebug363, !23, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1183, i32 4}
!27 = !{ptr @dvb_net_feed_stop._entry, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @dvb_net_feed_stop._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1187, i32 5}
!31 = !{ptr @dvb_net_feed_stop.__UNIQUE_ID_ddebug364, !30, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1194, i32 4}
!34 = !{ptr @dvb_net_feed_stop._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @dvb_net_feed_stop._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1593, i32 10}
!38 = !{ptr @dvbdev_net, !39, !"dvbdev_net", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1588, i32 32}
!40 = !{ptr @dvb_net_fops, !41, !"dvb_net_fops", i1 false, i1 false}
!41 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1580, i32 37}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1356, i32 8}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1362, i32 33}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1366, i32 33}
!48 = !{ptr @dvb_net_add_if.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1384, i32 2}
!50 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @dvb_net_add_if.__key.19, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1385, i32 2}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @dvb_net_add_if.__key.21, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1386, i32 2}
!56 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1395, i32 2}
!59 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @dvb_net_add_if._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @dvb_net_add_if._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @dvb_header_ops, !63, !"dvb_header_ops", i1 false, i1 false}
!63 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1302, i32 32}
!64 = !{ptr @dvb_netdev_ops, !65, !"dvb_netdev_ops", i1 false, i1 false}
!65 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1308, i32 36}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1057, i32 2}
!68 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @dvb_net_feed_start.__UNIQUE_ID_ddebug352, !67, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1060, i32 3}
!72 = !{ptr @dvb_net_feed_start._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @dvb_net_feed_start._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1067, i32 3}
!76 = !{ptr @dvb_net_feed_start.__UNIQUE_ID_ddebug353, !75, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1071, i32 4}
!79 = !{ptr @dvb_net_feed_start._entry.29, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @dvb_net_feed_start._entry_ptr.31, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1079, i32 4}
!83 = !{ptr @dvb_net_feed_start._entry.32, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @dvb_net_feed_start._entry_ptr.34, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1086, i32 4}
!87 = !{ptr @dvb_net_feed_start.__UNIQUE_ID_ddebug354, !86, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1093, i32 5}
!90 = !{ptr @dvb_net_feed_start.__UNIQUE_ID_ddebug355, !89, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1100, i32 4}
!93 = !{ptr @dvb_net_feed_start.__UNIQUE_ID_ddebug356, !92, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!94 = !{ptr @dvb_net_feed_start.__UNIQUE_ID_ddebug357, !95, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!95 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1106, i32 4}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1111, i32 3}
!98 = !{ptr @dvb_net_feed_start.__UNIQUE_ID_ddebug358, !97, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!99 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1117, i32 3}
!101 = !{ptr @dvb_net_feed_start.__UNIQUE_ID_ddebug359, !100, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1120, i32 4}
!104 = !{ptr @dvb_net_feed_start._entry.40, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @dvb_net_feed_start._entry_ptr.42, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1134, i32 4}
!108 = !{ptr @dvb_net_feed_start._entry.43, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @dvb_net_feed_start._entry_ptr.45, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @dvb_net_feed_start.__UNIQUE_ID_ddebug360, !111, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!111 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1140, i32 3}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 902, i32 3}
!114 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @dvb_net_sec._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @dvb_net_sec._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.48, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 923, i32 40}
!119 = !{ptr @.str.49, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1019, i32 3}
!121 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @dvb_net_filter_sec_set._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @dvb_net_filter_sec_set._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1045, i32 2}
!126 = !{ptr @dvb_net_filter_sec_set.__UNIQUE_ID_ddebug351, !125, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!127 = !{ptr @mask_normal, !128, !"mask_normal", i1 false, i1 false}
!128 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1004, i32 11}
!129 = !{ptr @mac_allmulti, !130, !"mac_allmulti", i1 false, i1 false}
!130 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1006, i32 11}
!131 = !{ptr @mask_allmulti, !132, !"mask_allmulti", i1 false, i1 false}
!132 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1005, i32 11}
!133 = !{ptr @mask_promisc, !134, !"mask_promisc", i1 false, i1 false}
!134 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1007, i32 11}
!135 = !{ptr @.str.52, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 882, i32 3}
!137 = !{ptr @.str.53, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @dvb_net_ts_callback._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @dvb_net_ts_callback._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.55, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 884, i32 3}
!142 = !{ptr @dvb_net_ts_callback._entry.54, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @dvb_net_ts_callback._entry_ptr.56, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.57, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 337, i32 3}
!146 = !{ptr @.str.58, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @dvb_net_ule_new_ts_cell._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @dvb_net_ule_new_ts_cell._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.59, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 372, i32 4}
!151 = !{ptr @.str.60, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @dvb_net_ule_ts_pusi._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @dvb_net_ule_ts_pusi._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.61, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 399, i32 3}
!156 = !{ptr @.str.62, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @dvb_net_ule_new_ts._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @dvb_net_ule_new_ts._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.64, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 429, i32 5}
!161 = !{ptr @dvb_net_ule_new_ts._entry.63, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @dvb_net_ule_new_ts._entry_ptr.65, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.67, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 468, i32 4}
!165 = !{ptr @dvb_net_ule_new_ts._entry.66, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @dvb_net_ule_new_ts._entry_ptr.68, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.69, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 497, i32 3}
!169 = !{ptr @.str.70, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @dvb_net_ule_new_payload._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @dvb_net_ule_new_payload._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.72, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 517, i32 4}
!174 = !{ptr @dvb_net_ule_new_payload._entry.71, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @dvb_net_ule_new_payload._entry_ptr.73, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.75, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 584, i32 3}
!178 = !{ptr @dvb_net_ule_new_payload._entry.74, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @dvb_net_ule_new_payload._entry_ptr.76, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.77, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 652, i32 3}
!182 = !{ptr @.str.78, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @dvb_net_ule_check_crc._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @dvb_net_ule_check_crc._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.79, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 692, i32 4}
!187 = !{ptr @dvb_net_ule_check_crc.__UNIQUE_ID_ddebug348, !186, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!188 = distinct !{null, !189, !"bc_addr", i1 false, i1 false}
!189 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 605, i32 18}
!190 = !{ptr @.str.80, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 276, i32 3}
!192 = !{ptr @.str.81, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @handle_ule_extensions.__UNIQUE_ID_ddebug347, !191, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!194 = !{ptr @.str.82, !191, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @handle_one_ule_extension.ule_mandatory_ext_handlers, !196, !"ule_mandatory_ext_handlers", i1 false, i1 false}
!196 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 220, i32 15}
!197 = !{ptr @handle_one_ule_extension.ule_optional_ext_handlers, !198, !"ule_optional_ext_handlers", i1 false, i1 false}
!198 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 224, i32 15}
!199 = !{ptr @.str.83, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1227, i32 3}
!201 = !{ptr @.str.84, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @wq_set_multicast_list.__UNIQUE_ID_ddebug365, !200, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!203 = !{ptr @.str.85, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1230, i32 3}
!205 = !{ptr @wq_set_multicast_list.__UNIQUE_ID_ddebug366, !204, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!206 = !{ptr @.str.86, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/dvb-core/dvb_net.c", i32 1235, i32 3}
!208 = !{ptr @wq_set_multicast_list.__UNIQUE_ID_ddebug367, !207, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!209 = !{i32 1, !"wchar_size", i32 2}
!210 = !{i32 1, !"min_enum_size", i32 4}
!211 = !{i32 8, !"branch-target-enforcement", i32 0}
!212 = !{i32 8, !"sign-return-address", i32 0}
!213 = !{i32 8, !"sign-return-address-all", i32 0}
!214 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!215 = !{i32 7, !"uwtable", i32 1}
!216 = !{i32 7, !"frame-pointer", i32 2}
!217 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!218 = !{i64 2148993964, i64 2148993969, i64 2148993982, i64 2148994026, i64 2148994060, i64 2148994081}
!219 = !{i64 640597, i64 640614}
!220 = !{i8 0, i8 2}
