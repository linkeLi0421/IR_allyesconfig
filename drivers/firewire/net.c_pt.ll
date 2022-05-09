; ModuleID = '/llk/IR_all_yes/drivers/firewire/net.c_pt.bc'
source_filename = "../drivers/firewire/net.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fw_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fw_descriptor = type { %struct.list_head, i32, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee1394_device_id = type { i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fw_address_region = type { i64, i64 }
%union.fwnet_hwaddr = type { %struct.anon.123 }
%struct.anon.123 = type { i64, i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.fwnet_device = type { %struct.list_head, %struct.spinlock, i32, ptr, %struct.fw_iso_buffer, ptr, i32, i32, i32, i32, i16, %struct.fw_address_handler, i64, i32, i32, %struct.list_head, ptr, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.fw_card = type { ptr, ptr, %struct.kref, %struct.completion, i32, i32, i32, i64, %struct.list_head, i64, i32, i32, i32, i32, i64, i32, i32, i32, %struct.spinlock, ptr, ptr, ptr, i8, i32, i8, i32, %struct.list_head, %struct.list_head, %struct.delayed_work, i8, %struct.delayed_work, i32, i32, i32, i8, i8, i8, i8, i32, [256 x i32], i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.122, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.122 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.fwnet_peer = type { %struct.list_head, ptr, i64, %struct.list_head, i32, i16, i16, i32, i32, i32 }
%struct.fwnet_partial_datagram = type { %struct.list_head, %struct.list_head, ptr, ptr, i16, i16, i16 }
%struct.fwnet_header = type { [16 x i8], i16 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.callback_head = type { ptr, ptr }
%struct.fw_iso_packet = type { i16, i16, [0 x i32] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
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
%struct.fwnet_packet_task = type { %struct.fw_transaction, %struct.rfc2734_header, ptr, ptr, i32, i64, i16, i16, i8, i8, i8 }
%struct.fw_transaction = type { i32, i32, %struct.list_head, ptr, i8, %struct.timer_list, %struct.fw_packet, ptr, ptr }
%struct.fw_packet = type { i32, i32, [4 x i32], i32, ptr, i32, i32, i8, i32, ptr, i32, %struct.list_head, ptr }
%struct.rfc2734_header = type { i32, i32 }
%struct.fwnet_fragment_info = type { %struct.list_head, i16, i16 }

@__initcall__kmod_firewire_net__360_1699_fwnet_init6 = internal global ptr @fwnet_init, section ".initcall6.init", align 4
@fwnet_driver = internal global { %struct.fw_driver, [36 x i8] } { %struct.fw_driver { %struct.device_driver { ptr @.str.1, ptr @fw_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @fwnet_probe, ptr @fwnet_update, ptr @fwnet_remove, ptr @fwnet_id_table }, [36 x i8] zeroinitializer }, align 32
@fwnet_packet_task_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rfc3146_unit_directory = internal global { %struct.fw_descriptor, [40 x i8] } { %struct.fw_descriptor { %struct.list_head zeroinitializer, i32 13, i32 0, i32 -788529152, ptr @rfc3146_unit_directory_data }, [40 x i8] zeroinitializer }, align 32
@rfc2374_unit_directory = internal global { %struct.fw_descriptor, [40 x i8] } { %struct.fw_descriptor { %struct.list_head zeroinitializer, i32 13, i32 0, i32 -788529152, ptr @rfc2374_unit_directory_data }, [40 x i8] zeroinitializer }, align 32
@__exitcall_fwnet_cleanup = internal global ptr @fwnet_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_author361 = internal constant [55 x i8] c"firewire_net.author=Jay Fenlason <fenlason@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description362 = internal constant [63 x i8] c"firewire_net.description=IP over IEEE1394 as per RFC 2734/3146\00", section ".modinfo", align 1
@__UNIQUE_ID_file363 = internal constant [48 x i8] c"firewire_net.file=drivers/firewire/firewire-net\00", section ".modinfo", align 1
@__UNIQUE_ID_license364 = internal constant [25 x i8] c"firewire_net.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"packet_task\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"firewire_net\00", [19 x i8] zeroinitializer }, align 32
@fw_bus_type = external dso_local global %struct.bus_type, align 4
@fwnet_id_table = internal constant { [3 x %struct.ieee1394_device_id], [56 x i8] } { [3 x %struct.ieee1394_device_id] [%struct.ieee1394_device_id { i32 12, i32 0, i32 0, i32 94, i32 1, i32 0 }, %struct.ieee1394_device_id { i32 12, i32 0, i32 0, i32 94, i32 2, i32 0 }, %struct.ieee1394_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@fwnet_device_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @fwnet_device_mutex, i64 52), ptr getelementptr (i8, ptr @fwnet_device_mutex, i64 52) }, ptr @fwnet_device_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"firewire%d\00", [21 x i8] zeroinitializer }, align 32
@fwnet_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@fwnet_device_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @fwnet_device_list, ptr @fwnet_device_list }, [24 x i8] zeroinitializer }, align 32
@fwnet_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1509, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"IP over IEEE 1394 on card %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fwnet_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/firewire/net.c\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fwnet_probe._entry_ptr = internal global ptr @fwnet_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fwnet_device_mutex.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fwnet_device_mutex\00", [45 x i8] zeroinitializer }, align 32
@fwnet_header_ops = internal constant { %struct.header_ops, [40 x i8] } { %struct.header_ops { ptr @fwnet_header_create, ptr @fwnet_header_parse, ptr @fwnet_header_cache, ptr @fwnet_header_cache_update, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fwnet_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @fwnet_open, ptr @fwnet_stop, ptr @fwnet_tx, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@fwnet_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fwnet_receive_broadcast._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.6, i32 807, ptr @.str.13, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"requeue failed\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fwnet_receive_broadcast\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@fwnet_receive_broadcast._entry_ptr = internal global ptr @fwnet_receive_broadcast._entry, section ".printk_index", align 4
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@fwnet_write_complete.j = internal global { i32, [28 x i8] } zeroinitializer, align 32
@fwnet_write_complete.last_rcode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@fwnet_write_complete.errors_skipped = internal global { i32, [28 x i8] } zeroinitializer, align 32
@fwnet_write_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.6, i32 942, ptr @.str.13, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"fwnet_write_complete failed: %x (skipped %d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fwnet_write_complete\00", [43 x i8] zeroinitializer }, align 32
@fwnet_write_complete._entry_ptr = internal global ptr @fwnet_write_complete._entry, section ".printk_index", align 4
@fwnet_transmit_packet_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.6, i32 865, ptr @.str.13, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"outstanding packet %x lf %x, header %x,%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fwnet_transmit_packet_done\00", [37 x i8] zeroinitializer }, align 32
@fwnet_transmit_packet_done._entry_ptr = internal global ptr @fwnet_transmit_packet_done._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@fw_high_memory_region = external dso_local constant %struct.fw_address_region, align 8
@fwnet_receive_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.6, i32 729, ptr @.str.13, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"incoming packet failure\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fwnet_receive_packet\00", [43 x i8] zeroinitializer }, align 32
@fwnet_receive_packet._entry_ptr = internal global ptr @fwnet_receive_packet._entry, section ".printk_index", align 4
@rfc3146_unit_directory_data = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 262144, i32 301989982, i32 -2130706429, i32 318767106, i32 -2130706427, i32 196608, i32 0, i32 0, i32 1229016641, i32 196608, i32 0, i32 0, i32 1230009910], [44 x i8] zeroinitializer }, align 32
@rfc2374_unit_directory_data = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 262144, i32 301989982, i32 -2130706429, i32 318767105, i32 -2130706427, i32 196608, i32 0, i32 0, i32 1229016641, i32 196608, i32 0, i32 0, i32 1230009908], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 16, i64 2048, i64 2054, i64 34525]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 16, i64 2048, i64 2054, i64 34525]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.32 = private unnamed_addr constant [13 x i8] c"fwnet_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1606, i32 25 }
@___asan_gen_.35 = private unnamed_addr constant [24 x i8] c"fwnet_packet_task_cache\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 810, i32 27 }
@___asan_gen_.38 = private unnamed_addr constant [23 x i8] c"rfc3146_unit_directory\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1657, i32 29 }
@___asan_gen_.41 = private unnamed_addr constant [23 x i8] c"rfc2374_unit_directory\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1634, i32 29 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1678, i32 46 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1609, i32 13 }
@___asan_gen_.50 = private unnamed_addr constant [15 x i8] c"fwnet_id_table\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1588, i32 40 }
@___asan_gen_.53 = private unnamed_addr constant [19 x i8] c"fwnet_device_mutex\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1457, i32 8 }
@___asan_gen_.59 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1468, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [18 x i8] c"fwnet_device_list\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 132, i32 8 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1508, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 131, i32 8 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"fwnet_header_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 276, i32 32 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"fwnet_netdev_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1374, i32 36 }
@___asan_gen_.98 = private unnamed_addr constant [18 x i8] c"fwnet_ethtool_ops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1370, i32 33 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 807, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 44, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 933, i32 23 }
@___asan_gen_.119 = private unnamed_addr constant [11 x i8] c"last_rcode\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 934, i32 13 }
@___asan_gen_.122 = private unnamed_addr constant [15 x i8] c"errors_skipped\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 934, i32 25 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 940, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 862, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 729, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [28 x i8] c"rfc3146_unit_directory_data\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1641, i32 18 }
@___asan_gen_.155 = private unnamed_addr constant [28 x i8] c"rfc2374_unit_directory_data\00", align 1
@___asan_gen_.156 = private constant [26 x i8] c"../drivers/firewire/net.c\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1618, i32 18 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author361, ptr @__UNIQUE_ID_description362, ptr @__UNIQUE_ID_file363, ptr @__UNIQUE_ID_license364, ptr @__exitcall_fwnet_cleanup, ptr @__initcall__kmod_firewire_net__360_1699_fwnet_init6, ptr @fwnet_cleanup, ptr @fwnet_probe._entry, ptr @fwnet_probe._entry_ptr, ptr @fwnet_receive_broadcast._entry, ptr @fwnet_receive_broadcast._entry_ptr, ptr @fwnet_receive_packet._entry, ptr @fwnet_receive_packet._entry_ptr, ptr @fwnet_transmit_packet_done._entry, ptr @fwnet_transmit_packet_done._entry_ptr, ptr @fwnet_write_complete._entry, ptr @fwnet_write_complete._entry_ptr, ptr @fwnet_driver, ptr @fwnet_packet_task_cache, ptr @rfc3146_unit_directory, ptr @rfc2374_unit_directory, ptr @.str, ptr @.str.1, ptr @fwnet_id_table, ptr @fwnet_device_mutex, ptr @.str.2, ptr @fwnet_probe.__key, ptr @.str.3, ptr @fwnet_device_list, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @fwnet_header_ops, ptr @fwnet_netdev_ops, ptr @fwnet_ethtool_ops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @fwnet_write_complete.j, ptr @fwnet_write_complete.last_rcode, ptr @fwnet_write_complete.errors_skipped, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @rfc3146_unit_directory_data, ptr @rfc2374_unit_directory_data], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwnet_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwnet_packet_task_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfc3146_unit_directory to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfc2374_unit_directory to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwnet_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwnet_device_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwnet_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwnet_device_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwnet_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwnet_header_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwnet_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwnet_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwnet_receive_broadcast._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwnet_write_complete.j to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwnet_write_complete.last_rcode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwnet_write_complete.errors_skipped to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwnet_write_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwnet_transmit_packet_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwnet_receive_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfc3146_unit_directory_data to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfc2374_unit_directory_data to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fwnet_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fw_core_add_descriptor(ptr noundef nonnull @rfc2374_unit_directory) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @fw_core_add_descriptor(ptr noundef nonnull @rfc3146_unit_directory) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 184, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  store ptr %call5, ptr @fwnet_packet_task_cache, align 4
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.out2_crit_edge, label %if.end8

if.end4.out2_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %out2

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @driver_register(ptr noundef nonnull @fwnet_driver) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %0 = load ptr, ptr @fwnet_packet_task_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #14
  br label %out2

out2:                                             ; preds = %if.end12, %if.end4.out2_crit_edge
  %err.0 = phi i32 [ %call9, %if.end12 ], [ -12, %if.end4.out2_crit_edge ]
  tail call void @fw_core_remove_descriptor(ptr noundef nonnull @rfc3146_unit_directory) #14
  br label %out

out:                                              ; preds = %out2, %if.end.out_crit_edge
  %err.1 = phi i32 [ %call1, %if.end.out_crit_edge ], [ %err.0, %out2 ]
  tail call void @fw_core_remove_descriptor(ptr noundef nonnull @rfc2374_unit_directory) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fwnet_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @driver_unregister(ptr noundef nonnull @fwnet_driver) #14
  %0 = load ptr, ptr @fwnet_packet_task_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #14
  tail call void @fw_core_remove_descriptor(ptr noundef nonnull @rfc3146_unit_directory) #14
  tail call void @fw_core_remove_descriptor(ptr noundef nonnull @rfc2374_unit_directory) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_core_remove_descriptor(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_core_add_descriptor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwnet_probe(ptr nocapture noundef %unit, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  %ha = alloca %union.fwnet_hwaddr, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %card1 = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ha) #14
  %4 = getelementptr inbounds %struct.anon.123, ptr %ha, i32 0, i32 1
  %5 = getelementptr inbounds %struct.anon.123, ptr %ha, i32 0, i32 2
  %6 = getelementptr inbounds %struct.anon.123, ptr %ha, i32 0, i32 3
  %7 = getelementptr inbounds %struct.anon.123, ptr %ha, i32 0, i32 4
  %8 = call ptr @memset(ptr %ha, i32 255, i32 16)
  tail call void @mutex_lock_nested(ptr noundef nonnull @fwnet_device_mutex, i32 noundef 0) #14
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %dev.0.in.i = phi ptr [ @fwnet_device_list, %entry ], [ %dev.0.i, %for.body.i.for.cond.i_crit_edge ]
  %9 = ptrtoint ptr %dev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %dev.0.i = load ptr, ptr %dev.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %dev.0.i, @fwnet_device_list
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %card1.i = getelementptr inbounds %struct.fwnet_device, ptr %dev.0.i, i32 0, i32 16
  %10 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card1.i, align 8
  %cmp2.i = icmp eq ptr %11, %3
  br i1 %cmp2.i, label %fwnet_dev_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

fwnet_dev_find.exit:                              ; preds = %for.body.i
  %tobool.not = icmp eq ptr %dev.0.i, null
  br i1 %tobool.not, label %fwnet_dev_find.exit.if.end_crit_edge, label %have_dev

fwnet_dev_find.exit.if.end_crit_edge:             ; preds = %fwnet_dev_find.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %fwnet_dev_find.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  %call3 = tail call ptr @alloc_netdev_mqs(i32 noundef 168, ptr noundef nonnull @.str.2, i8 noundef zeroext 0, ptr noundef nonnull @fwnet_init_dev, i32 noundef 1, i32 noundef 1) #14
  %cmp = icmp eq ptr %call3, null
  br i1 %cmp, label %if.then4, label %if.end.i

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef nonnull @fwnet_device_mutex) #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %device6 = getelementptr inbounds %struct.fw_card, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %device6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device6, align 4
  %dev7 = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 133
  %parent = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 133, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call3, i32 2304
  %lock = getelementptr i8, ptr %call3, i32 2312
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @fwnet_probe.__key, i16 noundef signext 3) #14
  %broadcast_state = getelementptr i8, ptr %call3, i32 2356
  %15 = ptrtoint ptr %broadcast_state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %broadcast_state, align 4
  %broadcast_rcv_context = getelementptr i8, ptr %call3, i32 2360
  %16 = ptrtoint ptr %broadcast_rcv_context to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %broadcast_rcv_context, align 8
  %broadcast_xmt_max_payload = getelementptr i8, ptr %call3, i32 2396
  %17 = ptrtoint ptr %broadcast_xmt_max_payload to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %broadcast_xmt_max_payload, align 4
  %broadcast_xmt_datagramlabel = getelementptr i8, ptr %call3, i32 2400
  %18 = ptrtoint ptr %broadcast_xmt_datagramlabel to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %broadcast_xmt_datagramlabel, align 8
  %local_fifo = getelementptr i8, ptr %call3, i32 2440
  %19 = ptrtoint ptr %local_fifo to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 -1, ptr %local_fifo, align 8
  %queued_datagrams = getelementptr i8, ptr %call3, i32 2448
  %20 = ptrtoint ptr %queued_datagrams to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %queued_datagrams, align 8
  %peer_list = getelementptr i8, ptr %call3, i32 2456
  %21 = ptrtoint ptr %peer_list to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %peer_list, ptr %peer_list, align 4
  %prev.i = getelementptr i8, ptr %call3, i32 2460
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %peer_list, ptr %prev.i, align 4
  %card10 = getelementptr i8, ptr %call3, i32 2464
  %23 = ptrtoint ptr %card10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %3, ptr %card10, align 8
  %netdev11 = getelementptr i8, ptr %call3, i32 2468
  %24 = ptrtoint ptr %netdev11 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call3, ptr %netdev11, align 4
  %handler.i = getelementptr i8, ptr %call3, i32 2408
  %length.i = getelementptr i8, ptr %call3, i32 2416
  %25 = ptrtoint ptr %length.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 4096, ptr %length.i, align 8
  %address_callback.i = getelementptr i8, ptr %call3, i32 2424
  %26 = ptrtoint ptr %address_callback.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @fwnet_receive_packet, ptr %address_callback.i, align 8
  %callback_data.i = getelementptr i8, ptr %call3, i32 2428
  %27 = ptrtoint ptr %callback_data.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr.i, ptr %callback_data.i, align 4
  %call.i = tail call i32 @fw_core_add_address_handler(ptr noundef %handler.i, ptr noundef nonnull @fw_high_memory_region) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp slt i32 %call.i, 0
  br i1 %cmp5.i, label %if.end.i.out_crit_edge, label %if.end15

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end15:                                         ; preds = %if.end.i
  %28 = ptrtoint ptr %handler.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %handler.i, align 8
  %30 = ptrtoint ptr %local_fifo to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %local_fifo, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 20
  %31 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1500, ptr %mtu, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 30
  %32 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 68, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 31
  %33 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4096, ptr %max_mtu, align 4
  %guid = getelementptr inbounds %struct.fw_card, ptr %3, i32 0, i32 14
  %34 = ptrtoint ptr %guid to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %guid, align 8
  %36 = ptrtoint ptr %ha to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %ha, align 8
  %37 = ptrtoint ptr %card10 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %card10, align 8
  %max_receive = getelementptr inbounds %struct.fw_card, ptr %38, i32 0, i32 15
  %39 = ptrtoint ptr %max_receive to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_receive, align 8
  %conv = trunc i32 %40 to i8
  %41 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv, ptr %4, align 8
  %link_speed = getelementptr inbounds %struct.fw_card, ptr %38, i32 0, i32 16
  %42 = ptrtoint ptr %link_speed to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %link_speed, align 4
  %conv19 = trunc i32 %43 to i8
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv19, ptr %5, align 1
  %45 = load i64, ptr %local_fifo, align 8
  %shr = lshr i64 %45, 32
  %conv21 = trunc i64 %shr to i16
  %46 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv21, ptr %6, align 2
  %conv23 = trunc i64 %45 to i32
  %47 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv23, ptr %7, align 4
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 56
  %48 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %addr_len.i, align 1
  %conv.i = zext i8 %49 to i32
  call void @dev_addr_mod(ptr noundef nonnull %call3, i32 noundef 0, ptr noundef nonnull %ha, i32 noundef %conv.i) #14
  %broadcast = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 99
  %50 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %addr_len.i, align 1
  %conv25 = zext i8 %51 to i32
  %52 = call ptr @memset(ptr %broadcast, i32 255, i32 %conv25)
  %call26 = call i32 @register_netdev(ptr noundef nonnull %call3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end29:                                         ; preds = %if.end15
  %53 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @fwnet_device_list, i32 0, i32 1), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %add.ptr.i, ptr noundef %53, ptr noundef nonnull @fwnet_device_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end29.list_add_tail.exit_crit_edge

if.end29.list_add_tail.exit_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %add.ptr.i, ptr getelementptr inbounds (%struct.list_head, ptr @fwnet_device_list, i32 0, i32 1), align 4
  %54 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @fwnet_device_list, ptr %add.ptr.i, align 4
  %prev3.i.i = getelementptr i8, ptr %call3, i32 2308
  %55 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %53, ptr %prev3.i.i, align 4
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %add.ptr.i, ptr %53, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end29.list_add_tail.exit_crit_edge
  %57 = ptrtoint ptr %device6 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %device6, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %60, null
  br i1 %tobool.not.i, label %if.end.i95, label %list_add_tail.exit.have_dev.thread_crit_edge

list_add_tail.exit.have_dev.thread_crit_edge:     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %have_dev.thread

if.end.i95:                                       ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %58, align 4
  br label %have_dev.thread

have_dev:                                         ; preds = %fwnet_dev_find.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %63 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %63, i32 noundef 3264, i32 noundef 56) #17
  %tobool.not.i97 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i97, label %have_dev.if.end42_crit_edge, label %have_dev.if.end.i99_crit_edge

have_dev.if.end.i99_crit_edge:                    ; preds = %have_dev
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i99

have_dev.if.end42_crit_edge:                      ; preds = %have_dev
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

