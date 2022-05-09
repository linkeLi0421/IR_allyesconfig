; ModuleID = '/llk/IR_all_yes/drivers/usb/misc/chaoskey.c_pt.bc'
source_filename = "../drivers/usb/misc/chaoskey.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_class_driver = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.chaoskey = type { ptr, i8, %struct.mutex, %struct.mutex, i32, i8, i8, i8, i32, i32, i32, ptr, %struct.hwrng, i32, %struct.wait_queue_head, ptr, ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author232 = internal constant [49 x i8] c"chaoskey.author=Keith Packard, keithp@keithp.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [50 x i8] c"chaoskey.description=Altus Metrum ChaosKey driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [40 x i8] c"chaoskey.file=drivers/usb/misc/chaoskey\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [21 x i8] c"chaoskey.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_chaoskey__266_583_chaoskey_driver_init6 = internal global ptr @chaoskey_driver_init, section ".initcall6.init", align 4
@chaoskey_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @chaoskey_probe, ptr @chaoskey_disconnect, ptr null, ptr @chaoskey_suspend, ptr @chaoskey_resume, ptr @chaoskey_resume, ptr null, ptr null, ptr @chaoskey_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 64 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_chaoskey_driver_exit = internal global ptr @chaoskey_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"chaoskey\00", [23 x i8] zeroinitializer }, align 32
@chaoskey_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 7504, i16 24774, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4824, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@chaoskey_probe.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"chaoskey_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/misc/chaoskey.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"probe %s-%s\00", [20 x i8] zeroinitializer }, align 32
@chaoskey_probe.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no IN endpoint found\00", [43 x i8] zeroinitializer }, align 32
@chaoskey_probe.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalid size (%d)\00", [46 x i8] zeroinitializer }, align 32
@chaoskey_probe.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"size reduced from %d to %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%s\00", [26 x i8] zeroinitializer }, align 32
@chaoskey_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&dev->wait_q\00", [19 x i8] zeroinitializer }, align 32
@chaoskey_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@chaoskey_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dev->rng_lock\00", [17 x i8] zeroinitializer }, align 32
@chaoskey_class = internal global { %struct.usb_class_driver, [16 x i8] } { %struct.usb_class_driver { ptr @.str.22, ptr null, ptr @chaoskey_fops, i32 0 }, [16 x i8] zeroinitializer }, align 32
@chaoskey_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 197, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to allocate minor number.\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@chaoskey_probe._entry_ptr = internal global ptr @chaoskey_probe._entry, section ".printk_index", align 4
@chaoskey_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 207, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to register with hwrng\00", [34 x i8] zeroinitializer }, align 32
@chaoskey_probe._entry_ptr.18 = internal global ptr @chaoskey_probe._entry.16, section ".printk_index", align 4
@chaoskey_probe.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.19, i8 0, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"chaoskey probe success, size %d\00", [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@chaos_read_callback.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"chaos_read_callback\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"callback status (%d)\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"chaoskey%d\00", [21 x i8] zeroinitializer }, align 32
@chaoskey_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @chaoskey_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @chaoskey_open, ptr null, ptr @chaoskey_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@chaoskey_read.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"chaoskey_read\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"read %zu\00", [23 x i8] zeroinitializer }, align 32
@chaoskey_read.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.25, i8 0, i8 117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"read %zu bytes\00", [17 x i8] zeroinitializer }, align 32
@chaoskey_read.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.26, i8 0, i8 118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"empty read, result %d\00", [42 x i8] zeroinitializer }, align 32
@_chaoskey_fill.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_chaoskey_fill\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fill\00", [27 x i8] zeroinitializer }, align 32
@_chaoskey_fill.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.29, i8 0, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"not empty yet (valid %d used %d)\00", [63 x i8] zeroinitializer }, align 32
@_chaoskey_fill.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.30, i8 0, i8 89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"device not present\00", [45 x i8] zeroinitializer }, align 32
@_chaoskey_fill.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.31, i8 0, i8 90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wakeup failed (result %d)\00", [38 x i8] zeroinitializer }, align 32
@_chaoskey_fill.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.32, i8 0, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"read %d bytes\00", [18 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@chaoskey_open.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"chaoskey_open\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"open\00", [27 x i8] zeroinitializer }, align 32
@chaoskey_open.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.38, i8 0, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"open (dev)\00", [21 x i8] zeroinitializer }, align 32
@chaoskey_open.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.39, i8 0, i8 68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"open success\00", [19 x i8] zeroinitializer }, align 32
@chaoskey_release.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"chaoskey_release\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"release\00", [24 x i8] zeroinitializer }, align 32
@chaoskey_release.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.42, i8 0, i8 73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"open count at release is %d\00", [36 x i8] zeroinitializer }, align 32
@chaoskey_release.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.43, i8 0, i8 73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid open count (%d)\00", [40 x i8] zeroinitializer }, align 32
@chaoskey_release.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.44, i8 0, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"release success\00", [16 x i8] zeroinitializer }, align 32
@chaoskey_rng_read.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 0, i8 121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"chaoskey_rng_read\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rng_read max %zu wait %d\00", [39 x i8] zeroinitializer }, align 32
@chaoskey_rng_read.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.30, i8 0, i8 122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@chaoskey_rng_read.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.47, i8 0, i8 -127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rng_read this_time %d\0A\00", [41 x i8] zeroinitializer }, align 32
@chaoskey_free.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"chaoskey_free\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"free\00", [27 x i8] zeroinitializer }, align 32
@chaoskey_disconnect.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"chaoskey_disconnect\00", [44 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"disconnect\00", [21 x i8] zeroinitializer }, align 32
@chaoskey_disconnect.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.52, i8 0, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"disconnect failed - no dev\00", [37 x i8] zeroinitializer }, align 32
@chaoskey_disconnect.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.53, i8 0, i8 62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"disconnect done\00", [16 x i8] zeroinitializer }, align 32
@chaoskey_suspend.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 0, i8 -125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"chaoskey_suspend\00", [47 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"suspend\00", [24 x i8] zeroinitializer }, align 32
@chaoskey_resume.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.57, i8 0, i8 -122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"chaoskey_resume\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"resume\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4294967201, i64 4294967277, i64 4294967284]
@___asan_gen_.58 = private unnamed_addr constant [16 x i8] c"chaoskey_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 572, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 583, i32 1 }
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"chaoskey_table\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 64, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 118, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 123, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 132, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 137, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 174, i32 37 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 188, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 190, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 191, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [15 x i8] c"chaoskey_class\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 565, i32 32 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 197, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 207, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 211, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 320, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 566, i32 10 }
@___asan_gen_.139 = private unnamed_addr constant [14 x i8] c"chaoskey_fops\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 556, i32 37 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 423, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 470, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 473, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 344, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 349, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 356, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 363, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 402, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 230, i32 6 }
@___asan_gen_.176 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 214, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 174, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 261, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 265, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 274, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 288, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 292, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 295, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 311, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 485, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 519, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 97, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 224, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 227, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 248, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 527, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.245 = private constant [31 x i8] c"../drivers/usb/misc/chaoskey.c\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 536, i32 2 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_chaoskey_driver_exit, ptr @__initcall__kmod_chaoskey__266_583_chaoskey_driver_init6, ptr @chaoskey_driver_exit, ptr @chaoskey_probe._entry, ptr @chaoskey_probe._entry.16, ptr @chaoskey_probe._entry_ptr, ptr @chaoskey_probe._entry_ptr.18, ptr @chaoskey_driver, ptr @.str, ptr @chaoskey_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @chaoskey_probe.__key, ptr @.str.8, ptr @chaoskey_probe.__key.9, ptr @.str.10, ptr @chaoskey_probe.__key.11, ptr @.str.12, ptr @chaoskey_class, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @chaoskey_fops, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chaoskey_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chaoskey_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chaoskey_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chaoskey_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chaoskey_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chaoskey_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chaoskey_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chaoskey_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chaoskey_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @chaoskey_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @chaoskey_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @chaoskey_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @chaoskey_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chaoskey_probe(ptr noundef %interface, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %epd = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %epd) #9
  %4 = ptrtoint ptr %epd to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %epd, align 4, !annotation !160
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chaoskey_probe.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chaoskey_probe, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  %product = getelementptr i8, ptr %1, i32 1104
  %5 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %product, align 8
  %serial = getelementptr i8, ptr %1, i32 1112
  %7 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %serial, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @chaoskey_probe.__UNIQUE_ID_ddebug237, ptr noundef %dev4, ptr noundef nonnull @.str.3, ptr noundef %6, ptr noundef %8) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = call i32 @usb_find_common_endpoints(ptr noundef %3, ptr noundef nonnull %epd, ptr noundef null, ptr noundef null, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end25, label %do.body8

do.body8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chaoskey_probe.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chaoskey_probe, %if.then20)) #9
          to label %cleanup [label %if.then20], !srcloc !161

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  %dev21 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @chaoskey_probe.__UNIQUE_ID_ddebug238, ptr noundef %dev21, ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end25:                                         ; preds = %do.end
  %9 = ptrtoint ptr %epd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %epd, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bEndpointAddress.i, align 1
  %13 = and i8 %12, 15
  %and.i = zext i8 %13 to i32
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %10, i32 0, i32 4
  %14 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %wMaxPacketSize.i, align 1
  %16 = and i16 %15, -249
  %17 = call i16 @llvm.bswap.i16(i16 %16) #9
  %and.i239 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp = icmp eq i16 %16, 0
  br i1 %cmp, label %do.body29, label %if.end46

