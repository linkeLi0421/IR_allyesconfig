; ModuleID = '/llk/IR_all_yes/drivers/platform/chrome/cros_ec_rpmsg.c_pt.bc'
source_filename = "../drivers/platform/chrome/cros_ec_rpmsg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rpmsg_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rpmsg_channel_info = type { [32 x i8], i32, i32 }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.cros_ec_rpmsg = type { ptr, %struct.completion, %struct.work_struct, ptr, i8, i8 }
%struct.rpmsg_device = type { %struct.device, %struct.rpmsg_device_id, ptr, i32, i32, ptr, i8, i8, ptr }
%struct.rpmsg_device_id = type { [32 x i8], i32 }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.ec_host_response = type { i8, i8, i16, i16, i16 }
%struct.cros_ec_rpmsg_response = type { i8, [3 x i8], [0 x i8] }

@__initcall__kmod_cros_ec_rpmsg__228_304_cros_ec_driver_rpmsg_init6 = internal global ptr @cros_ec_driver_rpmsg_init, section ".initcall6.init", align 4
@cros_ec_driver_rpmsg = internal global { %struct.rpmsg_driver, [36 x i8] } { %struct.rpmsg_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cros_ec_rpmsg_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cros_ec_rpmsg_pm_ops, ptr null, ptr null }, ptr null, ptr @cros_ec_rpmsg_probe, ptr @cros_ec_rpmsg_remove, ptr null }, [36 x i8] zeroinitializer }, align 32
@__exitcall_cros_ec_driver_rpmsg_exit = internal global ptr @cros_ec_driver_rpmsg_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file229 = internal constant [57 x i8] c"cros_ec_rpmsg.file=drivers/platform/chrome/cros_ec_rpmsg\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [29 x i8] c"cros_ec_rpmsg.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [68 x i8] c"cros_ec_rpmsg.description=ChromeOS EC multi function device (rpmsg)\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cros-ec-rpmsg\00", [18 x i8] zeroinitializer }, align 32
@cros_ec_rpmsg_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,cros-ec-rpmsg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cros_ec_rpmsg_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cros_ec_rpmsg_suspend, ptr @cros_ec_rpmsg_resume, ptr @cros_ec_rpmsg_suspend, ptr @cros_ec_rpmsg_resume, ptr @cros_ec_rpmsg_suspend, ptr @cros_ec_rpmsg_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cros_ec_rpmsg_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&ec_rpmsg->host_event_work)\00", [50 x i8] zeroinitializer }, align 32
@cros_ec_pkt_xfer_rpmsg.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cros_ec_rpmsg\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cros_ec_pkt_xfer_rpmsg\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/platform/chrome/cros_ec_rpmsg.c\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"prepared, len=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@cros_ec_pkt_xfer_rpmsg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 97, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rpmsg send failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cros_ec_pkt_xfer_rpmsg._entry_ptr = internal global ptr @cros_ec_pkt_xfer_rpmsg._entry, section ".printk_index", align 4
@cros_ec_pkt_xfer_rpmsg._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 104, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rpmsg send timeout\0A\00", [44 x i8] zeroinitializer }, align 32
@cros_ec_pkt_xfer_rpmsg._entry_ptr.11 = internal global ptr @cros_ec_pkt_xfer_rpmsg._entry.9, section ".printk_index", align 4
@cros_ec_pkt_xfer_rpmsg._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 118, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"packet too long (%d bytes, expected %d)\00", [56 x i8] zeroinitializer }, align 32
@cros_ec_pkt_xfer_rpmsg._entry_ptr.14 = internal global ptr @cros_ec_pkt_xfer_rpmsg._entry.12, section ".printk_index", align 4
@cros_ec_pkt_xfer_rpmsg._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 133, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bad packet checksum, calculated %x\0A\00", [60 x i8] zeroinitializer }, align 32
@cros_ec_pkt_xfer_rpmsg._entry_ptr.17 = internal global ptr @cros_ec_pkt_xfer_rpmsg._entry.15, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@cros_ec_rpmsg_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 164, ptr @.str.21, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rpmsg received empty response\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cros_ec_rpmsg_callback\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cros_ec_rpmsg_callback._entry_ptr = internal global ptr @cros_ec_rpmsg_callback._entry, section ".printk_index", align 4
@cros_ec_rpmsg_callback._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.4, i32 174, ptr @.str.21, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"received length %d > din_size %d, truncating\00", [51 x i8] zeroinitializer }, align 32
@cros_ec_rpmsg_callback._entry_ptr.24 = internal global ptr @cros_ec_rpmsg_callback._entry.22, section ".printk_index", align 4
@cros_ec_rpmsg_callback._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.20, ptr @.str.4, i32 191, ptr @.str.21, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rpmsg received invalid type = %d\00", [63 x i8] zeroinitializer }, align 32
@cros_ec_rpmsg_callback._entry_ptr.27 = internal global ptr @cros_ec_rpmsg_callback._entry.25, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.28 = private unnamed_addr constant [21 x i8] c"cros_ec_driver_rpmsg\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 294, i32 28 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 296, i32 13 }
@___asan_gen_.34 = private unnamed_addr constant [23 x i8] c"cros_ec_rpmsg_of_match\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 288, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant [21 x i8] c"cros_ec_rpmsg_pm_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 285, i32 8 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 237, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 92, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 97, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 104, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 117, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 132, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 87, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 164, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 172, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [43 x i8] c"../drivers/platform/chrome/cros_ec_rpmsg.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 190, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_cros_ec_driver_rpmsg_exit, ptr @__initcall__kmod_cros_ec_rpmsg__228_304_cros_ec_driver_rpmsg_init6, ptr @cros_ec_driver_rpmsg_exit, ptr @cros_ec_pkt_xfer_rpmsg._entry, ptr @cros_ec_pkt_xfer_rpmsg._entry.12, ptr @cros_ec_pkt_xfer_rpmsg._entry.15, ptr @cros_ec_pkt_xfer_rpmsg._entry.9, ptr @cros_ec_pkt_xfer_rpmsg._entry_ptr, ptr @cros_ec_pkt_xfer_rpmsg._entry_ptr.11, ptr @cros_ec_pkt_xfer_rpmsg._entry_ptr.14, ptr @cros_ec_pkt_xfer_rpmsg._entry_ptr.17, ptr @cros_ec_rpmsg_callback._entry, ptr @cros_ec_rpmsg_callback._entry.22, ptr @cros_ec_rpmsg_callback._entry.25, ptr @cros_ec_rpmsg_callback._entry_ptr, ptr @cros_ec_rpmsg_callback._entry_ptr.24, ptr @cros_ec_rpmsg_callback._entry_ptr.27, ptr @cros_ec_driver_rpmsg, ptr @.str, ptr @cros_ec_rpmsg_of_match, ptr @cros_ec_rpmsg_pm_ops, ptr @cros_ec_rpmsg_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @init_completion.__key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_driver_rpmsg to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_rpmsg_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_rpmsg_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_rpmsg_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_pkt_xfer_rpmsg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_pkt_xfer_rpmsg._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_pkt_xfer_rpmsg._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_pkt_xfer_rpmsg._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_rpmsg_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_rpmsg_callback._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_rpmsg_callback._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_driver_rpmsg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__register_rpmsg_driver(ptr noundef nonnull @cros_ec_driver_rpmsg, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cros_ec_driver_rpmsg_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @unregister_rpmsg_driver(ptr noundef nonnull @cros_ec_driver_rpmsg) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_rpmsg_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_rpmsg_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_rpmsg_probe(ptr noundef %rpdev) #2 align 64 {
entry:
  %chinfo.i = alloca %struct.rpmsg_channel_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %rpdev, i32 noundef 328, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i65 = tail call noalias ptr @devm_kmalloc(ptr noundef %rpdev, i32 noundef 112, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i65, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %dev6 = getelementptr inbounds %struct.cros_ec_device, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %rpdev, ptr %dev6, align 4
  %priv = getelementptr inbounds %struct.cros_ec_device, ptr %call.i, i32 0, i32 9
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i65, ptr %priv, align 4
  %cmd_xfer = getelementptr inbounds %struct.cros_ec_device, ptr %call.i, i32 0, i32 17
  %2 = ptrtoint ptr %cmd_xfer to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @cros_ec_cmd_xfer_rpmsg, ptr %cmd_xfer, align 8
  %pkt_xfer = getelementptr inbounds %struct.cros_ec_device, ptr %call.i, i32 0, i32 18
  %3 = ptrtoint ptr %pkt_xfer to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @cros_ec_pkt_xfer_rpmsg, ptr %pkt_xfer, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %rpdev, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end5.dev_name.exit_crit_edge

if.end5.dev_name.exit_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %rpdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rpdev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end5.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %if.end5.dev_name.exit_crit_edge ]
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %retval.0.i, ptr %call.i, align 8
  %din_size = getelementptr inbounds %struct.cros_ec_device, ptr %call.i, i32 0, i32 13
  %9 = ptrtoint ptr %din_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 20, ptr %din_size, align 4
  %dout_size = getelementptr inbounds %struct.cros_ec_device, ptr %call.i, i32 0, i32 14
  %10 = ptrtoint ptr %dout_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %dout_size, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %rpdev, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i, align 4
  %12 = ptrtoint ptr %call.i65 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %rpdev, ptr %call.i65, align 4
  %xfer_ack = getelementptr inbounds %struct.cros_ec_rpmsg, ptr %call.i65, i32 0, i32 1
  %13 = ptrtoint ptr %xfer_ack to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %xfer_ack, align 4
  %wait.i = getelementptr inbounds %struct.cros_ec_rpmsg, ptr %call.i65, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @init_completion.__key) #6
  %host_event_work = getelementptr inbounds %struct.cros_ec_rpmsg, ptr %call.i65, i32 0, i32 2
  tail call void @__init_work(ptr noundef %host_event_work, i32 noundef 0) #6
  %14 = ptrtoint ptr %host_event_work to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %host_event_work, align 4
  %lockdep_map = getelementptr inbounds %struct.cros_ec_rpmsg, ptr %call.i65, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @cros_ec_rpmsg_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry13 = getelementptr inbounds %struct.cros_ec_rpmsg, ptr %call.i65, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %entry13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry13, ptr %entry13, align 4
  %prev.i = getelementptr inbounds %struct.cros_ec_rpmsg, ptr %call.i65, i32 0, i32 2, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry13, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.cros_ec_rpmsg, ptr %call.i65, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @cros_ec_rpmsg_host_event_function, ptr %func, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %chinfo.i) #6
  %18 = call ptr @memset(ptr %chinfo.i, i32 0, i32 40)
  %id.i = getelementptr inbounds %struct.rpmsg_device, ptr %rpdev, i32 0, i32 1
  %call.i66 = call i32 @strscpy(ptr noundef nonnull %chinfo.i, ptr noundef %id.i, i32 noundef 32) #6
  %src.i = getelementptr inbounds %struct.rpmsg_device, ptr %rpdev, i32 0, i32 3
  %19 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %src.i, align 8
  %src3.i = getelementptr inbounds %struct.rpmsg_channel_info, ptr %chinfo.i, i32 0, i32 1
  %21 = ptrtoint ptr %src3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %src3.i, align 4
  %dst.i = getelementptr inbounds %struct.rpmsg_channel_info, ptr %chinfo.i, i32 0, i32 2
  %22 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %dst.i, align 4
  %23 = ptrtoint ptr %chinfo.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.fca.0.load.i = load i32, ptr %chinfo.i, align 4
  %.fca.0.insert.i = insertvalue [10 x i32] poison, i32 %.fca.0.load.i, 0
  %.fca.1.gep.i = getelementptr inbounds [10 x i32], ptr %chinfo.i, i32 0, i32 1
  %24 = ptrtoint ptr %.fca.1.gep.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.fca.1.load.i = load i32, ptr %.fca.1.gep.i, align 4
  %.fca.1.insert.i = insertvalue [10 x i32] %.fca.0.insert.i, i32 %.fca.1.load.i, 1
  %.fca.2.gep.i = getelementptr inbounds [10 x i32], ptr %chinfo.i, i32 0, i32 2
  %25 = ptrtoint ptr %.fca.2.gep.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.fca.2.load.i = load i32, ptr %.fca.2.gep.i, align 4
  %.fca.2.insert.i = insertvalue [10 x i32] %.fca.1.insert.i, i32 %.fca.2.load.i, 2
  %.fca.3.gep.i = getelementptr inbounds [10 x i32], ptr %chinfo.i, i32 0, i32 3
  %26 = ptrtoint ptr %.fca.3.gep.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.fca.3.load.i = load i32, ptr %.fca.3.gep.i, align 4
  %.fca.3.insert.i = insertvalue [10 x i32] %.fca.2.insert.i, i32 %.fca.3.load.i, 3
  %.fca.4.gep.i = getelementptr inbounds [10 x i32], ptr %chinfo.i, i32 0, i32 4
  %27 = ptrtoint ptr %.fca.4.gep.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.fca.4.load.i = load i32, ptr %.fca.4.gep.i, align 4
  %.fca.4.insert.i = insertvalue [10 x i32] %.fca.3.insert.i, i32 %.fca.4.load.i, 4
  %.fca.5.gep.i = getelementptr inbounds [10 x i32], ptr %chinfo.i, i32 0, i32 5
  %28 = ptrtoint ptr %.fca.5.gep.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.fca.5.load.i = load i32, ptr %.fca.5.gep.i, align 4
  %.fca.5.insert.i = insertvalue [10 x i32] %.fca.4.insert.i, i32 %.fca.5.load.i, 5
  %.fca.6.gep.i = getelementptr inbounds [10 x i32], ptr %chinfo.i, i32 0, i32 6
  %29 = ptrtoint ptr %.fca.6.gep.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.fca.6.load.i = load i32, ptr %.fca.6.gep.i, align 4
  %.fca.6.insert.i = insertvalue [10 x i32] %.fca.5.insert.i, i32 %.fca.6.load.i, 6
  %.fca.7.gep.i = getelementptr inbounds [10 x i32], ptr %chinfo.i, i32 0, i32 7
  %30 = ptrtoint ptr %.fca.7.gep.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.fca.7.load.i = load i32, ptr %.fca.7.gep.i, align 4
  %.fca.7.insert.i = insertvalue [10 x i32] %.fca.6.insert.i, i32 %.fca.7.load.i, 7
  %.fca.8.insert.i = insertvalue [10 x i32] %.fca.7.insert.i, i32 %20, 8
  %.fca.9.insert.i = insertvalue [10 x i32] %.fca.8.insert.i, i32 -1, 9
  %call4.i = call ptr @rpmsg_create_ept(ptr noundef %rpdev, ptr noundef nonnull @cros_ec_rpmsg_callback, ptr noundef null, [10 x i32] %.fca.9.insert.i) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %chinfo.i) #6
  %ept = getelementptr inbounds %struct.cros_ec_rpmsg, ptr %call.i65, i32 0, i32 3
  %31 = ptrtoint ptr %ept to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call4.i, ptr %ept, align 4
  %tobool17.not = icmp eq ptr %call4.i, null
  br i1 %tobool17.not, label %dev_name.exit.cleanup_crit_edge, label %if.end19

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %dev_name.exit
  %call20 = call i32 @cros_ec_register(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %if.then21, label %if.end25

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ept, align 4
  call void @rpmsg_destroy_ept(ptr noundef %33) #6
  %call24 = call zeroext i1 @cancel_work_sync(ptr noundef %host_event_work) #6
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  %probe_done = getelementptr inbounds %struct.cros_ec_rpmsg, ptr %call.i65, i32 0, i32 5
  %34 = ptrtoint ptr %probe_done to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %probe_done, align 1
  %has_pending_host_event = getelementptr inbounds %struct.cros_ec_rpmsg, ptr %call.i65, i32 0, i32 4
  %35 = ptrtoint ptr %has_pending_host_event to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %has_pending_host_event, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool26.not = icmp eq i8 %36, 0
  br i1 %tobool26.not, label %if.end25.cleanup_crit_edge, label %if.then27

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %37 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %37, ptr noundef %host_event_work) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end25.cleanup_crit_edge, %if.then21, %dev_name.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.then21 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %dev_name.exit.cleanup_crit_edge ], [ 0, %if.then27 ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cros_ec_rpmsg_remove(ptr nocapture noundef readonly %rpdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %rpdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv = getelementptr inbounds %struct.cros_ec_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %call1 = tail call i32 @cros_ec_unregister(ptr noundef %1) #6
  %ept = getelementptr inbounds %struct.cros_ec_rpmsg, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ept, align 4
  tail call void @rpmsg_destroy_ept(ptr noundef %5) #6
  %host_event_work = getelementptr inbounds %struct.cros_ec_rpmsg, ptr %3, i32 0, i32 2
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %host_event_work) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_rpmsg_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @cros_ec_suspend(ptr noundef %1) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_rpmsg_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @cros_ec_resume(ptr noundef %1) #6
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cros_ec_cmd_xfer_rpmsg(ptr nocapture noundef readnone %ec_dev, ptr nocapture noundef readnone %ec_msg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_pkt_xfer_rpmsg(ptr noundef %ec_dev, ptr noundef %ec_msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %result = getelementptr inbounds %struct.cros_ec_command, ptr %ec_msg, i32 0, i32 4
  %2 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %result, align 4
  %call = tail call i32 @cros_ec_prepare_tx(ptr noundef %ec_dev, ptr noundef %ec_msg) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_ec_pkt_xfer_rpmsg.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_ec_pkt_xfer_rpmsg, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !70

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_ec_pkt_xfer_rpmsg.__UNIQUE_ID_ddebug227, ptr noundef %4, ptr noundef nonnull @.str.5, i32 noundef %call) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %xfer_ack = getelementptr inbounds %struct.cros_ec_rpmsg, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %xfer_ack to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %xfer_ack, align 4
  %ept = getelementptr inbounds %struct.cros_ec_rpmsg, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ept, align 4
  %dout = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 12
  %8 = ptrtoint ptr %dout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dout, align 8
  %call4 = tail call i32 @rpmsg_send(ptr noundef %7, ptr noundef %9, i32 noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end11, label %do.end9

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev10 = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %10 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %call14 = tail call i32 @wait_for_completion_timeout(ptr noundef %xfer_ack, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %dev20 = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %12 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  %din = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 11
  %14 = ptrtoint ptr %din to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %din, align 4
  %result22 = getelementptr inbounds %struct.ec_host_response, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %result22 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %result22, align 1
  %conv = zext i16 %17 to i32
  %18 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv, ptr %result, align 4
  %call24 = tail call i32 @cros_ec_check_result(ptr noundef %ec_dev, ptr noundef %ec_msg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end21.exit_crit_edge

if.end21.exit_crit_edge:                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end27:                                         ; preds = %if.end21
  %data_len = getelementptr inbounds %struct.ec_host_response, ptr %15, i32 0, i32 3
  %19 = ptrtoint ptr %data_len to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %data_len, align 1
  %conv28 = zext i16 %20 to i32
  %insize = getelementptr inbounds %struct.cros_ec_command, ptr %ec_msg, i32 0, i32 3
  %21 = ptrtoint ptr %insize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %insize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv28)
  %cmp = icmp ult i32 %22, %conv28
  br i1 %cmp, label %do.end33, label %if.end38

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %dev34 = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %23 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.13, i32 noundef %conv28, i32 noundef %22) #9
  br label %exit

if.end38:                                         ; preds = %if.end27
  %data = getelementptr inbounds %struct.cros_ec_command, ptr %ec_msg, i32 0, i32 5
  %25 = ptrtoint ptr %din to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %din, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 8
  %27 = call ptr @memcpy(ptr %data, ptr %add.ptr, i32 %conv28)
  %28 = ptrtoint ptr %data_len to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %data_len, align 1
  %conv43 = zext i16 %29 to i32
  %30 = load ptr, ptr %din, align 4
  %31 = add nuw nsw i32 %conv43, 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end38
  %i.0107 = phi i32 [ 0, %if.end38 ], [ %inc, %for.body.for.body_crit_edge ]
  %sum.0106 = phi i8 [ 0, %if.end38 ], [ %add49, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %30, i32 %i.0107
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx, align 1
  %add49 = add i8 %33, %sum.0106
  %inc = add nuw nsw i32 %i.0107, 1
  %exitcond.not = icmp eq i32 %i.0107, %31
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add49)
  %tobool51.not = icmp eq i8 %add49, 0
  br i1 %tobool51.not, label %for.end.exit_crit_edge, label %do.end55

for.end.exit_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

do.end55:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev56 = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %34 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev56, align 4
  %conv57 = zext i8 %add49 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.16, i32 noundef %conv57) #9
  br label %exit

exit:                                             ; preds = %do.end55, %for.end.exit_crit_edge, %do.end33, %if.end21.exit_crit_edge
  %ret.0 = phi i32 [ %call24, %if.end21.exit_crit_edge ], [ -90, %do.end33 ], [ -74, %do.end55 ], [ %conv43, %for.end.exit_crit_edge ]
  %command = getelementptr inbounds %struct.cros_ec_command, ptr %ec_msg, i32 0, i32 1
  %36 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %command, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 210, i32 %37)
  %cmp61 = icmp eq i32 %37, 210
  br i1 %cmp61, label %if.then63, label %exit.cleanup_crit_edge

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then63:                                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 50) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %exit.cleanup_crit_edge, %do.end19, %do.end9
  %retval.0 = phi i32 [ %call4, %do.end9 ], [ -5, %do.end19 ], [ %ret.0, %if.then63 ], [ %ret.0, %exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cros_ec_rpmsg_host_event_function(ptr nocapture noundef readonly %host_event_work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %host_event_work, i32 -60
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @cros_ec_irq_thread(i32 noundef 0, ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpmsg_destroy_ept(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_prepare_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_check_result(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_irq_thread(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpmsg_create_ept(ptr noundef, ptr noundef, ptr noundef, [10 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_rpmsg_callback(ptr nocapture noundef readonly %rpdev, ptr nocapture noundef readonly %data, i32 noundef %len, ptr nocapture noundef readnone %priv, i32 noundef %src) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %rpdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv1 = getelementptr inbounds %struct.cros_ec_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev2 = getelementptr inbounds %struct.cros_ec_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.19) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %len, -4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data, align 4
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %do.end29 [
    i8 1, label %if.then4
    i8 2, label %if.then20
  ]

if.then4:                                         ; preds = %if.end
  %din_size = getelementptr inbounds %struct.cros_ec_device, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %din_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %din_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %10)
  %cmp5 = icmp sgt i32 %sub, %10
  br i1 %cmp5, label %do.end10, label %if.then4.if.end14_crit_edge

if.then4.if.end14_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

do.end10:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %dev11 = getelementptr inbounds %struct.cros_ec_device, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.23, i32 noundef %sub, i32 noundef %10) #9
  %13 = ptrtoint ptr %din_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %din_size, align 4
  br label %if.end14

if.end14:                                         ; preds = %do.end10, %if.then4.if.end14_crit_edge
  %len.addr.0 = phi i32 [ %14, %do.end10 ], [ %sub, %if.then4.if.end14_crit_edge ]
  %din = getelementptr inbounds %struct.cros_ec_device, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %din to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %din, align 4
  %data15 = getelementptr inbounds %struct.cros_ec_rpmsg_response, ptr %data, i32 0, i32 2
  %17 = call ptr @memcpy(ptr %16, ptr %data15, i32 %len.addr.0)
  %xfer_ack = getelementptr inbounds %struct.cros_ec_rpmsg, ptr %3, i32 0, i32 1
  tail call void @complete(ptr noundef %xfer_ack) #6
  br label %cleanup

if.then20:                                        ; preds = %if.end
  %probe_done = getelementptr inbounds %struct.cros_ec_rpmsg, ptr %3, i32 0, i32 5
  %18 = ptrtoint ptr %probe_done to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %probe_done, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool21.not = icmp eq i8 %19, 0
  br i1 %tobool21.not, label %if.else24, label %if.then22

if.then22:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %host_event_work = getelementptr inbounds %struct.cros_ec_rpmsg, ptr %3, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %20 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %host_event_work) #6
  br label %cleanup

if.else24:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %has_pending_host_event = getelementptr inbounds %struct.cros_ec_rpmsg, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %has_pending_host_event to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %has_pending_host_event, align 4
  br label %cleanup

do.end29:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %7 to i32
  %dev30 = getelementptr inbounds %struct.cros_ec_device, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev30, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.26, i32 noundef %conv) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %if.else24, %if.then22, %if.end14, %do.end
  %retval.0 = phi i32 [ -22, %do.end29 ], [ -22, %do.end ], [ 0, %if.else24 ], [ 0, %if.then22 ], [ 0, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_unregister(ptr noundef) local_unnamed_addr #1

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !48, !49, !50, !51, !52, !54, !55, !56, !58, !59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__initcall__kmod_cros_ec_rpmsg__228_304_cros_ec_driver_rpmsg_init6, !1, !"__initcall__kmod_cros_ec_rpmsg__228_304_cros_ec_driver_rpmsg_init6", i1 false, i1 false}
!1 = !{!"../drivers/platform/chrome/cros_ec_rpmsg.c", i32 304, i32 1}
!2 = !{ptr @__exitcall_cros_ec_driver_rpmsg_exit, !1, !"__exitcall_cros_ec_driver_rpmsg_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file229, !4, !"__UNIQUE_ID_file229", i1 false, i1 false}
!4 = !{!"../drivers/platform/chrome/cros_ec_rpmsg.c", i32 306, i32 1}
!5 = !{ptr @__UNIQUE_ID_license230, !4, !"__UNIQUE_ID_license230", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description231, !7, !"__UNIQUE_ID_description231", i1 false, i1 false}
!7 = !{!"../drivers/platform/chrome/cros_ec_rpmsg.c", i32 307, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/platform/chrome/cros_ec_rpmsg.c", i32 296, i32 13}
!10 = !{ptr @cros_ec_driver_rpmsg, !11, !"cros_ec_driver_rpmsg", i1 false, i1 false}
!11 = !{!"../drivers/platform/chrome/cros_ec_rpmsg.c", i32 294, i32 28}
!12 = !{ptr @cros_ec_rpmsg_of_match, !13, !"cros_ec_rpmsg_of_match", i1 false, i1 false}
!13 = !{!"../drivers/platform/chrome/cros_ec_rpmsg.c", i32 288, i32 34}
!14 = !{ptr @cros_ec_rpmsg_pm_ops, !15, !"cros_ec_rpmsg_pm_ops", i1 false, i1 false}
!15 = !{!"../drivers/platform/chrome/cros_ec_rpmsg.c", i32 285, i32 8}
!16 = !{ptr @cros_ec_rpmsg_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/platform/chrome/cros_ec_rpmsg.c", i32 237, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/platform/chrome/cros_ec_rpmsg.c", i32 92, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @cros_ec_pkt_xfer_rpmsg.__UNIQUE_ID_ddebug227, !20, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/platform/chrome/cros_ec_rpmsg.c", i32 97, i32 3}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @cros_ec_pkt_xfer_rpmsg._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @cros_ec_pkt_xfer_rpmsg._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/platform/chrome/cros_ec_rpmsg.c", i32 104, i32 3}
!33 = !{ptr @cros_ec_pkt_xfer_rpmsg._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @cros_ec_pkt_xfer_rpmsg._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/platform/chrome/cros_ec_rpmsg.c", i32 117, i32 3}
!37 = !{ptr @cros_ec_pkt_xfer_rpmsg._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @cros_ec_pkt_xfer_rpmsg._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/platform/chrome/cros_ec_rpmsg.c", i32 132, i32 3}
!41 = !{ptr @cros_ec_pkt_xfer_rpmsg._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @cros_ec_pkt_xfer_rpmsg._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @init_completion.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../include/linux/completion.h", i32 87, i32 2}
!45 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/platform/chrome/cros_ec_rpmsg.c", i32 164, i32 3}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @cros_ec_rpmsg_callback._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @cros_ec_rpmsg_callback._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/platform/chrome/cros_ec_rpmsg.c", i32 172, i32 4}
!54 = !{ptr @cros_ec_rpmsg_callback._entry.22, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @cros_ec_rpmsg_callback._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/platform/chrome/cros_ec_rpmsg.c", i32 190, i32 3}
!58 = !{ptr @cros_ec_rpmsg_callback._entry.25, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @cros_ec_rpmsg_callback._entry_ptr.27, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i8 0, i8 2}
!70 = !{i64 2148321685, i64 2148321690, i64 2148321703, i64 2148321747, i64 2148321781, i64 2148321802}
