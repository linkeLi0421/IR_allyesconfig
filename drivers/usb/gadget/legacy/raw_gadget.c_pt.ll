; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/legacy/raw_gadget.c_pt.bc'
source_filename = "../drivers/usb/gadget/legacy/raw_gadget.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_raw_ep_io = type { i16, i16, i32, [0 x i8] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.raw_dev = type { %struct.kref, %struct.spinlock, ptr, %struct.usb_gadget_driver, ptr, i32, i8, ptr, ptr, i8, i8, i8, i32, [30 x %struct.raw_ep], i32, %struct.completion, %struct.raw_event_queue }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.raw_ep = type { ptr, i32, ptr, i8, ptr, i8, i8, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_event_queue = type { %struct.spinlock, %struct.semaphore, [16 x ptr], i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.usb_raw_init = type { [128 x i8], [128 x i8], i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.usb_raw_event = type { i32, i32, [0 x i8] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_raw_ep_info = type { [16 x i8], i32, %struct.usb_raw_ep_caps, %struct.usb_raw_ep_limits }
%struct.usb_raw_ep_caps = type { i8, [3 x i8] }
%struct.usb_raw_ep_limits = type { i16, i16, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }

@__UNIQUE_ID_description237 = internal constant [38 x i8] c"raw_gadget.description=USB Raw Gadget\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [35 x i8] c"raw_gadget.author=Andrey Konovalov\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [53 x i8] c"raw_gadget.file=drivers/usb/gadget/legacy/raw_gadget\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [23 x i8] c"raw_gadget.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_raw_gadget__293_1284_raw_misc_device_init6 = internal global ptr @raw_misc_device_init, section ".initcall6.init", align 4
@raw_misc_device = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 255, ptr @.str, ptr @raw_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_raw_misc_device_exit = internal global ptr @raw_misc_device_exit, section ".exitcall.exit", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"raw-gadget\00", [21 x i8] zeroinitializer }, align 32
@raw_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @raw_ioctl, ptr @raw_ioctl, ptr null, i32 0, ptr @raw_open, ptr null, ptr @raw_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@raw_ioctl_init.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 117, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"raw_gadget\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"raw_ioctl_init\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/usb/gadget/legacy/raw_gadget.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fail, device is not opened\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"USB Raw Gadget\00", [17 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gadget_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 329, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ignoring, device is not running\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gadget_setup\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gadget_setup._entry_ptr = internal global ptr @gadget_setup._entry, section ".printk_index", align 4
@gadget_setup.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.13, i8 0, i8 83, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"stalling, request already pending\0A\00", [61 x i8] zeroinitializer }, align 32
@gadget_setup._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.3, i32 346, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to queue event\0A\00", [41 x i8] zeroinitializer }, align 32
@gadget_setup._entry_ptr.16 = internal global ptr @gadget_setup._entry.14, section ".printk_index", align 4
@gadget_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 282, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"usb_ep_alloc_request failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gadget_bind\00", [20 x i8] zeroinitializer }, align 32
@gadget_bind._entry_ptr = internal global ptr @gadget_bind._entry, section ".printk_index", align 4
@gadget_bind._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.18, ptr @.str.3, i32 306, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@gadget_bind._entry_ptr.20 = internal global ptr @gadget_bind._entry.19, section ".printk_index", align 4
@raw_ioctl_run.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 126, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"raw_ioctl_run\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fail, device is not initialized\0A\00", [63 x i8] zeroinitializer }, align 32
@raw_ioctl_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.3, i32 518, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"fail, usb_gadget_probe_driver returned %d\0A\00", [53 x i8] zeroinitializer }, align 32
@raw_ioctl_run._entry_ptr = internal global ptr @raw_ioctl_run._entry, section ".printk_index", align 4
@raw_ioctl_event_fetch.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 -120, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"raw_ioctl_event_fetch\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fail, device is not running\0A\00", [35 x i8] zeroinitializer }, align 32
@raw_ioctl_event_fetch.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.26, i8 0, i8 -119, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fail, gadget is not bound\0A\00", [37 x i8] zeroinitializer }, align 32
@raw_ioctl_event_fetch.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.27, i8 0, i8 -117, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"event fetching interrupted\0A\00", [36 x i8] zeroinitializer }, align 32
@raw_ioctl_event_fetch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.24, ptr @.str.3, i32 561, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to fetch event\0A\00", [41 x i8] zeroinitializer }, align 32
@raw_ioctl_event_fetch._entry_ptr = internal global ptr @raw_ioctl_event_fetch._entry, section ".printk_index", align 4
@raw_process_ep0_io.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.29, ptr @.str.3, ptr @.str.25, i8 0, i8 -104, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"raw_process_ep0_io\00", [45 x i8] zeroinitializer }, align 32
@raw_process_ep0_io.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.29, ptr @.str.3, ptr @.str.26, i8 0, i8 -103, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@raw_process_ep0_io.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 -102, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fail, urb already queued\0A\00", [38 x i8] zeroinitializer }, align 32
@raw_process_ep0_io.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.29, ptr @.str.3, ptr @.str.31, i8 0, i8 -100, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fail, wrong direction\0A\00", [41 x i8] zeroinitializer }, align 32
@raw_process_ep0_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.3, i32 648, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fail, usb_ep_queue returned %d\0A\00", [32 x i8] zeroinitializer }, align 32
@raw_process_ep0_io._entry_ptr = internal global ptr @raw_process_ep0_io._entry, section ".printk_index", align 4
@raw_process_ep0_io.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.29, ptr @.str.3, ptr @.str.33, i8 0, i8 -92, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wait interrupted\0A\00", [46 x i8] zeroinitializer }, align 32
@raw_ioctl_ep_enable.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 0, i8 -64, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"raw_ioctl_ep_enable\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fail, bad endpoint maxpacket\0A\00", [34 x i8] zeroinitializer }, align 32
@raw_ioctl_ep_enable.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.25, i8 0, i8 -62, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@raw_ioctl_ep_enable.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.26, i8 0, i8 -61, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@raw_ioctl_ep_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.3, i32 801, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fail, usb_ep_enable returned %d\0A\00", [63 x i8] zeroinitializer }, align 32
@raw_ioctl_ep_enable._entry_ptr = internal global ptr @raw_ioctl_ep_enable._entry, section ".printk_index", align 4
@raw_ioctl_ep_enable._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.34, ptr @.str.3, i32 807, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"fail, usb_ep_alloc_request failed\0A\00", [61 x i8] zeroinitializer }, align 32
@raw_ioctl_ep_enable._entry_ptr.39 = internal global ptr @raw_ioctl_ep_enable._entry.37, section ".printk_index", align 4
@raw_ioctl_ep_enable.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.40, i8 0, i8 -52, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"fail, no gadget endpoints available\0A\00", [59 x i8] zeroinitializer }, align 32
@raw_ioctl_ep_disable.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.41, ptr @.str.3, ptr @.str.25, i8 0, i8 -48, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"raw_ioctl_ep_disable\00", [43 x i8] zeroinitializer }, align 32
@raw_ioctl_ep_disable.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.41, ptr @.str.3, ptr @.str.26, i8 0, i8 -46, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@raw_ioctl_ep_disable.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 0, i8 -45, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fail, invalid endpoint\0A\00", [40 x i8] zeroinitializer }, align 32
@raw_ioctl_ep_disable.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.41, ptr @.str.3, ptr @.str.43, i8 0, i8 -44, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fail, endpoint is not enabled\0A\00", [33 x i8] zeroinitializer }, align 32
@raw_ioctl_ep_disable.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.41, ptr @.str.3, ptr @.str.44, i8 0, i8 -42, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"fail, disable already in progress\0A\00", [61 x i8] zeroinitializer }, align 32
@raw_ioctl_ep_disable.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.41, ptr @.str.3, ptr @.str.45, i8 0, i8 -41, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"fail, waiting for urb completion\0A\00", [62 x i8] zeroinitializer }, align 32
@raw_process_ep_io.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.3, ptr @.str.25, i8 0, i8 -12, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"raw_process_ep_io\00", [46 x i8] zeroinitializer }, align 32
@raw_process_ep_io.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.3, ptr @.str.26, i8 0, i8 -11, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@raw_process_ep_io.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.3, ptr @.str.42, i8 0, i8 -10, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@raw_process_ep_io.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.3, ptr @.str.43, i8 0, i8 -8, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@raw_process_ep_io.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.3, ptr @.str.47, i8 0, i8 -7, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"fail, endpoint is already being disabled\0A\00", [54 x i8] zeroinitializer }, align 32
@raw_process_ep_io.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.3, ptr @.str.30, i8 0, i8 -6, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@raw_process_ep_io.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.3, ptr @.str.31, i8 0, i8 -4, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@raw_process_ep_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.46, ptr @.str.3, i32 1025, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@raw_process_ep_io._entry_ptr = internal global ptr @raw_process_ep_io._entry, section ".printk_index", align 4
@raw_process_ep_io.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.3, ptr @.str.33, i8 1, i8 2, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@raw_ioctl_configure.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.3, ptr @.str.25, i8 1, i8 18, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"raw_ioctl_configure\00", [44 x i8] zeroinitializer }, align 32
@raw_ioctl_configure.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.3, ptr @.str.26, i8 1, i8 19, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@raw_ioctl_vbus_draw.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.3, ptr @.str.25, i8 1, i8 24, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"raw_ioctl_vbus_draw\00", [44 x i8] zeroinitializer }, align 32
@raw_ioctl_vbus_draw.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.3, ptr @.str.26, i8 1, i8 25, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@raw_ioctl_eps_info.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.51, ptr @.str.3, ptr @.str.25, i8 1, i8 36, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"raw_ioctl_eps_info\00", [45 x i8] zeroinitializer }, align 32
@raw_ioctl_eps_info.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.51, ptr @.str.3, ptr @.str.26, i8 1, i8 37, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@raw_ioctl_ep0_stall.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.52, ptr @.str.3, ptr @.str.25, i8 0, i8 -76, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"raw_ioctl_ep0_stall\00", [44 x i8] zeroinitializer }, align 32
@raw_ioctl_ep0_stall.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.52, ptr @.str.3, ptr @.str.26, i8 0, i8 -75, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@raw_ioctl_ep0_stall.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.52, ptr @.str.3, ptr @.str.30, i8 0, i8 -74, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@raw_ioctl_ep0_stall.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.52, ptr @.str.3, ptr @.str.53, i8 0, i8 -73, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fail, no request pending\0A\00", [38 x i8] zeroinitializer }, align 32
@raw_ioctl_ep0_stall._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.3, i32 743, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"fail, usb_ep_set_halt returned %d\0A\00", [61 x i8] zeroinitializer }, align 32
@raw_ioctl_ep0_stall._entry_ptr = internal global ptr @raw_ioctl_ep0_stall._entry, section ".printk_index", align 4
@raw_ioctl_ep_set_clear_halt_wedge.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.55, ptr @.str.3, ptr @.str.25, i8 0, i8 -34, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"raw_ioctl_ep_set_clear_halt_wedge\00", [62 x i8] zeroinitializer }, align 32
@raw_ioctl_ep_set_clear_halt_wedge.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.55, ptr @.str.3, ptr @.str.26, i8 0, i8 -33, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@raw_ioctl_ep_set_clear_halt_wedge.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.55, ptr @.str.3, ptr @.str.42, i8 0, i8 -31, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@raw_ioctl_ep_set_clear_halt_wedge.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.55, ptr @.str.3, ptr @.str.43, i8 0, i8 -30, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@raw_ioctl_ep_set_clear_halt_wedge.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.55, ptr @.str.3, ptr @.str.56, i8 0, i8 -29, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fail, disable is in progress\0A\00", [34 x i8] zeroinitializer }, align 32
@raw_ioctl_ep_set_clear_halt_wedge.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.55, ptr @.str.3, ptr @.str.45, i8 0, i8 -27, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@raw_ioctl_ep_set_clear_halt_wedge.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.55, ptr @.str.3, ptr @.str.57, i8 0, i8 -26, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"fail, can't halt/wedge ISO endpoint\0A\00", [59 x i8] zeroinitializer }, align 32
@raw_ioctl_ep_set_clear_halt_wedge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 932, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@raw_ioctl_ep_set_clear_halt_wedge._entry_ptr = internal global ptr @raw_ioctl_ep_set_clear_halt_wedge._entry, section ".printk_index", align 4
@raw_ioctl_ep_set_clear_halt_wedge._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.55, ptr @.str.3, i32 937, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"fail, usb_ep_clear_halt returned %d\0A\00", [59 x i8] zeroinitializer }, align 32
@raw_ioctl_ep_set_clear_halt_wedge._entry_ptr.60 = internal global ptr @raw_ioctl_ep_set_clear_halt_wedge._entry.58, section ".printk_index", align 4
@raw_ioctl_ep_set_clear_halt_wedge._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.55, ptr @.str.3, i32 942, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"fail, usb_ep_set_wedge returned %d\0A\00", [60 x i8] zeroinitializer }, align 32
@raw_ioctl_ep_set_clear_halt_wedge._entry_ptr.63 = internal global ptr @raw_ioctl_ep_set_clear_halt_wedge._entry.61, section ".printk_index", align 4
@dev_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@raw_event_queue_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&queue->lock\00", [19 x i8] zeroinitializer }, align 32
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@raw_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 405, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"usb_gadget_unregister_driver() failed with %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"raw_release\00", [20 x i8] zeroinitializer }, align 32
@raw_release._entry_ptr = internal global ptr @raw_release._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 32, i64 21761, i64 21769, i64 21772, i64 1074025734, i64 1074025738, i64 1074025741, i64 1074025742, i64 1074025743, i64 1074287875, i64 1074287879, i64 1074353413, i64 1090606336, i64 2148029698, i64 2210419979, i64 3221771524, i64 3221771528]
@__sancov_gen_cov_switch_values.70 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 5]
@___asan_gen_.71 = private unnamed_addr constant [16 x i8] c"raw_misc_device\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1278, i32 26 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1280, i32 10 }
@___asan_gen_.77 = private unnamed_addr constant [9 x i8] c"raw_fops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1270, i32 37 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 469, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 477, i32 25 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 230, i32 6 }
@___asan_gen_.99 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 214, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 156, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 329, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 334, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 346, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 282, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 306, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 507, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 517, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 544, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 549, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 557, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 561, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 608, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 618, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 624, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 647, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 656, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 771, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 800, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 806, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 818, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 835, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 845, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 850, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 855, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 861, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 976, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 997, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1024, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 87, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1097, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1120, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1168, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 720, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 735, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 742, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 890, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 910, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 922, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 931, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 936, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 941, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 188, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 51, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 33, i32 31 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 34, i32 28 }
@___asan_gen_.303 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 35, i32 39 }
@___asan_gen_.305 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.311 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.312 = private constant [42 x i8] c"../drivers/usb/gadget/legacy/raw_gadget.c\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 403, i32 4 }
@llvm.compiler.used = appending global [103 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_raw_misc_device_exit, ptr @__initcall__kmod_raw_gadget__293_1284_raw_misc_device_init6, ptr @gadget_bind._entry, ptr @gadget_bind._entry.19, ptr @gadget_bind._entry_ptr, ptr @gadget_bind._entry_ptr.20, ptr @gadget_setup._entry, ptr @gadget_setup._entry.14, ptr @gadget_setup._entry_ptr, ptr @gadget_setup._entry_ptr.16, ptr @raw_ioctl_ep0_stall._entry, ptr @raw_ioctl_ep0_stall._entry_ptr, ptr @raw_ioctl_ep_enable._entry, ptr @raw_ioctl_ep_enable._entry.37, ptr @raw_ioctl_ep_enable._entry_ptr, ptr @raw_ioctl_ep_enable._entry_ptr.39, ptr @raw_ioctl_ep_set_clear_halt_wedge._entry, ptr @raw_ioctl_ep_set_clear_halt_wedge._entry.58, ptr @raw_ioctl_ep_set_clear_halt_wedge._entry.61, ptr @raw_ioctl_ep_set_clear_halt_wedge._entry_ptr, ptr @raw_ioctl_ep_set_clear_halt_wedge._entry_ptr.60, ptr @raw_ioctl_ep_set_clear_halt_wedge._entry_ptr.63, ptr @raw_ioctl_event_fetch._entry, ptr @raw_ioctl_event_fetch._entry_ptr, ptr @raw_ioctl_run._entry, ptr @raw_ioctl_run._entry_ptr, ptr @raw_misc_device_exit, ptr @raw_process_ep0_io._entry, ptr @raw_process_ep0_io._entry_ptr, ptr @raw_process_ep_io._entry, ptr @raw_process_ep_io._entry_ptr, ptr @raw_release._entry, ptr @raw_release._entry_ptr, ptr @raw_misc_device, ptr @.str, ptr @raw_fops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @init_completion.__key, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @dev_new.__key, ptr @.str.64, ptr @raw_event_queue_init.__key, ptr @.str.65, ptr @sema_init.__key, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_misc_device to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_setup._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_bind._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_ioctl_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_ioctl_event_fetch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_process_ep0_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_ioctl_ep_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_ioctl_ep_enable._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_process_ep_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_ioctl_ep0_stall._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_ioctl_ep_set_clear_halt_wedge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_ioctl_ep_set_clear_halt_wedge._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_ioctl_ep_set_clear_halt_wedge._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_event_queue_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @raw_misc_device_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @misc_register(ptr noundef nonnull @raw_misc_device) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @raw_misc_device_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @misc_deregister(ptr noundef nonnull @raw_misc_device) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raw_ioctl(ptr nocapture noundef readonly %fd, i32 noundef %cmd, i32 noundef %value) #2 align 64 {
entry:
  %io.i77 = alloca %struct.usb_raw_ep_io, align 8
  %io.i70 = alloca %struct.usb_raw_ep_io, align 8
  %io.i63 = alloca %struct.usb_raw_ep_io, align 8
  %io.i = alloca %struct.usb_raw_ep_io, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %fd, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 1090606336, label %sw.bb
    i32 21761, label %sw.bb1
    i32 -2146937598, label %sw.bb3
    i32 1074287875, label %sw.bb5
    i32 -1073195772, label %sw.bb7
    i32 1074353413, label %sw.bb9
    i32 1074025734, label %sw.bb11
    i32 1074287879, label %sw.bb13
    i32 -1073195768, label %sw.bb15
    i32 21769, label %sw.bb17
    i32 1074025738, label %sw.bb19
    i32 -2084547317, label %sw.bb21
    i32 21772, label %sw.bb23
    i32 1074025741, label %sw.bb25
    i32 1074025742, label %sw.bb27
    i32 1074025743, label %sw.bb29
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call fastcc i32 @raw_ioctl_init(ptr noundef nonnull %1, i32 noundef %value)
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call fastcc i32 @raw_ioctl_run(ptr noundef nonnull %1, i32 noundef %value)
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = tail call fastcc i32 @raw_ioctl_event_fetch(ptr noundef nonnull %1, i32 noundef %value)
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %io.i) #13
  %3 = inttoptr i32 %value to ptr
  %4 = ptrtoint ptr %io.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %io.i, align 8
  %call.i = call fastcc ptr @raw_alloc_io_data(ptr noundef nonnull %io.i, ptr noundef %3, i1 noundef zeroext true) #13
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %call.i to i32
  br label %raw_ioctl_ep0_write.exit

