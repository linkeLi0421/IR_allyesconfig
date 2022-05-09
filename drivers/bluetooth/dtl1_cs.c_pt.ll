; ModuleID = '/llk/IR_all_yes/drivers/bluetooth/dtl1_cs.c_pt.bc'
source_filename = "../drivers/bluetooth/dtl1_cs.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.dtl1_info = type { ptr, ptr, %struct.spinlock, i32, i32, %struct.sk_buff_head, i32, i32, i32, ptr }
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
%struct.nsh = type { i8, i8, i16 }

@__UNIQUE_ID_author481 = internal constant [53 x i8] c"dtl1_cs.author=Marcel Holtmann <marcel@holtmann.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description482 = internal constant [71 x i8] c"dtl1_cs.description=Bluetooth driver for Nokia Connectivity Card DTL-1\00", section ".modinfo", align 1
@__UNIQUE_ID_file483 = internal constant [39 x i8] c"dtl1_cs.file=drivers/bluetooth/dtl1_cs\00", section ".modinfo", align 1
@__UNIQUE_ID_license484 = internal constant [20 x i8] c"dtl1_cs.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_dtl1_cs__485_614_dtl1_driver_init6 = internal global ptr @dtl1_driver_init, section ".initcall6.init", align 4
@dtl1_driver = internal global { %struct.pcmcia_driver, [52 x i8] } { %struct.pcmcia_driver { ptr @.str, ptr @dtl1_probe, ptr @dtl1_detach, ptr null, ptr null, ptr null, ptr @dtl1_ids, %struct.device_driver zeroinitializer, %struct.pcmcia_dynids zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__exitcall_dtl1_driver_exit = internal global ptr @dtl1_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dtl1_cs\00", [24 x i8] zeroinitializer }, align 32
@dtl1_ids = internal constant { [5 x %struct.pcmcia_device_id], [92 x i8] } { [5 x %struct.pcmcia_device_id] [%struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -507519644, i32 -513259507, i32 0, i32 0], [4 x ptr] [ptr @.str.19, ptr @.str.20, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -507519644, i32 -1862091646, i32 0, i32 0], [4 x ptr] [ptr @.str.19, ptr @.str.21, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1282683858, i32 1156315235, i32 0, i32 0], [4 x ptr] [ptr @.str.22, ptr @.str.23, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1282683858, i32 -416105757, i32 0, i32 0], [4 x ptr] [ptr @.str.22, ptr @.str.24, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id zeroinitializer], [92 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RLSI\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unhandled IIR=%#x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Unknown device\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Can't allocate mem for new packet\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Unknown HCI packet with type 0x%02x received\0A\00", [50 x i8] zeroinitializer }, align 32
@dtl1_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016Bluetooth: Nokia control data =\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dtl1_control\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/bluetooth/dtl1_cs.c\00", [36 x i8] zeroinitializer }, align 32
@dtl1_control._entry_ptr = internal global ptr @dtl1_control._entry, section ".printk_index", align 4
@dtl1_control._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.8, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %02x\00", [26 x i8] zeroinitializer }, align 32
@dtl1_control._entry_ptr.11 = internal global ptr @dtl1_control._entry.9, section ".printk_index", align 4
@dtl1_control._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str.8, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@dtl1_control._entry_ptr.14 = internal global ptr @dtl1_control._entry.12, section ".printk_index", align 4
@dtl1_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&(info->lock)\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Can't allocate HCI device\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Can't register HCI device\0A\00", [37 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Nokia Mobile Phones\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DTL-1\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DTL-4\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Socket\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CF\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CF+ Personal Network Card\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 4, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 8, i64 128, i64 130, i64 131, i64 132]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@___asan_gen_.28 = private unnamed_addr constant [12 x i8] c"dtl1_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 607, i32 29 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 609, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [9 x i8] c"dtl1_ids\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 598, i32 38 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 315, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 328, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 209, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 222, i32 5 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 267, i32 6 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 184, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 186, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 188, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 441, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 454, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 494, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 1984, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 599, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 600, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 601, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [31 x i8] c"../drivers/bluetooth/dtl1_cs.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 602, i32 2 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author481, ptr @__UNIQUE_ID_description482, ptr @__UNIQUE_ID_file483, ptr @__UNIQUE_ID_license484, ptr @__exitcall_dtl1_driver_exit, ptr @__initcall__kmod_dtl1_cs__485_614_dtl1_driver_init6, ptr @dtl1_control._entry, ptr @dtl1_control._entry.12, ptr @dtl1_control._entry.9, ptr @dtl1_control._entry_ptr, ptr @dtl1_control._entry_ptr.11, ptr @dtl1_control._entry_ptr.14, ptr @dtl1_driver_exit, ptr @dtl1_driver, ptr @.str, ptr @dtl1_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @dtl1_open.__key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @skb_queue_head_init.__key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtl1_driver to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtl1_ids to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtl1_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtl1_control._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtl1_control._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtl1_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dtl1_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcmcia_register_driver(ptr noundef nonnull @dtl1_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dtl1_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pcmcia_unregister_driver(ptr noundef nonnull @dtl1_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dtl1_probe(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 132, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  %or = or i32 %3, 2049
  store i32 %or, ptr %config_flags, align 4
  %resource.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %4 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resource.i, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %end.i, align 4
  %call.i8 = tail call i32 @pcmcia_loop_config(ptr noundef %link, ptr noundef nonnull @dtl1_confcheck, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool.not.i = icmp eq i32 %call.i8, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.failed.i_crit_edge

if.end.failed.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed.i

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @pcmcia_request_irq(ptr noundef %link, ptr noundef nonnull @dtl1_interrupt) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.failed.i_crit_edge

if.end.i.failed.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed.i

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call i32 @pcmcia_enable_device(ptr noundef %link) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.failed.i_crit_edge

if.end4.i.failed.i_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed.i

if.end8.i:                                        ; preds = %if.end4.i
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 4
  %resource.i.i = getelementptr inbounds %struct.pcmcia_device, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resource.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %lock.i.i = getelementptr inbounds %struct.dtl1_info, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @dtl1_open.__key, i16 noundef signext 3) #7
  %txq.i.i = getelementptr inbounds %struct.dtl1_info, ptr %call.i, i32 0, i32 5
  %lock.i.i.i = getelementptr inbounds %struct.dtl1_info, ptr %call.i, i32 0, i32 5, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %13 = ptrtoint ptr %txq.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %txq.i.i, ptr %txq.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.dtl1_info, ptr %call.i, i32 0, i32 5, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %txq.i.i, ptr %prev.i.i.i.i, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.dtl1_info, ptr %call.i, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %qlen.i.i.i.i, align 4
  %rx_state.i.i = getelementptr inbounds %struct.dtl1_info, ptr %call.i, i32 0, i32 7
  %16 = ptrtoint ptr %rx_state.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %rx_state.i.i, align 4
  %rx_count.i.i = getelementptr inbounds %struct.dtl1_info, ptr %call.i, i32 0, i32 8
  %17 = ptrtoint ptr %rx_count.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %rx_count.i.i, align 4
  %rx_skb.i.i = getelementptr inbounds %struct.dtl1_info, ptr %call.i, i32 0, i32 9
  %18 = ptrtoint ptr %rx_skb.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %rx_skb.i.i, align 4
  %tx_state.i.i = getelementptr inbounds %struct.dtl1_info, ptr %call.i, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 8, ptr noundef %tx_state.i.i) #7
  %call.i.i.i = tail call ptr @hci_alloc_dev_priv(i32 noundef 0) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.16) #7
  br label %failed.i

if.end.i.i:                                       ; preds = %if.end8.i
  %hdev2.i.i = getelementptr inbounds %struct.dtl1_info, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %hdev2.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i.i, ptr %hdev2.i.i, align 4
  %bus.i.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %bus.i.i, align 2
  %driver_data.i.i.i.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i.i, i32 0, i32 204, i32 8
  %21 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %driver_data.i.i.i.i, align 4
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pcmcia_device, ptr %23, i32 0, i32 21
  %parent.i.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i.i, i32 0, i32 204, i32 1
  %24 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dev.i.i, ptr %parent.i.i, align 8
  %open.i.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i.i, i32 0, i32 232
  %25 = ptrtoint ptr %open.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @dtl1_hci_open, ptr %open.i.i, align 8
  %close.i.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i.i, i32 0, i32 233
  %26 = ptrtoint ptr %close.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @dtl1_hci_close, ptr %close.i.i, align 4
  %flush.i.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i.i, i32 0, i32 234
  %27 = ptrtoint ptr %flush.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @dtl1_hci_flush, ptr %flush.i.i, align 8
  %send.i.i = getelementptr inbounds %struct.hci_dev, ptr %call.i.i.i, i32 0, i32 237
  %28 = ptrtoint ptr %send.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @dtl1_hci_send_frame, ptr %send.i.i, align 4
  %call9.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  tail call void @arm_heavy_mb() #7
  %add.i.i = add i32 %12, 4
  %and.i.i = and i32 %add.i.i, 1048575
  %add17.i.i = or i32 %and.i.i, -18874368
  %29 = inttoptr i32 %add17.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 0) #7, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  %add22.i.i = add i32 %12, 1
  %and23.i.i = and i32 %add22.i.i, 1048575
  %add24.i.i = or i32 %and23.i.i, -18874368
  %30 = inttoptr i32 %add24.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 0) #7, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %add29.i.i = add i32 %12, 3
  %and30.i.i = and i32 %add29.i.i, 1048575
  %add31.i.i = or i32 %and30.i.i, -18874368
  %31 = inttoptr i32 %add31.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 3) #7, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 11) #7, !srcloc !70
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 4
  %resource41.i.i = getelementptr inbounds %struct.pcmcia_device, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %resource41.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %resource41.i.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %add44.i.i = add i32 %37, 6
  %and45.i.i = and i32 %add44.i.i, 1048575
  %add46.i.i = or i32 %and45.i.i, -18874368
  %38 = inttoptr i32 %add46.i.i to ptr
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %38) #7, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  %40 = and i8 %39, 64
  %and51.i.i = zext i8 %40 to i32
  %ri_latch.i.i = getelementptr inbounds %struct.dtl1_info, ptr %call.i, i32 0, i32 4
  %41 = ptrtoint ptr %ri_latch.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and51.i.i, ptr %ri_latch.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 7) #7, !srcloc !70
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call9.i.i) #7
  tail call void @msleep(i32 noundef 2000) #7
  %call60.i.i = tail call i32 @hci_register_dev(ptr noundef nonnull %call.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i.i)
  %cmp61.i.i = icmp slt i32 %call60.i.i, 0
  br i1 %cmp61.i.i, label %if.then63.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then63.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.17) #7
  %42 = ptrtoint ptr %hdev2.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %hdev2.i.i, align 4
  tail call void @hci_free_dev(ptr noundef nonnull %call.i.i.i) #7
  br label %failed.i

