; ModuleID = '/llk/IR_all_yes/drivers/usb/misc/emi26.c_pt.bc'
source_filename = "../drivers/usb/misc/emi26.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.ihex_binrec = type <{ i32, i16, [0 x i8] }>
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@__initcall__kmod_emi26__232_249_emi26_driver_init6 = internal global ptr @emi26_driver_init, section ".initcall6.init", align 4
@emi26_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @emi26_probe, ptr @emi26_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_emi26_driver_exit = internal global ptr @emi26_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author233 = internal constant [29 x i8] c"emi26.author=Tapio Laxstr\C3\B6m\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [50 x i8] c"emi26.description=Emagic EMI 2|6 firmware loader.\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [34 x i8] c"emi26.file=drivers/usb/misc/emi26\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [18 x i8] c"emi26.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware237 = internal constant [31 x i8] c"emi26.firmware=emi26/loader.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware238 = internal constant [34 x i8] c"emi26.firmware=emi26/bitstream.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware239 = internal constant [33 x i8] c"emi26.firmware=emi26/firmware.fw\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"emi26\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"emi26 - firmware loader\00", [40 x i8] zeroinitializer }, align 32
@id_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2154, i16 256, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2154, i16 258, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@emi26_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 230, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s start\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"emi26_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/usb/misc/emi26.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@emi26_probe._entry_ptr = internal global ptr @emi26_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"emi26/loader.fw\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"emi26/bitstream.fw\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"emi26/firmware.fw\00", [46 x i8] zeroinitializer }, align 32
@emi26_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 100, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s - request_firmware() failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"emi26_load_firmware\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@emi26_load_firmware._entry_ptr = internal global ptr @emi26_load_firmware._entry, section ".printk_index", align 4
@emi26_load_firmware._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.4, i32 208, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s - error loading firmware: error = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@emi26_load_firmware._entry_ptr.15 = internal global ptr @emi26_load_firmware._entry.13, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@request_ihex_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.18, i32 77, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Firmware \22%s\22 not valid IHEX records\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"request_ihex_firmware\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/ihex.h\00", [43 x i8] zeroinitializer }, align 32
@request_ihex_firmware._entry_ptr = internal global ptr @request_ihex_firmware._entry, section ".printk_index", align 4
@emi26_set_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 60, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s - %d\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"emi26_set_reset\00", [16 x i8] zeroinitializer }, align 32
@emi26_set_reset._entry_ptr = internal global ptr @emi26_set_reset._entry, section ".printk_index", align 4
@emi26_set_reset._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.4, i32 64, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"set_reset (%d) failed\0A\00", [41 x i8] zeroinitializer }, align 32
@emi26_set_reset._entry_ptr.23 = internal global ptr @emi26_set_reset._entry.21, section ".printk_index", align 4
@emi26_writememory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 46, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kmalloc(%d) failed.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"emi26_writememory\00", [46 x i8] zeroinitializer }, align 32
@emi26_writememory._entry_ptr = internal global ptr @emi26_writememory._entry, section ".printk_index", align 4
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"emi26_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 242, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 249, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 243, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 218, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 230, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 86, i32 42 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 90, i32 45 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 95, i32 44 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 99, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 207, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [24 x i8] c"../include/linux/ihex.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 76, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 60, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 64, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private constant [28 x i8] c"../drivers/usb/misc/emi26.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 46, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_firmware237, ptr @__UNIQUE_ID_firmware238, ptr @__UNIQUE_ID_firmware239, ptr @__UNIQUE_ID_license236, ptr @__exitcall_emi26_driver_exit, ptr @__initcall__kmod_emi26__232_249_emi26_driver_init6, ptr @emi26_driver_exit, ptr @emi26_load_firmware._entry, ptr @emi26_load_firmware._entry.13, ptr @emi26_load_firmware._entry_ptr, ptr @emi26_load_firmware._entry_ptr.15, ptr @emi26_probe._entry, ptr @emi26_probe._entry_ptr, ptr @emi26_set_reset._entry, ptr @emi26_set_reset._entry.21, ptr @emi26_set_reset._entry_ptr, ptr @emi26_set_reset._entry_ptr.23, ptr @emi26_writememory._entry, ptr @emi26_writememory._entry_ptr, ptr @request_ihex_firmware._entry, ptr @request_ihex_firmware._entry_ptr, ptr @emi26_driver, ptr @.str, ptr @.str.1, ptr @id_table, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emi26_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emi26_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emi26_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emi26_load_firmware._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_ihex_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emi26_set_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emi26_set_reset._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emi26_writememory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @emi26_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @emi26_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @emi26_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @emi26_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emi26_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %lfw.i28.i = alloca ptr, align 4
  %lfw.i1.i = alloca ptr, align 4
  %lfw.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 1023) #11
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.do.end143.i_crit_edge, label %if.end.i

entry.do.end143.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end143.i

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lfw.i.i) #7
  %3 = ptrtoint ptr %lfw.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %lfw.i.i, align 4, !annotation !76
  %call.i.i = call i32 @request_firmware(ptr noundef nonnull %lfw.i.i, ptr noundef nonnull @.str.7, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.request_ihex_firmware.exit.thread.i_crit_edge

if.end.i.request_ihex_firmware.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %request_ihex_firmware.exit.thread.i

if.end.i.i:                                       ; preds = %if.end.i
  %4 = ptrtoint ptr %lfw.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lfw.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.firmware, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  %sub.i.i.i = add i32 %9, -6
  %arrayidx.i.i.i = getelementptr i8, ptr %7, i32 %sub.i.i.i
  %cmp.not10.i.i.i = icmp ugt ptr %7, %arrayidx.i.i.i
  br i1 %cmp.not10.i.i.i, label %if.end.i.i.do.end.i.i_crit_edge, label %for.body.preheader.i.i.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

for.body.preheader.i.i.i:                         ; preds = %if.end.i.i
  %len.i.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %arrayidx.i.i.i, i32 0, i32 1
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.preheader.i.i.i
  %rec.011.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %7, %for.body.preheader.i.i.i ]
  %cmp2.i.i.i = icmp eq ptr %rec.011.i.i.i, %arrayidx.i.i.i
  br i1 %cmp2.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %10 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %len.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.i.i.i = icmp eq i16 %11, 0
  br i1 %tobool.not.i.i.i, label %if.end5.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %len.i.i.i.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.011.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %len.i.i.i.i.i, align 1
  %add.i.i.i.i.i = add i16 %13, 6
  %conv.i.i.i.i = zext i16 %add.i.i.i.i.i to i32
  %add.i.i.i.i = add nuw nsw i32 %conv.i.i.i.i, 3
  %and.i.i.i.i = and i32 %add.i.i.i.i, 131068
  %add.ptr.i.i.i.i = getelementptr i8, ptr %rec.011.i.i.i, i32 %and.i.i.i.i
  %cmp.not.i.i.i = icmp ugt ptr %add.ptr.i.i.i.i, %arrayidx.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.do.end.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.do.end.i.i_crit_edge:               ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %for.inc.i.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7) #10
  %14 = ptrtoint ptr %lfw.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lfw.i.i, align 4
  call void @release_firmware(ptr noundef %15) #7
  br label %request_ihex_firmware.exit.thread.i