if.end.i:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #15
  %call3.i = call fastcc i32 @raw_process_ep0_io(ptr noundef nonnull %1, ptr noundef nonnull %io.i, ptr noundef %call.i, i1 noundef zeroext true) #13
  call void @kfree(ptr noundef %call.i) #13
  br label %raw_ioctl_ep0_write.exit

raw_ioctl_ep0_write.exit:                         ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %5, %if.then.i ], [ %call3.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %io.i) #13
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %io.i63) #13
  %6 = getelementptr inbounds %struct.usb_raw_ep_io, ptr %io.i63, i32 0, i32 2
  %7 = inttoptr i32 %value to ptr
  %8 = ptrtoint ptr %io.i63 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %io.i63, align 8
  %call.i64 = call fastcc ptr @raw_alloc_io_data(ptr noundef nonnull %io.i63, ptr noundef %7, i1 noundef zeroext false) #13
  %cmp.i.i65 = icmp ugt ptr %call.i64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i65, label %if.then.i66, label %if.end.i68

if.then.i66:                                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %call.i64 to i32
  br label %raw_ioctl_ep0_read.exit

if.end.i68:                                       ; preds = %sw.bb7
  %call3.i67 = call fastcc i32 @raw_process_ep0_io(ptr noundef nonnull %1, ptr noundef nonnull %io.i63, ptr noundef %call.i64, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i67)
  %cmp.i = icmp slt i32 %call3.i67, 0
  br i1 %cmp.i, label %if.end.i68.free.i_crit_edge, label %if.end5.i

if.end.i68.free.i_crit_edge:                      ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #15
  br label %free.i

if.end5.i:                                        ; preds = %if.end.i68
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %6, align 4
  %12 = call i32 @llvm.umin.i32(i32 %11, i32 %call3.i67) #13
  %add.i = add i32 %value, 8
  %13 = inttoptr i32 %add.i to ptr
  call void @__check_object_size(ptr noundef %call.i64, i32 noundef %12, i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #13
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i, label %if.end5.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i

if.end5.i.copy_to_user.exit.i_crit_edge:          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.i

if.end.i.i.i:                                     ; preds = %if.end5.i
  %14 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %13, i32 %12, i32 -1226833920) #16, !srcloc !237
  %asmresult.i.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.copy_to_user.exit.i_crit_edge

if.end.i.i.i.copy_to_user.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %call.i64, i32 noundef %12) #13
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %13, ptr noundef %call.i64, i32 noundef %12) #13
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge, %if.end5.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %12, %if.end5.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %12, %if.end.i.i.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool.not.i = icmp eq i32 %n.addr.0.i.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 %12, i32 -14
  br label %free.i

free.i:                                           ; preds = %copy_to_user.exit.i, %if.end.i68.free.i_crit_edge
  %ret.0.i = phi i32 [ %call3.i67, %if.end.i68.free.i_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @kfree(ptr noundef %call.i64) #13
  br label %raw_ioctl_ep0_read.exit

raw_ioctl_ep0_read.exit:                          ; preds = %free.i, %if.then.i66
  %retval.0.i69 = phi i32 [ %9, %if.then.i66 ], [ %ret.0.i, %free.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %io.i63) #13
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call10 = tail call fastcc i32 @raw_ioctl_ep_enable(ptr noundef nonnull %1, i32 noundef %value)
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call12 = tail call fastcc i32 @raw_ioctl_ep_disable(ptr noundef nonnull %1, i32 noundef %value)
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %io.i70) #13
  %15 = inttoptr i32 %value to ptr
  %16 = ptrtoint ptr %io.i70 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -1, ptr %io.i70, align 8
  %call.i71 = call fastcc ptr @raw_alloc_io_data(ptr noundef nonnull %io.i70, ptr noundef %15, i1 noundef zeroext true) #13
  %cmp.i.i72 = icmp ugt ptr %call.i71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i72, label %if.then.i73, label %if.end.i75

if.then.i73:                                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %call.i71 to i32
  br label %raw_ioctl_ep_write.exit

if.end.i75:                                       ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #15
  %call3.i74 = call fastcc i32 @raw_process_ep_io(ptr noundef nonnull %1, ptr noundef nonnull %io.i70, ptr noundef %call.i71, i1 noundef zeroext true) #13
  call void @kfree(ptr noundef %call.i71) #13
  br label %raw_ioctl_ep_write.exit

raw_ioctl_ep_write.exit:                          ; preds = %if.end.i75, %if.then.i73
  %retval.0.i76 = phi i32 [ %17, %if.then.i73 ], [ %call3.i74, %if.end.i75 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %io.i70) #13
  br label %cleanup

sw.bb15:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %io.i77) #13
  %18 = getelementptr inbounds %struct.usb_raw_ep_io, ptr %io.i77, i32 0, i32 2
  %19 = inttoptr i32 %value to ptr
  %20 = ptrtoint ptr %io.i77 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 -1, ptr %io.i77, align 8
  %call.i78 = call fastcc ptr @raw_alloc_io_data(ptr noundef nonnull %io.i77, ptr noundef %19, i1 noundef zeroext false) #13
  %cmp.i.i79 = icmp ugt ptr %call.i78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i79, label %if.then.i80, label %if.end.i83

if.then.i80:                                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %call.i78 to i32
  br label %raw_ioctl_ep_read.exit

if.end.i83:                                       ; preds = %sw.bb15
  %call3.i81 = call fastcc i32 @raw_process_ep_io(ptr noundef nonnull %1, ptr noundef nonnull %io.i77, ptr noundef %call.i78, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i81)
  %cmp.i82 = icmp slt i32 %call3.i81, 0
  br i1 %cmp.i82, label %if.end.i83.free.i107_crit_edge, label %if.end5.i88

if.end.i83.free.i107_crit_edge:                   ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #15
  br label %free.i107

if.end5.i88:                                      ; preds = %if.end.i83
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %18, align 4
  %24 = call i32 @llvm.umin.i32(i32 %23, i32 %call3.i81) #13
  %add.i84 = add i32 %value, 8
  %25 = inttoptr i32 %add.i84 to ptr
  call void @__check_object_size(ptr noundef %call.i78, i32 noundef %24, i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #13
  %call.i.i.i94 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i94, label %if.end5.i88.copy_to_user.exit.i105_crit_edge, label %if.end.i.i.i98

if.end5.i88.copy_to_user.exit.i105_crit_edge:     ; preds = %if.end5.i88
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.i105

if.end.i.i.i98:                                   ; preds = %if.end5.i88
  %26 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %25, i32 %24, i32 -1226833920) #16, !srcloc !237
  %asmresult.i.i.i96 = extractvalue { i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i96)
  %cmp.i6.i.i97 = icmp eq i32 %asmresult.i.i.i96, 0
  br i1 %cmp.i6.i.i97, label %if.then2.i.i.i101, label %if.end.i.i.i98.copy_to_user.exit.i105_crit_edge

if.end.i.i.i98.copy_to_user.exit.i105_crit_edge:  ; preds = %if.end.i.i.i98
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.i105

if.then2.i.i.i101:                                ; preds = %if.end.i.i.i98
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i99 = call zeroext i1 @__kasan_check_read(ptr noundef %call.i78, i32 noundef %24) #13
  %call.i12.i.i.i100 = call i32 @arm_copy_to_user(ptr noundef %25, ptr noundef %call.i78, i32 noundef %24) #13
  br label %copy_to_user.exit.i105

copy_to_user.exit.i105:                           ; preds = %if.then2.i.i.i101, %if.end.i.i.i98.copy_to_user.exit.i105_crit_edge, %if.end5.i88.copy_to_user.exit.i105_crit_edge
  %n.addr.0.i.i102 = phi i32 [ %24, %if.end5.i88.copy_to_user.exit.i105_crit_edge ], [ %call.i12.i.i.i100, %if.then2.i.i.i101 ], [ %24, %if.end.i.i.i98.copy_to_user.exit.i105_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i102)
  %tobool.not.i103 = icmp eq i32 %n.addr.0.i.i102, 0
  %spec.select.i104 = select i1 %tobool.not.i103, i32 %24, i32 -14
  br label %free.i107

free.i107:                                        ; preds = %copy_to_user.exit.i105, %if.end.i83.free.i107_crit_edge
  %ret.0.i106 = phi i32 [ %call3.i81, %if.end.i83.free.i107_crit_edge ], [ %spec.select.i104, %copy_to_user.exit.i105 ]
  call void @kfree(ptr noundef %call.i78) #13
  br label %raw_ioctl_ep_read.exit

raw_ioctl_ep_read.exit:                           ; preds = %free.i107, %if.then.i80
  %retval.0.i108 = phi i32 [ %21, %if.then.i80 ], [ %ret.0.i106, %free.i107 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %io.i77) #13
  br label %cleanup

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call18 = tail call fastcc i32 @raw_ioctl_configure(ptr noundef nonnull %1, i32 noundef %value)
  br label %cleanup

sw.bb19:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call20 = tail call fastcc i32 @raw_ioctl_vbus_draw(ptr noundef nonnull %1, i32 noundef %value)
  br label %cleanup

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call22 = tail call fastcc i32 @raw_ioctl_eps_info(ptr noundef nonnull %1, i32 noundef %value)
  br label %cleanup

sw.bb23:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call24 = tail call fastcc i32 @raw_ioctl_ep0_stall(ptr noundef nonnull %1, i32 noundef %value)
  br label %cleanup

sw.bb25:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call26 = tail call fastcc i32 @raw_ioctl_ep_set_clear_halt_wedge(ptr noundef nonnull %1, i32 noundef %value, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %cleanup

sw.bb27:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call28 = tail call fastcc i32 @raw_ioctl_ep_set_clear_halt_wedge(ptr noundef nonnull %1, i32 noundef %value, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %cleanup

sw.bb29:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call30 = tail call fastcc i32 @raw_ioctl_ep_set_clear_halt_wedge(ptr noundef nonnull %1, i32 noundef %value, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %raw_ioctl_ep_read.exit, %raw_ioctl_ep_write.exit, %sw.bb11, %sw.bb9, %raw_ioctl_ep0_read.exit, %raw_ioctl_ep0_write.exit, %sw.bb3, %sw.bb1, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ %call30, %sw.bb29 ], [ %call28, %sw.bb27 ], [ %call26, %sw.bb25 ], [ %call24, %sw.bb23 ], [ %call22, %sw.bb21 ], [ %call20, %sw.bb19 ], [ %call18, %sw.bb17 ], [ %retval.0.i108, %raw_ioctl_ep_read.exit ], [ %retval.0.i76, %raw_ioctl_ep_write.exit ], [ %call12, %sw.bb11 ], [ %call10, %sw.bb9 ], [ %retval.0.i69, %raw_ioctl_ep0_read.exit ], [ %retval.0.i, %raw_ioctl_ep0_write.exit ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raw_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef %fd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f_flags = getelementptr inbounds %struct.file, ptr %fd, i32 0, i32 7
  %0 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_flags, align 4
  %and = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1276) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i, i32 noundef 4) #13
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %call7.i.i.i, align 8
  %lock.i = getelementptr inbounds %struct.raw_dev, ptr %call7.i.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.64, ptr noundef nonnull @dev_new.__key, i16 noundef signext 3) #13
  %ep0_done.i = getelementptr inbounds %struct.raw_dev, ptr %call7.i.i.i, i32 0, i32 15
  %4 = ptrtoint ptr %ep0_done.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ep0_done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.raw_dev, ptr %call7.i.i.i, i32 0, i32 15, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @init_completion.__key) #13
  %queue.i = getelementptr inbounds %struct.raw_dev, ptr %call7.i.i.i, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %queue.i, ptr noundef nonnull @.str.65, ptr noundef nonnull @raw_event_queue_init.__key, i16 noundef signext 3) #13
  %sema.i.i = getelementptr inbounds %struct.raw_dev, ptr %call7.i.i.i, i32 0, i32 16, i32 1
  %wait_list1.i.i.i = getelementptr inbounds %struct.raw_dev, ptr %call7.i.i.i, i32 0, i32 16, i32 1, i32 2
  %5 = ptrtoint ptr %sema.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %sema.i.i, align 8
  %.compoundliteral.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds %struct.raw_dev, ptr %call7.i.i.i, i32 0, i32 16, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds %struct.raw_dev, ptr %call7.i.i.i, i32 0, i32 16, i32 1, i32 0, i32 2
  %7 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i.i, align 8
  %.compoundliteral.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds %struct.raw_dev, ptr %call7.i.i.i, i32 0, i32 16, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds %struct.raw_dev, ptr %call7.i.i.i, i32 0, i32 16, i32 1, i32 0, i32 4
  %9 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds %struct.raw_dev, ptr %call7.i.i.i, i32 0, i32 16, i32 1, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.66, ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds %struct.raw_dev, ptr %call7.i.i.i, i32 0, i32 16, i32 1, i32 0, i32 4, i32 3
  %11 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i.i, align 8
  %.compoundliteral.sroa.75.0..sroa_idx.i.i.i = getelementptr inbounds %struct.raw_dev, ptr %call7.i.i.i, i32 0, i32 16, i32 1, i32 0, i32 4, i32 4
  %12 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i.i.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds %struct.raw_dev, ptr %call7.i.i.i, i32 0, i32 16, i32 1, i32 0, i32 4, i32 5
  %13 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i.i.i, i32 0, i32 14)
  %14 = ptrtoint ptr %wait_list1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %wait_list1.i.i.i, ptr %wait_list1.i.i.i, align 8
  %.compoundliteral.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds %struct.raw_dev, ptr %call7.i.i.i, i32 0, i32 16, i32 1, i32 2, i32 1
  %15 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %wait_list1.i.i.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i.i.i, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull @.str.67, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %size.i.i = getelementptr inbounds %struct.raw_dev, ptr %call7.i.i.i, i32 0, i32 16, i32 3
  %16 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %size.i.i, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %fd, i32 0, i32 16
  %17 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i.i, ptr %private_data, align 4
  %state = getelementptr inbounds %struct.raw_dev, ptr %call7.i.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %state, align 8
  %19 = load ptr, ptr getelementptr inbounds (%struct.miscdevice, ptr @raw_misc_device, i32 0, i32 5), align 4
  %dev4 = getelementptr inbounds %struct.raw_dev, ptr %call7.i.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %dev4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raw_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %fd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %fd, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.raw_dev, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %state = getelementptr inbounds %struct.raw_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %state, align 4
  %gadget = getelementptr inbounds %struct.raw_dev, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gadget, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #13
  br label %out_put

if.end:                                           ; preds = %entry
  %gadget_registered = getelementptr inbounds %struct.raw_dev, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %gadget_registered to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %gadget_registered, align 4, !range !238
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not = icmp eq i8 %6, 0
  %7 = ptrtoint ptr %gadget_registered to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %gadget_registered, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #13
  br i1 %tobool6.not, label %if.end.out_put_crit_edge, label %if.then12

if.end.out_put_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

if.then12:                                        ; preds = %if.end
  %driver = getelementptr inbounds %struct.raw_dev, ptr %1, i32 0, i32 3
  %call13 = tail call i32 @usb_gadget_unregister_driver(ptr noundef %driver) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %if.then12.if.end21_crit_edge, label %do.end19

if.then12.if.end21_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

do.end19:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  %dev20 = getelementptr inbounds %struct.raw_dev, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.68, i32 noundef %call13) #18
  br label %if.end21

if.end21:                                         ; preds = %do.end19, %if.then12.if.end21_crit_edge
  tail call fastcc void @kref_put(ptr noundef %1)
  br label %out_put

out_put:                                          ; preds = %if.end21, %if.end.out_put_crit_edge, %if.then
  %ret.0 = phi i32 [ %call13, %if.end21 ], [ 0, %if.end.out_put_crit_edge ], [ 0, %if.then ]
  tail call fastcc void @kref_put(ptr noundef %1)
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @raw_ioctl_init(ptr noundef %dev, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  %arg = alloca %struct.usb_raw_init, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %arg) #13
  %0 = call ptr @memset(ptr %arg, i32 255, i32 257)
  %1 = inttoptr i32 %value to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 257, i32 -1226833920) #16, !srcloc !239
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !240

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %arg, i32 noundef 257) #13
  %3 = call i32 @llvm.read_register.i32(metadata !227) #13
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !241
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !242
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !243
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %arg, ptr noundef %1, i32 noundef 257) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #13, !srcloc !242
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !243
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !240

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i101 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 257, %entry.if.then11.i.i_crit_edge ], [ 257, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 257, %res.0.i.i101
  %add.ptr.i.i = getelementptr i8, ptr %arg, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i101)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %speed = getelementptr inbounds %struct.usb_raw_init, ptr %arg, i32 0, i32 2
  %7 = ptrtoint ptr %speed to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %speed, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %8, label %if.end.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %if.end.sw.epilog_crit_edge
    i8 2, label %if.end.sw.epilog_crit_edge105
    i8 3, label %if.end.sw.epilog_crit_edge106
    i8 5, label %if.end.sw.epilog_crit_edge107
  ]