failed.i:                                         ; preds = %if.then63.i.i, %if.then.i.i, %if.end4.i.failed.i_crit_edge, %if.end.i.failed.i_crit_edge, %if.end.failed.i_crit_edge
  %ret.0.i = phi i32 [ %call.i8, %if.end.failed.i_crit_edge ], [ %call1.i, %if.end.i.failed.i_crit_edge ], [ %call5.i, %if.end4.i.failed.i_crit_edge ], [ -12, %if.then.i.i ], [ -19, %if.then63.i.i ]
  tail call void @dtl1_detach(ptr noundef %link) #7
  br label %cleanup

cleanup:                                          ; preds = %failed.i, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %ret.0.i, %failed.i ], [ 0, %if.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dtl1_detach(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %hdev1.i = getelementptr inbounds %struct.dtl1_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hdev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.dtl1_close.exit_crit_edge, label %if.end.i

entry.dtl1_close.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dtl1_close.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 204, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %txq.i.i.i = getelementptr inbounds %struct.dtl1_info, ptr %11, i32 0, i32 5
  tail call void @skb_queue_purge(ptr noundef %txq.i.i.i) #7
  %lock.i = getelementptr inbounds %struct.dtl1_info, ptr %1, i32 0, i32 2
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %add.i = add i32 %9, 4
  %and.i = and i32 %add.i, 1048575
  %add10.i = or i32 %and.i, -18874368
  %12 = inttoptr i32 %add10.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 0) #7, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %add15.i = add i32 %9, 1
  %and16.i = and i32 %add15.i, 1048575
  %add17.i = or i32 %and16.i, -18874368
  %13 = inttoptr i32 %add17.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 0) #7, !srcloc !70
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #7
  tail call void @hci_unregister_dev(ptr noundef nonnull %3) #7
  tail call void @hci_free_dev(ptr noundef nonnull %3) #7
  br label %dtl1_close.exit

