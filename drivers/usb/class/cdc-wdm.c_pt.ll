; ModuleID = '/llk/IR_all_yes/drivers/usb/class/cdc-wdm.c_pt.bc'
source_filename = "../drivers/usb/class/cdc-wdm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+usb_cdc_wdm_register\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_cdc_wdm_register\09\09\09\09"
module asm "\09.long\09__crc_usb_cdc_wdm_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_cdc_wdm_register:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_cdc_wdm_register\22\09\09\09\09\09"
module asm "__kstrtabns_usb_cdc_wdm_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

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
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_class_driver = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wwan_port_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.wdm_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, %struct.work_struct, i32, i32, i32, %struct.list_head, ptr, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
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
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_cdc_notification = type { i8, i8, i16, i16, i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.99, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.100, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.101, ptr, %struct.address_space, %struct.list_head, %union.anon.102, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.99 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.100 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.101 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.102 = type { ptr }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.usb_cdc_parsed_header = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_cdc_dmm_desc = type <{ i8, i8, i8, i16, i16 }>

@wdm_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.27, ptr @wdm_probe, ptr @wdm_disconnect, ptr null, ptr @wdm_suspend, ptr @wdm_resume, ptr @wdm_resume, ptr @wdm_pre_reset, ptr @wdm_post_reset, ptr @wdm_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 96 }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_usb_cdc_wdm_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_cdc_wdm_register = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_cdc_wdm_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_cdc_wdm_register to i32), ptr @__kstrtab_usb_cdc_wdm_register, ptr @__kstrtabns_usb_cdc_wdm_register }, section "___ksymtab+usb_cdc_wdm_register", align 4
@__initcall__kmod_cdc_wdm__357_1366_wdm_driver_init6 = internal global ptr @wdm_driver_init, section ".initcall6.init", align 4
@__exitcall_wdm_driver_exit = internal global ptr @wdm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author358 = internal constant [29 x i8] c"cdc_wdm.author=Oliver Neukum\00", section ".modinfo", align 1
@__UNIQUE_ID_description359 = internal constant [84 x i8] c"cdc_wdm.description=USB Abstract Control Model driver for USB WCM Device Management\00", section ".modinfo", align 1
@__UNIQUE_ID_file360 = internal constant [39 x i8] c"cdc_wdm.file=drivers/usb/class/cdc-wdm\00", section ".modinfo", align 1
@__UNIQUE_ID_license361 = internal constant [20 x i8] c"cdc_wdm.license=GPL\00", section ".modinfo", align 1
@wdm_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&desc->rlock\00", [19 x i8] zeroinitializer }, align 32
@wdm_create.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&desc->wlock\00", [19 x i8] zeroinitializer }, align 32
@wdm_create.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&desc->iuspin\00", [18 x i8] zeroinitializer }, align 32
@wdm_create.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&desc->wait\00", [20 x i8] zeroinitializer }, align 32
@wdm_create.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&desc->rxwork)\00", [63 x i8] zeroinitializer }, align 32
@wdm_create.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&desc->service_outs_intr)\00", [52 x i8] zeroinitializer }, align 32
@wdm_device_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.51, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@wdm_device_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @wdm_device_list, ptr @wdm_device_list }, [24 x i8] zeroinitializer }, align 32
@wdm_class = internal global { %struct.usb_class_driver, [16 x i8] } { %struct.usb_class_driver { ptr @.str.52, ptr null, ptr @wdm_fops, i32 176 }, [16 x i8] zeroinitializer }, align 32
@wdm_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 1115, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: USB WDM device\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wdm_create\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/class/cdc-wdm.c\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wdm_create._entry_ptr = internal global ptr @wdm_create._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@service_outstanding_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.13, i32 509, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"usb_submit_urb failed with result %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"service_outstanding_interrupt\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@service_outstanding_interrupt._entry_ptr = internal global ptr @service_outstanding_interrupt._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@wdm_int_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.13, i32 266, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Stall on int endpoint\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wdm_int_callback\00", [47 x i8] zeroinitializer }, align 32
@wdm_int_callback._entry_ptr = internal global ptr @wdm_int_callback._entry, section ".printk_index", align 4
@wdm_int_callback._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.13, i32 270, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nonzero urb status received: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@wdm_int_callback._entry_ptr.23 = internal global ptr @wdm_int_callback._entry.21, section ".printk_index", align 4
@wdm_int_callback._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.13, i32 277, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wdm_int_callback - %d bytes\0A\00", [35 x i8] zeroinitializer }, align 32
@wdm_int_callback._entry_ptr.26 = internal global ptr @wdm_int_callback._entry.24, section ".printk_index", align 4
@wdm_int_callback.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.20, ptr @.str.13, ptr @.str.28, i8 0, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cdc_wdm\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"NOTIFY_RESPONSE_AVAILABLE received: index %d len %d\0A\00", [43 x i8] zeroinitializer }, align 32
@wdm_int_callback.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.20, ptr @.str.13, ptr @.str.29, i8 0, i8 73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"NOTIFY_NETWORK_CONNECTION %s network\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"connected to\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"disconnected from\00", [46 x i8] zeroinitializer }, align 32
@wdm_int_callback.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.20, ptr @.str.13, ptr @.str.32, i8 0, i8 74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SPEED_CHANGE received (len %u)\0A\00", [32 x i8] zeroinitializer }, align 32
@wdm_int_callback._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.20, ptr @.str.13, i32 304, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"unknown notification %d received: index %d len %d\0A\00", [45 x i8] zeroinitializer }, align 32
@wdm_int_callback._entry_ptr.35 = internal global ptr @wdm_int_callback._entry.33, section ".printk_index", align 4
@wdm_int_callback.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.20, ptr @.str.13, ptr @.str.36, i8 0, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"submit response URB %d\0A\00", [40 x i8] zeroinitializer }, align 32
@wdm_int_callback._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.20, ptr @.str.13, i32 326, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Cannot schedule work\0A\00", [42 x i8] zeroinitializer }, align 32
@wdm_int_callback._entry_ptr.39 = internal global ptr @wdm_int_callback._entry.37, section ".printk_index", align 4
@wdm_int_callback._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.20, ptr @.str.13, i32 334, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s - usb_submit_urb failed with result %d\0A\00", [53 x i8] zeroinitializer }, align 32
@wdm_int_callback._entry_ptr.42 = internal global ptr @wdm_int_callback._entry.40, section ".printk_index", align 4
@wdm_in_callback.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.43, ptr @.str.13, ptr @.str.44, i8 0, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wdm_in_callback\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"nonzero urb status received: -ENOENT\0A\00", [58 x i8] zeroinitializer }, align 32
@wdm_in_callback.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.43, ptr @.str.13, ptr @.str.45, i8 0, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"nonzero urb status received: -ECONNRESET\0A\00", [54 x i8] zeroinitializer }, align 32
@wdm_in_callback.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.43, ptr @.str.13, ptr @.str.46, i8 0, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"nonzero urb status received: -ESHUTDOWN\0A\00", [55 x i8] zeroinitializer }, align 32
@wdm_in_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.43, ptr @.str.13, i32 194, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"nonzero urb status received: -EPIPE\0A\00", [59 x i8] zeroinitializer }, align 32
@wdm_in_callback._entry_ptr = internal global ptr @wdm_in_callback._entry, section ".printk_index", align 4
@wdm_in_callback._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.43, ptr @.str.13, i32 198, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unexpected error %d\0A\00", [43 x i8] zeroinitializer }, align 32
@wdm_in_callback._entry_ptr.50 = internal global ptr @wdm_in_callback._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wdm_device_list_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cdc-wdm%d\00", [22 x i8] zeroinitializer }, align 32
@wdm_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @wdm_read, ptr @wdm_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wdm_poll, ptr @wdm_ioctl, ptr null, ptr null, i32 0, ptr @wdm_open, ptr @wdm_flush, ptr @wdm_release, ptr @wdm_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@wdm_read.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.53, ptr @.str.13, ptr @.str.54, i8 0, i8 -109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wdm_read\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"zero length - clearing WDM_READ\0A\00", [63 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@wdm_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.13, i32 459, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Tx URB error: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wdm_write\00", [22 x i8] zeroinitializer }, align 32
@wdm_write._entry_ptr = internal global ptr @wdm_write._entry, section ".printk_index", align 4
@wdm_write.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.59, ptr @.str.13, ptr @.str.60, i8 0, i8 116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Tx URB has been submitted index=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@wdm_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.66, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @wdm_mutex, i64 52), ptr getelementptr (i8, ptr @wdm_mutex, i64 52) }, ptr @wdm_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.67, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@wdm_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.13, i32 732, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Error autopm - %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wdm_open\00", [23 x i8] zeroinitializer }, align 32
@wdm_open._entry_ptr = internal global ptr @wdm_open._entry, section ".printk_index", align 4
@wdm_open._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.13, i32 745, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error submitting int urb - %d\0A\00", [33 x i8] zeroinitializer }, align 32
@wdm_open._entry_ptr.65 = internal global ptr @wdm_open._entry.63, section ".printk_index", align 4
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wdm_mutex.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wdm_mutex\00", [22 x i8] zeroinitializer }, align 32
@wdm_release.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.68, ptr @.str.13, ptr @.str.69, i8 0, i8 -63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wdm_release\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wdm_release: cleanup\0A\00", [42 x i8] zeroinitializer }, align 32
@wdm_release.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.68, ptr @.str.13, ptr @.str.70, i8 0, i8 -61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cdc_wdm %s: device gone - cleaning up\0A\00", [57 x i8] zeroinitializer }, align 32
@wdm_wwan_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.13, i32 927, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unknown control protocol\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wdm_wwan_init\00", [18 x i8] zeroinitializer }, align 32
@wdm_wwan_init._entry_ptr = internal global ptr @wdm_wwan_init._entry, section ".printk_index", align 4
@wdm_wwan_port_ops = internal constant { %struct.wwan_port_ops, [44 x i8] } { %struct.wwan_port_ops { ptr @wdm_wwan_port_start, ptr @wdm_wwan_port_stop, ptr @wdm_wwan_port_tx, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@wdm_wwan_init._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.13, i32 934, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Unable to create WWAN port\0A\00", [32 x i8] zeroinitializer }, align 32
@wdm_wwan_init._entry_ptr.75 = internal global ptr @wdm_wwan_init._entry.73, section ".printk_index", align 4
@wdm_ids = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 384, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 9, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@wdm_disconnect.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.76, ptr @.str.13, ptr @.str.77, i8 1, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wdm_disconnect\00", [17 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%d open files - postponing cleanup\0A\00", [60 x i8] zeroinitializer }, align 32
@wdm_suspend.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.78, ptr @.str.13, ptr @.str.79, i8 1, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wdm_suspend\00", [20 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wdm%d_suspend\0A\00", [17 x i8] zeroinitializer }, align 32
@wdm_resume.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.80, ptr @.str.13, ptr @.str.81, i8 1, i8 69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wdm_resume\00", [21 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wdm%d_resume\0A\00", [18 x i8] zeroinitializer }, align 32
@recover_from_urb_loss._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.13, i32 1291, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error resume submitting int urb - %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"recover_from_urb_loss\00", [42 x i8] zeroinitializer }, align 32
@recover_from_urb_loss._entry_ptr = internal global ptr @recover_from_urb_loss._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 42]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 4294967284, i64 4294967295]
@__sancov_gen_cov_switch_values.86 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.87 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967201, i64 4294967277, i64 4294967284]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 32, i64 4294967201, i64 4294967277, i64 4294967284]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 32, i64 4294967201, i64 4294967277, i64 4294967284]
@__sancov_gen_cov_switch_values.90 = internal global [5 x i64] [i64 3, i64 32, i64 4294967201, i64 4294967277, i64 4294967284]
@__sancov_gen_cov_switch_values.91 = internal global [5 x i64] [i64 3, i64 32, i64 4294967201, i64 4294967277, i64 4294967284]
@__sancov_gen_cov_switch_values.92 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967201, i64 4294967277, i64 4294967284]
@___asan_gen_.93 = private unnamed_addr constant [11 x i8] c"wdm_driver\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1350, i32 26 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1026, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1027, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1028, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1029, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1035, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1036, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [21 x i8] c"wdm_device_list_lock\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [16 x i8] c"wdm_device_list\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 72, i32 8 }
@___asan_gen_.138 = private unnamed_addr constant [10 x i8] c"wdm_class\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 820, i32 32 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1115, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 508, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 266, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 269, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 276, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 283, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 290, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 295, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 300, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 314, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 325, i32 5 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 332, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 181, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 185, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 189, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 193, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 197, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 71, i32 8 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 821, i32 11 }
@___asan_gen_.261 = private unnamed_addr constant [9 x i8] c"wdm_fops\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 806, i32 37 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 589, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 230, i32 6 }
@___asan_gen_.274 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 214, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 174, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 459, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 463, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant [10 x i8] c"wdm_mutex\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 732, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 744, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 70, i32 8 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 773, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 782, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 927, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant [18 x i8] c"wdm_wwan_port_ops\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 914, i32 35 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 933, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant [8 x i8] c"wdm_ids\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 35, i32 35 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1240, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1250, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1302, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.369 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.370 = private constant [31 x i8] c"../drivers/usb/class/cdc-wdm.c\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1290, i32 4 }
@llvm.compiler.used = appending global [117 x ptr] [ptr @__UNIQUE_ID_author358, ptr @__UNIQUE_ID_description359, ptr @__UNIQUE_ID_file360, ptr @__UNIQUE_ID_license361, ptr @__exitcall_wdm_driver_exit, ptr @__initcall__kmod_cdc_wdm__357_1366_wdm_driver_init6, ptr @__ksymtab_usb_cdc_wdm_register, ptr @recover_from_urb_loss._entry, ptr @recover_from_urb_loss._entry_ptr, ptr @service_outstanding_interrupt._entry, ptr @service_outstanding_interrupt._entry_ptr, ptr @wdm_create._entry, ptr @wdm_create._entry_ptr, ptr @wdm_driver_exit, ptr @wdm_in_callback._entry, ptr @wdm_in_callback._entry.48, ptr @wdm_in_callback._entry_ptr, ptr @wdm_in_callback._entry_ptr.50, ptr @wdm_int_callback._entry, ptr @wdm_int_callback._entry.21, ptr @wdm_int_callback._entry.24, ptr @wdm_int_callback._entry.33, ptr @wdm_int_callback._entry.37, ptr @wdm_int_callback._entry.40, ptr @wdm_int_callback._entry_ptr, ptr @wdm_int_callback._entry_ptr.23, ptr @wdm_int_callback._entry_ptr.26, ptr @wdm_int_callback._entry_ptr.35, ptr @wdm_int_callback._entry_ptr.39, ptr @wdm_int_callback._entry_ptr.42, ptr @wdm_open._entry, ptr @wdm_open._entry.63, ptr @wdm_open._entry_ptr, ptr @wdm_open._entry_ptr.65, ptr @wdm_write._entry, ptr @wdm_write._entry_ptr, ptr @wdm_wwan_init._entry, ptr @wdm_wwan_init._entry.73, ptr @wdm_wwan_init._entry_ptr, ptr @wdm_wwan_init._entry_ptr.75, ptr @wdm_driver, ptr @wdm_create.__key, ptr @.str, ptr @wdm_create.__key.1, ptr @.str.2, ptr @wdm_create.__key.3, ptr @.str.4, ptr @wdm_create.__key.5, ptr @.str.6, ptr @wdm_create.__key.7, ptr @.str.8, ptr @wdm_create.__key.9, ptr @.str.10, ptr @wdm_device_list_lock, ptr @wdm_device_list, ptr @wdm_class, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @wdm_fops, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @wdm_mutex, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @wdm_wwan_port_ops, ptr @.str.74, ptr @wdm_ids, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83], section "llvm.metadata"
@0 = internal global [93 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdm_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdm_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdm_create.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdm_create.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdm_create.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdm_create.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdm_create.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdm_device_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdm_device_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdm_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdm_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @service_outstanding_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdm_int_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdm_int_callback._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdm_int_callback._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdm_int_callback._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdm_int_callback._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdm_int_callback._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdm_in_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdm_in_callback._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdm_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdm_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdm_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdm_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdm_open._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdm_wwan_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdm_wwan_port_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdm_wwan_init._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdm_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recover_from_urb_loss._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @usb_cdc_wdm_register(ptr noundef %intf, ptr nocapture noundef readonly %ep, i32 noundef %bufsize, i32 noundef %type, ptr noundef %manage_power) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %bufsize to i16
  %call = tail call fastcc i32 @wdm_create(ptr noundef %intf, ptr noundef %ep, i16 noundef zeroext %conv, i32 noundef %type, ptr noundef %manage_power)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %0 = inttoptr i32 %call to ptr
  %spec.select = select i1 %cmp, ptr %0, ptr @wdm_driver
  ret ptr %spec.select
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wdm_create(ptr noundef %intf, ptr nocapture noundef readonly %ep, i16 noundef zeroext %bufsize, i32 noundef %type, ptr noundef %manage_power) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 476) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %device_list = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 30
  %1 = ptrtoint ptr %device_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %device_list, ptr %device_list, align 8
  %prev.i = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 30, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %device_list, ptr %prev.i, align 4
  %rlock = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 23
  tail call void @__mutex_init(ptr noundef %rlock, ptr noundef nonnull @.str, ptr noundef nonnull @wdm_create.__key) #8
  %wlock = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 22
  tail call void @__mutex_init(ptr noundef %wlock, ptr noundef nonnull @.str.2, ptr noundef nonnull @wdm_create.__key.1) #8
  %iuspin = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %iuspin, ptr noundef nonnull @.str.4, ptr noundef nonnull @wdm_create.__key.3, i16 noundef signext 3) #8
  %wait = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 24
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.6, ptr noundef nonnull @wdm_create.__key.5) #8
  %wMaxCommand = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 13
  %3 = ptrtoint ptr %wMaxCommand to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %bufsize, ptr %wMaxCommand, align 2
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %4 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %7 to i16
  %8 = shl nuw i16 %conv, 8
  %inum = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 15
  %9 = ptrtoint ptr %inum to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %inum, align 2
  %intf12 = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %intf12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %intf, ptr %intf12, align 4
  %wwanp_type = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 32
  %11 = ptrtoint ptr %wwanp_type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %type, ptr %wwanp_type, align 4
  %rxwork = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 25
  tail call void @__init_work(ptr noundef %rxwork, i32 noundef 0) #8
  %12 = ptrtoint ptr %rxwork to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %rxwork, align 4
  %lockdep_map = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 25, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @wdm_create.__key.7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry17 = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 25, i32 1
  %13 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry17, ptr %entry17, align 8
  %prev.i259 = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 25, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i259 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry17, ptr %prev.i259, align 4
  %func = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 25, i32 2
  %15 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @wdm_rxwork, ptr %func, align 8
  %service_outs_intr = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 26
  tail call void @__init_work(ptr noundef %service_outs_intr, i32 noundef 0) #8
  %16 = ptrtoint ptr %service_outs_intr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64, ptr %service_outs_intr, align 8
  %lockdep_map27 = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 26, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map27, ptr noundef nonnull @.str.10, ptr noundef nonnull @wdm_create.__key.9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry29 = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 26, i32 1
  %17 = ptrtoint ptr %entry29 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry29, ptr %entry29, align 4
  %prev.i260 = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 26, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i260 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry29, ptr %prev.i260, align 8
  %func31 = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 26, i32 2
  %19 = ptrtoint ptr %func31 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @service_interrupt_work, ptr %func31, align 4
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep, i32 0, i32 3
  %20 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bmAttributes.i.i, align 1
  %22 = and i8 %21, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %22)
  %cmp.i.not.i = icmp eq i8 %22, 3
  br i1 %cmp.i.not.i, label %usb_endpoint_is_int_in.exit, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