request_ihex_firmware.exit.thread.i:              ; preds = %do.end.i.i, %if.end.i.request_ihex_firmware.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i.i, %if.end.i.request_ihex_firmware.exit.thread.i_crit_edge ], [ -22, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfw.i.i) #7
  br label %wraperr.i

if.end5.i:                                        ; preds = %land.lhs.true.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfw.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lfw.i1.i) #7
  %16 = ptrtoint ptr %lfw.i1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -1 to ptr), ptr %lfw.i1.i, align 4, !annotation !76
  %call.i2.i = call i32 @request_firmware(ptr noundef nonnull %lfw.i1.i, ptr noundef nonnull @.str.8, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool.not.i3.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool.not.i3.i, label %if.end.i8.i, label %if.end5.i.request_ihex_firmware.exit27.thread.i_crit_edge

if.end5.i.request_ihex_firmware.exit27.thread.i_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %request_ihex_firmware.exit27.thread.i

if.end.i8.i:                                      ; preds = %if.end5.i
  %17 = ptrtoint ptr %lfw.i1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lfw.i1.i, align 4
  %data.i.i4.i = getelementptr inbounds %struct.firmware, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %data.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i4.i, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %18, align 4
  %sub.i.i5.i = add i32 %22, -6
  %arrayidx.i.i6.i = getelementptr i8, ptr %20, i32 %sub.i.i5.i
  %cmp.not10.i.i7.i = icmp ugt ptr %20, %arrayidx.i.i6.i
  br i1 %cmp.not10.i.i7.i, label %if.end.i8.i.do.end.i24.i_crit_edge, label %for.body.preheader.i.i10.i

if.end.i8.i.do.end.i24.i_crit_edge:               ; preds = %if.end.i8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i24.i

for.body.preheader.i.i10.i:                       ; preds = %if.end.i8.i
  %len.i.i9.i = getelementptr inbounds %struct.ihex_binrec, ptr %arrayidx.i.i6.i, i32 0, i32 1
  br label %for.body.i.i13.i

for.body.i.i13.i:                                 ; preds = %for.inc.i.i23.i.for.body.i.i13.i_crit_edge, %for.body.preheader.i.i10.i
  %rec.011.i.i11.i = phi ptr [ %add.ptr.i.i.i21.i, %for.inc.i.i23.i.for.body.i.i13.i_crit_edge ], [ %20, %for.body.preheader.i.i10.i ]
  %cmp2.i.i12.i = icmp eq ptr %rec.011.i.i11.i, %arrayidx.i.i6.i
  br i1 %cmp2.i.i12.i, label %land.lhs.true.i.i15.i, label %for.body.i.i13.i.for.inc.i.i23.i_crit_edge

for.body.i.i13.i.for.inc.i.i23.i_crit_edge:       ; preds = %for.body.i.i13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i23.i

land.lhs.true.i.i15.i:                            ; preds = %for.body.i.i13.i
  %23 = ptrtoint ptr %len.i.i9.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %len.i.i9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.not.i.i14.i = icmp eq i16 %24, 0
  br i1 %tobool.not.i.i14.i, label %if.end10.i, label %land.lhs.true.i.i15.i.for.inc.i.i23.i_crit_edge

land.lhs.true.i.i15.i.for.inc.i.i23.i_crit_edge:  ; preds = %land.lhs.true.i.i15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i23.i

for.inc.i.i23.i:                                  ; preds = %land.lhs.true.i.i15.i.for.inc.i.i23.i_crit_edge, %for.body.i.i13.i.for.inc.i.i23.i_crit_edge
  %len.i.i.i.i16.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.011.i.i11.i, i32 0, i32 1
  %25 = ptrtoint ptr %len.i.i.i.i16.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %len.i.i.i.i16.i, align 1
  %add.i.i.i.i17.i = add i16 %26, 6
  %conv.i.i.i18.i = zext i16 %add.i.i.i.i17.i to i32
  %add.i.i.i19.i = add nuw nsw i32 %conv.i.i.i18.i, 3
  %and.i.i.i20.i = and i32 %add.i.i.i19.i, 131068
  %add.ptr.i.i.i21.i = getelementptr i8, ptr %rec.011.i.i11.i, i32 %and.i.i.i20.i
  %cmp.not.i.i22.i = icmp ugt ptr %add.ptr.i.i.i21.i, %arrayidx.i.i6.i
  br i1 %cmp.not.i.i22.i, label %for.inc.i.i23.i.do.end.i24.i_crit_edge, label %for.inc.i.i23.i.for.body.i.i13.i_crit_edge

for.inc.i.i23.i.for.body.i.i13.i_crit_edge:       ; preds = %for.inc.i.i23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i13.i

for.inc.i.i23.i.do.end.i24.i_crit_edge:           ; preds = %for.inc.i.i23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i24.i

do.end.i24.i:                                     ; preds = %for.inc.i.i23.i.do.end.i24.i_crit_edge, %if.end.i8.i.do.end.i24.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.8) #10
  %27 = ptrtoint ptr %lfw.i1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lfw.i1.i, align 4
  call void @release_firmware(ptr noundef %28) #7
  br label %request_ihex_firmware.exit27.thread.i

request_ihex_firmware.exit27.thread.i:            ; preds = %do.end.i24.i, %if.end5.i.request_ihex_firmware.exit27.thread.i_crit_edge
  %retval.0.i26.ph.i = phi i32 [ %call.i2.i, %if.end5.i.request_ihex_firmware.exit27.thread.i_crit_edge ], [ -22, %do.end.i24.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfw.i1.i) #7
  br label %wraperr.i

if.end10.i:                                       ; preds = %land.lhs.true.i.i15.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfw.i1.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lfw.i28.i) #7
  %29 = ptrtoint ptr %lfw.i28.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 -1 to ptr), ptr %lfw.i28.i, align 4, !annotation !76
  %call.i29.i = call i32 @request_firmware(ptr noundef nonnull %lfw.i28.i, ptr noundef nonnull @.str.9, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29.i)
  %tobool.not.i30.i = icmp eq i32 %call.i29.i, 0
  br i1 %tobool.not.i30.i, label %if.end.i35.i, label %if.end10.i.request_ihex_firmware.exit54.thread.i_crit_edge

if.end10.i.request_ihex_firmware.exit54.thread.i_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %request_ihex_firmware.exit54.thread.i

if.end.i35.i:                                     ; preds = %if.end10.i
  %30 = ptrtoint ptr %lfw.i28.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lfw.i28.i, align 4
  %data.i.i31.i = getelementptr inbounds %struct.firmware, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %data.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i.i31.i, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %31, align 4
  %sub.i.i32.i = add i32 %35, -6
  %arrayidx.i.i33.i = getelementptr i8, ptr %33, i32 %sub.i.i32.i
  %cmp.not10.i.i34.i = icmp ugt ptr %33, %arrayidx.i.i33.i
  br i1 %cmp.not10.i.i34.i, label %if.end.i35.i.do.end.i51.i_crit_edge, label %for.body.preheader.i.i37.i

if.end.i35.i.do.end.i51.i_crit_edge:              ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i51.i