if.end.sw.epilog_crit_edge107:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.sw.epilog_crit_edge106:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.sw.epilog_crit_edge105:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %speed to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %speed, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge105, %if.end.sw.epilog_crit_edge106, %if.end.sw.epilog_crit_edge107
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 128) #17
  %tobool4.not = icmp eq ptr %call7.i, null
  br i1 %tobool4.not, label %sw.epilog.cleanup_crit_edge, label %if.end6

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %sw.epilog
  %call7 = call i32 @strscpy(ptr noundef nonnull %call7.i, ptr noundef nonnull %arg, i32 noundef 128) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i98 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 128) #17
  %tobool12.not = icmp eq ptr %call7.i98, null
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %device_name = getelementptr inbounds %struct.usb_raw_init, ptr %arg, i32 0, i32 1
  %call16 = call i32 @strscpy(ptr noundef nonnull %call7.i98, ptr noundef %device_name, i32 noundef 128) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i) #13
  call void @kfree(ptr noundef nonnull %call7.i98) #13
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %lock = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 1
  %call25 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %state = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 5
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp28.not = icmp eq i32 %14, 1
  br i1 %cmp28.not, label %if.end43, label %do.body31

do.body31:                                        ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_ioctl_init.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_ioctl_init, %do.end42)) #13
          to label %if.then38 [label %do.end42], !srcloc !244

if.then38:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #15
  %dev39 = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 4
  %15 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev39, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_ioctl_init.__UNIQUE_ID_ddebug242, ptr noundef %16, ptr noundef nonnull @.str.4) #13
  br label %do.end42

do.end42:                                         ; preds = %if.then38, %do.body31
  call void @kfree(ptr noundef nonnull %call7.i) #13
  call void @kfree(ptr noundef nonnull %call7.i98) #13
  br label %out_unlock

if.end43:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %udc_name = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 2
  %17 = ptrtoint ptr %udc_name to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i, ptr %udc_name, align 4
  %driver = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 3
  %18 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.5, ptr %driver, align 4
  %19 = ptrtoint ptr %speed to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %speed, align 1
  %conv45 = zext i8 %20 to i32
  %max_speed = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %max_speed to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv45, ptr %max_speed, align 4
  %setup = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 3, i32 4
  %22 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @gadget_setup, ptr %setup, align 4
  %disconnect = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 3, i32 5
  %23 = ptrtoint ptr %disconnect to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @gadget_disconnect, ptr %disconnect, align 4
  %bind = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 3, i32 2
  %24 = ptrtoint ptr %bind to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @gadget_bind, ptr %bind, align 4
  %unbind = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 3, i32 3
  %25 = ptrtoint ptr %unbind to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @gadget_unbind, ptr %unbind, align 4
  %suspend = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 3, i32 6
  %26 = ptrtoint ptr %suspend to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @gadget_suspend, ptr %suspend, align 4
  %resume = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 3, i32 7
  %27 = ptrtoint ptr %resume to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @gadget_resume, ptr %resume, align 4
  %reset = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 3, i32 8
  %28 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @gadget_reset, ptr %reset, align 4
  %driver55 = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 3, i32 9
  %29 = ptrtoint ptr %driver55 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str, ptr %driver55, align 4
  %udc_name57 = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 3, i32 10
  %30 = ptrtoint ptr %udc_name57 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i98, ptr %udc_name57, align 4
  %match_existing_only = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 3, i32 12
  %31 = ptrtoint ptr %match_existing_only to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load = load i8, ptr %match_existing_only, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %match_existing_only, align 4
  %32 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %state, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.end43, %do.end42
  %ret.0 = phi i32 [ -22, %do.end42 ], [ 0, %if.end43 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call25) #13
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.then19, %if.then13, %if.then9, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %call7, %if.then9 ], [ %call16, %if.then19 ], [ %ret.0, %out_unlock ], [ -12, %if.then13 ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %sw.epilog.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %arg) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @raw_ioctl_run(ptr noundef %dev, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  br i1 %tobool.not, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %state = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp5.not = icmp eq i32 %1, 2
  br i1 %cmp5.not, label %if.end20, label %do.body8

do.body8:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_ioctl_run.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_ioctl_run, %out_unlock)) #13
          to label %if.then15 [label %out_unlock], !srcloc !244

if.then15:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #15
  %dev16 = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_ioctl_run.__UNIQUE_ID_ddebug243, ptr noundef %3, ptr noundef nonnull @.str.22) #13
  br label %out_unlock

if.end20:                                         ; preds = %do.body1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #13
  %driver = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 3
  %call22 = tail call i32 @usb_gadget_probe_driver(ptr noundef %driver) #13
  %call32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool37.not = icmp eq i32 %call22, 0
  br i1 %tobool37.not, label %if.end44, label %do.end41

do.end41:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %dev42 = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 4
  %4 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.23, i32 noundef %call22) #18
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 5, ptr %state, align 4
  br label %out_unlock

if.end44:                                         ; preds = %if.end20
  %gadget_registered = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 6
  %7 = ptrtoint ptr %gadget_registered to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %gadget_registered, align 4
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %state, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dev, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %dev, i32 1, i32 3, i32 1) #13
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dev, ptr %dev, i32 1, ptr elementtype(i32) %dev) #13, !srcloc !245
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end44.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !246

if.end44.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end44
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.out_unlock_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !240

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.out_unlock_crit_edge:             ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end44.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end44.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %dev, i32 noundef %.sink.i.i.i.i) #13
  br label %out_unlock

out_unlock:                                       ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.out_unlock_crit_edge, %do.end41, %if.then15, %do.body8
  %flags.0 = phi i32 [ %call32, %do.end41 ], [ %call2, %if.then15 ], [ %call32, %if.else.i.i.i.i.out_unlock_crit_edge ], [ %call32, %if.end15.sink.split.i.i.i.i ], [ %call2, %do.body8 ]
  %ret.0 = phi i32 [ %call22, %do.end41 ], [ -22, %if.then15 ], [ 0, %if.else.i.i.i.i.out_unlock_crit_edge ], [ 0, %if.end15.sink.split.i.i.i.i ], [ -22, %do.body8 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0) #13
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_unlock ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @raw_ioctl_event_fetch(ptr noundef %dev, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  %arg = alloca %struct.usb_raw_event, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg) #13
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %arg, align 4, !annotation !247
  %1 = getelementptr inbounds %struct.usb_raw_event, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !247
  %3 = inttoptr i32 %value to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 8, i32 -1226833920) #16, !srcloc !239
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !240

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %arg, i32 noundef 8) #13
  %5 = call i32 @llvm.read_register.i32(metadata !227) #13
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !241
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !242
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !243
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %arg, ptr noundef %3, i32 noundef 8) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #13, !srcloc !242
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !243
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body1, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !240

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i154 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %entry.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i154
  %add.ptr.i.i = getelementptr i8, ptr %arg, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i154)
  br label %cleanup

do.body1:                                         ; preds = %if.end.i.i
  %lock = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 1
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %state = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 5
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp6.not = icmp eq i32 %10, 3
  br i1 %cmp6.not, label %if.end22, label %do.body9

do.body9:                                         ; preds = %do.body1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_ioctl_event_fetch.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_ioctl_event_fetch, %do.end20)) #13
          to label %if.then16 [label %do.end20], !srcloc !244

if.then16:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  %dev17 = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 4
  %11 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev17, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_ioctl_event_fetch.__UNIQUE_ID_ddebug244, ptr noundef %12, ptr noundef nonnull @.str.25) #13
  br label %do.end20

do.end20:                                         ; preds = %if.then16, %do.body9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  br label %cleanup

if.end22:                                         ; preds = %do.body1
  %gadget = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 7
  %13 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gadget, align 4
  %tobool23.not = icmp eq ptr %14, null
  br i1 %tobool23.not, label %do.body25, label %if.end45

do.body25:                                        ; preds = %if.end22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_ioctl_event_fetch.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_ioctl_event_fetch, %do.end43)) #13
          to label %if.then39 [label %do.end43], !srcloc !244

if.then39:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #15
  %dev40 = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 4
  %15 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev40, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_ioctl_event_fetch.__UNIQUE_ID_ddebug245, ptr noundef %16, ptr noundef nonnull @.str.26) #13
  br label %do.end43

do.end43:                                         ; preds = %if.then39, %do.body25
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  br label %cleanup

if.end45:                                         ; preds = %if.end22
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  %queue = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 16
  %sema.i = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 16, i32 1
  %call.i = call i32 @down_interruptible(ptr noundef %sema.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body2.i, label %if.then.i150

if.then.i150:                                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  %17 = inttoptr i32 %call.i to ptr
  br label %raw_event_queue_fetch.exit

do.body2.i:                                       ; preds = %if.end45
  %call4.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %queue) #13
  %size.i = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 16, i32 3
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool7.not.i = icmp eq i32 %19, 0
  br i1 %tobool7.not.i, label %if.end72.thread, label %if.end38.i, !prof !246

if.end72.thread:                                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 103, i32 noundef 9, ptr noundef null) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue, i32 noundef %call4.i) #13
  br label %do.end77

if.end38.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  %events.i = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 16, i32 2
  %20 = ptrtoint ptr %events.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %events.i, align 4
  %dec.i = add i32 %19, -1
  %22 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %dec.i, ptr %size.i, align 4
  %arrayidx43.i = getelementptr %struct.raw_dev, ptr %dev, i32 0, i32 16, i32 2, i32 1
  %mul.i = shl i32 %dec.i, 2
  %23 = call ptr @memmove(ptr %events.i, ptr %arrayidx43.i, i32 %mul.i)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue, i32 noundef %call4.i) #13
  br label %raw_event_queue_fetch.exit

raw_event_queue_fetch.exit:                       ; preds = %if.end38.i, %if.then.i150
  %retval.0.i151 = phi ptr [ %17, %if.then.i150 ], [ %21, %if.end38.i ]
  %cmp49 = icmp eq ptr %retval.0.i151, inttoptr (i32 -4 to ptr)
  br i1 %cmp49, label %do.body52, label %if.end72

do.body52:                                        ; preds = %raw_event_queue_fetch.exit
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_ioctl_event_fetch.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_ioctl_event_fetch, %cleanup)) #13
          to label %if.then66 [label %cleanup], !srcloc !244

if.then66:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gadget, align 4
  %dev68 = getelementptr inbounds %struct.usb_gadget, ptr %25, i32 0, i32 11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_ioctl_event_fetch.__UNIQUE_ID_ddebug246, ptr noundef %dev68, ptr noundef nonnull @.str.27) #13
  br label %cleanup

if.end72:                                         ; preds = %raw_event_queue_fetch.exit
  %cmp.i = icmp ugt ptr %retval.0.i151, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end72.do.end77_crit_edge, label %if.end96

if.end72.do.end77_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end77

do.end77:                                         ; preds = %if.end72.do.end77_crit_edge, %if.end72.thread
  %26 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %gadget, align 4
  %dev79 = getelementptr inbounds %struct.usb_gadget, ptr %27, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev79, ptr noundef nonnull @.str.28) #18
  %call89 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %28 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 5, ptr %state, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call89) #13
  br label %cleanup

if.end96:                                         ; preds = %if.end72
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %1, align 4
  %length98 = getelementptr inbounds %struct.usb_raw_event, ptr %retval.0.i151, i32 0, i32 1
  %31 = ptrtoint ptr %length98 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length98, align 4
  %33 = call i32 @llvm.umin.i32(i32 %30, i32 %32)
  %add = add i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp9.i.i = icmp slt i32 %add, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end96
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.if.then104_crit_edge, label %if.then27.i.i, !prof !240

land.rhs16.i.i.if.then104_crit_edge:              ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then104

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %if.then104

if.then.i.i.i:                                    ; preds = %if.end96
  call void @__check_object_size(ptr noundef %retval.0.i151, i32 noundef %add, i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #13
  %call.i.i144 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i144, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i147

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.end.i.i147:                                    ; preds = %if.then.i.i.i
  %34 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %add, i32 -1226833920) #16, !srcloc !237
  %asmresult.i.i145 = extractvalue { i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i145)
  %cmp.i6.i146 = icmp eq i32 %asmresult.i.i145, 0
  br i1 %cmp.i6.i146, label %if.then2.i.i, label %if.end.i.i147.copy_to_user.exit_crit_edge

if.end.i.i147.copy_to_user.exit_crit_edge:        ; preds = %if.end.i.i147
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i147
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i148 = call zeroext i1 @__kasan_check_read(ptr noundef %retval.0.i151, i32 noundef %add) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef %retval.0.i151, i32 noundef %add) #13
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i147.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i149 = phi i32 [ %add, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %add, %if.end.i.i147.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i149)
  %tobool103.not = icmp eq i32 %n.addr.0.i149, 0
  br i1 %tobool103.not, label %if.end105, label %copy_to_user.exit.if.then104_crit_edge

copy_to_user.exit.if.then104_crit_edge:           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then104

if.then104:                                       ; preds = %copy_to_user.exit.if.then104_crit_edge, %if.then27.i.i, %land.rhs16.i.i.if.then104_crit_edge
  call void @kfree(ptr noundef %retval.0.i151) #13
  br label %cleanup

if.end105:                                        ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef %retval.0.i151) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end105, %if.then104, %do.end77, %if.then66, %do.body52, %do.end43, %do.end20, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %do.end20 ], [ -19, %do.end77 ], [ -14, %if.then104 ], [ 0, %if.end105 ], [ -16, %do.end43 ], [ -4, %if.then66 ], [ -14, %if.then11.i.i ], [ -4, %do.body52 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @raw_ioctl_ep_enable(ptr noundef %dev, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %value to ptr
  %call = tail call ptr @memdup_user(ptr noundef %0, i32 noundef 9) #13
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %wMaxPacketSize.i, align 1
  %4 = and i16 %3, -249
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp = icmp eq i16 %4, 0
  br i1 %cmp, label %do.body, label %do.body14

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_ioctl_ep_enable.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_ioctl_ep_enable, %do.end)) #13
          to label %if.then9 [label %do.end], !srcloc !244

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %dev10 = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 4
  %5 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_ioctl_ep_enable.__UNIQUE_ID_ddebug260, ptr noundef %6, ptr noundef nonnull @.str.35) #13
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  tail call void @kfree(ptr noundef %call) #13
  br label %cleanup

do.body14:                                        ; preds = %if.end
  %lock = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 1
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %state = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 5
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp23.not = icmp eq i32 %8, 3
  br i1 %cmp23.not, label %if.end45, label %do.body26

do.body26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_ioctl_ep_enable.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_ioctl_ep_enable, %out_free)) #13
          to label %if.then40 [label %out_free], !srcloc !244

if.then40:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #15
  %dev41 = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 4
  %9 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev41, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_ioctl_ep_enable.__UNIQUE_ID_ddebug261, ptr noundef %10, ptr noundef nonnull @.str.25) #13
  br label %out_free

if.end45:                                         ; preds = %do.body14
  %gadget = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 7
  %11 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gadget, align 4
  %tobool46.not = icmp eq ptr %12, null
  br i1 %tobool46.not, label %do.body48, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end45
  %eps_num = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 14
  %13 = ptrtoint ptr %eps_num to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %eps_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp68195 = icmp sgt i32 %14, 0
  br i1 %cmp68195, label %for.body.lr.ph, label %for.cond.preheader.do.body119_crit_edge

for.cond.preheader.do.body119_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body119

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %call, i32 0, i32 2
  br label %for.body

do.body48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_ioctl_ep_enable.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_ioctl_ep_enable, %out_free)) #13
          to label %if.then62 [label %out_free], !srcloc !244

if.then62:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #15
  %dev63 = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 4
  %15 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev63, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_ioctl_ep_enable.__UNIQUE_ID_ddebug262, ptr noundef %16, ptr noundef nonnull @.str.26) #13
  br label %out_free

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0196 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %state70 = getelementptr %struct.raw_dev, ptr %dev, i32 0, i32 13, i32 %i.0196, i32 1
  %17 = ptrtoint ptr %state70 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp71.not = icmp eq i32 %18, 0
  br i1 %cmp71.not, label %if.end74, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end74:                                         ; preds = %for.body
  %addr = getelementptr %struct.raw_dev, ptr %dev, i32 0, i32 13, i32 %i.0196, i32 3
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %addr, align 4
  %21 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bEndpointAddress.i, align 1
  %23 = and i8 %22, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %20)
  %cmp77.not = icmp eq i8 %23, %20
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %cmp81.not = icmp eq i8 %20, -1
  %or.cond = or i1 %cmp81.not, %cmp77.not
  br i1 %or.cond, label %if.end84, label %if.end74.for.inc_crit_edge

