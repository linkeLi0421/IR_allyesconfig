; ModuleID = '/llk/IR_all_yes/drivers/bluetooth/bluecard_cs.c_pt.bc'
source_filename = "../drivers/bluetooth/bluecard_cs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pcmcia_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pcmcia_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcmcia_dynids = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pcmcia_device_id = type { i16, i16, i16, i8, i8, i8, [4 x i32], [4 x ptr], i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pcmcia_device = type { ptr, ptr, i8, i8, ptr, %struct.list_head, i32, [6 x ptr], i32, i32, i32, i32, i32, i32, i32, i16, i8, i16, i16, [4 x ptr], i64, %struct.device, ptr, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.bluecard_info = type { ptr, ptr, %struct.spinlock, %struct.timer_list, %struct.sk_buff_head, i32, i32, i32, ptr, i8, i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
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
%struct.hci_event_hdr = type { i8, i8 }
%struct.hci_acl_hdr = type { i16, i16 }
%struct.hci_sco_hdr = type <{ i16, i8 }>
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author481 = internal constant [57 x i8] c"bluecard_cs.author=Marcel Holtmann <marcel@holtmann.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description482 = internal constant [81 x i8] c"bluecard_cs.description=Bluetooth driver for the Anycom BlueCard (LSE039/LSE041)\00", section ".modinfo", align 1
@__UNIQUE_ID_file483 = internal constant [47 x i8] c"bluecard_cs.file=drivers/bluetooth/bluecard_cs\00", section ".modinfo", align 1
@__UNIQUE_ID_license484 = internal constant [24 x i8] c"bluecard_cs.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_bluecard_cs__485_908_bluecard_driver_init6 = internal global ptr @bluecard_driver_init, section ".initcall6.init", align 4
@bluecard_driver = internal global { %struct.pcmcia_driver, [52 x i8] } { %struct.pcmcia_driver { ptr @.str, ptr @bluecard_probe, ptr @bluecard_detach, ptr null, ptr null, ptr null, ptr @bluecard_ids, %struct.device_driver zeroinitializer, %struct.pcmcia_dynids zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__exitcall_bluecard_driver_exit = internal global ptr @bluecard_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bluecard_cs\00", [20 x i8] zeroinitializer }, align 32
@bluecard_ids = internal constant { [4 x %struct.pcmcia_device_id], [48 x i8] } { [4 x %struct.pcmcia_device_id] [%struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1158582337, i32 1702674782, i32 0, i32 0], [4 x ptr] [ptr @.str.11, ptr @.str.12, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -476547228, i32 623162780, i32 0, i32 0], [4 x ptr] [ptr @.str.13, ptr @.str.14, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 168244972, i32 619110315, i32 0, i32 0], [4 x ptr] [ptr @.str.15, ptr @.str.16, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Unknown device\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Can't allocate mem for new packet\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Unknown HCI packet with type 0x%02x received\0A\00", [50 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bluecard_write_wakeup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"&wq\00", [28 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@bluecard_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&(info->lock)\00", [18 x i8] zeroinitializer }, align 32
@bluecard_open.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&info->timer)\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Can't allocate HCI device\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Can't register HCI device\0A\00", [37 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BlueCard\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LSE041\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BTCFCARD\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LSE139\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"WSS\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LSE039\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"bluecard_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 901, i32 29 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 903, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"bluecard_ids\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 893, i32 38 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 373, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 392, i32 5 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 433, i32 5 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 282, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 686, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 688, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 699, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 783, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 1984, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 894, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 895, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [35 x i8] c"../drivers/bluetooth/bluecard_cs.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 896, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author481, ptr @__UNIQUE_ID_description482, ptr @__UNIQUE_ID_file483, ptr @__UNIQUE_ID_license484, ptr @__exitcall_bluecard_driver_exit, ptr @__initcall__kmod_bluecard_cs__485_908_bluecard_driver_init6, ptr @bluecard_driver_exit, ptr @bluecard_driver, ptr @.str, ptr @bluecard_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @bluecard_write_wakeup.__key, ptr @.str.4, ptr @bluecard_open.__key, ptr @.str.5, ptr @bluecard_open.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @skb_queue_head_init.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bluecard_driver to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bluecard_ids to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bluecard_write_wakeup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bluecard_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bluecard_open.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bluecard_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcmcia_register_driver(ptr noundef nonnull @bluecard_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bluecard_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pcmcia_unregister_driver(ptr noundef nonnull @bluecard_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bluecard_probe(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 180, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %link, ptr %call.i, align 4
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %priv, align 8
  %config_flags = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 10
  %2 = ptrtoint ptr %config_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %config_flags, align 4
  %or = or i32 %3, 1
  store i32 %or, ptr %config_flags, align 4
  %config_index.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 12
  %4 = ptrtoint ptr %config_index.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 32, ptr %config_index.i, align 4
  %resource.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %5 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %resource.i, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 64, ptr %end.i, align 4
  %io_lines.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 14
  %8 = ptrtoint ptr %io_lines.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 6, ptr %io_lines.i, align 4
  %9 = load ptr, ptr %resource.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 768, ptr %9, align 4
  %call.i8 = tail call i32 @pcmcia_request_io(ptr noundef %link) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %cmp5.i = icmp eq i32 %call.i8, 0
  br i1 %cmp5.i, label %if.end.if.end8.critedge.i_crit_edge, label %for.cond.i

if.end.if.end8.critedge.i_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.critedge.i

for.cond.i:                                       ; preds = %if.end
  %11 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %resource.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 832, ptr %12, align 4
  %call.1.i = tail call i32 @pcmcia_request_io(ptr noundef %link) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp5.1.i = icmp eq i32 %call.1.i, 0
  br i1 %cmp5.1.i, label %for.cond.i.if.end8.critedge.i_crit_edge, label %for.cond.1.i

for.cond.i.if.end8.critedge.i_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.critedge.i

for.cond.1.i:                                     ; preds = %for.cond.i
  %14 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resource.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 896, ptr %15, align 4
  %call.2.i = tail call i32 @pcmcia_request_io(ptr noundef %link) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp5.2.i = icmp eq i32 %call.2.i, 0
  br i1 %cmp5.2.i, label %for.cond.1.i.if.end8.critedge.i_crit_edge, label %for.cond.2.i

for.cond.1.i.if.end8.critedge.i_crit_edge:        ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.critedge.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %17 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %resource.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 960, ptr %18, align 4
  %call.3.i = tail call i32 @pcmcia_request_io(ptr noundef %link) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %cmp5.3.i = icmp eq i32 %call.3.i, 0
  br i1 %cmp5.3.i, label %for.cond.2.i.if.end8.critedge.i_crit_edge, label %for.cond.3.i

for.cond.2.i.if.end8.critedge.i_crit_edge:        ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.critedge.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %20 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %resource.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 512, ptr %21, align 4
  %call.4.i = tail call i32 @pcmcia_request_io(ptr noundef %link) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %cmp5.4.i = icmp eq i32 %call.4.i, 0
  br i1 %cmp5.4.i, label %for.cond.3.i.if.end8.critedge.i_crit_edge, label %for.cond.4.i

for.cond.3.i.if.end8.critedge.i_crit_edge:        ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.critedge.i

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %23 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %resource.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 576, ptr %24, align 4
  %call.5.i = tail call i32 @pcmcia_request_io(ptr noundef %link) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %cmp5.5.i = icmp eq i32 %call.5.i, 0
  br i1 %cmp5.5.i, label %for.cond.4.i.if.end8.critedge.i_crit_edge, label %for.cond.5.i

for.cond.4.i.if.end8.critedge.i_crit_edge:        ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.critedge.i

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %26 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %resource.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 640, ptr %27, align 4
  %call.6.i = tail call i32 @pcmcia_request_io(ptr noundef %link) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i)
  %cmp5.6.i = icmp eq i32 %call.6.i, 0
  br i1 %cmp5.6.i, label %for.cond.5.i.if.end8.critedge.i_crit_edge, label %for.cond.6.i

for.cond.5.i.if.end8.critedge.i_crit_edge:        ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.critedge.i

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %29 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %resource.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 704, ptr %30, align 4
  %call.7.i = tail call i32 @pcmcia_request_io(ptr noundef %link) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7.i)
  %cmp5.7.i = icmp eq i32 %call.7.i, 0
  br i1 %cmp5.7.i, label %for.cond.6.i.if.end8.critedge.i_crit_edge, label %for.cond.7.i

for.cond.6.i.if.end8.critedge.i_crit_edge:        ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.critedge.i

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %32 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %resource.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 256, ptr %33, align 4
  %call.8.i = tail call i32 @pcmcia_request_io(ptr noundef %link) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8.i)
  %cmp5.8.i = icmp eq i32 %call.8.i, 0
  br i1 %cmp5.8.i, label %for.cond.7.i.if.end8.critedge.i_crit_edge, label %for.cond.8.i