usb_endpoint_is_int_in.exit:                      ; preds = %if.end
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep, i32 0, i32 2
  %23 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %tobool35.not = icmp sgt i8 %24, -1
  br i1 %tobool35.not, label %usb_endpoint_is_int_in.exit.err_crit_edge, label %if.end37

usb_endpoint_is_int_in.exit.err_crit_edge:        ; preds = %usb_endpoint_is_int_in.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end37:                                         ; preds = %usb_endpoint_is_int_in.exit
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep, i32 0, i32 4
  %25 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %wMaxPacketSize.i, align 1
  %27 = and i16 %26, -249
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #8
  %wMaxPacketSize = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 14
  %29 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %wMaxPacketSize, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3264, i32 noundef 8) #11
  %orq = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 8
  %31 = ptrtoint ptr %orq to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i, ptr %orq, align 8
  %tobool42.not = icmp eq ptr %call7.i, null
  br i1 %tobool42.not, label %if.end37.err_crit_edge, label %if.end44

if.end37.err_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end44:                                         ; preds = %if.end37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i199 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3264, i32 noundef 8) #11
  %irq = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 9
  %33 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i199, ptr %irq, align 4
  %tobool47.not = icmp eq ptr %call7.i199, null
  br i1 %tobool47.not, label %if.end44.err_crit_edge, label %if.end49

if.end44.err_crit_edge:                           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end49:                                         ; preds = %if.end44
  %call50 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %validity = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 6
  %34 = ptrtoint ptr %validity to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call50, ptr %validity, align 8
  %tobool52.not = icmp eq ptr %call50, null
  br i1 %tobool52.not, label %if.end49.err_crit_edge, label %if.end54

if.end49.err_crit_edge:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end54:                                         ; preds = %if.end49
  %call55 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %response = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 5
  %35 = ptrtoint ptr %response to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call55, ptr %response, align 4
  %tobool57.not = icmp eq ptr %call55, null
  br i1 %tobool57.not, label %if.end54.err_crit_edge, label %if.end59

if.end54.err_crit_edge:                           ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end59:                                         ; preds = %if.end54
  %call60 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %command = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 4
  %36 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call60, ptr %command, align 8
  %tobool62.not = icmp eq ptr %call60, null
  br i1 %tobool62.not, label %if.end59.err_crit_edge, label %if.end8.i

if.end59.err_crit_edge:                           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end8.i:                                        ; preds = %if.end59
  %37 = ptrtoint ptr %wMaxCommand to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %wMaxCommand, align 2
  %conv66 = zext i16 %38 to i32
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv66, i32 noundef 3264) #12
  %ubuf = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %ubuf to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call9.i, ptr %ubuf, align 4
  %tobool69.not = icmp eq ptr %call9.i, null
  br i1 %tobool69.not, label %if.end8.i.err_crit_edge, label %if.end8.i227

if.end8.i.err_crit_edge:                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end8.i227:                                     ; preds = %if.end8.i
  %40 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %wMaxPacketSize, align 4
  %conv73 = zext i16 %41 to i32
  %call9.i226 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv73, i32 noundef 3264) #12
  %sbuf = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %sbuf to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call9.i226, ptr %sbuf, align 8
  %tobool76.not = icmp eq ptr %call9.i226, null
  br i1 %tobool76.not, label %if.end8.i227.err_crit_edge, label %if.end8.i256

if.end8.i227.err_crit_edge:                       ; preds = %if.end8.i227
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end8.i256:                                     ; preds = %if.end8.i227
  %43 = ptrtoint ptr %wMaxCommand to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %wMaxCommand, align 2
  %conv80 = zext i16 %44 to i32
  %call9.i255 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv80, i32 noundef 3264) #12
  %45 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call9.i255, ptr %call7.i.i, align 8
  %tobool83.not = icmp eq ptr %call9.i255, null
  br i1 %tobool83.not, label %if.end8.i256.err_crit_edge, label %if.end85

if.end8.i256.err_crit_edge:                       ; preds = %if.end8.i256
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end85:                                         ; preds = %if.end8.i256
  %46 = ptrtoint ptr %validity to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %validity, align 8
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %48 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %49, i32 -128
  %50 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bEndpointAddress.i.i, align 1
  %conv89 = zext i8 %51 to i32
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %53, 8
  %shl1.i = shl nuw nsw i32 %conv89, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or91 = or i32 %or.i, 1073741952
  %54 = ptrtoint ptr %sbuf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sbuf, align 8
  %56 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %wMaxPacketSize, align 4
  %conv94 = zext i16 %57 to i32
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep, i32 0, i32 5
  %58 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %bInterval, align 1
  %conv95 = zext i8 %59 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %47, i32 0, i32 8
  %60 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %47, i32 0, i32 10
  %61 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or91, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %47, i32 0, i32 14
  %62 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %55, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %47, i32 0, i32 19
  %63 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv94, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %47, i32 0, i32 28
  %64 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @wdm_int_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %47, i32 0, i32 27
  %65 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %speed.i = getelementptr i8, ptr %49, i32 -100
  %66 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %67)
  %cmp.i263 = icmp eq i32 %67, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %67)
  %cmp6.i = icmp ugt i32 %67, 4
  %or.cond.i = or i1 %cmp.i263, %cmp6.i
  br i1 %or.cond.i, label %if.then.i265, label %if.end85.usb_fill_int_urb.exit_crit_edge

if.end85.usb_fill_int_urb.exit_crit_edge:         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb_fill_int_urb.exit

if.then.i265:                                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  %68 = tail call i32 @llvm.smax.i32(i32 %conv95, i32 1) #8
  %69 = tail call i32 @llvm.umin.i32(i32 %68, i32 16) #8
  %sub.i = add nsw i32 %69, -1
  %shl.i264 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i265, %if.end85.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i264, %if.then.i265 ], [ %conv95, %if.end85.usb_fill_int_urb.exit_crit_edge ]
  %70 = getelementptr inbounds %struct.urb, ptr %47, i32 0, i32 25
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %interval.sink.i, ptr %70, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %47, i32 0, i32 23
  %72 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %start_frame.i, align 4
  %73 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %irq, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 -95, ptr %74, align 1
  %76 = load ptr, ptr %irq, align 4
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %bRequest to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %bRequest, align 1
  %78 = load ptr, ptr %irq, align 4
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %wValue to i32
  call void @__asan_storeN_noabort(i32 %79, i32 2)
  store i16 0, ptr %wValue, align 1
  %80 = ptrtoint ptr %inum to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %inum, align 2
  %82 = load ptr, ptr %irq, align 4
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %wIndex to i32
  call void @__asan_storeN_noabort(i32 %83, i32 2)
  store i16 %81, ptr %wIndex, align 1
  %84 = ptrtoint ptr %wMaxCommand to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %wMaxCommand, align 2
  %86 = tail call i16 @llvm.bswap.i16(i16 %85)
  %87 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %irq, align 4
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %88, i32 0, i32 4
  %89 = ptrtoint ptr %wLength to i32
  call void @__asan_storeN_noabort(i32 %89, i32 2)
  store i16 %86, ptr %wLength, align 1
  %90 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %response, align 4
  %92 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %parent.i, align 8
  %add.ptr.i268 = getelementptr i8, ptr %93, i32 -128
  %94 = ptrtoint ptr %intf12 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %intf12, align 4
  %parent.i269 = getelementptr inbounds %struct.usb_interface, ptr %95, i32 0, i32 7, i32 1
  %96 = ptrtoint ptr %parent.i269 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %parent.i269, align 8
  %add.ptr.i270 = getelementptr i8, ptr %97, i32 -128
  %98 = ptrtoint ptr %add.ptr.i270 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %add.ptr.i270, align 8
  %shl.i271 = shl i32 %99, 8
  %or109 = or i32 %shl.i271, -2147483520
  %100 = load ptr, ptr %irq, align 4
  %101 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %call7.i.i, align 8
  %103 = ptrtoint ptr %wMaxCommand to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %wMaxCommand, align 2
  %conv113 = zext i16 %104 to i32
  %dev1.i272 = getelementptr inbounds %struct.urb, ptr %91, i32 0, i32 8
  %105 = ptrtoint ptr %dev1.i272 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %add.ptr.i268, ptr %dev1.i272, align 4
  %pipe2.i273 = getelementptr inbounds %struct.urb, ptr %91, i32 0, i32 10
  %106 = ptrtoint ptr %pipe2.i273 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %or109, ptr %pipe2.i273, align 4
  %setup_packet3.i = getelementptr inbounds %struct.urb, ptr %91, i32 0, i32 21
  %107 = ptrtoint ptr %setup_packet3.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %100, ptr %setup_packet3.i, align 4
  %transfer_buffer4.i = getelementptr inbounds %struct.urb, ptr %91, i32 0, i32 14
  %108 = ptrtoint ptr %transfer_buffer4.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %102, ptr %transfer_buffer4.i, align 4
  %transfer_buffer_length.i274 = getelementptr inbounds %struct.urb, ptr %91, i32 0, i32 19
  %109 = ptrtoint ptr %transfer_buffer_length.i274 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %conv113, ptr %transfer_buffer_length.i274, align 4
  %complete.i275 = getelementptr inbounds %struct.urb, ptr %91, i32 0, i32 28
  %110 = ptrtoint ptr %complete.i275 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @wdm_in_callback, ptr %complete.i275, align 4
  %context5.i = getelementptr inbounds %struct.urb, ptr %91, i32 0, i32 27
  %111 = ptrtoint ptr %context5.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call7.i.i, ptr %context5.i, align 4
  %manage_power114 = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 31
  %112 = ptrtoint ptr %manage_power114 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %manage_power, ptr %manage_power114, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @wdm_device_list_lock) #8
  %113 = load ptr, ptr @wdm_device_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %device_list, ptr noundef nonnull @wdm_device_list, ptr noundef %113) #8
  br i1 %call.i.i, label %if.end.i.i276, label %usb_fill_int_urb.exit.list_add.exit_crit_edge

usb_fill_int_urb.exit.list_add.exit_crit_edge:    ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i276:                                    ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %device_list, ptr %prev1.i.i, align 4
  %115 = ptrtoint ptr %device_list to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %113, ptr %device_list, align 8
  %116 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @wdm_device_list, ptr %prev.i, align 4
  store volatile ptr %device_list, ptr @wdm_device_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i276, %usb_fill_int_urb.exit.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @wdm_device_list_lock) #8
  %call116 = tail call i32 @usb_register_dev(ptr noundef %intf, ptr noundef nonnull @wdm_class) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %cmp = icmp slt i32 %call116, 0
  br i1 %cmp, label %list_add.exit.err_crit_edge, label %do.end121

list_add.exit.err_crit_edge:                      ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

do.end121:                                        ; preds = %list_add.exit
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %usb_dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 8
  %117 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %usb_dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %118, i32 0, i32 3
  %119 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %120, null
  br i1 %tobool.not.i, label %if.end.i277, label %do.end121.dev_name.exit_crit_edge

do.end121.dev_name.exit_crit_edge:                ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i277:                                      ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #10
  %121 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %118, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i277, %do.end121.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %122, %if.end.i277 ], [ %120, %do.end121.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef %retval.0.i) #13
  tail call fastcc void @wdm_wwan_init(ptr noundef nonnull %call7.i.i)
  br label %cleanup

err:                                              ; preds = %list_add.exit.err_crit_edge, %if.end8.i256.err_crit_edge, %if.end8.i227.err_crit_edge, %if.end8.i.err_crit_edge, %if.end59.err_crit_edge, %if.end54.err_crit_edge, %if.end49.err_crit_edge, %if.end44.err_crit_edge, %if.end37.err_crit_edge, %usb_endpoint_is_int_in.exit.err_crit_edge, %if.end.err_crit_edge
  %rv.1 = phi i32 [ %call116, %list_add.exit.err_crit_edge ], [ -12, %if.end8.i256.err_crit_edge ], [ -12, %if.end8.i227.err_crit_edge ], [ -12, %if.end8.i.err_crit_edge ], [ -12, %if.end59.err_crit_edge ], [ -12, %if.end54.err_crit_edge ], [ -12, %if.end49.err_crit_edge ], [ -12, %if.end44.err_crit_edge ], [ -12, %if.end37.err_crit_edge ], [ -22, %usb_endpoint_is_int_in.exit.err_crit_edge ], [ -22, %if.end.err_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @wdm_device_list_lock) #8
  %call.i.i278 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device_list) #8
  br i1 %call.i.i278, label %if.end.i.i279, label %err.list_del.exit_crit_edge

err.list_del.exit_crit_edge:                      ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i279:                                    ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  %123 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %prev.i, align 4
  %125 = ptrtoint ptr %device_list to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %device_list, align 8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %124, ptr %prev1.i.i.i, align 4
  %128 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile ptr %126, ptr %124, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i279, %err.list_del.exit_crit_edge
  %129 = ptrtoint ptr %device_list to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr inttoptr (i32 256 to ptr), ptr %device_list, align 8
  %130 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @wdm_device_list_lock) #8
  %sbuf.i = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 2
  %131 = ptrtoint ptr %sbuf.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %sbuf.i, align 8
  tail call void @kfree(ptr noundef %132) #8
  %133 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef %134) #8
  %orq.i = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 8
  %135 = ptrtoint ptr %orq.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %orq.i, align 8
  tail call void @kfree(ptr noundef %136) #8
  %irq.i = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 9
  %137 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %irq.i, align 4
  tail call void @kfree(ptr noundef %138) #8
  %ubuf.i = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 3
  %139 = ptrtoint ptr %ubuf.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ubuf.i, align 4
  tail call void @kfree(ptr noundef %140) #8
  %validity.i.i = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 6
  %141 = ptrtoint ptr %validity.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %validity.i.i, align 8
  tail call void @usb_free_urb(ptr noundef %142) #8
  %response.i.i = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 5
  %143 = ptrtoint ptr %response.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %response.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %144) #8
  %command.i.i = getelementptr inbounds %struct.wdm_device, ptr %call7.i.i, i32 0, i32 4
  %145 = ptrtoint ptr %command.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %command.i.i, align 8
  tail call void @usb_free_urb(ptr noundef %146) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %dev_name.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rv.1, %list_del.exit ], [ %call116, %dev_name.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wdm_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @wdm_driver, ptr noundef null, ptr noundef nonnull @.str.27) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wdm_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @wdm_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wdm_rxwork(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iuspin = getelementptr i8, ptr %work, i32 -316
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %iuspin) #8
  %flags6 = getelementptr i8, ptr %work, i32 -272
  %0 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags6, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end43.sink.split_crit_edge