have_dev.thread:                                  ; preds = %if.end.i95, %list_add_tail.exit.have_dev.thread_crit_edge
  %retval.0.i96 = phi ptr [ %62, %if.end.i95 ], [ %60, %list_add_tail.exit.have_dev.thread_crit_edge ]
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev7, ptr noundef nonnull @.str.4, ptr noundef %retval.0.i96) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %64 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i123 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %64, i32 noundef 3264, i32 noundef 56) #17
  %tobool.not.i97124 = icmp eq ptr %call7.i.i123, null
  br i1 %tobool.not.i97124, label %if.then40, label %have_dev.thread.if.end.i99_crit_edge

have_dev.thread.if.end.i99_crit_edge:             ; preds = %have_dev.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i99

if.end.i99:                                       ; preds = %have_dev.thread.if.end.i99_crit_edge, %have_dev.if.end.i99_crit_edge
  %call7.i.i129 = phi ptr [ %call7.i.i123, %have_dev.thread.if.end.i99_crit_edge ], [ %call7.i.i, %have_dev.if.end.i99_crit_edge ]
  %dev.0127 = phi ptr [ %add.ptr.i, %have_dev.thread.if.end.i99_crit_edge ], [ %dev.0.i, %have_dev.if.end.i99_crit_edge ]
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 8
  %65 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call7.i.i129, ptr %driver_data.i.i, align 4
  %dev2.i = getelementptr inbounds %struct.fwnet_peer, ptr %call7.i.i129, i32 0, i32 1
  %66 = ptrtoint ptr %dev2.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %dev.0127, ptr %dev2.i, align 8
  %config_rom.i = getelementptr i8, ptr %1, i32 1028
  %67 = ptrtoint ptr %config_rom.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %config_rom.i, align 4
  %arrayidx.i = getelementptr i32, ptr %68, i32 3
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i, align 4
  %conv.i98 = zext i32 %70 to i64
  %shl.i = shl nuw i64 %conv.i98, 32
  %arrayidx4.i = getelementptr i32, ptr %68, i32 4
  %71 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx4.i, align 4
  %conv5.i = zext i32 %72 to i64
  %or.i = or i64 %shl.i, %conv5.i
  %guid.i = getelementptr inbounds %struct.fwnet_peer, ptr %call7.i.i129, i32 0, i32 2
  %73 = ptrtoint ptr %guid.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %or.i, ptr %guid.i, align 8
  %pd_list.i = getelementptr inbounds %struct.fwnet_peer, ptr %call7.i.i129, i32 0, i32 3
  %74 = ptrtoint ptr %pd_list.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %pd_list.i, ptr %pd_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.fwnet_peer, ptr %call7.i.i129, i32 0, i32 3, i32 1
  %75 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %pd_list.i, ptr %prev.i.i, align 4
  %pdg_size.i = getelementptr inbounds %struct.fwnet_peer, ptr %call7.i.i129, i32 0, i32 4
  %76 = ptrtoint ptr %pdg_size.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %pdg_size.i, align 8
  %datagram_label.i = getelementptr inbounds %struct.fwnet_peer, ptr %call7.i.i129, i32 0, i32 5
  %77 = ptrtoint ptr %datagram_label.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 0, ptr %datagram_label.i, align 4
  %max_speed.i = getelementptr i8, ptr %1, i32 -8
  %78 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %max_speed.i, align 8
  %speed.i = getelementptr inbounds %struct.fwnet_peer, ptr %call7.i.i129, i32 0, i32 9
  %80 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %speed.i, align 8
  %max_rec.i = getelementptr i8, ptr %1, i32 1040
  %81 = ptrtoint ptr %max_rec.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %bf.load.i = load i16, ptr %max_rec.i, align 8
  %bf.lshr.i = lshr i16 %bf.load.i, 11
  %bf.clear.i = and i16 %bf.lshr.i, 15
  %bf.cast.i = zext i16 %bf.clear.i to i32
  %add.i.i = add i32 %79, 8
  %82 = call i32 @llvm.umin.i32(i32 %add.i.i, i32 %bf.cast.i) #14
  %83 = call i32 @llvm.umax.i32(i32 %82, i32 8) #14
  %84 = call i32 @llvm.umin.i32(i32 %83, i32 11) #14
  %shl.i.i = shl nuw nsw i32 2, %84
  %85 = trunc i32 %shl.i.i to i16
  %conv8.i = add nsw i16 %85, -8
  %max_payload.i = getelementptr inbounds %struct.fwnet_peer, ptr %call7.i.i129, i32 0, i32 6
  %86 = ptrtoint ptr %max_payload.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv8.i, ptr %max_payload.i, align 2
  %generation.i = getelementptr i8, ptr %1, i32 -12
  %87 = ptrtoint ptr %generation.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %generation.i, align 4
  %generation9.i = getelementptr inbounds %struct.fwnet_peer, ptr %call7.i.i129, i32 0, i32 8
  %89 = ptrtoint ptr %generation9.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %generation9.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !94
  %node_id.i = getelementptr i8, ptr %1, i32 -16
  %90 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %node_id.i, align 8
  %node_id13.i = getelementptr inbounds %struct.fwnet_peer, ptr %call7.i.i129, i32 0, i32 7
  %92 = ptrtoint ptr %node_id13.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %node_id13.i, align 8
  %lock.i = getelementptr inbounds %struct.fwnet_device, ptr %dev.0127, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #14
  %peer_list.i = getelementptr inbounds %struct.fwnet_device, ptr %dev.0127, i32 0, i32 15
  %prev.i37.i = getelementptr inbounds %struct.fwnet_device, ptr %dev.0127, i32 0, i32 15, i32 1
  %93 = ptrtoint ptr %prev.i37.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prev.i37.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i129, ptr noundef %94, ptr noundef %peer_list.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i99.list_add_tail.exit.i_crit_edge

if.end.i99.list_add_tail.exit.i_crit_edge:        ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #16
  %95 = ptrtoint ptr %prev.i37.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call7.i.i129, ptr %prev.i37.i, align 4
  %96 = ptrtoint ptr %call7.i.i129 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %peer_list.i, ptr %call7.i.i129, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i129, i32 0, i32 1
  %97 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %prev3.i.i.i, align 4
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %call7.i.i129, ptr %94, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i99.list_add_tail.exit.i_crit_edge
  %peer_count.i = getelementptr inbounds %struct.fwnet_device, ptr %dev.0127, i32 0, i32 14
  %99 = ptrtoint ptr %peer_count.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %peer_count.i, align 4
  %inc.i = add i32 %100, 1
  store i32 %inc.i, ptr %peer_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc.i)
  %cmp.i.i = icmp sgt i32 %inc.i, 1
  %netdev.i.i = getelementptr inbounds %struct.fwnet_device, ptr %dev.0127, i32 0, i32 17
  %101 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %netdev.i.i, align 4
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @netif_carrier_on(ptr noundef %102) #14
  br label %fwnet_add_peer.exit.thread

if.else.i.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @netif_carrier_off(ptr noundef %102) #14
  br label %fwnet_add_peer.exit.thread

fwnet_add_peer.exit.thread:                       ; preds = %if.else.i.i, %if.then.i.i
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #14
  br label %if.end42

if.then40:                                        ; preds = %have_dev.thread
  call void @unregister_netdev(ptr noundef nonnull %call3) #14
  %call.i.i101 = call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr.i) #14
  br i1 %call.i.i101, label %if.end.i.i103, label %if.then40.list_del.exit_crit_edge

if.then40.list_del.exit_crit_edge:                ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i103:                                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i102 = getelementptr i8, ptr %call3, i32 2308
  %103 = ptrtoint ptr %prev.i.i102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %prev.i.i102, align 4
  %105 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %add.ptr.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %104, ptr %prev1.i.i.i, align 4
  %108 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %106, ptr %104, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i103, %if.then40.list_del.exit_crit_edge
  %109 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr.i, align 4
  %prev.i104 = getelementptr i8, ptr %call3, i32 2308
  %110 = ptrtoint ptr %prev.i104 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i104, align 4
  br label %out

out:                                              ; preds = %list_del.exit, %if.end15.out_crit_edge, %if.end.i.out_crit_edge
  %ret.0 = phi i32 [ -12, %list_del.exit ], [ %call26, %if.end15.out_crit_edge ], [ %call.i, %if.end.i.out_crit_edge ]
  %local_fifo.i105 = getelementptr i8, ptr %call3, i32 2440
  %111 = ptrtoint ptr %local_fifo.i105 to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %local_fifo.i105, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %112)
  %cmp.i = icmp eq i64 %112, -1
  br i1 %cmp.i, label %out.fwnet_fifo_stop.exit_crit_edge, label %if.end.i107

out.fwnet_fifo_stop.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %fwnet_fifo_stop.exit

if.end.i107:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  %handler.i106 = getelementptr i8, ptr %call3, i32 2408
  call void @fw_core_remove_address_handler(ptr noundef %handler.i106) #14
  %113 = ptrtoint ptr %local_fifo.i105 to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 -1, ptr %local_fifo.i105, align 8
  br label %fwnet_fifo_stop.exit

fwnet_fifo_stop.exit:                             ; preds = %if.end.i107, %out.fwnet_fifo_stop.exit_crit_edge
  call void @free_netdev(ptr noundef nonnull %call3) #14
  br label %if.end42

if.end42:                                         ; preds = %fwnet_fifo_stop.exit, %fwnet_add_peer.exit.thread, %have_dev.if.end42_crit_edge
  %ret.1 = phi i32 [ %ret.0, %fwnet_fifo_stop.exit ], [ 0, %fwnet_add_peer.exit.thread ], [ -12, %have_dev.if.end42_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @fwnet_device_mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then4
  %retval.0 = phi i32 [ %ret.1, %if.end42 ], [ -12, %if.then4 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ha) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fwnet_update(ptr nocapture noundef readonly %unit) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %generation3 = getelementptr i8, ptr %1, i32 -12
  %4 = ptrtoint ptr %generation3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %generation3, align 4
  %dev = getelementptr inbounds %struct.fwnet_peer, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %lock = getelementptr inbounds %struct.fwnet_device, ptr %7, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %node_id = getelementptr i8, ptr %1, i32 -16
  %8 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %node_id, align 8
  %node_id4 = getelementptr inbounds %struct.fwnet_peer, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %node_id4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %node_id4, align 8
  %generation5 = getelementptr inbounds %struct.fwnet_peer, ptr %3, i32 0, i32 8
  %11 = ptrtoint ptr %generation5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %5, ptr %generation5, align 4
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %lock7 = getelementptr inbounds %struct.fwnet_device, ptr %13, i32 0, i32 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock7) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fwnet_remove(ptr nocapture noundef readonly %unit) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev1 = getelementptr inbounds %struct.fwnet_peer, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @fwnet_device_mutex, i32 noundef 0) #14
  %netdev = getelementptr inbounds %struct.fwnet_device, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  %lock.i = getelementptr inbounds %struct.fwnet_device, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #14
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.list_del.exit.i_crit_edge

entry.list_del.exit.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %entry.list_del.exit.i_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %peer_count.i = getelementptr inbounds %struct.fwnet_device, ptr %3, i32 0, i32 14
  %14 = ptrtoint ptr %peer_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %peer_count.i, align 4
  %dec.i = add i32 %15, -1
  store i32 %dec.i, ptr %peer_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i.i = icmp sgt i32 %dec.i, 1
  %16 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev, align 4
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @netif_carrier_on(ptr noundef %17) #14
  br label %set_carrier_state.exit.i

if.else.i.i:                                      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @netif_carrier_off(ptr noundef %17) #14
  br label %set_carrier_state.exit.i

set_carrier_state.exit.i:                         ; preds = %if.else.i.i, %if.then.i.i
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #14
  %pd_list.i = getelementptr inbounds %struct.fwnet_peer, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %pd_list.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pd_list.i, align 8
  %cmp.not23.i = icmp eq ptr %19, %pd_list.i
  br i1 %cmp.not23.i, label %set_carrier_state.exit.i.fwnet_remove_peer.exit_crit_edge, label %set_carrier_state.exit.i.for.body.i_crit_edge

set_carrier_state.exit.i.for.body.i_crit_edge:    ; preds = %set_carrier_state.exit.i
  br label %for.body.i

set_carrier_state.exit.i.fwnet_remove_peer.exit_crit_edge: ; preds = %set_carrier_state.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fwnet_remove_peer.exit

for.body.i:                                       ; preds = %fwnet_pd_delete.exit.i.for.body.i_crit_edge, %set_carrier_state.exit.i.for.body.i_crit_edge
  %pd.024.i = phi ptr [ %pd_next.0.i, %fwnet_pd_delete.exit.i.for.body.i_crit_edge ], [ %19, %set_carrier_state.exit.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %pd.024.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %pd_next.0.i = load ptr, ptr %pd.024.i, align 4
  %fi_list.i.i = getelementptr inbounds %struct.fwnet_partial_datagram, ptr %pd.024.i, i32 0, i32 1
  %21 = ptrtoint ptr %fi_list.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fi_list.i.i, align 4
  %cmp.not19.i.i = icmp eq ptr %22, %fi_list.i.i
  br i1 %cmp.not19.i.i, label %for.body.i.for.end.i.i_crit_edge, label %for.body.i.for.body.i.i_crit_edge

for.body.i.for.body.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.body.i.i

for.body.i.for.end.i.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.for.body.i.i_crit_edge
  %fi.020.i.i = phi ptr [ %n.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %22, %for.body.i.for.body.i.i_crit_edge ]
  %23 = ptrtoint ptr %fi.020.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %n.0.i.i = load ptr, ptr %fi.020.i.i, align 4
  tail call void @kfree(ptr noundef %fi.020.i.i) #14
  %cmp.not.i.i = icmp eq ptr %n.0.i.i, %fi_list.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.body.i.for.end.i.i_crit_edge
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pd.024.i) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.end.i.i.fwnet_pd_delete.exit.i_crit_edge

for.end.i.i.fwnet_pd_delete.exit.i_crit_edge:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fwnet_pd_delete.exit.i

if.end.i.i.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %pd.024.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i.i, align 4
  %26 = ptrtoint ptr %pd.024.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pd.024.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %fwnet_pd_delete.exit.i

fwnet_pd_delete.exit.i:                           ; preds = %if.end.i.i.i.i, %for.end.i.i.fwnet_pd_delete.exit.i_crit_edge
  %30 = ptrtoint ptr %pd.024.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %pd.024.i, align 4
  %prev.i.i22.i = getelementptr inbounds %struct.list_head, ptr %pd.024.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i22.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i22.i, align 4
  %skb.i.i = getelementptr inbounds %struct.fwnet_partial_datagram, ptr %pd.024.i, i32 0, i32 2
  %32 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skb.i.i, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %33, i32 noundef 1) #14
  tail call void @kfree(ptr noundef %pd.024.i) #14
  %cmp.not.i = icmp eq ptr %pd_next.0.i, %pd_list.i
  br i1 %cmp.not.i, label %fwnet_pd_delete.exit.i.fwnet_remove_peer.exit_crit_edge, label %fwnet_pd_delete.exit.i.for.body.i_crit_edge

fwnet_pd_delete.exit.i.for.body.i_crit_edge:      ; preds = %fwnet_pd_delete.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

fwnet_pd_delete.exit.i.fwnet_remove_peer.exit_crit_edge: ; preds = %fwnet_pd_delete.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fwnet_remove_peer.exit

fwnet_remove_peer.exit:                           ; preds = %fwnet_pd_delete.exit.i.fwnet_remove_peer.exit_crit_edge, %set_carrier_state.exit.i.fwnet_remove_peer.exit_crit_edge
  tail call void @kfree(ptr noundef %1) #14
  %peer_list = getelementptr inbounds %struct.fwnet_device, ptr %3, i32 0, i32 15
  %34 = ptrtoint ptr %peer_list to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %peer_list, align 4
  %cmp.i.not = icmp eq ptr %35, %peer_list
  br i1 %cmp.i.not, label %if.then, label %fwnet_remove_peer.exit.if.end26_crit_edge

fwnet_remove_peer.exit.if.end26_crit_edge:        ; preds = %fwnet_remove_peer.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then:                                          ; preds = %fwnet_remove_peer.exit
  tail call void @unregister_netdev(ptr noundef %5) #14
  %local_fifo.i = getelementptr inbounds %struct.fwnet_device, ptr %3, i32 0, i32 12
  %36 = ptrtoint ptr %local_fifo.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %local_fifo.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %37)
  %cmp.i37 = icmp eq i64 %37, -1
  br i1 %cmp.i37, label %if.then.fwnet_fifo_stop.exit_crit_edge, label %if.end.i

if.then.fwnet_fifo_stop.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %fwnet_fifo_stop.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %handler.i = getelementptr inbounds %struct.fwnet_device, ptr %3, i32 0, i32 11
  tail call void @fw_core_remove_address_handler(ptr noundef %handler.i) #14
  %38 = ptrtoint ptr %local_fifo.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 -1, ptr %local_fifo.i, align 8
  br label %fwnet_fifo_stop.exit

fwnet_fifo_stop.exit:                             ; preds = %if.end.i, %if.then.fwnet_fifo_stop.exit_crit_edge
  %queued_datagrams = getelementptr inbounds %struct.fwnet_device, ptr %3, i32 0, i32 13
  %39 = ptrtoint ptr %queued_datagrams to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %queued_datagrams, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool3.not39.not = icmp eq i32 %40, 0
  br i1 %tobool3.not39.not, label %fwnet_fifo_stop.exit.if.end_crit_edge, label %for.body

fwnet_fifo_stop.exit.if.end_crit_edge:            ; preds = %fwnet_fifo_stop.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.body:                                         ; preds = %fwnet_fifo_stop.exit
  tail call void @msleep(i32 noundef 1000) #14
  %41 = ptrtoint ptr %queued_datagrams to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %queued_datagrams, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool3.not.not = icmp eq i32 %42, 0
  br i1 %tobool3.not.not, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.1:                                       ; preds = %for.body
  tail call void @msleep(i32 noundef 1000) #14
  %43 = ptrtoint ptr %queued_datagrams to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %queued_datagrams, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool3.not.1.not = icmp eq i32 %44, 0
  br i1 %tobool3.not.1.not, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  tail call void @msleep(i32 noundef 1000) #14
  %45 = ptrtoint ptr %queued_datagrams to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %queued_datagrams, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool3.not.2.not = icmp eq i32 %46, 0
  br i1 %tobool3.not.2.not, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  tail call void @msleep(i32 noundef 1000) #14
  %47 = ptrtoint ptr %queued_datagrams to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %queued_datagrams, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool3.not.3.not = icmp eq i32 %48, 0
  br i1 %tobool3.not.3.not, label %for.body.3.for.end_crit_edge, label %for.body.4

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @msleep(i32 noundef 1000) #14
  %49 = ptrtoint ptr %queued_datagrams to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %queued_datagrams, align 8
  br label %for.end

for.end:                                          ; preds = %for.body.4, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge
  %.lcssa = phi i32 [ %42, %for.body.for.end_crit_edge ], [ %44, %for.body.1.for.end_crit_edge ], [ %46, %for.body.2.for.end_crit_edge ], [ %48, %for.body.3.for.end_crit_edge ], [ %50, %for.body.4 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa)
  %phi.cmp = icmp eq i32 %.lcssa, 0
  br i1 %phi.cmp, label %for.end.if.end_crit_edge, label %do.end, !prof !95

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1579, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %for.end.if.end_crit_edge, %fwnet_fifo_stop.exit.if.end_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i38 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i.i38 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i38, align 4
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev1.i.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %54, ptr %52, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @free_netdev(ptr noundef %5) #14
  br label %if.end26