for.body.preheader.i.i37.i:                       ; preds = %if.end.i35.i
  %len.i.i36.i = getelementptr inbounds %struct.ihex_binrec, ptr %arrayidx.i.i33.i, i32 0, i32 1
  br label %for.body.i.i40.i

for.body.i.i40.i:                                 ; preds = %for.inc.i.i50.i.for.body.i.i40.i_crit_edge, %for.body.preheader.i.i37.i
  %rec.011.i.i38.i = phi ptr [ %add.ptr.i.i.i48.i, %for.inc.i.i50.i.for.body.i.i40.i_crit_edge ], [ %33, %for.body.preheader.i.i37.i ]
  %cmp2.i.i39.i = icmp eq ptr %rec.011.i.i38.i, %arrayidx.i.i33.i
  br i1 %cmp2.i.i39.i, label %land.lhs.true.i.i42.i, label %for.body.i.i40.i.for.inc.i.i50.i_crit_edge

for.body.i.i40.i.for.inc.i.i50.i_crit_edge:       ; preds = %for.body.i.i40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i50.i

land.lhs.true.i.i42.i:                            ; preds = %for.body.i.i40.i
  %36 = ptrtoint ptr %len.i.i36.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %len.i.i36.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool.not.i.i41.i = icmp eq i16 %37, 0
  br i1 %tobool.not.i.i41.i, label %if.end16.i, label %land.lhs.true.i.i42.i.for.inc.i.i50.i_crit_edge

land.lhs.true.i.i42.i.for.inc.i.i50.i_crit_edge:  ; preds = %land.lhs.true.i.i42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i50.i

for.inc.i.i50.i:                                  ; preds = %land.lhs.true.i.i42.i.for.inc.i.i50.i_crit_edge, %for.body.i.i40.i.for.inc.i.i50.i_crit_edge
  %len.i.i.i.i43.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.011.i.i38.i, i32 0, i32 1
  %38 = ptrtoint ptr %len.i.i.i.i43.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %len.i.i.i.i43.i, align 1
  %add.i.i.i.i44.i = add i16 %39, 6
  %conv.i.i.i45.i = zext i16 %add.i.i.i.i44.i to i32
  %add.i.i.i46.i = add nuw nsw i32 %conv.i.i.i45.i, 3
  %and.i.i.i47.i = and i32 %add.i.i.i46.i, 131068
  %add.ptr.i.i.i48.i = getelementptr i8, ptr %rec.011.i.i38.i, i32 %and.i.i.i47.i
  %cmp.not.i.i49.i = icmp ugt ptr %add.ptr.i.i.i48.i, %arrayidx.i.i33.i
  br i1 %cmp.not.i.i49.i, label %for.inc.i.i50.i.do.end.i51.i_crit_edge, label %for.inc.i.i50.i.for.body.i.i40.i_crit_edge

for.inc.i.i50.i.for.body.i.i40.i_crit_edge:       ; preds = %for.inc.i.i50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i40.i

for.inc.i.i50.i.do.end.i51.i_crit_edge:           ; preds = %for.inc.i.i50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i51.i

do.end.i51.i:                                     ; preds = %for.inc.i.i50.i.do.end.i51.i_crit_edge, %if.end.i35.i.do.end.i51.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.9) #10
  %40 = ptrtoint ptr %lfw.i28.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lfw.i28.i, align 4
  call void @release_firmware(ptr noundef %41) #7
  br label %request_ihex_firmware.exit54.thread.i

request_ihex_firmware.exit54.thread.i:            ; preds = %do.end.i51.i, %if.end10.i.request_ihex_firmware.exit54.thread.i_crit_edge
  %retval.0.i53.ph.i = phi i32 [ %call.i29.i, %if.end10.i.request_ihex_firmware.exit54.thread.i_crit_edge ], [ -22, %do.end.i51.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfw.i28.i) #7
  br label %wraperr.i

