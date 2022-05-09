; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-u2fzero.c_pt.bc'
source_filename = "../drivers/hid/hid-u2fzero.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hw_revision_config = type { i8, i8, ptr }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.u2fzero_device = type { ptr, ptr, %struct.led_classdev, %struct.hwrng, ptr, ptr, ptr, ptr, %struct.mutex, i8, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.usbhid_device = type { ptr, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, [256 x %struct.hid_control_fifo], i8, i8, ptr, i32, i32, ptr, [256 x %struct.hid_output_fifo], i8, i8, ptr, i32, i32, %struct.mutex, %struct.spinlock, i32, %struct.timer_list, i32, i32, %struct.work_struct, %struct.wait_queue_head }
%struct.hid_control_fifo = type { i8, ptr, ptr }
%struct.hid_output_fifo = type { ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.u2fzero_transfer_context = type { %struct.completion, i32 }
%struct.u2f_hid_msg = type { i32, %union.anon.69 }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { i8, i8, i8, [57 x i8] }

@__initcall__kmod_hid_u2fzero__237_401_u2fzero_driver_init6 = internal global ptr @u2fzero_driver_init, section ".initcall6.init", align 4
@u2fzero_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @u2fzero_table, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @u2fzero_probe, ptr @u2fzero_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_u2fzero_driver_exit = internal global ptr @u2fzero_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file238 = internal constant [41 x i8] c"hid_u2fzero.file=drivers/hid/hid-u2fzero\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [24 x i8] c"hid_u2fzero.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [54 x i8] c"hid_u2fzero.author=Andrej Shadura <andrew@shadura.me>\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [52 x i8] c"hid_u2fzero.description=U2F Zero LED and RNG driver\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hid_u2fzero\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hid-u2fzero\00", [20 x i8] zeroinitializer }, align 32
@u2fzero_table = internal constant { [3 x %struct.hid_device_id], [48 x i8] } { [3 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 4292, i32 35535, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 8352, i32 17031, i32 1 }, %struct.hid_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@u2fzero_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@u2fzero_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 357, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s LED initialised\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"u2fzero_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/hid/hid-u2fzero.c\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@u2fzero_probe._entry_ptr = internal global ptr @u2fzero_probe._entry, section ".printk_index", align 4
@hw_configs = internal constant { [2 x %struct.hw_revision_config], [16 x i8] } { [2 x %struct.hw_revision_config] [%struct.hw_revision_config { i8 33, i8 36, ptr @.str.13 }, %struct.hw_revision_config { i8 -64, i8 -62, ptr @.str.14 }], [16 x i8] zeroinitializer }, align 32
@u2fzero_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 365, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s RNG initialised\0A\00", [44 x i8] zeroinitializer }, align 32
@u2fzero_probe._entry_ptr.10 = internal global ptr @u2fzero_probe._entry.8, section ".printk_index", align 4
@usb_hid_driver = external dso_local global %struct.hid_ll_driver, align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%u\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"u2fzero\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"U2F Zero\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"NitroKey U2F\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-rng%u\00", [23 x i8] zeroinitializer }, align 32
@u2fzero_rng_read.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.5, ptr @.str.17, i8 0, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"u2fzero_rng_read\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"device not present\00", [45 x i8] zeroinitializer }, align 32
@u2fzero_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.5, i32 142, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"usb_submit_urb failed: %d\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"u2fzero_recv\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@u2fzero_recv._entry_ptr = internal global ptr @u2fzero_recv._entry, section ".printk_index", align 4
@u2fzero_recv._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.5, i32 150, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hid_hw_output_report failed: %d\00", [32 x i8] zeroinitializer }, align 32
@u2fzero_recv._entry_ptr.23 = internal global ptr @u2fzero_recv._entry.21, section ".printk_index", align 4
@u2fzero_recv._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.19, ptr @.str.5, i32 158, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"urb submission timed out\00", [39 x i8] zeroinitializer }, align 32
@u2fzero_recv._entry_ptr.26 = internal global ptr @u2fzero_recv._entry.24, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"u2fzero_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 394, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 401, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 395, i32 10 }
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"u2fzero_table\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 383, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 339, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 357, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [11 x i8] c"hw_configs\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 40, i32 40 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 365, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 242, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 242, i32 11 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 44, i32 11 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 49, i32 11 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 258, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 219, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 142, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 150, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.116 = private constant [29 x i8] c"../drivers/hid/hid-u2fzero.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 158, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 87, i32 2 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_u2fzero_driver_exit, ptr @__initcall__kmod_hid_u2fzero__237_401_u2fzero_driver_init6, ptr @u2fzero_driver_exit, ptr @u2fzero_probe._entry, ptr @u2fzero_probe._entry.8, ptr @u2fzero_probe._entry_ptr, ptr @u2fzero_probe._entry_ptr.10, ptr @u2fzero_recv._entry, ptr @u2fzero_recv._entry.21, ptr @u2fzero_recv._entry.24, ptr @u2fzero_recv._entry_ptr, ptr @u2fzero_recv._entry_ptr.23, ptr @u2fzero_recv._entry_ptr.26, ptr @u2fzero_driver, ptr @.str, ptr @.str.1, ptr @u2fzero_table, ptr @u2fzero_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @hw_configs, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @init_completion.__key, ptr @.str.27], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u2fzero_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u2fzero_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u2fzero_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u2fzero_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_configs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u2fzero_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u2fzero_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u2fzero_recv._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u2fzero_recv._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @u2fzero_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @u2fzero_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @u2fzero_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @hid_unregister_driver(ptr noundef nonnull @u2fzero_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u2fzero_probe(ptr noundef %hdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ll_driver.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 20
  %0 = ptrtoint ptr %ll_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ll_driver.i.i, align 4
  %cmp.i.i = icmp eq ptr %1, @usb_hid_driver
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 624, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %driver_data = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 4
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %hw_revision = getelementptr inbounds %struct.u2fzero_device, ptr %call.i, i32 0, i32 10
  %4 = ptrtoint ptr %hw_revision to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %hw_revision, align 4
  %call6 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 65, i32 noundef 3264) #6
  %buf_out = getelementptr inbounds %struct.u2fzero_device, ptr %call.i, i32 0, i32 6
  %5 = ptrtoint ptr %buf_out to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call6, ptr %buf_out, align 4
  %cmp8 = icmp eq ptr %call6, null
  br i1 %cmp8, label %if.end4.cleanup_crit_edge, label %if.end10

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %call12 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 64, i32 noundef 3264) #6
  %buf_in = getelementptr inbounds %struct.u2fzero_device, ptr %call.i, i32 0, i32 7
  %6 = ptrtoint ptr %buf_in to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call12, ptr %buf_in, align 4
  %cmp14 = icmp eq ptr %call12, null
  br i1 %cmp14, label %if.end10.cleanup_crit_edge, label %if.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %call.i83 = tail call i32 @hid_open_report(ptr noundef %hdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool.not = icmp eq i32 %call.i83, 0
  br i1 %tobool.not, label %if.end19, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %hdev, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.u2fzero_device, ptr %call.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @u2fzero_probe.__key) #6
  %call21 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  tail call fastcc void @u2fzero_fill_in_urb(ptr noundef nonnull %call.i)
  %present = getelementptr inbounds %struct.u2fzero_device, ptr %call.i, i32 0, i32 9
  %9 = ptrtoint ptr %present to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %present, align 4
  %hidraw = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 38
  %10 = ptrtoint ptr %hidraw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hidraw, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %call27 = tail call fastcc i32 @u2fzero_init_led(ptr noundef nonnull %call.i, i32 noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.end33, label %if.then29

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @hid_hw_stop(ptr noundef %hdev) #6
  br label %cleanup

do.end33:                                         ; preds = %if.end24
  %14 = ptrtoint ptr %hw_revision to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hw_revision, align 4
  %name = getelementptr [2 x %struct.hw_revision_config], ptr @hw_configs, i32 0, i32 %15, i32 2
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef %17) #9
  %call36 = tail call fastcc i32 @u2fzero_init_hwrng(ptr noundef nonnull %call.i, i32 noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %do.end42, label %if.then38

if.then38:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @hid_hw_stop(ptr noundef %hdev) #6
  br label %cleanup

do.end42:                                         ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %hw_revision to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hw_revision, align 4
  %name46 = getelementptr [2 x %struct.hw_revision_config], ptr @hw_configs, i32 0, i32 %19, i32 2
  %20 = ptrtoint ptr %name46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name46, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.9, ptr noundef %21) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %if.then38, %if.then29, %if.end19.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %if.then29 ], [ %call36, %if.then38 ], [ 0, %do.end42 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ %call.i83, %if.end16.cleanup_crit_edge ], [ %call21, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @u2fzero_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.u2fzero_device, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %present = getelementptr inbounds %struct.u2fzero_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %present to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %present, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #6
  tail call void @hid_hw_stop(ptr noundef %hdev) #6
  %urb = getelementptr inbounds %struct.u2fzero_device, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %urb, align 4
  tail call void @usb_poison_urb(ptr noundef %4) #6
  %5 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %urb, align 4
  tail call void @usb_free_urb(ptr noundef %6) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u2fzero_fill_in_urb(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data, align 8
  %bus = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bus, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %5)
  %cmp.not = icmp eq i16 %5, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %parent5 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %parent5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent5, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 -128
  %urbout = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 15
  %10 = ptrtoint ptr %urbout to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %urbout, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %urbin = getelementptr inbounds %struct.usbhid_device, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %urbin to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %urbin, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %pipe = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pipe, align 4
  %and.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i.v = select i1 %tobool.not.i, i32 1024, i32 960
  %cond.i = getelementptr i8, ptr %9, i32 %cond.i.v
  %shr.i = lshr i32 %15, 15
  %and2.i = and i32 %shr.i, 15
  %arrayidx.i = getelementptr ptr, ptr %cond.i, i32 %and2.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %tobool10.not = icmp eq ptr %17, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #6
  %urb = getelementptr inbounds %struct.u2fzero_device, ptr %dev, i32 0, i32 1
  %18 = ptrtoint ptr %urb to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call13, ptr %urb, align 4
  %tobool15.not = icmp eq ptr %call13, null
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %19 = ptrtoint ptr %urbin to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %urbin, align 4
  %pipe19 = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %pipe19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pipe19, align 4
  %and = and i32 %22, 1073741823
  %or = or i32 %and, 1073741824
  %buf_in = getelementptr inbounds %struct.u2fzero_device, ptr %dev, i32 0, i32 7
  %23 = ptrtoint ptr %buf_in to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buf_in, align 4
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %17, i32 0, i32 5
  %25 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bInterval, align 2
  %conv21 = zext i8 %26 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call13, i32 0, i32 8
  %27 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call13, i32 0, i32 10
  %28 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call13, i32 0, i32 14
  %29 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %24, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call13, i32 0, i32 19
  %30 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 64, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call13, i32 0, i32 28
  %31 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @u2fzero_read_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call13, i32 0, i32 27
  %32 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %context4.i, align 4
  %speed.i = getelementptr i8, ptr %9, i32 -100
  %33 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp.i = icmp eq i32 %34, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp6.i = icmp ugt i32 %34, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %if.end17.usb_fill_int_urb.exit_crit_edge

if.end17.usb_fill_int_urb.exit_crit_edge:         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %35 = tail call i32 @llvm.smax.i32(i32 %conv21, i32 1) #6
  %36 = tail call i32 @llvm.umin.i32(i32 %35, i32 16) #6
  %sub.i = add nsw i32 %36, -1
  %shl.i = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %if.end17.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i, %if.then.i ], [ %conv21, %if.end17.usb_fill_int_urb.exit_crit_edge ]
  %37 = getelementptr inbounds %struct.urb, ptr %call13, i32 0, i32 25
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %interval.sink.i, ptr %37, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %call13, i32 0, i32 23
  %39 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %start_frame.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %usb_fill_int_urb.exit, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u2fzero_init_led(ptr noundef %dev, i32 noundef %minor) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  %call = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %minor) #6
  %led_name = getelementptr inbounds %struct.u2fzero_device, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %led_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %led_name, align 4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ldev = getelementptr inbounds %struct.u2fzero_device, ptr %dev, i32 0, i32 2
  %3 = ptrtoint ptr %ldev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %ldev, align 4
  %max_brightness = getelementptr inbounds %struct.u2fzero_device, ptr %dev, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %max_brightness, align 4
  %flags = getelementptr inbounds %struct.u2fzero_device, ptr %dev, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 524288, ptr %flags, align 4
  %brightness_set_blocking = getelementptr inbounds %struct.u2fzero_device, ptr %dev, i32 0, i32 2, i32 6
  %6 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @u2fzero_brightness_set, ptr %brightness_set_blocking, align 4
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %dev8 = getelementptr inbounds %struct.hid_device, ptr %8, i32 0, i32 18
  %call.i = tail call i32 @devm_led_classdev_register_ext(ptr noundef %dev8, ptr noundef %ldev, ptr noundef null) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u2fzero_init_hwrng(ptr noundef %dev, i32 noundef %minor) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  %call = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12, i32 noundef %minor) #6
  %rng_name = getelementptr inbounds %struct.u2fzero_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %rng_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %rng_name, align 4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hwrng = getelementptr inbounds %struct.u2fzero_device, ptr %dev, i32 0, i32 3
  %3 = ptrtoint ptr %hwrng to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %hwrng, align 4
  %read = getelementptr inbounds %struct.u2fzero_device, ptr %dev, i32 0, i32 3, i32 5
  %4 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @u2fzero_rng_read, ptr %read, align 4
  %quality = getelementptr inbounds %struct.u2fzero_device, ptr %dev, i32 0, i32 3, i32 7
  %5 = ptrtoint ptr %quality to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %quality, align 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev7 = getelementptr inbounds %struct.hid_device, ptr %7, i32 0, i32 18
  %call9 = tail call i32 @devm_hwrng_register(ptr noundef %dev7, ptr noundef %hwrng) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @u2fzero_read_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %status1 = getelementptr inbounds %struct.u2fzero_transfer_context, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %status1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %status1, align 4
  tail call void @complete(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u2fzero_brightness_set(ptr noundef %ldev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %brightness1 = getelementptr inbounds %struct.led_classdev, ptr %ldev, i32 0, i32 1
  %0 = ptrtoint ptr %brightness1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %brightness1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %tobool.not = icmp eq i32 %brightness, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %ldev, i32 -8
  %hw_revision.i = getelementptr i8, ptr %ldev, i32 612
  %1 = ptrtoint ptr %hw_revision.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hw_revision.i, align 4
  %wink_cmd.i = getelementptr [2 x %struct.hw_revision_config], ptr @hw_configs, i32 0, i32 %2, i32 1
  %3 = ptrtoint ptr %wink_cmd.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %wink_cmd.i, align 1
  %lock.i.i = getelementptr i8, ptr %ldev, i32 516
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #6
  %buf_out.i.i = getelementptr i8, ptr %ldev, i32 508
  %5 = ptrtoint ptr %buf_out.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf_out.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %6, align 1
  %req.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %6, i32 1
  %8 = ptrtoint ptr %req.sroa.5.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 -1, ptr %req.sroa.5.0..sroa_idx.i, align 1
  %req.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %6, i32 5
  %9 = ptrtoint ptr %req.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %4, ptr %req.sroa.6.0..sroa_idx.i, align 1
  %req.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %6, i32 6
  %10 = call ptr @memset(ptr %req.sroa.7.0..sroa_idx.i, i32 0, i32 59)
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 4
  %13 = load ptr, ptr %buf_out.i.i, align 4
  %call.i.i = tail call i32 @hid_hw_output_report(ptr noundef %12, ptr noundef %13, i32 noundef 64) #6
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call.i.i)
  %cmp3.i.i = icmp eq i32 %call.i.i, 64
  %cond.i.i = select i1 %cmp3.i.i, i32 0, i32 -90
  %retval.0.i.i = select i1 %cmp.i.i, i32 %call.i.i, i32 %cond.i.i
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_output_report(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u2fzero_rng_read(ptr noundef %rng, ptr nocapture noundef writeonly %data, i32 noundef %max, i1 noundef zeroext %wait) #2 align 64 {
entry:
  %ctx.i = alloca %struct.u2fzero_transfer_context, align 4
  %resp = alloca %struct.u2f_hid_msg, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rng, i32 -408
  %hw_revision = getelementptr i8, ptr %rng, i32 212
  %0 = ptrtoint ptr %hw_revision to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_revision, align 4
  %arrayidx = getelementptr [2 x %struct.hw_revision_config], ptr @hw_configs, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %resp)
  %4 = call ptr @memset(ptr %resp, i32 255, i32 64)
  %present = getelementptr i8, ptr %rng, i32 208
  %5 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %present, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @u2fzero_rng_read.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@u2fzero_rng_read, %if.then7)) #6
          to label %cleanup [label %if.then7], !srcloc !75

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %dev8 = getelementptr inbounds %struct.hid_device, ptr %8, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @u2fzero_rng_read.__UNIQUE_ID_ddebug232, ptr noundef %dev8, ptr noundef nonnull @.str.17) #6
  br label %cleanup