if.end26:                                         ; preds = %list_del.exit, %fwnet_remove_peer.exit.if.end26_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @fwnet_device_mutex) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @fwnet_init_dev(ptr nocapture noundef writeonly %net) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %header_ops = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 49
  %0 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @fwnet_header_ops, ptr %header_ops, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 16
  %1 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @fwnet_netdev_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 115
  %2 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 200, ptr %watchdog_timeo, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 14
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4098, ptr %flags, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 23
  %4 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 32, ptr %features, align 16
  %addr_len = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 56
  %5 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 16, ptr %addr_len, align 1
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 19
  %6 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 18, ptr %hard_header_len, align 2
  %type = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 32
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 24, ptr %type, align 16
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 107
  %8 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 20, ptr %tx_queue_len, align 16
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 44
  %9 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @fwnet_ethtool_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwnet_header_create(ptr noundef %skb, ptr nocapture noundef readonly %net, i16 noundef zeroext %type, ptr noundef readonly %daddr, ptr nocapture noundef readnone %saddr, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 18) #14
  %h_proto = getelementptr inbounds %struct.fwnet_header, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %h_proto to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 %type, ptr %h_proto, align 1
  %flags = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 14
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and = and i32 %2, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %addr_len = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 56
  %3 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %4 to i32
  %5 = call ptr @memset(ptr %call, i32 0, i32 %conv)
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 19
  %6 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hard_header_len, align 2
  %conv1 = zext i16 %7 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %daddr, null
  br i1 %tobool2.not, label %if.end10, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %addr_len6 = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 56
  %8 = ptrtoint ptr %addr_len6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %addr_len6, align 1
  %conv7 = zext i8 %9 to i32
  %10 = call ptr @memcpy(ptr %call, ptr %daddr, i32 %conv7)
  %hard_header_len8 = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 19
  %11 = ptrtoint ptr %hard_header_len8 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hard_header_len8, align 2
  %conv9 = zext i16 %12 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %hard_header_len11 = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 19
  %13 = ptrtoint ptr %hard_header_len11 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hard_header_len11, align 2
  %conv12 = zext i16 %14 to i32
  %sub = sub nsw i32 0, %conv12
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then3, %if.then
  %retval.0 = phi i32 [ %conv1, %if.then ], [ %conv9, %if.then3 ], [ %sub, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fwnet_header_parse(ptr nocapture noundef readonly %skb, ptr nocapture noundef writeonly %haddr) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 86
  %3 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_addr, align 64
  %5 = call ptr @memcpy(ptr %haddr, ptr %4, i32 16)
  ret i32 16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwnet_header_cache(ptr nocapture noundef readonly %neigh, ptr noundef %hh, i16 noundef zeroext %type) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %type)
  %cmp = icmp eq i16 %type, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 25
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %hh_data = getelementptr inbounds %struct.hh_cache, ptr %hh, i32 0, i32 2
  %add.ptr = getelementptr i8, ptr %hh_data, i32 14
  %h_proto = getelementptr i8, ptr %hh_data, i32 30
  %2 = ptrtoint ptr %h_proto to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 %type, ptr %h_proto, align 1
  %ha = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 18
  %addr_len = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 56
  %3 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %addr_len, align 1
  %conv4 = zext i8 %4 to i32
  %5 = call ptr @memcpy(ptr %add.ptr, ptr %ha, i32 %conv4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !96
  %6 = ptrtoint ptr %hh to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 18, ptr %hh, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fwnet_header_cache_update(ptr nocapture noundef writeonly %hh, ptr nocapture noundef readonly %net, ptr nocapture noundef readonly %haddr) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %hh_data = getelementptr inbounds %struct.hh_cache, ptr %hh, i32 0, i32 2
  %add.ptr = getelementptr i8, ptr %hh_data, i32 14
  %addr_len = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 56
  %0 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %1 to i32
  %2 = call ptr @memcpy(ptr %add.ptr, ptr %haddr, i32 %conv)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwnet_open(ptr noundef %net) #3 align 64 {
entry:
  %packet.i = alloca %struct.fw_iso_packet, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packet.i) #14
  %0 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %packet.i, align 4, !annotation !97
  %1 = getelementptr inbounds %struct.fw_iso_packet, ptr %packet.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !97
  %broadcast_state.i = getelementptr i8, ptr %net, i32 2356
  %3 = ptrtoint ptr %broadcast_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %broadcast_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.fwnet_broadcast_start.exit.thread_crit_edge

entry.fwnet_broadcast_start.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %fwnet_broadcast_start.exit.thread

if.end.i:                                         ; preds = %entry
  %card.i = getelementptr i8, ptr %net, i32 2464
  %5 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card.i, align 8
  %max_receive2.i = getelementptr inbounds %struct.fw_card, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %max_receive2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_receive2.i, align 8
  %add.i = add i32 %8, 1
  %shl.i = shl nuw i32 1, %add.i
  %div107.i = lshr i32 16384, %add.i
  %9 = shl nuw nsw i32 %div107.i, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3264) #19
  %tobool.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not.i, label %if.end.i.fwnet_broadcast_start.exit.thread14_crit_edge, label %if.end4.i

if.end.i.fwnet_broadcast_start.exit.thread14_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fwnet_broadcast_start.exit.thread14

if.end4.i:                                        ; preds = %if.end.i
  %broadcast_rcv_buffer_ptrs.i = getelementptr i8, ptr %net, i32 2380
  %10 = ptrtoint ptr %broadcast_rcv_buffer_ptrs.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8.i.i, ptr %broadcast_rcv_buffer_ptrs.i, align 4
  %11 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card.i, align 8
  %link_speed.i = getelementptr inbounds %struct.fw_card, ptr %12, i32 0, i32 16
  %13 = ptrtoint ptr %link_speed.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %link_speed.i, align 4
  %call7.i = tail call ptr @fw_iso_context_create(ptr noundef %12, i32 noundef 1, i32 noundef 31, i32 noundef %14, i32 noundef 8, ptr noundef nonnull @fwnet_receive_broadcast, ptr noundef %add.ptr.i) #14
  %cmp.i.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %fwnet_broadcast_start.exit, label %if.end11.i

if.end11.i:                                       ; preds = %if.end4.i
  %broadcast_rcv_buffer.i = getelementptr i8, ptr %net, i32 2364
  %15 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card.i, align 8
  %call13.i = tail call i32 @fw_iso_buffer_init(ptr noundef %broadcast_rcv_buffer.i, ptr noundef %16, i32 noundef 4, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %if.end11.i.fwnet_broadcast_start.exit.thread14_crit_edge, label %if.end16.i

if.end11.i.fwnet_broadcast_start.exit.thread14_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fwnet_broadcast_start.exit.thread14

if.end16.i:                                       ; preds = %if.end11.i
  %17 = ptrtoint ptr %broadcast_state.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %broadcast_state.i, align 4
  %pages.i = getelementptr i8, ptr %net, i32 2368
  %div22108.i = lshr i32 %div107.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %div107.i)
  %cmp23116.not.i = icmp ult i32 %div107.i, 4
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div22108.i, i32 1) #14
  %18 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pages.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 44) #14
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %shr.i.i.i = lshr i32 %23, 30
  %24 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i.i, label %if.end16.i.if.then.i.i_crit_edge [
    i32 2, label %if.end16.i.if.else.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

if.end16.i.if.else.i.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i.i

if.end16.i.if.then.i.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

is_highmem_idx.exit.i.i:                          ; preds = %if.end16.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %25 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp2.i.not.i.i = icmp eq i32 %25, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, label %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge

is_highmem_idx.exit.i.i.if.then.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

is_highmem_idx.exit.i.i.if.else.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge, %if.end16.i.if.then.i.i_crit_edge
  %call5.i.i = tail call ptr @page_address(ptr noundef %21) #14
  br label %kmap.exit.i

if.else.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, %if.end16.i.if.else.i.i_crit_edge
  %call6.i.i = tail call ptr @kmap_high(ptr noundef %21) #14
  br label %kmap.exit.i

kmap.exit.i:                                      ; preds = %if.else.i.i, %if.then.i.i
  %addr.0.i.i = phi ptr [ %call6.i.i, %if.else.i.i ], [ %call5.i.i, %if.then.i.i ]
  br i1 %cmp23116.not.i, label %kmap.exit.i.for.end.i_crit_edge, label %kmap.exit.i.for.body24.i_crit_edge

kmap.exit.i.for.body24.i_crit_edge:               ; preds = %kmap.exit.i
  br label %for.body24.i

kmap.exit.i.for.end.i_crit_edge:                  ; preds = %kmap.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body24.i:                                     ; preds = %for.body24.i.for.body24.i_crit_edge, %kmap.exit.i.for.body24.i_crit_edge
  %v.0118.i = phi i32 [ %inc.i, %for.body24.i.for.body24.i_crit_edge ], [ 0, %kmap.exit.i.for.body24.i_crit_edge ]
  %ptrptr.1117.i = phi ptr [ %incdec.ptr.i, %for.body24.i.for.body24.i_crit_edge ], [ %call8.i.i, %kmap.exit.i.for.body24.i_crit_edge ]
  %mul.i = shl i32 %v.0118.i, %add.i
  %add.ptr.i9 = getelementptr i8, ptr %addr.0.i.i, i32 %mul.i
  %incdec.ptr.i = getelementptr ptr, ptr %ptrptr.1117.i, i32 1
  %26 = ptrtoint ptr %ptrptr.1117.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr.i9, ptr %ptrptr.1117.i, align 4
  %inc.i = add nuw nsw i32 %v.0118.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.body24.i.for.end.i_crit_edge, label %for.body24.i.for.body24.i_crit_edge

for.body24.i.for.body24.i_crit_edge:              ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body24.i

for.body24.i.for.end.i_crit_edge:                 ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.body24.i.for.end.i_crit_edge, %kmap.exit.i.for.end.i_crit_edge
  %ptrptr.1.lcssa.i = phi ptr [ %call8.i.i, %kmap.exit.i.for.end.i_crit_edge ], [ %incdec.ptr.i, %for.body24.i.for.end.i_crit_edge ]
  %27 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pages.i, align 4
  %arrayidx.1.i = getelementptr ptr, ptr %28, i32 1
  %29 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 44) #14
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %shr.i.i.1.i = lshr i32 %32, 30
  %33 = zext i32 %shr.i.i.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %shr.i.i.1.i, label %for.end.i.if.then.i.1.i_crit_edge [
    i32 2, label %for.end.i.if.else.i.1.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.1.i
  ]

for.end.i.if.else.i.1.i_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i.1.i

for.end.i.if.then.i.1.i_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.1.i

is_highmem_idx.exit.i.1.i:                        ; preds = %for.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %34 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp2.i.not.i.1.i = icmp eq i32 %34, 2
  br i1 %cmp2.i.not.i.1.i, label %is_highmem_idx.exit.i.1.i.if.else.i.1.i_crit_edge, label %is_highmem_idx.exit.i.1.i.if.then.i.1.i_crit_edge

is_highmem_idx.exit.i.1.i.if.then.i.1.i_crit_edge: ; preds = %is_highmem_idx.exit.i.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.1.i

is_highmem_idx.exit.i.1.i.if.else.i.1.i_crit_edge: ; preds = %is_highmem_idx.exit.i.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i.1.i

if.else.i.1.i:                                    ; preds = %is_highmem_idx.exit.i.1.i.if.else.i.1.i_crit_edge, %for.end.i.if.else.i.1.i_crit_edge
  %call6.i.1.i = tail call ptr @kmap_high(ptr noundef %30) #14
  br label %kmap.exit.1.i

if.then.i.1.i:                                    ; preds = %is_highmem_idx.exit.i.1.i.if.then.i.1.i_crit_edge, %for.end.i.if.then.i.1.i_crit_edge
  %call5.i.1.i = tail call ptr @page_address(ptr noundef %30) #14
  br label %kmap.exit.1.i

kmap.exit.1.i:                                    ; preds = %if.then.i.1.i, %if.else.i.1.i
  %addr.0.i.1.i = phi ptr [ %call6.i.1.i, %if.else.i.1.i ], [ %call5.i.1.i, %if.then.i.1.i ]
  br i1 %cmp23116.not.i, label %kmap.exit.1.i.for.end.1.i_crit_edge, label %kmap.exit.1.i.for.body24.1.i_crit_edge

kmap.exit.1.i.for.body24.1.i_crit_edge:           ; preds = %kmap.exit.1.i
  br label %for.body24.1.i

kmap.exit.1.i.for.end.1.i_crit_edge:              ; preds = %kmap.exit.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.1.i

for.body24.1.i:                                   ; preds = %for.body24.1.i.for.body24.1.i_crit_edge, %kmap.exit.1.i.for.body24.1.i_crit_edge
  %v.0118.1.i = phi i32 [ %inc.1.i, %for.body24.1.i.for.body24.1.i_crit_edge ], [ 0, %kmap.exit.1.i.for.body24.1.i_crit_edge ]
  %ptrptr.1117.1.i = phi ptr [ %incdec.ptr.1.i, %for.body24.1.i.for.body24.1.i_crit_edge ], [ %ptrptr.1.lcssa.i, %kmap.exit.1.i.for.body24.1.i_crit_edge ]
  %mul.1.i = shl i32 %v.0118.1.i, %add.i
  %add.ptr.1.i = getelementptr i8, ptr %addr.0.i.1.i, i32 %mul.1.i
  %incdec.ptr.1.i = getelementptr ptr, ptr %ptrptr.1117.1.i, i32 1
  %35 = ptrtoint ptr %ptrptr.1117.1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr.1.i, ptr %ptrptr.1117.1.i, align 4
  %inc.1.i = add nuw nsw i32 %v.0118.1.i, 1
  %exitcond.1.not.i = icmp eq i32 %inc.1.i, %umax.i
  br i1 %exitcond.1.not.i, label %for.body24.1.i.for.end.1.i_crit_edge, label %for.body24.1.i.for.body24.1.i_crit_edge

for.body24.1.i.for.body24.1.i_crit_edge:          ; preds = %for.body24.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body24.1.i

for.body24.1.i.for.end.1.i_crit_edge:             ; preds = %for.body24.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.1.i

for.end.1.i:                                      ; preds = %for.body24.1.i.for.end.1.i_crit_edge, %kmap.exit.1.i.for.end.1.i_crit_edge
  %ptrptr.1.lcssa.1.i = phi ptr [ %ptrptr.1.lcssa.i, %kmap.exit.1.i.for.end.1.i_crit_edge ], [ %incdec.ptr.1.i, %for.body24.1.i.for.end.1.i_crit_edge ]
  %36 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pages.i, align 4
  %arrayidx.2.i = getelementptr ptr, ptr %37, i32 2
  %38 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.2.i, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 44) #14
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %shr.i.i.2.i = lshr i32 %41, 30
  %42 = zext i32 %shr.i.i.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %shr.i.i.2.i, label %for.end.1.i.if.then.i.2.i_crit_edge [
    i32 2, label %for.end.1.i.if.else.i.2.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.2.i
  ]

for.end.1.i.if.else.i.2.i_crit_edge:              ; preds = %for.end.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i.2.i

for.end.1.i.if.then.i.2.i_crit_edge:              ; preds = %for.end.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.2.i

is_highmem_idx.exit.i.2.i:                        ; preds = %for.end.1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %43 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp2.i.not.i.2.i = icmp eq i32 %43, 2
  br i1 %cmp2.i.not.i.2.i, label %is_highmem_idx.exit.i.2.i.if.else.i.2.i_crit_edge, label %is_highmem_idx.exit.i.2.i.if.then.i.2.i_crit_edge

is_highmem_idx.exit.i.2.i.if.then.i.2.i_crit_edge: ; preds = %is_highmem_idx.exit.i.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.2.i

is_highmem_idx.exit.i.2.i.if.else.i.2.i_crit_edge: ; preds = %is_highmem_idx.exit.i.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i.2.i

if.else.i.2.i:                                    ; preds = %is_highmem_idx.exit.i.2.i.if.else.i.2.i_crit_edge, %for.end.1.i.if.else.i.2.i_crit_edge
  %call6.i.2.i = tail call ptr @kmap_high(ptr noundef %39) #14
  br label %kmap.exit.2.i

if.then.i.2.i:                                    ; preds = %is_highmem_idx.exit.i.2.i.if.then.i.2.i_crit_edge, %for.end.1.i.if.then.i.2.i_crit_edge
  %call5.i.2.i = tail call ptr @page_address(ptr noundef %39) #14
  br label %kmap.exit.2.i

kmap.exit.2.i:                                    ; preds = %if.then.i.2.i, %if.else.i.2.i
  %addr.0.i.2.i = phi ptr [ %call6.i.2.i, %if.else.i.2.i ], [ %call5.i.2.i, %if.then.i.2.i ]
  br i1 %cmp23116.not.i, label %kmap.exit.2.i.for.end.2.i_crit_edge, label %kmap.exit.2.i.for.body24.2.i_crit_edge

kmap.exit.2.i.for.body24.2.i_crit_edge:           ; preds = %kmap.exit.2.i
  br label %for.body24.2.i

kmap.exit.2.i.for.end.2.i_crit_edge:              ; preds = %kmap.exit.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.2.i

for.body24.2.i:                                   ; preds = %for.body24.2.i.for.body24.2.i_crit_edge, %kmap.exit.2.i.for.body24.2.i_crit_edge
  %v.0118.2.i = phi i32 [ %inc.2.i, %for.body24.2.i.for.body24.2.i_crit_edge ], [ 0, %kmap.exit.2.i.for.body24.2.i_crit_edge ]
  %ptrptr.1117.2.i = phi ptr [ %incdec.ptr.2.i, %for.body24.2.i.for.body24.2.i_crit_edge ], [ %ptrptr.1.lcssa.1.i, %kmap.exit.2.i.for.body24.2.i_crit_edge ]
  %mul.2.i = shl i32 %v.0118.2.i, %add.i
  %add.ptr.2.i = getelementptr i8, ptr %addr.0.i.2.i, i32 %mul.2.i
  %incdec.ptr.2.i = getelementptr ptr, ptr %ptrptr.1117.2.i, i32 1
  %44 = ptrtoint ptr %ptrptr.1117.2.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr.2.i, ptr %ptrptr.1117.2.i, align 4
  %inc.2.i = add nuw nsw i32 %v.0118.2.i, 1
  %exitcond.2.not.i = icmp eq i32 %inc.2.i, %umax.i
  br i1 %exitcond.2.not.i, label %for.body24.2.i.for.end.2.i_crit_edge, label %for.body24.2.i.for.body24.2.i_crit_edge

for.body24.2.i.for.body24.2.i_crit_edge:          ; preds = %for.body24.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body24.2.i

for.body24.2.i.for.end.2.i_crit_edge:             ; preds = %for.body24.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.2.i

for.end.2.i:                                      ; preds = %for.body24.2.i.for.end.2.i_crit_edge, %kmap.exit.2.i.for.end.2.i_crit_edge
  %ptrptr.1.lcssa.2.i = phi ptr [ %ptrptr.1.lcssa.1.i, %kmap.exit.2.i.for.end.2.i_crit_edge ], [ %incdec.ptr.2.i, %for.body24.2.i.for.end.2.i_crit_edge ]
  %45 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pages.i, align 4
  %arrayidx.3.i = getelementptr ptr, ptr %46, i32 3
  %47 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.3.i, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 44) #14
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %shr.i.i.3.i = lshr i32 %50, 30
  %51 = zext i32 %shr.i.i.3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %shr.i.i.3.i, label %for.end.2.i.if.then.i.3.i_crit_edge [
    i32 2, label %for.end.2.i.if.else.i.3.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.3.i
  ]

for.end.2.i.if.else.i.3.i_crit_edge:              ; preds = %for.end.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i.3.i

for.end.2.i.if.then.i.3.i_crit_edge:              ; preds = %for.end.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.3.i

is_highmem_idx.exit.i.3.i:                        ; preds = %for.end.2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %52 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp2.i.not.i.3.i = icmp eq i32 %52, 2
  br i1 %cmp2.i.not.i.3.i, label %is_highmem_idx.exit.i.3.i.if.else.i.3.i_crit_edge, label %is_highmem_idx.exit.i.3.i.if.then.i.3.i_crit_edge

is_highmem_idx.exit.i.3.i.if.then.i.3.i_crit_edge: ; preds = %is_highmem_idx.exit.i.3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.3.i

is_highmem_idx.exit.i.3.i.if.else.i.3.i_crit_edge: ; preds = %is_highmem_idx.exit.i.3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i.3.i

if.else.i.3.i:                                    ; preds = %is_highmem_idx.exit.i.3.i.if.else.i.3.i_crit_edge, %for.end.2.i.if.else.i.3.i_crit_edge
  %call6.i.3.i = tail call ptr @kmap_high(ptr noundef %48) #14
  br label %kmap.exit.3.i

if.then.i.3.i:                                    ; preds = %is_highmem_idx.exit.i.3.i.if.then.i.3.i_crit_edge, %for.end.2.i.if.then.i.3.i_crit_edge
  %call5.i.3.i = tail call ptr @page_address(ptr noundef %48) #14
  br label %kmap.exit.3.i

kmap.exit.3.i:                                    ; preds = %if.then.i.3.i, %if.else.i.3.i
  %addr.0.i.3.i = phi ptr [ %call6.i.3.i, %if.else.i.3.i ], [ %call5.i.3.i, %if.then.i.3.i ]
  br i1 %cmp23116.not.i, label %kmap.exit.3.i.for.end.3.i_crit_edge, label %kmap.exit.3.i.for.body24.3.i_crit_edge

kmap.exit.3.i.for.body24.3.i_crit_edge:           ; preds = %kmap.exit.3.i
  br label %for.body24.3.i

kmap.exit.3.i.for.end.3.i_crit_edge:              ; preds = %kmap.exit.3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.3.i

for.body24.3.i:                                   ; preds = %for.body24.3.i.for.body24.3.i_crit_edge, %kmap.exit.3.i.for.body24.3.i_crit_edge
  %v.0118.3.i = phi i32 [ %inc.3.i, %for.body24.3.i.for.body24.3.i_crit_edge ], [ 0, %kmap.exit.3.i.for.body24.3.i_crit_edge ]
  %ptrptr.1117.3.i = phi ptr [ %incdec.ptr.3.i, %for.body24.3.i.for.body24.3.i_crit_edge ], [ %ptrptr.1.lcssa.2.i, %kmap.exit.3.i.for.body24.3.i_crit_edge ]
  %mul.3.i = shl i32 %v.0118.3.i, %add.i
  %add.ptr.3.i = getelementptr i8, ptr %addr.0.i.3.i, i32 %mul.3.i
  %incdec.ptr.3.i = getelementptr ptr, ptr %ptrptr.1117.3.i, i32 1
  %53 = ptrtoint ptr %ptrptr.1117.3.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %add.ptr.3.i, ptr %ptrptr.1117.3.i, align 4
  %inc.3.i = add nuw nsw i32 %v.0118.3.i, 1
  %exitcond.3.not.i = icmp eq i32 %inc.3.i, %umax.i
  br i1 %exitcond.3.not.i, label %for.body24.3.i.for.end.3.i_crit_edge, label %for.body24.3.i.for.body24.3.i_crit_edge