if.end74.for.inc_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end84:                                         ; preds = %if.end74
  %24 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gadget, align 4
  %ep86 = getelementptr %struct.raw_dev, ptr %dev, i32 0, i32 13, i32 %i.0196, i32 2
  %26 = ptrtoint ptr %ep86 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ep86, align 4
  %call87 = tail call i32 @usb_gadget_ep_match_desc(ptr noundef %25, ptr noundef %27, ptr noundef %call, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end84.for.inc_crit_edge, label %if.end90

if.end84.for.inc_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end90:                                         ; preds = %if.end84
  %arrayidx.le = getelementptr %struct.raw_dev, ptr %dev, i32 0, i32 13, i32 %i.0196
  %28 = ptrtoint ptr %ep86 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ep86, align 4
  %desc92 = getelementptr inbounds %struct.usb_ep, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %desc92 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call, ptr %desc92, align 4
  %31 = load ptr, ptr %ep86, align 4
  %call94 = tail call i32 @usb_ep_enable(ptr noundef %31) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %do.end100, label %if.end103

do.end100:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %gadget, align 4
  %dev102 = getelementptr inbounds %struct.usb_gadget, ptr %33, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev102, ptr noundef nonnull @.str.36, i32 noundef %call94) #18
  br label %out_free

if.end103:                                        ; preds = %if.end90
  %34 = ptrtoint ptr %ep86 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ep86, align 4
  %call105 = tail call ptr @usb_ep_alloc_request(ptr noundef %35, i32 noundef 2592) #13
  %req = getelementptr %struct.raw_dev, ptr %dev, i32 0, i32 13, i32 %i.0196, i32 4
  %36 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call105, ptr %req, align 4
  %tobool107.not = icmp eq ptr %call105, null
  br i1 %tobool107.not, label %do.end111, label %if.end116

do.end111:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %gadget, align 4
  %dev113 = getelementptr inbounds %struct.usb_gadget, ptr %38, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev113, ptr noundef nonnull @.str.38) #18
  %39 = ptrtoint ptr %ep86 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ep86, align 4
  %call115 = tail call i32 @usb_ep_disable(ptr noundef %40) #13
  br label %out_free

if.end116:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %state70 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %state70, align 4
  %42 = ptrtoint ptr %ep86 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ep86, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %arrayidx.le, ptr %43, align 4
  br label %out_unlock

for.inc:                                          ; preds = %if.end84.for.inc_crit_edge, %if.end74.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0196, 1
  %45 = ptrtoint ptr %eps_num to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %eps_num, align 4
  %cmp68 = icmp slt i32 %inc, %46
  br i1 %cmp68, label %for.inc.for.body_crit_edge, label %for.inc.do.body119_crit_edge

for.inc.do.body119_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body119

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.body119:                                       ; preds = %for.inc.do.body119_crit_edge, %for.cond.preheader.do.body119_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_ioctl_ep_enable.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_ioctl_ep_enable, %out_free)) #13
          to label %if.then133 [label %out_free], !srcloc !244

if.then133:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %gadget, align 4
  %dev135 = getelementptr inbounds %struct.usb_gadget, ptr %48, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_ioctl_ep_enable.__UNIQUE_ID_ddebug263, ptr noundef %dev135, ptr noundef nonnull @.str.40) #13
  br label %out_free

out_free:                                         ; preds = %if.then133, %do.body119, %do.end111, %do.end100, %if.then62, %do.body48, %if.then40, %do.body26
  %ret.0 = phi i32 [ %call94, %do.end100 ], [ -12, %do.end111 ], [ -22, %if.then40 ], [ -16, %if.then62 ], [ -16, %if.then133 ], [ -22, %do.body26 ], [ -16, %do.body48 ], [ -16, %do.body119 ]
  tail call void @kfree(ptr noundef %call) #13
  br label %out_unlock

out_unlock:                                       ; preds = %out_free, %if.end116
  %ret.1 = phi i32 [ %ret.0, %out_free ], [ %i.0196, %if.end116 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call18) #13
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %do.end, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ -22, %do.end ], [ %ret.1, %out_unlock ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @raw_ioctl_ep_disable(ptr noundef %dev, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %state = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp5.not = icmp eq i32 %1, 3
  br i1 %cmp5.not, label %if.end17, label %do.body7

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_ioctl_ep_disable.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_ioctl_ep_disable, %out_unlock)) #13
          to label %if.then13 [label %out_unlock], !srcloc !244

if.then13:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  %dev14 = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_ioctl_ep_disable.__UNIQUE_ID_ddebug264, ptr noundef %3, ptr noundef nonnull @.str.25) #13
  br label %out_unlock

if.end17:                                         ; preds = %entry
  %gadget = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 7
  %4 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gadget, align 4
  %tobool18.not = icmp eq ptr %5, null
  br i1 %tobool18.not, label %do.body20, label %if.end39

do.body20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_ioctl_ep_disable.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_ioctl_ep_disable, %out_unlock)) #13
          to label %if.then34 [label %out_unlock], !srcloc !244

if.then34:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #15
  %dev35 = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 4
  %6 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev35, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_ioctl_ep_disable.__UNIQUE_ID_ddebug265, ptr noundef %7, ptr noundef nonnull @.str.26) #13
  br label %out_unlock

if.end39:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp40 = icmp slt i32 %value, 0
  br i1 %cmp40, label %if.end39.do.body45_crit_edge, label %lor.lhs.false

if.end39.do.body45_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body45

lor.lhs.false:                                    ; preds = %if.end39
  %eps_num = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 14
  %8 = ptrtoint ptr %eps_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %eps_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %value)
  %cmp42.not = icmp sgt i32 %9, %value
  br i1 %cmp42.not, label %if.end64, label %lor.lhs.false.do.body45_crit_edge

lor.lhs.false.do.body45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body45

do.body45:                                        ; preds = %lor.lhs.false.do.body45_crit_edge, %if.end39.do.body45_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_ioctl_ep_disable.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_ioctl_ep_disable, %out_unlock)) #13
          to label %if.then59 [label %out_unlock], !srcloc !244

if.then59:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #15
  %dev60 = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 4
  %10 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev60, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_ioctl_ep_disable.__UNIQUE_ID_ddebug266, ptr noundef %11, ptr noundef nonnull @.str.42) #13
  br label %out_unlock

if.end64:                                         ; preds = %lor.lhs.false
  %state65 = getelementptr %struct.raw_dev, ptr %dev, i32 0, i32 13, i32 %value, i32 1
  %12 = ptrtoint ptr %state65 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp66 = icmp eq i32 %13, 0
  br i1 %cmp66, label %do.body69, label %if.end89

do.body69:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_ioctl_ep_disable.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_ioctl_ep_disable, %out_unlock)) #13
          to label %if.then83 [label %out_unlock], !srcloc !244

if.then83:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gadget, align 4
  %dev85 = getelementptr inbounds %struct.usb_gadget, ptr %15, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_ioctl_ep_disable.__UNIQUE_ID_ddebug267, ptr noundef %dev85, ptr noundef nonnull @.str.43) #13
  br label %out_unlock

if.end89:                                         ; preds = %if.end64
  %disabling = getelementptr %struct.raw_dev, ptr %dev, i32 0, i32 13, i32 %value, i32 6
  %16 = ptrtoint ptr %disabling to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %disabling, align 1, !range !238
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool92.not = icmp eq i8 %17, 0
  br i1 %tobool92.not, label %if.end114, label %do.body94

do.body94:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_ioctl_ep_disable.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_ioctl_ep_disable, %out_unlock)) #13
          to label %if.then108 [label %out_unlock], !srcloc !244

if.then108:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gadget, align 4
  %dev110 = getelementptr inbounds %struct.usb_gadget, ptr %19, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_ioctl_ep_disable.__UNIQUE_ID_ddebug268, ptr noundef %dev110, ptr noundef nonnull @.str.44) #13
  br label %out_unlock

if.end114:                                        ; preds = %if.end89
  %urb_queued = getelementptr %struct.raw_dev, ptr %dev, i32 0, i32 13, i32 %value, i32 5
  %20 = ptrtoint ptr %urb_queued to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %urb_queued, align 4, !range !238
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool117.not = icmp eq i8 %21, 0
  br i1 %tobool117.not, label %if.end139, label %do.body119

do.body119:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_ioctl_ep_disable.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_ioctl_ep_disable, %out_unlock)) #13
          to label %if.then133 [label %out_unlock], !srcloc !244

if.then133:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gadget, align 4
  %dev135 = getelementptr inbounds %struct.usb_gadget, ptr %23, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_ioctl_ep_disable.__UNIQUE_ID_ddebug269, ptr noundef %dev135, ptr noundef nonnull @.str.45) #13
  br label %out_unlock

if.end139:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %disabling to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %disabling, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #13
  %ep = getelementptr %struct.raw_dev, ptr %dev, i32 0, i32 13, i32 %value, i32 2
  %25 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ep, align 4
  %call146 = tail call i32 @usb_ep_disable(ptr noundef %26) #13
  %call156 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %27 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ep, align 4
  %req = getelementptr %struct.raw_dev, ptr %dev, i32 0, i32 13, i32 %value, i32 4
  %29 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %req, align 4
  tail call void @usb_ep_free_request(ptr noundef %28, ptr noundef %30) #13
  %31 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ep, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %desc, align 4
  tail call void @kfree(ptr noundef %34) #13
  %35 = ptrtoint ptr %state65 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %state65, align 4
  %36 = ptrtoint ptr %disabling to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %disabling, align 1
  br label %out_unlock

out_unlock:                                       ; preds = %if.end139, %if.then133, %do.body119, %if.then108, %do.body94, %if.then83, %do.body69, %if.then59, %do.body45, %if.then34, %do.body20, %if.then13, %do.body7
  %flags.0 = phi i32 [ %call156, %if.end139 ], [ %call2, %if.then13 ], [ %call2, %if.then34 ], [ %call2, %if.then59 ], [ %call2, %if.then83 ], [ %call2, %if.then108 ], [ %call2, %if.then133 ], [ %call2, %do.body7 ], [ %call2, %do.body20 ], [ %call2, %do.body45 ], [ %call2, %do.body69 ], [ %call2, %do.body94 ], [ %call2, %do.body119 ]
  %ret.0 = phi i32 [ 0, %if.end139 ], [ -22, %if.then13 ], [ -16, %if.then34 ], [ -16, %if.then59 ], [ -22, %if.then83 ], [ -22, %if.then108 ], [ -22, %if.then133 ], [ -22, %do.body7 ], [ -16, %do.body20 ], [ -16, %do.body45 ], [ -22, %do.body69 ], [ -22, %do.body94 ], [ -22, %do.body119 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0) #13
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @raw_ioctl_configure(ptr noundef %dev, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  br i1 %tobool.not, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %state = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp5.not = icmp eq i32 %1, 3
  br i1 %cmp5.not, label %if.end20, label %do.body8

do.body8:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_ioctl_configure.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_ioctl_configure, %out_unlock)) #13
          to label %if.then15 [label %out_unlock], !srcloc !244

if.then15:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #15
  %dev16 = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_ioctl_configure.__UNIQUE_ID_ddebug287, ptr noundef %3, ptr noundef nonnull @.str.25) #13
  br label %out_unlock

if.end20:                                         ; preds = %do.body1
  %gadget = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 7
  %4 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gadget, align 4
  %tobool21.not = icmp eq ptr %5, null
  br i1 %tobool21.not, label %do.body23, label %if.end42

do.body23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_ioctl_configure.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_ioctl_configure, %out_unlock)) #13
          to label %if.then37 [label %out_unlock], !srcloc !244

if.then37:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #15
  %dev38 = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 4
  %6 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev38, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_ioctl_configure.__UNIQUE_ID_ddebug288, ptr noundef %7, ptr noundef nonnull @.str.26) #13
  br label %out_unlock

if.end42:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usb_gadget_set_state(ptr noundef nonnull %5, i32 noundef 7) #13
  br label %out_unlock

out_unlock:                                       ; preds = %if.end42, %if.then37, %do.body23, %if.then15, %do.body8
  %ret.0 = phi i32 [ 0, %if.end42 ], [ -22, %if.then15 ], [ -16, %if.then37 ], [ -22, %do.body8 ], [ -16, %do.body23 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #13
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_unlock ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @raw_ioctl_vbus_draw(ptr noundef %dev, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %state = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp5.not = icmp eq i32 %1, 3
  br i1 %cmp5.not, label %if.end17, label %do.body7

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_ioctl_vbus_draw.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_ioctl_vbus_draw, %out_unlock)) #13
          to label %if.then13 [label %out_unlock], !srcloc !244

if.then13:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  %dev14 = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_ioctl_vbus_draw.__UNIQUE_ID_ddebug289, ptr noundef %3, ptr noundef nonnull @.str.25) #13
  br label %out_unlock

if.end17:                                         ; preds = %entry
  %gadget = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 7
  %4 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gadget, align 4
  %tobool18.not = icmp eq ptr %5, null
  br i1 %tobool18.not, label %do.body20, label %if.end39

do.body20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_ioctl_vbus_draw.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_ioctl_vbus_draw, %out_unlock)) #13
          to label %if.then34 [label %out_unlock], !srcloc !244

if.then34:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #15
  %dev35 = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 4
  %6 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev35, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_ioctl_vbus_draw.__UNIQUE_ID_ddebug290, ptr noundef %7, ptr noundef nonnull @.str.26) #13
  br label %out_unlock

if.end39:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %mul = shl i32 %value, 1
  %call41 = tail call i32 @usb_gadget_vbus_draw(ptr noundef nonnull %5, i32 noundef %mul) #13
  br label %out_unlock

out_unlock:                                       ; preds = %if.end39, %if.then34, %do.body20, %if.then13, %do.body7
  %ret.0 = phi i32 [ 0, %if.end39 ], [ -22, %if.then13 ], [ -16, %if.then34 ], [ -22, %do.body7 ], [ -16, %do.body20 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #13
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @raw_ioctl_eps_info(ptr noundef %dev, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 960) #17
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %do.body1

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %state = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp6.not = icmp eq i32 %2, 3
  br i1 %cmp6.not, label %if.end22, label %do.body9

do.body9:                                         ; preds = %do.body1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_ioctl_eps_info.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_ioctl_eps_info, %do.end20)) #13
          to label %if.then16 [label %do.end20], !srcloc !244

if.then16:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  %dev17 = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 4
  %3 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_ioctl_eps_info.__UNIQUE_ID_ddebug291, ptr noundef %4, ptr noundef nonnull @.str.25) #13
  br label %do.end20

do.end20:                                         ; preds = %if.then16, %do.body9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  br label %out_free

if.end22:                                         ; preds = %do.body1
  %gadget = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 7
  %5 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gadget, align 4
  %tobool23.not = icmp eq ptr %6, null
  br i1 %tobool23.not, label %do.body25, label %if.end45

do.body25:                                        ; preds = %if.end22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_ioctl_eps_info.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_ioctl_eps_info, %do.end43)) #13
          to label %if.then39 [label %do.end43], !srcloc !244

if.then39:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #15
  %dev40 = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 4
  %7 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev40, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_ioctl_eps_info.__UNIQUE_ID_ddebug292, ptr noundef %8, ptr noundef nonnull @.str.26) #13
  br label %do.end43

do.end43:                                         ; preds = %if.then39, %do.body25
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  br label %out_free

if.end45:                                         ; preds = %if.end22
  %9 = call ptr @memset(ptr %call7.i, i32 0, i32 960)
  %eps_num = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 14
  %10 = ptrtoint ptr %eps_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %eps_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp46109 = icmp sgt i32 %11, 0
  br i1 %cmp46109, label %if.end45.for.body_crit_edge, label %if.end45.for.end_crit_edge

