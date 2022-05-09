; ModuleID = '/llk/IR_all_yes/drivers/input/tablet/acecad.c_pt.bc'
source_filename = "../drivers/input/tablet/acecad.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_acecad = type { [128 x i8], [64 x i8], ptr, ptr, ptr, ptr, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@__UNIQUE_ID_author232 = internal constant [63 x i8] c"acecad.author=Edouard TISSERANT <edouard.tisserant@wanadoo.fr>\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [50 x i8] c"acecad.description=USB Acecad Flair tablet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [40 x i8] c"acecad.file=drivers/input/tablet/acecad\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [19 x i8] c"acecad.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_acecad__238_257_usb_acecad_driver_init6 = internal global ptr @usb_acecad_driver_init, section ".initcall6.init", align 4
@usb_acecad_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @usb_acecad_probe, ptr @usb_acecad_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usb_acecad_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_usb_acecad_driver_exit = internal global ptr @usb_acecad_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"acecad\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usb_acecad\00", [21 x i8] zeroinitializer }, align 32
@usb_acecad_id_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1120, i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1120, i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input0\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"USB Acecad Flair Tablet %04x:%04x\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"USB Acecad 302 Tablet %04x:%04x\00", [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@usb_acecad_irq.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.9, ptr @.str.10, i8 0, i8 14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usb_acecad_irq\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/input/tablet/acecad.c\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - urb shutting down with status: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@usb_acecad_irq.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.9, ptr @.str.11, i8 0, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - nonzero urb status received: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@usb_acecad_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.9, i32 93, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"can't resubmit intr, %s-%s/input0, status %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usb_acecad_irq._entry_ptr = internal global ptr @usb_acecad_irq._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.15 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@___asan_gen_.16 = private unnamed_addr constant [18 x i8] c"usb_acecad_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 250, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 257, i32 1 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 251, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [20 x i8] c"usb_acecad_id_table\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 242, i32 35 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 162, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 167, i32 24 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 191, i32 5 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 202, i32 5 }
@___asan_gen_.41 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 912, i32 31 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 56, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 60, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [33 x i8] c"../drivers/input/tablet/acecad.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 90, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_usb_acecad_driver_exit, ptr @__initcall__kmod_acecad__238_257_usb_acecad_driver_init6, ptr @usb_acecad_driver_exit, ptr @usb_acecad_irq._entry, ptr @usb_acecad_irq._entry_ptr, ptr @usb_acecad_driver, ptr @.str, ptr @.str.1, ptr @usb_acecad_id_table, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_acecad_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_acecad_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_acecad_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_acecad_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @usb_acecad_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_acecad_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @usb_acecad_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_acecad_probe(ptr noundef %intf, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.not = icmp eq i8 %5, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %endpoint2 = getelementptr inbounds %struct.usb_host_interface, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %endpoint2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %endpoint2, align 4
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bmAttributes.i.i, align 1
  %10 = and i8 %9, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp.i.not.i = icmp eq i8 %10, 3
  br i1 %cmp.i.not.i, label %usb_endpoint_is_int_in.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

usb_endpoint_is_int_in.exit:                      ; preds = %if.end
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 2
  %11 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %tobool.not = icmp sgt i8 %12, -1
  br i1 %tobool.not, label %usb_endpoint_is_int_in.exit.cleanup_crit_edge, label %if.end6

usb_endpoint_is_int_in.exit.cleanup_crit_edge:    ; preds = %usb_endpoint_is_int_in.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %usb_endpoint_is_int_in.exit
  %13 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bEndpointAddress.i.i, align 1
  %conv7 = zext i8 %14 to i32
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %16, 8
  %shl1.i = shl nuw nsw i32 %conv7, 15
  %or.i = or i32 %shl.i, %shl1.i
  %or9 = or i32 %or.i, 1073741952
  %17 = lshr i32 %or.i, 15
  %and.i = and i32 %17, 15
  %arrayidx57.i = getelementptr %struct.usb_device, ptr %add.ptr.i, i32 0, i32 21, i32 %and.i
  %18 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx57.i, align 4
  %tobool59.not.i = icmp eq ptr %19, null
  br i1 %tobool59.not.i, label %if.end6.usb_maxpacket.exit_crit_edge, label %if.end61.i