if.end9:                                          ; preds = %entry
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %ctx.i) #6
  %11 = getelementptr inbounds i8, ptr %ctx.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 255, i32 56)
  %lock.i = getelementptr i8, ptr %rng, i32 116
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %buf_out.i = getelementptr i8, ptr %rng, i32 108
  %13 = ptrtoint ptr %buf_out.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf_out.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %14, align 1
  %req.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %14, i32 1
  %16 = ptrtoint ptr %req.sroa.5.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 -1, ptr %req.sroa.5.0..sroa_idx, align 1
  %req.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %14, i32 5
  %17 = ptrtoint ptr %req.sroa.6.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %3, ptr %req.sroa.6.0..sroa_idx, align 1
  %req.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %14, i32 6
  %18 = call ptr @memset(ptr %req.sroa.7.0..sroa_idx, i32 0, i32 59)
  %urb.i = getelementptr i8, ptr %rng, i32 -404
  %19 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %urb.i, align 4
  %context.i = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %ctx.i, ptr %context.i, align 4
  %22 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %ctx.i, align 4
  call void @__init_swait_queue_head(ptr noundef %11, ptr noundef nonnull @.str.27, ptr noundef nonnull @init_completion.__key) #6
  %23 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %urb.i, align 4
  %call.i = call i32 @usb_submit_urb(ptr noundef %24, i32 noundef 3072) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i, !prof !76