if.end45.for.end_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end45.for.body_crit_edge:                      ; preds = %if.end45
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end45.for.body_crit_edge
  %i.0110 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end45.for.body_crit_edge ]
  %arrayidx49 = getelementptr [30 x %struct.usb_raw_ep_info], ptr %call7.i, i32 0, i32 %i.0110
  %ep51 = getelementptr %struct.raw_dev, ptr %dev, i32 0, i32 13, i32 %i.0110, i32 2
  %12 = ptrtoint ptr %ep51 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ep51, align 4
  %name52 = getelementptr inbounds %struct.usb_ep, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %name52 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name52, align 4
  %call53 = tail call i32 @strscpy(ptr noundef %arrayidx49, ptr noundef %15, i32 noundef 16) #13
  %addr = getelementptr %struct.raw_dev, ptr %dev, i32 0, i32 13, i32 %i.0110, i32 3
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %addr, align 4
  %conv54 = zext i8 %17 to i32
  %addr57 = getelementptr [30 x %struct.usb_raw_ep_info], ptr %call7.i, i32 0, i32 %i.0110, i32 1
  %18 = ptrtoint ptr %addr57 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv54, ptr %addr57, align 8
  %19 = ptrtoint ptr %ep51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ep51, align 4
  %caps = getelementptr inbounds %struct.usb_ep, ptr %20, i32 0, i32 4
  %caps61 = getelementptr [30 x %struct.usb_raw_ep_info], ptr %call7.i, i32 0, i32 %i.0110, i32 2
  %21 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i = load i8, ptr %caps, align 4
  %bf.lshr.i = and i8 %bf.load.i, -128
  %22 = ptrtoint ptr %caps61 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load1.i = load i8, ptr %caps61, align 4
  %bf.clear.i = and i8 %bf.load1.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.lshr.i
  store i8 %bf.set.i, ptr %caps61, align 4
  %bf.load2.i = load i8, ptr %caps, align 4
  %bf.clear4.i = and i8 %bf.load2.i, 64
  %bf.clear9.i = and i8 %bf.set.i, -65
  %bf.set10.i = or i8 %bf.clear9.i, %bf.clear4.i
  store i8 %bf.set10.i, ptr %caps61, align 4
  %bf.load12.i = load i8, ptr %caps, align 4
  %bf.clear14.i = and i8 %bf.load12.i, 32
  %bf.clear19.i = and i8 %bf.set10.i, -33
  %bf.set20.i = or i8 %bf.clear19.i, %bf.clear14.i
  store i8 %bf.set20.i, ptr %caps61, align 4
  %bf.load22.i = load i8, ptr %caps, align 4
  %bf.clear24.i = and i8 %bf.load22.i, 16
  %bf.clear29.i = and i8 %bf.set20.i, -17
  %bf.set30.i = or i8 %bf.clear29.i, %bf.clear24.i
  store i8 %bf.set30.i, ptr %caps61, align 4
  %bf.load32.i = load i8, ptr %caps, align 4
  %bf.clear34.i = and i8 %bf.load32.i, 8
  %bf.clear39.i = and i8 %bf.set30.i, -9
  %bf.set40.i = or i8 %bf.clear39.i, %bf.clear34.i
  store i8 %bf.set40.i, ptr %caps61, align 4
  %bf.load42.i = load i8, ptr %caps, align 4
  %bf.clear44.i = and i8 %bf.load42.i, 4
  %bf.clear49.i = and i8 %bf.set40.i, -5
  %bf.set50.i = or i8 %bf.clear49.i, %bf.clear44.i
  store i8 %bf.set50.i, ptr %caps61, align 4
  %limits = getelementptr [30 x %struct.usb_raw_ep_info], ptr %call7.i, i32 0, i32 %i.0110, i32 3
  %maxpacket_limit.i = getelementptr inbounds %struct.usb_ep, ptr %20, i32 0, i32 7
  %23 = ptrtoint ptr %maxpacket_limit.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 7)
  %bf.load.i102 = load i56, ptr %maxpacket_limit.i, align 2
  %bf.lshr.i103 = lshr i56 %bf.load.i102, 24
  %24 = trunc i56 %bf.lshr.i103 to i16
  %25 = ptrtoint ptr %limits to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %limits, align 8
  %bf.load2.i104 = load i56, ptr %maxpacket_limit.i, align 2
  %26 = lshr i56 %bf.load2.i104, 8
  %conv6.i = trunc i56 %26 to i16
  %max_streams7.i = getelementptr [30 x %struct.usb_raw_ep_info], ptr %call7.i, i32 0, i32 %i.0110, i32 3, i32 1
  %27 = ptrtoint ptr %max_streams7.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv6.i, ptr %max_streams7.i, align 2
  %inc = add nuw nsw i32 %i.0110, 1
  %28 = ptrtoint ptr %eps_num to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %eps_num, align 4
  %cmp46 = icmp slt i32 %inc, %29
  br i1 %cmp46, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end45.for.end_crit_edge
  %.lcssa = phi i32 [ %11, %if.end45.for.end_crit_edge ], [ %29, %for.body.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  %30 = inttoptr i32 %value to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %for.end.out_free_crit_edge, label %if.end.i.i

for.end.out_free_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end.i.i:                                       ; preds = %for.end
  %31 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %30, i32 960, i32 -1226833920) #16, !srcloc !237
  %asmresult.i.i = extractvalue { i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.out_free_crit_edge

if.end.i.i.out_free_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i, i32 noundef 960) #13
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %30, ptr noundef nonnull %call7.i, i32 noundef 960) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool68.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool68.not, i32 %.lcssa, i32 -14
  br label %out_free

out_free:                                         ; preds = %copy_to_user.exit, %if.end.i.i.out_free_crit_edge, %for.end.out_free_crit_edge, %do.end43, %do.end20
  %ret.0 = phi i32 [ -22, %do.end20 ], [ -16, %do.end43 ], [ -14, %for.end.out_free_crit_edge ], [ -14, %if.end.i.i.out_free_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %out

out:                                              ; preds = %out_free, %entry.out_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_free ], [ -12, %entry.out_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @raw_ioctl_ep0_stall(ptr noundef %dev, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  br i1 %tobool.not, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %state = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp5.not = icmp eq i32 %1, 3
  br i1 %cmp5.not, label %if.end20, label %do.body8

do.body8:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_ioctl_ep0_stall.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_ioctl_ep0_stall, %out_unlock)) #13
          to label %if.then15 [label %out_unlock], !srcloc !244

if.then15:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #15
  %dev16 = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_ioctl_ep0_stall.__UNIQUE_ID_ddebug256, ptr noundef %3, ptr noundef nonnull @.str.25) #13
  br label %out_unlock

if.end20:                                         ; preds = %do.body1
  %gadget = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 7
  %4 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gadget, align 4
  %tobool21.not = icmp eq ptr %5, null
  br i1 %tobool21.not, label %do.body23, label %if.end42

do.body23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_ioctl_ep0_stall.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_ioctl_ep0_stall, %out_unlock)) #13
          to label %if.then37 [label %out_unlock], !srcloc !244

if.then37:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #15
  %dev38 = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 4
  %6 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev38, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_ioctl_ep0_stall.__UNIQUE_ID_ddebug257, ptr noundef %7, ptr noundef nonnull @.str.26) #13
  br label %out_unlock

if.end42:                                         ; preds = %if.end20
  %ep0_urb_queued = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 11
  %8 = ptrtoint ptr %ep0_urb_queued to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ep0_urb_queued, align 2, !range !238
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool43.not = icmp eq i8 %9, 0
  br i1 %tobool43.not, label %if.end65, label %do.body45

do.body45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_ioctl_ep0_stall.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_ioctl_ep0_stall, %out_unlock)) #13
          to label %if.then59 [label %out_unlock], !srcloc !244

if.then59:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gadget, align 4
  %dev61 = getelementptr inbounds %struct.usb_gadget, ptr %11, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_ioctl_ep0_stall.__UNIQUE_ID_ddebug258, ptr noundef %dev61, ptr noundef nonnull @.str.30) #13
  br label %out_unlock

if.end65:                                         ; preds = %if.end42
  %ep0_in_pending = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 9
  %12 = ptrtoint ptr %ep0_in_pending to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ep0_in_pending, align 4, !range !238
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool66.not = icmp eq i8 %13, 0
  br i1 %tobool66.not, label %land.lhs.true, label %if.end65.if.end89_crit_edge

if.end65.if.end89_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

land.lhs.true:                                    ; preds = %if.end65
  %ep0_out_pending = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 10
  %14 = ptrtoint ptr %ep0_out_pending to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ep0_out_pending, align 1, !range !238
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool67.not = icmp eq i8 %15, 0
  br i1 %tobool67.not, label %do.body69, label %land.lhs.true.if.end89_crit_edge

land.lhs.true.if.end89_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

do.body69:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_ioctl_ep0_stall.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_ioctl_ep0_stall, %out_unlock)) #13
          to label %if.then83 [label %out_unlock], !srcloc !244

if.then83:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gadget, align 4
  %dev85 = getelementptr inbounds %struct.usb_gadget, ptr %17, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_ioctl_ep0_stall.__UNIQUE_ID_ddebug259, ptr noundef %dev85, ptr noundef nonnull @.str.53) #13
  br label %out_unlock

if.end89:                                         ; preds = %land.lhs.true.if.end89_crit_edge, %if.end65.if.end89_crit_edge
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 3
  %18 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ep0, align 4
  %call91 = tail call i32 @usb_ep_set_halt(ptr noundef %19) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %do.end97, label %if.end89.if.end100_crit_edge

if.end89.if.end100_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end100

do.end97:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gadget, align 4
  %dev99 = getelementptr inbounds %struct.usb_gadget, ptr %21, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev99, ptr noundef nonnull @.str.54, i32 noundef %call91) #18
  br label %if.end100

if.end100:                                        ; preds = %do.end97, %if.end89.if.end100_crit_edge
  %22 = ptrtoint ptr %ep0_in_pending to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ep0_in_pending, align 4, !range !238
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool102.not = icmp eq i8 %23, 0
  br i1 %tobool102.not, label %if.else, label %if.then103

if.then103:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %ep0_in_pending to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %ep0_in_pending, align 4
  br label %out_unlock

if.else:                                          ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #15
  %ep0_out_pending105 = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 10
  %25 = ptrtoint ptr %ep0_out_pending105 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %ep0_out_pending105, align 1
  br label %out_unlock

out_unlock:                                       ; preds = %if.else, %if.then103, %if.then83, %do.body69, %if.then59, %do.body45, %if.then37, %do.body23, %if.then15, %do.body8
  %ret.0 = phi i32 [ %call91, %if.then103 ], [ %call91, %if.else ], [ -22, %if.then15 ], [ -16, %if.then37 ], [ -16, %if.then59 ], [ -16, %if.then83 ], [ -22, %do.body8 ], [ -16, %do.body23 ], [ -16, %do.body45 ], [ -16, %do.body69 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #13
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_unlock ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @raw_ioctl_ep_set_clear_halt_wedge(ptr noundef %dev, i32 noundef %value, i1 noundef zeroext %set, i1 noundef zeroext %halt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %state = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp6.not = icmp eq i32 %1, 3
  br i1 %cmp6.not, label %if.end19, label %do.body8

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_ioctl_ep_set_clear_halt_wedge.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_ioctl_ep_set_clear_halt_wedge, %out_unlock)) #13
          to label %if.then15 [label %out_unlock], !srcloc !244

if.then15:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #15
  %dev16 = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_ioctl_ep_set_clear_halt_wedge.__UNIQUE_ID_ddebug270, ptr noundef %3, ptr noundef nonnull @.str.25) #13
  br label %out_unlock

if.end19:                                         ; preds = %entry
  %gadget = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 7
  %4 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gadget, align 4
  %tobool20.not = icmp eq ptr %5, null
  br i1 %tobool20.not, label %do.body22, label %if.end41

do.body22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_ioctl_ep_set_clear_halt_wedge.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_ioctl_ep_set_clear_halt_wedge, %out_unlock)) #13
          to label %if.then36 [label %out_unlock], !srcloc !244

if.then36:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #15
  %dev37 = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 4
  %6 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev37, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_ioctl_ep_set_clear_halt_wedge.__UNIQUE_ID_ddebug271, ptr noundef %7, ptr noundef nonnull @.str.26) #13
  br label %out_unlock

if.end41:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp42 = icmp slt i32 %value, 0
  br i1 %cmp42, label %if.end41.do.body47_crit_edge, label %lor.lhs.false

if.end41.do.body47_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body47

lor.lhs.false:                                    ; preds = %if.end41
  %eps_num = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 14
  %8 = ptrtoint ptr %eps_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %eps_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %value)
  %cmp44.not = icmp sgt i32 %9, %value
  br i1 %cmp44.not, label %if.end66, label %lor.lhs.false.do.body47_crit_edge

lor.lhs.false.do.body47_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body47

do.body47:                                        ; preds = %lor.lhs.false.do.body47_crit_edge, %if.end41.do.body47_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_ioctl_ep_set_clear_halt_wedge.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_ioctl_ep_set_clear_halt_wedge, %out_unlock)) #13
          to label %if.then61 [label %out_unlock], !srcloc !244

if.then61:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #15
  %dev62 = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 4
  %10 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev62, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_ioctl_ep_set_clear_halt_wedge.__UNIQUE_ID_ddebug272, ptr noundef %11, ptr noundef nonnull @.str.42) #13
  br label %out_unlock

if.end66:                                         ; preds = %lor.lhs.false
  %state67 = getelementptr %struct.raw_dev, ptr %dev, i32 0, i32 13, i32 %value, i32 1
  %12 = ptrtoint ptr %state67 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp68 = icmp eq i32 %13, 0
  br i1 %cmp68, label %do.body71, label %if.end91

do.body71:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_ioctl_ep_set_clear_halt_wedge.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_ioctl_ep_set_clear_halt_wedge, %out_unlock)) #13
          to label %if.then85 [label %out_unlock], !srcloc !244

if.then85:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gadget, align 4
  %dev87 = getelementptr inbounds %struct.usb_gadget, ptr %15, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_ioctl_ep_set_clear_halt_wedge.__UNIQUE_ID_ddebug273, ptr noundef %dev87, ptr noundef nonnull @.str.43) #13
  br label %out_unlock

if.end91:                                         ; preds = %if.end66
  %disabling = getelementptr %struct.raw_dev, ptr %dev, i32 0, i32 13, i32 %value, i32 6
  %16 = ptrtoint ptr %disabling to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %disabling, align 1, !range !238
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool94.not = icmp eq i8 %17, 0
  br i1 %tobool94.not, label %if.end116, label %do.body96

do.body96:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_ioctl_ep_set_clear_halt_wedge.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_ioctl_ep_set_clear_halt_wedge, %out_unlock)) #13
          to label %if.then110 [label %out_unlock], !srcloc !244

if.then110:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gadget, align 4
  %dev112 = getelementptr inbounds %struct.usb_gadget, ptr %19, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_ioctl_ep_set_clear_halt_wedge.__UNIQUE_ID_ddebug274, ptr noundef %dev112, ptr noundef nonnull @.str.56) #13
  br label %out_unlock

if.end116:                                        ; preds = %if.end91
  %urb_queued = getelementptr %struct.raw_dev, ptr %dev, i32 0, i32 13, i32 %value, i32 5
  %20 = ptrtoint ptr %urb_queued to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %urb_queued, align 4, !range !238
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool119.not = icmp eq i8 %21, 0
  br i1 %tobool119.not, label %if.end141, label %do.body121

do.body121:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_ioctl_ep_set_clear_halt_wedge.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_ioctl_ep_set_clear_halt_wedge, %out_unlock)) #13
          to label %if.then135 [label %out_unlock], !srcloc !244

if.then135:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gadget, align 4
  %dev137 = getelementptr inbounds %struct.usb_gadget, ptr %23, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_ioctl_ep_set_clear_halt_wedge.__UNIQUE_ID_ddebug275, ptr noundef %dev137, ptr noundef nonnull @.str.45) #13
  br label %out_unlock

if.end141:                                        ; preds = %if.end116
  %ep = getelementptr %struct.raw_dev, ptr %dev, i32 0, i32 13, i32 %value, i32 2
  %24 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ep, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %desc, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bmAttributes.i, align 1
  %30 = and i8 %29, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp.i.not = icmp eq i8 %30, 1
  br i1 %cmp.i.not, label %do.body147, label %if.end167

do.body147:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_ioctl_ep_set_clear_halt_wedge.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_ioctl_ep_set_clear_halt_wedge, %out_unlock)) #13
          to label %if.then161 [label %out_unlock], !srcloc !244

if.then161:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gadget, align 4
  %dev163 = getelementptr inbounds %struct.usb_gadget, ptr %32, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_ioctl_ep_set_clear_halt_wedge.__UNIQUE_ID_ddebug276, ptr noundef %dev163, ptr noundef nonnull @.str.57) #13
  br label %out_unlock

if.end167:                                        ; preds = %if.end141
  %set.not = xor i1 %set, true
  %33 = and i1 %set, %halt
  br i1 %33, label %if.then172, label %if.else

if.then172:                                       ; preds = %if.end167
  %call176 = tail call i32 @usb_ep_set_halt(ptr noundef %25) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %cmp177 = icmp slt i32 %call176, 0
  br i1 %cmp177, label %do.end182, label %if.then172.out_unlock_crit_edge

if.then172.out_unlock_crit_edge:                  ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

do.end182:                                        ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %gadget, align 4
  %dev184 = getelementptr inbounds %struct.usb_gadget, ptr %35, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev184, ptr noundef nonnull @.str.54, i32 noundef %call176) #18
  br label %out_unlock

if.else:                                          ; preds = %if.end167
  %halt.not = xor i1 %halt, true
  %brmerge267 = or i1 %halt.not, %set
  br i1 %brmerge267, label %if.else204, label %if.then190

if.then190:                                       ; preds = %if.else
  %call194 = tail call i32 @usb_ep_clear_halt(ptr noundef %25) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %cmp195 = icmp slt i32 %call194, 0
  br i1 %cmp195, label %do.end200, label %if.then190.out_unlock_crit_edge

if.then190.out_unlock_crit_edge:                  ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

do.end200:                                        ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %gadget, align 4
  %dev202 = getelementptr inbounds %struct.usb_gadget, ptr %37, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev202, ptr noundef nonnull @.str.59, i32 noundef %call194) #18
  br label %out_unlock

if.else204:                                       ; preds = %if.else
  %brmerge269 = or i1 %set.not, %halt
  br i1 %brmerge269, label %if.else204.out_unlock_crit_edge, label %if.then209

if.else204.out_unlock_crit_edge:                  ; preds = %if.else204
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.then209:                                       ; preds = %if.else204
  %call213 = tail call i32 @usb_ep_set_wedge(ptr noundef %25) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call213)
  %cmp214 = icmp slt i32 %call213, 0
  br i1 %cmp214, label %do.end219, label %if.then209.out_unlock_crit_edge

if.then209.out_unlock_crit_edge:                  ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

do.end219:                                        ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %gadget, align 4
  %dev221 = getelementptr inbounds %struct.usb_gadget, ptr %39, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev221, ptr noundef nonnull @.str.62, i32 noundef %call213) #18
  br label %out_unlock