entry.if.end43.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.sink.split

if.else:                                          ; preds = %entry
  %call10 = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %flags6) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %iuspin, i32 noundef %call3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool12.not = icmp eq i32 %call10, 0
  br i1 %tobool12.not, label %if.end, label %if.else.if.end43_crit_edge

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.end:                                           ; preds = %if.else
  %response = getelementptr i8, ptr %work, i32 -336
  %3 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %response, align 4
  %call14 = tail call i32 @usb_submit_urb(ptr noundef %4, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call14)
  %5 = icmp sgt i32 %call14, -2
  br i1 %5, label %if.end.if.end43_crit_edge, label %do.body21

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

do.body21:                                        ; preds = %if.end
  %call29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %iuspin) #8
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %flags6) #8
  %6 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags6, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool37.not = icmp eq i32 %8, 0
  br i1 %tobool37.not, label %if.then38, label %do.body21.if.end43.sink.split_crit_edge

do.body21.if.end43.sink.split_crit_edge:          ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.sink.split

if.then38:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %work) #8
  br label %if.end43.sink.split

if.end43.sink.split:                              ; preds = %if.then38, %do.body21.if.end43.sink.split_crit_edge, %entry.if.end43.sink.split_crit_edge
  %call29.sink = phi i32 [ %call3, %entry.if.end43.sink.split_crit_edge ], [ %call29, %if.then38 ], [ %call29, %do.body21.if.end43.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %iuspin, i32 noundef %call29.sink) #8
  br label %if.end43

if.end43:                                         ; preds = %if.end43.sink.split, %if.end.if.end43_crit_edge, %if.else.if.end43_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @service_interrupt_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -400
  %iuspin = getelementptr i8, ptr %work, i32 -360
  tail call void @_raw_spin_lock_irq(ptr noundef %iuspin) #8
  %call = tail call fastcc i32 @service_outstanding_interrupt(ptr noundef %add.ptr)
  %resp_count = getelementptr i8, ptr %work, i32 52
  %0 = ptrtoint ptr %resp_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resp_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr i8, ptr %work, i32 -316
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #8
  %wait = getelementptr i8, ptr %work, i32 -96
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %iuspin) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wdm_int_callback(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status1, align 4
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %sbuf = getelementptr inbounds %struct.wdm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %sbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sbuf, align 4
  %6 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end6 [
    i32 0, label %entry.if.end_crit_edge
    i32 -108, label %entry.cleanup_crit_edge
    i32 -2, label %entry.cleanup_crit_edge225
    i32 -104, label %entry.cleanup_crit_edge226
    i32 -32, label %sw.bb2
  ]

entry.cleanup_crit_edge226:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge225:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %flags3 = getelementptr inbounds %struct.wdm_device, ptr %3, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags3) #8
  %intf = getelementptr inbounds %struct.wdm_device, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #13
  br label %sw

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %intf7 = getelementptr inbounds %struct.wdm_device, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %intf7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %intf7, align 4
  %dev8 = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.22, i32 noundef %1) #13
  br label %if.end

if.end:                                           ; preds = %do.end6, %entry.if.end_crit_edge
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %11 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %cmp = icmp ult i32 %12, 8
  br i1 %cmp, label %do.end12, label %if.end16

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %intf13 = getelementptr inbounds %struct.wdm_device, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %intf13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %intf13, align 4
  %dev14 = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.25, i32 noundef %12) #13
  br label %exit

if.end16:                                         ; preds = %if.end
  %bNotificationType = getelementptr inbounds %struct.usb_cdc_notification, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %bNotificationType to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bNotificationType, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.84)
  switch i8 %16, label %sw.default71 [
    i8 1, label %do.body18
    i8 0, label %do.body31
    i8 42, label %do.body52
  ]

do.body18:                                        ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wdm_int_callback.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wdm_int_callback, %if.then22)) #8
          to label %do.body86 [label %if.then22], !srcloc !193

if.then22:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %intf23 = getelementptr inbounds %struct.wdm_device, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %intf23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %intf23, align 4
  %dev24 = getelementptr inbounds %struct.usb_interface, ptr %19, i32 0, i32 7
  %wIndex = getelementptr inbounds %struct.usb_cdc_notification, ptr %5, i32 0, i32 3
  %20 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %wIndex, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %conv25 = zext i16 %22 to i32
  %wLength = getelementptr inbounds %struct.usb_cdc_notification, ptr %5, i32 0, i32 4
  %23 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %wLength, align 1
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %conv26 = zext i16 %25 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wdm_int_callback.__UNIQUE_ID_ddebug345, ptr noundef %dev24, ptr noundef nonnull @.str.28, i32 noundef %conv25, i32 noundef %conv26) #8
  br label %do.body86

do.body31:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wdm_int_callback.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wdm_int_callback, %if.then43)) #8
          to label %exit [label %if.then43], !srcloc !193

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  %intf44 = getelementptr inbounds %struct.wdm_device, ptr %3, i32 0, i32 7
  %26 = ptrtoint ptr %intf44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %intf44, align 4
  %dev45 = getelementptr inbounds %struct.usb_interface, ptr %27, i32 0, i32 7
  %wValue = getelementptr inbounds %struct.usb_cdc_notification, ptr %5, i32 0, i32 2
  %28 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %wValue, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool47.not = icmp eq i16 %29, 0
  %cond = select i1 %tobool47.not, ptr @.str.31, ptr @.str.30
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wdm_int_callback.__UNIQUE_ID_ddebug346, ptr noundef %dev45, ptr noundef nonnull @.str.29, ptr noundef nonnull %cond) #8
  br label %exit

do.body52:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wdm_int_callback.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wdm_int_callback, %if.then64)) #8
          to label %exit [label %if.then64], !srcloc !193

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #10
  %intf65 = getelementptr inbounds %struct.wdm_device, ptr %3, i32 0, i32 7
  %30 = ptrtoint ptr %intf65 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %intf65, align 4
  %dev66 = getelementptr inbounds %struct.usb_interface, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wdm_int_callback.__UNIQUE_ID_ddebug347, ptr noundef %dev66, ptr noundef nonnull @.str.32, i32 noundef %33) #8
  br label %exit

sw.default71:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %flags72 = getelementptr inbounds %struct.wdm_device, ptr %3, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags72) #8
  %intf76 = getelementptr inbounds %struct.wdm_device, ptr %3, i32 0, i32 7
  %34 = ptrtoint ptr %intf76 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %intf76, align 4
  %dev77 = getelementptr inbounds %struct.usb_interface, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %bNotificationType to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bNotificationType, align 1
  %conv79 = zext i8 %37 to i32
  %wIndex80 = getelementptr inbounds %struct.usb_cdc_notification, ptr %5, i32 0, i32 3
  %38 = ptrtoint ptr %wIndex80 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %wIndex80, align 1
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  %conv81 = zext i16 %40 to i32
  %wLength82 = getelementptr inbounds %struct.usb_cdc_notification, ptr %5, i32 0, i32 4
  %41 = ptrtoint ptr %wLength82 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %wLength82, align 1
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  %conv83 = zext i16 %43 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev77, ptr noundef nonnull @.str.34, i32 noundef %conv79, i32 noundef %conv81, i32 noundef %conv83) #13
  br label %exit

do.body86:                                        ; preds = %if.then22, %do.body18
  %iuspin = getelementptr inbounds %struct.wdm_device, ptr %3, i32 0, i32 10
  %call91 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %iuspin) #8
  %flags96 = getelementptr inbounds %struct.wdm_device, ptr %3, i32 0, i32 11
  %call97 = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %flags96) #8
  %resp_count = getelementptr inbounds %struct.wdm_device, ptr %3, i32 0, i32 29
  %44 = ptrtoint ptr %resp_count to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %resp_count, align 4
  %inc = add i32 %45, 1
  store i32 %inc, ptr %resp_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool98.not = icmp eq i32 %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool99.not = icmp eq i32 %call97, 0
  %or.cond = select i1 %tobool98.not, i1 %tobool99.not, i1 false
  br i1 %or.cond, label %land.lhs.true100, label %do.body86.if.end128.thread_crit_edge

do.body86.if.end128.thread_crit_edge:             ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128.thread

land.lhs.true100:                                 ; preds = %do.body86
  %46 = ptrtoint ptr %flags96 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %flags96, align 4
  %48 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool103.not = icmp eq i32 %48, 0
  br i1 %tobool103.not, label %land.lhs.true104, label %land.lhs.true100.if.end128.thread_crit_edge

land.lhs.true100.if.end128.thread_crit_edge:      ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128.thread

land.lhs.true104:                                 ; preds = %land.lhs.true100
  %49 = ptrtoint ptr %flags96 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %flags96, align 4
  %51 = and i32 %50, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool107.not = icmp eq i32 %51, 0
  br i1 %tobool107.not, label %if.then108, label %land.lhs.true104.if.end128.thread_crit_edge

land.lhs.true104.if.end128.thread_crit_edge:      ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128.thread

if.then108:                                       ; preds = %land.lhs.true104
  %response = getelementptr inbounds %struct.wdm_device, ptr %3, i32 0, i32 5
  %52 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %response, align 4
  %call109 = tail call i32 @usb_submit_urb(ptr noundef %53, i32 noundef 2592) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wdm_int_callback.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wdm_int_callback, %if.then122)) #8
          to label %if.end128 [label %if.then122], !srcloc !193

if.then122:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #10
  %intf123 = getelementptr inbounds %struct.wdm_device, ptr %3, i32 0, i32 7
  %54 = ptrtoint ptr %intf123 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %intf123, align 4
  %dev124 = getelementptr inbounds %struct.usb_interface, ptr %55, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wdm_int_callback.__UNIQUE_ID_ddebug348, ptr noundef %dev124, ptr noundef nonnull @.str.36, i32 noundef %call109) #8
  br label %if.end128

if.end128.thread:                                 ; preds = %land.lhs.true104.if.end128.thread_crit_edge, %land.lhs.true100.if.end128.thread_crit_edge, %do.body86.if.end128.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %iuspin, i32 noundef %call91) #8
  br label %exit

if.end128:                                        ; preds = %if.then122, %if.then108
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %iuspin, i32 noundef %call91) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %cmp130 = icmp slt i32 %call109, 0
  br i1 %cmp130, label %if.then132, label %if.end128.exit_crit_edge

if.end128.exit_crit_edge:                         ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.then132:                                       ; preds = %if.end128
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %flags96) #8
  %56 = zext i32 %call109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %call109, label %if.then132.exit_crit_edge [
    i32 -1, label %if.then132.cleanup_crit_edge
    i32 -12, label %if.then132.sw_crit_edge
  ]

if.then132.sw_crit_edge:                          ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw

if.then132.cleanup_crit_edge:                     ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then132.exit_crit_edge:                        ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

sw:                                               ; preds = %if.then132.sw_crit_edge, %sw.bb2
  %rxwork = getelementptr inbounds %struct.wdm_device, ptr %3, i32 0, i32 25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %57 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %57, ptr noundef %rxwork) #8
  br i1 %call.i.i, label %do.end147, label %sw.exit_crit_edge

sw.exit_crit_edge:                                ; preds = %sw
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

do.end147:                                        ; preds = %sw
  call void @__sanitizer_cov_trace_pc() #10
  %intf148 = getelementptr inbounds %struct.wdm_device, ptr %3, i32 0, i32 7
  %58 = ptrtoint ptr %intf148 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %intf148, align 4
  %dev149 = getelementptr inbounds %struct.usb_interface, ptr %59, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev149, ptr noundef nonnull @.str.38) #13
  br label %exit

exit:                                             ; preds = %do.end147, %sw.exit_crit_edge, %if.then132.exit_crit_edge, %if.end128.exit_crit_edge, %if.end128.thread, %sw.default71, %if.then64, %do.body52, %if.then43, %do.body31, %do.end12
  %call153 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %exit.cleanup_crit_edge, label %do.end158

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end158:                                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #10
  %intf159 = getelementptr inbounds %struct.wdm_device, ptr %3, i32 0, i32 7
  %60 = ptrtoint ptr %intf159 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %intf159, align 4
  %dev160 = getelementptr inbounds %struct.usb_interface, ptr %61, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev160, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.20, i32 noundef %call153) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end158, %exit.cleanup_crit_edge, %if.then132.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge225, %entry.cleanup_crit_edge226
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wdm_in_callback(ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %4 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %actual_length, align 4
  %iuspin = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 10
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %iuspin) #8
  %flags6 = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %flags6) #8
  %6 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %3, label %do.end62 [
    i32 0, label %entry.if.end65_crit_edge
    i32 -2, label %do.body7
    i32 -104, label %do.body17
    i32 -108, label %do.body36
    i32 -32, label %do.end57
  ]

entry.if.end65_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wdm_in_callback.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wdm_in_callback, %if.then13)) #8
          to label %skip_error [label %if.then13], !srcloc !193

if.then13:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %intf = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wdm_in_callback.__UNIQUE_ID_ddebug342, ptr noundef %dev, ptr noundef nonnull @.str.44) #8
  br label %skip_error

do.body17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wdm_in_callback.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wdm_in_callback, %if.then29)) #8
          to label %skip_error [label %if.then29], !srcloc !193

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  %intf30 = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %intf30 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %intf30, align 4
  %dev31 = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wdm_in_callback.__UNIQUE_ID_ddebug343, ptr noundef %dev31, ptr noundef nonnull @.str.45) #8
  br label %skip_error

do.body36:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wdm_in_callback.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wdm_in_callback, %if.then48)) #8
          to label %skip_error [label %if.then48], !srcloc !193

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  %intf49 = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %intf49 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intf49, align 4
  %dev50 = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wdm_in_callback.__UNIQUE_ID_ddebug344, ptr noundef %dev50, ptr noundef nonnull @.str.46) #8
  br label %skip_error

do.end57:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %intf58 = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %intf58 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %intf58, align 4
  %dev59 = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev59, ptr noundef nonnull @.str.47) #13
  br label %if.end65

do.end62:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %intf63 = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %intf63 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %intf63, align 4
  %dev64 = getelementptr inbounds %struct.usb_interface, ptr %16, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev64, ptr noundef nonnull @.str.49, i32 noundef %3) #13
  br label %if.end65

if.end65:                                         ; preds = %do.end62, %do.end57, %entry.if.end65_crit_edge
  %17 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags6, align 4
  %19 = and i32 %18, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool68.not = icmp eq i32 %19, 0
  br i1 %tobool68.not, label %if.end70, label %if.then69

if.then69:                                        ; preds = %if.end65
  %wwanp.i = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 33
  %20 = ptrtoint ptr %wwanp.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wwanp.i, align 4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %5, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then69.out_crit_edge, label %if.end.i

if.then69.out_crit_edge:                          ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %5) #8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %24 = call ptr @memcpy(ptr %call1.i, ptr %23, i32 %5)
  tail call void @wwan_port_rx(ptr noundef %21, ptr noundef nonnull %call.i.i) #8
  %service_outs_intr.i = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %25 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %service_outs_intr.i) #8
  br label %out

if.end70:                                         ; preds = %if.end65
  %rerr = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 28
  %26 = ptrtoint ptr %rerr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rerr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp71 = icmp ne i32 %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %3)
  %cmp73.not = icmp eq i32 %3, -32
  %or.cond = select i1 %cmp71, i1 true, i1 %cmp73.not
  br i1 %or.cond, label %if.end70.if.end77_crit_edge, label %if.then75

if.end70.if.end77_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then75:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %rerr to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %3, ptr %rerr, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.end70.if.end77_crit_edge
  %length78 = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 17
  %29 = ptrtoint ptr %length78 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length78, align 4
  %add = add i32 %30, %5
  %wMaxCommand = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 13
  %31 = ptrtoint ptr %wMaxCommand to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %wMaxCommand, align 2
  %conv79 = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv79)
  %cmp80 = icmp sgt i32 %add, %conv79
  br i1 %cmp80, label %if.then82, label %if.else

if.then82:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 10, ptr noundef %flags6) #8
  br label %skip_error