for.cond.7.i.if.end8.critedge.i_crit_edge:        ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.critedge.i

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %35 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %resource.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 320, ptr %36, align 4
  %call.9.i = tail call i32 @pcmcia_request_io(ptr noundef %link) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.9.i)
  %cmp5.9.i = icmp eq i32 %call.9.i, 0
  br i1 %cmp5.9.i, label %for.cond.8.i.if.end8.critedge.i_crit_edge, label %for.cond.9.i

for.cond.8.i.if.end8.critedge.i_crit_edge:        ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.critedge.i

for.cond.9.i:                                     ; preds = %for.cond.8.i
  %38 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %resource.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 384, ptr %39, align 4
  %call.10.i = tail call i32 @pcmcia_request_io(ptr noundef %link) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.10.i)
  %cmp5.10.i = icmp eq i32 %call.10.i, 0
  br i1 %cmp5.10.i, label %for.cond.9.i.if.end8.critedge.i_crit_edge, label %for.cond.10.i

for.cond.9.i.if.end8.critedge.i_crit_edge:        ; preds = %for.cond.9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.critedge.i

for.cond.10.i:                                    ; preds = %for.cond.9.i
  %41 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %resource.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 448, ptr %42, align 4
  %call.11.i = tail call i32 @pcmcia_request_io(ptr noundef %link) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.11.i)
  %cmp5.11.i = icmp eq i32 %call.11.i, 0
  br i1 %cmp5.11.i, label %for.cond.10.i.if.end8.critedge.i_crit_edge, label %for.cond.11.i

for.cond.10.i.if.end8.critedge.i_crit_edge:       ; preds = %for.cond.10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.critedge.i

for.cond.11.i:                                    ; preds = %for.cond.10.i
  %44 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %resource.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %45, align 4
  %call.12.i = tail call i32 @pcmcia_request_io(ptr noundef %link) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.12.i)
  %cmp5.12.i = icmp eq i32 %call.12.i, 0
  br i1 %cmp5.12.i, label %for.cond.11.i.if.end8.critedge.i_crit_edge, label %for.cond.12.i

for.cond.11.i.if.end8.critedge.i_crit_edge:       ; preds = %for.cond.11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.critedge.i

for.cond.12.i:                                    ; preds = %for.cond.11.i
  %47 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %resource.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 64, ptr %48, align 4
  %call.13.i = tail call i32 @pcmcia_request_io(ptr noundef %link) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.13.i)
  %cmp5.13.i = icmp eq i32 %call.13.i, 0
  br i1 %cmp5.13.i, label %for.cond.12.i.if.end8.critedge.i_crit_edge, label %for.cond.13.i

for.cond.12.i.if.end8.critedge.i_crit_edge:       ; preds = %for.cond.12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.critedge.i

for.cond.13.i:                                    ; preds = %for.cond.12.i
  %50 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %resource.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 128, ptr %51, align 4
  %call.14.i = tail call i32 @pcmcia_request_io(ptr noundef %link) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.14.i)
  %cmp5.14.i = icmp eq i32 %call.14.i, 0
  br i1 %cmp5.14.i, label %for.cond.13.i.if.end8.critedge.i_crit_edge, label %for.cond.14.i

for.cond.13.i.if.end8.critedge.i_crit_edge:       ; preds = %for.cond.13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.critedge.i

for.cond.14.i:                                    ; preds = %for.cond.13.i
  %53 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %resource.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 192, ptr %54, align 4
  %call.15.i = tail call i32 @pcmcia_request_io(ptr noundef %link) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.15.i)
  %cmp5.15.i = icmp eq i32 %call.15.i, 0
  br i1 %cmp5.15.i, label %for.cond.14.i.if.end8.critedge.i_crit_edge, label %for.cond.14.i.failed.i_crit_edge

for.cond.14.i.failed.i_crit_edge:                 ; preds = %for.cond.14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed.i

for.cond.14.i.if.end8.critedge.i_crit_edge:       ; preds = %for.cond.14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.critedge.i

if.end8.critedge.i:                               ; preds = %for.cond.14.i.if.end8.critedge.i_crit_edge, %for.cond.13.i.if.end8.critedge.i_crit_edge, %for.cond.12.i.if.end8.critedge.i_crit_edge, %for.cond.11.i.if.end8.critedge.i_crit_edge, %for.cond.10.i.if.end8.critedge.i_crit_edge, %for.cond.9.i.if.end8.critedge.i_crit_edge, %for.cond.8.i.if.end8.critedge.i_crit_edge, %for.cond.7.i.if.end8.critedge.i_crit_edge, %for.cond.6.i.if.end8.critedge.i_crit_edge, %for.cond.5.i.if.end8.critedge.i_crit_edge, %for.cond.4.i.if.end8.critedge.i_crit_edge, %for.cond.3.i.if.end8.critedge.i_crit_edge, %for.cond.2.i.if.end8.critedge.i_crit_edge, %for.cond.1.i.if.end8.critedge.i_crit_edge, %for.cond.i.if.end8.critedge.i_crit_edge, %if.end.if.end8.critedge.i_crit_edge
  %call9.i = tail call i32 @pcmcia_request_irq(ptr noundef %link, ptr noundef nonnull @bluecard_interrupt) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.not.i = icmp eq i32 %call9.i, 0
  br i1 %cmp10.not.i, label %if.end12.i, label %if.end8.critedge.i.failed.i_crit_edge

if.end8.critedge.i.failed.i_crit_edge:            ; preds = %if.end8.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed.i

if.end12.i:                                       ; preds = %if.end8.critedge.i
  %call13.i = tail call i32 @pcmcia_enable_device(ptr noundef %link) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.not.i = icmp eq i32 %call13.i, 0
  br i1 %cmp14.not.i, label %if.end16.i, label %if.end12.i.failed.i_crit_edge

if.end12.i.failed.i_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed.i

if.end16.i:                                       ; preds = %if.end12.i
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i, align 4
  %resource.i.i = getelementptr inbounds %struct.pcmcia_device, ptr %57, i32 0, i32 7
  %58 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %resource.i.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %lock.i.i = getelementptr inbounds %struct.bluecard_info, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @bluecard_open.__key, i16 noundef signext 3) #6
  %timer.i.i = getelementptr inbounds %struct.bluecard_info, ptr %call.i, i32 0, i32 3
  tail call void @init_timer_key(ptr noundef %timer.i.i, ptr noundef nonnull @bluecard_activity_led_timeout, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @bluecard_open.__key.6) #6
  %txq.i.i = getelementptr inbounds %struct.bluecard_info, ptr %call.i, i32 0, i32 4
  %lock.i.i.i = getelementptr inbounds %struct.bluecard_info, ptr %call.i, i32 0, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #6
  %62 = ptrtoint ptr %txq.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %txq.i.i, ptr %txq.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.bluecard_info, ptr %call.i, i32 0, i32 4, i32 0, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %txq.i.i, ptr %prev.i.i.i.i, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.bluecard_info, ptr %call.i, i32 0, i32 4, i32 1
  %64 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %qlen.i.i.i.i, align 4
  %rx_state.i.i = getelementptr inbounds %struct.bluecard_info, ptr %call.i, i32 0, i32 6
  %65 = ptrtoint ptr %rx_state.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %rx_state.i.i, align 4
  %rx_count.i.i = getelementptr inbounds %struct.bluecard_info, ptr %call.i, i32 0, i32 7
  %66 = ptrtoint ptr %rx_count.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %rx_count.i.i, align 4
  %rx_skb.i.i = getelementptr inbounds %struct.bluecard_info, ptr %call.i, i32 0, i32 8
  %67 = ptrtoint ptr %rx_skb.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %rx_skb.i.i, align 4
  %call.i.i.i = tail call ptr @hci_alloc_dev_priv(i32 noundef 0) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.8) #6
  br label %failed.i