out_unlock:                                       ; preds = %do.end219, %if.then209.out_unlock_crit_edge, %if.else204.out_unlock_crit_edge, %do.end200, %if.then190.out_unlock_crit_edge, %do.end182, %if.then172.out_unlock_crit_edge, %if.then161, %do.body147, %if.then135, %do.body121, %if.then110, %do.body96, %if.then85, %do.body71, %if.then61, %do.body47, %if.then36, %do.body22, %if.then15, %do.body8
  %ret.0 = phi i32 [ %call176, %do.end182 ], [ %call176, %if.then172.out_unlock_crit_edge ], [ %call213, %do.end219 ], [ %call213, %if.then209.out_unlock_crit_edge ], [ 0, %if.else204.out_unlock_crit_edge ], [ %call194, %do.end200 ], [ %call194, %if.then190.out_unlock_crit_edge ], [ -22, %if.then15 ], [ -16, %if.then36 ], [ -16, %if.then61 ], [ -22, %if.then85 ], [ -22, %if.then110 ], [ -22, %if.then135 ], [ -22, %if.then161 ], [ -22, %do.body8 ], [ -16, %do.body22 ], [ -16, %do.body47 ], [ -22, %do.body71 ], [ -22, %do.body96 ], [ -22, %do.body121 ], [ -22, %do.body147 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_setup(ptr noundef %gadget, ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 11, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.raw_dev, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %state = getelementptr inbounds %struct.raw_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp6.not = icmp eq i32 %3, 3
  br i1 %cmp6.not, label %if.end, label %do.end10

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev11 = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.9) #18
  br label %out_unlock

if.end:                                           ; preds = %entry
  %ep0_in_pending = getelementptr inbounds %struct.raw_dev, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %ep0_in_pending to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ep0_in_pending, align 4, !range !238
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.do.body16_crit_edge

if.end.do.body16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body16

lor.lhs.false:                                    ; preds = %if.end
  %ep0_out_pending = getelementptr inbounds %struct.raw_dev, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %ep0_out_pending to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ep0_out_pending, align 1, !range !238
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool13.not = icmp eq i8 %7, 0
  br i1 %tobool13.not, label %if.end28, label %lor.lhs.false.do.body16_crit_edge

lor.lhs.false.do.body16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body16

do.body16:                                        ; preds = %lor.lhs.false.do.body16_crit_edge, %if.end.do.body16_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gadget_setup.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gadget_setup, %out_unlock)) #13
          to label %if.then23 [label %out_unlock], !srcloc !244

if.then23:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #15
  %dev24 = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gadget_setup.__UNIQUE_ID_ddebug241, ptr noundef %dev24, ptr noundef nonnull @.str.13) #13
  br label %out_unlock

if.end28:                                         ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ctrl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %tobool30.not = icmp sgt i8 %9, -1
  br i1 %tobool30.not, label %if.end28.if.else_crit_edge, label %land.lhs.true

if.end28.if.else_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %if.end28
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 4
  %10 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %wLength, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool32.not = icmp eq i16 %11, 0
  br i1 %tobool32.not, label %land.lhs.true.if.else_crit_edge, label %if.then33

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %ep0_in_pending to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %ep0_in_pending, align 4
  br label %if.end36

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end28.if.else_crit_edge
  %13 = ptrtoint ptr %ep0_out_pending to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %ep0_out_pending, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  %call38 = tail call fastcc i32 @raw_queue_event(ptr noundef %1, i32 noundef 2, i32 noundef 8, ptr noundef %ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %do.end44, label %if.end36.out_crit_edge

if.end36.out_crit_edge:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.end44:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  %dev45 = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.15) #18
  br label %out

out_unlock:                                       ; preds = %if.then23, %do.body16, %do.end10
  %ret.0 = phi i32 [ -19, %do.end10 ], [ -16, %if.then23 ], [ -16, %do.body16 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  br label %out

out:                                              ; preds = %out_unlock, %do.end44, %if.end36.out_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_unlock ], [ %call38, %do.end44 ], [ %call38, %if.end36.out_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gadget_disconnect(ptr nocapture noundef %gadget) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_bind(ptr noundef %gadget, ptr noundef %driver) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %driver, i32 -52
  %name = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 10
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %udc_name = getelementptr i8, ptr %driver, i32 -4
  %2 = ptrtoint ptr %udc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udc_name, align 4
  %call = tail call i32 @strcmp(ptr noundef %1, ptr noundef %3) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 11, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %driver_data.i.i, align 4
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 3
  %5 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ep0, align 4
  %call1 = tail call ptr @usb_ep_alloc_request(ptr noundef %6, i32 noundef 3264) #13
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %do.body6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev3 = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.17) #18
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

do.body6:                                         ; preds = %if.end
  %lock = getelementptr i8, ptr %driver, i32 -48
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %req15 = getelementptr i8, ptr %driver, i32 144
  %8 = ptrtoint ptr %req15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1, ptr %req15, align 4
  %context = getelementptr inbounds %struct.usb_request, ptr %call1, i32 0, i32 8
  %9 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %context, align 4
  %10 = load ptr, ptr %req15, align 4
  %complete = getelementptr inbounds %struct.usb_request, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @gadget_ep0_complete, ptr %complete, align 4
  %gadget18 = getelementptr i8, ptr %driver, i32 140
  %12 = ptrtoint ptr %gadget18 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %gadget, ptr %gadget18, align 4
  %ep_list = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 4
  %13 = ptrtoint ptr %ep_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn87 = load ptr, ptr %ep_list, align 4
  %cmp26.not89 = icmp eq ptr %.pn87, %ep_list
  br i1 %cmp26.not89, label %do.body6.for.end_crit_edge, label %for.body.lr.ph

do.body6.for.end_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body6
  %eps = getelementptr i8, ptr %driver, i32 156
  br label %for.body

for.body:                                         ; preds = %get_ep_addr.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn91 = phi ptr [ %.pn87, %for.body.lr.ph ], [ %.pn, %get_ep_addr.exit.for.body_crit_edge ]
  %i.090 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %get_ep_addr.exit.for.body_crit_edge ]
  %ep.0 = getelementptr i8, ptr %.pn91, i32 -12
  %arrayidx = getelementptr [30 x %struct.raw_ep], ptr %eps, i32 0, i32 %i.090
  %ep28 = getelementptr inbounds %struct.raw_ep, ptr %arrayidx, i32 0, i32 2
  %14 = ptrtoint ptr %ep28 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ep.0, ptr %ep28, align 4
  %name29 = getelementptr i8, ptr %.pn91, i32 -8
  %15 = ptrtoint ptr %name29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name29, align 4
  %arrayidx.i = getelementptr i8, ptr %16, i32 2
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %18 to i32
  %19 = add nsw i32 %conv.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %19)
  %20 = icmp ult i32 %19, -10
  br i1 %20, label %for.body.get_ep_addr.exit_crit_edge, label %if.then.i

for.body.get_ep_addr.exit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_ep_addr.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i = tail call i32 @simple_strtoul(ptr noundef %arrayidx.i, ptr noundef null, i32 noundef 10) #13
  %conv3.i = trunc i32 %call2.i to i8
  br label %get_ep_addr.exit

get_ep_addr.exit:                                 ; preds = %if.then.i, %for.body.get_ep_addr.exit_crit_edge
  %retval.0.i = phi i8 [ %conv3.i, %if.then.i ], [ -1, %for.body.get_ep_addr.exit_crit_edge ]
  %addr = getelementptr inbounds %struct.raw_ep, ptr %arrayidx, i32 0, i32 3
  %21 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %retval.0.i, ptr %addr, align 4
  %state = getelementptr inbounds %struct.raw_ep, ptr %arrayidx, i32 0, i32 1
  %22 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %state, align 4
  %inc = add i32 %i.090, 1
  %23 = ptrtoint ptr %.pn91 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn = load ptr, ptr %.pn91, align 4
  %24 = ptrtoint ptr %gadget18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gadget18, align 4
  %ep_list25 = getelementptr inbounds %struct.usb_gadget, ptr %25, i32 0, i32 4
  %cmp26.not = icmp eq ptr %.pn, %ep_list25
  br i1 %cmp26.not, label %get_ep_addr.exit.for.end_crit_edge, label %get_ep_addr.exit.for.body_crit_edge

get_ep_addr.exit.for.body_crit_edge:              ; preds = %get_ep_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

get_ep_addr.exit.for.end_crit_edge:               ; preds = %get_ep_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %get_ep_addr.exit.for.end_crit_edge, %do.body6.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %do.body6.for.end_crit_edge ], [ %inc, %get_ep_addr.exit.for.end_crit_edge ]
  %eps_num = getelementptr i8, ptr %driver, i32 996
  %26 = ptrtoint ptr %eps_num to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %i.0.lcssa, ptr %eps_num, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #13
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 1, ptr elementtype(i32) %add.ptr) #13, !srcloc !245
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %for.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !246

for.end.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %for.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %28 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %.not.i.i.i.i = icmp sgt i32 %28, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !240

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %for.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %for.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr, i32 noundef %.sink.i.i.i.i) #13
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %call41 = tail call fastcc i32 @raw_queue_event(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %do.end47, label %kref_get.exit.cleanup_crit_edge

kref_get.exit.cleanup_crit_edge:                  ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end47:                                         ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  %dev48 = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48, ptr noundef nonnull @.str.15) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %kref_get.exit.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ %call41, %do.end47 ], [ %call41, %kref_get.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gadget_unbind(ptr nocapture noundef %gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 11, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  tail call fastcc void @kref_put(ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gadget_suspend(ptr nocapture noundef %gadget) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gadget_resume(ptr nocapture noundef %gadget) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gadget_reset(ptr nocapture noundef %gadget) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @raw_queue_event(ptr noundef %dev, i32 noundef %type, i32 noundef %length, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 16
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue) #13
  %size.i = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 16, i32 3
  %0 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %1)
  %cmp5.i = icmp sgt i32 %1, 15
  br i1 %cmp5.i, label %do.end16.i, label %if.end8.i.i, !prof !246

do.end16.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 63, i32 noundef 9, ptr noundef null) #13
  br label %do.body1

if.end8.i.i:                                      ; preds = %entry
  %add.i = add i32 %length, 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 2592) #20
  %tobool34.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool34.not.i, label %if.end8.i.i.do.body1_crit_edge, label %if.end37.i

if.end8.i.i.do.body1_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body1

if.end37.i:                                       ; preds = %if.end8.i.i
  %2 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %type, ptr %call9.i.i, align 128
  %length39.i = getelementptr inbounds %struct.usb_raw_event, ptr %call9.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %length39.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %length, ptr %length39.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool41.not.i = icmp eq i32 %length, 0
  br i1 %tobool41.not.i, label %if.end37.i.raw_event_queue_add.exit_crit_edge, label %if.then42.i

if.end37.i.raw_event_queue_add.exit_crit_edge:    ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %raw_event_queue_add.exit

if.then42.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #15
  %data43.i = getelementptr inbounds %struct.usb_raw_event, ptr %call9.i.i, i32 0, i32 2
  %4 = call ptr @memcpy(ptr %data43.i, ptr %data, i32 %length)
  br label %raw_event_queue_add.exit

raw_event_queue_add.exit:                         ; preds = %if.then42.i, %if.end37.i.raw_event_queue_add.exit_crit_edge
  %5 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size.i, align 4
  %arrayidx46.i = getelementptr %struct.raw_dev, ptr %dev, i32 0, i32 16, i32 2, i32 %6
  %7 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9.i.i, ptr %arrayidx46.i, align 4
  %8 = load i32, ptr %size.i, align 4
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %size.i, align 4
  %sema.i = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 16, i32 1
  tail call void @up(ptr noundef %sema.i) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue, i32 noundef %call2.i) #13
  br label %if.end

do.body1:                                         ; preds = %if.end8.i.i.do.body1_crit_edge, %do.end16.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue, i32 noundef %call2.i) #13
  %lock = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %state = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 5
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 5, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #13
  br label %if.end

if.end:                                           ; preds = %do.body1, %raw_event_queue_add.exit
  %retval.0.i14 = phi i32 [ -12, %do.body1 ], [ 0, %raw_event_queue_add.exit ]
  ret i32 %retval.0.i14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gadget_ep0_complete(ptr nocapture noundef readnone %ep, ptr nocapture noundef readonly %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %lock = getelementptr inbounds %struct.raw_dev, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %4 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %actual, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %.sink = phi i32 [ %5, %if.else ], [ %3, %entry.if.end_crit_edge ]
  %6 = getelementptr inbounds %struct.raw_dev, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %6, align 4
  %ep0_in_pending = getelementptr inbounds %struct.raw_dev, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %ep0_in_pending to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ep0_in_pending, align 4, !range !238
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not = icmp eq i8 %9, 0
  br i1 %tobool7.not, label %if.else10, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %ep0_in_pending to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %ep0_in_pending, align 4
  br label %if.end11

if.else10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %ep0_out_pending = getelementptr inbounds %struct.raw_dev, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %ep0_out_pending to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %ep0_out_pending, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.else10, %if.then8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #13
  %ep0_done = getelementptr inbounds %struct.raw_dev, ptr %1, i32 0, i32 15
  tail call void @complete(ptr noundef %ep0_done) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_put(ptr noundef %kref) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !248
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #13, !srcloc !249
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !240

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #13
  br label %return

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !250
  %udc_name.i = getelementptr inbounds %struct.raw_dev, ptr %kref, i32 0, i32 2
  %1 = ptrtoint ptr %udc_name.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udc_name.i, align 4
  tail call void @kfree(ptr noundef %2) #13
  %udc_name1.i = getelementptr inbounds %struct.raw_dev, ptr %kref, i32 0, i32 3, i32 10
  %3 = ptrtoint ptr %udc_name1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udc_name1.i, align 4
  tail call void @kfree(ptr noundef %4) #13
  %req.i = getelementptr inbounds %struct.raw_dev, ptr %kref, i32 0, i32 8
  %5 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %req.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then.if.end8.i_crit_edge, label %if.then.i

if.then.if.end8.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

if.then.i:                                        ; preds = %if.then
  %ep0_urb_queued.i = getelementptr inbounds %struct.raw_dev, ptr %kref, i32 0, i32 11
  %7 = ptrtoint ptr %ep0_urb_queued.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ep0_urb_queued.i, align 2, !range !238
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not.i = icmp eq i8 %8, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then3.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %gadget.i = getelementptr inbounds %struct.raw_dev, ptr %kref, i32 0, i32 7
  %9 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gadget.i, align 4
  %ep0.i = getelementptr inbounds %struct.usb_gadget, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %ep0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ep0.i, align 4
  %call.i = tail call i32 @usb_ep_dequeue(ptr noundef %12, ptr noundef nonnull %6) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i.if.end.i_crit_edge
  %gadget5.i = getelementptr inbounds %struct.raw_dev, ptr %kref, i32 0, i32 7
  %13 = ptrtoint ptr %gadget5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gadget5.i, align 4
  %ep06.i = getelementptr inbounds %struct.usb_gadget, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %ep06.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ep06.i, align 4
  %17 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %req.i, align 4
  tail call void @usb_ep_free_request(ptr noundef %16, ptr noundef %18) #13
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end.i, %if.then.if.end8.i_crit_edge
  %size.i.i = getelementptr inbounds %struct.raw_dev, ptr %kref, i32 0, i32 16, i32 3
  %19 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp6.i.i = icmp sgt i32 %20, 0
  br i1 %cmp6.i.i, label %if.end8.i.for.body.i.i_crit_edge, label %if.end8.i.raw_event_queue_destroy.exit.i_crit_edge

if.end8.i.raw_event_queue_destroy.exit.i_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %raw_event_queue_destroy.exit.i

if.end8.i.for.body.i.i_crit_edge:                 ; preds = %if.end8.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end8.i.for.body.i.i_crit_edge
  %i.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end8.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.raw_dev, ptr %kref, i32 0, i32 16, i32 2, i32 %i.07.i.i
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @kfree(ptr noundef %22) #13
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %23 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %24
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.raw_event_queue_destroy.exit.i_crit_edge

for.body.i.i.raw_event_queue_destroy.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %raw_event_queue_destroy.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

raw_event_queue_destroy.exit.i:                   ; preds = %for.body.i.i.raw_event_queue_destroy.exit.i_crit_edge, %if.end8.i.raw_event_queue_destroy.exit.i_crit_edge
  %25 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %size.i.i, align 4
  %eps_num.i = getelementptr inbounds %struct.raw_dev, ptr %kref, i32 0, i32 14
  %26 = ptrtoint ptr %eps_num.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %eps_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp50.i = icmp sgt i32 %27, 0
  br i1 %cmp50.i, label %raw_event_queue_destroy.exit.i.for.body.i_crit_edge, label %raw_event_queue_destroy.exit.i.dev_free.exit_crit_edge

raw_event_queue_destroy.exit.i.dev_free.exit_crit_edge: ; preds = %raw_event_queue_destroy.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_free.exit

raw_event_queue_destroy.exit.i.for.body.i_crit_edge: ; preds = %raw_event_queue_destroy.exit.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %raw_event_queue_destroy.exit.i.for.body.i_crit_edge
  %i.051.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %raw_event_queue_destroy.exit.i.for.body.i_crit_edge ]
  %state.i = getelementptr %struct.raw_dev, ptr %kref, i32 0, i32 13, i32 %i.051.i, i32 1
  %28 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp9.i = icmp eq i32 %29, 0
  br i1 %cmp9.i, label %for.body.i.for.inc.i_crit_edge, label %if.end11.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end11.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %ep.i = getelementptr %struct.raw_dev, ptr %kref, i32 0, i32 13, i32 %i.051.i, i32 2
  %30 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ep.i, align 4
  %call14.i = tail call i32 @usb_ep_disable(ptr noundef %31) #13
  %32 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ep.i, align 4
  %req20.i = getelementptr %struct.raw_dev, ptr %kref, i32 0, i32 13, i32 %i.051.i, i32 4
  %34 = ptrtoint ptr %req20.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %req20.i, align 4
  tail call void @usb_ep_free_request(ptr noundef %33, ptr noundef %35) #13
  %36 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ep.i, align 4
  %desc.i = getelementptr inbounds %struct.usb_ep, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %desc.i, align 4
  tail call void @kfree(ptr noundef %39) #13
  %40 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %state.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end11.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.051.i, 1
  %41 = ptrtoint ptr %eps_num.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %eps_num.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %42
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.dev_free.exit_crit_edge

for.inc.i.dev_free.exit_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_free.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

dev_free.exit:                                    ; preds = %for.inc.i.dev_free.exit_crit_edge, %raw_event_queue_destroy.exit.i.dev_free.exit_crit_edge
  tail call void @kfree(ptr noundef %kref) #13
  br label %return