for.body24.3.i.for.body24.3.i_crit_edge:          ; preds = %for.body24.3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body24.3.i

for.body24.3.i.for.end.3.i_crit_edge:             ; preds = %for.body24.3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.3.i

for.end.3.i:                                      ; preds = %for.body24.3.i.for.end.3.i_crit_edge, %kmap.exit.3.i.for.end.3.i_crit_edge
  %broadcast_rcv_context.i = getelementptr i8, ptr %net, i32 2360
  %54 = ptrtoint ptr %broadcast_rcv_context.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call7.i, ptr %broadcast_rcv_context.i, align 8
  %conv.i = trunc i32 %shl.i to i16
  %55 = ptrtoint ptr %packet.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i, ptr %packet.i, align 4
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 -20472, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %add.i)
  %cmp41121.not.i = icmp ugt i32 %add.i, 14
  br i1 %cmp41121.not.i, label %for.end.3.i.for.end53.i_crit_edge, label %for.body43.preheader.i

for.end.3.i.for.end53.i_crit_edge:                ; preds = %for.end.3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end53.i

for.body43.preheader.i:                           ; preds = %for.end.3.i
  %umax126.i = tail call i32 @llvm.umax.i32(i32 %div107.i, i32 1) #14
  br label %for.body43.i

for.body43.i:                                     ; preds = %if.end49.i.for.body43.i_crit_edge, %for.body43.preheader.i
  %u.1123.i = phi i32 [ %inc52.i, %if.end49.i.for.body43.i_crit_edge ], [ 0, %for.body43.preheader.i ]
  %offset.0122.i = phi i32 [ %add50.i, %if.end49.i.for.body43.i_crit_edge ], [ 0, %for.body43.preheader.i ]
  %call45.i = call i32 @fw_iso_context_queue(ptr noundef %call7.i, ptr noundef nonnull %packet.i, ptr noundef %broadcast_rcv_buffer.i, i32 noundef %offset.0122.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %cmp46.i = icmp slt i32 %call45.i, 0
  br i1 %cmp46.i, label %for.body43.i.fwnet_broadcast_start.exit.thread14_crit_edge, label %if.end49.i

for.body43.i.fwnet_broadcast_start.exit.thread14_crit_edge: ; preds = %for.body43.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fwnet_broadcast_start.exit.thread14

if.end49.i:                                       ; preds = %for.body43.i
  %add50.i = add i32 %offset.0122.i, %shl.i
  %inc52.i = add nuw nsw i32 %u.1123.i, 1
  %exitcond127.not.i = icmp eq i32 %inc52.i, %umax126.i
  br i1 %exitcond127.not.i, label %if.end49.i.for.end53.i_crit_edge, label %if.end49.i.for.body43.i_crit_edge

if.end49.i.for.body43.i_crit_edge:                ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body43.i

if.end49.i.for.end53.i_crit_edge:                 ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end53.i

for.end53.i:                                      ; preds = %if.end49.i.for.end53.i_crit_edge, %for.end.3.i.for.end53.i_crit_edge
  %num_broadcast_rcv_ptrs.i = getelementptr i8, ptr %net, i32 2388
  %57 = ptrtoint ptr %num_broadcast_rcv_ptrs.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %div107.i, ptr %num_broadcast_rcv_ptrs.i, align 4
  %rcv_buffer_size.i = getelementptr i8, ptr %net, i32 2392
  %58 = ptrtoint ptr %rcv_buffer_size.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %shl.i, ptr %rcv_buffer_size.i, align 8
  %broadcast_rcv_next_ptr.i = getelementptr i8, ptr %net, i32 2384
  %59 = ptrtoint ptr %broadcast_rcv_next_ptr.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %broadcast_rcv_next_ptr.i, align 8
  %call54.i = call i32 @fw_iso_context_start(ptr noundef %call7.i, i32 noundef -1, i32 noundef 0, i32 noundef 15) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %cmp55.i = icmp slt i32 %call54.i, 0
  br i1 %cmp55.i, label %for.end53.i.fwnet_broadcast_start.exit.thread14_crit_edge, label %if.end58.i

for.end53.i.fwnet_broadcast_start.exit.thread14_crit_edge: ; preds = %for.end53.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fwnet_broadcast_start.exit.thread14

if.end58.i:                                       ; preds = %for.end53.i
  call void @__sanitizer_cov_trace_pc() #16
  %broadcast_xmt_max_payload.i = getelementptr i8, ptr %net, i32 2396
  %60 = ptrtoint ptr %broadcast_xmt_max_payload.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 500, ptr %broadcast_xmt_max_payload.i, align 4
  %61 = ptrtoint ptr %broadcast_state.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %broadcast_state.i, align 4
  br label %fwnet_broadcast_start.exit.thread

fwnet_broadcast_start.exit.thread:                ; preds = %if.end58.i, %entry.fwnet_broadcast_start.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packet.i) #14
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 103
  %62 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %63, i32 0, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  %lock = getelementptr i8, ptr %net, i32 2312
  call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %peer_count.i = getelementptr i8, ptr %net, i32 2452
  %64 = ptrtoint ptr %peer_count.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %peer_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp.i = icmp sgt i32 %65, 1
  %netdev.i = getelementptr i8, ptr %net, i32 2468
  %66 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %netdev.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

fwnet_broadcast_start.exit.thread14:              ; preds = %for.end53.i.fwnet_broadcast_start.exit.thread14_crit_edge, %for.body43.i.fwnet_broadcast_start.exit.thread14_crit_edge, %if.end11.i.fwnet_broadcast_start.exit.thread14_crit_edge, %if.end.i.fwnet_broadcast_start.exit.thread14_crit_edge
  %retval1.0.i.ph = phi i32 [ -12, %if.end.i.fwnet_broadcast_start.exit.thread14_crit_edge ], [ %call54.i, %for.end53.i.fwnet_broadcast_start.exit.thread14_crit_edge ], [ %call13.i, %if.end11.i.fwnet_broadcast_start.exit.thread14_crit_edge ], [ %call45.i, %for.body43.i.fwnet_broadcast_start.exit.thread14_crit_edge ]
  call fastcc void @__fwnet_broadcast_stop(ptr noundef %add.ptr.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packet.i) #14
  br label %cleanup

fwnet_broadcast_start.exit:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  %68 = ptrtoint ptr %call7.i to i32
  tail call fastcc void @__fwnet_broadcast_stop(ptr noundef %add.ptr.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packet.i) #14
  br label %cleanup

if.then.i:                                        ; preds = %fwnet_broadcast_start.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  call void @netif_carrier_on(ptr noundef %67) #14
  br label %set_carrier_state.exit

if.else.i:                                        ; preds = %fwnet_broadcast_start.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  call void @netif_carrier_off(ptr noundef %67) #14
  br label %set_carrier_state.exit

set_carrier_state.exit:                           ; preds = %if.else.i, %if.then.i
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  br label %cleanup

cleanup:                                          ; preds = %set_carrier_state.exit, %fwnet_broadcast_start.exit, %fwnet_broadcast_start.exit.thread14
  %retval.0 = phi i32 [ 0, %set_carrier_state.exit ], [ %68, %fwnet_broadcast_start.exit ], [ %retval1.0.i.ph, %fwnet_broadcast_start.exit.thread14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwnet_stop(ptr noundef %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  %broadcast_state.i = getelementptr i8, ptr %net, i32 2356
  %2 = ptrtoint ptr %broadcast_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %broadcast_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %entry.fwnet_broadcast_stop.exit_crit_edge, label %if.end.i

entry.fwnet_broadcast_stop.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %fwnet_broadcast_stop.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %broadcast_rcv_context.i = getelementptr i8, ptr %net, i32 2360
  %4 = ptrtoint ptr %broadcast_rcv_context.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %broadcast_rcv_context.i, align 8
  %call.i = tail call i32 @fw_iso_context_stop(ptr noundef %5) #14
  tail call fastcc void @__fwnet_broadcast_stop(ptr noundef %add.ptr.i) #14
  br label %fwnet_broadcast_stop.exit

fwnet_broadcast_stop.exit:                        ; preds = %if.end.i, %entry.fwnet_broadcast_stop.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwnet_tx(ptr noundef %skb, ptr noundef %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %lock = getelementptr i8, ptr %net, i32 2312
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %netdev = getelementptr i8, ptr %net, i32 2468
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #14
  br label %cleanup88

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr @fwnet_packet_task_cache, align 4
  %call8 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %6, i32 noundef 2592) #14
  %cmp9 = icmp eq ptr %call8, null
  br i1 %cmp9, label %fail.thread175, label %if.end12

fail.thread175:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #14
  br label %if.end80

if.end12:                                         ; preds = %if.end
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #14
  %7 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i.not.i = icmp eq i32 %8, 1
  br i1 %cmp.i.not.i, label %skb_share_check.exit, label %if.then6.i

if.then6.i:                                       ; preds = %if.end12
  %call7.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #14
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_share_check.exit.thread, label %skb_share_check.exit.thread163, !prof !98

skb_share_check.exit.thread163:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @consume_skb(ptr noundef %skb) #14
  br label %if.end15

skb_share_check.exit.thread:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  br label %if.then79

skb_share_check.exit:                             ; preds = %if.end12
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %skb_share_check.exit.if.then79_crit_edge, label %skb_share_check.exit.if.end15_crit_edge

skb_share_check.exit.if.end15_crit_edge:          ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

skb_share_check.exit.if.then79_crit_edge:         ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then79

if.end15:                                         ; preds = %skb_share_check.exit.if.end15_crit_edge, %skb_share_check.exit.thread163
  %skb.addr.0.i166 = phi ptr [ %call7.i, %skb_share_check.exit.thread163 ], [ %skb, %skb_share_check.exit.if.end15_crit_edge ]
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i166, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %hdr_buf.sroa.0.0.copyload = load i64, ptr %10, align 1
  %hdr_buf.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %10, i32 10
  %12 = ptrtoint ptr %hdr_buf.sroa.15.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %hdr_buf.sroa.15.0.copyload = load i16, ptr %hdr_buf.sroa.15.0..sroa_idx, align 1
  %hdr_buf.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr %10, i32 12
  %13 = ptrtoint ptr %hdr_buf.sroa.18.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %hdr_buf.sroa.18.0.copyload = load i32, ptr %hdr_buf.sroa.18.0..sroa_idx, align 1
  %hdr_buf.sroa.23.0..sroa_idx = getelementptr inbounds i8, ptr %10, i32 16
  %14 = ptrtoint ptr %hdr_buf.sroa.23.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %hdr_buf.sroa.23.0.copyload = load i16, ptr %hdr_buf.sroa.23.0..sroa_idx, align 1
  %conv16 = zext i16 %hdr_buf.sroa.23.0.copyload to i32
  %15 = zext i16 %hdr_buf.sroa.23.0.copyload to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.25)
  switch i16 %hdr_buf.sroa.23.0.copyload, label %if.end15.if.then79_crit_edge [
    i16 2054, label %if.end15.sw.epilog_crit_edge
    i16 2048, label %if.end15.sw.epilog_crit_edge183
    i16 -31011, label %if.end15.sw.epilog_crit_edge184
  ]

if.end15.sw.epilog_crit_edge184:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end15.sw.epilog_crit_edge183:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end15.sw.epilog_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end15.if.then79_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then79

sw.epilog:                                        ; preds = %if.end15.sw.epilog_crit_edge, %if.end15.sw.epilog_crit_edge183, %if.end15.sw.epilog_crit_edge184
  %call17 = tail call ptr @skb_pull(ptr noundef nonnull %skb.addr.0.i166, i32 noundef 18) #14
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i166, i32 0, i32 6
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %18 = and i64 %hdr_buf.sroa.0.0.copyload, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool.i.not = icmp eq i64 %18, 0
  br i1 %tobool.i.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %broadcast_xmt_max_payload = getelementptr i8, ptr %net, i32 2396
  %19 = ptrtoint ptr %broadcast_xmt_max_payload to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %broadcast_xmt_max_payload, align 4
  %broadcast_xmt_datagramlabel = getelementptr i8, ptr %net, i32 2400
  %fifo_addr = getelementptr inbounds %struct.fwnet_packet_task, ptr %call8, i32 0, i32 5
  %21 = ptrtoint ptr %fifo_addr to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 -1, ptr %fifo_addr, align 8
  %generation = getelementptr inbounds %struct.fwnet_packet_task, ptr %call8, i32 0, i32 8
  %22 = ptrtoint ptr %generation to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %generation, align 4
  %dest_node21 = getelementptr inbounds %struct.fwnet_packet_task, ptr %call8, i32 0, i32 6
  %23 = ptrtoint ptr %dest_node21 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -1, ptr %dest_node21, align 8
  br label %if.end44

if.else:                                          ; preds = %sw.epilog
  %peer_list.i = getelementptr i8, ptr %net, i32 2456
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.else
  %peer.0.in.i = phi ptr [ %peer_list.i, %if.else ], [ %peer.0.i, %for.body.i.for.cond.i_crit_edge ]
  %24 = ptrtoint ptr %peer.0.in.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %peer.0.i = load ptr, ptr %peer.0.in.i, align 8
  %cmp.not.i = icmp eq ptr %peer.0.i, %peer_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.then79_crit_edge, label %for.body.i

for.cond.i.if.then79_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then79

for.body.i:                                       ; preds = %for.cond.i
  %guid2.i = getelementptr inbounds %struct.fwnet_peer, ptr %peer.0.i, i32 0, i32 2
  %25 = ptrtoint ptr %guid2.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %guid2.i, align 8
  %cmp3.i = icmp eq i64 %26, %hdr_buf.sroa.0.0.copyload
  br i1 %cmp3.i, label %fwnet_peer_find_by_guid.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

fwnet_peer_find_by_guid.exit:                     ; preds = %for.body.i
  %tobool27.not = icmp eq ptr %peer.0.i, null
  br i1 %tobool27.not, label %fwnet_peer_find_by_guid.exit.if.then79_crit_edge, label %cleanup

fwnet_peer_find_by_guid.exit.if.then79_crit_edge: ; preds = %fwnet_peer_find_by_guid.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then79

cleanup:                                          ; preds = %fwnet_peer_find_by_guid.exit
  call void @__sanitizer_cov_trace_pc() #16
  %generation30 = getelementptr inbounds %struct.fwnet_peer, ptr %peer.0.i, i32 0, i32 8
  %27 = ptrtoint ptr %generation30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %generation30, align 4
  %conv31 = trunc i32 %28 to i8
  %node_id = getelementptr inbounds %struct.fwnet_peer, ptr %peer.0.i, i32 0, i32 7
  %29 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %node_id, align 8
  %conv32 = trunc i32 %30 to i16
  %max_payload33 = getelementptr inbounds %struct.fwnet_peer, ptr %peer.0.i, i32 0, i32 6
  %31 = ptrtoint ptr %max_payload33 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %max_payload33, align 2
  %conv34 = zext i16 %32 to i32
  %datagram_label = getelementptr inbounds %struct.fwnet_peer, ptr %peer.0.i, i32 0, i32 5
  %conv.i = zext i16 %hdr_buf.sroa.15.0.copyload to i64
  %shl.i = shl nuw nsw i64 %conv.i, 32
  %conv2.i = zext i32 %hdr_buf.sroa.18.0.copyload to i64
  %or.i = or i64 %shl.i, %conv2.i
  %fifo_addr36 = getelementptr inbounds %struct.fwnet_packet_task, ptr %call8, i32 0, i32 5
  %33 = ptrtoint ptr %fifo_addr36 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %or.i, ptr %fifo_addr36, align 8
  %generation37 = getelementptr inbounds %struct.fwnet_packet_task, ptr %call8, i32 0, i32 8
  %34 = ptrtoint ptr %generation37 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv31, ptr %generation37, align 4
  %dest_node38 = getelementptr inbounds %struct.fwnet_packet_task, ptr %call8, i32 0, i32 6
  %35 = ptrtoint ptr %dest_node38 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv32, ptr %dest_node38, align 8
  %speed39 = getelementptr inbounds %struct.fwnet_peer, ptr %peer.0.i, i32 0, i32 9
  %36 = ptrtoint ptr %speed39 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %speed39, align 8
  %conv40 = trunc i32 %37 to i8
  br label %if.end44

if.end44:                                         ; preds = %cleanup, %if.then20
  %conv40.sink = phi i8 [ %conv40, %cleanup ], [ 0, %if.then20 ]
  %max_payload.1 = phi i32 [ %conv34, %cleanup ], [ %20, %if.then20 ]
  %datagram_label_ptr.1 = phi ptr [ %datagram_label, %cleanup ], [ %broadcast_xmt_datagramlabel, %if.then20 ]
  %speed41 = getelementptr inbounds %struct.fwnet_packet_task, ptr %call8, i32 0, i32 9
  %38 = ptrtoint ptr %speed41 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv40.sink, ptr %speed41, align 1
  %hdr = getelementptr inbounds %struct.fwnet_packet_task, ptr %call8, i32 0, i32 1
  %39 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %hdr, align 4
  %w1 = getelementptr inbounds %struct.fwnet_packet_task, ptr %call8, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %w1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %w1, align 8
  %skb46 = getelementptr inbounds %struct.fwnet_packet_task, ptr %call8, i32 0, i32 2
  %41 = ptrtoint ptr %skb46 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %skb.addr.0.i166, ptr %skb46, align 4
  %dev47 = getelementptr inbounds %struct.fwnet_packet_task, ptr %call8, i32 0, i32 3
  %42 = ptrtoint ptr %dev47 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr.i, ptr %dev47, align 8
  %conv48 = and i32 %17, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv48, i32 %max_payload.1)
  %cmp49.not = icmp ugt i32 %conv48, %max_payload.1
  br i1 %cmp49.not, label %if.else55, label %if.then51

if.then51:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  %43 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv16, ptr %hdr, align 4
  br label %if.end66

if.else55:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  %sub = add i32 %max_payload.1, -4
  %44 = ptrtoint ptr %datagram_label_ptr.1 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %datagram_label_ptr.1, align 2
  %inc = add i16 %45, 1
  store i16 %inc, ptr %datagram_label_ptr.1, align 2
  %conv60 = zext i16 %45 to i32
  %sub.i = shl nuw i32 %conv48, 16
  %shl.i156 = add i32 %sub.i, -65536
  %or.i157 = or i32 %shl.i156, %conv16
  %or1.i = or i32 %or.i157, 1073741824
  %46 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or1.i, ptr %hdr, align 4
  %shl2.i = shl nuw i32 %conv60, 16
  %47 = ptrtoint ptr %w1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %shl2.i, ptr %w1, align 8
  %add62 = add nsw i32 %conv48, -1
  %sub63 = add i32 %add62, %sub
  %div = udiv i32 %sub63, %sub
  br label %if.end66

if.end66:                                         ; preds = %if.else55, %if.then51
  %.sink = phi i32 [ %div, %if.else55 ], [ 1, %if.then51 ]
  %max_payload.2.in = phi i32 [ %max_payload.1, %if.else55 ], [ %conv48, %if.then51 ]
  %48 = getelementptr inbounds %struct.fwnet_packet_task, ptr %call8, i32 0, i32 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %.sink, ptr %48, align 4
  %queued_datagrams = getelementptr i8, ptr %net, i32 2448
  %50 = ptrtoint ptr %queued_datagrams to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %queued_datagrams, align 8
  %inc67 = add i32 %51, 1
  store i32 %inc67, ptr %queued_datagrams, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %inc67)
  %cmp68 = icmp eq i32 %inc67, 20
  br i1 %cmp68, label %if.then70, label %if.end66.if.end72_crit_edge

if.end66.if.end72_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72

if.then70:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  %52 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %netdev, align 4
  %_tx.i.i158 = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 103
  %54 = ptrtoint ptr %_tx.i.i158 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %_tx.i.i158, align 128
  %state.i.i159 = getelementptr inbounds %struct.netdev_queue, ptr %55, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i159) #14
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.end66.if.end72_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #14
  %56 = trunc i32 %max_payload.2.in to i16
  %conv74 = add i16 %56, 4
  %max_payload75 = getelementptr inbounds %struct.fwnet_packet_task, ptr %call8, i32 0, i32 7
  %57 = ptrtoint ptr %max_payload75 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv74, ptr %max_payload75, align 2
  %enqueued = getelementptr inbounds %struct.fwnet_packet_task, ptr %call8, i32 0, i32 10
  %58 = ptrtoint ptr %enqueued to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %enqueued, align 2
  tail call fastcc void @fwnet_send_packet(ptr noundef nonnull %call8)
  br label %cleanup88

if.then79:                                        ; preds = %fwnet_peer_find_by_guid.exit.if.then79_crit_edge, %for.cond.i.if.then79_crit_edge, %if.end15.if.then79_crit_edge, %skb_share_check.exit.if.then79_crit_edge, %skb_share_check.exit.thread
  %skb.addr.0173 = phi ptr [ null, %skb_share_check.exit.thread ], [ null, %skb_share_check.exit.if.then79_crit_edge ], [ %skb.addr.0.i166, %if.end15.if.then79_crit_edge ], [ %skb.addr.0.i166, %fwnet_peer_find_by_guid.exit.if.then79_crit_edge ], [ %skb.addr.0.i166, %for.cond.i.if.then79_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #14
  %59 = load ptr, ptr @fwnet_packet_task_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %59, ptr noundef nonnull %call8) #14
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %fail.thread175
  %skb.addr.0174 = phi ptr [ %skb.addr.0173, %if.then79 ], [ %skb, %fail.thread175 ]
  %cmp81.not = icmp eq ptr %skb.addr.0174, null
  br i1 %cmp81.not, label %if.end80.if.end84_crit_edge, label %if.then83