if.end.i.i:                                       ; preds = %if.end16.i
  %hdev5.i.i = getelementptr inbounds %struct.bluecard_info, ptr %call.i, i32 0, i32 1
  %68 = ptrtoint ptr %hdev5.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call.i.i.i, ptr %hdev5.i.i, align 4
  %bus.i.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i.i, i32 0, i32 5
  %69 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 2, ptr %bus.i.i, align 2
  %driver_data.i.i.i.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i.i, i32 0, i32 204, i32 8
  %70 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call.i, ptr %driver_data.i.i.i.i, align 4
  %71 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pcmcia_device, ptr %72, i32 0, i32 21
  %parent.i.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i.i, i32 0, i32 204, i32 1
  %73 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %dev.i.i, ptr %parent.i.i, align 8
  %open.i.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i.i, i32 0, i32 232
  %74 = ptrtoint ptr %open.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @bluecard_hci_open, ptr %open.i.i, align 8
  %close.i.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i.i, i32 0, i32 233
  %75 = ptrtoint ptr %close.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @bluecard_hci_close, ptr %close.i.i, align 4
  %flush.i.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i.i, i32 0, i32 234
  %76 = ptrtoint ptr %flush.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @bluecard_hci_flush, ptr %flush.i.i, align 8
  %send.i.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i.i, i32 0, i32 237
  %77 = ptrtoint ptr %send.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @bluecard_hci_send_frame, ptr %send.i.i, align 4
  %add.i.i = add i32 %61, 48
  %and.i.i = and i32 %add.i.i, 1048575
  %add8.i.i = or i32 %and.i.i, -18874368
  %78 = inttoptr i32 %add8.i.i to ptr
  %79 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %78) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %conv.i.i = zext i8 %79 to i32
  %and11.i.i = and i32 %conv.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and11.i.i)
  %cmp.i.i = icmp eq i32 %and11.i.i, 2
  br i1 %cmp.i.i, label %if.then13.i.i, label %if.end.i.i.if.end14.i.i_crit_edge

if.end.i.i.if.end14.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i.i

if.then13.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %hw_state.i.i = getelementptr inbounds %struct.bluecard_info, ptr %call.i, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 4, ptr noundef %hw_state.i.i) #6
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then13.i.i, %if.end.i.i.if.end14.i.i_crit_edge
  %and16.i.i = and i32 %conv.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i)
  %tobool17.not.i.i = icmp eq i32 %and16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.end14.i.i.if.end20.i.i_crit_edge, label %if.then18.i.i

if.end14.i.i.if.end20.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i.i

if.then18.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %hw_state19.i.i = getelementptr inbounds %struct.bluecard_info, ptr %call.i, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 5, ptr noundef %hw_state19.i.i) #6
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.then18.i.i, %if.end14.i.i.if.end20.i.i_crit_edge
  %and22.i.i = and i32 %conv.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i.i)
  %tobool23.not.i.i = icmp eq i32 %and22.i.i, 0
  br i1 %tobool23.not.i.i, label %if.end20.i.i.if.end26.i.i_crit_edge, label %if.then24.i.i

if.end20.i.i.if.end26.i.i_crit_edge:              ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i.i

if.then24.i.i:                                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %hw_state25.i.i = getelementptr inbounds %struct.bluecard_info, ptr %call.i, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 6, ptr noundef %hw_state25.i.i) #6
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.then24.i.i, %if.end20.i.i.if.end26.i.i_crit_edge
  %ctrl_reg.i.i = getelementptr inbounds %struct.bluecard_info, ptr %call.i, i32 0, i32 9
  %80 = ptrtoint ptr %ctrl_reg.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -112, ptr %ctrl_reg.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %81 = ptrtoint ptr %ctrl_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %ctrl_reg.i.i, align 4
  %add31.i.i = add i32 %61, 34
  %and32.i.i = and i32 %add31.i.i, 1048575
  %add33.i.i = or i32 %and32.i.i, -18874368
  %83 = inttoptr i32 %add33.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 %82) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %78, i8 -128) #6, !srcloc !60
  tail call void @msleep(i32 noundef 10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %78, i8 0) #6, !srcloc !60
  %84 = ptrtoint ptr %ctrl_reg.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 40, ptr %ctrl_reg.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %85 = ptrtoint ptr %ctrl_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %ctrl_reg.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 %86) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %add61.i.i = add i32 %61, 33
  %and62.i.i = and i32 %add61.i.i, 1048575
  %add63.i.i = or i32 %and62.i.i, -18874368
  %87 = inttoptr i32 %add63.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %87, i8 -1) #6, !srcloc !60
  %88 = ptrtoint ptr %ctrl_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %ctrl_reg.i.i, align 4
  %90 = or i8 %89, 64
  store i8 %90, ptr %ctrl_reg.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %91 = ptrtoint ptr %ctrl_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %ctrl_reg.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 %92) #6, !srcloc !60
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and11.i.i)
  %cmp78.i.i = icmp eq i32 %and11.i.i, 3
  br i1 %cmp78.i.i, label %if.then80.i.i, label %if.end26.i.i.do.body120.i.i_crit_edge

if.end26.i.i.do.body120.i.i_crit_edge:            ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body120.i.i

if.then80.i.i:                                    ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %93 = ptrtoint ptr %ctrl_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %ctrl_reg.i.i, align 4
  %95 = or i8 %94, 4
  store i8 %95, ptr %ctrl_reg.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %96 = ptrtoint ptr %ctrl_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %ctrl_reg.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 %97) #6, !srcloc !60
  %98 = ptrtoint ptr %ctrl_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %ctrl_reg.i.i, align 4
  %100 = or i8 %99, 3
  store i8 %100, ptr %ctrl_reg.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %101 = ptrtoint ptr %ctrl_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %ctrl_reg.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 %102) #6, !srcloc !60
  %103 = ptrtoint ptr %ctrl_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %ctrl_reg.i.i, align 4
  %105 = and i8 %104, -5
  store i8 %105, ptr %ctrl_reg.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %106 = ptrtoint ptr %ctrl_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %ctrl_reg.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 %107) #6, !srcloc !60
  %tx_state.i.i = getelementptr inbounds %struct.bluecard_info, ptr %call.i, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 6, ptr noundef %tx_state.i.i) #6
  tail call void @_set_bit(i32 noundef 7, ptr noundef %tx_state.i.i) #6
  tail call void @_set_bit(i32 noundef 8, ptr noundef %tx_state.i.i) #6
  br label %do.body120.i.i

do.body120.i.i:                                   ; preds = %if.then80.i.i, %if.end26.i.i.do.body120.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %add123.i.i = add i32 %61, 32
  %and124.i.i = and i32 %add123.i.i, 1048575
  %add125.i.i = or i32 %and124.i.i, -18874368
  %108 = inttoptr i32 %add125.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %108, i8 4) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %108, i8 8) #6, !srcloc !60
  %hw_state134.i.i = getelementptr inbounds %struct.bluecard_info, ptr %call.i, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 1, ptr noundef %hw_state134.i.i) #6
  tail call void @skb_queue_purge(ptr noundef %txq.i.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %add139.i.i = add i32 %61, 36
  %and140.i.i = and i32 %add139.i.i, 1048575
  %add141.i.i = or i32 %and140.i.i, -18874368
  %109 = inttoptr i32 %add141.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %109, i8 61) #6, !srcloc !60
  tail call void @msleep(i32 noundef 1250) #6
  %call143.i.i = tail call i32 @hci_register_dev(ptr noundef nonnull %call.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143.i.i)
  %cmp144.i.i = icmp slt i32 %call143.i.i, 0
  br i1 %cmp144.i.i, label %if.then146.i.i, label %do.body120.i.i.cleanup_crit_edge