do.body29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chaoskey_probe.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chaoskey_probe, %if.then41)) #9
          to label %cleanup [label %if.then41], !srcloc !161

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  %dev42 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @chaoskey_probe.__UNIQUE_ID_ddebug239, ptr noundef %dev42, ptr noundef nonnull @.str.5, i32 noundef 0) #9
  br label %cleanup

if.end46:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %17)
  %cmp47 = icmp ugt i16 %17, 64
  br i1 %cmp47, label %do.body49, label %if.end46.if.end66_crit_edge

if.end46.if.end66_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

do.body49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chaoskey_probe.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chaoskey_probe, %if.then61)) #9
          to label %if.end66 [label %if.then61], !srcloc !161

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #11
  %dev62 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @chaoskey_probe.__UNIQUE_ID_ddebug240, ptr noundef %dev62, ptr noundef nonnull @.str.6, i32 noundef %and.i239, i32 noundef 64) #9
  br label %if.end66

if.end66:                                         ; preds = %if.then61, %do.body49, %if.end46.if.end66_crit_edge
  %size.0 = phi i32 [ %and.i239, %if.end46.if.end66_crit_edge ], [ 64, %if.then61 ], [ 64, %do.body49 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 380) #12
  %cmp68 = icmp eq ptr %call7.i.i, null
  br i1 %cmp68, label %if.end66.out_crit_edge, label %if.end70

if.end66.out_crit_edge:                           ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end70:                                         ; preds = %if.end66
  %call71 = call ptr @usb_get_intf(ptr noundef %interface) #9
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call71, ptr %call7.i.i, align 8
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %size.0, i32 noundef 3264) #13
  %buf = getelementptr inbounds %struct.chaoskey, ptr %call7.i.i, i32 0, i32 16
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call9.i, ptr %buf, align 8
  %cmp75 = icmp eq ptr %call9.i, null
  br i1 %cmp75, label %if.end70.out_crit_edge, label %if.end77

if.end70.out_crit_edge:                           ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end77:                                         ; preds = %if.end70
  %call78 = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %urb = getelementptr inbounds %struct.chaoskey, ptr %call7.i.i, i32 0, i32 15
  %21 = ptrtoint ptr %urb to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call78, ptr %urb, align 4
  %tobool80.not = icmp eq ptr %call78, null
  br i1 %tobool80.not, label %if.end77.out_crit_edge, label %if.end82

if.end77.out_crit_edge:                           ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end82:                                         ; preds = %if.end77
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %23, 8
  %shl1.i = shl nuw nsw i32 %and.i, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or85 = or i32 %or.i, -1073741696
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buf, align 8
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call78, i32 0, i32 8
  %26 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call78, i32 0, i32 10
  %27 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or85, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call78, i32 0, i32 14
  %28 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call78, i32 0, i32 19
  %29 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %size.0, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call78, i32 0, i32 28
  %30 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @chaos_read_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call78, i32 0, i32 27
  %31 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %product87 = getelementptr i8, ptr %1, i32 1104
  %32 = ptrtoint ptr %product87 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %product87, align 8
  %tobool88.not = icmp eq ptr %33, null
  br i1 %tobool88.not, label %if.end82.if.end99_crit_edge, label %land.lhs.true

if.end82.if.end99_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

land.lhs.true:                                    ; preds = %if.end82
  %serial89 = getelementptr i8, ptr %1, i32 1112
  %34 = ptrtoint ptr %serial89 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %serial89, align 8
  %tobool90.not = icmp eq ptr %35, null
  br i1 %tobool90.not, label %land.lhs.true.if.end99_crit_edge, label %if.then91

land.lhs.true.if.end99_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

if.then91:                                        ; preds = %land.lhs.true
  %call94 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.7, ptr noundef nonnull %33, ptr noundef nonnull %35) #9
  %name = getelementptr inbounds %struct.chaoskey, ptr %call7.i.i, i32 0, i32 11
  %36 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call94, ptr %name, align 4
  %cmp96 = icmp eq ptr %call94, null
  br i1 %cmp96, label %if.then91.out_crit_edge, label %if.then91.if.end99_crit_edge

if.then91.if.end99_crit_edge:                     ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

if.then91.out_crit_edge:                          ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end99:                                         ; preds = %if.then91.if.end99_crit_edge, %land.lhs.true.if.end99_crit_edge, %if.end82.if.end99_crit_edge
  %in_ep100 = getelementptr inbounds %struct.chaoskey, ptr %call7.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %in_ep100 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %13, ptr %in_ep100, align 4
  %idVendor = getelementptr i8, ptr %1, i32 936
  %38 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %idVendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -10222, i16 %39)
  %cmp102.not = icmp eq i16 %39, -10222
  br i1 %cmp102.not, label %if.end99.if.end105_crit_edge, label %if.then104