if.else:                                          ; preds = %if.end77
  %33 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flags6, align 4
  %35 = and i32 %34, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool86.not = icmp eq i32 %35, 0
  br i1 %tobool86.not, label %if.then87, label %if.else.skip_error_crit_edge

if.else.skip_error_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_error

if.then87:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %ubuf = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %ubuf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ubuf, align 4
  %add.ptr = getelementptr i8, ptr %37, i32 %30
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %40 = call ptr @memmove(ptr %add.ptr, ptr %39, i32 %5)
  %41 = ptrtoint ptr %length78 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %length78, align 4
  %add90 = add i32 %42, %5
  store i32 %add90, ptr %length78, align 4
  %reslength = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 16
  %43 = ptrtoint ptr %reslength to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %5, ptr %reslength, align 4
  br label %skip_error

skip_error:                                       ; preds = %if.then87, %if.else.skip_error_crit_edge, %if.then82, %if.then48, %do.body36, %if.then29, %do.body17, %if.then13, %do.body7
  %rerr93 = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 28
  %44 = ptrtoint ptr %rerr93 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rerr93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool94.not = icmp eq i32 %45, 0
  br i1 %tobool94.not, label %if.else97, label %if.then95

if.then95:                                        ; preds = %skip_error
  call void @__sanitizer_cov_trace_pc() #10
  %service_outs_intr = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %46 = load ptr, ptr @system_wq, align 4
  %call.i.i143 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %46, ptr noundef %service_outs_intr) #8
  br label %out

if.else97:                                        ; preds = %skip_error
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags6) #8
  %wait = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 24
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %out

out:                                              ; preds = %if.else97, %if.then95, %if.end.i, %if.then69.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %iuspin, i32 noundef %call3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_dev(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wdm_wwan_init(ptr noundef %desc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %intf1 = getelementptr inbounds %struct.wdm_device, ptr %desc, i32 0, i32 7
  %0 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf1, align 4
  %wwanp_type = getelementptr inbounds %struct.wdm_device, ptr %desc, i32 0, i32 32
  %2 = ptrtoint ptr %wwanp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wwanp_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp = icmp eq i32 %3, 5
  %dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.71) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @wwan_create_port(ptr noundef %dev, i32 noundef %3, ptr noundef nonnull @wdm_wwan_port_ops, ptr noundef %desc) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  %usb_dev = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end8.dev_name.exit_crit_edge

do.end8.dev_name.exit_crit_edge:                  ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end8.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %do.end8.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.74, ptr noundef %retval.0.i) #13
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %wwanp = getelementptr inbounds %struct.wdm_device, ptr %desc, i32 0, i32 33
  %10 = ptrtoint ptr %wwanp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %wwanp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %dev_name.exit, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @service_outstanding_interrupt(ptr noundef %desc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %resp_count = getelementptr inbounds %struct.wdm_device, ptr %desc, i32 0, i32 29
  %0 = ptrtoint ptr %resp_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resp_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %dec = add i32 %1, -1
  %2 = ptrtoint ptr %resp_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec, ptr %resp_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.wdm_device, ptr %desc, i32 0, i32 11
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool8.not = icmp eq i32 %8, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end10:                                         ; preds = %if.end5
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags) #8
  %iuspin = getelementptr inbounds %struct.wdm_device, ptr %desc, i32 0, i32 10
  tail call void @_raw_spin_unlock_irq(ptr noundef %iuspin) #8
  %response = getelementptr inbounds %struct.wdm_device, ptr %desc, i32 0, i32 5
  %9 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %response, align 4
  %call12 = tail call i32 @usb_submit_urb(ptr noundef %10, i32 noundef 3264) #8
  tail call void @_raw_spin_lock_irq(ptr noundef %iuspin) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool14.not = icmp eq i32 %call12, 0
  br i1 %tobool14.not, label %if.end10.out_crit_edge, label %if.then15

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then15:                                        ; preds = %if.end10
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool18.not = icmp eq i32 %13, 0
  br i1 %tobool18.not, label %do.end, label %if.then15.if.end20_crit_edge

if.then15.if.end20_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.end:                                           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %intf = getelementptr inbounds %struct.wdm_device, ptr %desc, i32 0, i32 7
  %14 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call12) #13
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.then15.if.end20_crit_edge
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %flags) #8
  %16 = ptrtoint ptr %resp_count to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %resp_count, align 4
  br label %out

out:                                              ; preds = %if.end20, %if.end10.out_crit_edge, %if.end5.out_crit_edge, %if.end.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %rv.0 = phi i32 [ %call12, %if.end20 ], [ 0, %if.end10.out_crit_edge ], [ 0, %lor.lhs.false.out_crit_edge ], [ 0, %entry.out_crit_edge ], [ -19, %if.end.out_crit_edge ], [ -5, %if.end5.out_crit_edge ]
  ret i32 %rv.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wwan_port_rx(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdm_read(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %rlock = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 23
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %rlock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup120_crit_edge, label %do.end

entry.cleanup120_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup120

do.end:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then2, label %do.end.if.end93_crit_edge

do.end.if.end93_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.then2:                                         ; preds = %do.end
  %read = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %read, align 4
  %flags = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not225 = icmp eq i32 %7, 0
  br i1 %tobool.not225, label %if.end5.lr.ph, label %if.then2.err_crit_edge

if.then2.err_crit_edge:                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end5.lr.ph:                                    ; preds = %if.then2
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %wait = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 24
  %intf = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 7
  %iuspin = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 10
  %rerr = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 28
  %reslength = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 16
  br label %if.end5

if.end5:                                          ; preds = %retry.backedge.if.end5_crit_edge, %if.end5.lr.ph
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  call void @_clear_bit(i32 noundef 10, ptr noundef %flags) #8
  br label %err

if.end11:                                         ; preds = %if.end5
  %11 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %f_flags, align 4
  %and = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end11
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags, align 4
  %15 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool16.not = icmp eq i32 %15, 0
  br i1 %tobool16.not, label %if.then13.err_crit_edge, label %if.then13.if.end43_crit_edge

if.then13.if.end43_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then13.err_crit_edge:                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.else:                                          ; preds = %if.end11
  call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 553) #8
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags, align 4
  %18 = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool27.not = icmp eq i32 %18, 0
  br i1 %tobool27.not, label %if.then28, label %if.else.if.end43_crit_edge

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then28:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %19 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call30221 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags, align 4
  %22 = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool33.not222 = icmp eq i32 %22, 0
  br i1 %tobool33.not222, label %if.then28.if.end35_crit_edge, label %if.then28.for.end_crit_edge

if.then28.for.end_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then28.if.end35_crit_edge:                     ; preds = %if.then28
  br label %if.end35

if.end35:                                         ; preds = %cleanup.if.end35_crit_edge, %if.then28.if.end35_crit_edge
  %call30223 = phi i32 [ %call30, %cleanup.if.end35_crit_edge ], [ %call30221, %if.then28.if.end35_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30223)
  %tobool36.not = icmp eq i32 %call30223, 0
  br i1 %tobool36.not, label %cleanup, label %if.end35.__out_crit_edge

if.end35.__out_crit_edge:                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %__out

cleanup:                                          ; preds = %if.end35
  call void @schedule() #8
  %call30 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags, align 4
  %25 = and i32 %24, 16
  %tobool33.not = icmp eq i32 %25, 0
  br i1 %tobool33.not, label %cleanup.if.end35_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.if.end35_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then28.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #8
  br label %__out

__out:                                            ; preds = %for.end, %if.end35.__out_crit_edge
  %__ret29.1198 = phi i32 [ 0, %for.end ], [ %call30223, %if.end35.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end43

if.end43:                                         ; preds = %__out, %if.else.if.end43_crit_edge, %if.then13.if.end43_crit_edge
  %rv.0 = phi i32 [ 0, %if.then13.if.end43_crit_edge ], [ 0, %if.else.if.end43_crit_edge ], [ %__ret29.1198, %__out ]
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags, align 4
  %28 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool46.not = icmp eq i32 %28, 0
  br i1 %tobool46.not, label %if.end48, label %if.end43.err_crit_edge

if.end43.err_crit_edge:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end48:                                         ; preds = %if.end43
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %flags, align 4
  %31 = and i32 %30, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool51.not = icmp eq i32 %31, 0
  br i1 %tobool51.not, label %if.end53, label %if.end48.err_crit_edge

if.end48.err_crit_edge:                           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end53:                                         ; preds = %if.end48
  %32 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %intf, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %33, i32 0, i32 7, i32 1
  %34 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent.i, align 8
  %call.i.i194 = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i = getelementptr i8, ptr %35, i32 704
  %36 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store volatile i64 %call.i.i194, ptr %last_busy.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rv.0)
  %cmp55 = icmp slt i32 %rv.0, 0
  br i1 %cmp55, label %if.end53.err_crit_edge, label %if.end57

if.end53.err_crit_edge:                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end57:                                         ; preds = %if.end53
  call void @_raw_spin_lock_irq(ptr noundef %iuspin) #8
  %37 = ptrtoint ptr %rerr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rerr, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %38, label %usb_translate_errors.exit.loopexit258 [
    i32 0, label %if.end64
    i32 -95, label %if.end57.usb_translate_errors.exit_crit_edge
    i32 -12, label %if.end57.usb_translate_errors.exit_crit_edge269
    i32 -19, label %if.end57.usb_translate_errors.exit_crit_edge270
  ]

if.end57.usb_translate_errors.exit_crit_edge270:  ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb_translate_errors.exit

if.end57.usb_translate_errors.exit_crit_edge269:  ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb_translate_errors.exit

if.end57.usb_translate_errors.exit_crit_edge:     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb_translate_errors.exit

usb_translate_errors.exit.loopexit258:            ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb_translate_errors.exit

usb_translate_errors.exit:                        ; preds = %usb_translate_errors.exit.loopexit258, %if.end57.usb_translate_errors.exit_crit_edge, %if.end57.usb_translate_errors.exit_crit_edge269, %if.end57.usb_translate_errors.exit_crit_edge270
  %retval.0.i195 = phi i32 [ -5, %usb_translate_errors.exit.loopexit258 ], [ %38, %if.end57.usb_translate_errors.exit_crit_edge ], [ %38, %if.end57.usb_translate_errors.exit_crit_edge269 ], [ %38, %if.end57.usb_translate_errors.exit_crit_edge270 ]
  %40 = ptrtoint ptr %rerr to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %rerr, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %iuspin) #8
  br label %err

if.end64:                                         ; preds = %if.end57
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %flags, align 4
  %43 = and i32 %42, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool67.not = icmp eq i32 %43, 0
  br i1 %tobool67.not, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_irq(ptr noundef %iuspin) #8
  br label %retry.backedge

retry.backedge:                                   ; preds = %do.end83.retry.backedge_crit_edge, %if.then68
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %flags, align 4
  %46 = and i32 %45, 4
  %tobool.not = icmp eq i32 %46, 0
  br i1 %tobool.not, label %retry.backedge.if.end5_crit_edge, label %retry.backedge.err_crit_edge

retry.backedge.err_crit_edge:                     ; preds = %retry.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

retry.backedge.if.end5_crit_edge:                 ; preds = %retry.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end70:                                         ; preds = %if.end64
  %47 = ptrtoint ptr %reslength to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %reslength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool71.not = icmp eq i32 %48, 0
  br i1 %tobool71.not, label %do.body73, label %if.end90

do.body73:                                        ; preds = %if.end70
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wdm_read.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wdm_read, %if.then79)) #8
          to label %do.end83 [label %if.then79], !srcloc !193

if.then79:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %50, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wdm_read.__UNIQUE_ID_ddebug351, ptr noundef %dev, ptr noundef nonnull @.str.54) #8
  br label %do.end83

do.end83:                                         ; preds = %if.then79, %do.body73
  call void @_clear_bit(i32 noundef 4, ptr noundef %flags) #8
  %call85 = call fastcc i32 @service_outstanding_interrupt(ptr noundef %1)
  call void @_raw_spin_unlock_irq(ptr noundef %iuspin) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp87 = icmp slt i32 %call85, 0
  br i1 %cmp87, label %do.end83.err_crit_edge, label %do.end83.retry.backedge_crit_edge

do.end83.retry.backedge_crit_edge:                ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %retry.backedge

do.end83.err_crit_edge:                           ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end90:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %length, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %iuspin) #8
  br label %if.end93

if.end93:                                         ; preds = %if.end90, %do.end.if.end93_crit_edge
  %cntr.0 = phi i32 [ %52, %if.end90 ], [ %3, %do.end.if.end93_crit_edge ]
  %53 = call i32 @llvm.umin.i32(i32 %cntr.0, i32 %count)
  %ubuf = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 3
  %54 = ptrtoint ptr %ubuf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ubuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp9.i.i = icmp slt i32 %53, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end93
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.if.end100_crit_edge, label %if.then27.i.i, !prof !194

land.rhs16.i.i.if.end100_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %if.end100

if.then.i.i.i:                                    ; preds = %if.end93
  call void @__check_object_size(ptr noundef %55, i32 noundef %53, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.57, i32 noundef 174) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %56 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %53, i32 -1226833920) #14, !srcloc !195
  %asmresult.i.i = extractvalue { i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %55, i32 noundef %53) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buffer, ptr noundef %55, i32 noundef %53) #8
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %53, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %53, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %cmp98 = icmp sgt i32 %n.addr.0.i, 0
  br i1 %cmp98, label %copy_to_user.exit.err_crit_edge, label %copy_to_user.exit.if.end100_crit_edge

copy_to_user.exit.if.end100_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

copy_to_user.exit.err_crit_edge:                  ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end100:                                        ; preds = %copy_to_user.exit.if.end100_crit_edge, %if.then27.i.i, %land.rhs16.i.i.if.end100_crit_edge
  %iuspin101 = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 10
  call void @_raw_spin_lock_irq(ptr noundef %iuspin101) #8
  %57 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %length, align 4
  %sub232 = sub i32 %58, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub232)
  %cmp104233 = icmp sgt i32 %sub232, 0
  br i1 %cmp104233, label %if.end100.for.body_crit_edge, label %if.end100.for.end109_crit_edge

if.end100.for.end109_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end109

if.end100.for.body_crit_edge:                     ; preds = %if.end100
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end100.for.body_crit_edge
  %i.1234 = phi i32 [ %inc108, %for.body.for.body_crit_edge ], [ 0, %if.end100.for.body_crit_edge ]
  %59 = ptrtoint ptr %ubuf to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ubuf, align 4
  %add = add i32 %i.1234, %53
  %arrayidx = getelementptr i8, ptr %60, i32 %add
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx, align 1
  %arrayidx107 = getelementptr i8, ptr %60, i32 %i.1234
  %63 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx107, align 1
  %inc108 = add nuw nsw i32 %i.1234, 1
  %64 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %length, align 4
  %sub = sub i32 %65, %53
  %cmp104 = icmp slt i32 %inc108, %sub
  br i1 %cmp104, label %for.body.for.body_crit_edge, label %for.body.for.end109_crit_edge

for.body.for.end109_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end109

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end109:                                       ; preds = %for.body.for.end109_crit_edge, %if.end100.for.end109_crit_edge
  %.lcssa = phi i32 [ %58, %if.end100.for.end109_crit_edge ], [ %65, %for.body.for.end109_crit_edge ]
  %sub.lcssa = phi i32 [ %sub232, %if.end100.for.end109_crit_edge ], [ %sub, %for.body.for.end109_crit_edge ]
  %66 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %sub.lcssa, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa, i32 %53)
  %tobool113.not = icmp eq i32 %.lcssa, %53
  br i1 %tobool113.not, label %if.then114, label %for.end109.if.end117_crit_edge

for.end109.if.end117_crit_edge:                   ; preds = %for.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117

if.then114:                                       ; preds = %for.end109
  call void @__sanitizer_cov_trace_pc() #10
  %flags115 = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 11
  call void @_clear_bit(i32 noundef 4, ptr noundef %flags115) #8
  %call116 = call fastcc i32 @service_outstanding_interrupt(ptr noundef %1)
  br label %if.end117

if.end117:                                        ; preds = %if.then114, %for.end109.if.end117_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %iuspin101) #8
  br label %err

err:                                              ; preds = %if.end117, %copy_to_user.exit.err_crit_edge, %do.end83.err_crit_edge, %retry.backedge.err_crit_edge, %usb_translate_errors.exit, %if.end53.err_crit_edge, %if.end48.err_crit_edge, %if.end43.err_crit_edge, %if.then13.err_crit_edge, %if.then9, %if.then2.err_crit_edge
  %rv.1 = phi i32 [ -105, %if.then9 ], [ %retval.0.i195, %usb_translate_errors.exit ], [ %53, %if.end117 ], [ -14, %copy_to_user.exit.err_crit_edge ], [ -19, %if.then2.err_crit_edge ], [ %call85, %do.end83.err_crit_edge ], [ -19, %retry.backedge.err_crit_edge ], [ -11, %if.then13.err_crit_edge ], [ -19, %if.end43.err_crit_edge ], [ -5, %if.end48.err_crit_edge ], [ -512, %if.end53.err_crit_edge ]
  call void @mutex_unlock(ptr noundef %rlock) #8
  br label %cleanup120