do.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %dev5.i = getelementptr inbounds %struct.hid_device, ptr %10, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i, ptr noundef nonnull @.str.18, i32 noundef %call.i) #9
  br label %u2fzero_recv.exit

if.end.i:                                         ; preds = %if.end9
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr, align 4
  %27 = ptrtoint ptr %buf_out.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buf_out.i, align 4
  %call8.i = call i32 @hid_hw_output_report(ptr noundef %26, ptr noundef %28, i32 noundef 64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i = icmp slt i32 %call8.i, 0
  br i1 %cmp.i, label %do.end12.i, label %if.end14.i

do.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev13.i = getelementptr inbounds %struct.hid_device, ptr %10, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i, ptr noundef nonnull @.str.22, i32 noundef %call8.i) #9
  br label %u2fzero_recv.exit.thread

if.end14.i:                                       ; preds = %if.end.i
  %call17.i = call i32 @wait_for_completion_timeout(ptr noundef nonnull %ctx.i, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp eq i32 %call17.i, 0
  %29 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %urb.i, align 4
  br i1 %cmp18.i, label %if.then19.i, label %if.else.i

if.then19.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @usb_kill_urb(ptr noundef %30) #6
  %dev24.i = getelementptr inbounds %struct.hid_device, ptr %10, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24.i, ptr noundef nonnull @.str.25) #9
  br label %u2fzero_recv.exit.thread