dtl1_close.exit:                                  ; preds = %if.end.i, %entry.dtl1_close.exit_crit_edge
  tail call void @pcmcia_disable_device(ptr noundef %link) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_loop_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dtl1_confcheck(ptr nocapture noundef readonly %p_dev, ptr nocapture noundef readnone %priv_data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dtl1_interrupt(i32 noundef %irq, ptr noundef %dev_inst) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev_inst, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %hdev = getelementptr inbounds %struct.dtl1_info, ptr %dev_inst, i32 0, i32 1
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %dev_inst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_inst, align 4
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resource, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %lock = getelementptr inbounds %struct.dtl1_info, ptr %dev_inst, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %add = add i32 %7, 2
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %8 = inttoptr i32 %add2 to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #7, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %iir.0.in70 = and i8 %9, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %iir.0.in70)
  %tobool5.not72 = icmp eq i8 %iir.0.in70, 0
  br i1 %tobool5.not72, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %add7 = add i32 %7, 5
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %10 = inttoptr i32 %add9 to ptr
  %rx_skb.i = getelementptr inbounds %struct.dtl1_info, ptr %dev_inst, i32 0, i32 9
  %rx_count13.i = getelementptr inbounds %struct.dtl1_info, ptr %dev_inst, i32 0, i32 8
  %rx_state17.i = getelementptr inbounds %struct.dtl1_info, ptr %dev_inst, i32 0, i32 7
  %flowmask12.i.i = getelementptr inbounds %struct.dtl1_info, ptr %dev_inst, i32 0, i32 3
  %tx_state.i.i = getelementptr inbounds %struct.dtl1_info, ptr %dev_inst, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %if.end22.while.body_crit_edge, %while.body.lr.ph
  %iir.0.in74 = phi i8 [ %iir.0.in70, %while.body.lr.ph ], [ %iir.0.in, %if.end22.while.body_crit_edge ]
  %boguscount.073 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end22.while.body_crit_edge ]
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #7, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  %trunc = trunc i8 %iir.0.in74 to i4
  %12 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i4 %trunc, label %sw.default [
    i4 6, label %sw.bb
    i4 4, label %if.end.i
    i4 2, label %sw.bb15
  ]