if.end99.if.end105_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.then104:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  %reads_started = getelementptr inbounds %struct.chaoskey, ptr %call7.i.i, i32 0, i32 7
  %40 = ptrtoint ptr %reads_started to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %reads_started, align 2
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %if.end99.if.end105_crit_edge
  %size106 = getelementptr inbounds %struct.chaoskey, ptr %call7.i.i, i32 0, i32 8
  %41 = ptrtoint ptr %size106 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %size.0, ptr %size106, align 8
  %present = getelementptr inbounds %struct.chaoskey, ptr %call7.i.i, i32 0, i32 5
  %42 = ptrtoint ptr %present to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %present, align 4
  %wait_q = getelementptr inbounds %struct.chaoskey, ptr %call7.i.i, i32 0, i32 14
  call void @__init_waitqueue_head(ptr noundef %wait_q, ptr noundef nonnull @.str.8, ptr noundef nonnull @chaoskey_probe.__key) #9
  %lock = getelementptr inbounds %struct.chaoskey, ptr %call7.i.i, i32 0, i32 2
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @chaoskey_probe.__key.9) #9
  %rng_lock = getelementptr inbounds %struct.chaoskey, ptr %call7.i.i, i32 0, i32 3
  call void @__mutex_init(ptr noundef %rng_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @chaoskey_probe.__key.11) #9
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %43 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call116 = call i32 @usb_register_dev(ptr noundef %interface, ptr noundef nonnull @chaoskey_class) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end123, label %do.end121

do.end121:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  %dev122 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev122, ptr noundef nonnull @.str.13) #14
  br label %out

if.end123:                                        ; preds = %if.end105
  %name124 = getelementptr inbounds %struct.chaoskey, ptr %call7.i.i, i32 0, i32 11
  %44 = ptrtoint ptr %name124 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name124, align 4
  %tobool125.not = icmp eq ptr %45, null
  br i1 %tobool125.not, label %cond.false, label %if.end123.cond.end_crit_edge

if.end123.cond.end_crit_edge:                     ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  %46 = load ptr, ptr @chaoskey_driver, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end123.cond.end_crit_edge
  %cond = phi ptr [ %46, %cond.false ], [ %45, %if.end123.cond.end_crit_edge ]
  %hwrng = getelementptr inbounds %struct.chaoskey, ptr %call7.i.i, i32 0, i32 12
  %47 = ptrtoint ptr %hwrng to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %cond, ptr %hwrng, align 8
  %read = getelementptr inbounds %struct.chaoskey, ptr %call7.i.i, i32 0, i32 12, i32 5
  %48 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @chaoskey_rng_read, ptr %read, align 4
  %quality = getelementptr inbounds %struct.chaoskey, ptr %call7.i.i, i32 0, i32 12, i32 7
  %49 = ptrtoint ptr %quality to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1024, ptr %quality, align 4
  %call131 = call i32 @hwrng_register(ptr noundef %hwrng) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %cmp132 = icmp eq i32 %call131, 0
  %conv133 = zext i1 %cmp132 to i32
  %hwrng_registered = getelementptr inbounds %struct.chaoskey, ptr %call7.i.i, i32 0, i32 13
  %50 = ptrtoint ptr %hwrng_registered to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv133, ptr %hwrng_registered, align 4
  br i1 %cmp132, label %cond.end.if.end141_crit_edge, label %do.end139

cond.end.if.end141_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

do.end139:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev140 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev140, ptr noundef nonnull @.str.17) #14
  br label %if.end141

if.end141:                                        ; preds = %do.end139, %cond.end.if.end141_crit_edge
  call void @usb_enable_autosuspend(ptr noundef %add.ptr.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chaoskey_probe.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chaoskey_probe, %if.then154)) #9
          to label %cleanup [label %if.then154], !srcloc !161

if.then154:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  %dev155 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  %51 = ptrtoint ptr %size106 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %size106, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @chaoskey_probe.__UNIQUE_ID_ddebug241, ptr noundef %dev155, ptr noundef nonnull @.str.19, i32 noundef %52) #9
  br label %cleanup

out:                                              ; preds = %do.end121, %if.then91.out_crit_edge, %if.end77.out_crit_edge, %if.end70.out_crit_edge, %if.end66.out_crit_edge
  %result.0 = phi i32 [ -12, %if.end66.out_crit_edge ], [ -12, %if.end70.out_crit_edge ], [ -12, %if.then91.out_crit_edge ], [ %call116, %do.end121 ], [ -12, %if.end77.out_crit_edge ]
  %driver_data.i.i240 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %53 = ptrtoint ptr %driver_data.i.i240 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %driver_data.i.i240, align 4
  call fastcc void @chaoskey_free(ptr noundef %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then154, %if.end141, %if.then41, %do.body29, %if.then20, %do.body8
  %retval.0 = phi i32 [ %result.0, %out ], [ %call.i, %if.then20 ], [ -19, %if.then41 ], [ 0, %if.then154 ], [ %call.i, %do.body8 ], [ -19, %do.body29 ], [ 0, %if.end141 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %epd) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chaoskey_disconnect(ptr noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chaoskey_disconnect.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chaoskey_disconnect, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev3 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @chaoskey_disconnect.__UNIQUE_ID_ddebug242, ptr noundef %dev3, ptr noundef nonnull @.str.51) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.body7, label %if.end24

do.body7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chaoskey_disconnect.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chaoskey_disconnect, %if.then19)) #9
          to label %cleanup [label %if.then19], !srcloc !161

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  %dev20 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @chaoskey_disconnect.__UNIQUE_ID_ddebug243, ptr noundef %dev20, ptr noundef nonnull @.str.52) #9
  br label %cleanup

if.end24:                                         ; preds = %do.end
  %hwrng_registered = getelementptr inbounds %struct.chaoskey, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hwrng_registered to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwrng_registered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool25.not = icmp eq i32 %3, 0
  br i1 %tobool25.not, label %if.end24.if.end27_crit_edge, label %if.then26

if.end24.if.end27_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %hwrng = getelementptr inbounds %struct.chaoskey, ptr %1, i32 0, i32 12
  tail call void @hwrng_unregister(ptr noundef %hwrng) #9
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end24.if.end27_crit_edge
  tail call void @usb_deregister_dev(ptr noundef %interface, ptr noundef nonnull @chaoskey_class) #9
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.chaoskey, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %present = getelementptr inbounds %struct.chaoskey, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %present to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %present, align 4
  %urb = getelementptr inbounds %struct.chaoskey, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %urb, align 4
  tail call void @usb_poison_urb(ptr noundef %7) #9
  %open = getelementptr inbounds %struct.chaoskey, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool28.not = icmp eq i32 %9, 0
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br i1 %tobool28.not, label %if.then29, label %if.end27.do.body33_crit_edge

if.end27.do.body33_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body33

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @chaoskey_free(ptr noundef nonnull %1)
  br label %do.body33