if.end80.if.end84_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end84

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @consume_skb(ptr noundef nonnull %skb.addr.0174) #14
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.end80.if.end84_crit_edge
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 36, i32 7
  %60 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tx_dropped, align 4
  %inc85 = add i32 %61, 1
  store i32 %inc85, ptr %tx_dropped, align 4
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 36, i32 5
  %62 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tx_errors, align 4
  %inc87 = add i32 %63, 1
  store i32 %inc87, ptr %tx_errors, align 4
  br label %cleanup88

cleanup88:                                        ; preds = %if.end84, %if.end72, %if.then
  %retval.0 = phi i32 [ 16, %if.then ], [ 0, %if.end84 ], [ 0, %if.end72 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fw_iso_context_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fwnet_receive_broadcast(ptr nocapture noundef readonly %context, i32 noundef %cycle, i32 noundef %header_length, ptr nocapture noundef readonly %header, ptr noundef %data) #3 align 64 {
entry:
  %packet = alloca %struct.fw_iso_packet, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packet) #14
  %0 = getelementptr inbounds %struct.fw_iso_packet, ptr %packet, i32 0, i32 1
  %1 = ptrtoint ptr %header to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %header, align 2
  %conv = zext i16 %2 to i32
  %lock = getelementptr inbounds %struct.fwnet_device, ptr %data, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %rcv_buffer_size = getelementptr inbounds %struct.fwnet_device, ptr %data, i32 0, i32 8
  %3 = ptrtoint ptr %rcv_buffer_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rcv_buffer_size, align 8
  %broadcast_rcv_next_ptr = getelementptr inbounds %struct.fwnet_device, ptr %data, i32 0, i32 6
  %5 = ptrtoint ptr %broadcast_rcv_next_ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %broadcast_rcv_next_ptr, align 8
  %mul = mul i32 %6, %4
  %broadcast_rcv_buffer_ptrs = getelementptr inbounds %struct.fwnet_device, ptr %data, i32 0, i32 5
  %7 = ptrtoint ptr %broadcast_rcv_buffer_ptrs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %broadcast_rcv_buffer_ptrs, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %broadcast_rcv_next_ptr, align 8
  %arrayidx = getelementptr ptr, ptr %8, i32 %6
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %num_broadcast_rcv_ptrs = getelementptr inbounds %struct.fwnet_device, ptr %data, i32 0, i32 7
  %11 = ptrtoint ptr %num_broadcast_rcv_ptrs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_broadcast_rcv_ptrs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %12)
  %cmp9 = icmp eq i32 %inc, %12
  %spec.store.select = select i1 %cmp9, i32 0, i32 %inc
  %13 = ptrtoint ptr %broadcast_rcv_next_ptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.store.select, ptr %broadcast_rcv_next_ptr, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %2)
  %cmp13 = icmp ugt i16 %2, 8
  br i1 %cmp13, label %land.lhs.true, label %entry.if.end28_crit_edge

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

land.lhs.true:                                    ; preds = %entry
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %10, align 4
  %and.i = shl i32 %15, 8
  %shl.i = and i32 %and.i, 16776960
  %arrayidx1.i = getelementptr i32, ptr %10, i32 1
  %16 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx1.i, align 4
  %shr.i = lshr i32 %17, 24
  %or.i = or i32 %shl.i, %shr.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 94, i32 %or.i)
  %cmp16 = icmp eq i32 %or.i, 94
  br i1 %cmp16, label %land.lhs.true18, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

land.lhs.true18:                                  ; preds = %land.lhs.true
  %and.i91 = and i32 %17, 16777215
  %and.i91.off = add nsw i32 %and.i91, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i91.off)
  %switch = icmp ult i32 %and.i91.off, 2
  br i1 %switch, label %if.then25, label %land.lhs.true18.if.end28_crit_edge

land.lhs.true18.if.end28_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then25:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i32, ptr %10, i32 2
  %sub = add nsw i32 %conv, -8
  %shr.i94 = lshr i32 %15, 16
  %18 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %context, align 4
  %generation = getelementptr inbounds %struct.fw_card, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %generation, align 8
  %call27 = tail call fastcc i32 @fwnet_incoming_packet(ptr noundef %data, ptr noundef %add.ptr, i32 noundef %sub, i32 noundef %shr.i94, i32 noundef %21, i1 noundef zeroext true)
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %land.lhs.true18.if.end28_crit_edge, %land.lhs.true.if.end28_crit_edge, %entry.if.end28_crit_edge
  %22 = ptrtoint ptr %rcv_buffer_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rcv_buffer_size, align 8
  %conv30 = trunc i32 %23 to i16
  %24 = ptrtoint ptr %packet to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv30, ptr %packet, align 4
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -20472, ptr %0, align 2
  %call53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %broadcast_rcv_context = getelementptr inbounds %struct.fwnet_device, ptr %data, i32 0, i32 3
  %26 = ptrtoint ptr %broadcast_rcv_context to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %broadcast_rcv_context, align 8
  %broadcast_rcv_buffer = getelementptr inbounds %struct.fwnet_device, ptr %data, i32 0, i32 4
  %call58 = call i32 @fw_iso_context_queue(ptr noundef %27, ptr noundef nonnull %packet, ptr noundef %broadcast_rcv_buffer, i32 noundef %mul) #14
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call53) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call58)
  %cmp60 = icmp sgt i32 %call58, -1
  br i1 %cmp60, label %if.then62, label %do.end66

if.then62:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %broadcast_rcv_context to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %broadcast_rcv_context, align 8
  call void @fw_iso_context_queue_flush(ptr noundef %29) #14
  br label %if.end68

do.end66:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  %netdev = getelementptr inbounds %struct.fwnet_device, ptr %data, i32 0, i32 17
  %30 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %netdev, align 4
  %dev67 = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 133
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev67, ptr noundef nonnull @.str.11) #18
  br label %if.end68

if.end68:                                         ; preds = %do.end66, %if.then62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packet) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_buffer_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_context_queue(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_context_start(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__fwnet_broadcast_stop(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %broadcast_state = getelementptr inbounds %struct.fwnet_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %broadcast_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %broadcast_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %pages = getelementptr inbounds %struct.fwnet_device, ptr %dev, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pages, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 55) #14
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %shr.i.i = lshr i32 %7, 30
  %8 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %shr.i.i, label %for.cond.preheader.kunmap.exit_crit_edge [
    i32 2, label %for.cond.preheader.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

for.cond.preheader.if.end.i_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

for.cond.preheader.kunmap.exit_crit_edge:         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %kunmap.exit

is_highmem_idx.exit.i:                            ; preds = %for.cond.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %9 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp2.i.not.i = icmp eq i32 %9, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.end.i_crit_edge, label %is_highmem_idx.exit.i.kunmap.exit_crit_edge

is_highmem_idx.exit.i.kunmap.exit_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kunmap.exit

is_highmem_idx.exit.i.if.end.i_crit_edge:         ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i.if.end.i_crit_edge, %for.cond.preheader.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %5) #14
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i.kunmap.exit_crit_edge, %for.cond.preheader.kunmap.exit_crit_edge
  %10 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pages, align 4
  %arrayidx.1 = getelementptr ptr, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 55) #14
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %shr.i.i.1 = lshr i32 %15, 30
  %16 = zext i32 %shr.i.i.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %shr.i.i.1, label %kunmap.exit.kunmap.exit.1_crit_edge [
    i32 2, label %kunmap.exit.if.end.i.1_crit_edge
    i32 3, label %is_highmem_idx.exit.i.1
  ]

kunmap.exit.if.end.i.1_crit_edge:                 ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.1

kunmap.exit.kunmap.exit.1_crit_edge:              ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %kunmap.exit.1

is_highmem_idx.exit.i.1:                          ; preds = %kunmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %17 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp2.i.not.i.1 = icmp eq i32 %17, 2
  br i1 %cmp2.i.not.i.1, label %is_highmem_idx.exit.i.1.if.end.i.1_crit_edge, label %is_highmem_idx.exit.i.1.kunmap.exit.1_crit_edge

is_highmem_idx.exit.i.1.kunmap.exit.1_crit_edge:  ; preds = %is_highmem_idx.exit.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %kunmap.exit.1

is_highmem_idx.exit.i.1.if.end.i.1_crit_edge:     ; preds = %is_highmem_idx.exit.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.1

if.end.i.1:                                       ; preds = %is_highmem_idx.exit.i.1.if.end.i.1_crit_edge, %kunmap.exit.if.end.i.1_crit_edge
  tail call void @kunmap_high(ptr noundef %13) #14
  br label %kunmap.exit.1

kunmap.exit.1:                                    ; preds = %if.end.i.1, %is_highmem_idx.exit.i.1.kunmap.exit.1_crit_edge, %kunmap.exit.kunmap.exit.1_crit_edge
  %18 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pages, align 4
  %arrayidx.2 = getelementptr ptr, ptr %19, i32 2
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.2, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 55) #14
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %shr.i.i.2 = lshr i32 %23, 30
  %24 = zext i32 %shr.i.i.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %shr.i.i.2, label %kunmap.exit.1.kunmap.exit.2_crit_edge [
    i32 2, label %kunmap.exit.1.if.end.i.2_crit_edge
    i32 3, label %is_highmem_idx.exit.i.2
  ]

kunmap.exit.1.if.end.i.2_crit_edge:               ; preds = %kunmap.exit.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.2

kunmap.exit.1.kunmap.exit.2_crit_edge:            ; preds = %kunmap.exit.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %kunmap.exit.2

is_highmem_idx.exit.i.2:                          ; preds = %kunmap.exit.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %25 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp2.i.not.i.2 = icmp eq i32 %25, 2
  br i1 %cmp2.i.not.i.2, label %is_highmem_idx.exit.i.2.if.end.i.2_crit_edge, label %is_highmem_idx.exit.i.2.kunmap.exit.2_crit_edge

is_highmem_idx.exit.i.2.kunmap.exit.2_crit_edge:  ; preds = %is_highmem_idx.exit.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %kunmap.exit.2

is_highmem_idx.exit.i.2.if.end.i.2_crit_edge:     ; preds = %is_highmem_idx.exit.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.2

if.end.i.2:                                       ; preds = %is_highmem_idx.exit.i.2.if.end.i.2_crit_edge, %kunmap.exit.1.if.end.i.2_crit_edge
  tail call void @kunmap_high(ptr noundef %21) #14
  br label %kunmap.exit.2

kunmap.exit.2:                                    ; preds = %if.end.i.2, %is_highmem_idx.exit.i.2.kunmap.exit.2_crit_edge, %kunmap.exit.1.kunmap.exit.2_crit_edge
  %26 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pages, align 4
  %arrayidx.3 = getelementptr ptr, ptr %27, i32 3
  %28 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.3, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 55) #14
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %shr.i.i.3 = lshr i32 %31, 30
  %32 = zext i32 %shr.i.i.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %shr.i.i.3, label %kunmap.exit.2.kunmap.exit.3_crit_edge [
    i32 2, label %kunmap.exit.2.if.end.i.3_crit_edge
    i32 3, label %is_highmem_idx.exit.i.3
  ]

kunmap.exit.2.if.end.i.3_crit_edge:               ; preds = %kunmap.exit.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.3

kunmap.exit.2.kunmap.exit.3_crit_edge:            ; preds = %kunmap.exit.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %kunmap.exit.3

is_highmem_idx.exit.i.3:                          ; preds = %kunmap.exit.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %33 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp2.i.not.i.3 = icmp eq i32 %33, 2
  br i1 %cmp2.i.not.i.3, label %is_highmem_idx.exit.i.3.if.end.i.3_crit_edge, label %is_highmem_idx.exit.i.3.kunmap.exit.3_crit_edge

is_highmem_idx.exit.i.3.kunmap.exit.3_crit_edge:  ; preds = %is_highmem_idx.exit.i.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %kunmap.exit.3

is_highmem_idx.exit.i.3.if.end.i.3_crit_edge:     ; preds = %is_highmem_idx.exit.i.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.3

if.end.i.3:                                       ; preds = %is_highmem_idx.exit.i.3.if.end.i.3_crit_edge, %kunmap.exit.2.if.end.i.3_crit_edge
  tail call void @kunmap_high(ptr noundef %29) #14
  br label %kunmap.exit.3

kunmap.exit.3:                                    ; preds = %if.end.i.3, %is_highmem_idx.exit.i.3.kunmap.exit.3_crit_edge, %kunmap.exit.2.kunmap.exit.3_crit_edge
  %broadcast_rcv_buffer2 = getelementptr inbounds %struct.fwnet_device, ptr %dev, i32 0, i32 4
  %card = getelementptr inbounds %struct.fwnet_device, ptr %dev, i32 0, i32 16
  %34 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %card, align 8
  tail call void @fw_iso_buffer_destroy(ptr noundef %broadcast_rcv_buffer2, ptr noundef %35) #14
  br label %if.end

if.end:                                           ; preds = %kunmap.exit.3, %entry.if.end_crit_edge
  %broadcast_rcv_context = getelementptr inbounds %struct.fwnet_device, ptr %dev, i32 0, i32 3
  %36 = ptrtoint ptr %broadcast_rcv_context to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %broadcast_rcv_context, align 8
  %tobool.not = icmp eq ptr %37, null
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @fw_iso_context_destroy(ptr noundef nonnull %37) #14
  %38 = ptrtoint ptr %broadcast_rcv_context to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %broadcast_rcv_context, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %broadcast_rcv_buffer_ptrs = getelementptr inbounds %struct.fwnet_device, ptr %dev, i32 0, i32 5
  %39 = ptrtoint ptr %broadcast_rcv_buffer_ptrs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %broadcast_rcv_buffer_ptrs, align 4
  tail call void @kfree(ptr noundef %40) #14
  %41 = ptrtoint ptr %broadcast_rcv_buffer_ptrs to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %broadcast_rcv_buffer_ptrs, align 4
  %42 = ptrtoint ptr %broadcast_state to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %broadcast_state, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fwnet_incoming_packet(ptr noundef %dev, ptr nocapture noundef readonly %buf, i32 noundef %len, i32 noundef %source_node_id, i32 noundef %generation, i1 noundef zeroext %is_broadcast) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.fwnet_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %len)
  %cmp = icmp slt i32 %len, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %3)
  %cmp3 = icmp ult i32 %3, 1073741824
  br i1 %cmp3, label %if.then4, label %if.end28

if.then4:                                         ; preds = %if.end
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hard_header_len, align 2
  %conv7 = zext i16 %5 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %needed_headroom, align 8
  %conv8 = zext i16 %7 to i32
  %add = add nuw nsw i32 %conv8, %conv7
  %and9 = and i32 %add, 131056
  %add10 = add nuw i32 %len, 12
  %add11 = add nuw i32 %add10, %and9
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add11, i32 noundef 2592) #14
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.then15, label %if.end16, !prof !98

if.then15:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %8 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %9, 1
  store i32 %inc, ptr %rx_dropped, align 8
  br label %cleanup

if.end16:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  %sub = add nsw i32 %len, -4
  %incdec.ptr = getelementptr i32, ptr %buf, i32 1
  %conv = trunc i32 %3 to i16
  %10 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hard_header_len, align 2
  %conv18 = zext i16 %11 to i32
  %12 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %needed_headroom, align 8
  %conv20 = zext i16 %13 to i32
  %add21 = add nuw nsw i32 %conv20, %conv18
  %and22 = and i32 %add21, 131056
  %add23 = add nuw nsw i32 %and22, 16
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %add23
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %16 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %17, i32 %add23
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %sub) #14
  %18 = call ptr @memcpy(ptr %call.i, ptr %incdec.ptr, i32 %sub)
  %call27 = tail call fastcc i32 @fwnet_finish_incoming_packet(ptr noundef %1, ptr noundef nonnull %call.i.i, i1 noundef zeroext %is_broadcast, i16 noundef zeroext %conv)
  br label %cleanup

if.end28:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %len)
  %cmp29 = icmp ult i32 %len, 9
  br i1 %cmp29, label %if.end28.cleanup_crit_edge, label %if.end32

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  %arrayidx33 = getelementptr i32, ptr %buf, i32 1
  %19 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx33, align 4
  %add.ptr = getelementptr i32, ptr %buf, i32 2
  %sub34 = add nsw i32 %len, -8
  %shr.mask = and i32 %3, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr.mask)
  %cmp35 = icmp eq i32 %shr.mask, 1073741824
  %conv40 = trunc i32 %3 to i16
  %and42 = and i32 %3, 4095
  %fg_off.0 = select i1 %cmp35, i32 0, i32 %and42
  %ether_type.0 = select i1 %cmp35, i16 %conv40, i16 0
  %shr46 = lshr i32 %20, 16
  %conv47 = trunc i32 %shr46 to i16
  %and49 = lshr i32 %3, 16
  %shr50 = and i32 %and49, 4095
  %add51 = add nuw nsw i32 %shr50, 1
  %add52 = add nuw i32 %fg_off.0, %sub34
  call void @__sanitizer_cov_trace_cmp4(i32 %add52, i32 %add51)
  %cmp53 = icmp sgt i32 %add52, %add51
  br i1 %cmp53, label %if.end32.cleanup_crit_edge, label %do.body57

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body57:                                        ; preds = %if.end32
  %lock = getelementptr inbounds %struct.fwnet_device, ptr %dev, i32 0, i32 1
  %call61 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %peer_list.i = getelementptr inbounds %struct.fwnet_device, ptr %dev, i32 0, i32 15
  %21 = ptrtoint ptr %peer_list.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %peer.016.i = load ptr, ptr %peer_list.i, align 8
  %cmp.not17.i = icmp eq ptr %peer.016.i, %peer_list.i
  br i1 %cmp.not17.i, label %do.body57.fail_crit_edge, label %do.body57.for.body.i_crit_edge

do.body57.for.body.i_crit_edge:                   ; preds = %do.body57
  br label %for.body.i

do.body57.fail_crit_edge:                         ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.body57.for.body.i_crit_edge
  %peer.018.i = phi ptr [ %peer.0.i, %for.inc.i.for.body.i_crit_edge ], [ %peer.016.i, %do.body57.for.body.i_crit_edge ]
  %node_id2.i = getelementptr inbounds %struct.fwnet_peer, ptr %peer.018.i, i32 0, i32 7
  %22 = ptrtoint ptr %node_id2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %node_id2.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %source_node_id)
  %cmp3.i = icmp eq i32 %23, %source_node_id
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %generation4.i = getelementptr inbounds %struct.fwnet_peer, ptr %peer.018.i, i32 0, i32 8
  %24 = ptrtoint ptr %generation4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %generation4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %generation)
  %cmp5.i = icmp eq i32 %25, %generation
  br i1 %cmp5.i, label %fwnet_peer_find_by_node_id.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %26 = ptrtoint ptr %peer.018.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %peer.0.i = load ptr, ptr %peer.018.i, align 8
  %cmp.not.i = icmp eq ptr %peer.0.i, %peer_list.i
  br i1 %cmp.not.i, label %for.inc.i.fail_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.fail_crit_edge:                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

fwnet_peer_find_by_node_id.exit:                  ; preds = %land.lhs.true.i
  %tobool65.not = icmp eq ptr %peer.018.i, null
  br i1 %tobool65.not, label %fwnet_peer_find_by_node_id.exit.fail_crit_edge, label %if.end67

fwnet_peer_find_by_node_id.exit.fail_crit_edge:   ; preds = %fwnet_peer_find_by_node_id.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.end67:                                         ; preds = %fwnet_peer_find_by_node_id.exit
  %pd_list.i = getelementptr inbounds %struct.fwnet_peer, ptr %peer.018.i, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i211.for.cond.i_crit_edge, %if.end67
  %pd.0.in.i = phi ptr [ %pd_list.i, %if.end67 ], [ %pd.0.i, %for.body.i211.for.cond.i_crit_edge ]
  %27 = ptrtoint ptr %pd.0.in.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %pd.0.i = load ptr, ptr %pd.0.in.i, align 4
  %cmp.not.i210 = icmp eq ptr %pd.0.i, %pd_list.i
  br i1 %cmp.not.i210, label %for.cond.i.while.cond.preheader_crit_edge, label %for.body.i211

for.cond.i.while.cond.preheader_crit_edge:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.preheader

for.body.i211:                                    ; preds = %for.cond.i
  %datagram_label2.i = getelementptr inbounds %struct.fwnet_partial_datagram, ptr %pd.0.i, i32 0, i32 4
  %28 = ptrtoint ptr %datagram_label2.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %datagram_label2.i, align 4
  %cmp4.i = icmp eq i16 %29, %conv47
  br i1 %cmp4.i, label %fwnet_pd_find.exit, label %for.body.i211.for.cond.i_crit_edge

for.body.i211.for.cond.i_crit_edge:               ; preds = %for.body.i211
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

fwnet_pd_find.exit:                               ; preds = %for.body.i211
  %cmp69 = icmp eq ptr %pd.0.i, null
  br i1 %cmp69, label %fwnet_pd_find.exit.while.cond.preheader_crit_edge, label %if.else84