cleanup120:                                       ; preds = %err, %entry.cleanup120_crit_edge
  %retval.0 = phi i32 [ %rv.1, %err ], [ -512, %entry.cleanup120_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdm_write(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %wMaxCommand = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %wMaxCommand to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %wMaxCommand, align 2
  %conv = zext i16 %3 to i32
  %4 = tail call i32 @llvm.umin.i32(i32 %conv, i32 %count)
  %iuspin = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock_irq(ptr noundef %iuspin) #8
  %werr = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 27
  %5 = ptrtoint ptr %werr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %werr, align 4
  store i32 0, ptr %werr, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %iuspin) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp6 = icmp slt i32 %6, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %entry
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %6, label %sw.default.i [
    i32 -95, label %if.then8.cleanup110_crit_edge
    i32 -12, label %if.then8.cleanup110_crit_edge212
    i32 -19, label %if.then8.cleanup110_crit_edge213
  ]

if.then8.cleanup110_crit_edge213:                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup110

if.then8.cleanup110_crit_edge212:                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup110

if.then8.cleanup110_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup110

sw.default.i:                                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup110

if.end9:                                          ; preds = %entry
  %call10 = tail call ptr @memdup_user(ptr noundef %buffer, i32 noundef %4) #8
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call10 to i32
  br label %cleanup110

if.end14:                                         ; preds = %if.end9
  %wlock = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 22
  %call15 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %wlock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.end17, label %if.end14.out_free_mem_crit_edge

if.end14.out_free_mem_crit_edge:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_mem

if.end17:                                         ; preds = %if.end14
  %flags = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool19.not = icmp eq i32 %11, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.out_free_mem_lock_crit_edge

if.end17.out_free_mem_lock_crit_edge:             ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_mem_lock

if.end21:                                         ; preds = %if.end17
  %intf = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %intf, align 4
  %call22 = tail call i32 @usb_autopm_get_interface(ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end21
  %14 = zext i32 %call22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %call22, label %sw.default.i186 [
    i32 -95, label %if.then25.out_free_mem_lock_crit_edge
    i32 -12, label %if.then25.out_free_mem_lock_crit_edge214
    i32 -19, label %if.then25.out_free_mem_lock_crit_edge215
  ]

if.then25.out_free_mem_lock_crit_edge215:         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_mem_lock

if.then25.out_free_mem_lock_crit_edge214:         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_mem_lock

if.then25.out_free_mem_lock_crit_edge:            ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_mem_lock

sw.default.i186:                                  ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_mem_lock

if.end27:                                         ; preds = %if.end21
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %15 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %f_flags, align 4
  %and = and i32 %16, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end27
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 416) #8
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags, align 4
  %19 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool35.not = icmp eq i32 %19, 0
  br i1 %tobool35.not, label %if.then29.if.end55_crit_edge, label %if.then36

if.then29.if.end55_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then36:                                        ; preds = %if.then29
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %20 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %wait = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 24
  %call38204 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags, align 4
  %23 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool41.not205 = icmp eq i32 %23, 0
  br i1 %tobool41.not205, label %if.then36.for.end_crit_edge, label %if.then36.if.end43_crit_edge

if.then36.if.end43_crit_edge:                     ; preds = %if.then36
  br label %if.end43

if.then36.for.end_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end43:                                         ; preds = %cleanup.if.end43_crit_edge, %if.then36.if.end43_crit_edge
  %call38206 = phi i32 [ %call38, %cleanup.if.end43_crit_edge ], [ %call38204, %if.then36.if.end43_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38206)
  %tobool44.not = icmp eq i32 %call38206, 0
  br i1 %tobool44.not, label %cleanup, label %if.end43.__out_crit_edge

if.end43.__out_crit_edge:                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %__out

cleanup:                                          ; preds = %if.end43
  call void @schedule() #8
  %call38 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags, align 4
  %26 = and i32 %25, 2
  %tobool41.not = icmp eq i32 %26, 0
  br i1 %tobool41.not, label %cleanup.for.end_crit_edge, label %cleanup.if.end43_crit_edge

cleanup.if.end43_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then36.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #8
  br label %__out

__out:                                            ; preds = %for.end, %if.end43.__out_crit_edge
  %__ret37.1196 = phi i32 [ 0, %for.end ], [ %call38206, %if.end43.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end55

if.else:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %flags, align 4
  %29 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool52.not = icmp eq i32 %29, 0
  %spec.select173 = select i1 %tobool52.not, i32 %call22, i32 -11
  br label %if.end55

if.end55:                                         ; preds = %if.else, %__out, %if.then29.if.end55_crit_edge
  %r.0 = phi i32 [ %__ret37.1196, %__out ], [ 0, %if.then29.if.end55_crit_edge ], [ %spec.select173, %if.else ]
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flags, align 4
  %32 = and i32 %31, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool58.not = icmp eq i32 %32, 0
  %spec.select174 = select i1 %tobool58.not, i32 %r.0, i32 -5
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flags, align 4
  %35 = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool63.not = icmp eq i32 %35, 0
  %r.2 = select i1 %tobool63.not, i32 %spec.select174, i32 -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.2)
  %cmp66 = icmp slt i32 %r.2, 0
  br i1 %cmp66, label %if.end55.out_free_mem_pm_crit_edge, label %if.end69

if.end55.out_free_mem_pm_crit_edge:               ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_mem_pm

if.end69:                                         ; preds = %if.end55
  %orq = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 8
  %36 = ptrtoint ptr %orq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %orq, align 4
  %command = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 4
  %38 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %command, align 4
  %40 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %intf, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %41, i32 0, i32 7, i32 1
  %42 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %43, i32 -128
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %45, 8
  %or = or i32 %shl.i, -2147483648
  %dev1.i = getelementptr inbounds %struct.urb, ptr %39, i32 0, i32 8
  %46 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %39, i32 0, i32 10
  %47 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or, ptr %pipe2.i, align 4
  %setup_packet3.i = getelementptr inbounds %struct.urb, ptr %39, i32 0, i32 21
  %48 = ptrtoint ptr %setup_packet3.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %37, ptr %setup_packet3.i, align 4
  %transfer_buffer4.i = getelementptr inbounds %struct.urb, ptr %39, i32 0, i32 14
  %49 = ptrtoint ptr %transfer_buffer4.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call10, ptr %transfer_buffer4.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %39, i32 0, i32 19
  %50 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %4, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %39, i32 0, i32 28
  %51 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @wdm_out_callback, ptr %complete.i, align 4
  %context5.i = getelementptr inbounds %struct.urb, ptr %39, i32 0, i32 27
  %52 = ptrtoint ptr %context5.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %1, ptr %context5.i, align 4
  %53 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 33, ptr %37, align 1
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %37, i32 0, i32 1
  %54 = ptrtoint ptr %bRequest to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %bRequest, align 1
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %37, i32 0, i32 2
  %55 = ptrtoint ptr %wValue to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 0, ptr %wValue, align 1
  %inum = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 15
  %56 = ptrtoint ptr %inum to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %inum, align 2
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %37, i32 0, i32 3
  %58 = ptrtoint ptr %wIndex to i32
  call void @__asan_storeN_noabort(i32 %58, i32 2)
  store i16 %57, ptr %wIndex, align 1
  %conv75 = trunc i32 %4 to i16
  %59 = call i16 @llvm.bswap.i16(i16 %conv75)
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %37, i32 0, i32 4
  %60 = ptrtoint ptr %wLength to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 %59, ptr %wLength, align 1
  call void @_set_bit(i32 noundef 1, ptr noundef %flags) #8
  %outbuf = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 1
  %61 = ptrtoint ptr %outbuf to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call10, ptr %outbuf, align 4
  %62 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %command, align 4
  %call78 = call i32 @usb_submit_urb(ptr noundef %63, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.then81, label %do.body91

if.then81:                                        ; preds = %if.end69
  %64 = ptrtoint ptr %outbuf to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %outbuf, align 4
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #8
  %wait84 = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 24
  call void @__wake_up(ptr noundef %wait84, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  %65 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %66, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %call78) #13
  %67 = zext i32 %call78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %call78, label %sw.default.i191 [
    i32 -95, label %if.then81.out_free_mem_pm_crit_edge
    i32 -12, label %if.then81.out_free_mem_pm_crit_edge216
    i32 -19, label %if.then81.out_free_mem_pm_crit_edge217
  ]

if.then81.out_free_mem_pm_crit_edge217:           ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_mem_pm

if.then81.out_free_mem_pm_crit_edge216:           ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_mem_pm

if.then81.out_free_mem_pm_crit_edge:              ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_mem_pm

sw.default.i191:                                  ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_mem_pm

do.body91:                                        ; preds = %if.end69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wdm_write.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wdm_write, %if.then97)) #8
          to label %if.end105 [label %if.then97], !srcloc !193

if.then97:                                        ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %intf, align 4
  %dev99 = getelementptr inbounds %struct.usb_interface, ptr %69, i32 0, i32 7
  %70 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %wIndex, align 1
  %72 = call i16 @llvm.bswap.i16(i16 %71)
  %conv101 = zext i16 %72 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wdm_write.__UNIQUE_ID_ddebug349, ptr noundef %dev99, ptr noundef nonnull @.str.60, i32 noundef %conv101) #8
  br label %if.end105

if.end105:                                        ; preds = %if.then97, %do.body91
  %73 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %intf, align 4
  call void @usb_autopm_put_interface(ptr noundef %74) #8
  call void @mutex_unlock(ptr noundef %wlock) #8
  br label %cleanup110

out_free_mem_pm:                                  ; preds = %sw.default.i191, %if.then81.out_free_mem_pm_crit_edge, %if.then81.out_free_mem_pm_crit_edge216, %if.then81.out_free_mem_pm_crit_edge217, %if.end55.out_free_mem_pm_crit_edge
  %rv.0 = phi i32 [ %r.2, %if.end55.out_free_mem_pm_crit_edge ], [ -5, %sw.default.i191 ], [ %call78, %if.then81.out_free_mem_pm_crit_edge ], [ %call78, %if.then81.out_free_mem_pm_crit_edge216 ], [ %call78, %if.then81.out_free_mem_pm_crit_edge217 ]
  %75 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %intf, align 4
  call void @usb_autopm_put_interface(ptr noundef %76) #8
  br label %out_free_mem_lock

out_free_mem_lock:                                ; preds = %out_free_mem_pm, %sw.default.i186, %if.then25.out_free_mem_lock_crit_edge, %if.then25.out_free_mem_lock_crit_edge214, %if.then25.out_free_mem_lock_crit_edge215, %if.end17.out_free_mem_lock_crit_edge
  %rv.1 = phi i32 [ %rv.0, %out_free_mem_pm ], [ -19, %if.end17.out_free_mem_lock_crit_edge ], [ -5, %sw.default.i186 ], [ %call22, %if.then25.out_free_mem_lock_crit_edge ], [ %call22, %if.then25.out_free_mem_lock_crit_edge214 ], [ %call22, %if.then25.out_free_mem_lock_crit_edge215 ]
  call void @mutex_unlock(ptr noundef %wlock) #8
  br label %out_free_mem

out_free_mem:                                     ; preds = %out_free_mem_lock, %if.end14.out_free_mem_crit_edge
  %rv.2 = phi i32 [ -512, %if.end14.out_free_mem_crit_edge ], [ %rv.1, %out_free_mem_lock ]
  call void @kfree(ptr noundef %call10) #8
  br label %cleanup110

cleanup110:                                       ; preds = %out_free_mem, %if.end105, %if.then12, %sw.default.i, %if.then8.cleanup110_crit_edge, %if.then8.cleanup110_crit_edge212, %if.then8.cleanup110_crit_edge213
  %retval.0 = phi i32 [ %8, %if.then12 ], [ %rv.2, %out_free_mem ], [ %4, %if.end105 ], [ -5, %sw.default.i ], [ %6, %if.then8.cleanup110_crit_edge ], [ %6, %if.then8.cleanup110_crit_edge212 ], [ %6, %if.then8.cleanup110_crit_edge213 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdm_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %iuspin = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 10
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %iuspin) #8
  %flags5 = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags5, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %iuspin, i32 noundef %call2) #8
  br label %desc_out

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags5, align 4
  %7 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool10.not = icmp eq i32 %7, 0
  %spec.select = select i1 %tobool10.not, i32 0, i32 65
  %rerr = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 28
  %8 = ptrtoint ptr %rerr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rerr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool13.not = icmp eq i32 %9, 0
  br i1 %tobool13.not, label %lor.lhs.false, label %if.end.if.then15_crit_edge

if.end.if.then15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

lor.lhs.false:                                    ; preds = %if.end
  %werr = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 27
  %10 = ptrtoint ptr %werr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %werr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool14.not = icmp eq i32 %11, 0
  br i1 %tobool14.not, label %lor.lhs.false.if.end16_crit_edge, label %lor.lhs.false.if.then15_crit_edge

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %if.end.if.then15_crit_edge
  %or = or i32 %spec.select, 8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %lor.lhs.false.if.end16_crit_edge
  %mask.1 = phi i32 [ %or, %if.then15 ], [ %spec.select, %lor.lhs.false.if.end16_crit_edge ]
  %12 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags5, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool19.not = icmp eq i32 %14, 0
  %or21 = or i32 %mask.1, 260
  %spec.select37 = select i1 %tobool19.not, i32 %or21, i32 %mask.1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %iuspin, i32 noundef %call2) #8
  %wait24 = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 24
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %if.end16.desc_out_crit_edge, label %land.lhs.true.i

if.end16.desc_out_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %desc_out

land.lhs.true.i:                                  ; preds = %if.end16
  %15 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %16, null
  %tobool3.not.i = icmp eq ptr %wait24, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.desc_out_crit_edge, label %if.then.i

land.lhs.true.i.desc_out_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %desc_out

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %16(ptr noundef %file, ptr noundef nonnull %wait24, ptr noundef nonnull %wait) #8
  br label %desc_out

desc_out:                                         ; preds = %if.then.i, %land.lhs.true.i.desc_out_crit_edge, %if.end16.desc_out_crit_edge, %if.then
  %mask.3 = phi i32 [ 24, %if.then ], [ %spec.select37, %if.end16.desc_out_crit_edge ], [ %spec.select37, %land.lhs.true.i.desc_out_crit_edge ], [ %spec.select37, %if.then.i ]
  ret i32 %mask.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdm_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147333984, i32 %cmd)
  %cond = icmp eq i32 %cmd, -2147333984
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = inttoptr i32 %arg to ptr
  %wMaxCommand = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 13
  tail call void @__might_fault(ptr noundef nonnull @.str.57, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i.i:                                       ; preds = %sw.bb
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 2, i32 -1226833920) #14, !srcloc !195
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.sw.epilog_crit_edge

if.end.i.i.sw.epilog_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %wMaxCommand, i32 noundef 2) #8
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef %wMaxCommand, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %sw.epilog

sw.epilog:                                        ; preds = %copy_to_user.exit, %if.end.i.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %rv.0 = phi i32 [ -25, %entry.sw.epilog_crit_edge ], [ -14, %sw.bb.sw.epilog_crit_edge ], [ -14, %if.end.i.i.sw.epilog_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %rv.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdm_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  tail call void @mutex_lock_nested(ptr noundef nonnull @wdm_mutex, i32 noundef 0) #8
  tail call void @_raw_spin_lock(ptr noundef nonnull @wdm_device_list_lock) #8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @wdm_device_list, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @wdm_device_list
  br i1 %cmp.not.i, label %wdm_find_device_by_minor.exit.thread, label %for.body.i

wdm_find_device_by_minor.exit.thread:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef nonnull @wdm_device_list_lock) #8
  br label %out

for.body.i:                                       ; preds = %for.cond.i
  %intf.i = getelementptr i8, ptr %.pn.i, i32 -428
  %3 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intf.i, align 4
  %minor1.i = getelementptr inbounds %struct.usb_interface, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %minor1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %minor1.i, align 8
  %cmp2.i = icmp eq i32 %6, %and.i
  br i1 %cmp2.i, label %wdm_find_device_by_minor.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

wdm_find_device_by_minor.exit:                    ; preds = %for.body.i
  %intf.i.le = getelementptr i8, ptr %.pn.i, i32 -428
  %desc.0.le.i = getelementptr i8, ptr %.pn.i, i32 -456
  tail call void @_raw_spin_unlock(ptr noundef nonnull @wdm_device_list_lock) #8
  %tobool.not = icmp eq ptr %desc.0.le.i, null
  br i1 %tobool.not, label %wdm_find_device_by_minor.exit.out_crit_edge, label %if.end