if.end6.usb_maxpacket.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb_maxpacket.exit

if.end61.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %22 = and i16 %21, -249
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #8
  br label %usb_maxpacket.exit

usb_maxpacket.exit:                               ; preds = %if.end61.i, %if.end6.usb_maxpacket.exit_crit_edge
  %retval.0.i = phi i16 [ %23, %if.end61.i ], [ 0, %if.end6.usb_maxpacket.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 212) #11
  %call14 = tail call ptr @input_allocate_device() #8
  %tobool15.not = icmp eq ptr %call7.i.i, null
  %tobool16.not = icmp eq ptr %call14, null
  %or.cond = select i1 %tobool15.not, i1 true, i1 %tobool16.not
  br i1 %or.cond, label %usb_maxpacket.exit.fail1_crit_edge, label %if.end18

usb_maxpacket.exit.fail1_crit_edge:               ; preds = %usb_maxpacket.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail1

if.end18:                                         ; preds = %usb_maxpacket.exit
  %data_dma = getelementptr inbounds %struct.usb_acecad, ptr %call7.i.i, i32 0, i32 6
  %call19 = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i, i32 noundef 8, i32 noundef 3264, ptr noundef %data_dma) #8
  %data = getelementptr inbounds %struct.usb_acecad, ptr %call7.i.i, i32 0, i32 5
  %25 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call19, ptr %data, align 4
  %tobool21.not = icmp eq ptr %call19, null
  br i1 %tobool21.not, label %if.end18.fail1_crit_edge, label %if.end23

if.end18.fail1_crit_edge:                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail1

if.end23:                                         ; preds = %if.end18
  %call24 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %irq = getelementptr inbounds %struct.usb_acecad, ptr %call7.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call24, ptr %irq, align 8
  %tobool26.not = icmp eq ptr %call24, null
  br i1 %tobool26.not, label %if.end23.fail2_crit_edge, label %if.end28

if.end23.fail2_crit_edge:                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail2

if.end28:                                         ; preds = %if.end23
  %intf29 = getelementptr inbounds %struct.usb_acecad, ptr %call7.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %intf29 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %intf, ptr %intf29, align 8
  %input = getelementptr inbounds %struct.usb_acecad, ptr %call7.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call14, ptr %input, align 4
  %manufacturer = getelementptr i8, ptr %1, i32 1108
  %29 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %manufacturer, align 4
  %tobool30.not = icmp eq ptr %30, null
  br i1 %tobool30.not, label %if.end28.if.end34_crit_edge, label %if.then31

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %call33 = tail call i32 @strlcpy(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %30, i32 noundef 128) #8
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end28.if.end34_crit_edge
  %product = getelementptr i8, ptr %1, i32 1104
  %31 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %product, align 8
  %tobool35.not = icmp eq ptr %32, null
  br i1 %tobool35.not, label %if.end34.if.end48_crit_edge, label %if.then36

if.end34.if.end48_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then36:                                        ; preds = %if.end34
  %33 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %manufacturer, align 4
  %tobool38.not = icmp eq ptr %34, null
  br i1 %tobool38.not, label %if.then36.if.end43_crit_edge, label %if.then39

if.then36.if.end43_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then39:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %call42 = tail call i32 @strlcat(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.2, i32 noundef 128) #8
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.then36.if.end43_crit_edge
  %35 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %product, align 8
  %call47 = tail call i32 @strlcat(ptr noundef nonnull %call7.i.i, ptr noundef %36, i32 noundef 128) #8
  br label %if.end48