do.body120.i.i.cleanup_crit_edge:                 ; preds = %do.body120.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then146.i.i:                                   ; preds = %do.body120.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.9) #6
  %110 = ptrtoint ptr %hdev5.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %hdev5.i.i, align 4
  tail call void @hci_free_dev(ptr noundef nonnull %call.i.i.i) #6
  br label %failed.i

failed.i:                                         ; preds = %if.then146.i.i, %if.then.i.i, %if.end12.i.failed.i_crit_edge, %if.end8.critedge.i.failed.i_crit_edge, %for.cond.14.i.failed.i_crit_edge
  tail call fastcc void @bluecard_release(ptr noundef %link) #6
  br label %cleanup

cleanup:                                          ; preds = %failed.i, %do.body120.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -19, %failed.i ], [ 0, %do.body120.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bluecard_detach(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @bluecard_release(ptr noundef %link)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bluecard_interrupt(i32 noundef %irq, ptr noundef %dev_inst) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev_inst, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %hdev = getelementptr inbounds %struct.bluecard_info, ptr %dev_inst, i32 0, i32 1
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hw_state = getelementptr inbounds %struct.bluecard_info, ptr %dev_inst, i32 0, i32 10
  %2 = ptrtoint ptr %hw_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %hw_state, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %dev_inst to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_inst, align 4
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %resource, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %lock = getelementptr inbounds %struct.bluecard_info, ptr %dev_inst, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %ctrl_reg = getelementptr inbounds %struct.bluecard_info, ptr %dev_inst, i32 0, i32 9
  %11 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ctrl_reg, align 4
  %13 = and i8 %12, -65
  store i8 %13, ptr %ctrl_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ctrl_reg, align 4
  %add = add i32 %10, 34
  %and7 = and i32 %add, 1048575
  %add8 = or i32 %and7, -18874368
  %16 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %15) #6, !srcloc !60
  %add10 = add i32 %10, 33
  %and11 = and i32 %add10, 1048575
  %add12 = or i32 %and11, -18874368
  %17 = inttoptr i32 %add12 to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  %conv15 = zext i8 %18 to i32
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i8 %18, label %if.then20 [
    i8 0, label %if.end4.if.end84_crit_edge
    i8 -1, label %if.end4.if.end84_crit_edge127
  ]

if.end4.if.end84_crit_edge127:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

if.end4.if.end84_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

if.then20:                                        ; preds = %if.end4
  %and22 = and i32 %conv15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.then20.if.end39_crit_edge, label %if.then24

if.then20.if.end39_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then24:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @bluecard_receive(ptr noundef nonnull %dev_inst, i32 noundef 0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 4) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %add35 = add i32 %10, 32
  %and36 = and i32 %add35, 1048575
  %add37 = or i32 %and36, -18874368
  %20 = inttoptr i32 %add37 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 4) #6, !srcloc !60
  br label %if.end39

if.end39:                                         ; preds = %if.then24, %if.then20.if.end39_crit_edge
  %and41 = and i32 %conv15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end39.if.end58_crit_edge, label %if.then43

if.end39.if.end58_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @bluecard_receive(ptr noundef nonnull %dev_inst, i32 noundef 16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 8) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %add54 = add i32 %10, 32
  %and55 = and i32 %add54, 1048575
  %add56 = or i32 %and55, -18874368
  %21 = inttoptr i32 %add56 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 8) #6, !srcloc !60
  br label %if.end58

if.end58:                                         ; preds = %if.then43, %if.end39.if.end58_crit_edge
  %and60 = and i32 %conv15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end58.if.end70_crit_edge, label %if.then62

if.end58.if.end70_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %tx_state = getelementptr inbounds %struct.bluecard_info, ptr %dev_inst, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 6, ptr noundef %tx_state) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 1) #6, !srcloc !60
  tail call fastcc void @bluecard_write_wakeup(ptr noundef nonnull %dev_inst)
  br label %if.end70

if.end70:                                         ; preds = %if.then62, %if.end58.if.end70_crit_edge
  %and72 = and i32 %conv15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end70.if.end84_crit_edge, label %if.then74

if.end70.if.end84_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

if.then74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %tx_state75 = getelementptr inbounds %struct.bluecard_info, ptr %dev_inst, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 7, ptr noundef %tx_state75) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 2) #6, !srcloc !60
  tail call fastcc void @bluecard_write_wakeup(ptr noundef nonnull %dev_inst)
  br label %if.end84

if.end84:                                         ; preds = %if.then74, %if.end70.if.end84_crit_edge, %if.end4.if.end84_crit_edge, %if.end4.if.end84_crit_edge127
  %22 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ctrl_reg, align 4
  %24 = or i8 %23, 64
  store i8 %24, ptr %ctrl_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ctrl_reg, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %26) #6, !srcloc !60
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end84 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bluecard_release(ptr noundef %link) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %hdev1.i = getelementptr inbounds %struct.bluecard_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.bluecard_close.exit_crit_edge, label %if.end.i

entry.bluecard_close.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %bluecard_close.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %resource.i = getelementptr inbounds %struct.pcmcia_device, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resource.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 204, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %resource.i.i = getelementptr inbounds %struct.pcmcia_device, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resource.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %txq.i.i.i = getelementptr inbounds %struct.bluecard_info, ptr %11, i32 0, i32 4
  tail call void @skb_queue_purge(ptr noundef %txq.i.i.i) #6
  %timer.i.i = getelementptr inbounds %struct.bluecard_info, ptr %11, i32 0, i32 3
  %call2.i.i = tail call i32 @del_timer_sync(ptr noundef %timer.i.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %add.i.i = add i32 %17, 48
  %and.i.i = and i32 %add.i.i, 1048575
  %add3.i.i = or i32 %and.i.i, -18874368
  %18 = inttoptr i32 %add3.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 0) #6, !srcloc !60
  %hw_state.i = getelementptr inbounds %struct.bluecard_info, ptr %1, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %hw_state.i) #6
  %ctrl_reg.i = getelementptr inbounds %struct.bluecard_info, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %ctrl_reg.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -112, ptr %ctrl_reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %ctrl_reg.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ctrl_reg.i, align 4
  %add.i = add i32 %9, 34
  %and.i = and i32 %add.i, 1048575
  %add3.i = or i32 %and.i, -18874368
  %22 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %21) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %add8.i = add i32 %9, 48
  %and9.i = and i32 %add8.i, 1048575
  %add10.i = or i32 %and9.i, -18874368
  %23 = inttoptr i32 %add10.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 -128) #6, !srcloc !60
  tail call void @hci_unregister_dev(ptr noundef nonnull %3) #6
  tail call void @hci_free_dev(ptr noundef nonnull %3) #6
  br label %bluecard_close.exit

bluecard_close.exit:                              ; preds = %if.end.i, %entry.bluecard_close.exit_crit_edge
  %timer = getelementptr inbounds %struct.bluecard_info, ptr %1, i32 0, i32 3
  %call1 = tail call i32 @del_timer_sync(ptr noundef %timer) #6
  tail call void @pcmcia_disable_device(ptr noundef %link) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bluecard_receive(ptr noundef %info, i32 noundef %offset) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [31 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %buf) #6
  %tobool.not = icmp eq ptr %info, null
  %0 = call ptr @memset(ptr %buf, i32 255, i32 31)
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.1) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %info, align 4
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %resource, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %tx_state = getelementptr inbounds %struct.bluecard_info, ptr %info, i32 0, i32 5
  %7 = ptrtoint ptr %tx_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %tx_state, align 4
  %9 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not = icmp eq i32 %9, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then2:                                         ; preds = %if.end
  %timer.i = getelementptr inbounds %struct.bluecard_info, ptr %info, i32 0, i32 3
  %pprev.i.i.i = getelementptr inbounds %struct.bluecard_info, ptr %info, i32 0, i32 3, i32 0, i32 1
  %10 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.not.i, label %if.end.i, label %if.then2.if.end3_crit_edge