wdm_find_device_by_minor.exit.out_crit_edge:      ; preds = %wdm_find_device_by_minor.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %wdm_find_device_by_minor.exit
  %7 = ptrtoint ptr %intf.i.le to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intf.i.le, align 4
  %flags = getelementptr i8, ptr %.pn.i, i32 -372
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end6:                                          ; preds = %if.end
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %desc.0.le.i, ptr %private_data, align 4
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags, align 4
  %15 = and i32 %14, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9.not = icmp eq i32 %15, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end11:                                         ; preds = %if.end6
  %16 = ptrtoint ptr %intf.i.le to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %intf.i.le, align 4
  %call13 = tail call i32 @usb_autopm_get_interface(ptr noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %intf.i.le to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %intf.i.le, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %19, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61, i32 noundef %call13) #13
  br label %out

if.end16:                                         ; preds = %if.end11
  %wlock = getelementptr i8, ptr %.pn.i, i32 -336
  tail call void @mutex_lock_nested(ptr noundef %wlock, i32 noundef 0) #8
  %count = getelementptr i8, ptr %.pn.i, i32 -348
  %20 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool17.not = icmp eq i32 %21, 0
  br i1 %tobool17.not, label %if.then18, label %if.end16.if.end30_crit_edge

if.end16.if.end30_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then18:                                        ; preds = %if.end16
  %werr = getelementptr i8, ptr %.pn.i, i32 -12
  %22 = ptrtoint ptr %werr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %werr, align 4
  %rerr = getelementptr i8, ptr %.pn.i, i32 -8
  %23 = ptrtoint ptr %rerr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %rerr, align 4
  %validity = getelementptr i8, ptr %.pn.i, i32 -432
  %24 = ptrtoint ptr %validity to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %validity, align 4
  %call19 = tail call i32 @usb_submit_urb(ptr noundef %25, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.then18.if.end30_crit_edge

if.then18.if.end30_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then21:                                        ; preds = %if.then18
  %26 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count, align 4
  %dec = add i32 %27, -1
  store i32 %dec, ptr %count, align 4
  %28 = ptrtoint ptr %intf.i.le to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %intf.i.le, align 4
  %dev27 = getelementptr inbounds %struct.usb_interface, ptr %29, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.64, i32 noundef %call19) #13
  %30 = zext i32 %call19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %call19, label %sw.default.i [
    i32 -95, label %if.then21.if.end30_crit_edge
    i32 -12, label %if.then21.if.end30_crit_edge72
    i32 -19, label %if.then21.if.end30_crit_edge73
  ]

if.then21.if.end30_crit_edge73:                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then21.if.end30_crit_edge72:                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then21.if.end30_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

sw.default.i:                                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.end30:                                         ; preds = %sw.default.i, %if.then21.if.end30_crit_edge, %if.then21.if.end30_crit_edge72, %if.then21.if.end30_crit_edge73, %if.then18.if.end30_crit_edge, %if.end16.if.end30_crit_edge
  %rv.0 = phi i32 [ %call19, %if.then18.if.end30_crit_edge ], [ 0, %if.end16.if.end30_crit_edge ], [ -5, %sw.default.i ], [ %call19, %if.then21.if.end30_crit_edge ], [ %call19, %if.then21.if.end30_crit_edge72 ], [ %call19, %if.then21.if.end30_crit_edge73 ]
  tail call void @mutex_unlock(ptr noundef %wlock) #8
  %31 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp33 = icmp eq i32 %32, 1
  br i1 %cmp33, label %if.then34, label %if.end30.if.end36_crit_edge

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %manage_power = getelementptr i8, ptr %.pn.i, i32 8
  %33 = ptrtoint ptr %manage_power to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %manage_power, align 4
  %call35 = tail call i32 %34(ptr noundef %8, i32 noundef 1) #8
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end30.if.end36_crit_edge
  %35 = ptrtoint ptr %intf.i.le to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %intf.i.le, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %36) #8
  br label %out

out:                                              ; preds = %if.end36, %do.end, %if.end6.out_crit_edge, %if.end.out_crit_edge, %wdm_find_device_by_minor.exit.out_crit_edge, %wdm_find_device_by_minor.exit.thread
  %rv.1 = phi i32 [ -19, %if.end.out_crit_edge ], [ %call13, %do.end ], [ %rv.0, %if.end36 ], [ -19, %wdm_find_device_by_minor.exit.out_crit_edge ], [ -16, %if.end6.out_crit_edge ], [ -19, %wdm_find_device_by_minor.exit.thread ]
  tail call void @mutex_unlock(ptr noundef nonnull @wdm_mutex) #8
  ret i32 %rv.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdm_flush(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @wdm_wait_for_response(ptr noundef %file, i32 noundef 3000)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdm_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @wdm_mutex, i32 noundef 0) #8
  %wlock = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %wlock, i32 noundef 0) #8
  %count = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %count, align 4
  tail call void @mutex_unlock(ptr noundef %wlock) #8
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %do.body, label %do.body13

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wdm_release.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wdm_release, %if.then9)) #8
          to label %do.end [label %if.then9], !srcloc !193

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %intf = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wdm_release.__UNIQUE_ID_ddebug352, ptr noundef %dev, ptr noundef nonnull @.str.69) #8
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %command.i = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %command.i, align 4
  tail call void @usb_poison_urb(ptr noundef %12) #8
  %validity.i = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %validity.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %validity.i, align 4
  tail call void @usb_poison_urb(ptr noundef %14) #8
  %response.i = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %response.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %response.i, align 4
  tail call void @usb_poison_urb(ptr noundef %16) #8
  %iuspin = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock_irq(ptr noundef %iuspin) #8
  %resp_count = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 29
  %17 = ptrtoint ptr %resp_count to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %resp_count, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %iuspin) #8
  %manage_power = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 31
  %18 = ptrtoint ptr %manage_power to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %manage_power, align 4
  %intf11 = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %intf11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %intf11, align 4
  %call12 = tail call i32 %19(ptr noundef %21, i32 noundef 0) #8
  %22 = ptrtoint ptr %response.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %response.i, align 4
  tail call void @usb_unpoison_urb(ptr noundef %23) #8
  %24 = ptrtoint ptr %validity.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %validity.i, align 4
  tail call void @usb_unpoison_urb(ptr noundef %25) #8
  %26 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %command.i, align 4
  tail call void @usb_unpoison_urb(ptr noundef %27) #8
  br label %if.end30

do.body13:                                        ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wdm_release.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wdm_release, %if.then25)) #8
          to label %do.end28 [label %if.then25], !srcloc !193

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wdm_release.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.68) #8
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %do.body13
  %sbuf.i = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %sbuf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sbuf.i, align 4
  tail call void @kfree(ptr noundef %29) #8
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %31) #8
  %orq.i = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 8
  %32 = ptrtoint ptr %orq.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %orq.i, align 4
  tail call void @kfree(ptr noundef %33) #8
  %irq.i = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 9
  %34 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %irq.i, align 4
  tail call void @kfree(ptr noundef %35) #8
  %ubuf.i = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %ubuf.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ubuf.i, align 4
  tail call void @kfree(ptr noundef %37) #8
  %validity.i.i = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 6
  %38 = ptrtoint ptr %validity.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %validity.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %39) #8
  %response.i.i = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 5
  %40 = ptrtoint ptr %response.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %response.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %41) #8
  %command.i.i = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 4
  %42 = ptrtoint ptr %command.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %command.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %43) #8
  tail call void @kfree(ptr noundef %1) #8
  br label %if.end30

if.end30:                                         ; preds = %do.end28, %do.end, %entry.if.end30_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @wdm_mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdm_fsync(ptr nocapture noundef readonly %file, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @wdm_wait_for_response(ptr noundef %file, i32 noundef 2147483647)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wdm_out_callback(ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %iuspin = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 10
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %iuspin) #8
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %werr = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %werr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %werr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %iuspin, i32 noundef %call2) #8
  %outbuf = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %outbuf, align 4
  tail call void @kfree(ptr noundef %6) #8
  %7 = ptrtoint ptr %outbuf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %outbuf, align 4
  %flags7 = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags7) #8
  %wait = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 24
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wdm_wait_for_response(ptr nocapture noundef readonly %file, i32 noundef %timeout) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 640) #8
  %flags = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end49_crit_edge, label %lor.rhs

entry.if.end49_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

lor.rhs:                                          ; preds = %entry
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %if.then14, label %lor.rhs.if.end49_crit_edge

lor.rhs.if.end49_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then14:                                        ; preds = %lor.rhs
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %8 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %wait = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 24
  %call16119 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool20.not120 = icmp eq i32 %11, 0
  br i1 %tobool20.not120, label %if.then14.lor.end25.thread_crit_edge, label %if.then14.lor.end25_crit_edge

if.then14.lor.end25_crit_edge:                    ; preds = %if.then14
  br label %lor.end25

if.then14.lor.end25.thread_crit_edge:             ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end25.thread

lor.end25.thread:                                 ; preds = %cleanup.lor.end25.thread_crit_edge, %if.then14.lor.end25.thread_crit_edge
  %__ret15.0.lcssa = phi i32 [ %timeout, %if.then14.lor.end25.thread_crit_edge ], [ %call46, %cleanup.lor.end25.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret15.0.lcssa)
  %tobool30.not96 = icmp eq i32 %__ret15.0.lcssa, 0
  %spec.store.select6697 = select i1 %tobool30.not96, i32 1, i32 %__ret15.0.lcssa
  br label %for.end

lor.end25:                                        ; preds = %cleanup.lor.end25_crit_edge, %if.then14.lor.end25_crit_edge
  %call16122 = phi i32 [ %call16, %cleanup.lor.end25_crit_edge ], [ %call16119, %if.then14.lor.end25_crit_edge ]
  %__ret15.0121 = phi i32 [ %call46, %cleanup.lor.end25_crit_edge ], [ %timeout, %if.then14.lor.end25_crit_edge ]
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool24.not = icmp eq i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret15.0121)
  %tobool36.not = icmp eq i32 %__ret15.0121, 0
  br i1 %tobool24.not, label %15, label %for.end.loopexit.split.loop.exit114

15:                                               ; preds = %lor.end25
  br i1 %tobool36.not, label %.for.end_crit_edge, label %if.end42

.for.end_crit_edge:                               ; preds = %15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end42:                                         ; preds = %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16122)
  %tobool43.not = icmp eq i32 %call16122, 0
  br i1 %tobool43.not, label %cleanup, label %if.end42.__out_crit_edge

if.end42.__out_crit_edge:                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %__out

cleanup:                                          ; preds = %if.end42
  %call46 = call i32 @schedule_timeout(i32 noundef %__ret15.0121) #8
  %call16 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags, align 4
  %18 = and i32 %17, 2
  %tobool20.not = icmp eq i32 %18, 0
  br i1 %tobool20.not, label %cleanup.lor.end25.thread_crit_edge, label %cleanup.lor.end25_crit_edge

cleanup.lor.end25_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end25

cleanup.lor.end25.thread_crit_edge:               ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end25.thread