fwnet_pd_find.exit.while.cond.preheader_crit_edge: ; preds = %fwnet_pd_find.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %fwnet_pd_find.exit.while.cond.preheader_crit_edge, %for.cond.i.while.cond.preheader_crit_edge
  %pdg_size = getelementptr inbounds %struct.fwnet_peer, ptr %peer.018.i, i32 0, i32 4
  %30 = ptrtoint ptr %pdg_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pdg_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %31)
  %cmp72224 = icmp ugt i32 %31, 29
  br i1 %cmp72224, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %fwnet_pd_delete.exit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %32 = ptrtoint ptr %pd_list.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pd_list.i, align 8
  %fi_list.i = getelementptr inbounds %struct.fwnet_partial_datagram, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %fi_list.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fi_list.i, align 4
  %cmp.not19.i = icmp eq ptr %35, %fi_list.i
  br i1 %cmp.not19.i, label %while.body.for.end.i_crit_edge, label %while.body.for.body.i214_crit_edge

while.body.for.body.i214_crit_edge:               ; preds = %while.body
  br label %for.body.i214

while.body.for.end.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i214:                                    ; preds = %for.body.i214.for.body.i214_crit_edge, %while.body.for.body.i214_crit_edge
  %fi.020.i = phi ptr [ %n.0.i, %for.body.i214.for.body.i214_crit_edge ], [ %35, %while.body.for.body.i214_crit_edge ]
  %36 = ptrtoint ptr %fi.020.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %n.0.i = load ptr, ptr %fi.020.i, align 4
  tail call void @kfree(ptr noundef %fi.020.i) #14
  %cmp.not.i213 = icmp eq ptr %n.0.i, %fi_list.i
  br i1 %cmp.not.i213, label %for.body.i214.for.end.i_crit_edge, label %for.body.i214.for.body.i214_crit_edge

for.body.i214.for.body.i214_crit_edge:            ; preds = %for.body.i214
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i214

for.body.i214.for.end.i_crit_edge:                ; preds = %for.body.i214
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i214.for.end.i_crit_edge, %while.body.for.end.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %33) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.i.fwnet_pd_delete.exit_crit_edge

for.end.i.fwnet_pd_delete.exit_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fwnet_pd_delete.exit

if.end.i.i.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i.i, align 4
  %39 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %33, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %fwnet_pd_delete.exit

fwnet_pd_delete.exit:                             ; preds = %if.end.i.i.i, %for.end.i.fwnet_pd_delete.exit_crit_edge
  %43 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 256 to ptr), ptr %33, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %skb.i = getelementptr inbounds %struct.fwnet_partial_datagram, ptr %33, i32 0, i32 2
  %45 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %skb.i, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %46, i32 noundef 1) #14
  tail call void @kfree(ptr noundef %33) #14
  %47 = ptrtoint ptr %pdg_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pdg_size, align 8
  %dec = add i32 %48, -1
  store i32 %dec, ptr %pdg_size, align 8
  %cmp72 = icmp ugt i32 %dec, 29
  br i1 %cmp72, label %fwnet_pd_delete.exit.while.body_crit_edge, label %fwnet_pd_delete.exit.while.end_crit_edge

fwnet_pd_delete.exit.while.end_crit_edge:         ; preds = %fwnet_pd_delete.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

fwnet_pd_delete.exit.while.body_crit_edge:        ; preds = %fwnet_pd_delete.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %fwnet_pd_delete.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %call77 = tail call fastcc ptr @fwnet_pd_new(ptr noundef %1, ptr noundef nonnull %peer.018.i, i16 noundef zeroext %conv47, i32 noundef %add51, ptr noundef %add.ptr, i32 noundef %fg_off.0, i32 noundef %sub34)
  %cmp78 = icmp eq ptr %call77, null
  br i1 %cmp78, label %while.end.fail_crit_edge, label %if.end81

while.end.fail_crit_edge:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.end81:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  %49 = ptrtoint ptr %pdg_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pdg_size, align 8
  %inc83 = add i32 %50, 1
  store i32 %inc83, ptr %pdg_size, align 8
  br label %if.end105

if.else84:                                        ; preds = %fwnet_pd_find.exit
  %fi_list.i215 = getelementptr inbounds %struct.fwnet_partial_datagram, ptr %pd.0.i, i32 0, i32 1
  br label %for.cond.i217

for.cond.i217:                                    ; preds = %for.body.i218.for.cond.i217_crit_edge, %if.else84
  %fi.0.in.i = phi ptr [ %fi_list.i215, %if.else84 ], [ %fi.0.i, %for.body.i218.for.cond.i217_crit_edge ]
  %51 = ptrtoint ptr %fi.0.in.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %fi.0.i = load ptr, ptr %fi.0.in.i, align 4
  %cmp.not.i216 = icmp eq ptr %fi.0.i, %fi_list.i215
  br i1 %cmp.not.i216, label %lor.lhs.false, label %for.body.i218

for.body.i218:                                    ; preds = %for.cond.i217
  %offset2.i = getelementptr inbounds %struct.fwnet_fragment_info, ptr %fi.0.i, i32 0, i32 1
  %52 = ptrtoint ptr %offset2.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %offset2.i, align 4
  %conv.i = zext i16 %53 to i32
  %len3.i = getelementptr inbounds %struct.fwnet_fragment_info, ptr %fi.0.i, i32 0, i32 2
  %54 = ptrtoint ptr %len3.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %len3.i, align 2
  %conv4.i = zext i16 %55 to i32
  %add5.i = add nuw nsw i32 %conv4.i, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %fg_off.0)
  %cmp6.i = icmp ugt i32 %add5.i, %fg_off.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add52, i32 %conv.i)
  %cmp10.i = icmp ugt i32 %add52, %conv.i
  %or.cond.i = and i1 %cmp10.i, %cmp6.i
  br i1 %or.cond.i, label %for.body.i218.if.then90_crit_edge, label %for.body.i218.for.cond.i217_crit_edge

for.body.i218.for.cond.i217_crit_edge:            ; preds = %for.body.i218
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i217

for.body.i218.if.then90_crit_edge:                ; preds = %for.body.i218
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then90

lor.lhs.false:                                    ; preds = %for.cond.i217
  %datagram_size = getelementptr inbounds %struct.fwnet_partial_datagram, ptr %pd.0.i, i32 0, i32 6
  %56 = ptrtoint ptr %datagram_size to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %datagram_size, align 4
  %conv87 = zext i16 %57 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add51, i32 %conv87)
  %cmp88.not = icmp eq i32 %add51, %conv87
  br i1 %cmp88.not, label %if.else98, label %lor.lhs.false.if.then90_crit_edge

lor.lhs.false.if.then90_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then90

if.then90:                                        ; preds = %lor.lhs.false.if.then90_crit_edge, %for.body.i218.if.then90_crit_edge
  tail call fastcc void @fwnet_pd_delete(ptr noundef nonnull %pd.0.i)
  %call91 = tail call fastcc ptr @fwnet_pd_new(ptr noundef %1, ptr noundef nonnull %peer.018.i, i16 noundef zeroext %conv47, i32 noundef %add51, ptr noundef %add.ptr, i32 noundef %fg_off.0, i32 noundef %sub34)
  %cmp92 = icmp eq ptr %call91, null
  br i1 %cmp92, label %if.then90.fail.sink.split_crit_edge, label %if.then90.if.end105_crit_edge

if.then90.if.end105_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end105

if.then90.fail.sink.split_crit_edge:              ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail.sink.split

if.else98:                                        ; preds = %lor.lhs.false
  %call99 = tail call fastcc zeroext i1 @fwnet_pd_update(ptr noundef nonnull %peer.018.i, ptr noundef nonnull %pd.0.i, ptr noundef %add.ptr, i32 noundef %fg_off.0, i32 noundef %sub34)
  br i1 %call99, label %if.else98.if.end105_crit_edge, label %if.then100

if.else98.if.end105_crit_edge:                    ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end105

if.then100:                                       ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @fwnet_pd_delete(ptr noundef nonnull %pd.0.i)
  br label %fail.sink.split

if.end105:                                        ; preds = %if.else98.if.end105_crit_edge, %if.then90.if.end105_crit_edge, %if.end81
  %pd.0 = phi ptr [ %call77, %if.end81 ], [ %call91, %if.then90.if.end105_crit_edge ], [ %pd.0.i, %if.else98.if.end105_crit_edge ]
  br i1 %cmp35, label %if.then108, label %if.end105.if.end110_crit_edge

if.end105.if.end110_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end110

if.then108:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #16
  %ether_type109 = getelementptr inbounds %struct.fwnet_partial_datagram, ptr %pd.0, i32 0, i32 5
  %58 = ptrtoint ptr %ether_type109 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %ether_type.0, ptr %ether_type109, align 2
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %if.end105.if.end110_crit_edge
  %fi_list.i219 = getelementptr inbounds %struct.fwnet_partial_datagram, ptr %pd.0, i32 0, i32 1
  %59 = ptrtoint ptr %fi_list.i219 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fi_list.i219, align 4
  %len.i = getelementptr inbounds %struct.fwnet_fragment_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %len.i, align 2
  %datagram_size.i = getelementptr inbounds %struct.fwnet_partial_datagram, ptr %pd.0, i32 0, i32 6
  %63 = ptrtoint ptr %datagram_size.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %datagram_size.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %62, i16 %64)
  %cmp.i = icmp eq i16 %62, %64
  br i1 %cmp.i, label %if.then112, label %if.end110.fail_crit_edge

if.end110.fail_crit_edge:                         ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.then112:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #16
  %ether_type113 = getelementptr inbounds %struct.fwnet_partial_datagram, ptr %pd.0, i32 0, i32 5
  %65 = ptrtoint ptr %ether_type113 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %ether_type113, align 2
  %pdg_size114 = getelementptr inbounds %struct.fwnet_peer, ptr %peer.018.i, i32 0, i32 4
  %67 = ptrtoint ptr %pdg_size114 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pdg_size114, align 8
  %dec115 = add i32 %68, -1
  store i32 %dec115, ptr %pdg_size114, align 8
  %skb116 = getelementptr inbounds %struct.fwnet_partial_datagram, ptr %pd.0, i32 0, i32 2
  %69 = ptrtoint ptr %skb116 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %skb116, align 4
  %call117 = tail call fastcc ptr @skb_get(ptr noundef %70)
  tail call fastcc void @fwnet_pd_delete(ptr noundef %pd.0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call61) #14
  %call120 = tail call fastcc i32 @fwnet_finish_incoming_packet(ptr noundef %1, ptr noundef %70, i1 noundef zeroext false, i16 noundef zeroext %66)
  br label %cleanup

fail.sink.split:                                  ; preds = %if.then100, %if.then90.fail.sink.split_crit_edge
  %pdg_size95 = getelementptr inbounds %struct.fwnet_peer, ptr %peer.018.i, i32 0, i32 4
  %71 = ptrtoint ptr %pdg_size95 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pdg_size95, align 8
  %dec102 = add i32 %72, -1
  store i32 %dec102, ptr %pdg_size95, align 8
  br label %fail

fail:                                             ; preds = %fail.sink.split, %if.end110.fail_crit_edge, %while.end.fail_crit_edge, %fwnet_peer_find_by_node_id.exit.fail_crit_edge, %for.inc.i.fail_crit_edge, %do.body57.fail_crit_edge
  %retval1.0 = phi i32 [ -2, %fwnet_peer_find_by_node_id.exit.fail_crit_edge ], [ -12, %while.end.fail_crit_edge ], [ 0, %if.end110.fail_crit_edge ], [ -2, %do.body57.fail_crit_edge ], [ -12, %fail.sink.split ], [ -2, %for.inc.i.fail_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call61) #14
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.then112, %if.end32.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end16, %if.then15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then15 ], [ %call27, %if.end16 ], [ %retval1.0, %fail ], [ %call120, %if.then112 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_iso_context_queue_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fwnet_finish_incoming_packet(ptr noundef %net, ptr noundef %skb, i1 noundef zeroext %is_broadcast, i16 noundef zeroext %ether_type) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %ether_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.30)
  switch i16 %ether_type, label %err [
    i16 2054, label %entry.sw.epilog_crit_edge
    i16 2048, label %entry.sw.epilog_crit_edge7
    i16 -31011, label %entry.sw.epilog_crit_edge8
  ]

entry.sw.epilog_crit_edge8:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.sw.epilog_crit_edge7:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge7, %entry.sw.epilog_crit_edge8
  %1 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %net, ptr %1, align 8
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %3 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  store i16 %bf.clear, ptr %ip_summed, align 8
  br i1 %is_broadcast, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %broadcast = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 99
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 86
  %4 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_addr, align 64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %broadcast, %cond.true ], [ %5, %cond.false ]
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %header_ops.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 49
  %8 = ptrtoint ptr %header_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %header_ops.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %cond.end.if.then_crit_edge, label %lor.lhs.false.i

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false.i:                                  ; preds = %cond.end
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool2.not.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.then_crit_edge, label %dev_hard_header.exit

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

dev_hard_header.exit:                             ; preds = %lor.lhs.false.i
  %call.i = tail call i32 %11(ptr noundef %skb, ptr noundef %net, i16 noundef zeroext %ether_type, ptr noundef %cond, ptr noundef null, i32 noundef %7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, -1
  br i1 %cmp, label %dev_hard_header.exit.if.then_crit_edge, label %dev_hard_header.exit.if.end48_crit_edge

dev_hard_header.exit.if.end48_crit_edge:          ; preds = %dev_hard_header.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

dev_hard_header.exit.if.then_crit_edge:           ; preds = %dev_hard_header.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %dev_hard_header.exit.if.then_crit_edge, %lor.lhs.false.i.if.then_crit_edge, %cond.end.if.then_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %14 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %16 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %call3 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 18) #14
  %17 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i, align 8
  %19 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mac_header.i, align 2
  %conv.i4 = zext i16 %20 to i32
  %add.ptr.i = getelementptr i8, ptr %18, i32 %conv.i4
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr.i, align 1
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.i.not = icmp eq i8 %23, 0
  br i1 %tobool.i.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then
  %broadcast10 = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 99
  %addr_len = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 56
  %24 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %addr_len, align 1
  %conv12 = zext i8 %25 to i32
  %bcmp1 = tail call i32 @bcmp(ptr %add.ptr.i, ptr %broadcast10, i32 %conv12) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp1)
  %cmp14 = icmp eq i32 %bcmp1, 0
  br i1 %cmp14, label %if.then7.if.end33.sink.split_crit_edge, label %if.then7.if.end33_crit_edge

if.then7.if.end33_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then7.if.end33.sink.split_crit_edge:           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33.sink.split

if.else:                                          ; preds = %if.then
  %dev_addr22 = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 86
  %26 = ptrtoint ptr %dev_addr22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_addr22, align 64
  %addr_len23 = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 56
  %28 = ptrtoint ptr %addr_len23 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %addr_len23, align 1
  %conv24 = zext i8 %29 to i32
  %bcmp = tail call i32 @bcmp(ptr %add.ptr.i, ptr %27, i32 %conv24) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool26.not = icmp eq i32 %bcmp, 0
  br i1 %tobool26.not, label %if.else.if.end33_crit_edge, label %if.else.if.end33.sink.split_crit_edge

if.else.if.end33.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33.sink.split

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.end33.sink.split:                              ; preds = %if.else.if.end33.sink.split_crit_edge, %if.then7.if.end33.sink.split_crit_edge
  %.sink = phi i16 [ 8192, %if.then7.if.end33.sink.split_crit_edge ], [ 24576, %if.else.if.end33.sink.split_crit_edge ]
  %30 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load29 = load i16, ptr %ip_summed, align 8
  %bf.clear30 = and i16 %bf.load29, 8191
  %bf.set31 = or i16 %bf.clear30, %.sink
  store i16 %bf.set31, ptr %ip_summed, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.end33.sink.split, %if.else.if.end33_crit_edge, %if.then7.if.end33_crit_edge
  %h_proto = getelementptr inbounds %struct.fwnet_header, ptr %add.ptr.i, i32 0, i32 1
  %31 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %h_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1535, i16 %32)
  %cmp35 = icmp ugt i16 %32, 1535
  br i1 %cmp35, label %if.end33.if.end46_crit_edge, label %if.else39

if.end33.if.end46_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.else39:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %34, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %36)
  %cmp41 = icmp eq i16 %36, -1
  %. = select i1 %cmp41, i16 1, i16 4
  br label %if.end46

if.end46:                                         ; preds = %if.else39, %if.end33.if.end46_crit_edge
  %protocol.0 = phi i16 [ %32, %if.end33.if.end46_crit_edge ], [ %., %if.else39 ]
  %protocol47 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %37 = ptrtoint ptr %protocol47 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %protocol.0, ptr %protocol47, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.end46, %dev_hard_header.exit.if.end48_crit_edge
  %call49 = tail call i32 @netif_rx(ptr noundef %skb) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call49)
  %cmp50 = icmp eq i32 %call49, 1
  br i1 %cmp50, label %if.then52, label %if.else55

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 36, i32 4
  %38 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %39, 1
  store i32 %inc, ptr %rx_errors, align 8
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 36, i32 6
  %40 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_dropped, align 8
  %inc54 = add i32 %41, 1
  store i32 %inc54, ptr %rx_dropped, align 8
  br label %cleanup

if.else55:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  %stats56 = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 36
  %42 = ptrtoint ptr %stats56 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %stats56, align 8
  %inc57 = add i32 %43, 1
  store i32 %inc57, ptr %stats56, align 8
  %44 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 36, i32 2
  %46 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %47, %45
  store i32 %add, ptr %rx_bytes, align 8
  br label %cleanup

err:                                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %rx_errors62 = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 36, i32 4
  %48 = ptrtoint ptr %rx_errors62 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_errors62, align 8
  %inc63 = add i32 %49, 1
  store i32 %inc63, ptr %rx_errors62, align 8
  %rx_dropped65 = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 36, i32 6
  %50 = ptrtoint ptr %rx_dropped65 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rx_dropped65, align 8
  %inc66 = add i32 %51, 1
  store i32 %inc66, ptr %rx_dropped65, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #14
  br label %cleanup

cleanup:                                          ; preds = %err, %if.else55, %if.then52
  %retval.0 = phi i32 [ -2, %err ], [ 0, %if.else55 ], [ 0, %if.then52 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fwnet_pd_delete(ptr noundef %old) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fi_list = getelementptr inbounds %struct.fwnet_partial_datagram, ptr %old, i32 0, i32 1
  %0 = ptrtoint ptr %fi_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fi_list, align 4
  %cmp.not19 = icmp eq ptr %1, %fi_list
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %fi.020 = phi ptr [ %n.0, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %fi.020 to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.0 = load ptr, ptr %fi.020, align 4
  tail call void @kfree(ptr noundef %fi.020) #14
  %cmp.not = icmp eq ptr %n.0, %fi_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %old) #14
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_del.exit_crit_edge

for.end.list_del.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %old, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %old to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %old, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.end.list_del.exit_crit_edge
  %9 = ptrtoint ptr %old to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %old, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %old, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %skb = getelementptr inbounds %struct.fwnet_partial_datagram, ptr %old, i32 0, i32 2
  %11 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skb, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %12, i32 noundef 1) #14
  tail call void @kfree(ptr noundef %old) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fwnet_pd_new(ptr nocapture noundef readonly %net, ptr noundef %peer, i16 noundef zeroext %datagram_label, i32 noundef %dg_size, ptr nocapture noundef readonly %frag_buf, i32 noundef %frag_off, i32 noundef %frag_len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 32) #17
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %fi_list = getelementptr inbounds %struct.fwnet_partial_datagram, ptr %call7.i, i32 0, i32 1
  %1 = ptrtoint ptr %fi_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %fi_list, ptr %fi_list, align 8
  %prev.i = getelementptr inbounds %struct.fwnet_partial_datagram, ptr %call7.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fi_list, ptr %prev.i, align 4
  %call1 = tail call fastcc ptr @fwnet_frag_new(ptr noundef nonnull %call7.i, i32 noundef %frag_off, i32 noundef %frag_len)
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %if.end.fail_w_new_crit_edge, label %if.end3

if.end.fail_w_new_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_w_new

if.end3:                                          ; preds = %if.end
  %datagram_label4 = getelementptr inbounds %struct.fwnet_partial_datagram, ptr %call7.i, i32 0, i32 4
  %3 = ptrtoint ptr %datagram_label4 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %datagram_label, ptr %datagram_label4, align 8
  %conv = trunc i32 %dg_size to i16
  %datagram_size = getelementptr inbounds %struct.fwnet_partial_datagram, ptr %call7.i, i32 0, i32 6
  %4 = ptrtoint ptr %datagram_size to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %datagram_size, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 19
  %5 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %hard_header_len, align 2
  %conv5 = zext i16 %6 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 21
  %7 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %needed_headroom, align 8
  %conv6 = zext i16 %8 to i32
  %add = add nuw nsw i32 %conv6, %conv5
  %and = and i32 %add, 131056
  %add7 = add i32 %dg_size, 16
  %add8 = add i32 %add7, %and
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add8, i32 noundef 2592) #14
  %skb = getelementptr inbounds %struct.fwnet_partial_datagram, ptr %call7.i, i32 0, i32 2
  %9 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i.i, ptr %skb, align 8
  %cmp11 = icmp eq ptr %call.i.i, null
  br i1 %cmp11, label %fail_w_fi, label %if.end14