if.then2.if.end3_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.end.i:                                         ; preds = %if.then2
  %hw_state.i = getelementptr inbounds %struct.bluecard_info, ptr %info, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %hw_state.i) #6
  %12 = ptrtoint ptr %hw_state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %hw_state.i, align 4
  %14 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool3.not.i = icmp eq i32 %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %add10.i = add i32 %6, 48
  %and11.i = and i32 %add10.i, 1048575
  %add12.i = or i32 %and11.i, -18874368
  %15 = inttoptr i32 %add12.i to ptr
  br i1 %tobool3.not.i, label %do.body7.i, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 120) #6, !srcloc !60
  br label %if.end14.i

do.body7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 0) #6, !srcloc !60
  br label %if.end14.i

if.end14.i:                                       ; preds = %do.body7.i, %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %add16.i = add i32 %16, 10
  %call17.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add16.i) #6
  br label %if.end3

if.end3:                                          ; preds = %if.end14.i, %if.then2.if.end3_crit_edge, %if.end.if.end3_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %add.i = add i32 %6, 32
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %17 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 0) #6, !srcloc !60
  %add2.i = add i32 %6, %offset
  %and3.i = and i32 %add2.i, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %18 = inttoptr i32 %add4.i to ptr
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %conv.i = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp1.not.i = icmp eq i8 %19, 0
  br i1 %cmp1.not.i, label %if.end3.for.end_crit_edge, label %if.end3.while.body.i_crit_edge

if.end3.while.body.i_crit_edge:                   ; preds = %if.end3
  br label %while.body.i

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

while.body.i:                                     ; preds = %if.end.i140.while.body.i_crit_edge, %if.end3.while.body.i_crit_edge
  %i.03.i = phi i32 [ %inc25.i, %if.end.i140.while.body.i_crit_edge ], [ 1, %if.end3.while.body.i_crit_edge ]
  %n.02.i = phi i32 [ %inc.i, %if.end.i140.while.body.i_crit_edge ], [ 0, %if.end3.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.03.i)
  %cmp8.i = icmp eq i32 %i.03.i, 16
  br i1 %cmp8.i, label %do.body10.i, label %while.body.i.if.end.i140_crit_edge

while.body.i.if.end.i140_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i140

do.body10.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 16) #6, !srcloc !60
  br label %if.end.i140

if.end.i140:                                      ; preds = %do.body10.i, %while.body.i.if.end.i140_crit_edge
  %i.1.i = phi i32 [ 0, %do.body10.i ], [ %i.03.i, %while.body.i.if.end.i140_crit_edge ]
  %add19.i = add i32 %i.1.i, %add2.i
  %and20.i = and i32 %add19.i, 1048575
  %add21.i = or i32 %and20.i, -18874368
  %20 = inttoptr i32 %add21.i to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %n.02.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %n.02.i, 1
  %inc25.i = add i32 %i.1.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %bluecard_read.exit, label %if.end.i140.while.body.i_crit_edge

if.end.i140.while.body.i_crit_edge:               ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

bluecard_read.exit:                               ; preds = %if.end.i140
  br i1 %cmp1.not.i, label %bluecard_read.exit.for.end_crit_edge, label %for.body.lr.ph

bluecard_read.exit.for.end_crit_edge:             ; preds = %bluecard_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %bluecard_read.exit
  %rx_skb = getelementptr inbounds %struct.bluecard_info, ptr %info, i32 0, i32 8
  %rx_state = getelementptr inbounds %struct.bluecard_info, ptr %info, i32 0, i32 6
  %rx_count = getelementptr inbounds %struct.bluecard_info, ptr %info, i32 0, i32 7
  %hdev78 = getelementptr inbounds %struct.bluecard_info, ptr %info, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %cmp24.not = icmp eq i32 %offset, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0145 = phi i32 [ 0, %for.body.lr.ph ], [ %inc85, %for.inc.for.body_crit_edge ]
  %23 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx_skb, align 4
  %tobool5.not = icmp eq ptr %24, null
  br i1 %tobool5.not, label %if.then6, label %for.body.if.end13_crit_edge

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then6:                                         ; preds = %for.body
  %25 = ptrtoint ptr %rx_state to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %rx_state, align 4
  %26 = ptrtoint ptr %rx_count to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %rx_count, align 4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 1036, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then11, label %bt_skb_alloc.exit

bt_skb_alloc.exit:                                ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %27 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %29 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %30, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %31 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i.i, ptr %rx_skb, align 4
  br label %if.end13

if.then11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %rx_skb, align 4
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.2) #6
  br label %cleanup

if.end13:                                         ; preds = %bt_skb_alloc.exit, %for.body.if.end13_crit_edge
  %33 = ptrtoint ptr %rx_state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp15 = icmp eq i32 %34, 0
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end13
  %arrayidx17 = getelementptr [31 x i8], ptr %buf, i32 0, i32 %i.0145
  %35 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx17, align 1
  %37 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rx_skb, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %36, ptr %cb, align 8
  %40 = load ptr, ptr %rx_skb, align 4
  %cb21 = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %cb21 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %cb21, align 8
  %43 = zext i8 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %42, label %sw.default [
    i8 0, label %sw.bb
    i8 4, label %sw.bb33
    i8 2, label %sw.bb36
    i8 3, label %sw.bb39
  ]

sw.bb:                                            ; preds = %if.then16
  br i1 %cmp24.not, label %sw.bb.if.end30_crit_edge, label %if.then26

sw.bb.if.end30_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then26:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 6, ptr noundef %tx_state) #6
  tail call void @_set_bit(i32 noundef 7, ptr noundef %tx_state) #6
  tail call void @_set_bit(i32 noundef 8, ptr noundef %tx_state) #6
  tail call fastcc void @bluecard_write_wakeup(ptr noundef nonnull %info)
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %sw.bb.if.end30_crit_edge
  %44 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rx_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %45, i32 noundef 0) #6
  %46 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %rx_skb, align 4
  br label %for.inc

sw.bb33:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %rx_state to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %rx_state, align 4
  %48 = ptrtoint ptr %rx_count to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %rx_count, align 4
  br label %for.inc

sw.bb36:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %rx_state to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %rx_state, align 4
  %50 = ptrtoint ptr %rx_count to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 4, ptr %rx_count, align 4
  br label %for.inc

sw.bb39:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %rx_state to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 3, ptr %rx_state, align 4
  %52 = ptrtoint ptr %rx_count to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 3, ptr %rx_count, align 4
  br label %for.inc

sw.default:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %42 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.3, i32 noundef %conv) #6
  %53 = ptrtoint ptr %hdev78 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hdev78, align 4
  %stat = getelementptr inbounds %struct.hci_dev, ptr %54, i32 0, i32 199
  %55 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %stat, align 8
  %inc = add i32 %56, 1
  store i32 %inc, ptr %stat, align 8
  %57 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rx_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %58, i32 noundef 0) #6
  %59 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %rx_skb, align 4
  br label %for.inc