if.end48:                                         ; preds = %if.end43, %if.end34.if.end48_crit_edge
  %phys = getelementptr inbounds %struct.usb_acecad, ptr %call7.i.i, i32 0, i32 1
  %bus.i = getelementptr i8, ptr %1, i32 -64
  %37 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr i8, ptr %1, i32 -124
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef %40, ptr noundef %devpath.i) #8
  %call53 = tail call i32 @strlcat(ptr noundef %phys, ptr noundef nonnull @.str.3, i32 noundef 64) #8
  %41 = ptrtoint ptr %call14 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i, ptr %call14, align 8
  %phys59 = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 1
  %42 = ptrtoint ptr %phys59 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %phys, ptr %phys59, align 4
  %id60 = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 3
  %43 = ptrtoint ptr %id60 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 3, ptr %id60, align 2
  %idVendor.i = getelementptr i8, ptr %1, i32 936
  %44 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %idVendor.i, align 8
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #8
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %vendor.i, align 2
  %idProduct.i = getelementptr i8, ptr %1, i32 938
  %48 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %idProduct.i, align 2
  %50 = tail call i16 @llvm.bswap.i16(i16 %49) #8
  %product.i = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 3, i32 2
  %51 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %product.i, align 2
  %bcdDevice.i = getelementptr i8, ptr %1, i32 940
  %52 = ptrtoint ptr %bcdDevice.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %bcdDevice.i, align 4
  %54 = tail call i16 @llvm.bswap.i16(i16 %53) #8
  %version.i = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 3, i32 3
  %55 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %version.i, align 2
  %dev61 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %parent = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 40, i32 1
  %56 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %dev61, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 40, i32 8
  %57 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 31
  %58 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @usb_acecad_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 32
  %59 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @usb_acecad_close, ptr %close, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call14, i32 0, i32 5
  %60 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 10, ptr %evbit, align 8
  %arrayidx64 = getelementptr %struct.input_dev, ptr %call14, i32 0, i32 6, i32 10
  %61 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 7169, ptr %arrayidx64, align 4
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %62 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %driver_info, align 4
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values)
  switch i32 %63, label %if.end48.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb77
  ]

if.end48.sw.epilog_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end48
  tail call void @input_set_abs_params(ptr noundef nonnull %call14, i32 noundef 0, i32 noundef 0, i32 noundef 5000, i32 noundef 4, i32 noundef 0) #8
  tail call void @input_set_abs_params(ptr noundef nonnull %call14, i32 noundef 1, i32 noundef 0, i32 noundef 3750, i32 noundef 4, i32 noundef 0) #8
  tail call void @input_set_abs_params(ptr noundef nonnull %call14, i32 noundef 24, i32 noundef 0, i32 noundef 512, i32 noundef 0, i32 noundef 0) #8
  %65 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %char0191 = load i8, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0191)
  %tobool68.not = icmp eq i8 %char0191, 0
  br i1 %tobool68.not, label %sw.bb.sw.epilog.sink.split_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.bb77:                                          ; preds = %if.end48
  tail call void @input_set_abs_params(ptr noundef nonnull %call14, i32 noundef 0, i32 noundef 0, i32 noundef 53000, i32 noundef 4, i32 noundef 0) #8
  tail call void @input_set_abs_params(ptr noundef nonnull %call14, i32 noundef 1, i32 noundef 0, i32 noundef 2250, i32 noundef 4, i32 noundef 0) #8
  tail call void @input_set_abs_params(ptr noundef nonnull %call14, i32 noundef 24, i32 noundef 0, i32 noundef 1024, i32 noundef 0, i32 noundef 0) #8
  %66 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %char0 = load i8, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool81.not = icmp eq i8 %char0, 0
  br i1 %tobool81.not, label %sw.bb77.sw.epilog.sink.split_crit_edge, label %sw.bb77.sw.epilog_crit_edge

