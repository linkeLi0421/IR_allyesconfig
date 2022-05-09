; ModuleID = '/llk/IR_all_yes/drivers/usb/core/generic.c_pt.bc'
source_filename = "../drivers/usb/core/generic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+usb_choose_configuration\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_choose_configuration\09\09\09\09"
module asm "\09.long\09__crc_usb_choose_configuration\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_choose_configuration:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_choose_configuration\22\09\09\09\09\09"
module asm "__kstrtabns_usb_choose_configuration:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.usb_device_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usbdrv_wrap, ptr, i8 }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
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
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_host_config = type { %struct.usb_config_descriptor, ptr, [16 x ptr], [32 x ptr], [32 x ptr], ptr, i32 }
%struct.usb_interface_cache = type { i32, %struct.kref, [0 x %struct.usb_host_interface] }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@usb_choose_configuration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 181, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"rejected %d configuration%s due to insufficient available bus power\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"usb_choose_configuration\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/usb/core/generic.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usb_choose_configuration._entry_ptr = internal global ptr @usb_choose_configuration._entry, section ".printk_index", align 4
@usb_choose_configuration.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usbcore\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"configuration #%d chosen from %d choice%s\0A\00", [53 x i8] zeroinitializer }, align 32
@usb_choose_configuration._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 192, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"no configuration chosen from %d choice%s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@usb_choose_configuration._entry_ptr.10 = internal global ptr @usb_choose_configuration._entry.7, section ".printk_index", align 4
@__kstrtab_usb_choose_configuration = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_choose_configuration = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_choose_configuration = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_choose_configuration to i32), ptr @__kstrtab_usb_choose_configuration, ptr @__kstrtabns_usb_choose_configuration }, section "___ksymtab_gpl+usb_choose_configuration", align 4
@usb_generic_driver_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 234, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Device is not authorized for usage\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"usb_generic_driver_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@usb_generic_driver_probe._entry_ptr = internal global ptr @usb_generic_driver_probe._entry, section ".printk_index", align 4
@usb_generic_driver_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.2, i32 241, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"can't set config #%d, error %d\0A\00", [32 x i8] zeroinitializer }, align 32
@usb_generic_driver_probe._entry_ptr.16 = internal global ptr @usb_generic_driver_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@usb_generic_driver = dso_local global { %struct.usb_device_driver, [44 x i8] } { %struct.usb_device_driver { ptr @.str.17, ptr @usb_generic_driver_match, ptr @usb_generic_driver_probe, ptr @usb_generic_driver_disconnect, ptr @usb_generic_driver_suspend, ptr @usb_generic_driver_resume, ptr null, %struct.usbdrv_wrap zeroinitializer, ptr null, i8 -128 }, [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@usb_bus_type = external dso_local global %struct.bus_type, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 239]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 179, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 185, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 190, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 234, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 240, i32 5 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 315, i32 10 }
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c"usb_generic_driver\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 314, i32 26 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 29, i32 19 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private constant [30 x i8] c"../drivers/usb/core/generic.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 29, i32 24 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__ksymtab_usb_choose_configuration, ptr @usb_choose_configuration._entry, ptr @usb_choose_configuration._entry.7, ptr @usb_choose_configuration._entry_ptr, ptr @usb_choose_configuration._entry_ptr.10, ptr @usb_generic_driver_probe._entry, ptr @usb_generic_driver_probe._entry.14, ptr @usb_generic_driver_probe._entry_ptr, ptr @usb_generic_driver_probe._entry_ptr.16, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @usb_generic_driver, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_choose_configuration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_choose_configuration._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_generic_driver_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_generic_driver_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_generic_driver to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_choose_configuration(ptr noundef %udev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @usb_device_is_owned(ptr noundef %udev) #3
  br i1 %call, label %entry.cleanup85_crit_edge, label %if.end

entry.cleanup85_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup85

if.end:                                           ; preds = %entry
  %bNumConfigurations = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 16, i32 13
  %0 = ptrtoint ptr %bNumConfigurations to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bNumConfigurations, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp171.not = icmp eq i8 %1, 0
  br i1 %cmp171.not, label %if.end.if.else78_crit_edge, label %for.body.lr.ph

if.end.if.else78_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else78

for.body.lr.ph:                                   ; preds = %if.end
  %config = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 19
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 8
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 4
  %4 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp.i = icmp ugt i32 %5, 4
  %cond.i = select i1 %cmp.i, i32 8, i32 2
  %bus_mA = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 24
  %6 = ptrtoint ptr %bus_mA to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bus_mA, align 4
  %conv10 = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp29 = icmp eq i8 %1, 1
  %bDeviceClass = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 16, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0178 = phi i32 [ 0, %for.body.lr.ph ], [ %inc57, %for.inc.for.body_crit_edge ]
  %best.0177 = phi ptr [ null, %for.body.lr.ph ], [ %best.3.ph, %for.inc.for.body_crit_edge ]
  %c.0174 = phi ptr [ %3, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %insufficient_power.0172 = phi i32 [ 0, %for.body.lr.ph ], [ %insufficient_power.1.ph, %for.inc.for.body_crit_edge ]
  %bNumInterfaces = getelementptr inbounds %struct.usb_config_descriptor, ptr %c.0174, i32 0, i32 3
  %8 = ptrtoint ptr %bNumInterfaces to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bNumInterfaces, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp4.not = icmp eq i8 %9, 0
  br i1 %cmp4.not, label %if.end8.thread, label %if.end8

if.end8:                                          ; preds = %for.body
  %intf_cache = getelementptr inbounds %struct.usb_host_config, ptr %c.0174, i32 0, i32 4
  %10 = ptrtoint ptr %intf_cache to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %intf_cache, align 4
  %altsetting = getelementptr inbounds %struct.usb_interface_cache, ptr %11, i32 0, i32 2
  %bMaxPower.i = getelementptr inbounds %struct.usb_config_descriptor, ptr %c.0174, i32 0, i32 7
  %12 = ptrtoint ptr %bMaxPower.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bMaxPower.i, align 4
  %conv.i = zext i8 %13 to i32
  %mul1.i = mul nuw nsw i32 %cond.i, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.i, i32 %conv10)
  %cmp11 = icmp ugt i32 %mul1.i, %conv10
  br i1 %cmp11, label %if.end8.if.then13_crit_edge, label %if.end14

if.end8.if.then13_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then13

if.end8.thread:                                   ; preds = %for.body
  %bMaxPower.i185 = getelementptr inbounds %struct.usb_config_descriptor, ptr %c.0174, i32 0, i32 7
  %14 = ptrtoint ptr %bMaxPower.i185 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bMaxPower.i185, align 4
  %conv.i186 = zext i8 %15 to i32
  %mul1.i187 = mul nuw nsw i32 %cond.i, %conv.i186
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.i187, i32 %conv10)
  %cmp11188 = icmp ugt i32 %mul1.i187, %conv10
  br i1 %cmp11188, label %if.end8.thread.if.then13_crit_edge, label %if.end8.thread.if.else51_crit_edge