do.body33:                                        ; preds = %if.then29, %if.end27.do.body33_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chaoskey_disconnect.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chaoskey_disconnect, %if.then45)) #9
          to label %cleanup [label %if.then45], !srcloc !161

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  %dev46 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @chaoskey_disconnect.__UNIQUE_ID_ddebug244, ptr noundef %dev46, ptr noundef nonnull @.str.53) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %do.body33, %if.then19, %do.body7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chaoskey_suspend(ptr noundef %interface, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chaoskey_suspend.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chaoskey_suspend, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @chaoskey_suspend.__UNIQUE_ID_ddebug264, ptr noundef %dev, ptr noundef nonnull @.str.55) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chaoskey_resume(ptr noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chaoskey_resume.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chaoskey_resume, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @chaoskey_resume.__UNIQUE_ID_ddebug265, ptr noundef %dev4, ptr noundef nonnull @.str.57) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %idVendor = getelementptr i8, ptr %1, i32 936
  %2 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %idVendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -10222, i16 %3)
  %cmp = icmp eq i16 %3, -10222
  br i1 %cmp, label %if.then7, label %do.end.if.end8_crit_edge

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %reads_started = getelementptr inbounds %struct.chaoskey, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %reads_started to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %reads_started, align 2
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.end.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_intf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chaos_read_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chaos_read_callback.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chaos_read_callback, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @chaos_read_callback.__UNIQUE_ID_ddebug252, ptr noundef %dev4, ptr noundef nonnull @.str.21, i32 noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then5, label %do.end.if.end7_crit_edge

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.end.if.end7_crit_edge
  %.sink = phi i32 [ %7, %if.then5 ], [ 0, %do.end.if.end7_crit_edge ]
  %8 = getelementptr inbounds %struct.chaoskey, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %8, align 4
  %used = getelementptr inbounds %struct.chaoskey, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %used, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !162
  %reading = getelementptr inbounds %struct.chaoskey, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %reading to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %reading, align 1
  %wait_q = getelementptr inbounds %struct.chaoskey, ptr %1, i32 0, i32 14
  tail call void @__wake_up(ptr noundef %wait_q, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chaoskey_rng_read(ptr noundef %rng, ptr nocapture noundef writeonly %data, i32 noundef %max, i1 noundef zeroext %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rng, i32 -216
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chaoskey_rng_read.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chaoskey_rng_read, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev5 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %conv = zext i1 %wait to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @chaoskey_rng_read.__UNIQUE_ID_ddebug261, ptr noundef %dev5, ptr noundef nonnull @.str.46, i32 noundef %max, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %present = getelementptr i8, ptr %rng, i32 -20
  %2 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %present, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool7.not = icmp eq i8 %3, 0
  br i1 %tobool7.not, label %do.body9, label %if.end27

do.body9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chaoskey_rng_read.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chaoskey_rng_read, %if.then21)) #9
          to label %cleanup [label %if.then21], !srcloc !161

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %dev23 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @chaoskey_rng_read.__UNIQUE_ID_ddebug262, ptr noundef %dev23, ptr noundef nonnull @.str.30) #9
  br label %cleanup

if.end27:                                         ; preds = %do.end
  %rng_lock = getelementptr i8, ptr %rng, i32 -116
  tail call void @mutex_lock_nested(ptr noundef %rng_lock, i32 noundef 0) #9
  %lock = getelementptr i8, ptr %rng, i32 -208
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  tail call void @mutex_unlock(ptr noundef %rng_lock) #9
  %valid = getelementptr i8, ptr %rng, i32 -12
  %6 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %valid, align 4
  %used = getelementptr i8, ptr %rng, i32 -8
  %8 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp eq i32 %7, %9
  br i1 %cmp, label %if.then30, label %if.end27.if.end32_crit_edge

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = tail call fastcc i32 @_chaoskey_fill(ptr noundef %add.ptr)
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end27.if.end32_crit_edge
  %10 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %valid, align 4
  %12 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %used, align 4
  %sub = sub i32 %11, %13
  %14 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %max)
  %buf = getelementptr i8, ptr %rng, i32 160
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf, align 4
  %add.ptr40 = getelementptr i8, ptr %16, i32 %13
  %17 = call ptr @memcpy(ptr %data, ptr %add.ptr40, i32 %14)
  %18 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %used, align 4
  %add = add i32 %19, %14
  store i32 %add, ptr %used, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chaoskey_rng_read.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chaoskey_rng_read, %if.then55)) #9
          to label %cleanup [label %if.then55], !srcloc !161

if.then55:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  %dev57 = getelementptr inbounds %struct.usb_interface, ptr %21, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @chaoskey_rng_read.__UNIQUE_ID_ddebug263, ptr noundef %dev57, ptr noundef nonnull @.str.47, i32 noundef %14) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.end32, %if.then21, %do.body9
  %retval.0 = phi i32 [ 0, %if.then21 ], [ %14, %if.then55 ], [ 0, %do.body9 ], [ %14, %if.end32 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwrng_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_enable_autosuspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @chaoskey_free(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %do.body

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chaoskey_free.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chaoskey_free, %if.then4)) #9
          to label %do.end [label %if.then4], !srcloc !161

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev5 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @chaoskey_free.__UNIQUE_ID_ddebug236, ptr noundef %dev5, ptr noundef nonnull @.str.49) #9
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %urb = getelementptr inbounds %struct.chaoskey, ptr %dev, i32 0, i32 15
  %2 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb, align 4
  tail call void @usb_free_urb(ptr noundef %3) #9
  %name = getelementptr inbounds %struct.chaoskey, ptr %dev, i32 0, i32 11
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %5) #9
  %buf = getelementptr inbounds %struct.chaoskey, ptr %dev, i32 0, i32 16
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf, align 4
  tail call void @kfree(ptr noundef %7) #9
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void @usb_put_intf(ptr noundef %9) #9
  tail call void @kfree(ptr noundef nonnull %dev) #9
  br label %if.end7

if.end7:                                          ; preds = %do.end, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_find_common_endpoints(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chaoskey_read(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %present = getelementptr inbounds %struct.chaoskey, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %present, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %do.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chaoskey_read.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chaoskey_read, %if.then4)) #9
          to label %do.end [label %if.then4], !srcloc !161

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %dev5 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @chaoskey_read.__UNIQUE_ID_ddebug258, ptr noundef %dev5, ptr noundef nonnull @.str.24, i32 noundef %count) #9
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp7.not160 = icmp eq i32 %count, 0
  br i1 %cmp7.not160, label %do.end.do.body65_crit_edge, label %while.body.lr.ph

do.end.do.body65_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body65

while.body.lr.ph:                                 ; preds = %do.end
  %rng_lock = getelementptr inbounds %struct.chaoskey, ptr %1, i32 0, i32 3
  %lock = getelementptr inbounds %struct.chaoskey, ptr %1, i32 0, i32 2
  %valid = getelementptr inbounds %struct.chaoskey, ptr %1, i32 0, i32 9
  %used = getelementptr inbounds %struct.chaoskey, ptr %1, i32 0, i32 10
  %buf = getelementptr inbounds %struct.chaoskey, ptr %1, i32 0, i32 16
  br label %while.body

while.body:                                       ; preds = %if.end37.while.body_crit_edge, %while.body.lr.ph
  %buffer.addr.0163 = phi ptr [ %buffer, %while.body.lr.ph ], [ %add.ptr40, %if.end37.while.body_crit_edge ]
  %count.addr.0162 = phi i32 [ %count, %while.body.lr.ph ], [ %sub38, %if.end37.while.body_crit_edge ]
  %read_count.0161 = phi i32 [ 0, %while.body.lr.ph ], [ %add39, %if.end37.while.body_crit_edge ]
  %call8 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %rng_lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %while.body.bail_crit_edge