if.end14:                                         ; preds = %if.end3
  %10 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hard_header_len, align 2
  %conv17 = zext i16 %11 to i32
  %12 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %needed_headroom, align 8
  %conv19 = zext i16 %13 to i32
  %add20 = add nuw nsw i32 %conv19, %conv17
  %and21 = and i32 %add20, 131056
  %add22 = add nuw nsw i32 %and21, 16
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %add22
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %16 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %17, i32 %add22
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %18 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %skb, align 8
  %call24 = tail call ptr @skb_put(ptr noundef %19, i32 noundef %dg_size) #14
  %pbuf = getelementptr inbounds %struct.fwnet_partial_datagram, ptr %call7.i, i32 0, i32 3
  %20 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call24, ptr %pbuf, align 4
  %add.ptr = getelementptr i8, ptr %call24, i32 %frag_off
  %21 = call ptr @memcpy(ptr %add.ptr, ptr %frag_buf, i32 %frag_len)
  %pd_list = getelementptr inbounds %struct.fwnet_peer, ptr %peer, i32 0, i32 3
  %prev.i48 = getelementptr inbounds %struct.fwnet_peer, ptr %peer, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i48, align 4
  %call.i.i49 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %23, ptr noundef %pd_list) #14
  br i1 %call.i.i49, label %if.end.i.i, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i, ptr %prev.i48, align 4
  %25 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %pd_list, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call7.i, ptr %23, align 4
  br label %cleanup

fail_w_fi:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call1) #14
  br label %fail_w_new

fail_w_new:                                       ; preds = %fail_w_fi, %if.end.fail_w_new_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %cleanup

cleanup:                                          ; preds = %fail_w_new, %if.end.i.i, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %fail_w_new ], [ %call7.i, %if.end14.cleanup_crit_edge ], [ %call7.i, %if.end.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @fwnet_pd_update(ptr noundef %peer, ptr noundef %pd, ptr nocapture noundef readonly %frag_buf, i32 noundef %frag_off, i32 noundef %frag_len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @fwnet_frag_new(ptr noundef %pd, i32 noundef %frag_off, i32 noundef %frag_len)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %pbuf = getelementptr inbounds %struct.fwnet_partial_datagram, ptr %pd, i32 0, i32 3
  %0 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pbuf, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %frag_off
  %2 = call ptr @memcpy(ptr %add.ptr, ptr %frag_buf, i32 %frag_len)
  %pd_list = getelementptr inbounds %struct.fwnet_peer, ptr %peer, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pd) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end.__list_del_entry.exit.i_crit_edge

if.end.__list_del_entry.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pd, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pd, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.fwnet_peer, ptr %peer, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %pd, ptr noundef %10, ptr noundef %pd_list) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.return_crit_edge

__list_del_entry.exit.i.return_crit_edge:         ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %pd, ptr %prev.i2.i, align 4
  %12 = ptrtoint ptr %pd to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pd_list, ptr %pd, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %pd, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %pd, ptr %10, align 4
  br label %return

return:                                           ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.return_crit_edge, %entry.return_crit_edge
  %15 = xor i1 %cmp, true
  ret i1 %15
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_get(ptr noundef returned %skb) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %users = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #14, !srcloc !99
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !98

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !95

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users, i32 noundef %.sink.i.i.i) #14
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret ptr %skb
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fwnet_frag_new(ptr noundef %pd, i32 noundef %offset, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fi_list = getelementptr inbounds %struct.fwnet_partial_datagram, ptr %pd, i32 0, i32 1
  %add36 = add i32 %len, %offset
  br label %for.cond

for.cond:                                         ; preds = %if.end81.for.cond_crit_edge, %entry
  %fi.0.in = phi ptr [ %fi_list, %entry ], [ %fi.0, %if.end81.for.cond_crit_edge ]
  %0 = ptrtoint ptr %fi.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %fi.0 = load ptr, ptr %fi.0.in, align 4
  %cmp.not = icmp eq ptr %fi.0, %fi_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.cond
  %offset3 = getelementptr inbounds %struct.fwnet_fragment_info, ptr %fi.0, i32 0, i32 1
  %1 = ptrtoint ptr %offset3 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %offset3, align 4
  %conv = zext i16 %2 to i32
  %len4 = getelementptr inbounds %struct.fwnet_fragment_info, ptr %fi.0, i32 0, i32 2
  %3 = ptrtoint ptr %len4 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %len4, align 2
  %conv5 = zext i16 %4 to i32
  %add = add nuw nsw i32 %conv5, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %offset)
  %cmp6 = icmp eq i32 %add, %offset
  br i1 %cmp6, label %if.then, label %if.end35

if.then:                                          ; preds = %for.body
  %len4.le198 = getelementptr inbounds %struct.fwnet_fragment_info, ptr %fi.0, i32 0, i32 2
  %5 = ptrtoint ptr %fi.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fi.0, align 4
  %offset18 = getelementptr inbounds %struct.fwnet_fragment_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %offset18 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %offset18, align 4
  %conv19 = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv19, i32 %offset)
  %cmp20 = icmp eq i32 %conv19, %offset
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.then
  %len23 = getelementptr inbounds %struct.fwnet_fragment_info, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %len23 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %len23, align 2
  %11 = trunc i32 %len to i16
  %12 = add i16 %4, %11
  %conv29 = add i16 %12, %10
  %13 = ptrtoint ptr %len4.le198 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv29, ptr %len4.le198, align 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then22.list_del.exit_crit_edge

if.then22.list_del.exit_crit_edge:                ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %6, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then22.list_del.exit_crit_edge
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %6) #14
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %22 = trunc i32 %len to i16
  %conv34 = add i16 %4, %22
  %23 = ptrtoint ptr %len4.le198 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv34, ptr %len4.le198, align 2
  br label %cleanup

if.end35:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %add36, i32 %conv)
  %cmp39 = icmp eq i32 %add36, %conv
  br i1 %cmp39, label %if.then41, label %if.end71

if.then41:                                        ; preds = %if.end35
  %prev = getelementptr inbounds %struct.list_head, ptr %fi.0, i32 0, i32 1
  %24 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev, align 4
  %offset46 = getelementptr inbounds %struct.fwnet_fragment_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %offset46 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %offset46, align 4
  %conv47 = zext i16 %27 to i32
  %len48 = getelementptr inbounds %struct.fwnet_fragment_info, ptr %25, i32 0, i32 2
  %28 = ptrtoint ptr %len48 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %len48, align 2
  %conv49 = zext i16 %29 to i32
  %add50 = add nuw nsw i32 %conv49, %conv47
  call void @__sanitizer_cov_trace_cmp4(i32 %add50, i32 %add36)
  %cmp53 = icmp eq i32 %add50, %add36
  br i1 %cmp53, label %if.then55, label %if.end64

if.then55:                                        ; preds = %if.then41
  %30 = trunc i32 %len to i16
  %31 = add i16 %4, %30
  %conv62 = add i16 %31, %29
  %32 = ptrtoint ptr %len48 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv62, ptr %len48, align 2
  %call.i.i153 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %fi.0) #14
  br i1 %call.i.i153, label %if.end.i.i156, label %if.then55.list_del.exit158_crit_edge

if.then55.list_del.exit158_crit_edge:             ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit158

if.end.i.i156:                                    ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev, align 4
  %35 = ptrtoint ptr %fi.0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fi.0, align 4
  %prev1.i.i.i155 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i155 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i155, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del.exit158

list_del.exit158:                                 ; preds = %if.end.i.i156, %if.then55.list_del.exit158_crit_edge
  %39 = ptrtoint ptr %fi.0 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 256 to ptr), ptr %fi.0, align 4
  %40 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 290 to ptr), ptr %prev, align 4
  tail call void @kfree(ptr noundef %fi.0) #14
  br label %cleanup

if.end64:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  %len4.le = getelementptr inbounds %struct.fwnet_fragment_info, ptr %fi.0, i32 0, i32 2
  %offset3.le = getelementptr inbounds %struct.fwnet_fragment_info, ptr %fi.0, i32 0, i32 1
  %conv65 = trunc i32 %offset to i16
  %41 = ptrtoint ptr %offset3.le to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv65, ptr %offset3.le, align 4
  %42 = trunc i32 %len to i16
  %conv70 = add i16 %4, %42
  %43 = ptrtoint ptr %len4.le to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv70, ptr %len4.le, align 2
  br label %cleanup

if.end71:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %offset)
  %cmp77 = icmp ult i32 %add, %offset
  br i1 %cmp77, label %if.end71.for.end_crit_edge, label %if.end81

if.end71.for.end_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end81:                                         ; preds = %if.end71
  %cmp85 = icmp ult i32 %add36, %conv
  br i1 %cmp85, label %if.then87, label %if.end81.for.cond_crit_edge

if.end81.for.cond_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

if.then87:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  %prev89 = getelementptr inbounds %struct.list_head, ptr %fi.0, i32 0, i32 1
  %44 = ptrtoint ptr %prev89 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev89, align 4
  br label %for.end

for.end:                                          ; preds = %if.then87, %if.end71.for.end_crit_edge, %for.cond.for.end_crit_edge
  %list.0 = phi ptr [ %45, %if.then87 ], [ %fi.0, %if.end71.for.end_crit_edge ], [ %fi_list, %for.cond.for.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %46 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 2592, i32 noundef 12) #17
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end97

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end97:                                         ; preds = %for.end
  %conv98 = trunc i32 %offset to i16
  %offset99 = getelementptr inbounds %struct.fwnet_fragment_info, ptr %call7.i, i32 0, i32 1
  %47 = ptrtoint ptr %offset99 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv98, ptr %offset99, align 8
  %conv100 = trunc i32 %len to i16
  %len101 = getelementptr inbounds %struct.fwnet_fragment_info, ptr %call7.i, i32 0, i32 2
  %48 = ptrtoint ptr %len101 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv100, ptr %len101, align 2
  %49 = ptrtoint ptr %list.0 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %list.0, align 4
  %call.i.i159 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %list.0, ptr noundef %50) #14
  br i1 %call.i.i159, label %if.end.i.i160, label %if.end97.cleanup_crit_edge

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i160:                                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call7.i, ptr %prev1.i.i, align 4
  %52 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %50, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %53 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %list.0, ptr %prev3.i.i, align 4
  %54 = ptrtoint ptr %list.0 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %call7.i, ptr %list.0, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i160, %if.end97.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end64, %list_del.exit158, %if.else, %list_del.exit
  %retval.0 = phi ptr [ %25, %list_del.exit158 ], [ %fi.0, %if.end64 ], [ %fi.0, %if.else ], [ %fi.0, %list_del.exit ], [ null, %for.end.cleanup_crit_edge ], [ %call7.i, %if.end97.cleanup_crit_edge ], [ %call7.i, %if.end.i.i160 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_iso_buffer_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_iso_context_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_context_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fwnet_send_packet(ptr noundef %ptask) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.fwnet_packet_task, ptr %ptask, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %max_payload = getelementptr inbounds %struct.fwnet_packet_task, ptr %ptask, i32 0, i32 7
  %2 = ptrtoint ptr %max_payload to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max_payload, align 2
  %conv = zext i16 %3 to i32
  %hdr = getelementptr inbounds %struct.fwnet_packet_task, ptr %ptask, i32 0, i32 1
  %4 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hdr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %5)
  %switch = icmp ult i32 %5, 1073741824
  %skb = getelementptr inbounds %struct.fwnet_packet_task, ptr %ptask, i32 0, i32 2
  %6 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb, align 4
  br i1 %switch, label %sw.bb, label %sw.bb5

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call ptr @skb_push(ptr noundef %7, i32 noundef 4) #14
  %8 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hdr, align 4
  %10 = ptrtoint ptr %call to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %call, align 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call7 = tail call ptr @skb_push(ptr noundef %7, i32 noundef 8) #14
  %11 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hdr, align 4
  %13 = ptrtoint ptr %call7 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %call7, align 1
  %w1 = getelementptr inbounds %struct.fwnet_packet_task, ptr %ptask, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %w1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %w1, align 4
  %w112 = getelementptr inbounds %struct.rfc2734_header, ptr %call7, i32 0, i32 1
  %16 = ptrtoint ptr %w112 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %w112, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb
  %dest_node = getelementptr inbounds %struct.fwnet_packet_task, ptr %ptask, i32 0, i32 6
  %17 = ptrtoint ptr %dest_node to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %dest_node, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %18)
  %cmp = icmp eq i16 %18, -1
  br i1 %cmp, label %if.then, label %if.end54

if.then:                                          ; preds = %sw.epilog
  %card = getelementptr inbounds %struct.fwnet_device, ptr %1, i32 0, i32 16
  %19 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card, align 8
  %generation18 = getelementptr inbounds %struct.fw_card, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %generation18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %generation18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !100
  %23 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %card, align 8
  %node_id26 = getelementptr inbounds %struct.fw_card, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %node_id26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %node_id26, align 4
  %skb27 = getelementptr inbounds %struct.fwnet_packet_task, ptr %ptask, i32 0, i32 2
  %27 = ptrtoint ptr %skb27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %skb27, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 15, i32 0, i32 18
  %29 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %30)
  %cond = icmp eq i16 %30, -31011
  %. = select i1 %cond, i32 1577058306, i32 1577058305
  %call33 = tail call ptr @skb_push(ptr noundef %28, i32 noundef 8) #14
  %shl = shl i32 %26, 16
  %31 = ptrtoint ptr %call33 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %shl, ptr %call33, align 1
  %arrayidx = getelementptr i8, ptr %call33, i32 4
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %., ptr %arrayidx, align 1
  %33 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %card, align 8
  %35 = ptrtoint ptr %skb27 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %skb27, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 19
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data, align 4
  %add = add nuw nsw i32 %conv, 8
  tail call void @fw_send_request(ptr noundef %34, ptr noundef %ptask, i32 noundef 10, i32 noundef 57088, i32 noundef %22, i32 noundef 0, i64 noundef 0, ptr noundef %38, i32 noundef %add, ptr noundef nonnull @fwnet_write_complete, ptr noundef %ptask) #14
  %lock = getelementptr inbounds %struct.fwnet_device, ptr %1, i32 0, i32 1
  %call43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %outstanding_pkts = getelementptr inbounds %struct.fwnet_packet_task, ptr %ptask, i32 0, i32 4
  %39 = ptrtoint ptr %outstanding_pkts to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %outstanding_pkts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp48 = icmp eq i32 %40, 0
  br i1 %cmp48, label %land.end, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.end:                                         ; preds = %if.then
  %enqueued = getelementptr inbounds %struct.fwnet_packet_task, ptr %ptask, i32 0, i32 10
  %41 = ptrtoint ptr %enqueued to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %enqueued, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not = icmp eq i8 %42, 0
  br i1 %tobool.not, label %if.else, label %land.end.if.end_crit_edge

land.end.if.end_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.else:                                          ; preds = %land.end
  %queued_datagrams.i = getelementptr inbounds %struct.fwnet_device, ptr %1, i32 0, i32 13
  %43 = ptrtoint ptr %queued_datagrams.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %queued_datagrams.i, align 8
  %dec.i = add i32 %44, -1
  store i32 %dec.i, ptr %queued_datagrams.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 10
  br i1 %cmp.i, label %if.then.i, label %if.else.if.end.thread_crit_edge

if.else.if.end.thread_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.thread

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %netdev.i = getelementptr inbounds %struct.fwnet_device, ptr %1, i32 0, i32 17
  %45 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %netdev.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 103
  %47 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %48) #14
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.then.i, %if.else.if.end.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call43) #14
  br label %if.then94

if.end:                                           ; preds = %land.end.if.end_crit_edge, %if.then.if.end_crit_edge
  %enqueued52 = getelementptr inbounds %struct.fwnet_packet_task, ptr %ptask, i32 0, i32 10
  %49 = ptrtoint ptr %enqueued52 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %enqueued52, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call43) #14
  br label %cleanup

if.end54:                                         ; preds = %sw.epilog
  %conv16 = zext i16 %18 to i32
  %card55 = getelementptr inbounds %struct.fwnet_device, ptr %1, i32 0, i32 16
  %50 = ptrtoint ptr %card55 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %card55, align 8
  %generation59 = getelementptr inbounds %struct.fwnet_packet_task, ptr %ptask, i32 0, i32 8
  %52 = ptrtoint ptr %generation59 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %generation59, align 4
  %conv60 = zext i8 %53 to i32
  %speed = getelementptr inbounds %struct.fwnet_packet_task, ptr %ptask, i32 0, i32 9
  %54 = ptrtoint ptr %speed to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %speed, align 1
  %conv61 = zext i8 %55 to i32
  %fifo_addr = getelementptr inbounds %struct.fwnet_packet_task, ptr %ptask, i32 0, i32 5
  %56 = ptrtoint ptr %fifo_addr to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %fifo_addr, align 8
  %skb62 = getelementptr inbounds %struct.fwnet_packet_task, ptr %ptask, i32 0, i32 2
  %58 = ptrtoint ptr %skb62 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %skb62, align 4
  %data63 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 19
  %60 = ptrtoint ptr %data63 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data63, align 4
  tail call void @fw_send_request(ptr noundef %51, ptr noundef %ptask, i32 noundef 1, i32 noundef %conv16, i32 noundef %conv60, i32 noundef %conv61, i64 noundef %57, ptr noundef %61, i32 noundef %conv, ptr noundef nonnull @fwnet_write_complete, ptr noundef %ptask) #14
  %lock71 = getelementptr inbounds %struct.fwnet_device, ptr %1, i32 0, i32 1
  %call73 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock71) #14
  %outstanding_pkts78 = getelementptr inbounds %struct.fwnet_packet_task, ptr %ptask, i32 0, i32 4
  %62 = ptrtoint ptr %outstanding_pkts78 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %outstanding_pkts78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp79 = icmp eq i32 %63, 0
  br i1 %cmp79, label %land.end85, label %if.end54.if.then88_crit_edge

if.end54.if.then88_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then88

land.end85:                                       ; preds = %if.end54
  %enqueued82 = getelementptr inbounds %struct.fwnet_packet_task, ptr %ptask, i32 0, i32 10
  %64 = ptrtoint ptr %enqueued82 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %enqueued82, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool83.not = icmp eq i8 %65, 0
  br i1 %tobool83.not, label %if.else90, label %land.end85.if.then88_crit_edge

land.end85.if.then88_crit_edge:                   ; preds = %land.end85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then88

if.then88:                                        ; preds = %land.end85.if.then88_crit_edge, %if.end54.if.then88_crit_edge
  %enqueued89 = getelementptr inbounds %struct.fwnet_packet_task, ptr %ptask, i32 0, i32 10
  %66 = ptrtoint ptr %enqueued89 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %enqueued89, align 2
  br label %if.end91

if.else90:                                        ; preds = %land.end85
  %queued_datagrams.i2 = getelementptr inbounds %struct.fwnet_device, ptr %1, i32 0, i32 13
  %67 = ptrtoint ptr %queued_datagrams.i2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %queued_datagrams.i2, align 8
  %dec.i3 = add i32 %68, -1
  store i32 %dec.i3, ptr %queued_datagrams.i2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %dec.i3)
  %cmp.i4 = icmp eq i32 %dec.i3, 10
  br i1 %cmp.i4, label %if.then.i7, label %if.else90.if.end91_crit_edge

if.else90.if.end91_crit_edge:                     ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end91

if.then.i7:                                       ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #16
  %netdev.i5 = getelementptr inbounds %struct.fwnet_device, ptr %1, i32 0, i32 17
  %69 = ptrtoint ptr %netdev.i5 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %netdev.i5, align 4
  %_tx.i.i.i6 = getelementptr inbounds %struct.net_device, ptr %70, i32 0, i32 103
  %71 = ptrtoint ptr %_tx.i.i.i6 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %_tx.i.i.i6, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %72) #14
  br label %if.end91

if.end91:                                         ; preds = %if.then.i7, %if.else90.if.end91_crit_edge, %if.then88
  %73 = phi i1 [ false, %if.then88 ], [ true, %if.else90.if.end91_crit_edge ], [ true, %if.then.i7 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock71, i32 noundef %call73) #14
  %netdev = getelementptr inbounds %struct.fwnet_device, ptr %1, i32 0, i32 17
  %74 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %netdev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %75, i32 0, i32 103
  %76 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %78 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %77, i32 0, i32 12
  %79 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %78)
  %cmp.not.i.i = icmp eq i32 %80, %78
  br i1 %cmp.not.i.i, label %out, label %do.body5.i.i

do.body5.i.i:                                     ; preds = %if.end91
  %81 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile i32 %78, ptr %trans_start.i.i, align 16
  br i1 %73, label %do.body5.i.i.if.then94_crit_edge, label %do.body5.i.i.cleanup_crit_edge

do.body5.i.i.cleanup_crit_edge:                   ; preds = %do.body5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body5.i.i.if.then94_crit_edge:                 ; preds = %do.body5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then94

out:                                              ; preds = %if.end91
  br i1 %73, label %out.if.then94_crit_edge, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

out.if.then94_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then94