if.end8.thread.if.else51_crit_edge:               ; preds = %if.end8.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else51

if.end8.thread.if.then13_crit_edge:               ; preds = %if.end8.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then13

if.then13:                                        ; preds = %if.end8.thread.if.then13_crit_edge, %if.end8.if.then13_crit_edge
  %inc = add i32 %insufficient_power.0172, 1
  br label %for.inc

if.end14:                                         ; preds = %if.end8
  %tobool.not = icmp eq ptr %altsetting, null
  br i1 %tobool.not, label %if.end14.if.else51_crit_edge, label %land.lhs.true

if.end14.if.else51_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else51

land.lhs.true:                                    ; preds = %if.end14
  %bInterfaceClass.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %altsetting, i32 0, i32 5
  %16 = ptrtoint ptr %bInterfaceClass.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bInterfaceClass.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp.i130 = icmp eq i8 %17, 1
  br i1 %cmp.i130, label %if.then17, label %if.end25

if.then17:                                        ; preds = %land.lhs.true
  %bInterfaceProtocol.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %altsetting, i32 0, i32 7
  %18 = ptrtoint ptr %bInterfaceProtocol.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bInterfaceProtocol.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %19)
  %cmp.i131 = icmp eq i8 %19, 48
  br i1 %cmp.i131, label %if.then17.for.end_crit_edge, label %if.else