if.end16.i:                                       ; preds = %land.lhs.true.i.i42.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfw.i28.i) #7
  %call17.i = call fastcc i32 @emi26_set_reset(ptr noundef %add.ptr.i, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp.i = icmp slt i32 %call17.i, 0
  br i1 %cmp.i, label %if.end16.i.do.end143.i_crit_edge, label %if.end19.i

if.end16.i.do.end143.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end143.i

if.end19.i:                                       ; preds = %if.end16.i
  %42 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i.i.i, align 4
  %tobool20.not204.i = icmp eq ptr %43, null
  br i1 %tobool20.not204.i, label %if.end19.i.while.end.i_crit_edge, label %if.end19.i.while.body.i_crit_edge

if.end19.i.while.body.i_crit_edge:                ; preds = %if.end19.i
  br label %while.body.i

if.end19.i.while.end.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.i:                                     ; preds = %if.end27.i.while.body.i_crit_edge, %if.end19.i.while.body.i_crit_edge
  %rec.0205.i = phi ptr [ %add.ptr.i.i.i, %if.end27.i.while.body.i_crit_edge ], [ %43, %if.end19.i.while.body.i_crit_edge ]
  %44 = ptrtoint ptr %rec.0205.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %rec.0205.i, align 1
  %data22.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.0205.i, i32 0, i32 2
  %len.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.0205.i, i32 0, i32 1
  %46 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %len.i, align 1
  %conv.i = zext i16 %47 to i32
  %call.i55.i = call ptr @kmemdup(ptr noundef %data22.i, i32 noundef %conv.i, i32 noundef 3264) #7
  %tobool.not.i56.i = icmp eq ptr %call.i55.i, null
  br i1 %tobool.not.i56.i, label %do.end143.sink.split.i.loopexit52, label %emi26_writememory.exit.i

emi26_writememory.exit.i:                         ; preds = %while.body.i
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i.i = shl i32 %49, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %conv.i.i = trunc i32 %45 to i16
  %call4.i.i = call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or.i.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext 0, ptr noundef nonnull %call.i55.i, i16 noundef zeroext %47, i32 noundef 300) #7
  call void @kfree(ptr noundef nonnull %call.i55.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp24.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp24.i, label %emi26_writememory.exit.i.do.end143.i_crit_edge, label %if.end27.i

emi26_writememory.exit.i.do.end143.i_crit_edge:   ; preds = %emi26_writememory.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end143.i

if.end27.i:                                       ; preds = %emi26_writememory.exit.i
  %50 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %len.i, align 1
  %add.i.i.i60.i = add i16 %51, 6
  %conv.i.i.i = zext i16 %add.i.i.i60.i to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 3
  %and.i.i.i = and i32 %add.i.i.i, 131068
  %add.ptr.i.i.i = getelementptr i8, ptr %rec.0205.i, i32 %and.i.i.i
  %len.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %add.ptr.i.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %len.i.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %len.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool.not.i61.i = icmp eq i16 %53, 0
  %tobool20.not260.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool20.not.i = select i1 %tobool.not.i61.i, i1 true, i1 %tobool20.not260.i
  br i1 %tobool20.not.i, label %if.end27.i.while.end.i_crit_edge, label %if.end27.i.while.body.i_crit_edge

if.end27.i.while.body.i_crit_edge:                ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end27.i.while.end.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %if.end27.i.while.end.i_crit_edge, %if.end19.i.while.end.i_crit_edge
  %call29.i = call fastcc i32 @emi26_set_reset(ptr noundef %add.ptr.i, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp slt i32 %call29.i, 0
  br i1 %cmp30.i, label %while.end.i.do.end143.i_crit_edge, label %if.end33.i

while.end.i.do.end143.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end143.i

if.end33.i:                                       ; preds = %while.end.i
  call void @msleep(i32 noundef 250) #7
  %54 = ptrtoint ptr %data.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i.i4.i, align 4
  br label %do.body35.i

do.body35.i:                                      ; preds = %do.cond58.i.do.body35.i_crit_edge, %if.end33.i
  %rec.1.i = phi ptr [ %55, %if.end33.i ], [ %rec.2.lcssa.i, %do.cond58.i.do.body35.i_crit_edge ]
  %56 = ptrtoint ptr %rec.1.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %rec.1.i, align 1
  %tobool38.not206.i = icmp eq ptr %rec.1.i, null
  br i1 %tobool38.not206.i, label %do.body35.i.while.end52.i_crit_edge, label %do.body35.i.land.rhs.i_crit_edge

do.body35.i.land.rhs.i_crit_edge:                 ; preds = %do.body35.i
  br label %land.rhs.i

do.body35.i.while.end52.i_crit_edge:              ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end52.i

land.rhs.i:                                       ; preds = %while.body43.i.land.rhs.i_crit_edge, %do.body35.i.land.rhs.i_crit_edge
  %i.0208.i = phi i32 [ %add50.i, %while.body43.i.land.rhs.i_crit_edge ], [ 0, %do.body35.i.land.rhs.i_crit_edge ]
  %rec.2207.i = phi ptr [ %add.ptr.i.i67.i, %while.body43.i.land.rhs.i_crit_edge ], [ %rec.1.i, %do.body35.i.land.rhs.i_crit_edge ]
  %len39.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.2207.i, i32 0, i32 1
  %58 = ptrtoint ptr %len39.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %len39.i, align 1
  %conv40.i = zext i16 %59 to i32
  %add.i = add i32 %i.0208.i, %conv40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %add.i)
  %cmp41.i = icmp slt i32 %add.i, 1023
  br i1 %cmp41.i, label %while.body43.i, label %land.rhs.i.while.end52.i_crit_edge

land.rhs.i.while.end52.i_crit_edge:               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end52.i

while.body43.i:                                   ; preds = %land.rhs.i
  %add.ptr.i4 = getelementptr i8, ptr %call7.i.i, i32 %i.0208.i
  %data44.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.2207.i, i32 0, i32 2
  %60 = call ptr @memcpy(ptr %add.ptr.i4, ptr %data44.i, i32 %conv40.i)
  %61 = ptrtoint ptr %len39.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %62 = load i16, ptr %len39.i, align 1
  %conv49.i = zext i16 %62 to i32
  %add50.i = add i32 %i.0208.i, %conv49.i
  %add.i.i.i63.i = add i16 %62, 6
  %conv.i.i64.i = zext i16 %add.i.i.i63.i to i32
  %add.i.i65.i = add nuw nsw i32 %conv.i.i64.i, 3
  %and.i.i66.i = and i32 %add.i.i65.i, 131068
  %add.ptr.i.i67.i = getelementptr i8, ptr %rec.2207.i, i32 %and.i.i66.i
  %len.i68.i = getelementptr inbounds %struct.ihex_binrec, ptr %add.ptr.i.i67.i, i32 0, i32 1
  %63 = ptrtoint ptr %len.i68.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %len.i68.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool.not.i69.i = icmp eq i16 %64, 0
  %tobool38.not264.i = icmp eq ptr %add.ptr.i.i67.i, null
  %tobool38.not.i = select i1 %tobool.not.i69.i, i1 true, i1 %tobool38.not264.i
  br i1 %tobool38.not.i, label %while.body43.i.while.end52.i_crit_edge, label %while.body43.i.land.rhs.i_crit_edge

while.body43.i.land.rhs.i_crit_edge:              ; preds = %while.body43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

while.body43.i.while.end52.i_crit_edge:           ; preds = %while.body43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end52.i

while.end52.i:                                    ; preds = %while.body43.i.while.end52.i_crit_edge, %land.rhs.i.while.end52.i_crit_edge, %do.body35.i.while.end52.i_crit_edge
  %rec.2.lcssa.i = phi ptr [ null, %do.body35.i.while.end52.i_crit_edge ], [ %rec.2207.i, %land.rhs.i.while.end52.i_crit_edge ], [ null, %while.body43.i.while.end52.i_crit_edge ]
  %i.0.lcssa.i = phi i32 [ 0, %do.body35.i.while.end52.i_crit_edge ], [ %i.0208.i, %land.rhs.i.while.end52.i_crit_edge ], [ %add50.i, %while.body43.i.while.end52.i_crit_edge ]
  %tobool38.not.lcssa.i = phi i1 [ true, %do.body35.i.while.end52.i_crit_edge ], [ %cmp41.i, %land.rhs.i.while.end52.i_crit_edge ], [ %cmp41.i, %while.body43.i.while.end52.i_crit_edge ]
  %call.i71.i = call ptr @kmemdup(ptr noundef nonnull %call7.i.i, i32 noundef %i.0.lcssa.i, i32 noundef 3264) #7
  %tobool.not.i72.i = icmp eq ptr %call.i71.i, null
  br i1 %tobool.not.i72.i, label %while.end52.i.do.end143.sink.split.i_crit_edge, label %emi26_writememory.exit81.i

while.end52.i.do.end143.sink.split.i_crit_edge:   ; preds = %while.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end143.sink.split.i

emi26_writememory.exit81.i:                       ; preds = %while.end52.i
  %65 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i75.i = shl i32 %66, 8
  %or.i76.i = or i32 %shl.i.i75.i, -2147483648
  %conv.i77.i = trunc i32 %57 to i16
  %conv3.i.i = trunc i32 %i.0.lcssa.i to i16
  %call4.i78.i = call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or.i76.i, i8 noundef zeroext -91, i8 noundef zeroext 64, i16 noundef zeroext %conv.i77.i, i16 noundef zeroext 0, ptr noundef nonnull %call.i71.i, i16 noundef zeroext %conv3.i.i, i32 noundef 300) #7
  call void @kfree(ptr noundef nonnull %call.i71.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i78.i)
  %cmp54.i = icmp slt i32 %call4.i78.i, 0
  br i1 %cmp54.i, label %emi26_writememory.exit81.i.do.end143.i_crit_edge, label %do.cond58.i

emi26_writememory.exit81.i.do.end143.i_crit_edge: ; preds = %emi26_writememory.exit81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end143.i

do.cond58.i:                                      ; preds = %emi26_writememory.exit81.i
  br i1 %tobool38.not.lcssa.i, label %do.end60.i, label %do.cond58.i.do.body35.i_crit_edge

do.cond58.i.do.body35.i_crit_edge:                ; preds = %do.cond58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body35.i