sw.bb:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.1) #7
  br label %sw.epilog

if.end.i:                                         ; preds = %while.body
  %13 = ptrtoint ptr %dev_inst to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_inst, align 4
  %resource.i = getelementptr inbounds %struct.pcmcia_device, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %resource.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %and.i = and i32 %18, 1048575
  %add9.i = or i32 %and.i, -18874368
  %19 = inttoptr i32 %add9.i to ptr
  %add73.i = add i32 %18, 5
  %and74.i = and i32 %add73.i, 1048575
  %add75.i = or i32 %and74.i, -18874368
  %20 = inttoptr i32 %add75.i to ptr
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end.i
  %boguscount.0.i = phi i32 [ 0, %if.end.i ], [ %inc67.i, %do.cond.i.do.body.i_crit_edge ]
  %21 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hdev, align 4
  %byte_rx.i = getelementptr inbounds %struct.hci_dev, ptr %22, i32 0, i32 199, i32 8
  %23 = ptrtoint ptr %byte_rx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %byte_rx.i, align 8
  %inc.i = add i32 %24, 1
  store i32 %inc.i, ptr %byte_rx.i, align 8
  %25 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_skb.i, align 4
  %cmp.i = icmp eq ptr %26, null
  br i1 %cmp.i, label %if.then1.i, label %do.body.i.if.end7.i_crit_edge

do.body.i.if.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then1.i:                                       ; preds = %do.body.i
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 1036, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then5.i, label %bt_skb_alloc.exit.i

bt_skb_alloc.exit.i:                              ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %27 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %28, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %29 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %30, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %31 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i.i.i, ptr %rx_skb.i, align 4
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %rx_skb.i, align 4
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.4) #7
  %33 = ptrtoint ptr %rx_state17.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %rx_state17.i, align 4
  %34 = ptrtoint ptr %rx_count13.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 4, ptr %rx_count13.i, align 4
  br label %sw.epilog

if.end7.i:                                        ; preds = %bt_skb_alloc.exit.i, %do.body.i.if.end7.i_crit_edge
  %35 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rx_skb.i, align 4
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #7, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  %call.i.i = tail call ptr @skb_put(ptr noundef %36, i32 noundef 1) #7
  %38 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %call.i.i, align 1
  %39 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rx_skb.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 19
  %41 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i, align 4
  %43 = ptrtoint ptr %rx_count13.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rx_count13.i, align 4
  %dec.i = add i32 %44, -1
  store i32 %dec.i, ptr %rx_count13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp15.i = icmp eq i32 %dec.i, 0
  br i1 %cmp15.i, label %if.then16.i, label %if.end7.i.if.end66.i_crit_edge

if.end7.i.if.end66.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66.i

if.then16.i:                                      ; preds = %if.end7.i
  %45 = ptrtoint ptr %rx_state17.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_state17.i, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %46, label %if.then16.i.if.end66.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb24.i
  ]

if.then16.i.if.end66.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66.i

sw.bb.i:                                          ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %rx_state17.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %rx_state17.i, align 4
  %len.i = getelementptr inbounds %struct.nsh, ptr %42, i32 0, i32 2
  %49 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %len.i, align 1
  %conv.i = zext i16 %50 to i32
  %and21.i = and i32 %conv.i, 1
  %add22.i = add nuw nsw i32 %and21.i, %conv.i
  %51 = ptrtoint ptr %rx_count13.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add22.i, ptr %rx_count13.i, align 4
  br label %if.end66.i

sw.bb24.i:                                        ; preds = %if.then16.i
  %52 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %42, align 1
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 3
  %54 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %cb.i, align 8
  %len26.i = getelementptr inbounds %struct.nsh, ptr %42, i32 0, i32 2
  %55 = ptrtoint ptr %len26.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %len26.i, align 1
  %57 = and i16 %56, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool29.not.i = icmp eq i16 %57, 0
  br i1 %tobool29.not.i, label %sw.bb24.i.if.end35.i_crit_edge, label %if.then30.i

sw.bb24.i.if.end35.i_crit_edge:                   ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