if.else:                                          ; preds = %if.end13
  %60 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rx_skb, align 4
  %arrayidx50 = getelementptr [31 x i8], ptr %buf, i32 0, i32 %i.0145
  %62 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx50, align 1
  %call.i = tail call ptr @skb_put(ptr noundef %61, i32 noundef 1) #6
  %64 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %call.i, align 1
  %65 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rx_count, align 4
  %dec = add i32 %66, -1
  store i32 %dec, ptr %rx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp53 = icmp eq i32 %dec, 0
  br i1 %cmp53, label %if.then55, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then55:                                        ; preds = %if.else
  %67 = ptrtoint ptr %rx_state to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rx_state, align 4
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %68, label %if.then55.for.inc_crit_edge [
    i32 1, label %sw.bb57
    i32 2, label %sw.bb63
    i32 3, label %sw.bb70
    i32 4, label %sw.bb77
  ]

if.then55.for.inc_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb57:                                          ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rx_skb, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %71, i32 0, i32 19
  %72 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data.i, align 4
  %74 = ptrtoint ptr %rx_state to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 4, ptr %rx_state, align 4
  %plen = getelementptr inbounds %struct.hci_event_hdr, ptr %73, i32 0, i32 1
  %75 = ptrtoint ptr %plen to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %plen, align 1
  %conv61 = zext i8 %76 to i32
  %77 = ptrtoint ptr %rx_count to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv61, ptr %rx_count, align 4
  br label %for.inc

sw.bb63:                                          ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rx_skb, align 4
  %data.i142 = getelementptr inbounds %struct.sk_buff, ptr %79, i32 0, i32 19
  %80 = ptrtoint ptr %data.i142 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %data.i142, align 4
  %dlen66 = getelementptr inbounds %struct.hci_acl_hdr, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %dlen66 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 2)
  %83 = load i16, ptr %dlen66, align 1
  %84 = tail call i16 @llvm.bswap.i16(i16 %83)
  %conv67 = zext i16 %84 to i32
  %85 = ptrtoint ptr %rx_state to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 4, ptr %rx_state, align 4
  %86 = ptrtoint ptr %rx_count to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %conv67, ptr %rx_count, align 4
  br label %for.inc

sw.bb70:                                          ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rx_skb, align 4
  %data.i143 = getelementptr inbounds %struct.sk_buff, ptr %88, i32 0, i32 19
  %89 = ptrtoint ptr %data.i143 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data.i143, align 4
  %91 = ptrtoint ptr %rx_state to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 4, ptr %rx_state, align 4
  %dlen74 = getelementptr inbounds %struct.hci_sco_hdr, ptr %90, i32 0, i32 1
  %92 = ptrtoint ptr %dlen74 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %dlen74, align 1
  %conv75 = zext i8 %93 to i32
  %94 = ptrtoint ptr %rx_count to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %conv75, ptr %rx_count, align 4
  br label %for.inc

sw.bb77:                                          ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  %95 = ptrtoint ptr %hdev78 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hdev78, align 4
  %97 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rx_skb, align 4
  %call80 = tail call i32 @hci_recv_frame(ptr noundef %96, ptr noundef %98) #6
  %99 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %rx_skb, align 4
  br label %for.inc

for.inc:                                          ; preds = %sw.bb77, %sw.bb70, %sw.bb63, %sw.bb57, %if.then55.for.inc_crit_edge, %if.else.for.inc_crit_edge, %sw.default, %sw.bb39, %sw.bb36, %sw.bb33, %if.end30
  %inc85 = add nuw nsw i32 %i.0145, 1
  %exitcond.not = icmp eq i32 %inc85, %conv.i
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %bluecard_read.exit.for.end_crit_edge, %if.end3.for.end_crit_edge
  %hdev86 = getelementptr inbounds %struct.bluecard_info, ptr %info, i32 0, i32 1
  %100 = ptrtoint ptr %hdev86 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hdev86, align 4
  %byte_rx = getelementptr inbounds %struct.hci_dev, ptr %101, i32 0, i32 199, i32 8
  %102 = ptrtoint ptr %byte_rx to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %byte_rx, align 8
  %add = add i32 %103, %conv.i
  store i32 %add, ptr %byte_rx, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %buf) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bluecard_write_wakeup(ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  %wq = alloca %struct.wait_queue_head, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.1) #6
  br label %return

if.end:                                           ; preds = %entry
  %tx_state = getelementptr inbounds %struct.bluecard_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %tx_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %tx_state, align 4
  %2 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end3:                                          ; preds = %if.end
  %call5 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %tx_state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body.preheader, label %if.then7

do.body.preheader:                                ; preds = %if.end3
  %txq = getelementptr inbounds %struct.bluecard_info, ptr %info, i32 0, i32 4
  %ctrl_reg = getelementptr inbounds %struct.bluecard_info, ptr %info, i32 0, i32 9
  %timer.i = getelementptr inbounds %struct.bluecard_info, ptr %info, i32 0, i32 3
  %pprev.i.i.i = getelementptr inbounds %struct.bluecard_info, ptr %info, i32 0, i32 3, i32 0, i32 1
  %hw_state.i = getelementptr inbounds %struct.bluecard_info, ptr %info, i32 0, i32 10
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %hdev = getelementptr inbounds %struct.bluecard_info, ptr %info, i32 0, i32 1
  %7 = getelementptr inbounds i8, ptr %wait, i32 4
  br label %do.body

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 2, ptr noundef %tx_state) #6
  br label %return

do.body:                                          ; preds = %do.cond121.do.body_crit_edge, %do.body.preheader
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info, align 4
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resource, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @_clear_bit(i32 noundef 2, ptr noundef %tx_state) #6
  %14 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %info, align 4
  %call12 = call ptr @pcmcia_dev_present(ptr noundef %15) #6
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %do.body.return_crit_edge, label %if.end15

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end15:                                         ; preds = %do.body
  %16 = ptrtoint ptr %tx_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %tx_state, align 4
  %18 = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool18.not = icmp eq i32 %18, 0
  %19 = ptrtoint ptr %tx_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %tx_state, align 4
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end15
  %21 = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool22.not = icmp eq i32 %21, 0
  br i1 %tobool22.not, label %if.then19.do.end125_crit_edge, label %if.then19.if.end30_crit_edge

if.then19.if.end30_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then19.do.end125_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end125

if.else:                                          ; preds = %if.end15
  %22 = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool27.not = icmp eq i32 %22, 0
  br i1 %tobool27.not, label %if.else.do.end125_crit_edge, label %if.else.if.end30_crit_edge

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.else.do.end125_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end125

if.end30:                                         ; preds = %if.else.if.end30_crit_edge, %if.then19.if.end30_crit_edge
  %offset.0 = phi i32 [ 16, %if.then19.if.end30_crit_edge ], [ 0, %if.else.if.end30_crit_edge ]
  %command.0 = phi i8 [ 2, %if.then19.if.end30_crit_edge ], [ 1, %if.else.if.end30_crit_edge ]
  %ready_bit.0 = phi i32 [ 7, %if.then19.if.end30_crit_edge ], [ 6, %if.else.if.end30_crit_edge ]
  %call31 = call ptr @skb_dequeue(ptr noundef %txq) #6
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.end30.do.end125_crit_edge, label %if.end34

if.end30.do.end125_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end125

if.end34:                                         ; preds = %if.end30
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call31, i32 0, i32 3
  %23 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cb, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %tobool35.not = icmp sgt i8 %24, -1
  br i1 %tobool35.not, label %if.end34.if.end44_crit_edge, label %if.then36

if.end34.if.end44_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ctrl_reg, align 4
  %27 = or i8 %26, 4
  store i8 %27, ptr %ctrl_reg, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ctrl_reg, align 4
  %add = add i32 %13, 34
  %and41 = and i32 %add, 1048575
  %add42 = or i32 %and41, -18874368
  %30 = inttoptr i32 %add42 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %29) #6, !srcloc !60
  br label %if.end44

if.end44:                                         ; preds = %if.then36, %if.end34.if.end44_crit_edge
  %31 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %info, align 4
  %resource.i = getelementptr inbounds %struct.pcmcia_device, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %resource.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %37 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i.not.i, label %if.end.i, label %if.end44.bluecard_enable_activity_led.exit_crit_edge

if.end44.bluecard_enable_activity_led.exit_crit_edge: ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %bluecard_enable_activity_led.exit