while.body.bail_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail

if.end11:                                         ; preds = %while.body
  tail call void @mutex_unlock(ptr noundef %rng_lock) #9
  %call13 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.bail_crit_edge

if.end11.bail_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail

if.end16:                                         ; preds = %if.end11
  %6 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %valid, align 4
  %8 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp17 = icmp eq i32 %7, %9
  br i1 %cmp17, label %if.then18, label %if.end16.if.end24_crit_edge

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then18:                                        ; preds = %if.end16
  %call19 = tail call fastcc i32 @_chaoskey_fill(ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then18.bail.sink.split_crit_edge, label %if.then18.if.end24_crit_edge

if.then18.if.end24_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then18.bail.sink.split_crit_edge:              ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail.sink.split

if.end24:                                         ; preds = %if.then18.if.end24_crit_edge, %if.end16.if.end24_crit_edge
  %result.1 = phi i32 [ %call19, %if.then18.if.end24_crit_edge ], [ 0, %if.end16.if.end24_crit_edge ]
  %10 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %valid, align 4
  %12 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %used, align 4
  %sub = sub i32 %11, %13
  %14 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %count.addr.0162)
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp9.i.i = icmp slt i32 %14, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end24
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.if.then33_crit_edge, label %if.then27.i.i, !prof !164

land.rhs16.i.i.if.then33_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %if.then33

if.then.i.i.i:                                    ; preds = %if.end24
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %14, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer.addr.0163, i32 %14, i32 -1226833920) #15, !srcloc !165
  %asmresult.i.i = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %14) #9
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buffer.addr.0163, ptr noundef %add.ptr, i32 noundef %14) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %14, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %14, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool32.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool32.not, label %if.end37, label %copy_to_user.exit.if.then33_crit_edge

copy_to_user.exit.if.then33_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

if.then33:                                        ; preds = %copy_to_user.exit.if.then33_crit_edge, %if.then27.i.i, %land.rhs16.i.i.if.then33_crit_edge
  %n.addr.0.i138 = phi i32 [ %14, %if.then27.i.i ], [ %14, %land.rhs16.i.i.if.then33_crit_edge ], [ %n.addr.0.i, %copy_to_user.exit.if.then33_crit_edge ]
  %sub34 = sub i32 %14, %n.addr.0.i138
  %18 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %used, align 4
  %add = add i32 %sub34, %19
  store i32 %add, ptr %used, align 4
  br label %bail.sink.split

if.end37:                                         ; preds = %copy_to_user.exit
  %sub38 = sub i32 %count.addr.0162, %14
  %add39 = add i32 %14, %read_count.0161
  %add.ptr40 = getelementptr i8, ptr %buffer.addr.0163, i32 %14
  %20 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %used, align 4
  %add42 = add i32 %21, %14
  store i32 %add42, ptr %used, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %cmp7.not = icmp eq i32 %sub38, 0
  br i1 %cmp7.not, label %if.end37.bail_crit_edge, label %if.end37.while.body_crit_edge

if.end37.while.body_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end37.bail_crit_edge:                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail

bail.sink.split:                                  ; preds = %if.then33, %if.then18.bail.sink.split_crit_edge
  %result.2.ph = phi i32 [ -14, %if.then33 ], [ %call19, %if.then18.bail.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %bail

bail:                                             ; preds = %bail.sink.split, %if.end37.bail_crit_edge, %if.end11.bail_crit_edge, %while.body.bail_crit_edge
  %read_count.0145 = phi i32 [ %read_count.0161, %bail.sink.split ], [ %read_count.0161, %while.body.bail_crit_edge ], [ %read_count.0161, %if.end11.bail_crit_edge ], [ %add39, %if.end37.bail_crit_edge ]
  %result.2 = phi i32 [ %result.2.ph, %bail.sink.split ], [ %call8, %while.body.bail_crit_edge ], [ %call13, %if.end11.bail_crit_edge ], [ %result.1, %if.end37.bail_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read_count.0145)
  %tobool44.not = icmp eq i32 %read_count.0145, 0
  br i1 %tobool44.not, label %bail.do.body65_crit_edge, label %do.body46

bail.do.body65_crit_edge:                         ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body65

do.body46:                                        ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chaoskey_read.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chaoskey_read, %if.then58)) #9
          to label %cleanup [label %if.then58], !srcloc !161

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %dev60 = getelementptr inbounds %struct.usb_interface, ptr %23, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @chaoskey_read.__UNIQUE_ID_ddebug259, ptr noundef %dev60, ptr noundef nonnull @.str.25, i32 noundef %read_count.0145) #9
  br label %cleanup

do.body65:                                        ; preds = %bail.do.body65_crit_edge, %do.end.do.body65_crit_edge
  %result.2182 = phi i32 [ %result.2, %bail.do.body65_crit_edge ], [ 0, %do.end.do.body65_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chaoskey_read.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chaoskey_read, %if.then77)) #9
          to label %do.end82 [label %if.then77], !srcloc !161

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %dev79 = getelementptr inbounds %struct.usb_interface, ptr %25, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @chaoskey_read.__UNIQUE_ID_ddebug260, ptr noundef %dev79, ptr noundef nonnull @.str.26, i32 noundef %result.2182) #9
  br label %do.end82

do.end82:                                         ; preds = %if.then77, %do.body65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %result.2182)
  %cmp83 = icmp eq i32 %result.2182, -110
  %spec.store.select = select i1 %cmp83, i32 -11, i32 %result.2182
  br label %cleanup

cleanup:                                          ; preds = %do.end82, %if.then58, %do.body46, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %do.end82 ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ %read_count.0145, %if.then58 ], [ %read_count.0145, %do.body46 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chaoskey_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  %call1 = tail call ptr @usb_find_interface(ptr noundef nonnull @chaoskey_driver, i32 noundef %and.i) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chaoskey_open.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chaoskey_open, %if.then6)) #9
          to label %do.end [label %if.then6], !srcloc !161

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev7 = getelementptr inbounds %struct.usb_interface, ptr %call1, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @chaoskey_open.__UNIQUE_ID_ddebug245, ptr noundef %dev7, ptr noundef nonnull @.str.37) #9
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %call1, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool10.not = icmp eq ptr %3, null
  br i1 %tobool10.not, label %do.body12, label %if.end29

do.body12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chaoskey_open.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chaoskey_open, %if.then24)) #9
          to label %cleanup [label %if.then24], !srcloc !161

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  %dev25 = getelementptr inbounds %struct.usb_interface, ptr %call1, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @chaoskey_open.__UNIQUE_ID_ddebug246, ptr noundef %dev25, ptr noundef nonnull @.str.38) #9
  br label %cleanup

if.end29:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.chaoskey, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %open = getelementptr inbounds %struct.chaoskey, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %open, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %open, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chaoskey_open.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chaoskey_open, %if.then43)) #9
          to label %cleanup [label %if.then43], !srcloc !161