if.then30.i:                                      ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rx_skb.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 16
  %60 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tail.i, align 8
  %incdec.ptr.i = getelementptr i8, ptr %61, i32 -1
  store ptr %incdec.ptr.i, ptr %tail.i, align 8
  %62 = load ptr, ptr %rx_skb.i, align 4
  %len33.i = getelementptr inbounds %struct.sk_buff, ptr %62, i32 0, i32 6
  %63 = ptrtoint ptr %len33.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len33.i, align 4
  %dec34.i = add i32 %64, -1
  store i32 %dec34.i, ptr %len33.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then30.i, %sw.bb24.i.if.end35.i_crit_edge
  %65 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rx_skb.i, align 4
  %call37.i = tail call ptr @skb_pull(ptr noundef %66, i32 noundef 4) #7
  %67 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rx_skb.i, align 4
  %cb39.i = getelementptr inbounds %struct.sk_buff, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %cb39.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %cb39.i, align 8
  %71 = zext i8 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %70, label %sw.default.i [
    i8 -128, label %sw.bb43.i
    i8 -126, label %if.end35.i.sw.bb45.i_crit_edge
    i8 -125, label %if.end35.i.sw.bb45.i_crit_edge77
    i8 -124, label %if.end35.i.sw.bb45.i_crit_edge78
  ]

if.end35.i.sw.bb45.i_crit_edge78:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb45.i

if.end35.i.sw.bb45.i_crit_edge77:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb45.i

if.end35.i.sw.bb45.i_crit_edge:                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb45.i

sw.bb43.i:                                        ; preds = %if.end35.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %68, i32 0, i32 19
  %72 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data.i.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %73, align 1
  %call.i117.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %68, i32 0, i32 6
  %76 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp30.not.i.i = icmp eq i32 %77, 0
  br i1 %cmp30.not.i.i, label %sw.bb43.i.do.end9.i.i_crit_edge, label %sw.bb43.i.do.end3.i.i_crit_edge

sw.bb43.i.do.end3.i.i_crit_edge:                  ; preds = %sw.bb43.i
  br label %do.end3.i.i

sw.bb43.i.do.end9.i.i_crit_edge:                  ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9.i.i

do.end3.i.i:                                      ; preds = %do.end3.i.i.do.end3.i.i_crit_edge, %sw.bb43.i.do.end3.i.i_crit_edge
  %i.031.i.i = phi i32 [ %inc.i.i, %do.end3.i.i.do.end3.i.i_crit_edge ], [ 0, %sw.bb43.i.do.end3.i.i_crit_edge ]
  %78 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %79, i32 %i.031.i.i
  %80 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %81 to i32
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv.i.i) #10
  %inc.i.i = add nuw i32 %i.031.i.i, 1
  %82 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %len.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %83
  br i1 %cmp.i.i, label %do.end3.i.i.do.end3.i.i_crit_edge, label %do.end3.i.i.do.end9.i.i_crit_edge

do.end3.i.i.do.end9.i.i_crit_edge:                ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9.i.i

do.end3.i.i.do.end3.i.i_crit_edge:                ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i.i

do.end9.i.i:                                      ; preds = %do.end3.i.i.do.end9.i.i_crit_edge, %sw.bb43.i.do.end9.i.i_crit_edge
  %call11.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  %84 = ptrtoint ptr %flowmask12.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %flowmask12.i.i, align 4
  %and.i.i = and i32 %85, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp13.i.i = icmp ne i32 %and.i.i, 0
  %86 = and i8 %75, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp17.not.i.i = icmp eq i8 %86, 0
  %or.cond.i.i = select i1 %cmp13.i.i, i1 true, i1 %cmp17.not.i.i
  br i1 %or.cond.i.i, label %do.end9.i.i.dtl1_control.exit.i_crit_edge, label %if.then.i118.i

do.end9.i.i.dtl1_control.exit.i_crit_edge:        ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dtl1_control.exit.i

if.then.i118.i:                                   ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %tx_state.i.i) #7
  tail call fastcc void @dtl1_write_wakeup(ptr noundef nonnull %dev_inst) #7
  br label %dtl1_control.exit.i

dtl1_control.exit.i:                              ; preds = %if.then.i118.i, %do.end9.i.i.dtl1_control.exit.i_crit_edge
  %conv19.i.i = zext i8 %75 to i32
  %87 = ptrtoint ptr %flowmask12.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv19.i.i, ptr %flowmask12.i.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %68, i32 noundef 0) #7
  br label %sw.epilog.i

sw.bb45.i:                                        ; preds = %if.end35.i.sw.bb45.i_crit_edge, %if.end35.i.sw.bb45.i_crit_edge77, %if.end35.i.sw.bb45.i_crit_edge78
  %88 = and i8 %70, 15
  %89 = ptrtoint ptr %cb39.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %cb39.i, align 8
  %90 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hdev, align 4
  %92 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rx_skb.i, align 4
  %call55.i = tail call i32 @hci_recv_frame(ptr noundef %91, ptr noundef %93) #7
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv42.i = zext i8 %70 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.5, i32 noundef %conv42.i) #7
  %94 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rx_skb.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %95, i32 noundef 0) #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb45.i, %dtl1_control.exit.i
  %96 = ptrtoint ptr %rx_state17.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %rx_state17.i, align 4
  %97 = ptrtoint ptr %rx_count13.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 4, ptr %rx_count13.i, align 4
  %98 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %rx_skb.i, align 4
  br label %if.end66.i