if.end.i:                                         ; preds = %if.end44
  call void @_set_bit(i32 noundef 2, ptr noundef %hw_state.i) #6
  %39 = ptrtoint ptr %hw_state.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %hw_state.i, align 4
  %41 = and i32 %40, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool3.not.i = icmp eq i32 %41, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  call void @arm_heavy_mb() #6
  %add10.i = add i32 %36, 48
  %and11.i = and i32 %add10.i, 1048575
  %add12.i = or i32 %and11.i, -18874368
  %42 = inttoptr i32 %add12.i to ptr
  br i1 %tobool3.not.i, label %do.body7.i, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 120) #6, !srcloc !60
  br label %if.end14.i

do.body7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 0) #6, !srcloc !60
  br label %if.end14.i

if.end14.i:                                       ; preds = %do.body7.i, %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %add16.i = add i32 %43, 10
  %call17.i = call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add16.i) #6
  br label %bluecard_enable_activity_led.exit

bluecard_enable_activity_led.exit:                ; preds = %if.end14.i, %if.end44.bluecard_enable_activity_led.exit_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %call31, i32 0, i32 19
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data, align 4
  %len45 = getelementptr inbounds %struct.sk_buff, ptr %call31, i32 0, i32 6
  %46 = ptrtoint ptr %len45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len45, align 4
  %48 = call i32 @llvm.smin.i32(i32 %47, i32 15) #6
  %conv.i = trunc i32 %48 to i8
  %add.i = add i32 %offset.0, %13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  call void @arm_heavy_mb() #6
  %and.i.i = and i32 %add.i, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %49 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 %conv.i) #6, !srcloc !60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp116.i = icmp sgt i32 %47, 0
  br i1 %cmp116.i, label %for.body.preheader.i, label %bluecard_enable_activity_led.exit.bluecard_write.exit_crit_edge

bluecard_enable_activity_led.exit.bluecard_write.exit_crit_edge: ; preds = %bluecard_enable_activity_led.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %bluecard_write.exit

for.body.preheader.i:                             ; preds = %bluecard_enable_activity_led.exit
  %smax.i = call i32 @llvm.smax.i32(i32 %48, i32 1) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.017.i = phi i32 [ %add4.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr i8, ptr %45, i32 %i.017.i
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i, align 1
  %add4.i = add nuw nsw i32 %i.017.i, 1
  %add5.i = add i32 %add4.i, %add.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  call void @arm_heavy_mb() #6
  %and.i14.i = and i32 %add5.i, 1048575
  %add.i15.i = or i32 %and.i14.i, -18874368
  %52 = inttoptr i32 %add.i15.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 %51) #6, !srcloc !60
  %exitcond.not.i = icmp eq i32 %add4.i, %smax.i
  br i1 %exitcond.not.i, label %for.body.i.bluecard_write.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.bluecard_write.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bluecard_write.exit

bluecard_write.exit:                              ; preds = %for.body.i.bluecard_write.exit_crit_edge, %bluecard_enable_activity_led.exit.bluecard_write.exit_crit_edge
  %add47 = add i32 %13, 32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  call void @arm_heavy_mb() #6
  %and.i = and i32 %add47, 1048575
  %add.i174 = or i32 %and.i, -18874368
  %53 = inttoptr i32 %add.i174 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 %command.0) #6, !srcloc !60
  call void @_clear_bit(i32 noundef %ready_bit.0, ptr noundef %tx_state) #6
  %54 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %cb, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %55)
  %tobool54.not = icmp sgt i8 %55, -1
  br i1 %tobool54.not, label %bluecard_write.exit.if.end106_crit_edge, label %if.then55

bluecard_write.exit.if.end106_crit_edge:          ; preds = %bluecard_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106

if.then55:                                        ; preds = %bluecard_write.exit
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %wq) #6
  %56 = call ptr @memset(ptr %wq, i32 255, i32 52)
  call void @__init_waitqueue_head(ptr noundef nonnull %wq, ptr noundef nonnull @.str.4, ptr noundef nonnull @bluecard_write_wakeup.__key) #6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #6
  %57 = call ptr @memset(ptr %7, i32 255, i32 16)
  %58 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %wait, align 4
  %59 = call i32 @llvm.read_register.i32(metadata !47) #6
  %and.i175 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i175 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task, align 8
  %63 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %3, align 4
  %64 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @autoremove_wake_function, ptr %4, align 4
  %65 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %5, ptr %5, align 4
  %66 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %5, ptr %6, align 4
  %67 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %cb, align 8
  %switch.tableidx = add i8 %68, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %69 = icmp ult i8 %switch.tableidx, 3
  %switch.offset = xor i8 %68, -128
  %baud_reg.0 = select i1 %69, i8 %switch.offset, i8 0
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then55
  %__ms.0179 = phi i32 [ 100, %if.then55 ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0179, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %70(i32 noundef 214748000) #6
  %tobool70.not = icmp eq i32 %dec, 0
  br i1 %tobool70.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body
  %71 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %ctrl_reg, align 4
  %73 = and i8 %72, -4
  %or78 = or i8 %73, %baud_reg.0
  store i8 %or78, ptr %ctrl_reg, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  call void @arm_heavy_mb() #6
  %74 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %ctrl_reg, align 4
  %add84 = add i32 %13, 34
  %and85 = and i32 %add84, 1048575
  %add86 = or i32 %and85, -18874368
  %76 = inttoptr i32 %add86 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %76, i8 %75) #6, !srcloc !60
  %77 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %ctrl_reg, align 4
  %79 = and i8 %78, -5
  store i8 %79, ptr %ctrl_reg, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  call void @arm_heavy_mb() #6
  %80 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %ctrl_reg, align 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %76, i8 %81) #6, !srcloc !60
  br label %while.body104

while.body104:                                    ; preds = %while.body104.while.body104_crit_edge, %while.end
  %__ms100.0180 = phi i32 [ 1000, %while.end ], [ %dec102, %while.body104.while.body104_crit_edge ]
  %dec102 = add nsw i32 %__ms100.0180, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %82(i32 noundef 214748000) #6
  %tobool103.not = icmp eq i32 %dec102, 0
  br i1 %tobool103.not, label %while.end105, label %while.body104.while.body104_crit_edge

while.body104.while.body104_crit_edge:            ; preds = %while.body104
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body104

while.end105:                                     ; preds = %while.body104
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #6
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %wq) #6
  br label %if.end106

if.end106:                                        ; preds = %while.end105, %bluecard_write.exit.if.end106_crit_edge
  %83 = ptrtoint ptr %len45 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %len45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %84)
  %cmp = icmp eq i32 %48, %84
  br i1 %cmp, label %if.then109, label %if.else110

if.then109:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree_skb_reason(ptr noundef nonnull %call31, i32 noundef 0) #6
  br label %do.cond121

if.else110:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  %call111 = call ptr @skb_pull(ptr noundef nonnull %call31, i32 noundef %48) #6
  call void @skb_queue_head(ptr noundef %txq, ptr noundef nonnull %call31) #6
  br label %do.cond121

do.cond121:                                       ; preds = %if.else110, %if.then109
  %85 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hdev, align 4
  %byte_tx = getelementptr inbounds %struct.hci_dev, ptr %86, i32 0, i32 199, i32 9
  %87 = ptrtoint ptr %byte_tx to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %byte_tx, align 4
  %add114 = add i32 %88, %48
  store i32 %add114, ptr %byte_tx, align 4
  call void @_change_bit(i32 noundef 5, ptr noundef %tx_state) #6
  %89 = ptrtoint ptr %tx_state to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %tx_state, align 4
  %91 = and i32 %90, 4
  %tobool124.not = icmp eq i32 %91, 0
  br i1 %tobool124.not, label %do.cond121.do.end125_crit_edge, label %do.cond121.do.body_crit_edge

do.cond121.do.body_crit_edge:                     ; preds = %do.cond121
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.cond121.do.end125_crit_edge:                   ; preds = %do.cond121
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end125