if.else.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %actual_length.i = getelementptr inbounds %struct.urb, ptr %30, i32 0, i32 20
  %31 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %actual_length.i, align 4
  %buf_in.i = getelementptr i8, ptr %rng, i32 112
  %33 = ptrtoint ptr %buf_in.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buf_in.i, align 4
  %35 = call ptr @memcpy(ptr %resp, ptr %34, i32 %32)
  br label %u2fzero_recv.exit

u2fzero_recv.exit.thread:                         ; preds = %if.then19.i, %do.end12.i
  call void @mutex_unlock(ptr noundef %lock.i) #6
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %ctx.i) #6
  br label %cleanup

u2fzero_recv.exit:                                ; preds = %if.else.i, %do.end.i
  %ret.0.i = phi i32 [ %call.i, %do.end.i ], [ %32, %if.else.i ]
  call void @mutex_unlock(ptr noundef %lock.i) #6
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %ctx.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %ret.0.i)
  %cmp = icmp slt i32 %ret.0.i, 7
  br i1 %cmp, label %u2fzero_recv.exit.cleanup_crit_edge, label %if.end12

u2fzero_recv.exit.cleanup_crit_edge:              ; preds = %u2fzero_recv.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %u2fzero_recv.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add nsw i32 %ret.0.i, -7
  %resp.5.resp.5.bcnth.sroa_idx = getelementptr inbounds i8, ptr %resp, i32 5
  %36 = ptrtoint ptr %resp.5.resp.5.bcnth.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %36)
  %resp.5.resp.5. = load i8, ptr %resp.5.resp.5.bcnth.sroa_idx, align 1
  %conv = zext i8 %resp.5.resp.5. to i32
  %shl = shl nuw nsw i32 %conv, 8
  %resp.6.resp.6.bcntl.sroa_idx = getelementptr inbounds i8, ptr %resp, i32 6
  %37 = ptrtoint ptr %resp.6.resp.6.bcntl.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %37)
  %resp.6.resp.6. = load i8, ptr %resp.6.resp.6.bcntl.sroa_idx, align 1
  %conv13 = zext i8 %resp.6.resp.6. to i32
  %add = or i32 %shl, %conv13
  %38 = call i32 @llvm.umin.i32(i32 %sub, i32 %add)
  %39 = call i32 @llvm.umin.i32(i32 %38, i32 %max)
  %resp.7.resp.7.data24.sroa_idx = getelementptr inbounds i8, ptr %resp, i32 7
  %40 = call ptr @memcpy(ptr %data, ptr %resp.7.resp.7.data24.sroa_idx, i32 %39)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %u2fzero_recv.exit.cleanup_crit_edge, %u2fzero_recv.exit.thread, %if.then7, %do.body
  %retval.0 = phi i32 [ %39, %if.end12 ], [ 0, %if.then7 ], [ 0, %u2fzero_recv.exit.cleanup_crit_edge ], [ 0, %do.body ], [ 0, %u2fzero_recv.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %resp)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_hwrng_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_poison_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !17, !19, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !50, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_hid_u2fzero__237_401_u2fzero_driver_init6, !1, !"__initcall__kmod_hid_u2fzero__237_401_u2fzero_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-u2fzero.c", i32 401, i32 1}