for.end.loopexit.split.loop.exit114:              ; preds = %lor.end25
  call void @__sanitizer_cov_trace_pc() #10
  %spec.store.select66.le = select i1 %tobool36.not, i32 1, i32 %__ret15.0121
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit.split.loop.exit114, %.for.end_crit_edge, %lor.end25.thread
  %__ret15.2.ph = phi i32 [ %spec.store.select6697, %lor.end25.thread ], [ %spec.store.select66.le, %for.end.loopexit.split.loop.exit114 ], [ 0, %.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #8
  br label %__out

__out:                                            ; preds = %for.end, %if.end42.__out_crit_edge
  %__ret15.2102 = phi i32 [ %__ret15.2.ph, %for.end ], [ %call16122, %if.end42.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end49

if.end49:                                         ; preds = %__out, %lor.rhs.if.end49_crit_edge, %entry.if.end49_crit_edge
  %__ret.1 = phi i32 [ %timeout, %lor.rhs.if.end49_crit_edge ], [ %__ret15.2102, %__out ], [ %timeout, %entry.if.end49_crit_edge ]
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool53.not = icmp eq i32 %21, 0
  br i1 %tobool53.not, label %if.end55, label %if.end49.cleanup64_crit_edge

if.end49.cleanup64_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup64

if.end55:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %tobool56.not = icmp eq i32 %__ret.1, 0
  br i1 %tobool56.not, label %if.end55.cleanup64_crit_edge, label %if.end58

if.end55.cleanup64_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup64

if.end58:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp = icmp slt i32 %__ret.1, 0
  br i1 %cmp, label %if.end58.cleanup64_crit_edge, label %if.end60

if.end58.cleanup64_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup64

if.end60:                                         ; preds = %if.end58
  %iuspin = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 10
  call void @_raw_spin_lock_irq(ptr noundef %iuspin) #8
  %werr = getelementptr inbounds %struct.wdm_device, ptr %1, i32 0, i32 27
  %22 = ptrtoint ptr %werr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %werr, align 4
  store i32 0, ptr %werr, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %iuspin) #8
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %23, label %sw.default.i [
    i32 0, label %if.end60.cleanup64_crit_edge
    i32 -12, label %if.end60.cleanup64_crit_edge160
    i32 -19, label %if.end60.cleanup64_crit_edge161
    i32 -95, label %if.end60.cleanup64_crit_edge162
  ]

if.end60.cleanup64_crit_edge162:                  ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup64

if.end60.cleanup64_crit_edge161:                  ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup64

if.end60.cleanup64_crit_edge160:                  ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup64

if.end60.cleanup64_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup64

sw.default.i:                                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup64

cleanup64:                                        ; preds = %sw.default.i, %if.end60.cleanup64_crit_edge, %if.end60.cleanup64_crit_edge160, %if.end60.cleanup64_crit_edge161, %if.end60.cleanup64_crit_edge162, %if.end58.cleanup64_crit_edge, %if.end55.cleanup64_crit_edge, %if.end49.cleanup64_crit_edge
  %retval.0 = phi i32 [ -19, %if.end49.cleanup64_crit_edge ], [ -5, %if.end55.cleanup64_crit_edge ], [ -4, %if.end58.cleanup64_crit_edge ], [ -5, %sw.default.i ], [ %23, %if.end60.cleanup64_crit_edge ], [ %23, %if.end60.cleanup64_crit_edge160 ], [ %23, %if.end60.cleanup64_crit_edge161 ], [ %23, %if.end60.cleanup64_crit_edge162 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_poison_urb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unpoison_urb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wwan_create_port(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdm_wwan_port_start(ptr noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @wwan_port_get_drvdata(ptr noundef %port) #8
  tail call void @mutex_lock_nested(ptr noundef nonnull @wdm_mutex, i32 noundef 0) #8
  %count = getelementptr inbounds %struct.wdm_device, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef nonnull @wdm_mutex) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.wdm_device, ptr %call, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 11, ptr noundef %flags) #8
  tail call void @mutex_unlock(ptr noundef nonnull @wdm_mutex) #8
  %manage_power = getelementptr inbounds %struct.wdm_device, ptr %call, i32 0, i32 31
  %2 = ptrtoint ptr %manage_power to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %manage_power, align 4
  %intf = getelementptr inbounds %struct.wdm_device, ptr %call, i32 0, i32 7
  %4 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf, align 4
  %call1 = tail call i32 %3(ptr noundef %5, i32 noundef 1) #8
  tail call void @wwan_port_txon(ptr noundef %port) #8
  %validity = getelementptr inbounds %struct.wdm_device, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %validity to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %validity, align 4
  %call2 = tail call i32 @usb_submit_urb(ptr noundef %7, i32 noundef 3264) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wdm_wwan_port_stop(ptr noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @wwan_port_get_drvdata(ptr noundef %port) #8
  %command.i = getelementptr inbounds %struct.wdm_device, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %command.i, align 4
  tail call void @usb_poison_urb(ptr noundef %1) #8
  %validity.i = getelementptr inbounds %struct.wdm_device, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %validity.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %validity.i, align 4
  tail call void @usb_poison_urb(ptr noundef %3) #8
  %response.i = getelementptr inbounds %struct.wdm_device, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %response.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %response.i, align 4
  tail call void @usb_poison_urb(ptr noundef %5) #8
  %manage_power = getelementptr inbounds %struct.wdm_device, ptr %call, i32 0, i32 31
  %6 = ptrtoint ptr %manage_power to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %manage_power, align 4
  %intf = getelementptr inbounds %struct.wdm_device, ptr %call, i32 0, i32 7
  %8 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intf, align 4
  %call1 = tail call i32 %7(ptr noundef %9, i32 noundef 0) #8
  %flags = getelementptr inbounds %struct.wdm_device, ptr %call, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags) #8
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %flags) #8
  %10 = ptrtoint ptr %response.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %response.i, align 4
  tail call void @usb_unpoison_urb(ptr noundef %11) #8
  %12 = ptrtoint ptr %validity.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %validity.i, align 4
  tail call void @usb_unpoison_urb(ptr noundef %13) #8
  %14 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %command.i, align 4
  tail call void @usb_unpoison_urb(ptr noundef %15) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdm_wwan_port_tx(ptr noundef %port, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @wwan_port_get_drvdata(ptr noundef %port) #8
  %intf1 = getelementptr inbounds %struct.wdm_device, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf1, align 4
  %orq = getelementptr inbounds %struct.wdm_device, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %orq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %orq, align 4
  %call2 = tail call i32 @usb_autopm_get_interface(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %command = getelementptr inbounds %struct.wdm_device, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %command, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 -128
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %9, 8
  %or = or i32 %shl.i, -2147483648
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 8
  %14 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 10
  %15 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or, ptr %pipe2.i, align 4
  %setup_packet3.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 21
  %16 = ptrtoint ptr %setup_packet3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %3, ptr %setup_packet3.i, align 4
  %transfer_buffer4.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 14
  %17 = ptrtoint ptr %transfer_buffer4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %11, ptr %transfer_buffer4.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 19
  %18 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %13, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 28
  %19 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @wdm_wwan_port_tx_complete, ptr %complete.i, align 4
  %context5.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 27
  %20 = ptrtoint ptr %context5.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %skb, ptr %context5.i, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 33, ptr %3, align 1
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %bRequest to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %bRequest, align 1
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %3, i32 0, i32 2
  %23 = ptrtoint ptr %wValue to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 0, ptr %wValue, align 1
  %inum = getelementptr inbounds %struct.wdm_device, ptr %call, i32 0, i32 15
  %24 = ptrtoint ptr %inum to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %inum, align 2
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %3, i32 0, i32 3
  %26 = ptrtoint ptr %wIndex to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %25, ptr %wIndex, align 1
  %27 = load i32, ptr %len, align 4
  %conv = trunc i32 %27 to i16
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %3, i32 0, i32 4
  %29 = ptrtoint ptr %wLength to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %wLength, align 1
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %30 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %end.i, align 4
  %destructor_arg = getelementptr inbounds %struct.skb_shared_info, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %destructor_arg to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call, ptr %destructor_arg, align 4
  %33 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %command, align 4
  %call9 = tail call i32 @usb_submit_urb(ptr noundef %34, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_autopm_put_interface(ptr noundef %1) #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @wwan_port_txoff(ptr noundef %port) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ %call9, %if.then11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wwan_port_get_drvdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wwan_port_txon(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wdm_wwan_port_tx_complete(ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i, align 4
  %destructor_arg = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %destructor_arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %destructor_arg, align 4
  %intf = getelementptr inbounds %struct.wdm_device, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %7) #8
  %wwanp = getelementptr inbounds %struct.wdm_device, ptr %5, i32 0, i32 33
  %8 = ptrtoint ptr %wwanp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wwanp, align 4
  tail call void @wwan_port_txon(ptr noundef %9) #8
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wwan_port_txoff(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdm_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %hdr = alloca %struct.usb_cdc_parsed_header, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %hdr) #8
  %0 = call ptr @memset(ptr %hdr, i32 255, i32 60)
  %1 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %intf, align 8
  %extra = getelementptr inbounds %struct.usb_host_interface, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extra, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end:                                           ; preds = %entry
  %extralen = getelementptr inbounds %struct.usb_host_interface, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %extralen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %extralen, align 4
  %call = call i32 @cdc_parse_cdc_header(ptr noundef nonnull %hdr, ptr noundef %intf, ptr noundef nonnull %4, i32 noundef %6) #8
  %usb_cdc_dmm_desc = getelementptr inbounds %struct.usb_cdc_parsed_header, ptr %hdr, i32 0, i32 7
  %7 = ptrtoint ptr %usb_cdc_dmm_desc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb_cdc_dmm_desc, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %wMaxCommand = getelementptr inbounds %struct.usb_cdc_dmm_desc, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %wMaxCommand to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %wMaxCommand, align 1
  %11 = call i16 @llvm.bswap.i16(i16 %10)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %maxcom.0 = phi i16 [ %11, %if.then3 ], [ 256, %if.end.if.end5_crit_edge ]
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %12 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp.not = icmp eq i8 %15, 1
  br i1 %cmp.not, label %if.end8, label %if.end5.err_crit_edge

if.end5.err_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %endpoint, align 4
  %call10 = call fastcc i32 @wdm_create(ptr noundef %intf, ptr noundef %17, i16 noundef zeroext %maxcom.0, i32 noundef 5, ptr noundef nonnull @wdm_manage_power)
  br label %err

err:                                              ; preds = %if.end8, %if.end5.err_crit_edge, %entry.err_crit_edge
  %rv.0 = phi i32 [ -22, %if.end5.err_crit_edge ], [ %call10, %if.end8 ], [ -22, %entry.err_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %hdr) #8
  ret i32 %rv.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wdm_disconnect(ptr noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_deregister_dev(ptr noundef %intf, ptr noundef nonnull @wdm_class) #8
  tail call void @_raw_spin_lock(ptr noundef nonnull @wdm_device_list_lock) #8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @wdm_device_list, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @wdm_device_list
  br i1 %cmp.not.i, label %for.cond.i.wdm_find_device.exit_crit_edge, label %for.body.i

for.cond.i.wdm_find_device.exit_crit_edge:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wdm_find_device.exit

for.body.i:                                       ; preds = %for.cond.i
  %intf1.i = getelementptr i8, ptr %.pn.i, i32 -428
  %1 = ptrtoint ptr %intf1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %intf1.i, align 4
  %cmp2.i = icmp eq ptr %2, %intf
  br i1 %cmp2.i, label %found.split.loop.exit10.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

found.split.loop.exit10.i:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %desc.0.le.i = getelementptr i8, ptr %.pn.i, i32 -456
  br label %wdm_find_device.exit

wdm_find_device.exit:                             ; preds = %found.split.loop.exit10.i, %for.cond.i.wdm_find_device.exit_crit_edge
  %desc.1.i = phi ptr [ %desc.0.le.i, %found.split.loop.exit10.i ], [ null, %for.cond.i.wdm_find_device.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @wdm_device_list_lock) #8
  tail call void @mutex_lock_nested(ptr noundef nonnull @wdm_mutex, i32 noundef 0) #8
  %wwanp.i = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 33
  %3 = ptrtoint ptr %wwanp.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wwanp.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %wdm_find_device.exit.wdm_wwan_deinit.exit_crit_edge, label %if.end.i

wdm_find_device.exit.wdm_wwan_deinit.exit_crit_edge: ; preds = %wdm_find_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %wdm_wwan_deinit.exit

if.end.i:                                         ; preds = %wdm_find_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @wwan_remove_port(ptr noundef nonnull %4) #8
  %5 = ptrtoint ptr %wwanp.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %wwanp.i, align 4
  br label %wdm_wwan_deinit.exit

wdm_wwan_deinit.exit:                             ; preds = %if.end.i, %wdm_find_device.exit.wdm_wwan_deinit.exit_crit_edge
  %iuspin = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 10
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %iuspin) #8
  %flags6 = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags6) #8
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags6) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %iuspin, i32 noundef %call3) #8
  %wait = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 24
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  %rlock = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %rlock, i32 noundef 0) #8
  %wlock = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %wlock, i32 noundef 0) #8
  %command.i = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 4
  %6 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %command.i, align 4
  tail call void @usb_poison_urb(ptr noundef %7) #8
  %validity.i = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 6
  %8 = ptrtoint ptr %validity.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %validity.i, align 4
  tail call void @usb_poison_urb(ptr noundef %9) #8
  %response.i = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 5
  %10 = ptrtoint ptr %response.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %response.i, align 4
  tail call void @usb_poison_urb(ptr noundef %11) #8
  %rxwork = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 25
  %call9 = tail call zeroext i1 @cancel_work_sync(ptr noundef %rxwork) #8
  %service_outs_intr = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 26
  %call10 = tail call zeroext i1 @cancel_work_sync(ptr noundef %service_outs_intr) #8
  tail call void @mutex_unlock(ptr noundef %wlock) #8
  tail call void @mutex_unlock(ptr noundef %rlock) #8
  tail call void @_raw_spin_lock(ptr noundef nonnull @wdm_device_list_lock) #8
  %device_list = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 30
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %wdm_wwan_deinit.exit.list_del.exit_crit_edge

wdm_wwan_deinit.exit.list_del.exit_crit_edge:     ; preds = %wdm_wwan_deinit.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %wdm_wwan_deinit.exit
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 30, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %device_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %wdm_wwan_deinit.exit.list_del.exit_crit_edge
  %18 = ptrtoint ptr %device_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %device_list, align 4
  %prev.i = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 30, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @wdm_device_list_lock) #8
  %count = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 19
  %20 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %if.then, label %do.body13

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sbuf.i = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 2
  %22 = ptrtoint ptr %sbuf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sbuf.i, align 4
  tail call void @kfree(ptr noundef %23) #8
  %24 = ptrtoint ptr %desc.1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %desc.1.i, align 4
  tail call void @kfree(ptr noundef %25) #8
  %orq.i = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 8
  %26 = ptrtoint ptr %orq.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %orq.i, align 4
  tail call void @kfree(ptr noundef %27) #8
  %irq.i = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 9
  %28 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %irq.i, align 4
  tail call void @kfree(ptr noundef %29) #8
  %ubuf.i = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 3
  %30 = ptrtoint ptr %ubuf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ubuf.i, align 4
  tail call void @kfree(ptr noundef %31) #8
  %32 = ptrtoint ptr %validity.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %validity.i, align 4
  tail call void @usb_free_urb(ptr noundef %33) #8
  %34 = ptrtoint ptr %response.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %response.i, align 4
  tail call void @usb_free_urb(ptr noundef %35) #8
  %36 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %command.i, align 4
  tail call void @usb_free_urb(ptr noundef %37) #8
  tail call void @kfree(ptr noundef %desc.1.i) #8
  br label %if.end23

do.body13:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wdm_disconnect.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wdm_disconnect, %if.then19)) #8
          to label %if.end23 [label %if.then19], !srcloc !193

if.then19:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %38 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wdm_disconnect.__UNIQUE_ID_ddebug354, ptr noundef %dev, ptr noundef nonnull @.str.77, i32 noundef %39) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %do.body13, %if.then
  tail call void @mutex_unlock(ptr noundef nonnull @wdm_mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdm_suspend(ptr noundef readonly %intf, [1 x i32] %message.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %message.coerce.fca.0.extract = extractvalue [1 x i32] %message.coerce, 0
  tail call void @_raw_spin_lock(ptr noundef nonnull @wdm_device_list_lock) #8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @wdm_device_list, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @wdm_device_list
  br i1 %cmp.not.i, label %for.cond.i.wdm_find_device.exit_crit_edge, label %for.body.i

for.cond.i.wdm_find_device.exit_crit_edge:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wdm_find_device.exit

for.body.i:                                       ; preds = %for.cond.i
  %intf1.i = getelementptr i8, ptr %.pn.i, i32 -428
  %1 = ptrtoint ptr %intf1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %intf1.i, align 4
  %cmp2.i = icmp eq ptr %2, %intf
  br i1 %cmp2.i, label %found.split.loop.exit10.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

found.split.loop.exit10.i:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %desc.0.le.i = getelementptr i8, ptr %.pn.i, i32 -456
  br label %wdm_find_device.exit

wdm_find_device.exit:                             ; preds = %found.split.loop.exit10.i, %for.cond.i.wdm_find_device.exit_crit_edge
  %desc.1.i = phi ptr [ %desc.0.le.i, %found.split.loop.exit10.i ], [ null, %for.cond.i.wdm_find_device.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @wdm_device_list_lock) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wdm_suspend.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wdm_suspend, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !193

if.then:                                          ; preds = %wdm_find_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  %intf4 = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 7
  %3 = ptrtoint ptr %intf4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intf4, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %4, i32 0, i32 7
  %minor = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 4
  %5 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %minor, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wdm_suspend.__UNIQUE_ID_ddebug355, ptr noundef %dev, ptr noundef nonnull @.str.79, i32 noundef %6) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %wdm_find_device.exit
  %and = and i32 %message.coerce.fca.0.extract, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end6.thread, label %land.lhs.true

if.end6.thread:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %rlock = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %rlock, i32 noundef 0) #8
  %wlock = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %wlock, i32 noundef 0) #8
  %iuspin52 = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 10
  tail call void @_raw_spin_lock_irq(ptr noundef %iuspin52) #8
  br label %if.end21

land.lhs.true:                                    ; preds = %do.end
  %iuspin = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 10
  tail call void @_raw_spin_lock_irq(ptr noundef %iuspin) #8
  %flags = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 11
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11.not = icmp eq i32 %9, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %land.lhs.true.if.end21.thread_crit_edge

land.lhs.true.if.end21.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.thread

lor.lhs.false:                                    ; preds = %land.lhs.true
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool14.not = icmp eq i32 %12, 0
  br i1 %tobool14.not, label %lor.lhs.false.if.end21_crit_edge, label %lor.lhs.false.if.end21.thread_crit_edge

lor.lhs.false.if.end21.thread_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.thread

lor.lhs.false.if.end21_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end21.thread:                                  ; preds = %lor.lhs.false.if.end21.thread_crit_edge, %land.lhs.true.if.end21.thread_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %iuspin) #8
  br label %if.end28

if.end21:                                         ; preds = %lor.lhs.false.if.end21_crit_edge, %if.end6.thread
  %iuspin53 = phi ptr [ %iuspin52, %if.end6.thread ], [ %iuspin, %lor.lhs.false.if.end21_crit_edge ]
  %flags17 = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flags17) #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %iuspin53) #8
  %command.i = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 4
  %13 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %command.i, align 4
  tail call void @usb_poison_urb(ptr noundef %14) #8
  %validity.i = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 6
  %15 = ptrtoint ptr %validity.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %validity.i, align 4
  tail call void @usb_poison_urb(ptr noundef %16) #8
  %response.i = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 5
  %17 = ptrtoint ptr %response.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %response.i, align 4
  tail call void @usb_poison_urb(ptr noundef %18) #8
  %rxwork = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 25
  %call19 = tail call zeroext i1 @cancel_work_sync(ptr noundef %rxwork) #8
  %service_outs_intr = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 26
  %call20 = tail call zeroext i1 @cancel_work_sync(ptr noundef %service_outs_intr) #8
  %19 = ptrtoint ptr %response.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %response.i, align 4
  tail call void @usb_unpoison_urb(ptr noundef %20) #8
  %21 = ptrtoint ptr %validity.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %validity.i, align 4
  tail call void @usb_unpoison_urb(ptr noundef %22) #8
  %23 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %command.i, align 4
  tail call void @usb_unpoison_urb(ptr noundef %24) #8
  br i1 %cmp.not, label %if.then25, label %if.end21.if.end28_crit_edge

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %wlock26 = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 22
  tail call void @mutex_unlock(ptr noundef %wlock26) #8
  %rlock27 = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 23
  tail call void @mutex_unlock(ptr noundef %rlock27) #8
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end21.if.end28_crit_edge, %if.end21.thread
  %rv.055 = phi i32 [ -16, %if.end21.thread ], [ 0, %if.then25 ], [ 0, %if.end21.if.end28_crit_edge ]
  ret i32 %rv.055
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdm_resume(ptr noundef readonly %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @wdm_device_list_lock) #8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @wdm_device_list, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @wdm_device_list
  br i1 %cmp.not.i, label %for.cond.i.wdm_find_device.exit_crit_edge, label %for.body.i

for.cond.i.wdm_find_device.exit_crit_edge:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wdm_find_device.exit

for.body.i:                                       ; preds = %for.cond.i
  %intf1.i = getelementptr i8, ptr %.pn.i, i32 -428
  %1 = ptrtoint ptr %intf1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %intf1.i, align 4
  %cmp2.i = icmp eq ptr %2, %intf
  br i1 %cmp2.i, label %found.split.loop.exit10.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

found.split.loop.exit10.i:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %desc.0.le.i = getelementptr i8, ptr %.pn.i, i32 -456
  br label %wdm_find_device.exit

wdm_find_device.exit:                             ; preds = %found.split.loop.exit10.i, %for.cond.i.wdm_find_device.exit_crit_edge
  %desc.1.i = phi ptr [ %desc.0.le.i, %found.split.loop.exit10.i ], [ null, %for.cond.i.wdm_find_device.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @wdm_device_list_lock) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wdm_resume.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wdm_resume, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !193