if.then43:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %dev44 = getelementptr inbounds %struct.usb_interface, ptr %call1, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @chaoskey_open.__UNIQUE_ID_ddebug247, ptr noundef %dev44, ptr noundef nonnull @.str.39) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %if.end29, %if.then24, %do.body12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -19, %if.then24 ], [ 0, %if.then43 ], [ -19, %do.body12 ], [ 0, %if.end29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chaoskey_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chaoskey_release.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chaoskey_release, %if.then4)) #9
          to label %do.end [label %if.then4], !srcloc !161

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @chaoskey_release.__UNIQUE_ID_ddebug248, ptr noundef %dev5, ptr noundef nonnull @.str.41) #9
  br label %do.end

do.end:                                           ; preds = %if.then4, %if.end
  %lock = getelementptr inbounds %struct.chaoskey, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chaoskey_release.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chaoskey_release, %if.then19)) #9
          to label %do.end23 [label %if.then19], !srcloc !161

if.then19:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev20 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %open = getelementptr inbounds %struct.chaoskey, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %open, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @chaoskey_release.__UNIQUE_ID_ddebug249, ptr noundef %dev20, ptr noundef nonnull @.str.42, i32 noundef %5) #9
  br label %do.end23

do.end23:                                         ; preds = %if.then19, %do.end
  %open24 = getelementptr inbounds %struct.chaoskey, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %open24 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %open24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp25 = icmp slt i32 %7, 1
  br i1 %cmp25, label %do.body27, label %if.end46

do.body27:                                        ; preds = %do.end23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chaoskey_release.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chaoskey_release, %if.then39)) #9
          to label %do.end44 [label %if.then39], !srcloc !161

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  %dev40 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %open24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %open24, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @chaoskey_release.__UNIQUE_ID_ddebug250, ptr noundef %dev40, ptr noundef nonnull @.str.43, i32 noundef %9) #9
  br label %do.end44

do.end44:                                         ; preds = %if.then39, %do.body27
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

if.end46:                                         ; preds = %do.end23
  %dec = add nsw i32 %7, -1
  %10 = ptrtoint ptr %open24 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %dec, ptr %open24, align 4
  %present = getelementptr inbounds %struct.chaoskey, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %present, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool48.not = icmp eq i8 %12, 0
  br i1 %tobool48.not, label %if.then49, label %if.else56

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp51 = icmp eq i32 %dec, 0
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br i1 %cmp51, label %if.then52, label %if.then49.do.body59_crit_edge

if.then49.do.body59_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body59

if.then52:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @chaoskey_free(ptr noundef nonnull %1)
  br label %do.body59

if.else56:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %do.body59

do.body59:                                        ; preds = %if.else56, %if.then52, %if.then49.do.body59_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chaoskey_release.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chaoskey_release, %if.then71)) #9
          to label %cleanup [label %if.then71], !srcloc !161

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #11
  %dev72 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @chaoskey_release.__UNIQUE_ID_ddebug251, ptr noundef %dev72, ptr noundef nonnull @.str.44) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %do.body59, %do.end44, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end44 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.then71 ], [ 0, %do.body59 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_chaoskey_fill(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !150) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_chaoskey_fill.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_chaoskey_fill, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %dev7 = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_chaoskey_fill.__UNIQUE_ID_ddebug253, ptr noundef %dev7, ptr noundef nonnull @.str.28) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %valid = getelementptr inbounds %struct.chaoskey, ptr %dev, i32 0, i32 9
  %15 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %valid, align 4
  %used = getelementptr inbounds %struct.chaoskey, ptr %dev, i32 0, i32 10
  %17 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp.not = icmp eq i32 %16, %18
  br i1 %cmp.not, label %if.end29, label %do.body9

do.body9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_chaoskey_fill.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_chaoskey_fill, %if.then21)) #9
          to label %cleanup169 [label %if.then21], !srcloc !161

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %dev23 = getelementptr inbounds %struct.usb_interface, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %valid, align 4
  %23 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %used, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_chaoskey_fill.__UNIQUE_ID_ddebug254, ptr noundef %dev23, ptr noundef nonnull @.str.29, i32 noundef %22, i32 noundef %24) #9
  br label %cleanup169

if.end29:                                         ; preds = %do.end
  %present = getelementptr inbounds %struct.chaoskey, ptr %dev, i32 0, i32 5
  %25 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %present, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool30.not = icmp eq i8 %26, 0
  br i1 %tobool30.not, label %do.body32, label %if.end50

do.body32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_chaoskey_fill.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_chaoskey_fill, %if.then44)) #9
          to label %cleanup169 [label %if.then44], !srcloc !161

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %dev46 = getelementptr inbounds %struct.usb_interface, ptr %28, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_chaoskey_fill.__UNIQUE_ID_ddebug255, ptr noundef %dev46, ptr noundef nonnull @.str.30) #9
  br label %cleanup169

if.end50:                                         ; preds = %if.end29
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  %call52 = call i32 @usb_autopm_get_interface(ptr noundef %30) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end73, label %do.body55

do.body55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_chaoskey_fill.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_chaoskey_fill, %if.then67)) #9
          to label %cleanup169 [label %if.then67], !srcloc !161

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %dev69 = getelementptr inbounds %struct.usb_interface, ptr %32, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_chaoskey_fill.__UNIQUE_ID_ddebug256, ptr noundef %dev69, ptr noundef nonnull @.str.31, i32 noundef %call52) #9
  br label %cleanup169

if.end73:                                         ; preds = %if.end50
  %reading = getelementptr inbounds %struct.chaoskey, ptr %dev, i32 0, i32 6
  %33 = ptrtoint ptr %reading to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %reading, align 1
  %urb = getelementptr inbounds %struct.chaoskey, ptr %dev, i32 0, i32 15
  %34 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %urb, align 4
  %call74 = call i32 @usb_submit_urb(ptr noundef %35, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.then76, label %if.end79

if.then76:                                        ; preds = %if.end73
  %36 = zext i32 %call74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call74, label %sw.default.i [
    i32 -95, label %if.then76.usb_translate_errors.exit_crit_edge
    i32 -12, label %if.then76.usb_translate_errors.exit_crit_edge261
    i32 -19, label %if.then76.usb_translate_errors.exit_crit_edge262
  ]

if.then76.usb_translate_errors.exit_crit_edge262: ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_translate_errors.exit

if.then76.usb_translate_errors.exit_crit_edge261: ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_translate_errors.exit

if.then76.usb_translate_errors.exit_crit_edge:    ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_translate_errors.exit

sw.default.i:                                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_translate_errors.exit

usb_translate_errors.exit:                        ; preds = %sw.default.i, %if.then76.usb_translate_errors.exit_crit_edge, %if.then76.usb_translate_errors.exit_crit_edge261, %if.then76.usb_translate_errors.exit_crit_edge262
  %retval.0.i225 = phi i32 [ -5, %sw.default.i ], [ %call74, %if.then76.usb_translate_errors.exit_crit_edge ], [ %call74, %if.then76.usb_translate_errors.exit_crit_edge261 ], [ %call74, %if.then76.usb_translate_errors.exit_crit_edge262 ]
  %37 = ptrtoint ptr %reading to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %reading, align 1
  br label %out

if.end79:                                         ; preds = %if.end73
  %reads_started = getelementptr inbounds %struct.chaoskey, ptr %dev, i32 0, i32 7
  %38 = ptrtoint ptr %reads_started to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %reads_started, align 2, !range !163
  store i8 1, ptr %reads_started, align 2
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 385) #9
  %40 = ptrtoint ptr %reading to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %reading, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool91.not = icmp eq i8 %41, 0
  br i1 %tobool91.not, label %if.end79.if.else_crit_edge, label %if.then105