!2 = !{ptr @__exitcall_u2fzero_driver_exit, !1, !"__exitcall_u2fzero_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file238, !4, !"__UNIQUE_ID_file238", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-u2fzero.c", i32 403, i32 1}
!5 = !{ptr @__UNIQUE_ID_license239, !4, !"__UNIQUE_ID_license239", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author240, !7, !"__UNIQUE_ID_author240", i1 false, i1 false}
!7 = !{!"../drivers/hid/hid-u2fzero.c", i32 404, i32 1}
!8 = !{ptr @__UNIQUE_ID_description241, !9, !"__UNIQUE_ID_description241", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-u2fzero.c", i32 405, i32 1}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-u2fzero.c", i32 395, i32 10}
!13 = !{ptr @u2fzero_driver, !14, !"u2fzero_driver", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-u2fzero.c", i32 394, i32 26}
!15 = !{ptr @u2fzero_table, !16, !"u2fzero_table", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-u2fzero.c", i32 383, i32 35}
!17 = !{ptr @u2fzero_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-u2fzero.c", i32 339, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/hid/hid-u2fzero.c", i32 357, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @u2fzero_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @u2fzero_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hid/hid-u2fzero.c", i32 365, i32 2}
!30 = !{ptr @u2fzero_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @u2fzero_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hid/hid-u2fzero.c", i32 242, i32 3}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hid/hid-u2fzero.c", i32 242, i32 11}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hid/hid-u2fzero.c", i32 44, i32 11}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hid/hid-u2fzero.c", i32 49, i32 11}
!40 = !{ptr @hw_configs, !41, !"hw_configs", i1 false, i1 false}
!41 = !{!"../drivers/hid/hid-u2fzero.c", i32 40, i32 40}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hid/hid-u2fzero.c", i32 258, i32 3}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hid/hid-u2fzero.c", i32 219, i32 3}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @u2fzero_rng_read.__UNIQUE_ID_ddebug232, !45, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hid/hid-u2fzero.c", i32 142, i32 3}
!50 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @u2fzero_recv._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @u2fzero_recv._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hid/hid-u2fzero.c", i32 150, i32 3}
!56 = !{ptr @u2fzero_recv._entry.21, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @u2fzero_recv._entry_ptr.23, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hid/hid-u2fzero.c", i32 158, i32 3}
!60 = !{ptr @u2fzero_recv._entry.24, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @u2fzero_recv._entry_ptr.26, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @init_completion.__key, !63, !"__key", i1 false, i1 false}
!63 = !{!"../include/linux/completion.h", i32 87, i32 2}
!64 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i8 0, i8 2}
!75 = !{i64 2148741546, i64 2148741551, i64 2148741564, i64 2148741608, i64 2148741642, i64 2148741663}
!76 = !{!"branch_weights", i32 2000, i32 1}