sw.bb77.sw.epilog_crit_edge:                      ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb77.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb77.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %.str.5.sink = phi ptr [ @.str.4, %sw.bb.sw.epilog.sink.split_crit_edge ], [ @.str.5, %sw.bb77.sw.epilog.sink.split_crit_edge ]
  %67 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %idVendor.i, align 8
  %69 = tail call i16 @llvm.bswap.i16(i16 %68)
  %conv87 = zext i16 %69 to i32
  %70 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %idProduct.i, align 2
  %72 = tail call i16 @llvm.bswap.i16(i16 %71)
  %conv90 = zext i16 %72 to i32
  %call91 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 128, ptr noundef nonnull %.str.5.sink, i32 noundef %conv87, i32 noundef %conv90)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb77.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end48.sw.epilog_crit_edge
  %73 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %irq, align 8
  %75 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data, align 4
  %77 = tail call i16 @llvm.umin.i16(i16 %retval.0.i, i16 8)
  %spec.select = zext i16 %77 to i32
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 5
  %78 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %bInterval, align 1
  %conv97 = zext i8 %79 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %74, i32 0, i32 8
  %80 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %add.ptr.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %74, i32 0, i32 10
  %81 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or9, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %74, i32 0, i32 14
  %82 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %76, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %74, i32 0, i32 19
  %83 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %spec.select, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %74, i32 0, i32 28
  %84 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @usb_acecad_irq, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %74, i32 0, i32 27
  %85 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %speed.i = getelementptr i8, ptr %1, i32 -100
  %86 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %87)
  %cmp.i = icmp eq i32 %87, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %87)
  %cmp6.i = icmp ugt i32 %87, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %sw.epilog.usb_fill_int_urb.exit_crit_edge

sw.epilog.usb_fill_int_urb.exit_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %88 = tail call i32 @llvm.smax.i32(i32 %conv97, i32 1) #8
  %89 = tail call i32 @llvm.umin.i32(i32 %88, i32 16) #8
  %sub.i = add nsw i32 %89, -1
  %shl.i192 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %sw.epilog.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i192, %if.then.i ], [ %conv97, %sw.epilog.usb_fill_int_urb.exit_crit_edge ]
  %90 = getelementptr inbounds %struct.urb, ptr %74, i32 0, i32 25
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %interval.sink.i, ptr %90, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %74, i32 0, i32 23
  %92 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -1, ptr %start_frame.i, align 4
  %93 = ptrtoint ptr %data_dma to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %data_dma, align 8
  %95 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %irq, align 8
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %96, i32 0, i32 15
  %97 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %94, ptr %transfer_dma, align 4
  %98 = load ptr, ptr %irq, align 8
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %98, i32 0, i32 13
  %99 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %transfer_flags, align 4
  %or101 = or i32 %100, 4
  store i32 %or101, ptr %transfer_flags, align 4
  %101 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %input, align 4
  %call103 = tail call i32 @input_register_device(ptr noundef %102) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end106, label %fail3

if.end106:                                        ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i193 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %103 = ptrtoint ptr %driver_data.i.i193 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call7.i.i, ptr %driver_data.i.i193, align 4
  br label %cleanup

fail3:                                            ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %irq, align 8
  tail call void @usb_free_urb(ptr noundef %105) #8
  br label %fail2

fail2:                                            ; preds = %fail3, %if.end23.fail2_crit_edge
  %err.0 = phi i32 [ %call103, %fail3 ], [ -12, %if.end23.fail2_crit_edge ]
  %106 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data, align 4
  %108 = ptrtoint ptr %data_dma to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %data_dma, align 8
  tail call void @usb_free_coherent(ptr noundef %add.ptr.i, i32 noundef 8, ptr noundef %107, i32 noundef %109) #8
  br label %fail1