if.end79.if.else_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then105:                                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool80.not = icmp eq i8 %39, 0
  %cond = select i1 %tobool80.not, i32 300, i32 100
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %42 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %wait_q = getelementptr inbounds %struct.chaoskey, ptr %dev, i32 0, i32 14
  %call109246 = call i32 @prepare_to_wait_event(ptr noundef %wait_q, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %43 = ptrtoint ptr %reading to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %reading, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool112.not247 = icmp eq i8 %44, 0
  br i1 %tobool112.not247, label %if.then105.for.end_crit_edge, label %if.then105.if.end131_crit_edge

if.then105.if.end131_crit_edge:                   ; preds = %if.then105
  br label %if.end131

if.then105.for.end_crit_edge:                     ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end131:                                        ; preds = %cleanup.if.end131_crit_edge, %if.then105.if.end131_crit_edge
  %__ret106.1249 = phi i32 [ %__ret106.1, %cleanup.if.end131_crit_edge ], [ %cond, %if.then105.if.end131_crit_edge ]
  %call109248 = phi i32 [ %call109, %cleanup.if.end131_crit_edge ], [ %call109246, %if.then105.if.end131_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109248)
  %tobool132.not = icmp eq i32 %call109248, 0
  br i1 %tobool132.not, label %cleanup, label %if.end131.if.end138_crit_edge

if.end131.if.end138_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

cleanup:                                          ; preds = %if.end131
  %call135 = call i32 @schedule_timeout(i32 noundef %__ret106.1249) #9
  %call109 = call i32 @prepare_to_wait_event(ptr noundef %wait_q, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %45 = ptrtoint ptr %reading to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %reading, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool112.not = icmp eq i8 %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool118.not = icmp eq i32 %call135, 0
  %47 = select i1 %tobool112.not, i1 %tobool118.not, i1 false
  %__ret106.1 = select i1 %47, i32 1, i32 %call135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret106.1)
  %tobool124.not = icmp eq i32 %__ret106.1, 0
  %48 = select i1 %tobool112.not, i1 true, i1 %tobool124.not
  br i1 %48, label %cleanup.for.end_crit_edge, label %cleanup.if.end131_crit_edge

cleanup.if.end131_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end131

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then105.for.end_crit_edge
  %__ret106.1.lcssa = phi i32 [ %cond, %if.then105.for.end_crit_edge ], [ %__ret106.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %wait_q, ptr noundef nonnull %__wq_entry) #9
  br label %if.end138

if.end138:                                        ; preds = %for.end, %if.end131.if.end138_crit_edge
  %__ret106.2232 = phi i32 [ %__ret106.1.lcssa, %for.end ], [ %call109248, %if.end131.if.end138_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret106.2232)
  %cmp140 = icmp slt i32 %__ret106.2232, 0
  br i1 %cmp140, label %if.then141, label %if.end143

if.then141:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %urb, align 4
  call void @usb_kill_urb(ptr noundef %50) #9
  br label %out

if.end143:                                        ; preds = %if.end138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret106.2232)
  %cmp144 = icmp eq i32 %__ret106.2232, 0
  br i1 %cmp144, label %if.then145, label %if.end143.if.else_crit_edge

if.end143.if.else_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then145:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %urb, align 4
  call void @usb_kill_urb(ptr noundef %52) #9
  br label %out

if.else:                                          ; preds = %if.end143.if.else_crit_edge, %if.end79.if.else_crit_edge
  %53 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %valid, align 4
  br label %out

out:                                              ; preds = %if.else, %if.then145, %if.then141, %usb_translate_errors.exit
  %result.0 = phi i32 [ %retval.0.i225, %usb_translate_errors.exit ], [ %__ret106.2232, %if.then141 ], [ -110, %if.then145 ], [ %54, %if.else ]
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  call void @usb_autopm_put_interface(ptr noundef %56) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_chaoskey_fill.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_chaoskey_fill, %if.then162)) #9
          to label %cleanup169 [label %if.then162], !srcloc !161

if.then162:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 4
  %dev164 = getelementptr inbounds %struct.usb_interface, ptr %58, i32 0, i32 7
  %59 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %valid, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_chaoskey_fill.__UNIQUE_ID_ddebug257, ptr noundef %dev164, ptr noundef nonnull @.str.32, i32 noundef %60) #9
  br label %cleanup169