do.end60.i:                                       ; preds = %do.cond58.i
  %call61.i = call fastcc i32 @emi26_set_reset(ptr noundef %add.ptr.i, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %cmp62.i = icmp slt i32 %call61.i, 0
  br i1 %cmp62.i, label %do.end60.i.do.end143.i_crit_edge, label %if.end65.i

do.end60.i.do.end143.i_crit_edge:                 ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end143.i

if.end65.i:                                       ; preds = %do.end60.i
  %67 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data.i.i.i, align 4
  %tobool67.not216.i = icmp eq ptr %68, null
  br i1 %tobool67.not216.i, label %if.end65.i.for.end.i_crit_edge, label %if.end65.i.for.body.i_crit_edge

if.end65.i.for.body.i_crit_edge:                  ; preds = %if.end65.i
  br label %for.body.i

if.end65.i.for.end.i_crit_edge:                   ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end65.i.for.body.i_crit_edge
  %rec.3217.i = phi ptr [ %add.ptr.i.i98.i, %for.inc.i.for.body.i_crit_edge ], [ %68, %if.end65.i.for.body.i_crit_edge ]
  %69 = ptrtoint ptr %rec.3217.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %rec.3217.i, align 1
  %data69.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.3217.i, i32 0, i32 2
  %len71.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.3217.i, i32 0, i32 1
  %71 = ptrtoint ptr %len71.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %72 = load i16, ptr %len71.i, align 1
  %conv72.i = zext i16 %72 to i32
  %call.i82.i = call ptr @kmemdup(ptr noundef %data69.i, i32 noundef %conv72.i, i32 noundef 3264) #7
  %tobool.not.i83.i = icmp eq ptr %call.i82.i, null
  br i1 %tobool.not.i83.i, label %do.end143.sink.split.i.loopexit48, label %emi26_writememory.exit92.i

emi26_writememory.exit92.i:                       ; preds = %for.body.i
  %73 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i86.i = shl i32 %74, 8
  %or.i87.i = or i32 %shl.i.i86.i, -2147483648
  %conv.i88.i = trunc i32 %70 to i16
  %call4.i89.i = call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or.i87.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv.i88.i, i16 noundef zeroext 0, ptr noundef nonnull %call.i82.i, i16 noundef zeroext %72, i32 noundef 300) #7
  call void @kfree(ptr noundef nonnull %call.i82.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i89.i)
  %cmp74.i = icmp slt i32 %call4.i89.i, 0
  br i1 %cmp74.i, label %emi26_writememory.exit92.i.do.end143.i_crit_edge, label %for.inc.i

emi26_writememory.exit92.i.do.end143.i_crit_edge: ; preds = %emi26_writememory.exit92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end143.i

for.inc.i:                                        ; preds = %emi26_writememory.exit92.i
  %75 = ptrtoint ptr %len71.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %len71.i, align 1
  %add.i.i.i94.i = add i16 %76, 6
  %conv.i.i95.i = zext i16 %add.i.i.i94.i to i32
  %add.i.i96.i = add nuw nsw i32 %conv.i.i95.i, 3
  %and.i.i97.i = and i32 %add.i.i96.i, 131068
  %add.ptr.i.i98.i = getelementptr i8, ptr %rec.3217.i, i32 %and.i.i97.i
  %len.i99.i = getelementptr inbounds %struct.ihex_binrec, ptr %add.ptr.i.i98.i, i32 0, i32 1
  %77 = ptrtoint ptr %len.i99.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 2)
  %78 = load i16, ptr %len.i99.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool.not.i100.i = icmp eq i16 %78, 0
  %tobool67.not261.i = icmp eq ptr %add.ptr.i.i98.i, null
  %tobool67.not.i = select i1 %tobool.not.i100.i, i1 true, i1 %tobool67.not261.i
  br i1 %tobool67.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end65.i.for.end.i_crit_edge
  call void @msleep(i32 noundef 250) #7
  %call79.i = call fastcc i32 @emi26_set_reset(ptr noundef %add.ptr.i, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %cmp80.i = icmp slt i32 %call79.i, 0
  br i1 %cmp80.i, label %for.end.i.do.end143.i_crit_edge, label %if.end83.i

for.end.i.do.end143.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end143.i

if.end83.i:                                       ; preds = %for.end.i
  %79 = ptrtoint ptr %data.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data.i.i31.i, align 4
  %tobool86.not219.i = icmp eq ptr %80, null
  br i1 %tobool86.not219.i, label %if.end83.i.for.end105.i_crit_edge, label %if.end83.i.for.body87.i_crit_edge

if.end83.i.for.body87.i_crit_edge:                ; preds = %if.end83.i
  br label %for.body87.i

if.end83.i.for.end105.i_crit_edge:                ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end105.i

for.body87.i:                                     ; preds = %for.inc103.i.for.body87.i_crit_edge, %if.end83.i.for.body87.i_crit_edge
  %rec.4220.i = phi ptr [ %add.ptr.i.i118.i, %for.inc103.i.for.body87.i_crit_edge ], [ %80, %if.end83.i.for.body87.i_crit_edge ]
  %81 = ptrtoint ptr %rec.4220.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %rec.4220.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6976, i32 %82)
  %cmp89.i = icmp ult i32 %82, 6976
  br i1 %cmp89.i, label %for.body87.i.for.inc103.i_crit_edge, label %if.then91.i

for.body87.i.for.inc103.i_crit_edge:              ; preds = %for.body87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc103.i

if.then91.i:                                      ; preds = %for.body87.i
  %data93.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.4220.i, i32 0, i32 2
  %len95.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.4220.i, i32 0, i32 1
  %83 = ptrtoint ptr %len95.i to i32
  call void @__asan_loadN_noabort(i32 %83, i32 2)
  %84 = load i16, ptr %len95.i, align 1
  %conv96.i = zext i16 %84 to i32
  %call.i102.i = call ptr @kmemdup(ptr noundef %data93.i, i32 noundef %conv96.i, i32 noundef 3264) #7
  %tobool.not.i103.i = icmp eq ptr %call.i102.i, null
  br i1 %tobool.not.i103.i, label %do.end143.sink.split.i.loopexit46, label %emi26_writememory.exit112.i

emi26_writememory.exit112.i:                      ; preds = %if.then91.i
  %85 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i106.i = shl i32 %86, 8
  %or.i107.i = or i32 %shl.i.i106.i, -2147483648
  %conv.i108.i = trunc i32 %82 to i16
  %call4.i109.i = call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or.i107.i, i8 noundef zeroext -93, i8 noundef zeroext 64, i16 noundef zeroext %conv.i108.i, i16 noundef zeroext 0, ptr noundef nonnull %call.i102.i, i16 noundef zeroext %84, i32 noundef 300) #7
  call void @kfree(ptr noundef nonnull %call.i102.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i109.i)
  %cmp98.i = icmp slt i32 %call4.i109.i, 0
  br i1 %cmp98.i, label %emi26_writememory.exit112.i.do.end143.i_crit_edge, label %emi26_writememory.exit112.i.for.inc103.i_crit_edge

emi26_writememory.exit112.i.for.inc103.i_crit_edge: ; preds = %emi26_writememory.exit112.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc103.i

emi26_writememory.exit112.i.do.end143.i_crit_edge: ; preds = %emi26_writememory.exit112.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end143.i