if.end66.i:                                       ; preds = %sw.epilog.i, %sw.bb.i, %if.then16.i.if.end66.i_crit_edge, %if.end7.i.if.end66.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %boguscount.0.i)
  %exitcond.i = icmp eq i32 %boguscount.0.i, 33
  br i1 %exitcond.i, label %if.end66.i.sw.epilog_crit_edge, label %do.cond.i

if.end66.i.sw.epilog_crit_edge:                   ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.cond.i:                                        ; preds = %if.end66.i
  %inc67.i = add nuw nsw i32 %boguscount.0.i, 1
  %99 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #7, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %100 = and i8 %99, 1
  %tobool81.not.i = icmp eq i8 %100, 0
  br i1 %tobool81.not.i, label %do.cond.i.sw.epilog_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.cond.i.sw.epilog_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb15:                                          ; preds = %while.body
  %101 = and i8 %11, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool17.not = icmp eq i8 %101, 0
  br i1 %tobool17.not, label %sw.bb15.sw.epilog_crit_edge, label %if.then18

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then18:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @dtl1_write_wakeup(ptr noundef nonnull %dev_inst)
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %iir.075 = zext i8 %iir.0.in74 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.2, i32 noundef %iir.075) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then18, %sw.bb15.sw.epilog_crit_edge, %do.cond.i.sw.epilog_crit_edge, %if.end66.i.sw.epilog_crit_edge, %if.then5.i, %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %boguscount.073)
  %exitcond = icmp eq i32 %boguscount.073, 101
  br i1 %exitcond, label %sw.epilog.while.end_crit_edge, label %if.end22

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end22:                                         ; preds = %sw.epilog
  %inc = add nuw nsw i32 %boguscount.073, 1
  %102 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #7, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  %iir.0.in = and i8 %102, 14
  %tobool5.not = icmp eq i8 %iir.0.in, 0
  br i1 %tobool5.not, label %if.end22.while.end_crit_edge, label %if.end22.while.body_crit_edge

if.end22.while.body_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end22.while.end_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end22.while.end_crit_edge, %sw.epilog.while.end_crit_edge, %if.end.while.end_crit_edge
  %r.1 = phi i32 [ 0, %if.end.while.end_crit_edge ], [ 1, %sw.epilog.while.end_crit_edge ], [ 1, %if.end22.while.end_crit_edge ]
  %add33 = add i32 %7, 6
  %and34 = and i32 %add33, 1048575
  %add35 = or i32 %and34, -18874368
  %103 = inttoptr i32 %add35 to ptr
  %104 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %103) #7, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  %ri_latch = getelementptr inbounds %struct.dtl1_info, ptr %dev_inst, i32 0, i32 4
  %105 = ptrtoint ptr %ri_latch to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ri_latch, align 4
  %107 = and i8 %104, 64
  %and40 = zext i8 %107 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %and40)
  %tobool41.not = icmp eq i32 %106, %and40
  br i1 %tobool41.not, label %while.end.if.end46_crit_edge, label %if.then42

while.end.if.end46_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then42:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %108 = ptrtoint ptr %ri_latch to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %and40, ptr %ri_latch, align 4
  %tx_state = getelementptr inbounds %struct.dtl1_info, ptr %dev_inst, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %tx_state) #7
  tail call fastcc void @dtl1_write_wakeup(ptr noundef nonnull %dev_inst)
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %while.end.if.end46_crit_edge
  %r.2 = phi i32 [ 1, %if.then42 ], [ %r.1, %while.end.if.end46_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.2, %if.end46 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dtl1_write_wakeup(ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.3) #7
  br label %return

if.end:                                           ; preds = %entry
  %tx_state = getelementptr inbounds %struct.dtl1_info, ptr %info, i32 0, i32 6
  %0 = ptrtoint ptr %tx_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %tx_state, align 4
  %2 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %tx_state) #7
  br label %return

if.end4:                                          ; preds = %if.end
  %call6 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %tx_state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body.preheader, label %if.then8

do.body.preheader:                                ; preds = %if.end4
  %txq = getelementptr inbounds %struct.dtl1_info, ptr %info, i32 0, i32 5
  %hdev = getelementptr inbounds %struct.dtl1_info, ptr %info, i32 0, i32 1
  br label %do.body

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %tx_state) #7
  br label %return

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %do.body.preheader
  %3 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %info, align 4
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %resource, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %tx_state) #7
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info, align 4
  %call13 = tail call ptr @pcmcia_dev_present(ptr noundef %10) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.body.return_crit_edge, label %if.end16

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end16:                                         ; preds = %do.body
  %call17 = tail call ptr @skb_dequeue(ptr noundef %txq) #7
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end16.do.end_crit_edge, label %if.end20