return:                                           ; preds = %dev_free.exit, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_dequeue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_probe_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @raw_alloc_io_data(ptr noundef %io, ptr noundef %ptr, i1 noundef zeroext %get_from_user) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %0 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ptr, i32 8, i32 -1226833920) #16, !srcloc !239
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !240

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io, i32 noundef 8) #13
  %1 = tail call i32 @llvm.read_register.i32(metadata !227) #13
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 4
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !241
  %and.i.i.i.i = and i32 %3, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !243
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %io, ptr noundef %ptr, i32 noundef 8) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %3) #13, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !243
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !240

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i38 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %entry.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i38
  %add.ptr.i.i = getelementptr i8, ptr %io, i32 %sub.i.i
  %4 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i38)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %5 = ptrtoint ptr %io to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %io, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 29, i16 %6)
  %cmp = icmp ugt i16 %6, 29
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.usb_raw_ep_io, ptr %io, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %8)
  %cmp.i = icmp ugt i16 %8, 1
  br i1 %cmp.i, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %length = getelementptr inbounds %struct.usb_raw_ep_io, ptr %io, i32 0, i32 2
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %10)
  %cmp11 = icmp ugt i32 %10, 4096
  br i1 %cmp11, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  br i1 %get_from_user, label %if.then17, label %if.end8.i

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %ptr, i32 8
  %call19 = tail call ptr @memdup_user(ptr noundef %add.ptr, i32 noundef %10) #13
  br label %cleanup

if.end8.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3264) #20
  %tobool22.not = icmp eq ptr %call9.i, null
  %spec.select = select i1 %tobool22.not, ptr inttoptr (i32 -12 to ptr), ptr %call9.i
  br label %cleanup

cleanup:                                          ; preds = %if.end8.i, %if.then17, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi ptr [ %call19, %if.then17 ], [ inttoptr (i32 -14 to ptr), %if.then11.i.i ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end5.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end10.cleanup_crit_edge ], [ %spec.select, %if.end8.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @raw_process_ep0_io(ptr noundef %dev, ptr nocapture noundef readonly %io, ptr noundef %data, i1 noundef zeroext %in) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %state = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp5.not = icmp eq i32 %1, 3
  br i1 %cmp5.not, label %if.end18, label %do.body7

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_process_ep0_io.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_process_ep0_io, %out_unlock)) #13
          to label %if.then14 [label %out_unlock], !srcloc !244

if.then14:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  %dev15 = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_process_ep0_io.__UNIQUE_ID_ddebug249, ptr noundef %3, ptr noundef nonnull @.str.25) #13
  br label %out_unlock

if.end18:                                         ; preds = %entry
  %gadget = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 7
  %4 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gadget, align 4
  %tobool19.not = icmp eq ptr %5, null
  br i1 %tobool19.not, label %do.body21, label %if.end40

do.body21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_process_ep0_io.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_process_ep0_io, %out_unlock)) #13
          to label %if.then35 [label %out_unlock], !srcloc !244

if.then35:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #15
  %dev36 = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 4
  %6 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev36, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_process_ep0_io.__UNIQUE_ID_ddebug250, ptr noundef %7, ptr noundef nonnull @.str.26) #13
  br label %out_unlock

if.end40:                                         ; preds = %if.end18
  %ep0_urb_queued = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 11
  %8 = ptrtoint ptr %ep0_urb_queued to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ep0_urb_queued, align 2, !range !238
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool41.not = icmp eq i8 %9, 0
  br i1 %tobool41.not, label %if.end63, label %do.body43

do.body43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_process_ep0_io.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_process_ep0_io, %out_unlock)) #13
          to label %if.then57 [label %out_unlock], !srcloc !244

if.then57:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gadget, align 4
  %dev59 = getelementptr inbounds %struct.usb_gadget, ptr %11, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_process_ep0_io.__UNIQUE_ID_ddebug251, ptr noundef %dev59, ptr noundef nonnull @.str.30) #13
  br label %out_unlock

if.end63:                                         ; preds = %if.end40
  br i1 %in, label %land.lhs.true, label %land.lhs.true68.critedge

land.lhs.true:                                    ; preds = %if.end63
  %ep0_in_pending = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 9
  %12 = ptrtoint ptr %ep0_in_pending to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ep0_in_pending, align 4, !range !238
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool66.not = icmp eq i8 %13, 0
  br i1 %tobool66.not, label %land.lhs.true.do.body71_crit_edge, label %land.rhs.critedge

land.lhs.true.do.body71_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body71

land.lhs.true68.critedge:                         ; preds = %if.end63
  %ep0_out_pending = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 10
  %14 = ptrtoint ptr %ep0_out_pending to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ep0_out_pending, align 1, !range !238
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool69.not = icmp eq i8 %15, 0
  br i1 %tobool69.not, label %land.lhs.true68.critedge.do.body71_crit_edge, label %land.rhs132.critedge

land.lhs.true68.critedge.do.body71_crit_edge:     ; preds = %land.lhs.true68.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body71

do.body71:                                        ; preds = %land.lhs.true68.critedge.do.body71_crit_edge, %land.lhs.true.do.body71_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_process_ep0_io.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_process_ep0_io, %out_unlock)) #13
          to label %if.then85 [label %out_unlock], !srcloc !244

if.then85:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gadget, align 4
  %dev87 = getelementptr inbounds %struct.usb_gadget, ptr %17, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_process_ep0_io.__UNIQUE_ID_ddebug252, ptr noundef %dev87, ptr noundef nonnull @.str.31) #13
  br label %out_unlock

land.rhs.critedge:                                ; preds = %land.lhs.true
  %ep0_out_pending94 = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 10
  %18 = ptrtoint ptr %ep0_out_pending94 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ep0_out_pending94, align 1, !range !238
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool95.not = icmp eq i8 %19, 0
  br i1 %tobool95.not, label %land.rhs.critedge.if.end169_crit_edge, label %do.end112, !prof !240

land.rhs.critedge.if.end169_crit_edge:            ; preds = %land.rhs.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end169

do.end112:                                        ; preds = %land.rhs.critedge
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 628, i32 noundef 9, ptr noundef null) #13
  %20 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 5, ptr %state, align 4
  br label %out_done

land.rhs132.critedge:                             ; preds = %land.lhs.true68.critedge
  %ep0_in_pending133 = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 9
  %21 = ptrtoint ptr %ep0_in_pending133 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ep0_in_pending133, align 4, !range !238
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool134.not = icmp eq i8 %22, 0
  br i1 %tobool134.not, label %land.rhs132.critedge.if.end169_crit_edge, label %do.end152, !prof !240

land.rhs132.critedge.if.end169_crit_edge:         ; preds = %land.rhs132.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end169

do.end152:                                        ; preds = %land.rhs132.critedge
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 633, i32 noundef 9, ptr noundef null) #13
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 5, ptr %state, align 4
  br label %out_done

if.end169:                                        ; preds = %land.rhs132.critedge.if.end169_crit_edge, %land.rhs.critedge.if.end169_crit_edge
  %req = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 8
  %24 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %req, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %data, ptr %25, align 4
  %length = getelementptr inbounds %struct.usb_raw_ep_io, ptr %io, i32 0, i32 2
  %27 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %length, align 4
  %29 = load ptr, ptr %req, align 4
  %length171 = getelementptr inbounds %struct.usb_request, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %length171 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %28, ptr %length171, align 4
  %flags172 = getelementptr inbounds %struct.usb_raw_ep_io, ptr %io, i32 0, i32 1
  %31 = ptrtoint ptr %flags172 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %flags172, align 2
  %33 = load ptr, ptr %req, align 4
  %zero = getelementptr inbounds %struct.usb_request, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load = load i32, ptr %zero, align 4
  %35 = shl i16 %32, 13
  %36 = and i16 %35, 8192
  %bf.shl = zext i16 %36 to i32
  %bf.clear = and i32 %bf.load, -8193
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %zero, align 4
  %37 = ptrtoint ptr %ep0_urb_queued to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %ep0_urb_queued, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #13
  %38 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %gadget, align 4
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ep0, align 4
  %42 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %req, align 4
  %call179 = tail call i32 @usb_ep_queue(ptr noundef %41, ptr noundef %43, i32 noundef 3264) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %if.end202, label %do.end184

do.end184:                                        ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %gadget, align 4
  %dev186 = getelementptr inbounds %struct.usb_gadget, ptr %45, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev186, ptr noundef nonnull @.str.32, i32 noundef %call179) #18
  %call196 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %46 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 5, ptr %state, align 4
  br label %out_done

if.end202:                                        ; preds = %if.end169
  %ep0_done = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 15
  %call203 = tail call i32 @wait_for_completion_interruptible(ptr noundef %ep0_done) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %do.body247, label %do.body206

do.body206:                                       ; preds = %if.end202
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_process_ep0_io.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_process_ep0_io, %do.end225)) #13
          to label %if.then220 [label %do.end225], !srcloc !244

if.then220:                                       ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %gadget, align 4
  %dev222 = getelementptr inbounds %struct.usb_gadget, ptr %48, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_process_ep0_io.__UNIQUE_ID_ddebug253, ptr noundef %dev222, ptr noundef nonnull @.str.33) #13
  br label %do.end225

do.end225:                                        ; preds = %if.then220, %do.body206
  %49 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %gadget, align 4
  %ep0227 = getelementptr inbounds %struct.usb_gadget, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %ep0227 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ep0227, align 4
  %53 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %req, align 4
  %call229 = tail call i32 @usb_ep_dequeue(ptr noundef %52, ptr noundef %54) #13
  tail call void @wait_for_completion(ptr noundef %ep0_done) #13
  %call240 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  br label %out_done

do.body247:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #15
  %call255 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %ep0_status = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 12
  %55 = ptrtoint ptr %ep0_status to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ep0_status, align 4
  br label %out_done

out_done:                                         ; preds = %do.body247, %do.end225, %do.end184, %do.end152, %do.end112
  %flags.0 = phi i32 [ %call2, %do.end112 ], [ %call2, %do.end152 ], [ %call196, %do.end184 ], [ %call240, %do.end225 ], [ %call255, %do.body247 ]
  %ret.0 = phi i32 [ -19, %do.end112 ], [ -19, %do.end152 ], [ %call179, %do.end184 ], [ %call203, %do.end225 ], [ %56, %do.body247 ]
  %57 = ptrtoint ptr %ep0_urb_queued to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %ep0_urb_queued, align 2
  br label %out_unlock

out_unlock:                                       ; preds = %out_done, %if.then85, %do.body71, %if.then57, %do.body43, %if.then35, %do.body21, %if.then14, %do.body7
  %flags.1 = phi i32 [ %flags.0, %out_done ], [ %call2, %if.then14 ], [ %call2, %if.then35 ], [ %call2, %if.then57 ], [ %call2, %if.then85 ], [ %call2, %do.body7 ], [ %call2, %do.body21 ], [ %call2, %do.body43 ], [ %call2, %do.body71 ]
  %ret.1 = phi i32 [ %ret.0, %out_done ], [ -22, %if.then14 ], [ -16, %if.then35 ], [ -16, %if.then57 ], [ -16, %if.then85 ], [ -22, %do.body7 ], [ -16, %do.body21 ], [ -16, %do.body43 ], [ -16, %do.body71 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.1) #13
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_ep_match_desc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @raw_process_ep_io(ptr noundef %dev, ptr nocapture noundef readonly %io, ptr noundef %data, i1 noundef zeroext %in) unnamed_addr #2 align 64 {
entry:
  %done = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done) #13
  %0 = getelementptr inbounds i8, ptr %done, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @init_completion.__key) #13
  %lock = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 1
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %state = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 5
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp6.not = icmp eq i32 %4, 3
  br i1 %cmp6.not, label %if.end19, label %do.body8

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_process_ep_io.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_process_ep_io, %out_unlock)) #13
          to label %if.then15 [label %out_unlock], !srcloc !244

if.then15:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #15
  %dev16 = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 4
  %5 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev16, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_process_ep_io.__UNIQUE_ID_ddebug277, ptr noundef %6, ptr noundef nonnull @.str.25) #13
  br label %out_unlock

if.end19:                                         ; preds = %entry
  %gadget = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 7
  %7 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gadget, align 4
  %tobool20.not = icmp eq ptr %8, null
  br i1 %tobool20.not, label %do.body22, label %if.end41

do.body22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_process_ep_io.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_process_ep_io, %out_unlock)) #13
          to label %if.then36 [label %out_unlock], !srcloc !244

if.then36:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #15
  %dev37 = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 4
  %9 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev37, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_process_ep_io.__UNIQUE_ID_ddebug278, ptr noundef %10, ptr noundef nonnull @.str.26) #13
  br label %out_unlock

if.end41:                                         ; preds = %if.end19
  %11 = ptrtoint ptr %io to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %io, align 4
  %conv43 = zext i16 %12 to i32
  %eps_num = getelementptr inbounds %struct.raw_dev, ptr %dev, i32 0, i32 14
  %13 = ptrtoint ptr %eps_num to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %eps_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv43)
  %cmp44.not = icmp sgt i32 %14, %conv43
  br i1 %cmp44.not, label %if.end67, label %do.body47

do.body47:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_process_ep_io.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_process_ep_io, %out_unlock)) #13
          to label %if.then61 [label %out_unlock], !srcloc !244

if.then61:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gadget, align 4
  %dev63 = getelementptr inbounds %struct.usb_gadget, ptr %16, i32 0, i32 11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_process_ep_io.__UNIQUE_ID_ddebug279, ptr noundef %dev63, ptr noundef nonnull @.str.42) #13
  br label %out_unlock

if.end67:                                         ; preds = %if.end41
  %arrayidx = getelementptr %struct.raw_dev, ptr %dev, i32 0, i32 13, i32 %conv43
  %state69 = getelementptr %struct.raw_dev, ptr %dev, i32 0, i32 13, i32 %conv43, i32 1
  %17 = ptrtoint ptr %state69 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp70.not = icmp eq i32 %18, 1
  br i1 %cmp70.not, label %if.end93, label %do.body73

do.body73:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_process_ep_io.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_process_ep_io, %out_unlock)) #13
          to label %if.then87 [label %out_unlock], !srcloc !244

if.then87:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gadget, align 4
  %dev89 = getelementptr inbounds %struct.usb_gadget, ptr %20, i32 0, i32 11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_process_ep_io.__UNIQUE_ID_ddebug280, ptr noundef %dev89, ptr noundef nonnull @.str.43) #13
  br label %out_unlock

if.end93:                                         ; preds = %if.end67
  %disabling = getelementptr %struct.raw_dev, ptr %dev, i32 0, i32 13, i32 %conv43, i32 6
  %21 = ptrtoint ptr %disabling to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %disabling, align 1, !range !238
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool94.not = icmp eq i8 %22, 0
  br i1 %tobool94.not, label %if.end116, label %do.body96

do.body96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_process_ep_io.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_process_ep_io, %out_unlock)) #13
          to label %if.then110 [label %out_unlock], !srcloc !244

if.then110:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gadget, align 4
  %dev112 = getelementptr inbounds %struct.usb_gadget, ptr %24, i32 0, i32 11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_process_ep_io.__UNIQUE_ID_ddebug281, ptr noundef %dev112, ptr noundef nonnull @.str.47) #13
  br label %out_unlock

if.end116:                                        ; preds = %if.end93
  %urb_queued = getelementptr %struct.raw_dev, ptr %dev, i32 0, i32 13, i32 %conv43, i32 5
  %25 = ptrtoint ptr %urb_queued to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %urb_queued, align 4, !range !238
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool117.not = icmp eq i8 %26, 0
  br i1 %tobool117.not, label %if.end139, label %do.body119

do.body119:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_process_ep_io.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_process_ep_io, %out_unlock)) #13
          to label %if.then133 [label %out_unlock], !srcloc !244

if.then133:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %gadget, align 4
  %dev135 = getelementptr inbounds %struct.usb_gadget, ptr %28, i32 0, i32 11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_process_ep_io.__UNIQUE_ID_ddebug282, ptr noundef %dev135, ptr noundef nonnull @.str.30) #13
  br label %out_unlock

if.end139:                                        ; preds = %if.end116
  %ep142 = getelementptr %struct.raw_dev, ptr %dev, i32 0, i32 13, i32 %conv43, i32 2
  %29 = ptrtoint ptr %ep142 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ep142, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %desc, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bEndpointAddress.i, align 1
  %.lobit.i = lshr i8 %34, 7
  %35 = zext i1 %in to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %.lobit.i, i8 %35)
  %cmp144.not = icmp eq i8 %.lobit.i, %35
  br i1 %cmp144.not, label %if.end167, label %do.body147

do.body147:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_process_ep_io.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_process_ep_io, %out_unlock)) #13
          to label %if.then161 [label %out_unlock], !srcloc !244

if.then161:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %gadget, align 4
  %dev163 = getelementptr inbounds %struct.usb_gadget, ptr %37, i32 0, i32 11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_process_ep_io.__UNIQUE_ID_ddebug283, ptr noundef %dev163, ptr noundef nonnull @.str.31) #13
  br label %out_unlock