fail1:                                            ; preds = %fail2, %if.end18.fail1_crit_edge, %usb_maxpacket.exit.fail1_crit_edge
  %err.1 = phi i32 [ %err.0, %fail2 ], [ -12, %usb_maxpacket.exit.fail1_crit_edge ], [ -12, %if.end18.fail1_crit_edge ]
  tail call void @input_free_device(ptr noundef %call14) #8
  tail call void @kfree(ptr noundef %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.end106, %usb_endpoint_is_int_in.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %fail1 ], [ 0, %if.end106 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %usb_endpoint_is_int_in.exit.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_acecad_disconnect(ptr nocapture noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -128
  store ptr null, ptr %driver_data.i.i, align 4
  %input = getelementptr inbounds %struct.usb_acecad, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input, align 4
  tail call void @input_unregister_device(ptr noundef %5) #8
  %irq = getelementptr inbounds %struct.usb_acecad, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq, align 4
  tail call void @usb_free_urb(ptr noundef %7) #8
  %data = getelementptr inbounds %struct.usb_acecad, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %data_dma = getelementptr inbounds %struct.usb_acecad, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %data_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %add.ptr.i, i32 noundef 8, ptr noundef %9, i32 noundef %11) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_acecad_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %intf = getelementptr inbounds %struct.usb_acecad, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 -128
  %irq = getelementptr inbounds %struct.usb_acecad, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq, align 4
  %dev2 = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr.i, ptr %dev2, align 4
  %9 = load ptr, ptr %irq, align 4
  %call4 = tail call i32 @usb_submit_urb(ptr noundef %9, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  %. = select i1 %tobool.not, i32 0, i32 -5
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_acecad_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.usb_acecad, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_acecad_irq(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %data1 = getelementptr inbounds %struct.usb_acecad, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  %input = getelementptr inbounds %struct.usb_acecad, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input, align 4
  %intf2 = getelementptr inbounds %struct.usb_acecad, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %intf2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf2, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 8
  %status3 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %10 = ptrtoint ptr %status3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status3, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %11, label %do.body9 [
    i32 0, label %sw.epilog
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge111
    i32 -108, label %entry.do.body_crit_edge112
  ]

entry.do.body_crit_edge112:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

entry.do.body_crit_edge111:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge111, %entry.do.body_crit_edge112
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_acecad_irq.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_acecad_irq, %if.then)) #8
          to label %cleanup [label %if.then], !srcloc !52

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev7 = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  %13 = ptrtoint ptr %status3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_acecad_irq.__UNIQUE_ID_ddebug236, ptr noundef %dev7, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef %14) #8
  br label %cleanup

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_acecad_irq.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_acecad_irq, %if.then21)) #8
          to label %resubmit [label %if.then21], !srcloc !52

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %dev22 = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  %15 = ptrtoint ptr %status3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_acecad_irq.__UNIQUE_ID_ddebug237, ptr noundef %dev22, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8, i32 noundef %16) #8
  br label %resubmit

sw.epilog:                                        ; preds = %entry
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %3, align 1
  %19 = lshr i8 %18, 2
  %20 = and i8 %19, 1
  %21 = zext i8 %20 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 320, i32 noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool27.not = icmp eq i8 %20, 0
  br i1 %tobool27.not, label %sw.epilog.if.end56_crit_edge, label %if.then28

sw.epilog.if.end56_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then28:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx29 = getelementptr i8, ptr %3, i32 1
  %22 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %23 to i32
  %arrayidx31 = getelementptr i8, ptr %3, i32 2
  %24 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %25 to i32
  %shl = shl nuw nsw i32 %conv32, 8
  %or = or i32 %shl, %conv30
  %arrayidx33 = getelementptr i8, ptr %3, i32 3
  %26 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %27 to i32
  %arrayidx35 = getelementptr i8, ptr %3, i32 4
  %28 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %29 to i32
  %shl37 = shl nuw nsw i32 %conv36, 8
  %or38 = or i32 %shl37, %conv34
  %arrayidx39 = getelementptr i8, ptr %3, i32 5
  %30 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %31 to i32
  %arrayidx41 = getelementptr i8, ptr %3, i32 6
  %32 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %33 to i32
  %shl43 = shl nuw nsw i32 %conv42, 8
  %or44 = or i32 %shl43, %conv40
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %3, align 1
  %conv46 = zext i8 %35 to i32
  %and47 = and i32 %conv46, 1
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 0, i32 noundef %or) #8
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 1, i32 noundef %or38) #8
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 24, i32 noundef %or44) #8
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 330, i32 noundef %and47) #8
  %36 = lshr i32 %conv46, 4
  %.lobit = and i32 %36, 1
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 331, i32 noundef %.lobit) #8
  %37 = lshr i32 %conv46, 5
  %.lobit110 = and i32 %37, 1
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 332, i32 noundef %.lobit110) #8
  br label %if.end56