if.then17.for.end_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.else:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0178)
  %cmp20 = icmp eq i32 %i.0178, 0
  %spec.select = select i1 %cmp20, ptr %c.0174, ptr %best.0177
  br label %for.inc

if.end25:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0178)
  %cmp26 = icmp ne i32 %i.0178, 0
  %or.cond = select i1 %cmp26, i1 true, i1 %cmp29
  br i1 %or.cond, label %if.end25.if.else39_crit_edge, label %land.lhs.true33

if.end25.if.else39_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else39

land.lhs.true33:                                  ; preds = %if.end25
  %20 = ptrtoint ptr %bInterfaceClass.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bInterfaceClass.i, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i8 %21, label %land.lhs.true33.if.else39_crit_edge [
    i8 2, label %land.lhs.true.i
    i8 -17, label %land.lhs.true.i139
  ]

land.lhs.true33.if.else39_crit_edge:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else39

land.lhs.true.i:                                  ; preds = %land.lhs.true33
  %bInterfaceSubClass.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %altsetting, i32 0, i32 6
  %23 = ptrtoint ptr %bInterfaceSubClass.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bInterfaceSubClass.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %cmp3.i = icmp eq i8 %24, 2
  br i1 %cmp3.i, label %is_rndis.exit, label %land.lhs.true.i.if.else39_crit_edge

land.lhs.true.i.if.else39_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else39

is_rndis.exit:                                    ; preds = %land.lhs.true.i
  %bInterfaceProtocol.i134 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %altsetting, i32 0, i32 7
  %25 = ptrtoint ptr %bInterfaceProtocol.i134 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bInterfaceProtocol.i134, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %cmp6.i.not = icmp eq i8 %26, -1
  br i1 %cmp6.i.not, label %is_rndis.exit.for.inc_crit_edge, label %is_rndis.exit.if.else39_crit_edge

is_rndis.exit.if.else39_crit_edge:                ; preds = %is_rndis.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else39

is_rndis.exit.for.inc_crit_edge:                  ; preds = %is_rndis.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

land.lhs.true.i139:                               ; preds = %land.lhs.true33
  %bInterfaceSubClass.i137 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %altsetting, i32 0, i32 6
  %27 = ptrtoint ptr %bInterfaceSubClass.i137 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bInterfaceSubClass.i137, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %28)
  %cmp3.i138 = icmp eq i8 %28, 1
  br i1 %cmp3.i138, label %is_activesync.exit, label %land.lhs.true.i139.if.else39_crit_edge

land.lhs.true.i139.if.else39_crit_edge:           ; preds = %land.lhs.true.i139
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else39

is_activesync.exit:                               ; preds = %land.lhs.true.i139
  %bInterfaceProtocol.i140 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %altsetting, i32 0, i32 7
  %29 = ptrtoint ptr %bInterfaceProtocol.i140 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bInterfaceProtocol.i140, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp6.i141.not = icmp eq i8 %30, 1
  br i1 %cmp6.i141.not, label %is_activesync.exit.for.inc_crit_edge, label %is_activesync.exit.if.else39_crit_edge

is_activesync.exit.if.else39_crit_edge:           ; preds = %is_activesync.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else39

is_activesync.exit.for.inc_crit_edge:             ; preds = %is_activesync.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.else39:                                        ; preds = %is_activesync.exit.if.else39_crit_edge, %land.lhs.true.i139.if.else39_crit_edge, %is_rndis.exit.if.else39_crit_edge, %land.lhs.true.i.if.else39_crit_edge, %land.lhs.true33.if.else39_crit_edge, %if.end25.if.else39_crit_edge
  %31 = ptrtoint ptr %bDeviceClass to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bDeviceClass, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %32)
  %cmp42.not = icmp eq i8 %32, -1
  br i1 %cmp42.not, label %if.else39.if.else51_crit_edge, label %land.lhs.true46