if.end167:                                        ; preds = %if.end139
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %dev, ptr %arrayidx, align 4
  %req = getelementptr %struct.raw_dev, ptr %dev, i32 0, i32 13, i32 %conv43, i32 4
  %39 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %req, align 4
  %context = getelementptr inbounds %struct.usb_request, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %done, ptr %context, align 4
  %42 = load ptr, ptr %req, align 4
  %complete = getelementptr inbounds %struct.usb_request, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @gadget_ep_complete, ptr %complete, align 4
  %44 = load ptr, ptr %req, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %data, ptr %44, align 4
  %length = getelementptr inbounds %struct.usb_raw_ep_io, ptr %io, i32 0, i32 2
  %46 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %length, align 4
  %48 = load ptr, ptr %req, align 4
  %length172 = getelementptr inbounds %struct.usb_request, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %length172 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %47, ptr %length172, align 4
  %flags173 = getelementptr inbounds %struct.usb_raw_ep_io, ptr %io, i32 0, i32 1
  %50 = ptrtoint ptr %flags173 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %flags173, align 2
  %52 = load ptr, ptr %req, align 4
  %zero = getelementptr inbounds %struct.usb_request, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %53)
  %bf.load = load i32, ptr %zero, align 4
  %54 = shl i16 %51, 13
  %55 = and i16 %54, 8192
  %bf.shl = zext i16 %55 to i32
  %bf.clear = and i32 %bf.load, -8193
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %zero, align 4
  %56 = ptrtoint ptr %urb_queued to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %urb_queued, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  %57 = ptrtoint ptr %ep142 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ep142, align 4
  %59 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %req, align 4
  %call180 = call i32 @usb_ep_queue(ptr noundef %58, ptr noundef %60, i32 noundef 3264) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %if.end203, label %do.end185

do.end185:                                        ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #15
  %61 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %gadget, align 4
  %dev187 = getelementptr inbounds %struct.usb_gadget, ptr %62, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev187, ptr noundef nonnull @.str.32, i32 noundef %call180) #18
  %call197 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %63 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 5, ptr %state, align 4
  br label %out_done

if.end203:                                        ; preds = %if.end167
  %call204 = call i32 @wait_for_completion_interruptible(ptr noundef nonnull %done) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204)
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %do.body246, label %do.body207

do.body207:                                       ; preds = %if.end203
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @raw_process_ep_io.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@raw_process_ep_io, %do.end226)) #13
          to label %if.then221 [label %do.end226], !srcloc !244

if.then221:                                       ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #15
  %64 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %gadget, align 4
  %dev223 = getelementptr inbounds %struct.usb_gadget, ptr %65, i32 0, i32 11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @raw_process_ep_io.__UNIQUE_ID_ddebug284, ptr noundef %dev223, ptr noundef nonnull @.str.33) #13
  br label %do.end226

do.end226:                                        ; preds = %if.then221, %do.body207
  %66 = ptrtoint ptr %ep142 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ep142, align 4
  %68 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %req, align 4
  %call229 = call i32 @usb_ep_dequeue(ptr noundef %67, ptr noundef %69) #13
  call void @wait_for_completion(ptr noundef nonnull %done) #13
  %call239 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  br label %out_done

do.body246:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #15
  %call254 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %status = getelementptr %struct.raw_dev, ptr %dev, i32 0, i32 13, i32 %conv43, i32 7
  %70 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %status, align 4
  br label %out_done

out_done:                                         ; preds = %do.body246, %do.end226, %do.end185
  %flags.0 = phi i32 [ %call197, %do.end185 ], [ %call239, %do.end226 ], [ %call254, %do.body246 ]
  %ret.0 = phi i32 [ %call180, %do.end185 ], [ %call204, %do.end226 ], [ %71, %do.body246 ]
  %72 = ptrtoint ptr %urb_queued to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %urb_queued, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %out_done, %if.then161, %do.body147, %if.then133, %do.body119, %if.then110, %do.body96, %if.then87, %do.body73, %if.then61, %do.body47, %if.then36, %do.body22, %if.then15, %do.body8
  %flags.1 = phi i32 [ %flags.0, %out_done ], [ %call3, %if.then15 ], [ %call3, %if.then36 ], [ %call3, %if.then61 ], [ %call3, %if.then87 ], [ %call3, %if.then110 ], [ %call3, %if.then133 ], [ %call3, %if.then161 ], [ %call3, %do.body8 ], [ %call3, %do.body22 ], [ %call3, %do.body47 ], [ %call3, %do.body73 ], [ %call3, %do.body96 ], [ %call3, %do.body119 ], [ %call3, %do.body147 ]
  %ret.1 = phi i32 [ %ret.0, %out_done ], [ -22, %if.then15 ], [ -16, %if.then36 ], [ -22, %if.then61 ], [ -16, %if.then87 ], [ -16, %if.then110 ], [ -16, %if.then133 ], [ -22, %if.then161 ], [ -22, %do.body8 ], [ -16, %do.body22 ], [ -22, %do.body47 ], [ -16, %do.body73 ], [ -16, %do.body96 ], [ -16, %do.body119 ], [ -22, %do.body147 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.1) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done) #13
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gadget_ep_complete(ptr nocapture noundef readonly %ep, ptr nocapture noundef readonly %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %lock = getelementptr inbounds %struct.raw_dev, ptr %3, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %6 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %.sink = phi i32 [ %7, %if.else ], [ %5, %entry.if.end_crit_edge ]
  %8 = getelementptr inbounds %struct.raw_ep, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %10 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %context, align 4
  tail call void @complete(ptr noundef %11) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_set_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_vbus_draw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_set_halt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_clear_halt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_set_wedge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !26, !27, !29, !31, !33, !34, !35, !36, !37, !38, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71, !73, !74, !75, !77, !78, !80, !82, !83, !85, !86, !88, !89, !90, !92, !93, !95, !96, !97, !99, !101, !103, !104, !105, !107, !108, !109, !111, !112, !114, !115, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !136, !138, !140, !141, !143, !145, !147, !148, !150, !152, !153, !155, !156, !158, !160, !161, !163, !165, !166, !168, !170, !171, !173, !175, !177, !178, !180, !181, !182, !184, !185, !187, !189, !191, !193, !194, !196, !198, !199, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !215, !216, !218, !220, !222, !224, !225, !226}
!llvm.named.register.sp = !{!227}
!llvm.module.flags = !{!228, !229, !230, !231, !232, !233, !234, !235}
!llvm.ident = !{!236}

!0 = !{ptr @__UNIQUE_ID_description237, !1, !"__UNIQUE_ID_description237", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_author238, !3, !"__UNIQUE_ID_author238", i1 false, i1 false}
!3 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 34, i32 1}
!4 = !{ptr @__UNIQUE_ID_file239, !5, !"__UNIQUE_ID_file239", i1 false, i1 false}
!5 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 35, i32 1}
!6 = !{ptr @__UNIQUE_ID_license240, !5, !"__UNIQUE_ID_license240", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_raw_gadget__293_1284_raw_misc_device_init6, !8, !"__initcall__kmod_raw_gadget__293_1284_raw_misc_device_init6", i1 false, i1 false}
!8 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 1284, i32 1}
!9 = !{ptr @__exitcall_raw_misc_device_exit, !8, !"__exitcall_raw_misc_device_exit", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 1280, i32 10}
!12 = !{ptr @raw_misc_device, !13, !"raw_misc_device", i1 false, i1 false}
!13 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 1278, i32 26}
!14 = !{ptr @raw_fops, !15, !"raw_fops", i1 false, i1 false}
!15 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 1270, i32 37}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 469, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @raw_ioctl_init.__UNIQUE_ID_ddebug242, !17, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 477, i32 25}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 329, i32 3}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @gadget_setup._entry, !32, !"_entry", i1 false, i1 false}
!37 = !{ptr @gadget_setup._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 334, i32 3}
!40 = !{ptr @gadget_setup.__UNIQUE_ID_ddebug241, !39, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 346, i32 3}
!43 = !{ptr @gadget_setup._entry.14, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @gadget_setup._entry_ptr.16, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 282, i32 3}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @gadget_bind._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @gadget_bind._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @gadget_bind._entry.19, !51, !"_entry", i1 false, i1 false}
!51 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 306, i32 3}
!52 = !{ptr @gadget_bind._entry_ptr.20, !51, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 507, i32 3}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @raw_ioctl_run.__UNIQUE_ID_ddebug243, !54, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 517, i32 3}
!59 = !{ptr @raw_ioctl_run._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @raw_ioctl_run._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 544, i32 3}
!63 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @raw_ioctl_event_fetch.__UNIQUE_ID_ddebug244, !62, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 549, i32 3}
!67 = !{ptr @raw_ioctl_event_fetch.__UNIQUE_ID_ddebug245, !66, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 557, i32 3}
!70 = !{ptr @raw_ioctl_event_fetch.__UNIQUE_ID_ddebug246, !69, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 561, i32 3}
!73 = !{ptr @raw_ioctl_event_fetch._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @raw_ioctl_event_fetch._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 608, i32 3}
!77 = !{ptr @raw_process_ep0_io.__UNIQUE_ID_ddebug249, !76, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!78 = !{ptr @raw_process_ep0_io.__UNIQUE_ID_ddebug250, !79, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!79 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 613, i32 3}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 618, i32 3}
!82 = !{ptr @raw_process_ep0_io.__UNIQUE_ID_ddebug251, !81, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 624, i32 3}
!85 = !{ptr @raw_process_ep0_io.__UNIQUE_ID_ddebug252, !84, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 647, i32 3}
!88 = !{ptr @raw_process_ep0_io._entry, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @raw_process_ep0_io._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 656, i32 3}
!92 = !{ptr @raw_process_ep0_io.__UNIQUE_ID_ddebug253, !91, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!93 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 771, i32 3}
!95 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @raw_ioctl_ep_enable.__UNIQUE_ID_ddebug260, !94, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!97 = !{ptr @raw_ioctl_ep_enable.__UNIQUE_ID_ddebug261, !98, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!98 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 778, i32 3}
!99 = !{ptr @raw_ioctl_ep_enable.__UNIQUE_ID_ddebug262, !100, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!100 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 783, i32 3}
!101 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 800, i32 4}
!103 = !{ptr @raw_ioctl_ep_enable._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @raw_ioctl_ep_enable._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 806, i32 4}
!107 = !{ptr @raw_ioctl_ep_enable._entry.37, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @raw_ioctl_ep_enable._entry_ptr.39, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.40, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 818, i32 2}
!111 = !{ptr @raw_ioctl_ep_enable.__UNIQUE_ID_ddebug263, !110, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!112 = !{ptr @.str.41, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 835, i32 3}
!114 = !{ptr @raw_ioctl_ep_disable.__UNIQUE_ID_ddebug264, !113, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!115 = !{ptr @raw_ioctl_ep_disable.__UNIQUE_ID_ddebug265, !116, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!116 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 840, i32 3}
!117 = !{ptr @.str.42, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 845, i32 3}
!119 = !{ptr @raw_ioctl_ep_disable.__UNIQUE_ID_ddebug266, !118, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!120 = !{ptr @.str.43, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 850, i32 3}
!122 = !{ptr @raw_ioctl_ep_disable.__UNIQUE_ID_ddebug267, !121, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!123 = !{ptr @.str.44, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 855, i32 3}
!125 = !{ptr @raw_ioctl_ep_disable.__UNIQUE_ID_ddebug268, !124, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!126 = !{ptr @.str.45, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 861, i32 3}
!128 = !{ptr @raw_ioctl_ep_disable.__UNIQUE_ID_ddebug269, !127, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!129 = !{ptr @.str.46, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 976, i32 3}
!131 = !{ptr @raw_process_ep_io.__UNIQUE_ID_ddebug277, !130, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!132 = !{ptr @raw_process_ep_io.__UNIQUE_ID_ddebug278, !133, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!133 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 981, i32 3}
!134 = !{ptr @raw_process_ep_io.__UNIQUE_ID_ddebug279, !135, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!135 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 986, i32 3}
!136 = !{ptr @raw_process_ep_io.__UNIQUE_ID_ddebug280, !137, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!137 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 992, i32 3}
!138 = !{ptr @.str.47, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 997, i32 3}
!140 = !{ptr @raw_process_ep_io.__UNIQUE_ID_ddebug281, !139, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!141 = !{ptr @raw_process_ep_io.__UNIQUE_ID_ddebug282, !142, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!142 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 1003, i32 3}
!143 = !{ptr @raw_process_ep_io.__UNIQUE_ID_ddebug283, !144, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!144 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 1008, i32 3}
!145 = !{ptr @raw_process_ep_io._entry, !146, !"_entry", i1 false, i1 false}
!146 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 1024, i32 3}
!147 = !{ptr @raw_process_ep_io._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @raw_process_ep_io.__UNIQUE_ID_ddebug284, !149, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!149 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 1033, i32 3}
!150 = !{ptr @init_completion.__key, !151, !"__key", i1 false, i1 false}
!151 = !{!"../include/linux/completion.h", i32 87, i32 2}
!152 = !{ptr @.str.48, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.49, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 1097, i32 3}
!155 = !{ptr @raw_ioctl_configure.__UNIQUE_ID_ddebug287, !154, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!156 = !{ptr @raw_ioctl_configure.__UNIQUE_ID_ddebug288, !157, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!157 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 1102, i32 3}
!158 = !{ptr @.str.50, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 1120, i32 3}
!160 = !{ptr @raw_ioctl_vbus_draw.__UNIQUE_ID_ddebug289, !159, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!161 = !{ptr @raw_ioctl_vbus_draw.__UNIQUE_ID_ddebug290, !162, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!162 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 1125, i32 3}
!163 = !{ptr @.str.51, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 1168, i32 3}
!165 = !{ptr @raw_ioctl_eps_info.__UNIQUE_ID_ddebug291, !164, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!166 = !{ptr @raw_ioctl_eps_info.__UNIQUE_ID_ddebug292, !167, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!167 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 1174, i32 3}
!168 = !{ptr @.str.52, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 720, i32 3}
!170 = !{ptr @raw_ioctl_ep0_stall.__UNIQUE_ID_ddebug256, !169, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!171 = !{ptr @raw_ioctl_ep0_stall.__UNIQUE_ID_ddebug257, !172, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!172 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 725, i32 3}
!173 = !{ptr @raw_ioctl_ep0_stall.__UNIQUE_ID_ddebug258, !174, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!174 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 730, i32 3}
!175 = !{ptr @.str.53, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 735, i32 3}
!177 = !{ptr @raw_ioctl_ep0_stall.__UNIQUE_ID_ddebug259, !176, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!178 = !{ptr @.str.54, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 742, i32 3}
!180 = !{ptr @raw_ioctl_ep0_stall._entry, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @raw_ioctl_ep0_stall._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.55, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 890, i32 3}
!184 = !{ptr @raw_ioctl_ep_set_clear_halt_wedge.__UNIQUE_ID_ddebug270, !183, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!185 = !{ptr @raw_ioctl_ep_set_clear_halt_wedge.__UNIQUE_ID_ddebug271, !186, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!186 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 895, i32 3}
!187 = !{ptr @raw_ioctl_ep_set_clear_halt_wedge.__UNIQUE_ID_ddebug272, !188, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!188 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 900, i32 3}
!189 = !{ptr @raw_ioctl_ep_set_clear_halt_wedge.__UNIQUE_ID_ddebug273, !190, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!190 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 905, i32 3}
!191 = !{ptr @.str.56, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 910, i32 3}
!193 = !{ptr @raw_ioctl_ep_set_clear_halt_wedge.__UNIQUE_ID_ddebug274, !192, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!194 = !{ptr @raw_ioctl_ep_set_clear_halt_wedge.__UNIQUE_ID_ddebug275, !195, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!195 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 916, i32 3}
!196 = !{ptr @.str.57, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 922, i32 3}
!198 = !{ptr @raw_ioctl_ep_set_clear_halt_wedge.__UNIQUE_ID_ddebug276, !197, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!199 = !{ptr @raw_ioctl_ep_set_clear_halt_wedge._entry, !200, !"_entry", i1 false, i1 false}
!200 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 931, i32 4}
!201 = !{ptr @raw_ioctl_ep_set_clear_halt_wedge._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.59, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 936, i32 4}
!204 = !{ptr @raw_ioctl_ep_set_clear_halt_wedge._entry.58, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @raw_ioctl_ep_set_clear_halt_wedge._entry_ptr.60, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.62, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 941, i32 4}
!208 = !{ptr @raw_ioctl_ep_set_clear_halt_wedge._entry.61, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @raw_ioctl_ep_set_clear_halt_wedge._entry_ptr.63, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @dev_new.__key, !211, !"__key", i1 false, i1 false}
!211 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 188, i32 2}
!212 = !{ptr @.str.64, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @raw_event_queue_init.__key, !214, !"__key", i1 false, i1 false}
!214 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 51, i32 2}
!215 = !{ptr @.str.65, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @sema_init.__key, !217, !"__key", i1 false, i1 false}
!217 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!218 = !{ptr @.str.66, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!220 = !{ptr @.str.67, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!222 = !{ptr @.str.68, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/usb/gadget/legacy/raw_gadget.c", i32 403, i32 4}
!224 = !{ptr @.str.69, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @raw_release._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @raw_release._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{!"sp"}
!228 = !{i32 1, !"wchar_size", i32 2}
!229 = !{i32 1, !"min_enum_size", i32 4}
!230 = !{i32 8, !"branch-target-enforcement", i32 0}
!231 = !{i32 8, !"sign-return-address", i32 0}
!232 = !{i32 8, !"sign-return-address-all", i32 0}
!233 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!234 = !{i32 7, !"uwtable", i32 1}
!235 = !{i32 7, !"frame-pointer", i32 2}
!236 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!237 = !{i64 2152209081, i64 2152209106}
!238 = !{i8 0, i8 2}
!239 = !{i64 2152208400, i64 2152208425}
!240 = !{!"branch_weights", i32 2000, i32 1}
!241 = !{i64 4703955}
!242 = !{i64 4704152}
!243 = !{i64 2152189385}
!244 = !{i64 2148520519, i64 2148520524, i64 2148520537, i64 2148520581, i64 2148520615, i64 2148520636}
!245 = !{i64 2148697451, i64 2148697483, i64 2148697512, i64 2148697546, i64 2148697577, i64 2148697600}
!246 = !{!"branch_weights", i32 1, i32 2000}
!247 = !{!"auto-init"}
!248 = !{i64 2148785476}
!249 = !{i64 2148699916, i64 2148699948, i64 2148699977, i64 2148700011, i64 2148700042, i64 2148700065}
!250 = !{i64 2150406565}