for.inc103.i:                                     ; preds = %emi26_writememory.exit112.i.for.inc103.i_crit_edge, %for.body87.i.for.inc103.i_crit_edge
  %len.i.i.i113.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.4220.i, i32 0, i32 1
  %87 = ptrtoint ptr %len.i.i.i113.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 2)
  %88 = load i16, ptr %len.i.i.i113.i, align 1
  %add.i.i.i114.i = add i16 %88, 6
  %conv.i.i115.i = zext i16 %add.i.i.i114.i to i32
  %add.i.i116.i = add nuw nsw i32 %conv.i.i115.i, 3
  %and.i.i117.i = and i32 %add.i.i116.i, 131068
  %add.ptr.i.i118.i = getelementptr i8, ptr %rec.4220.i, i32 %and.i.i117.i
  %len.i119.i = getelementptr inbounds %struct.ihex_binrec, ptr %add.ptr.i.i118.i, i32 0, i32 1
  %89 = ptrtoint ptr %len.i119.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 2)
  %90 = load i16, ptr %len.i119.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool.not.i120.i = icmp eq i16 %90, 0
  %tobool86.not262.i = icmp eq ptr %add.ptr.i.i118.i, null
  %tobool86.not.i = select i1 %tobool.not.i120.i, i1 true, i1 %tobool86.not262.i
  br i1 %tobool86.not.i, label %for.inc103.i.for.end105.i_crit_edge, label %for.inc103.i.for.body87.i_crit_edge

for.inc103.i.for.body87.i_crit_edge:              ; preds = %for.inc103.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body87.i

for.inc103.i.for.end105.i_crit_edge:              ; preds = %for.inc103.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end105.i

for.end105.i:                                     ; preds = %for.inc103.i.for.end105.i_crit_edge, %if.end83.i.for.end105.i_crit_edge
  %call106.i = call fastcc i32 @emi26_set_reset(ptr noundef %add.ptr.i, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106.i)
  %cmp107.i = icmp slt i32 %call106.i, 0
  br i1 %cmp107.i, label %for.end105.i.do.end143.i_crit_edge, label %if.end110.i

for.end105.i.do.end143.i_crit_edge:               ; preds = %for.end105.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end143.i

if.end110.i:                                      ; preds = %for.end105.i
  %91 = ptrtoint ptr %data.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data.i.i31.i, align 4
  %tobool113.not222.i = icmp eq ptr %92, null
  br i1 %tobool113.not222.i, label %if.end110.i.for.end132.i_crit_edge, label %if.end110.i.for.body114.i_crit_edge

if.end110.i.for.body114.i_crit_edge:              ; preds = %if.end110.i
  br label %for.body114.i

if.end110.i.for.end132.i_crit_edge:               ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end132.i

for.body114.i:                                    ; preds = %for.inc130.i.for.body114.i_crit_edge, %if.end110.i.for.body114.i_crit_edge
  %rec.5223.i = phi ptr [ %add.ptr.i.i138.i, %for.inc130.i.for.body114.i_crit_edge ], [ %92, %if.end110.i.for.body114.i_crit_edge ]
  %93 = ptrtoint ptr %rec.5223.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %rec.5223.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6976, i32 %94)
  %cmp116.i = icmp ult i32 %94, 6976
  br i1 %cmp116.i, label %if.then118.i, label %for.body114.i.for.inc130.i_crit_edge

for.body114.i.for.inc130.i_crit_edge:             ; preds = %for.body114.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc130.i

if.then118.i:                                     ; preds = %for.body114.i
  %data120.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.5223.i, i32 0, i32 2
  %len122.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.5223.i, i32 0, i32 1
  %95 = ptrtoint ptr %len122.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 2)
  %96 = load i16, ptr %len122.i, align 1
  %conv123.i = zext i16 %96 to i32
  %call.i122.i = call ptr @kmemdup(ptr noundef %data120.i, i32 noundef %conv123.i, i32 noundef 3264) #7
  %tobool.not.i123.i = icmp eq ptr %call.i122.i, null
  br i1 %tobool.not.i123.i, label %do.end143.sink.split.i.loopexit, label %emi26_writememory.exit132.i

emi26_writememory.exit132.i:                      ; preds = %if.then118.i
  %97 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i126.i = shl i32 %98, 8
  %or.i127.i = or i32 %shl.i.i126.i, -2147483648
  %conv.i128.i = trunc i32 %94 to i16
  %call4.i129.i = call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or.i127.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv.i128.i, i16 noundef zeroext 0, ptr noundef nonnull %call.i122.i, i16 noundef zeroext %96, i32 noundef 300) #7
  call void @kfree(ptr noundef nonnull %call.i122.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i129.i)
  %cmp125.i = icmp slt i32 %call4.i129.i, 0
  br i1 %cmp125.i, label %emi26_writememory.exit132.i.do.end143.i_crit_edge, label %emi26_writememory.exit132.i.for.inc130.i_crit_edge

emi26_writememory.exit132.i.for.inc130.i_crit_edge: ; preds = %emi26_writememory.exit132.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc130.i

emi26_writememory.exit132.i.do.end143.i_crit_edge: ; preds = %emi26_writememory.exit132.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end143.i

for.inc130.i:                                     ; preds = %emi26_writememory.exit132.i.for.inc130.i_crit_edge, %for.body114.i.for.inc130.i_crit_edge
  %len.i.i.i133.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.5223.i, i32 0, i32 1
  %99 = ptrtoint ptr %len.i.i.i133.i to i32
  call void @__asan_loadN_noabort(i32 %99, i32 2)
  %100 = load i16, ptr %len.i.i.i133.i, align 1
  %add.i.i.i134.i = add i16 %100, 6
  %conv.i.i135.i = zext i16 %add.i.i.i134.i to i32
  %add.i.i136.i = add nuw nsw i32 %conv.i.i135.i, 3
  %and.i.i137.i = and i32 %add.i.i136.i, 131068
  %add.ptr.i.i138.i = getelementptr i8, ptr %rec.5223.i, i32 %and.i.i137.i
  %len.i139.i = getelementptr inbounds %struct.ihex_binrec, ptr %add.ptr.i.i138.i, i32 0, i32 1
  %101 = ptrtoint ptr %len.i139.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 2)
  %102 = load i16, ptr %len.i139.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %tobool.not.i140.i = icmp eq i16 %102, 0
  %tobool113.not263.i = icmp eq ptr %add.ptr.i.i138.i, null
  %tobool113.not.i = select i1 %tobool.not.i140.i, i1 true, i1 %tobool113.not263.i
  br i1 %tobool113.not.i, label %for.inc130.i.for.end132.i_crit_edge, label %for.inc130.i.for.body114.i_crit_edge

for.inc130.i.for.body114.i_crit_edge:             ; preds = %for.inc130.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body114.i

for.inc130.i.for.end132.i_crit_edge:              ; preds = %for.inc130.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end132.i

for.end132.i:                                     ; preds = %for.inc130.i.for.end132.i_crit_edge, %if.end110.i.for.end132.i_crit_edge
  %call133.i = call fastcc i32 @emi26_set_reset(ptr noundef %add.ptr.i, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133.i)
  %cmp134.i = icmp slt i32 %call133.i, 0
  br i1 %cmp134.i, label %for.end132.i.do.end143.i_crit_edge, label %wraperr.thread183.i

for.end132.i.do.end143.i_crit_edge:               ; preds = %for.end132.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end143.i