if.end56:                                         ; preds = %if.then28, %sw.epilog.if.end56_crit_edge
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %resubmit

resubmit:                                         ; preds = %if.end56, %if.then21, %do.body9
  %call57 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %resubmit.cleanup_crit_edge, label %do.end62

resubmit.cleanup_crit_edge:                       ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end62:                                         ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #10
  %dev63 = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  %bus = getelementptr i8, ptr %9, i32 -64
  %38 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus, align 8
  %bus_name = getelementptr inbounds %struct.usb_bus, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %bus_name to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus_name, align 4
  %devpath = getelementptr i8, ptr %9, i32 -124
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev63, ptr noundef nonnull @.str.12, ptr noundef %41, ptr noundef %devpath, i32 noundef %call57) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end62, %resubmit.cleanup_crit_edge, %if.then, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !34, !35, !37, !38, !39, !40, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__UNIQUE_ID_author232, !1, !"__UNIQUE_ID_author232", i1 false, i1 false}
!1 = !{!"../drivers/input/tablet/acecad.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_description233, !3, !"__UNIQUE_ID_description233", i1 false, i1 false}
!3 = !{!"../drivers/input/tablet/acecad.c", i32 21, i32 1}
!4 = !{ptr @__UNIQUE_ID_file234, !5, !"__UNIQUE_ID_file234", i1 false, i1 false}
!5 = !{!"../drivers/input/tablet/acecad.c", i32 22, i32 1}
!6 = !{ptr @__UNIQUE_ID_license235, !5, !"__UNIQUE_ID_license235", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_acecad__238_257_usb_acecad_driver_init6, !8, !"__initcall__kmod_acecad__238_257_usb_acecad_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/input/tablet/acecad.c", i32 257, i32 1}
!9 = !{ptr @__exitcall_usb_acecad_driver_exit, !8, !"__exitcall_usb_acecad_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/input/tablet/acecad.c", i32 251, i32 11}
!13 = !{ptr @usb_acecad_driver, !14, !"usb_acecad_driver", i1 false, i1 false}
!14 = !{!"../drivers/input/tablet/acecad.c", i32 250, i32 26}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/input/tablet/acecad.c", i32 162, i32 26}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/input/tablet/acecad.c", i32 167, i32 24}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/input/tablet/acecad.c", i32 191, i32 5}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/input/tablet/acecad.c", i32 202, i32 5}
!23 = distinct !{null, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/usb.h", i32 1981, i32 3}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/usb.h", i32 912, i32 31}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/tablet/acecad.c", i32 56, i32 3}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @usb_acecad_irq.__UNIQUE_ID_ddebug236, !28, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/tablet/acecad.c", i32 60, i32 3}
!34 = !{ptr @usb_acecad_irq.__UNIQUE_ID_ddebug237, !33, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/tablet/acecad.c", i32 90, i32 3}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @usb_acecad_irq._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @usb_acecad_irq._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @usb_acecad_id_table, !42, !"usb_acecad_id_table", i1 false, i1 false}
!42 = !{!"../drivers/input/tablet/acecad.c", i32 242, i32 35}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 2148696413, i64 2148696418, i64 2148696431, i64 2148696475, i64 2148696509, i64 2148696530}