do.end125:                                        ; preds = %do.cond121.do.end125_crit_edge, %if.end30.do.end125_crit_edge, %if.else.do.end125_crit_edge, %if.then19.do.end125_crit_edge
  call void @_clear_bit(i32 noundef 1, ptr noundef %tx_state) #6
  br label %return

return:                                           ; preds = %do.end125, %do.body.return_crit_edge, %if.then7, %if.end.return_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcmcia_dev_present(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_change_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bluecard_activity_led_timeout(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -52
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %hw_state = getelementptr i8, ptr %t, i32 124
  %6 = ptrtoint ptr %hw_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %hw_state, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %hw_state) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %9, 10
  %call2 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #6
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %add3 = add i32 %5, 48
  %and = and i32 %add3, 1048575
  %add4 = or i32 %and, -18874368
  %10 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 40) #6, !srcloc !60
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bluecard_hci_open(ptr nocapture noundef readonly %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resource, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %hw_state = getelementptr inbounds %struct.bluecard_info, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %hw_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %hw_state, align 4
  %10 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %entry
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 1036, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i, label %sw.bb2.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.2) #6
  br label %do.body

sw.bb2.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %11 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %14, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %cb4.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %cb4.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -126, ptr %cb4.i, align 8
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 5) #6
  %16 = ptrtoint ptr %call.i.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 17431553, ptr %call.i.i, align 1
  %cmd.sroa.4.0.call.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i, i32 4
  %17 = ptrtoint ptr %cmd.sroa.4.0.call.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %cmd.sroa.4.0.call.i.sroa_idx.i, align 1
  %txq.i = getelementptr inbounds %struct.bluecard_info, ptr %1, i32 0, i32 4
  tail call void @skb_queue_tail(ptr noundef %txq.i, ptr noundef nonnull %call.i.i.i) #6
  tail call fastcc void @bluecard_write_wakeup(ptr noundef %1) #6
  br label %do.body

do.body:                                          ; preds = %sw.bb2.i, %if.then.i, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %add = add i32 %7, 48
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %18 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 40) #6, !srcloc !60
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bluecard_hci_close(ptr nocapture noundef readonly %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resource, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %txq.i = getelementptr inbounds %struct.bluecard_info, ptr %1, i32 0, i32 4
  tail call void @skb_queue_purge(ptr noundef %txq.i) #6
  %timer = getelementptr inbounds %struct.bluecard_info, ptr %1, i32 0, i32 3
  %call2 = tail call i32 @del_timer_sync(ptr noundef %timer) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %add = add i32 %7, 48
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %8 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #6, !srcloc !60
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bluecard_hci_flush(ptr nocapture noundef readonly %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %txq = getelementptr inbounds %struct.bluecard_info, ptr %1, i32 0, i32 4
  tail call void @skb_queue_purge(ptr noundef %txq) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bluecard_hci_send_frame(ptr nocapture noundef %hdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cb, align 8
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %3, label %entry.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb1
    i8 3, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cmd_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 2
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %acl_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 4
  br label %sw.epilog.sink.split

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sco_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 6
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb4, %sw.bb1, %sw.bb
  %sco_tx.sink18 = phi ptr [ %sco_tx, %sw.bb4 ], [ %acl_tx, %sw.bb1 ], [ %cmd_tx, %sw.bb ]
  %5 = ptrtoint ptr %sco_tx.sink18 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sco_tx.sink18, align 8
  %inc6 = add i32 %6, 1
  store i32 %inc6, ptr %sco_tx.sink18, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %call7 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #6
  %7 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cb, align 8
  %9 = ptrtoint ptr %call7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %call7, align 1
  %txq = getelementptr inbounds %struct.bluecard_info, ptr %1, i32 0, i32 4
  tail call void @skb_queue_tail(ptr noundef %txq, ptr noundef %skb) #6
  tail call fastcc void @bluecard_write_wakeup(ptr noundef %1)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_register_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_free_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_alloc_dev_priv(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_unregister_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !25, !26, !28, !29, !31, !33, !35, !36, !38, !39, !41, !42, !44, !45}
!llvm.named.register.sp = !{!47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__UNIQUE_ID_author481, !1, !"__UNIQUE_ID_author481", i1 false, i1 false}
!1 = !{!"../drivers/bluetooth/bluecard_cs.c", i32 55, i32 1}
!2 = !{ptr @__UNIQUE_ID_description482, !3, !"__UNIQUE_ID_description482", i1 false, i1 false}
!3 = !{!"../drivers/bluetooth/bluecard_cs.c", i32 56, i32 1}
!4 = !{ptr @__UNIQUE_ID_file483, !5, !"__UNIQUE_ID_file483", i1 false, i1 false}
!5 = !{!"../drivers/bluetooth/bluecard_cs.c", i32 57, i32 1}
!6 = !{ptr @__UNIQUE_ID_license484, !5, !"__UNIQUE_ID_license484", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_bluecard_cs__485_908_bluecard_driver_init6, !8, !"__initcall__kmod_bluecard_cs__485_908_bluecard_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/bluetooth/bluecard_cs.c", i32 908, i32 1}
!9 = !{ptr @__exitcall_bluecard_driver_exit, !8, !"__exitcall_bluecard_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/bluetooth/bluecard_cs.c", i32 903, i32 11}
!12 = !{ptr @bluecard_driver, !13, !"bluecard_driver", i1 false, i1 false}
!13 = !{!"../drivers/bluetooth/bluecard_cs.c", i32 901, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/bluetooth/bluecard_cs.c", i32 373, i32 3}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/bluetooth/bluecard_cs.c", i32 392, i32 5}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/bluetooth/bluecard_cs.c", i32 433, i32 5}
!20 = !{ptr @bluecard_write_wakeup.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/bluetooth/bluecard_cs.c", i32 282, i32 4}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @bluecard_open.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/bluetooth/bluecard_cs.c", i32 686, i32 2}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @bluecard_open.__key.6, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/bluetooth/bluecard_cs.c", i32 688, i32 2}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/bluetooth/bluecard_cs.c", i32 699, i32 3}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/bluetooth/bluecard_cs.c", i32 783, i32 3}
!33 = !{ptr @skb_queue_head_init.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/bluetooth/bluecard_cs.c", i32 894, i32 2}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/bluetooth/bluecard_cs.c", i32 895, i32 2}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/bluetooth/bluecard_cs.c", i32 896, i32 2}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @bluecard_ids, !46, !"bluecard_ids", i1 false, i1 false}
!46 = !{!"../drivers/bluetooth/bluecard_cs.c", i32 893, i32 38}
!47 = !{!"sp"}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 6341509}
!58 = !{i64 2157697127}
!59 = !{i64 2157697667}
!60 = !{i64 6341114}
!61 = !{i64 2157698004}
!62 = !{i64 2157698341}
!63 = !{i64 2157698703}
!64 = !{i64 2157699045}
!65 = !{i64 2157699402}
!66 = !{i64 2157699759}
!67 = !{i64 2157700111}
!68 = !{i64 2157700468}
!69 = !{i64 2157701115}
!70 = !{i64 2157701462}
!71 = !{i64 2157701924}
!72 = !{i64 2157691748}
!73 = !{i64 2157692162}
!74 = !{i64 2157692382}
!75 = !{i64 2157692729}
!76 = !{i64 2157693071}
!77 = !{i64 2157693418}
!78 = !{i64 2157693860}
!79 = !{i64 2157694302}
!80 = !{i64 2157694659}
!81 = !{i64 2157695941}
!82 = !{i64 2157702470}
!83 = !{i64 2157702807}
!84 = !{i64 2157689240}
!85 = !{i64 2157689653}
!86 = !{i64 2157689878}
!87 = !{i64 2157690299}
!88 = !{i64 2157684420}
!89 = !{i64 2153877170}
!90 = !{i64 2157686987}
!91 = !{i64 2157687344}
!92 = !{i64 2157682709}
!93 = !{i64 2157695604}