wraperr.thread183.i:                              ; preds = %for.end132.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @msleep(i32 noundef 250) #7
  br label %emi26_load_firmware.exit

wraperr.i:                                        ; preds = %request_ihex_firmware.exit54.thread.i, %request_ihex_firmware.exit27.thread.i, %request_ihex_firmware.exit.thread.i
  %loader_fw.0150.i = phi ptr [ null, %request_ihex_firmware.exit.thread.i ], [ %5, %request_ihex_firmware.exit27.thread.i ], [ %5, %request_ihex_firmware.exit54.thread.i ]
  %bitstream_fw.1.i = phi ptr [ null, %request_ihex_firmware.exit.thread.i ], [ null, %request_ihex_firmware.exit27.thread.i ], [ %18, %request_ihex_firmware.exit54.thread.i ]
  %err.0.i = phi i32 [ %retval.0.i.ph.i, %request_ihex_firmware.exit.thread.i ], [ %retval.0.i26.ph.i, %request_ihex_firmware.exit27.thread.i ], [ %retval.0.i53.ph.i, %request_ihex_firmware.exit54.thread.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp138.i = icmp slt i32 %err.0.i, 0
  br i1 %cmp138.i, label %wraperr.i.do.end143.i_crit_edge, label %wraperr.i.emi26_load_firmware.exit_crit_edge

wraperr.i.emi26_load_firmware.exit_crit_edge:     ; preds = %wraperr.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %emi26_load_firmware.exit

wraperr.i.do.end143.i_crit_edge:                  ; preds = %wraperr.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end143.i

do.end143.sink.split.i.loopexit:                  ; preds = %if.then118.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv123.i.le = zext i16 %96 to i32
  br label %do.end143.sink.split.i

do.end143.sink.split.i.loopexit46:                ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv96.i.le = zext i16 %84 to i32
  br label %do.end143.sink.split.i

do.end143.sink.split.i.loopexit48:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv72.i.le = zext i16 %72 to i32
  br label %do.end143.sink.split.i

do.end143.sink.split.i.loopexit52:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.le = zext i16 %47 to i32
  br label %do.end143.sink.split.i

do.end143.sink.split.i:                           ; preds = %do.end143.sink.split.i.loopexit52, %do.end143.sink.split.i.loopexit48, %do.end143.sink.split.i.loopexit46, %do.end143.sink.split.i.loopexit, %while.end52.i.do.end143.sink.split.i_crit_edge
  %conv123.le.sink.i = phi i32 [ %conv123.i.le, %do.end143.sink.split.i.loopexit ], [ %conv96.i.le, %do.end143.sink.split.i.loopexit46 ], [ %conv72.i.le, %do.end143.sink.split.i.loopexit48 ], [ %conv.i.le, %do.end143.sink.split.i.loopexit52 ], [ %i.0.lcssa.i, %while.end52.i.do.end143.sink.split.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.24, i32 noundef %conv123.le.sink.i) #10
  br label %do.end143.i

do.end143.i:                                      ; preds = %do.end143.sink.split.i, %wraperr.i.do.end143.i_crit_edge, %for.end132.i.do.end143.i_crit_edge, %emi26_writememory.exit132.i.do.end143.i_crit_edge, %for.end105.i.do.end143.i_crit_edge, %emi26_writememory.exit112.i.do.end143.i_crit_edge, %for.end.i.do.end143.i_crit_edge, %emi26_writememory.exit92.i.do.end143.i_crit_edge, %do.end60.i.do.end143.i_crit_edge, %emi26_writememory.exit81.i.do.end143.i_crit_edge, %while.end.i.do.end143.i_crit_edge, %emi26_writememory.exit.i.do.end143.i_crit_edge, %if.end16.i.do.end143.i_crit_edge, %entry.do.end143.i_crit_edge
  %err.1182.i = phi i32 [ %err.0.i, %wraperr.i.do.end143.i_crit_edge ], [ -12, %entry.do.end143.i_crit_edge ], [ %call133.i, %for.end132.i.do.end143.i_crit_edge ], [ %call106.i, %for.end105.i.do.end143.i_crit_edge ], [ %call79.i, %for.end.i.do.end143.i_crit_edge ], [ %call61.i, %do.end60.i.do.end143.i_crit_edge ], [ %call29.i, %while.end.i.do.end143.i_crit_edge ], [ %call17.i, %if.end16.i.do.end143.i_crit_edge ], [ -12, %do.end143.sink.split.i ], [ %call4.i129.i, %emi26_writememory.exit132.i.do.end143.i_crit_edge ], [ %call4.i109.i, %emi26_writememory.exit112.i.do.end143.i_crit_edge ], [ %call4.i89.i, %emi26_writememory.exit92.i.do.end143.i_crit_edge ], [ %call4.i78.i, %emi26_writememory.exit81.i.do.end143.i_crit_edge ], [ %call4.i.i, %emi26_writememory.exit.i.do.end143.i_crit_edge ]
  %firmware_fw.2181.i = phi ptr [ null, %wraperr.i.do.end143.i_crit_edge ], [ null, %entry.do.end143.i_crit_edge ], [ %31, %for.end132.i.do.end143.i_crit_edge ], [ %31, %for.end105.i.do.end143.i_crit_edge ], [ %31, %for.end.i.do.end143.i_crit_edge ], [ %31, %do.end60.i.do.end143.i_crit_edge ], [ %31, %while.end.i.do.end143.i_crit_edge ], [ %31, %if.end16.i.do.end143.i_crit_edge ], [ %31, %do.end143.sink.split.i ], [ %31, %emi26_writememory.exit132.i.do.end143.i_crit_edge ], [ %31, %emi26_writememory.exit112.i.do.end143.i_crit_edge ], [ %31, %emi26_writememory.exit92.i.do.end143.i_crit_edge ], [ %31, %emi26_writememory.exit81.i.do.end143.i_crit_edge ], [ %31, %emi26_writememory.exit.i.do.end143.i_crit_edge ]
  %bitstream_fw.2179.i = phi ptr [ %bitstream_fw.1.i, %wraperr.i.do.end143.i_crit_edge ], [ null, %entry.do.end143.i_crit_edge ], [ %18, %for.end132.i.do.end143.i_crit_edge ], [ %18, %for.end105.i.do.end143.i_crit_edge ], [ %18, %for.end.i.do.end143.i_crit_edge ], [ %18, %do.end60.i.do.end143.i_crit_edge ], [ %18, %while.end.i.do.end143.i_crit_edge ], [ %18, %if.end16.i.do.end143.i_crit_edge ], [ %18, %do.end143.sink.split.i ], [ %18, %emi26_writememory.exit132.i.do.end143.i_crit_edge ], [ %18, %emi26_writememory.exit112.i.do.end143.i_crit_edge ], [ %18, %emi26_writememory.exit92.i.do.end143.i_crit_edge ], [ %18, %emi26_writememory.exit81.i.do.end143.i_crit_edge ], [ %18, %emi26_writememory.exit.i.do.end143.i_crit_edge ]
  %loader_fw.1177.i = phi ptr [ %loader_fw.0150.i, %wraperr.i.do.end143.i_crit_edge ], [ null, %entry.do.end143.i_crit_edge ], [ %5, %for.end132.i.do.end143.i_crit_edge ], [ %5, %for.end105.i.do.end143.i_crit_edge ], [ %5, %for.end.i.do.end143.i_crit_edge ], [ %5, %do.end60.i.do.end143.i_crit_edge ], [ %5, %while.end.i.do.end143.i_crit_edge ], [ %5, %if.end16.i.do.end143.i_crit_edge ], [ %5, %do.end143.sink.split.i ], [ %5, %emi26_writememory.exit132.i.do.end143.i_crit_edge ], [ %5, %emi26_writememory.exit112.i.do.end143.i_crit_edge ], [ %5, %emi26_writememory.exit92.i.do.end143.i_crit_edge ], [ %5, %emi26_writememory.exit81.i.do.end143.i_crit_edge ], [ %5, %emi26_writememory.exit.i.do.end143.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11, i32 noundef %err.1182.i) #10
  br label %emi26_load_firmware.exit

emi26_load_firmware.exit:                         ; preds = %do.end143.i, %wraperr.i.emi26_load_firmware.exit_crit_edge, %wraperr.thread183.i
  %firmware_fw.2180.i = phi ptr [ %firmware_fw.2181.i, %do.end143.i ], [ null, %wraperr.i.emi26_load_firmware.exit_crit_edge ], [ %31, %wraperr.thread183.i ]
  %bitstream_fw.2178.i = phi ptr [ %bitstream_fw.2179.i, %do.end143.i ], [ %bitstream_fw.1.i, %wraperr.i.emi26_load_firmware.exit_crit_edge ], [ %18, %wraperr.thread183.i ]
  %loader_fw.1176.i = phi ptr [ %loader_fw.1177.i, %do.end143.i ], [ %loader_fw.0150.i, %wraperr.i.emi26_load_firmware.exit_crit_edge ], [ %5, %wraperr.thread183.i ]
  call void @release_firmware(ptr noundef %loader_fw.1176.i) #7
  call void @release_firmware(ptr noundef %bitstream_fw.2178.i) #7
  call void @release_firmware(ptr noundef %firmware_fw.2180.i) #7
  call void @kfree(ptr noundef %call7.i.i) #7
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @emi26_disconnect(ptr nocapture noundef %intf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @emi26_set_reset(ptr noundef %dev, i8 noundef zeroext %reset_bit) unnamed_addr #2 align 64 {
entry:
  %reset_bit.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reset_bit.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reset_bit, ptr %reset_bit.addr, align 1
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  %conv = zext i8 %reset_bit to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %conv) #10
  %call.i = call ptr @kmemdup(ptr noundef nonnull %reset_bit.addr, i32 noundef 1, i32 noundef 3264) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %emi26_writememory.exit.thread, label %emi26_writememory.exit

emi26_writememory.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef 1) #10
  br label %do.end5