if.end16.do.end_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end20:                                         ; preds = %if.end16
  %data = getelementptr inbounds %struct.sk_buff, ptr %call17, i32 0, i32 19
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %len21 = getelementptr inbounds %struct.sk_buff, ptr %call17, i32 0, i32 6
  %13 = ptrtoint ptr %len21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len21, align 4
  %add.i = add i32 %8, 5
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %15 = inttoptr i32 %add1.i to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #7, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %17 = and i8 %16, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp ne i8 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp51.i = icmp sgt i32 %14, 0
  %or.cond4.i = and i1 %cmp51.i, %tobool.not.i
  br i1 %or.cond4.i, label %do.body.lr.ph.i, label %if.end20.dtl1_write.exit_crit_edge

if.end20.dtl1_write.exit_crit_edge:               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %dtl1_write.exit

do.body.lr.ph.i:                                  ; preds = %if.end20
  %and8.i = and i32 %8, 1048575
  %add9.i = or i32 %and8.i, -18874368
  %18 = inttoptr i32 %add9.i to ptr
  %19 = add nsw i32 %14, -1
  %umin.i = tail call i32 @llvm.umin.i32(i32 %19, i32 31) #7
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %actual.02.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %arrayidx.i = getelementptr i8, ptr %12, i32 %actual.02.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %21) #7, !srcloc !70
  %inc.i = add nuw nsw i32 %actual.02.i, 1
  %exitcond.not.i = icmp eq i32 %actual.02.i, %umin.i
  br i1 %exitcond.not.i, label %dtl1_write.exit.loopexit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

dtl1_write.exit.loopexit:                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = add nuw nsw i32 %umin.i, 1
  br label %dtl1_write.exit

dtl1_write.exit:                                  ; preds = %dtl1_write.exit.loopexit, %if.end20.dtl1_write.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end20.dtl1_write.exit_crit_edge ], [ %22, %dtl1_write.exit.loopexit ]
  %23 = ptrtoint ptr %len21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %24)
  %cmp = icmp eq i32 %retval.0.i, %24
  br i1 %cmp, label %if.then24, label %if.else

if.then24:                                        ; preds = %dtl1_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 8, ptr noundef %tx_state) #7
  tail call void @kfree_skb_reason(ptr noundef nonnull %call17, i32 noundef 0) #7
  br label %do.cond

if.else:                                          ; preds = %dtl1_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = tail call ptr @skb_pull(ptr noundef nonnull %call17, i32 noundef %retval.0.i) #7
  tail call void @skb_queue_head(ptr noundef %txq, ptr noundef nonnull %call17) #7
  br label %do.cond

do.cond:                                          ; preds = %if.else, %if.then24
  %25 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hdev, align 4
  %byte_tx = getelementptr inbounds %struct.hci_dev, ptr %26, i32 0, i32 199, i32 9
  %27 = ptrtoint ptr %byte_tx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %byte_tx, align 4
  %add = add i32 %28, %retval.0.i
  store i32 %add, ptr %byte_tx, align 4
  %29 = ptrtoint ptr %tx_state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %tx_state, align 4
  %31 = and i32 %30, 4
  %tobool33.not = icmp eq i32 %31, 0
  br i1 %tobool33.not, label %do.cond.do.end_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %if.end16.do.end_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %tx_state) #7
  br label %return