if.else39.if.else51_crit_edge:                    ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else51

land.lhs.true46:                                  ; preds = %if.else39
  %33 = ptrtoint ptr %bInterfaceClass.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bInterfaceClass.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %34)
  %cmp48.not = icmp eq i8 %34, -1
  br i1 %cmp48.not, label %land.lhs.true46.if.else51_crit_edge, label %land.lhs.true46.for.end_crit_edge

land.lhs.true46.for.end_crit_edge:                ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

land.lhs.true46.if.else51_crit_edge:              ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else51

if.else51:                                        ; preds = %land.lhs.true46.if.else51_crit_edge, %if.else39.if.else51_crit_edge, %if.end14.if.else51_crit_edge, %if.end8.thread.if.else51_crit_edge
  %tobool52.not = icmp eq ptr %best.0177, null
  %spec.select129 = select i1 %tobool52.not, ptr %c.0174, ptr %best.0177
  br label %for.inc

for.inc:                                          ; preds = %if.else51, %is_activesync.exit.for.inc_crit_edge, %is_rndis.exit.for.inc_crit_edge, %if.else, %if.then13
  %insufficient_power.1.ph = phi i32 [ %insufficient_power.0172, %if.else51 ], [ %insufficient_power.0172, %is_activesync.exit.for.inc_crit_edge ], [ %insufficient_power.0172, %is_rndis.exit.for.inc_crit_edge ], [ %insufficient_power.0172, %if.else ], [ %inc, %if.then13 ]
  %best.3.ph = phi ptr [ %spec.select129, %if.else51 ], [ %c.0174, %is_activesync.exit.for.inc_crit_edge ], [ %c.0174, %is_rndis.exit.for.inc_crit_edge ], [ %spec.select, %if.else ], [ %best.0177, %if.then13 ]
  %inc57 = add nuw nsw i32 %i.0178, 1
  %incdec.ptr = getelementptr %struct.usb_host_config, ptr %c.0174, i32 1
  %exitcond.not = icmp eq i32 %inc57, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true46.for.end_crit_edge, %if.then17.for.end_crit_edge
  %insufficient_power.0.lcssa = phi i32 [ %insufficient_power.1.ph, %for.inc.for.end_crit_edge ], [ %insufficient_power.0172, %land.lhs.true46.for.end_crit_edge ], [ %insufficient_power.0172, %if.then17.for.end_crit_edge ]
  %best.4 = phi ptr [ %best.3.ph, %for.inc.for.end_crit_edge ], [ %c.0174, %land.lhs.true46.for.end_crit_edge ], [ %c.0174, %if.then17.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %insufficient_power.0.lcssa)
  %cmp58 = icmp sgt i32 %insufficient_power.0.lcssa, 0
  br i1 %cmp58, label %do.end, label %for.end.if.end62_crit_edge

for.end.if.end62_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end62

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  %dev = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %insufficient_power.0.lcssa)
  %cmp.i144 = icmp eq i32 %insufficient_power.0.lcssa, 1
  %cond.i145 = select i1 %cmp.i144, ptr @.str.18, ptr @.str.19
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %insufficient_power.0.lcssa, ptr noundef nonnull %cond.i145) #6
  br label %if.end62

if.end62:                                         ; preds = %do.end, %for.end.if.end62_crit_edge
  %tobool63.not = icmp eq ptr %best.4, null
  br i1 %tobool63.not, label %if.end62.if.else78_crit_edge, label %if.then64

if.end62.if.else78_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else78

if.then64:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #5
  %bConfigurationValue = getelementptr inbounds %struct.usb_config_descriptor, ptr %best.4, i32 0, i32 4
  %35 = ptrtoint ptr %bConfigurationValue to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bConfigurationValue, align 1
  %conv66 = zext i8 %36 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_choose_configuration.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_choose_configuration, %if.then72)) #3
          to label %cleanup85 [label %if.then72], !srcloc !46