if.then94:                                        ; preds = %out.if.then94_crit_edge, %do.body5.i.i.if.then94_crit_edge, %if.end.thread
  %skb.i = getelementptr inbounds %struct.fwnet_packet_task, ptr %ptask, i32 0, i32 2
  %82 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %skb.i, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %83, i32 noundef 1) #14
  %84 = load ptr, ptr @fwnet_packet_task_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %84, ptr noundef %ptask) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then94, %out.cleanup_crit_edge, %do.body5.i.i.cleanup_crit_edge, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_send_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fwnet_write_complete(ptr nocapture noundef readnone %card, i32 noundef %rcode, ptr nocapture noundef readnone %payload, i32 noundef %length, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rcode)
  %cmp = icmp eq i32 %rcode, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.fwnet_packet_task, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 8
  %skb2.i = getelementptr inbounds %struct.fwnet_packet_task, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %skb2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb2.i, align 4
  %lock.i = getelementptr inbounds %struct.fwnet_device, ptr %1, i32 0, i32 1
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %outstanding_pkts.i = getelementptr inbounds %struct.fwnet_packet_task, ptr %data, i32 0, i32 4
  %4 = ptrtoint ptr %outstanding_pkts.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %outstanding_pkts.i, align 4
  %dec.i = add i32 %5, -1
  store i32 %dec.i, ptr %outstanding_pkts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp8.i = icmp eq i32 %dec.i, 0
  br i1 %cmp8.i, label %land.end.i, label %if.then.if.end18.i_crit_edge

if.then.if.end18.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

land.end.i:                                       ; preds = %if.then
  %enqueued.i = getelementptr inbounds %struct.fwnet_packet_task, ptr %data, i32 0, i32 10
  %6 = ptrtoint ptr %enqueued.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enqueued.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.i = icmp ne i8 %7, 0
  br i1 %tobool.i, label %if.then.i, label %land.end.i.if.end.i_crit_edge

land.end.i.if.end.i_crit_edge:                    ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %land.end.i
  %queued_datagrams.i.i = getelementptr inbounds %struct.fwnet_device, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %queued_datagrams.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %queued_datagrams.i.i, align 8
  %dec.i.i = add i32 %9, -1
  store i32 %dec.i.i, ptr %queued_datagrams.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %dec.i.i)
  %cmp.i.i = icmp eq i32 %dec.i.i, 10
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %netdev.i.i = getelementptr inbounds %struct.fwnet_device, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev.i.i, align 4
  %_tx.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %13) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i.i, %if.then.i.if.end.i_crit_edge, %land.end.i.if.end.i_crit_edge
  %14 = ptrtoint ptr %outstanding_pkts.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr.i = load i32, ptr %outstanding_pkts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp13.i = icmp eq i32 %.pr.i, 0
  br i1 %cmp13.i, label %if.then15.i, label %if.end.i.if.end18.i_crit_edge

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %netdev.i = getelementptr inbounds %struct.fwnet_device, ptr %1, i32 0, i32 17
  %15 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev.i, align 4
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 36, i32 1
  %17 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_packets.i, align 4
  %inc.i = add i32 %18, 1
  store i32 %inc.i, ptr %tx_packets.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i, align 4
  %21 = load ptr, ptr %netdev.i, align 4
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 36, i32 3
  %22 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_bytes.i, align 4
  %add.i = add i32 %23, %20
  store i32 %add.i, ptr %tx_bytes.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %if.end.i.if.end18.i_crit_edge, %if.then.if.end18.i_crit_edge
  %24 = phi i1 [ %tobool.i, %if.then15.i ], [ %tobool.i, %if.end.i.if.end18.i_crit_edge ], [ false, %if.then.if.end18.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #14
  %25 = ptrtoint ptr %outstanding_pkts.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %outstanding_pkts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp21.i = icmp sgt i32 %26, 0
  br i1 %cmp21.i, label %if.then23.i, label %if.end18.i.if.end107.i_crit_edge

if.end18.i.if.end107.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end107.i

if.then23.i:                                      ; preds = %if.end18.i
  %hdr.i = getelementptr inbounds %struct.fwnet_packet_task, ptr %data, i32 0, i32 1
  %27 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hdr.i, align 4
  %shr.i = lshr i32 %28, 30
  %29 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %shr.i, label %do.end28.i [
    i32 3, label %sw.bb56.i
    i32 1, label %sw.bb42.i
  ]

do.end28.i:                                       ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #16
  %netdev29.i = getelementptr inbounds %struct.fwnet_device, ptr %1, i32 0, i32 17
  %30 = ptrtoint ptr %netdev29.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %netdev29.i, align 4
  %dev30.i = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 133
  %w1.i = getelementptr inbounds %struct.fwnet_packet_task, ptr %data, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %w1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %w1.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30.i, ptr noundef nonnull @.str.18, i32 noundef %26, i32 noundef %shr.i, i32 noundef %28, i32 noundef %33) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/firewire/net.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 866, 0\0A.popsection", ""() #14, !srcloc !101
  unreachable

sw.bb42.i:                                        ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #16
  %max_payload.i = getelementptr inbounds %struct.fwnet_packet_task, ptr %data, i32 0, i32 7
  %34 = ptrtoint ptr %max_payload.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %max_payload.i, align 2
  %w152.i = getelementptr inbounds %struct.fwnet_packet_task, ptr %data, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %w152.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %w152.i, align 4
  br label %sw.epilog.i

sw.bb56.i:                                        ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #16
  %max_payload66.i = getelementptr inbounds %struct.fwnet_packet_task, ptr %data, i32 0, i32 7
  %38 = ptrtoint ptr %max_payload66.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %max_payload66.i, align 2
  %40 = trunc i32 %28 to i16
  %41 = and i16 %40, 4095
  %42 = add i16 %39, %41
  %w172.i = getelementptr inbounds %struct.fwnet_packet_task, ptr %data, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %w172.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %w172.i, align 4
  %and73.i = and i32 %44, -65536
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb56.i, %sw.bb42.i
  %fg_off.0.in.i = phi i16 [ %35, %sw.bb42.i ], [ %42, %sw.bb56.i ]
  %datagram_label.0.in.in.i = phi i32 [ %37, %sw.bb42.i ], [ %and73.i, %sw.bb56.i ]
  %fg_off.0.i = add i16 %fg_off.0.in.i, -8
  %dg_size.0.in.i = and i32 %28, 268369920
  %datagram_label.0.in.i = and i32 %datagram_label.0.in.in.i, -65536
  %dest_node.i = getelementptr inbounds %struct.fwnet_packet_task, ptr %data, i32 0, i32 6
  %45 = ptrtoint ptr %dest_node.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %dest_node.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %46)
  %cmp77.i = icmp eq i16 %46, -1
  %max_payload80.i = getelementptr inbounds %struct.fwnet_packet_task, ptr %data, i32 0, i32 7
  %47 = ptrtoint ptr %max_payload80.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %max_payload80.i, align 2
  %conv81.i = zext i16 %48 to i32
  %add82.i = add nuw nsw i32 %conv81.i, 8
  %conv81.sink.i = select i1 %cmp77.i, i32 %add82.i, i32 %conv81.i
  %call86.i = tail call ptr @skb_pull(ptr noundef %3, i32 noundef %conv81.sink.i) #14
  %49 = ptrtoint ptr %outstanding_pkts.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %outstanding_pkts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp89.i = icmp sgt i32 %50, 1
  %conv94.i = zext i16 %fg_off.0.i to i32
  %shl1.i.i = or i32 %dg_size.0.in.i, %conv94.i
  br i1 %cmp89.i, label %if.then91.i, label %if.else96.i

if.then91.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  %or2.i.i = or i32 %shl1.i.i, -1073741824
  %51 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or2.i.i, ptr %hdr.i, align 4
  %w1.i.i = getelementptr inbounds %struct.fwnet_packet_task, ptr %data, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %w1.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %datagram_label.0.in.i, ptr %w1.i.i, align 4
  br label %if.end105.i

if.else96.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  %or.i152.i = or i32 %shl1.i.i, -2147483648
  %53 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or.i152.i, ptr %hdr.i, align 4
  %w1.i155.i = getelementptr inbounds %struct.fwnet_packet_task, ptr %data, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %w1.i155.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %datagram_label.0.in.i, ptr %w1.i155.i, align 4
  %len101.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  %55 = ptrtoint ptr %len101.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len101.i, align 4
  %57 = trunc i32 %56 to i16
  %conv103.i = add i16 %57, 8
  %58 = ptrtoint ptr %max_payload80.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv103.i, ptr %max_payload80.i, align 2
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.else96.i, %if.then91.i
  tail call fastcc void @fwnet_send_packet(ptr noundef %data) #14
  br label %if.end107.i

if.end107.i:                                      ; preds = %if.end105.i, %if.end18.i.if.end107.i_crit_edge
  br i1 %24, label %if.end107.i.if.end5.sink.split_crit_edge, label %if.end107.i.if.end5_crit_edge

if.end107.i.if.end5_crit_edge:                    ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.end107.i.if.end5.sink.split_crit_edge:         ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.sink.split

if.else:                                          ; preds = %entry
  %call = tail call zeroext i1 @printk_timed_ratelimit(ptr noundef nonnull @fwnet_write_complete.j, i32 noundef 1000) #14
  br i1 %call, label %if.else.do.end_crit_edge, label %lor.lhs.false

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

lor.lhs.false:                                    ; preds = %if.else
  %59 = load i32, ptr @fwnet_write_complete.last_rcode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %rcode)
  %cmp1.not = icmp eq i32 %59, %rcode
  br i1 %cmp1.not, label %if.else4, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.else.do.end_crit_edge
  %dev = getelementptr inbounds %struct.fwnet_packet_task, ptr %data, i32 0, i32 3
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 8
  %netdev = getelementptr inbounds %struct.fwnet_device, ptr %61, i32 0, i32 17
  %62 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %netdev, align 4
  %dev3 = getelementptr inbounds %struct.net_device, ptr %63, i32 0, i32 133
  %64 = load i32, ptr @fwnet_write_complete.errors_skipped, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.16, i32 noundef %rcode, i32 noundef %64) #18
  store i32 0, ptr @fwnet_write_complete.errors_skipped, align 4
  store i32 %rcode, ptr @fwnet_write_complete.last_rcode, align 4
  br label %if.end

if.else4:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %65 = load i32, ptr @fwnet_write_complete.errors_skipped, align 4
  %inc = add i32 %65, 1
  store i32 %inc, ptr @fwnet_write_complete.errors_skipped, align 4
  br label %if.end

if.end:                                           ; preds = %if.else4, %do.end
  %dev1.i11 = getelementptr inbounds %struct.fwnet_packet_task, ptr %data, i32 0, i32 3
  %66 = ptrtoint ptr %dev1.i11 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev1.i11, align 8
  %lock.i12 = getelementptr inbounds %struct.fwnet_device, ptr %67, i32 0, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i12) #14
  %outstanding_pkts.i13 = getelementptr inbounds %struct.fwnet_packet_task, ptr %data, i32 0, i32 4
  %68 = ptrtoint ptr %outstanding_pkts.i13 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %outstanding_pkts.i13, align 4
  %enqueued.i14 = getelementptr inbounds %struct.fwnet_packet_task, ptr %data, i32 0, i32 10
  %69 = ptrtoint ptr %enqueued.i14 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %enqueued.i14, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i = icmp eq i8 %70, 0
  br i1 %tobool.not.i, label %if.end.if.end.i24_crit_edge, label %if.then.i18

if.end.if.end.i24_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i24

if.then.i18:                                      ; preds = %if.end
  %queued_datagrams.i.i15 = getelementptr inbounds %struct.fwnet_device, ptr %67, i32 0, i32 13
  %71 = ptrtoint ptr %queued_datagrams.i.i15 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %queued_datagrams.i.i15, align 8
  %dec.i.i16 = add i32 %72, -1
  store i32 %dec.i.i16, ptr %queued_datagrams.i.i15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %dec.i.i16)
  %cmp.i.i17 = icmp eq i32 %dec.i.i16, 10
  br i1 %cmp.i.i17, label %if.then.i.i21, label %if.then.i18.if.end.i24_crit_edge

if.then.i18.if.end.i24_crit_edge:                 ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i24

if.then.i.i21:                                    ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #16
  %netdev.i.i19 = getelementptr inbounds %struct.fwnet_device, ptr %67, i32 0, i32 17
  %73 = ptrtoint ptr %netdev.i.i19 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %netdev.i.i19, align 4
  %_tx.i.i.i.i20 = getelementptr inbounds %struct.net_device, ptr %74, i32 0, i32 103
  %75 = ptrtoint ptr %_tx.i.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %_tx.i.i.i.i20, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %76) #14
  br label %if.end.i24

if.end.i24:                                       ; preds = %if.then.i.i21, %if.then.i18.if.end.i24_crit_edge, %if.end.if.end.i24_crit_edge
  %netdev.i22 = getelementptr inbounds %struct.fwnet_device, ptr %67, i32 0, i32 17
  %77 = ptrtoint ptr %netdev.i22 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %netdev.i22, align 4
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %78, i32 0, i32 36, i32 7
  %79 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tx_dropped.i, align 4
  %inc.i23 = add i32 %80, 1
  store i32 %inc.i23, ptr %tx_dropped.i, align 4
  %81 = load ptr, ptr %netdev.i22, align 4
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %81, i32 0, i32 36, i32 5
  %82 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tx_errors.i, align 4
  %inc9.i = add i32 %83, 1
  store i32 %inc9.i, ptr %tx_errors.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i12, i32 noundef %call3.i) #14
  br i1 %tobool.not.i, label %if.end.i24.if.end5_crit_edge, label %if.then12.i

if.end.i24.if.end5_crit_edge:                     ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then12.i:                                      ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #16
  %skb.i.i = getelementptr inbounds %struct.fwnet_packet_task, ptr %data, i32 0, i32 2
  br label %if.end5.sink.split

if.end5.sink.split:                               ; preds = %if.then12.i, %if.end107.i.if.end5.sink.split_crit_edge
  %skb.i.i.sink = phi ptr [ %skb.i.i, %if.then12.i ], [ %skb2.i, %if.end107.i.if.end5.sink.split_crit_edge ]
  %84 = ptrtoint ptr %skb.i.i.sink to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %skb.i.i.sink, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %85, i32 noundef 1) #14
  %86 = load ptr, ptr @fwnet_packet_task_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %86, ptr noundef %data) #14
  br label %if.end5

if.end5:                                          ; preds = %if.end5.sink.split, %if.end.i24.if.end5_crit_edge, %if.end107.i.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @printk_timed_ratelimit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fwnet_receive_packet(ptr noundef %card, ptr noundef %r, i32 noundef %tcode, i32 noundef %destination, i32 noundef %source, i32 noundef %generation, i64 noundef %offset, ptr nocapture noundef readonly %payload, i32 noundef %length, ptr noundef %callback_data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %destination)
  %cmp = icmp eq i32 %destination, 65535
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef %r) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %handler = getelementptr inbounds %struct.fwnet_device, ptr %callback_data, i32 0, i32 11
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %handler, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %offset)
  %cmp2.not = icmp eq i64 %1, %offset
  br i1 %cmp2.not, label %if.else, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %tcode)
  %cmp4.not = icmp eq i32 %tcode, 1
  br i1 %cmp4.not, label %if.else6, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.else6:                                         ; preds = %if.else
  %call = tail call fastcc i32 @fwnet_incoming_packet(ptr noundef %callback_data, ptr noundef %payload, i32 noundef %length, i32 noundef %source, i32 noundef %generation, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7.not = icmp eq i32 %call, 0
  br i1 %cmp7.not, label %if.else6.if.end13_crit_edge, label %do.end

if.else6.if.end13_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

do.end:                                           ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #16
  %netdev = getelementptr inbounds %struct.fwnet_device, ptr %callback_data, i32 0, i32 17
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  %dev9 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.20) #18
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.else6.if.end13_crit_edge, %if.else.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %rcode.0 = phi i32 [ 4, %do.end ], [ 7, %if.end.if.end13_crit_edge ], [ 6, %if.else.if.end13_crit_edge ], [ 0, %if.else6.if.end13_crit_edge ]
  tail call void @fw_send_response(ptr noundef %card, ptr noundef %r, i32 noundef %rcode.0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_core_add_address_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_send_response(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_core_remove_address_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38, !40, !42, !43, !44, !45, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !70, !71, !72, !73, !75, !77, !79, !81, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__initcall__kmod_firewire_net__360_1699_fwnet_init6, !1, !"__initcall__kmod_firewire_net__360_1699_fwnet_init6", i1 false, i1 false}
!1 = !{!"../drivers/firewire/net.c", i32 1699, i32 1}
!2 = !{ptr @__exitcall_fwnet_cleanup, !3, !"__exitcall_fwnet_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/firewire/net.c", i32 1710, i32 1}
!4 = !{ptr @__UNIQUE_ID_author361, !5, !"__UNIQUE_ID_author361", i1 false, i1 false}
!5 = !{!"../drivers/firewire/net.c", i32 1712, i32 1}
!6 = !{ptr @__UNIQUE_ID_description362, !7, !"__UNIQUE_ID_description362", i1 false, i1 false}
!7 = !{!"../drivers/firewire/net.c", i32 1713, i32 1}
!8 = !{ptr @__UNIQUE_ID_file363, !9, !"__UNIQUE_ID_file363", i1 false, i1 false}
!9 = !{!"../drivers/firewire/net.c", i32 1714, i32 1}
!10 = !{ptr @__UNIQUE_ID_license364, !9, !"__UNIQUE_ID_license364", i1 false, i1 false}
!11 = !{ptr @fwnet_packet_task_cache, !12, !"fwnet_packet_task_cache", i1 false, i1 false}
!12 = !{!"../drivers/firewire/net.c", i32 810, i32 27}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/firewire/net.c", i32 1678, i32 46}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/firewire/net.c", i32 1609, i32 13}
!17 = !{ptr @fwnet_driver, !18, !"fwnet_driver", i1 false, i1 false}
!18 = !{!"../drivers/firewire/net.c", i32 1606, i32 25}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/firewire/net.c", i32 1457, i32 8}
!21 = !{ptr @fwnet_probe.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/firewire/net.c", i32 1468, i32 2}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/firewire/net.c", i32 1508, i32 2}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @fwnet_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @fwnet_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/firewire/net.c", i32 131, i32 8}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @fwnet_device_mutex, !33, !"fwnet_device_mutex", i1 false, i1 false}
!36 = !{ptr @fwnet_header_ops, !37, !"fwnet_header_ops", i1 false, i1 false}
!37 = !{!"../drivers/firewire/net.c", i32 276, i32 32}
!38 = !{ptr @fwnet_netdev_ops, !39, !"fwnet_netdev_ops", i1 false, i1 false}
!39 = !{!"../drivers/firewire/net.c", i32 1374, i32 36}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/firewire/net.c", i32 807, i32 3}
!42 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @fwnet_receive_broadcast._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @fwnet_receive_broadcast._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!48 = distinct !{null, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/skbuff.h", i32 1810, i32 2}
!50 = !{ptr @fwnet_write_complete.j, !51, !"j", i1 false, i1 false}
!51 = !{!"../drivers/firewire/net.c", i32 933, i32 23}
!52 = !{ptr @fwnet_write_complete.last_rcode, !53, !"last_rcode", i1 false, i1 false}
!53 = !{!"../drivers/firewire/net.c", i32 934, i32 13}
!54 = !{ptr @fwnet_write_complete.errors_skipped, !55, !"errors_skipped", i1 false, i1 false}
!55 = !{!"../drivers/firewire/net.c", i32 934, i32 25}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/firewire/net.c", i32 940, i32 4}
!58 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @fwnet_write_complete._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @fwnet_write_complete._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/firewire/net.c", i32 862, i32 4}
!63 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @fwnet_transmit_packet_done._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @fwnet_transmit_packet_done._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @fwnet_ethtool_ops, !67, !"fwnet_ethtool_ops", i1 false, i1 false}
!67 = !{!"../drivers/firewire/net.c", i32 1370, i32 33}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/firewire/net.c", i32 729, i32 3}
!70 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @fwnet_receive_packet._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @fwnet_receive_packet._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @fwnet_device_list, !74, !"fwnet_device_list", i1 false, i1 false}
!74 = !{!"../drivers/firewire/net.c", i32 132, i32 8}
!75 = !{ptr @fwnet_id_table, !76, !"fwnet_id_table", i1 false, i1 false}
!76 = !{!"../drivers/firewire/net.c", i32 1588, i32 40}
!77 = !{ptr @rfc3146_unit_directory, !78, !"rfc3146_unit_directory", i1 false, i1 false}
!78 = !{!"../drivers/firewire/net.c", i32 1657, i32 29}
!79 = !{ptr @rfc3146_unit_directory_data, !80, !"rfc3146_unit_directory_data", i1 false, i1 false}
!80 = !{!"../drivers/firewire/net.c", i32 1641, i32 18}
!81 = !{ptr @rfc2374_unit_directory, !82, !"rfc2374_unit_directory", i1 false, i1 false}
!82 = !{!"../drivers/firewire/net.c", i32 1634, i32 29}
!83 = !{ptr @rfc2374_unit_directory_data, !84, !"rfc2374_unit_directory_data", i1 false, i1 false}
!84 = !{!"../drivers/firewire/net.c", i32 1618, i32 18}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i64 2156402059}
!95 = !{!"branch_weights", i32 2000, i32 1}
!96 = !{i64 2156333939}
!97 = !{!"auto-init"}
!98 = !{!"branch_weights", i32 1, i32 2000}
!99 = !{i64 2148364863, i64 2148364895, i64 2148364924, i64 2148364958, i64 2148364989, i64 2148365012}
!100 = !{i64 2156389745}
!101 = !{i64 2156384302, i64 2156384789, i64 2156384339, i64 2156384395, i64 2156384429, i64 2156384453, i64 2156384494, i64 2156384515, i64 2156384543, i64 2156384577}