if.then:                                          ; preds = %wdm_find_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  %intf4 = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 7
  %3 = ptrtoint ptr %intf4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intf4, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %4, i32 0, i32 7
  %minor = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 4
  %5 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %minor, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wdm_resume.__UNIQUE_ID_ddebug356, ptr noundef %dev, ptr noundef nonnull @.str.81, i32 noundef %6) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %wdm_find_device.exit
  %flags = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %flags) #8
  %count.i = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 19
  %7 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %do.end.recover_from_urb_loss.exit_crit_edge, label %if.then.i

do.end.recover_from_urb_loss.exit_crit_edge:      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %recover_from_urb_loss.exit

if.then.i:                                        ; preds = %do.end
  %validity.i = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 6
  %9 = ptrtoint ptr %validity.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %validity.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %10, i32 noundef 3072) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.i.recover_from_urb_loss.exit_crit_edge

if.then.i.recover_from_urb_loss.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %recover_from_urb_loss.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %intf.i = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 7
  %11 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intf.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.82, i32 noundef %call.i) #13
  br label %recover_from_urb_loss.exit

recover_from_urb_loss.exit:                       ; preds = %do.end.i, %if.then.i.recover_from_urb_loss.exit_crit_edge, %do.end.recover_from_urb_loss.exit_crit_edge
  %rv.0.i = phi i32 [ %call.i, %do.end.i ], [ %call.i, %if.then.i.recover_from_urb_loss.exit_crit_edge ], [ 0, %do.end.recover_from_urb_loss.exit_crit_edge ]
  ret i32 %rv.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdm_pre_reset(ptr noundef readnone %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @wdm_device_list_lock) #8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @wdm_device_list, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @wdm_device_list
  br i1 %cmp.not.i, label %for.cond.i.wdm_find_device.exit_crit_edge, label %for.body.i

for.cond.i.wdm_find_device.exit_crit_edge:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wdm_find_device.exit

for.body.i:                                       ; preds = %for.cond.i
  %intf1.i = getelementptr i8, ptr %.pn.i, i32 -428
  %1 = ptrtoint ptr %intf1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %intf1.i, align 4
  %cmp2.i = icmp eq ptr %2, %intf
  br i1 %cmp2.i, label %found.split.loop.exit10.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

found.split.loop.exit10.i:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %desc.0.le.i = getelementptr i8, ptr %.pn.i, i32 -456
  br label %wdm_find_device.exit

wdm_find_device.exit:                             ; preds = %found.split.loop.exit10.i, %for.cond.i.wdm_find_device.exit_crit_edge
  %desc.1.i = phi ptr [ %desc.0.le.i, %found.split.loop.exit10.i ], [ null, %for.cond.i.wdm_find_device.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @wdm_device_list_lock) #8
  %iuspin = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 10
  tail call void @_raw_spin_lock_irq(ptr noundef %iuspin) #8
  %flags = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 9, ptr noundef %flags) #8
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #8
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #8
  %rerr = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 28
  %3 = ptrtoint ptr %rerr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -4, ptr %rerr, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %iuspin) #8
  %wait = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 24
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  %rlock = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %rlock, i32 noundef 0) #8
  %wlock = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %wlock, i32 noundef 0) #8
  %command.i = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 4
  %4 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %command.i, align 4
  tail call void @usb_poison_urb(ptr noundef %5) #8
  %validity.i = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 6
  %6 = ptrtoint ptr %validity.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %validity.i, align 4
  tail call void @usb_poison_urb(ptr noundef %7) #8
  %response.i = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 5
  %8 = ptrtoint ptr %response.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %response.i, align 4
  tail call void @usb_poison_urb(ptr noundef %9) #8
  %rxwork = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 25
  %call4 = tail call zeroext i1 @cancel_work_sync(ptr noundef %rxwork) #8
  %service_outs_intr = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 26
  %call5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %service_outs_intr) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdm_post_reset(ptr noundef readnone %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @wdm_device_list_lock) #8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @wdm_device_list, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @wdm_device_list
  br i1 %cmp.not.i, label %for.cond.i.wdm_find_device.exit_crit_edge, label %for.body.i

for.cond.i.wdm_find_device.exit_crit_edge:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wdm_find_device.exit

for.body.i:                                       ; preds = %for.cond.i
  %intf1.i = getelementptr i8, ptr %.pn.i, i32 -428
  %1 = ptrtoint ptr %intf1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %intf1.i, align 4
  %cmp2.i = icmp eq ptr %2, %intf
  br i1 %cmp2.i, label %found.split.loop.exit10.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

found.split.loop.exit10.i:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %desc.0.le.i = getelementptr i8, ptr %.pn.i, i32 -456
  br label %wdm_find_device.exit

wdm_find_device.exit:                             ; preds = %found.split.loop.exit10.i, %for.cond.i.wdm_find_device.exit_crit_edge
  %desc.1.i = phi ptr [ %desc.0.le.i, %found.split.loop.exit10.i ], [ null, %for.cond.i.wdm_find_device.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @wdm_device_list_lock) #8
  %response.i = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 5
  %3 = ptrtoint ptr %response.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %response.i, align 4
  tail call void @usb_unpoison_urb(ptr noundef %4) #8
  %validity.i = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 6
  %5 = ptrtoint ptr %validity.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %validity.i, align 4
  tail call void @usb_unpoison_urb(ptr noundef %6) #8
  %command.i = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 4
  %7 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %command.i, align 4
  tail call void @usb_unpoison_urb(ptr noundef %8) #8
  %flags = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %flags) #8
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %flags) #8
  %count.i = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 19
  %9 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %wdm_find_device.exit.recover_from_urb_loss.exit_crit_edge, label %if.then.i

wdm_find_device.exit.recover_from_urb_loss.exit_crit_edge: ; preds = %wdm_find_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %recover_from_urb_loss.exit

if.then.i:                                        ; preds = %wdm_find_device.exit
  %11 = ptrtoint ptr %validity.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %validity.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %12, i32 noundef 3072) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.i.recover_from_urb_loss.exit_crit_edge

if.then.i.recover_from_urb_loss.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %recover_from_urb_loss.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %intf.i = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 7
  %13 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %intf.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.82, i32 noundef %call.i) #13
  br label %recover_from_urb_loss.exit

recover_from_urb_loss.exit:                       ; preds = %do.end.i, %if.then.i.recover_from_urb_loss.exit_crit_edge, %wdm_find_device.exit.recover_from_urb_loss.exit_crit_edge
  %rv.0.i = phi i32 [ %call.i, %do.end.i ], [ %call.i, %if.then.i.recover_from_urb_loss.exit_crit_edge ], [ 0, %wdm_find_device.exit.recover_from_urb_loss.exit_crit_edge ]
  %wlock = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 22
  tail call void @mutex_unlock(ptr noundef %wlock) #8
  %rlock = getelementptr inbounds %struct.wdm_device, ptr %desc.1.i, i32 0, i32 23
  tail call void @mutex_unlock(ptr noundef %rlock) #8
  ret i32 %rv.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdc_parse_cdc_header(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdm_manage_power(ptr noundef %intf, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_autopm_get_interface(ptr noundef %intf) #8
  %needs_remote_wakeup = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 6
  %0 = trunc i32 %on to i8
  %1 = ptrtoint ptr %needs_remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %needs_remote_wakeup, align 8
  %bf.value = shl i8 %0, 4
  %bf.shl = and i8 %bf.value, 16
  %bf.clear = and i8 %bf.load, -17
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %needs_remote_wakeup, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_autopm_put_interface(ptr noundef %intf) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister_dev(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wwan_remove_port(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !71, !72, !73, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !107, !109, !111, !113, !115, !116, !117, !119, !120, !122, !124, !126, !127, !128, !129, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !154, !155, !156, !157, !159, !160, !161, !163, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !182}
!llvm.module.flags = !{!184, !185, !186, !187, !188, !189, !190, !191}
!llvm.ident = !{!192}

!0 = !{ptr @__ksymtab_usb_cdc_wdm_register, !1, !"__ksymtab_usb_cdc_wdm_register", i1 false, i1 false}
!1 = !{!"../drivers/usb/class/cdc-wdm.c", i32 1205, i32 1}
!2 = !{ptr @__initcall__kmod_cdc_wdm__357_1366_wdm_driver_init6, !3, !"__initcall__kmod_cdc_wdm__357_1366_wdm_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/usb/class/cdc-wdm.c", i32 1366, i32 1}
!4 = !{ptr @__exitcall_wdm_driver_exit, !3, !"__exitcall_wdm_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author358, !6, !"__UNIQUE_ID_author358", i1 false, i1 false}
!6 = !{!"../drivers/usb/class/cdc-wdm.c", i32 1368, i32 1}
!7 = !{ptr @__UNIQUE_ID_description359, !8, !"__UNIQUE_ID_description359", i1 false, i1 false}
!8 = !{!"../drivers/usb/class/cdc-wdm.c", i32 1369, i32 1}
!9 = !{ptr @__UNIQUE_ID_file360, !10, !"__UNIQUE_ID_file360", i1 false, i1 false}
!10 = !{!"../drivers/usb/class/cdc-wdm.c", i32 1370, i32 1}
!11 = !{ptr @__UNIQUE_ID_license361, !10, !"__UNIQUE_ID_license361", i1 false, i1 false}
!12 = !{ptr @wdm_create.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/usb/class/cdc-wdm.c", i32 1026, i32 2}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @wdm_create.__key.1, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/usb/class/cdc-wdm.c", i32 1027, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @wdm_create.__key.3, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/usb/class/cdc-wdm.c", i32 1028, i32 2}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @wdm_create.__key.5, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/usb/class/cdc-wdm.c", i32 1029, i32 2}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @wdm_create.__key.7, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/usb/class/cdc-wdm.c", i32 1035, i32 2}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @wdm_create.__key.9, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/usb/class/cdc-wdm.c", i32 1036, i32 2}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/class/cdc-wdm.c", i32 1115, i32 3}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @wdm_create._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @wdm_create._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/class/cdc-wdm.c", i32 508, i32 4}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @service_outstanding_interrupt._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @service_outstanding_interrupt._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/class/cdc-wdm.c", i32 266, i32 4}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @wdm_int_callback._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @wdm_int_callback._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/class/cdc-wdm.c", i32 269, i32 4}
!51 = !{ptr @wdm_int_callback._entry.21, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @wdm_int_callback._entry_ptr.23, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/class/cdc-wdm.c", i32 276, i32 3}
!55 = !{ptr @wdm_int_callback._entry.24, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @wdm_int_callback._entry_ptr.26, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/class/cdc-wdm.c", i32 283, i32 3}
!59 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @wdm_int_callback.__UNIQUE_ID_ddebug345, !58, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/class/cdc-wdm.c", i32 290, i32 3}
!63 = !{ptr @wdm_int_callback.__UNIQUE_ID_ddebug346, !62, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!64 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/class/cdc-wdm.c", i32 295, i32 3}
!68 = !{ptr @wdm_int_callback.__UNIQUE_ID_ddebug347, !67, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/class/cdc-wdm.c", i32 300, i32 3}
!71 = !{ptr @wdm_int_callback._entry.33, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @wdm_int_callback._entry_ptr.35, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/class/cdc-wdm.c", i32 314, i32 3}
!75 = !{ptr @wdm_int_callback.__UNIQUE_ID_ddebug348, !74, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/class/cdc-wdm.c", i32 325, i32 5}
!78 = !{ptr @wdm_int_callback._entry.37, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @wdm_int_callback._entry_ptr.39, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/class/cdc-wdm.c", i32 332, i32 3}
!82 = !{ptr @wdm_int_callback._entry.40, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @wdm_int_callback._entry_ptr.42, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/class/cdc-wdm.c", i32 181, i32 4}
!86 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @wdm_in_callback.__UNIQUE_ID_ddebug342, !85, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/class/cdc-wdm.c", i32 185, i32 4}
!90 = !{ptr @wdm_in_callback.__UNIQUE_ID_ddebug343, !89, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/class/cdc-wdm.c", i32 189, i32 4}
!93 = !{ptr @wdm_in_callback.__UNIQUE_ID_ddebug344, !92, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/class/cdc-wdm.c", i32 193, i32 4}
!96 = !{ptr @wdm_in_callback._entry, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @wdm_in_callback._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/class/cdc-wdm.c", i32 197, i32 4}
!100 = !{ptr @wdm_in_callback._entry.48, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @wdm_in_callback._entry_ptr.50, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/class/cdc-wdm.c", i32 71, i32 8}
!104 = !{ptr @wdm_device_list_lock, !103, !"wdm_device_list_lock", i1 false, i1 false}
!105 = !{ptr @wdm_device_list, !106, !"wdm_device_list", i1 false, i1 false}
!106 = !{!"../drivers/usb/class/cdc-wdm.c", i32 72, i32 8}
!107 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/class/cdc-wdm.c", i32 821, i32 11}
!109 = !{ptr @wdm_class, !110, !"wdm_class", i1 false, i1 false}
!110 = !{!"../drivers/usb/class/cdc-wdm.c", i32 820, i32 32}
!111 = !{ptr @wdm_fops, !112, !"wdm_fops", i1 false, i1 false}
!112 = !{!"../drivers/usb/class/cdc-wdm.c", i32 806, i32 37}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/class/cdc-wdm.c", i32 589, i32 4}
!115 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @wdm_read.__UNIQUE_ID_ddebug351, !114, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!117 = distinct !{null, !118, !"__already_done", i1 false, i1 false}
!118 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!119 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/class/cdc-wdm.c", i32 459, i32 3}
!126 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @wdm_write._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @wdm_write._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/class/cdc-wdm.c", i32 463, i32 3}
!131 = !{ptr @wdm_write.__UNIQUE_ID_ddebug349, !130, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!132 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/class/cdc-wdm.c", i32 732, i32 3}
!134 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @wdm_open._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @wdm_open._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/class/cdc-wdm.c", i32 744, i32 4}
!139 = !{ptr @wdm_open._entry.63, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @wdm_open._entry_ptr.65, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/usb/class/cdc-wdm.c", i32 70, i32 8}
!143 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @wdm_mutex, !142, !"wdm_mutex", i1 false, i1 false}
!145 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/class/cdc-wdm.c", i32 773, i32 4}
!147 = !{ptr @.str.69, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @wdm_release.__UNIQUE_ID_ddebug352, !146, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!149 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/usb/class/cdc-wdm.c", i32 782, i32 4}
!151 = !{ptr @wdm_release.__UNIQUE_ID_ddebug353, !150, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!152 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/usb/class/cdc-wdm.c", i32 927, i32 3}
!154 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @wdm_wwan_init._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @wdm_wwan_init._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.74, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/usb/class/cdc-wdm.c", i32 933, i32 3}
!159 = !{ptr @wdm_wwan_init._entry.73, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @wdm_wwan_init._entry_ptr.75, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @wdm_wwan_port_ops, !162, !"wdm_wwan_port_ops", i1 false, i1 false}
!162 = !{!"../drivers/usb/class/cdc-wdm.c", i32 914, i32 35}
!163 = !{ptr @wdm_driver, !164, !"wdm_driver", i1 false, i1 false}
!164 = !{!"../drivers/usb/class/cdc-wdm.c", i32 1350, i32 26}
!165 = !{ptr @.str.76, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/usb/class/cdc-wdm.c", i32 1240, i32 3}
!167 = !{ptr @.str.77, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @wdm_disconnect.__UNIQUE_ID_ddebug354, !166, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!169 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/usb/class/cdc-wdm.c", i32 1250, i32 2}
!171 = !{ptr @.str.79, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @wdm_suspend.__UNIQUE_ID_ddebug355, !170, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!173 = !{ptr @.str.80, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/usb/class/cdc-wdm.c", i32 1302, i32 2}
!175 = !{ptr @.str.81, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @wdm_resume.__UNIQUE_ID_ddebug356, !174, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!177 = !{ptr @.str.82, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/usb/class/cdc-wdm.c", i32 1290, i32 4}
!179 = !{ptr @.str.83, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @recover_from_urb_loss._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @recover_from_urb_loss._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @wdm_ids, !183, !"wdm_ids", i1 false, i1 false}
!183 = !{!"../drivers/usb/class/cdc-wdm.c", i32 35, i32 35}
!184 = !{i32 1, !"wchar_size", i32 2}
!185 = !{i32 1, !"min_enum_size", i32 4}
!186 = !{i32 8, !"branch-target-enforcement", i32 0}
!187 = !{i32 8, !"sign-return-address", i32 0}
!188 = !{i32 8, !"sign-return-address-all", i32 0}
!189 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!190 = !{i32 7, !"uwtable", i32 1}
!191 = !{i32 7, !"frame-pointer", i32 2}
!192 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!193 = !{i64 2148723152, i64 2148723157, i64 2148723170, i64 2148723214, i64 2148723248, i64 2148723269}
!194 = !{!"branch_weights", i32 2000, i32 1}
!195 = !{i64 2152499200, i64 2152499225}