if.then72:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #5
  %dev73 = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.i146 = icmp eq i8 %1, 1
  %cond.i147 = select i1 %cmp.i146, ptr @.str.18, ptr @.str.19
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_choose_configuration.__UNIQUE_ID_ddebug232, ptr noundef %dev73, ptr noundef nonnull @.str.6, i32 noundef %conv66, i32 noundef %conv, ptr noundef nonnull %cond.i147) #3
  br label %cleanup85

if.else78:                                        ; preds = %if.end62.if.else78_crit_edge, %if.end.if.else78_crit_edge
  %dev82 = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.i148 = icmp eq i8 %1, 1
  %cond.i149 = select i1 %cmp.i148, ptr @.str.18, ptr @.str.19
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev82, ptr noundef nonnull @.str.8, i32 noundef %conv, ptr noundef nonnull %cond.i149) #6
  br label %cleanup85

cleanup85:                                        ; preds = %if.else78, %if.then72, %if.then64, %entry.cleanup85_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup85_crit_edge ], [ %conv66, %if.then72 ], [ -1, %if.else78 ], [ %conv66, %if.then64 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @usb_device_is_owned(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_generic_driver_probe(ptr noundef %udev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %authorized = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 28
  %0 = ptrtoint ptr %authorized to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %bf.load = load i16, ptr %authorized, align 1
  %1 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %dev = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #6
  br label %if.end11

if.else:                                          ; preds = %entry
  %call = tail call i32 @usb_choose_configuration(ptr noundef %udev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp1 = icmp sgt i32 %call, -1
  br i1 %cmp1, label %if.then2, label %if.else.if.end11_crit_edge

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

if.then2:                                         ; preds = %if.else
  %call3 = tail call i32 @usb_set_configuration(ptr noundef %udev, i32 noundef %call) #3
  %2 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %call3, label %do.end8 [
    i32 0, label %if.then2.if.end11_crit_edge
    i32 -19, label %if.then2.if.end11_crit_edge21
  ]

if.then2.if.end11_crit_edge21:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

if.then2.if.end11_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

do.end8:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  %dev9 = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.15, i32 noundef %call, i32 noundef %call3) #6
  br label %if.end11

if.end11:                                         ; preds = %do.end8, %if.then2.if.end11_crit_edge, %if.then2.if.end11_crit_edge21, %if.else.if.end11_crit_edge, %do.end
  tail call void @usb_notify_add_device(ptr noundef %udev) #3
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_configuration(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_notify_add_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_generic_driver_disconnect(ptr noundef %udev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_notify_remove_device(ptr noundef %udev) #3
  %actconfig = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 20
  %0 = ptrtoint ptr %actconfig to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %actconfig, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @usb_set_configuration(ptr noundef %udev, i32 noundef -1) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_notify_remove_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_generic_driver_suspend(ptr noundef %udev, [1 x i32] %msg.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 11
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @hcd_bus_suspend(ptr noundef %udev, [1 x i32] %msg.coerce) #3
  br label %if.end9

if.else:                                          ; preds = %entry
  %msg.coerce.fca.0.extract = extractvalue [1 x i32] %msg.coerce, 0
  %2 = zext i32 %msg.coerce.fca.0.extract to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %msg.coerce.fca.0.extract, label %if.else.if.else6_crit_edge [
    i32 1, label %if.else.land.lhs.true_crit_edge
    i32 8, label %if.else.land.lhs.true_crit_edge28
  ]

if.else.land.lhs.true_crit_edge28:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true

if.else.land.lhs.true_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true

if.else.if.else6_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else6

land.lhs.true:                                    ; preds = %if.else.land.lhs.true_crit_edge, %if.else.land.lhs.true_crit_edge28
  %speed = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 4
  %3 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %cmp4 = icmp ult i32 %4, 5
  br i1 %cmp4, label %land.lhs.true.if.then11_crit_edge, label %land.lhs.true.if.else6_crit_edge

land.lhs.true.if.else6_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else6

land.lhs.true.if.then11_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11

if.else6:                                         ; preds = %land.lhs.true.if.else6_crit_edge, %if.else.if.else6_crit_edge
  %call8 = tail call i32 @usb_port_suspend(ptr noundef %udev, [1 x i32] %msg.coerce) #3
  br label %if.end9

if.end9:                                          ; preds = %if.else6, %if.then
  %rc.0 = phi i32 [ %call8, %if.else6 ], [ %call, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp10 = icmp eq i32 %rc.0, 0
  br i1 %cmp10, label %if.end9.if.then11_crit_edge, label %if.end9.if.end12_crit_edge

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.end9.if.then11_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then11

if.then11:                                        ; preds = %if.end9.if.then11_crit_edge, %land.lhs.true.if.then11_crit_edge
  tail call void @usbfs_notify_suspend(ptr noundef %udev) #3
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  %rc.026 = phi i32 [ 0, %if.then11 ], [ %rc.0, %if.end9.if.end12_crit_edge ]
  ret i32 %rc.026
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hcd_bus_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_port_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbfs_notify_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_generic_driver_resume(ptr noundef %udev, [1 x i32] %msg.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 11
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @hcd_bus_resume(ptr noundef %udev, [1 x i32] %msg.coerce) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call3 = tail call i32 @usb_port_resume(ptr noundef %udev, [1 x i32] %msg.coerce) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rc.0 = phi i32 [ %call3, %if.else ], [ %call, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp = icmp eq i32 %rc.0, 0
  br i1 %cmp, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @usbfs_notify_resume(ptr noundef %udev) #3
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hcd_bus_resume(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_port_resume(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbfs_notify_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @usb_generic_driver_match(ptr noundef %udev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %use_generic_driver = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 49
  %0 = ptrtoint ptr %use_generic_driver to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %use_generic_driver, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @bus_for_each_drv(ptr noundef nonnull @usb_bus_type, ptr noundef null, ptr noundef %udev, ptr noundef nonnull @__check_for_non_generic_match) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ %tobool1.not, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_drv(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__check_for_non_generic_match(ptr noundef %drv, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %for_devices.i = getelementptr inbounds %struct.usbdrv_wrap, ptr %drv, i32 0, i32 1
  %0 = ptrtoint ptr %for_devices.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %for_devices.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %drv, i32 -28
  %cmp = icmp eq ptr %add.ptr, @usb_generic_driver
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call3 = tail call zeroext i1 @usb_driver_applicable(ptr noundef %data, ptr noundef %add.ptr) #3
  %conv = zext i1 %call3 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end2 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @usb_driver_applicable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/core/generic.c", i32 179, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @usb_choose_configuration._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @usb_choose_configuration._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/core/generic.c", i32 185, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @usb_choose_configuration.__UNIQUE_ID_ddebug232, !9, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/core/generic.c", i32 190, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @usb_choose_configuration._entry.7, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @usb_choose_configuration._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__ksymtab_usb_choose_configuration, !18, !"__ksymtab_usb_choose_configuration", i1 false, i1 false}
!18 = !{!"../drivers/usb/core/generic.c", i32 196, i32 1}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/core/generic.c", i32 234, i32 3}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @usb_generic_driver_probe._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @usb_generic_driver_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/core/generic.c", i32 240, i32 5}
!27 = !{ptr @usb_generic_driver_probe._entry.14, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @usb_generic_driver_probe._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/core/generic.c", i32 315, i32 10}
!31 = !{ptr @usb_generic_driver, !32, !"usb_generic_driver", i1 false, i1 false}
!32 = !{!"../drivers/usb/core/generic.c", i32 314, i32 26}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/core/generic.c", i32 29, i32 19}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/core/generic.c", i32 29, i32 24}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 2148940704, i64 2148940709, i64 2148940722, i64 2148940766, i64 2148940800, i64 2148940821}