cleanup169:                                       ; preds = %if.then162, %out, %if.then67, %do.body55, %if.then44, %do.body32, %if.then21, %do.body9
  %retval.0 = phi i32 [ 0, %if.then21 ], [ -19, %if.then44 ], [ %call52, %if.then67 ], [ %result.0, %if.then162 ], [ 0, %do.body9 ], [ -19, %do.body32 ], [ %call52, %do.body55 ], [ %result.0, %out ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_find_interface(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_intf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwrng_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_poison_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !16, !17, !18, !20, !21, !23, !24, !26, !27, !29, !31, !32, !34, !35, !37, !38, !40, !41, !42, !43, !44, !46, !47, !48, !50, !51, !53, !54, !55, !57, !59, !61, !63, !64, !65, !67, !68, !70, !71, !73, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !94, !96, !97, !98, !100, !101, !103, !104, !106, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !121, !123, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !139, !140, !142, !143, !144, !146, !147, !148}
!llvm.named.register.sp = !{!150}
!llvm.module.flags = !{!151, !152, !153, !154, !155, !156, !157, !158}
!llvm.ident = !{!159}

!0 = !{ptr @__UNIQUE_ID_author232, !1, !"__UNIQUE_ID_author232", i1 false, i1 false}
!1 = !{!"../drivers/usb/misc/chaoskey.c", i32 41, i32 1}
!2 = !{ptr @__UNIQUE_ID_description233, !3, !"__UNIQUE_ID_description233", i1 false, i1 false}
!3 = !{!"../drivers/usb/misc/chaoskey.c", i32 42, i32 1}
!4 = !{ptr @__UNIQUE_ID_file234, !5, !"__UNIQUE_ID_file234", i1 false, i1 false}
!5 = !{!"../drivers/usb/misc/chaoskey.c", i32 43, i32 1}
!6 = !{ptr @__UNIQUE_ID_license235, !5, !"__UNIQUE_ID_license235", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_chaoskey__266_583_chaoskey_driver_init6, !8, !"__initcall__kmod_chaoskey__266_583_chaoskey_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/usb/misc/chaoskey.c", i32 583, i32 1}
!9 = !{ptr @__exitcall_chaoskey_driver_exit, !8, !"__exitcall_chaoskey_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @chaoskey_driver, !12, !"chaoskey_driver", i1 false, i1 false}
!12 = !{!"../drivers/usb/misc/chaoskey.c", i32 572, i32 26}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/misc/chaoskey.c", i32 118, i32 2}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @chaoskey_probe.__UNIQUE_ID_ddebug237, !14, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/misc/chaoskey.c", i32 123, i32 3}
!20 = !{ptr @chaoskey_probe.__UNIQUE_ID_ddebug238, !19, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/misc/chaoskey.c", i32 132, i32 3}
!23 = !{ptr @chaoskey_probe.__UNIQUE_ID_ddebug239, !22, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/misc/chaoskey.c", i32 137, i32 3}
!26 = !{ptr @chaoskey_probe.__UNIQUE_ID_ddebug240, !25, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/misc/chaoskey.c", i32 174, i32 37}
!29 = !{ptr @chaoskey_probe.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/usb/misc/chaoskey.c", i32 188, i32 2}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @chaoskey_probe.__key.9, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/usb/misc/chaoskey.c", i32 190, i32 2}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @chaoskey_probe.__key.11, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/usb/misc/chaoskey.c", i32 191, i32 2}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/misc/chaoskey.c", i32 197, i32 3}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @chaoskey_probe._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @chaoskey_probe._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/misc/chaoskey.c", i32 207, i32 3}
!46 = !{ptr @chaoskey_probe._entry.16, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @chaoskey_probe._entry_ptr.18, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/misc/chaoskey.c", i32 211, i32 2}
!50 = !{ptr @chaoskey_probe.__UNIQUE_ID_ddebug241, !49, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/misc/chaoskey.c", i32 320, i32 2}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @chaos_read_callback.__UNIQUE_ID_ddebug252, !52, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/misc/chaoskey.c", i32 566, i32 10}
!57 = !{ptr @chaoskey_class, !58, !"chaoskey_class", i1 false, i1 false}
!58 = !{!"../drivers/usb/misc/chaoskey.c", i32 565, i32 32}
!59 = !{ptr @chaoskey_fops, !60, !"chaoskey_fops", i1 false, i1 false}
!60 = !{!"../drivers/usb/misc/chaoskey.c", i32 556, i32 37}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/misc/chaoskey.c", i32 423, i32 2}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @chaoskey_read.__UNIQUE_ID_ddebug258, !62, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/misc/chaoskey.c", i32 470, i32 3}
!67 = !{ptr @chaoskey_read.__UNIQUE_ID_ddebug259, !66, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/misc/chaoskey.c", i32 473, i32 2}
!70 = !{ptr @chaoskey_read.__UNIQUE_ID_ddebug260, !69, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/misc/chaoskey.c", i32 344, i32 2}
!73 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @_chaoskey_fill.__UNIQUE_ID_ddebug253, !72, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/misc/chaoskey.c", i32 349, i32 3}
!77 = !{ptr @_chaoskey_fill.__UNIQUE_ID_ddebug254, !76, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/misc/chaoskey.c", i32 356, i32 3}
!80 = !{ptr @_chaoskey_fill.__UNIQUE_ID_ddebug255, !79, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/misc/chaoskey.c", i32 363, i32 3}
!83 = !{ptr @_chaoskey_fill.__UNIQUE_ID_ddebug256, !82, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/misc/chaoskey.c", i32 402, i32 2}
!86 = !{ptr @_chaoskey_fill.__UNIQUE_ID_ddebug257, !85, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!87 = distinct !{null, !88, !"__already_done", i1 false, i1 false}
!88 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!89 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/misc/chaoskey.c", i32 261, i32 2}
!96 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @chaoskey_open.__UNIQUE_ID_ddebug245, !95, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!98 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/misc/chaoskey.c", i32 265, i32 3}
!100 = !{ptr @chaoskey_open.__UNIQUE_ID_ddebug246, !99, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!101 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/misc/chaoskey.c", i32 274, i32 2}
!103 = !{ptr @chaoskey_open.__UNIQUE_ID_ddebug247, !102, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!104 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/misc/chaoskey.c", i32 288, i32 2}
!106 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @chaoskey_release.__UNIQUE_ID_ddebug248, !105, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!108 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/misc/chaoskey.c", i32 292, i32 2}
!110 = !{ptr @chaoskey_release.__UNIQUE_ID_ddebug249, !109, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!111 = !{ptr @.str.43, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/usb/misc/chaoskey.c", i32 295, i32 3}
!113 = !{ptr @chaoskey_release.__UNIQUE_ID_ddebug250, !112, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/misc/chaoskey.c", i32 311, i32 2}
!116 = !{ptr @chaoskey_release.__UNIQUE_ID_ddebug251, !115, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!117 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/misc/chaoskey.c", i32 485, i32 2}
!119 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @chaoskey_rng_read.__UNIQUE_ID_ddebug261, !118, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!121 = !{ptr @chaoskey_rng_read.__UNIQUE_ID_ddebug262, !122, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!122 = !{!"../drivers/usb/misc/chaoskey.c", i32 488, i32 3}
!123 = !{ptr @.str.47, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/usb/misc/chaoskey.c", i32 519, i32 2}
!125 = !{ptr @chaoskey_rng_read.__UNIQUE_ID_ddebug263, !124, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!126 = !{ptr @.str.48, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/misc/chaoskey.c", i32 97, i32 3}
!128 = !{ptr @.str.49, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @chaoskey_free.__UNIQUE_ID_ddebug236, !127, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!130 = !{ptr @.str.50, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/usb/misc/chaoskey.c", i32 224, i32 2}
!132 = !{ptr @.str.51, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @chaoskey_disconnect.__UNIQUE_ID_ddebug242, !131, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!134 = !{ptr @.str.52, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/usb/misc/chaoskey.c", i32 227, i32 3}
!136 = !{ptr @chaoskey_disconnect.__UNIQUE_ID_ddebug243, !135, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!137 = !{ptr @.str.53, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/misc/chaoskey.c", i32 248, i32 2}
!139 = !{ptr @chaoskey_disconnect.__UNIQUE_ID_ddebug244, !138, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!140 = !{ptr @.str.54, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/misc/chaoskey.c", i32 527, i32 2}
!142 = !{ptr @.str.55, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @chaoskey_suspend.__UNIQUE_ID_ddebug264, !141, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!144 = !{ptr @.str.56, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/usb/misc/chaoskey.c", i32 536, i32 2}
!146 = !{ptr @.str.57, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @chaoskey_resume.__UNIQUE_ID_ddebug265, !145, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!148 = !{ptr @chaoskey_table, !149, !"chaoskey_table", i1 false, i1 false}
!149 = !{!"../drivers/usb/misc/chaoskey.c", i32 64, i32 35}
!150 = !{!"sp"}
!151 = !{i32 1, !"wchar_size", i32 2}
!152 = !{i32 1, !"min_enum_size", i32 4}
!153 = !{i32 8, !"branch-target-enforcement", i32 0}
!154 = !{i32 8, !"sign-return-address", i32 0}
!155 = !{i32 8, !"sign-return-address-all", i32 0}
!156 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!157 = !{i32 7, !"uwtable", i32 1}
!158 = !{i32 7, !"frame-pointer", i32 2}
!159 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!160 = !{!"auto-init"}
!161 = !{i64 2148965141, i64 2148965146, i64 2148965159, i64 2148965203, i64 2148965237, i64 2148965258}
!162 = !{i64 2153955822}
!163 = !{i8 0, i8 2}
!164 = !{!"branch_weights", i32 2000, i32 1}
!165 = !{i64 2153528025, i64 2153528050}