return:                                           ; preds = %do.end, %do.body.return_crit_edge, %if.then8, %if.then2, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcmcia_dev_present(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dtl1_hci_open(ptr nocapture noundef readnone %hdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dtl1_hci_close(ptr nocapture noundef readonly %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %txq.i = getelementptr inbounds %struct.dtl1_info, ptr %1, i32 0, i32 5
  tail call void @skb_queue_purge(ptr noundef %txq.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dtl1_hci_flush(ptr nocapture noundef readonly %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %txq = getelementptr inbounds %struct.dtl1_info, ptr %1, i32 0, i32 5
  tail call void @skb_queue_purge(ptr noundef %txq) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dtl1_hci_send_frame(ptr nocapture noundef %hdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %3, label %entry.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb1
    i8 3, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cmd_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 2
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %acl_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sco_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb1, %sw.bb
  %sco_tx.sink41 = phi ptr [ %sco_tx, %sw.bb5 ], [ %acl_tx, %sw.bb1 ], [ %cmd_tx, %sw.bb ]
  %nsh.sroa.0.0 = phi i8 [ -125, %sw.bb5 ], [ -126, %sw.bb1 ], [ -127, %sw.bb ]
  %5 = ptrtoint ptr %sco_tx.sink41 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sco_tx.sink41, align 8
  %inc7 = add i32 %6, 1
  store i32 %inc7, ptr %sco_tx.sink41, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %conv9 = trunc i32 %8 to i16
  %add.i = add i32 %8, 13
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %9 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %11 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 12
  store ptr %add.ptr.i, ptr %data.i.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %12, i32 12
  store ptr %add.ptr1.i, ptr %tail.i.i, align 8
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %call15 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %14) #7
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %data.i40 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %17 = ptrtoint ptr %data.i40 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i40, align 4
  %19 = call ptr @memcpy(ptr %call15, ptr %18, i32 %16)
  %20 = load i32, ptr %len, align 4
  %and = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.end.if.end20_crit_edge, label %if.then19

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 1) #7
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %call.i, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end.if.end20_crit_edge
  %call21 = tail call ptr @skb_push(ptr noundef nonnull %call.i.i, i32 noundef 4) #7
  %22 = ptrtoint ptr %call21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %nsh.sroa.0.0, ptr %call21, align 1
  %nsh.sroa.7.0.call21.sroa_idx = getelementptr inbounds i8, ptr %call21, i32 1
  %23 = ptrtoint ptr %nsh.sroa.7.0.call21.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %nsh.sroa.7.0.call21.sroa_idx, align 1
  %nsh.sroa.9.0.call21.sroa_idx = getelementptr inbounds i8, ptr %call21, i32 2
  %24 = ptrtoint ptr %nsh.sroa.9.0.call21.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %conv9, ptr %nsh.sroa.9.0.call21.sroa_idx, align 1
  %txq = getelementptr inbounds %struct.dtl1_info, ptr %1, i32 0, i32 5
  tail call void @skb_queue_tail(ptr noundef %txq, ptr noundef nonnull %call.i.i) #7
  tail call fastcc void @dtl1_write_wakeup(ptr noundef %1)
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -84, %entry.cleanup_crit_edge ], [ -12, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_register_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_free_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_alloc_dev_priv(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_unregister_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !45, !47, !48, !50, !51, !53, !55, !56, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__UNIQUE_ID_author481, !1, !"__UNIQUE_ID_author481", i1 false, i1 false}
!1 = !{!"../drivers/bluetooth/dtl1_cs.c", i32 56, i32 1}
!2 = !{ptr @__UNIQUE_ID_description482, !3, !"__UNIQUE_ID_description482", i1 false, i1 false}
!3 = !{!"../drivers/bluetooth/dtl1_cs.c", i32 57, i32 1}
!4 = !{ptr @__UNIQUE_ID_file483, !5, !"__UNIQUE_ID_file483", i1 false, i1 false}
!5 = !{!"../drivers/bluetooth/dtl1_cs.c", i32 58, i32 1}
!6 = !{ptr @__UNIQUE_ID_license484, !5, !"__UNIQUE_ID_license484", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_dtl1_cs__485_614_dtl1_driver_init6, !8, !"__initcall__kmod_dtl1_cs__485_614_dtl1_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/bluetooth/dtl1_cs.c", i32 614, i32 1}
!9 = !{ptr @__exitcall_dtl1_driver_exit, !8, !"__exitcall_dtl1_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/bluetooth/dtl1_cs.c", i32 609, i32 11}
!12 = !{ptr @dtl1_driver, !13, !"dtl1_driver", i1 false, i1 false}
!13 = !{!"../drivers/bluetooth/dtl1_cs.c", i32 607, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/bluetooth/dtl1_cs.c", i32 315, i32 4}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/bluetooth/dtl1_cs.c", i32 328, i32 4}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/bluetooth/dtl1_cs.c", i32 209, i32 3}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/bluetooth/dtl1_cs.c", i32 222, i32 5}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/bluetooth/dtl1_cs.c", i32 267, i32 6}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/bluetooth/dtl1_cs.c", i32 184, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @dtl1_control._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @dtl1_control._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/bluetooth/dtl1_cs.c", i32 186, i32 3}
!32 = !{ptr @dtl1_control._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @dtl1_control._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/bluetooth/dtl1_cs.c", i32 188, i32 2}
!36 = !{ptr @dtl1_control._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @dtl1_control._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @dtl1_open.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/bluetooth/dtl1_cs.c", i32 441, i32 2}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/bluetooth/dtl1_cs.c", i32 454, i32 3}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/bluetooth/dtl1_cs.c", i32 494, i32 3}
!45 = !{ptr @skb_queue_head_init.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/bluetooth/dtl1_cs.c", i32 599, i32 2}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/bluetooth/dtl1_cs.c", i32 600, i32 2}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/bluetooth/dtl1_cs.c", i32 601, i32 2}
!55 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/bluetooth/dtl1_cs.c", i32 602, i32 2}
!58 = !{ptr @dtl1_ids, !59, !"dtl1_ids", i1 false, i1 false}
!59 = !{!"../drivers/bluetooth/dtl1_cs.c", i32 598, i32 38}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i64 2157707521}
!70 = !{i64 6333581}
!71 = !{i64 2157707851}
!72 = !{i64 2157708189}
!73 = !{i64 2157708555}
!74 = !{i64 6333976}
!75 = !{i64 2157709007}
!76 = !{i64 2157709255}
!77 = !{i64 2157710021}
!78 = !{i64 2157710351}
!79 = !{i64 2157705166}
!80 = !{i64 2157705454}
!81 = !{i64 2157704113}
!82 = !{i64 2157704878}
!83 = !{i64 2157705852}
!84 = !{i64 2157706140}
!85 = !{i64 2157698446}
!86 = !{i64 2157698672}