emi26_writememory.exit:                           ; preds = %entry
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dev, align 8
  %shl.i.i = shl i32 %2, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call4.i = call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 32658, i16 noundef zeroext 0, ptr noundef nonnull %call.i, i16 noundef zeroext 1, i32 noundef 300) #7
  call void @kfree(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp = icmp slt i32 %call4.i, 0
  br i1 %cmp, label %emi26_writememory.exit.do.end5_crit_edge, label %emi26_writememory.exit.if.end_crit_edge

emi26_writememory.exit.if.end_crit_edge:          ; preds = %emi26_writememory.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

emi26_writememory.exit.do.end5_crit_edge:         ; preds = %emi26_writememory.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end5:                                          ; preds = %emi26_writememory.exit.do.end5_crit_edge, %emi26_writememory.exit.thread
  %retval.0.i14 = phi i32 [ -12, %emi26_writememory.exit.thread ], [ %call4.i, %emi26_writememory.exit.do.end5_crit_edge ]
  %3 = ptrtoint ptr %reset_bit.addr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %reset_bit.addr, align 1
  %conv7 = zext i8 %4 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %conv7) #10
  br label %if.end

if.end:                                           ; preds = %do.end5, %emi26_writememory.exit.if.end_crit_edge
  %retval.0.i13 = phi i32 [ %retval.0.i14, %do.end5 ], [ %call4.i, %emi26_writememory.exit.if.end_crit_edge ]
  ret i32 %retval.0.i13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !35, !37, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_emi26__232_249_emi26_driver_init6, !1, !"__initcall__kmod_emi26__232_249_emi26_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/misc/emi26.c", i32 249, i32 1}
!2 = !{ptr @__exitcall_emi26_driver_exit, !1, !"__exitcall_emi26_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author233, !4, !"__UNIQUE_ID_author233", i1 false, i1 false}
!4 = !{!"../drivers/usb/misc/emi26.c", i32 251, i32 1}
!5 = !{ptr @__UNIQUE_ID_description234, !6, !"__UNIQUE_ID_description234", i1 false, i1 false}
!6 = !{!"../drivers/usb/misc/emi26.c", i32 252, i32 1}
!7 = !{ptr @__UNIQUE_ID_file235, !8, !"__UNIQUE_ID_file235", i1 false, i1 false}
!8 = !{!"../drivers/usb/misc/emi26.c", i32 253, i32 1}
!9 = !{ptr @__UNIQUE_ID_license236, !8, !"__UNIQUE_ID_license236", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_firmware237, !11, !"__UNIQUE_ID_firmware237", i1 false, i1 false}
!11 = !{!"../drivers/usb/misc/emi26.c", i32 255, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware238, !13, !"__UNIQUE_ID_firmware238", i1 false, i1 false}
!13 = !{!"../drivers/usb/misc/emi26.c", i32 256, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware239, !15, !"__UNIQUE_ID_firmware239", i1 false, i1 false}
!15 = !{!"../drivers/usb/misc/emi26.c", i32 257, i32 1}
!16 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/misc/emi26.c", i32 243, i32 11}
!19 = !{ptr @emi26_driver, !20, !"emi26_driver", i1 false, i1 false}
!20 = !{!"../drivers/usb/misc/emi26.c", i32 242, i32 26}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/misc/emi26.c", i32 230, i32 2}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @emi26_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @emi26_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/misc/emi26.c", i32 86, i32 42}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/misc/emi26.c", i32 90, i32 45}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/misc/emi26.c", i32 95, i32 44}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/misc/emi26.c", i32 99, i32 3}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @emi26_load_firmware._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @emi26_load_firmware._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/misc/emi26.c", i32 207, i32 3}
!43 = !{ptr @emi26_load_firmware._entry.13, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @emi26_load_firmware._entry_ptr.15, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/ihex.h", i32 76, i32 3}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @request_ihex_firmware._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @request_ihex_firmware._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/misc/emi26.c", i32 60, i32 2}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @emi26_set_reset._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @emi26_set_reset._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/misc/emi26.c", i32 64, i32 3}
!58 = !{ptr @emi26_set_reset._entry.21, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @emi26_set_reset._entry_ptr.23, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/misc/emi26.c", i32 46, i32 3}
!62 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @emi26_writememory._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @emi26_writememory._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @id_table, !66, !"id_table", i1 false, i1 false}
!66 = !{!"../drivers/usb/misc/emi26.c", i32 218, i32 35}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"auto-init"}
