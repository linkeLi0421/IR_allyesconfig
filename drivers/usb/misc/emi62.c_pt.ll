; ModuleID = '/llk/IR_all_yes/drivers/usb/misc/emi62.c_pt.bc'
source_filename = "../drivers/usb/misc/emi62.c"
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
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.ihex_binrec = type <{ i32, i16, [0 x i8] }>

@__initcall__kmod_emi62__234_262_emi62_driver_init6 = internal global ptr @emi62_driver_init, section ".initcall6.init", align 4
@emi62_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @emi62_probe, ptr @emi62_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_emi62_driver_exit = internal global ptr @emi62_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [29 x i8] c"emi62.author=Tapio Laxstr\C3\B6m\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [51 x i8] c"emi62.description=Emagic EMI 6|2m firmware loader.\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [34 x i8] c"emi62.file=drivers/usb/misc/emi62\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [18 x i8] c"emi62.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware239 = internal constant [31 x i8] c"emi62.firmware=emi62/loader.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware240 = internal constant [34 x i8] c"emi62.firmware=emi62/bitstream.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware241 = internal constant [30 x i8] c"emi62.firmware=emi62/spdif.fw\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"emi62\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"emi62 - firmware loader\00", [40 x i8] zeroinitializer }, align 32
@id_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2154, i16 272, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@emi62_probe.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"emi62_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/usb/misc/emi62.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"emi62_probe\0A\00", [19 x i8] zeroinitializer }, align 32
@emi62_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 243, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s start\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@emi62_probe._entry_ptr = internal global ptr @emi62_probe._entry, section ".printk_index", align 4
@emi62_load_firmware.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.3, ptr @.str.9, i8 0, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"emi62_load_firmware\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"load_firmware\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"emi62/loader.fw\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"emi62/bitstream.fw\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"emi62/spdif.fw\00", [17 x i8] zeroinitializer }, align 32
@emi62_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.3, i32 221, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s - error loading firmware: error = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@emi62_load_firmware._entry_ptr = internal global ptr @emi62_load_firmware._entry, section ".printk_index", align 4
@emi62_load_firmware._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.3, i32 227, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Error\0A\00", [25 x i8] zeroinitializer }, align 32
@emi62_load_firmware._entry_ptr.17 = internal global ptr @emi62_load_firmware._entry.15, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@request_ihex_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.20, i32 77, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Firmware \22%s\22 not valid IHEX records\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"request_ihex_firmware\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/ihex.h\00", [43 x i8] zeroinitializer }, align 32
@request_ihex_firmware._entry_ptr = internal global ptr @request_ihex_firmware._entry, section ".printk_index", align 4
@emi62_set_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 69, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s - %d\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"emi62_set_reset\00", [16 x i8] zeroinitializer }, align 32
@emi62_set_reset._entry_ptr = internal global ptr @emi62_set_reset._entry, section ".printk_index", align 4
@emi62_set_reset._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.3, i32 73, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"set_reset (%d) failed\0A\00", [41 x i8] zeroinitializer }, align 32
@emi62_set_reset._entry_ptr.25 = internal global ptr @emi62_set_reset._entry.23, section ".printk_index", align 4
@emi62_writememory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 55, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kmalloc(%d) failed.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"emi62_writememory\00", [46 x i8] zeroinitializer }, align 32
@emi62_writememory._entry_ptr = internal global ptr @emi62_writememory._entry, section ".printk_index", align 4
@___asan_gen_.28 = private unnamed_addr constant [13 x i8] c"emi62_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 255, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 262, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 256, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 231, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 241, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 243, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 90, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 95, i32 42 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 99, i32 45 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 104, i32 44 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 220, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 227, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [24 x i8] c"../include/linux/ihex.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 76, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 69, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 73, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private constant [28 x i8] c"../drivers/usb/misc/emi62.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 55, i32 3 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_firmware239, ptr @__UNIQUE_ID_firmware240, ptr @__UNIQUE_ID_firmware241, ptr @__UNIQUE_ID_license238, ptr @__exitcall_emi62_driver_exit, ptr @__initcall__kmod_emi62__234_262_emi62_driver_init6, ptr @emi62_driver_exit, ptr @emi62_load_firmware._entry, ptr @emi62_load_firmware._entry.15, ptr @emi62_load_firmware._entry_ptr, ptr @emi62_load_firmware._entry_ptr.17, ptr @emi62_probe._entry, ptr @emi62_probe._entry_ptr, ptr @emi62_set_reset._entry, ptr @emi62_set_reset._entry.23, ptr @emi62_set_reset._entry_ptr, ptr @emi62_set_reset._entry_ptr.25, ptr @emi62_writememory._entry, ptr @emi62_writememory._entry_ptr, ptr @request_ihex_firmware._entry, ptr @request_ihex_firmware._entry_ptr, ptr @emi62_driver, ptr @.str, ptr @.str.1, ptr @id_table, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emi62_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emi62_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emi62_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emi62_load_firmware._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_ihex_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emi62_set_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emi62_set_reset._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emi62_writememory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @emi62_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @emi62_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @emi62_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @emi62_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emi62_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @emi62_probe.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@emi62_probe, %if.then)) #7
          to label %do.end7 [label %if.then], !srcloc !82

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @emi62_probe.__UNIQUE_ID_ddebug233, ptr noundef %dev4, ptr noundef nonnull @.str.4) #7
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %dev8 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev8, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #10
  tail call fastcc void @emi62_load_firmware(ptr noundef %add.ptr.i)
  ret i32 -5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @emi62_disconnect(ptr nocapture noundef %intf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @emi62_load_firmware(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %lfw.i29 = alloca ptr, align 4
  %lfw.i2 = alloca ptr, align 4
  %lfw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @emi62_load_firmware.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@emi62_load_firmware, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !82

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @emi62_load_firmware.__UNIQUE_ID_ddebug232, ptr noundef %dev3, ptr noundef nonnull @.str.9) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1023) #11
  %tobool5.not = icmp eq ptr %call7.i, null
  br i1 %tobool5.not, label %do.end.do.end149_crit_edge, label %if.end7

do.end.do.end149_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end149

if.end7:                                          ; preds = %do.end
  %dev8 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lfw.i) #7
  %1 = ptrtoint ptr %lfw.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %lfw.i, align 4, !annotation !83
  %call.i = call i32 @request_firmware(ptr noundef nonnull %lfw.i, ptr noundef nonnull @.str.10, ptr noundef %dev8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.request_ihex_firmware.exit.thread_crit_edge

if.end7.request_ihex_firmware.exit.thread_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %request_ihex_firmware.exit.thread

if.end.i:                                         ; preds = %if.end7
  %2 = ptrtoint ptr %lfw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lfw.i, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %sub.i.i = add i32 %7, -6
  %arrayidx.i.i = getelementptr i8, ptr %5, i32 %sub.i.i
  %cmp.not10.i.i = icmp ugt ptr %5, %arrayidx.i.i
  br i1 %cmp.not10.i.i, label %if.end.i.do.end.i_crit_edge, label %for.body.preheader.i.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

for.body.preheader.i.i:                           ; preds = %if.end.i
  %len.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %arrayidx.i.i, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %rec.011.i.i = phi ptr [ %add.ptr.i.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %5, %for.body.preheader.i.i ]
  %cmp2.i.i = icmp eq ptr %rec.011.i.i, %arrayidx.i.i
  br i1 %cmp2.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %8 = ptrtoint ptr %len.i.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %len.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i.i, label %if.end12, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %len.i.i.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.011.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %len.i.i.i.i, align 1
  %add.i.i.i.i = add i16 %11, 6
  %conv.i.i.i = zext i16 %add.i.i.i.i to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 3
  %and.i.i.i = and i32 %add.i.i.i, 131068
  %add.ptr.i.i.i = getelementptr i8, ptr %rec.011.i.i, i32 %and.i.i.i
  %cmp.not.i.i = icmp ugt ptr %add.ptr.i.i.i, %arrayidx.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.do.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.10) #10
  %12 = ptrtoint ptr %lfw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lfw.i, align 4
  call void @release_firmware(ptr noundef %13) #7
  br label %request_ihex_firmware.exit.thread

request_ihex_firmware.exit.thread:                ; preds = %do.end.i, %if.end7.request_ihex_firmware.exit.thread_crit_edge
  %retval.0.i1.ph = phi i32 [ %call.i, %if.end7.request_ihex_firmware.exit.thread_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfw.i) #7
  br label %wraperr

if.end12:                                         ; preds = %land.lhs.true.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfw.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lfw.i2) #7
  %14 = ptrtoint ptr %lfw.i2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %lfw.i2, align 4, !annotation !83
  %call.i3 = call i32 @request_firmware(ptr noundef nonnull %lfw.i2, ptr noundef nonnull @.str.11, ptr noundef %dev8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %tobool.not.i4 = icmp eq i32 %call.i3, 0
  br i1 %tobool.not.i4, label %if.end.i9, label %if.end12.request_ihex_firmware.exit28.thread_crit_edge

if.end12.request_ihex_firmware.exit28.thread_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %request_ihex_firmware.exit28.thread

if.end.i9:                                        ; preds = %if.end12
  %15 = ptrtoint ptr %lfw.i2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lfw.i2, align 4
  %data.i.i5 = getelementptr inbounds %struct.firmware, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %data.i.i5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i5, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %16, align 4
  %sub.i.i6 = add i32 %20, -6
  %arrayidx.i.i7 = getelementptr i8, ptr %18, i32 %sub.i.i6
  %cmp.not10.i.i8 = icmp ugt ptr %18, %arrayidx.i.i7
  br i1 %cmp.not10.i.i8, label %if.end.i9.do.end.i25_crit_edge, label %for.body.preheader.i.i11

if.end.i9.do.end.i25_crit_edge:                   ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i25

for.body.preheader.i.i11:                         ; preds = %if.end.i9
  %len.i.i10 = getelementptr inbounds %struct.ihex_binrec, ptr %arrayidx.i.i7, i32 0, i32 1
  br label %for.body.i.i14

for.body.i.i14:                                   ; preds = %for.inc.i.i24.for.body.i.i14_crit_edge, %for.body.preheader.i.i11
  %rec.011.i.i12 = phi ptr [ %add.ptr.i.i.i22, %for.inc.i.i24.for.body.i.i14_crit_edge ], [ %18, %for.body.preheader.i.i11 ]
  %cmp2.i.i13 = icmp eq ptr %rec.011.i.i12, %arrayidx.i.i7
  br i1 %cmp2.i.i13, label %land.lhs.true.i.i16, label %for.body.i.i14.for.inc.i.i24_crit_edge

for.body.i.i14.for.inc.i.i24_crit_edge:           ; preds = %for.body.i.i14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i24

land.lhs.true.i.i16:                              ; preds = %for.body.i.i14
  %21 = ptrtoint ptr %len.i.i10 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %len.i.i10, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not.i.i15 = icmp eq i16 %22, 0
  br i1 %tobool.not.i.i15, label %if.end17, label %land.lhs.true.i.i16.for.inc.i.i24_crit_edge

land.lhs.true.i.i16.for.inc.i.i24_crit_edge:      ; preds = %land.lhs.true.i.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i24

for.inc.i.i24:                                    ; preds = %land.lhs.true.i.i16.for.inc.i.i24_crit_edge, %for.body.i.i14.for.inc.i.i24_crit_edge
  %len.i.i.i.i17 = getelementptr inbounds %struct.ihex_binrec, ptr %rec.011.i.i12, i32 0, i32 1
  %23 = ptrtoint ptr %len.i.i.i.i17 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %len.i.i.i.i17, align 1
  %add.i.i.i.i18 = add i16 %24, 6
  %conv.i.i.i19 = zext i16 %add.i.i.i.i18 to i32
  %add.i.i.i20 = add nuw nsw i32 %conv.i.i.i19, 3
  %and.i.i.i21 = and i32 %add.i.i.i20, 131068
  %add.ptr.i.i.i22 = getelementptr i8, ptr %rec.011.i.i12, i32 %and.i.i.i21
  %cmp.not.i.i23 = icmp ugt ptr %add.ptr.i.i.i22, %arrayidx.i.i7
  br i1 %cmp.not.i.i23, label %for.inc.i.i24.do.end.i25_crit_edge, label %for.inc.i.i24.for.body.i.i14_crit_edge

for.inc.i.i24.for.body.i.i14_crit_edge:           ; preds = %for.inc.i.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i14

for.inc.i.i24.do.end.i25_crit_edge:               ; preds = %for.inc.i.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i25

do.end.i25:                                       ; preds = %for.inc.i.i24.do.end.i25_crit_edge, %if.end.i9.do.end.i25_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.11) #10
  %25 = ptrtoint ptr %lfw.i2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lfw.i2, align 4
  call void @release_firmware(ptr noundef %26) #7
  br label %request_ihex_firmware.exit28.thread

request_ihex_firmware.exit28.thread:              ; preds = %do.end.i25, %if.end12.request_ihex_firmware.exit28.thread_crit_edge
  %retval.0.i27.ph = phi i32 [ %call.i3, %if.end12.request_ihex_firmware.exit28.thread_crit_edge ], [ -22, %do.end.i25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfw.i2) #7
  br label %wraperr

if.end17:                                         ; preds = %land.lhs.true.i.i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfw.i2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lfw.i29) #7
  %27 = ptrtoint ptr %lfw.i29 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 -1 to ptr), ptr %lfw.i29, align 4, !annotation !83
  %call.i30 = call i32 @request_firmware(ptr noundef nonnull %lfw.i29, ptr noundef nonnull @.str.12, ptr noundef %dev8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool.not.i31 = icmp eq i32 %call.i30, 0
  br i1 %tobool.not.i31, label %if.end.i36, label %if.end17.request_ihex_firmware.exit55.thread_crit_edge

if.end17.request_ihex_firmware.exit55.thread_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %request_ihex_firmware.exit55.thread

if.end.i36:                                       ; preds = %if.end17
  %28 = ptrtoint ptr %lfw.i29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lfw.i29, align 4
  %data.i.i32 = getelementptr inbounds %struct.firmware, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %data.i.i32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i32, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %29, align 4
  %sub.i.i33 = add i32 %33, -6
  %arrayidx.i.i34 = getelementptr i8, ptr %31, i32 %sub.i.i33
  %cmp.not10.i.i35 = icmp ugt ptr %31, %arrayidx.i.i34
  br i1 %cmp.not10.i.i35, label %if.end.i36.do.end.i52_crit_edge, label %for.body.preheader.i.i38

if.end.i36.do.end.i52_crit_edge:                  ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i52

for.body.preheader.i.i38:                         ; preds = %if.end.i36
  %len.i.i37 = getelementptr inbounds %struct.ihex_binrec, ptr %arrayidx.i.i34, i32 0, i32 1
  br label %for.body.i.i41

for.body.i.i41:                                   ; preds = %for.inc.i.i51.for.body.i.i41_crit_edge, %for.body.preheader.i.i38
  %rec.011.i.i39 = phi ptr [ %add.ptr.i.i.i49, %for.inc.i.i51.for.body.i.i41_crit_edge ], [ %31, %for.body.preheader.i.i38 ]
  %cmp2.i.i40 = icmp eq ptr %rec.011.i.i39, %arrayidx.i.i34
  br i1 %cmp2.i.i40, label %land.lhs.true.i.i43, label %for.body.i.i41.for.inc.i.i51_crit_edge

for.body.i.i41.for.inc.i.i51_crit_edge:           ; preds = %for.body.i.i41
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i51

land.lhs.true.i.i43:                              ; preds = %for.body.i.i41
  %34 = ptrtoint ptr %len.i.i37 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %len.i.i37, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool.not.i.i42 = icmp eq i16 %35, 0
  br i1 %tobool.not.i.i42, label %if.end22, label %land.lhs.true.i.i43.for.inc.i.i51_crit_edge

land.lhs.true.i.i43.for.inc.i.i51_crit_edge:      ; preds = %land.lhs.true.i.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i51

for.inc.i.i51:                                    ; preds = %land.lhs.true.i.i43.for.inc.i.i51_crit_edge, %for.body.i.i41.for.inc.i.i51_crit_edge
  %len.i.i.i.i44 = getelementptr inbounds %struct.ihex_binrec, ptr %rec.011.i.i39, i32 0, i32 1
  %36 = ptrtoint ptr %len.i.i.i.i44 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %len.i.i.i.i44, align 1
  %add.i.i.i.i45 = add i16 %37, 6
  %conv.i.i.i46 = zext i16 %add.i.i.i.i45 to i32
  %add.i.i.i47 = add nuw nsw i32 %conv.i.i.i46, 3
  %and.i.i.i48 = and i32 %add.i.i.i47, 131068
  %add.ptr.i.i.i49 = getelementptr i8, ptr %rec.011.i.i39, i32 %and.i.i.i48
  %cmp.not.i.i50 = icmp ugt ptr %add.ptr.i.i.i49, %arrayidx.i.i34
  br i1 %cmp.not.i.i50, label %for.inc.i.i51.do.end.i52_crit_edge, label %for.inc.i.i51.for.body.i.i41_crit_edge

for.inc.i.i51.for.body.i.i41_crit_edge:           ; preds = %for.inc.i.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i41

for.inc.i.i51.do.end.i52_crit_edge:               ; preds = %for.inc.i.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i52

do.end.i52:                                       ; preds = %for.inc.i.i51.do.end.i52_crit_edge, %if.end.i36.do.end.i52_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.12) #10
  %38 = ptrtoint ptr %lfw.i29 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lfw.i29, align 4
  call void @release_firmware(ptr noundef %39) #7
  br label %request_ihex_firmware.exit55.thread

request_ihex_firmware.exit55.thread:              ; preds = %do.end.i52, %if.end17.request_ihex_firmware.exit55.thread_crit_edge
  %retval.0.i54.ph = phi i32 [ %call.i30, %if.end17.request_ihex_firmware.exit55.thread_crit_edge ], [ -22, %do.end.i52 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfw.i29) #7
  br label %wraperr

if.end22:                                         ; preds = %land.lhs.true.i.i43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfw.i29) #7
  %call23 = call fastcc i32 @emi62_set_reset(ptr noundef %dev, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %if.end22.do.end149_crit_edge, label %if.end25

if.end22.do.end149_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end149

if.end25:                                         ; preds = %if.end22
  %40 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i.i, align 4
  %tobool26.not202 = icmp eq ptr %41, null
  br i1 %tobool26.not202, label %if.end25.while.end_crit_edge, label %if.end25.while.body_crit_edge

if.end25.while.body_crit_edge:                    ; preds = %if.end25
  br label %while.body

if.end25.while.end_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %if.end33.while.body_crit_edge, %if.end25.while.body_crit_edge
  %rec.0203 = phi ptr [ %add.ptr.i.i, %if.end33.while.body_crit_edge ], [ %41, %if.end25.while.body_crit_edge ]
  %42 = ptrtoint ptr %rec.0203 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %rec.0203, align 1
  %data28 = getelementptr inbounds %struct.ihex_binrec, ptr %rec.0203, i32 0, i32 2
  %len = getelementptr inbounds %struct.ihex_binrec, ptr %rec.0203, i32 0, i32 1
  %44 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %len, align 1
  %conv = zext i16 %45 to i32
  %call.i56 = call ptr @kmemdup(ptr noundef %data28, i32 noundef %conv, i32 noundef 3264) #7
  %tobool.not.i57 = icmp eq ptr %call.i56, null
  br i1 %tobool.not.i57, label %emi62_writememory.exit.thread, label %emi62_writememory.exit

emi62_writememory.exit.thread:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv.le = zext i16 %45 to i32
  br label %do.end149.sink.split

emi62_writememory.exit:                           ; preds = %while.body
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dev, align 8
  %shl.i.i = shl i32 %47, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv.i = trunc i32 %43 to i16
  %call4.i = call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 0, ptr noundef nonnull %call.i56, i16 noundef zeroext %45, i32 noundef 300) #7
  call void @kfree(ptr noundef nonnull %call.i56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp30 = icmp slt i32 %call4.i, 0
  br i1 %cmp30, label %emi62_writememory.exit.do.end149_crit_edge, label %if.end33

emi62_writememory.exit.do.end149_crit_edge:       ; preds = %emi62_writememory.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end149

if.end33:                                         ; preds = %emi62_writememory.exit
  %48 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %len, align 1
  %add.i.i.i61 = add i16 %49, 6
  %conv.i.i = zext i16 %add.i.i.i61 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 3
  %and.i.i = and i32 %add.i.i, 131068
  %add.ptr.i.i = getelementptr i8, ptr %rec.0203, i32 %and.i.i
  %len.i = getelementptr inbounds %struct.ihex_binrec, ptr %add.ptr.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool.not.i62 = icmp eq i16 %51, 0
  %tobool26.not258 = icmp eq ptr %add.ptr.i.i, null
  %tobool26.not = select i1 %tobool.not.i62, i1 true, i1 %tobool26.not258
  br i1 %tobool26.not, label %if.end33.while.end_crit_edge, label %if.end33.while.body_crit_edge

if.end33.while.body_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end33.while.end_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end33.while.end_crit_edge, %if.end25.while.end_crit_edge
  %call35 = call fastcc i32 @emi62_set_reset(ptr noundef %dev, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %while.end.do.end149_crit_edge, label %if.end39

while.end.do.end149_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end149

if.end39:                                         ; preds = %while.end
  call void @msleep(i32 noundef 250) #7
  %52 = ptrtoint ptr %data.i.i5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i5, align 4
  br label %do.body41

do.body41:                                        ; preds = %do.cond64.do.body41_crit_edge, %if.end39
  %rec.1 = phi ptr [ %53, %if.end39 ], [ %rec.2.lcssa, %do.cond64.do.body41_crit_edge ]
  %54 = ptrtoint ptr %rec.1 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %rec.1, align 1
  %tobool44.not204 = icmp eq ptr %rec.1, null
  br i1 %tobool44.not204, label %do.body41.while.end58_crit_edge, label %do.body41.land.rhs_crit_edge

do.body41.land.rhs_crit_edge:                     ; preds = %do.body41
  br label %land.rhs

do.body41.while.end58_crit_edge:                  ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end58

land.rhs:                                         ; preds = %while.body49.land.rhs_crit_edge, %do.body41.land.rhs_crit_edge
  %rec.2206 = phi ptr [ %add.ptr.i.i68, %while.body49.land.rhs_crit_edge ], [ %rec.1, %do.body41.land.rhs_crit_edge ]
  %i.0205 = phi i32 [ %add56, %while.body49.land.rhs_crit_edge ], [ 0, %do.body41.land.rhs_crit_edge ]
  %len45 = getelementptr inbounds %struct.ihex_binrec, ptr %rec.2206, i32 0, i32 1
  %56 = ptrtoint ptr %len45 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %len45, align 1
  %conv46 = zext i16 %57 to i32
  %add = add i32 %i.0205, %conv46
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %add)
  %cmp47 = icmp slt i32 %add, 1023
  br i1 %cmp47, label %while.body49, label %land.rhs.while.end58_crit_edge

land.rhs.while.end58_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end58

while.body49:                                     ; preds = %land.rhs
  %add.ptr = getelementptr i8, ptr %call7.i, i32 %i.0205
  %data50 = getelementptr inbounds %struct.ihex_binrec, ptr %rec.2206, i32 0, i32 2
  %58 = call ptr @memcpy(ptr %add.ptr, ptr %data50, i32 %conv46)
  %59 = ptrtoint ptr %len45 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %len45, align 1
  %conv55 = zext i16 %60 to i32
  %add56 = add i32 %i.0205, %conv55
  %add.i.i.i64 = add i16 %60, 6
  %conv.i.i65 = zext i16 %add.i.i.i64 to i32
  %add.i.i66 = add nuw nsw i32 %conv.i.i65, 3
  %and.i.i67 = and i32 %add.i.i66, 131068
  %add.ptr.i.i68 = getelementptr i8, ptr %rec.2206, i32 %and.i.i67
  %len.i69 = getelementptr inbounds %struct.ihex_binrec, ptr %add.ptr.i.i68, i32 0, i32 1
  %61 = ptrtoint ptr %len.i69 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %62 = load i16, ptr %len.i69, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool.not.i70 = icmp eq i16 %62, 0
  %tobool44.not262 = icmp eq ptr %add.ptr.i.i68, null
  %tobool44.not = select i1 %tobool.not.i70, i1 true, i1 %tobool44.not262
  br i1 %tobool44.not, label %while.body49.while.end58_crit_edge, label %while.body49.land.rhs_crit_edge

while.body49.land.rhs_crit_edge:                  ; preds = %while.body49
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

while.body49.while.end58_crit_edge:               ; preds = %while.body49
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end58

while.end58:                                      ; preds = %while.body49.while.end58_crit_edge, %land.rhs.while.end58_crit_edge, %do.body41.while.end58_crit_edge
  %i.0.lcssa = phi i32 [ 0, %do.body41.while.end58_crit_edge ], [ %add56, %while.body49.while.end58_crit_edge ], [ %i.0205, %land.rhs.while.end58_crit_edge ]
  %rec.2.lcssa = phi ptr [ null, %do.body41.while.end58_crit_edge ], [ null, %while.body49.while.end58_crit_edge ], [ %rec.2206, %land.rhs.while.end58_crit_edge ]
  %tobool44.not.lcssa = phi i1 [ true, %do.body41.while.end58_crit_edge ], [ %cmp47, %while.body49.while.end58_crit_edge ], [ %cmp47, %land.rhs.while.end58_crit_edge ]
  %call.i72 = call ptr @kmemdup(ptr noundef nonnull %call7.i, i32 noundef %i.0.lcssa, i32 noundef 3264) #7
  %tobool.not.i73 = icmp eq ptr %call.i72, null
  br i1 %tobool.not.i73, label %while.end58.do.end149.sink.split_crit_edge, label %emi62_writememory.exit82

while.end58.do.end149.sink.split_crit_edge:       ; preds = %while.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end149.sink.split

emi62_writememory.exit82:                         ; preds = %while.end58
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dev, align 8
  %shl.i.i76 = shl i32 %64, 8
  %or.i77 = or i32 %shl.i.i76, -2147483648
  %conv.i78 = trunc i32 %55 to i16
  %conv3.i = trunc i32 %i.0.lcssa to i16
  %call4.i79 = call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or.i77, i8 noundef zeroext -91, i8 noundef zeroext 64, i16 noundef zeroext %conv.i78, i16 noundef zeroext 0, ptr noundef nonnull %call.i72, i16 noundef zeroext %conv3.i, i32 noundef 300) #7
  call void @kfree(ptr noundef nonnull %call.i72) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i79)
  %cmp60 = icmp slt i32 %call4.i79, 0
  br i1 %cmp60, label %emi62_writememory.exit82.do.end149_crit_edge, label %do.cond64

emi62_writememory.exit82.do.end149_crit_edge:     ; preds = %emi62_writememory.exit82
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end149

do.cond64:                                        ; preds = %emi62_writememory.exit82
  br i1 %tobool44.not.lcssa, label %do.end66, label %do.cond64.do.body41_crit_edge

do.cond64.do.body41_crit_edge:                    ; preds = %do.cond64
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body41

do.end66:                                         ; preds = %do.cond64
  %call67 = call fastcc i32 @emi62_set_reset(ptr noundef %dev, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %do.end66.do.end149_crit_edge, label %if.end71

do.end66.do.end149_crit_edge:                     ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end149

if.end71:                                         ; preds = %do.end66
  %65 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data.i.i, align 4
  %tobool73.not214 = icmp eq ptr %66, null
  br i1 %tobool73.not214, label %if.end71.for.end_crit_edge, label %if.end71.for.body_crit_edge

if.end71.for.body_crit_edge:                      ; preds = %if.end71
  br label %for.body

if.end71.for.end_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end71.for.body_crit_edge
  %rec.3215 = phi ptr [ %add.ptr.i.i99, %for.inc.for.body_crit_edge ], [ %66, %if.end71.for.body_crit_edge ]
  %67 = ptrtoint ptr %rec.3215 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %rec.3215, align 1
  %data75 = getelementptr inbounds %struct.ihex_binrec, ptr %rec.3215, i32 0, i32 2
  %len77 = getelementptr inbounds %struct.ihex_binrec, ptr %rec.3215, i32 0, i32 1
  %69 = ptrtoint ptr %len77 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %len77, align 1
  %conv78 = zext i16 %70 to i32
  %call.i83 = call ptr @kmemdup(ptr noundef %data75, i32 noundef %conv78, i32 noundef 3264) #7
  %tobool.not.i84 = icmp eq ptr %call.i83, null
  br i1 %tobool.not.i84, label %emi62_writememory.exit93.thread, label %emi62_writememory.exit93

emi62_writememory.exit93.thread:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv78.le = zext i16 %70 to i32
  br label %do.end149.sink.split

emi62_writememory.exit93:                         ; preds = %for.body
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dev, align 8
  %shl.i.i87 = shl i32 %72, 8
  %or.i88 = or i32 %shl.i.i87, -2147483648
  %conv.i89 = trunc i32 %68 to i16
  %call4.i90 = call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or.i88, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv.i89, i16 noundef zeroext 0, ptr noundef nonnull %call.i83, i16 noundef zeroext %70, i32 noundef 300) #7
  call void @kfree(ptr noundef nonnull %call.i83) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i90)
  %cmp80 = icmp slt i32 %call4.i90, 0
  br i1 %cmp80, label %emi62_writememory.exit93.do.end149_crit_edge, label %for.inc

emi62_writememory.exit93.do.end149_crit_edge:     ; preds = %emi62_writememory.exit93
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end149

for.inc:                                          ; preds = %emi62_writememory.exit93
  %73 = ptrtoint ptr %len77 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %len77, align 1
  %add.i.i.i95 = add i16 %74, 6
  %conv.i.i96 = zext i16 %add.i.i.i95 to i32
  %add.i.i97 = add nuw nsw i32 %conv.i.i96, 3
  %and.i.i98 = and i32 %add.i.i97, 131068
  %add.ptr.i.i99 = getelementptr i8, ptr %rec.3215, i32 %and.i.i98
  %len.i100 = getelementptr inbounds %struct.ihex_binrec, ptr %add.ptr.i.i99, i32 0, i32 1
  %75 = ptrtoint ptr %len.i100 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %len.i100, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool.not.i101 = icmp eq i16 %76, 0
  %tobool73.not259 = icmp eq ptr %add.ptr.i.i99, null
  %tobool73.not = select i1 %tobool.not.i101, i1 true, i1 %tobool73.not259
  br i1 %tobool73.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end71.for.end_crit_edge
  %call85 = call fastcc i32 @emi62_set_reset(ptr noundef %dev, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %for.end.do.end149_crit_edge, label %if.end89

for.end.do.end149_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end149

if.end89:                                         ; preds = %for.end
  call void @msleep(i32 noundef 250) #7
  %77 = ptrtoint ptr %data.i.i32 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data.i.i32, align 4
  %tobool92.not217 = icmp eq ptr %78, null
  br i1 %tobool92.not217, label %if.end89.for.end111_crit_edge, label %if.end89.for.body93_crit_edge

if.end89.for.body93_crit_edge:                    ; preds = %if.end89
  br label %for.body93

if.end89.for.end111_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end111

for.body93:                                       ; preds = %for.inc109.for.body93_crit_edge, %if.end89.for.body93_crit_edge
  %rec.4218 = phi ptr [ %add.ptr.i.i119, %for.inc109.for.body93_crit_edge ], [ %78, %if.end89.for.body93_crit_edge ]
  %79 = ptrtoint ptr %rec.4218 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %rec.4218, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6976, i32 %80)
  %cmp95 = icmp ult i32 %80, 6976
  br i1 %cmp95, label %for.body93.for.inc109_crit_edge, label %if.then97

for.body93.for.inc109_crit_edge:                  ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc109

if.then97:                                        ; preds = %for.body93
  %data99 = getelementptr inbounds %struct.ihex_binrec, ptr %rec.4218, i32 0, i32 2
  %len101 = getelementptr inbounds %struct.ihex_binrec, ptr %rec.4218, i32 0, i32 1
  %81 = ptrtoint ptr %len101 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %82 = load i16, ptr %len101, align 1
  %conv102 = zext i16 %82 to i32
  %call.i103 = call ptr @kmemdup(ptr noundef %data99, i32 noundef %conv102, i32 noundef 3264) #7
  %tobool.not.i104 = icmp eq ptr %call.i103, null
  br i1 %tobool.not.i104, label %emi62_writememory.exit113.thread, label %emi62_writememory.exit113

emi62_writememory.exit113.thread:                 ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #9
  %conv102.le = zext i16 %82 to i32
  br label %do.end149.sink.split

emi62_writememory.exit113:                        ; preds = %if.then97
  %83 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dev, align 8
  %shl.i.i107 = shl i32 %84, 8
  %or.i108 = or i32 %shl.i.i107, -2147483648
  %conv.i109 = trunc i32 %80 to i16
  %call4.i110 = call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or.i108, i8 noundef zeroext -93, i8 noundef zeroext 64, i16 noundef zeroext %conv.i109, i16 noundef zeroext 0, ptr noundef nonnull %call.i103, i16 noundef zeroext %82, i32 noundef 300) #7
  call void @kfree(ptr noundef nonnull %call.i103) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i110)
  %cmp104 = icmp slt i32 %call4.i110, 0
  br i1 %cmp104, label %emi62_writememory.exit113.do.end149_crit_edge, label %emi62_writememory.exit113.for.inc109_crit_edge

emi62_writememory.exit113.for.inc109_crit_edge:   ; preds = %emi62_writememory.exit113
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc109

emi62_writememory.exit113.do.end149_crit_edge:    ; preds = %emi62_writememory.exit113
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end149

for.inc109:                                       ; preds = %emi62_writememory.exit113.for.inc109_crit_edge, %for.body93.for.inc109_crit_edge
  %len.i.i.i114 = getelementptr inbounds %struct.ihex_binrec, ptr %rec.4218, i32 0, i32 1
  %85 = ptrtoint ptr %len.i.i.i114 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 2)
  %86 = load i16, ptr %len.i.i.i114, align 1
  %add.i.i.i115 = add i16 %86, 6
  %conv.i.i116 = zext i16 %add.i.i.i115 to i32
  %add.i.i117 = add nuw nsw i32 %conv.i.i116, 3
  %and.i.i118 = and i32 %add.i.i117, 131068
  %add.ptr.i.i119 = getelementptr i8, ptr %rec.4218, i32 %and.i.i118
  %len.i120 = getelementptr inbounds %struct.ihex_binrec, ptr %add.ptr.i.i119, i32 0, i32 1
  %87 = ptrtoint ptr %len.i120 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 2)
  %88 = load i16, ptr %len.i120, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %tobool.not.i121 = icmp eq i16 %88, 0
  %tobool92.not260 = icmp eq ptr %add.ptr.i.i119, null
  %tobool92.not = select i1 %tobool.not.i121, i1 true, i1 %tobool92.not260
  br i1 %tobool92.not, label %for.inc109.for.end111_crit_edge, label %for.inc109.for.body93_crit_edge

for.inc109.for.body93_crit_edge:                  ; preds = %for.inc109
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body93

for.inc109.for.end111_crit_edge:                  ; preds = %for.inc109
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end111

for.end111:                                       ; preds = %for.inc109.for.end111_crit_edge, %if.end89.for.end111_crit_edge
  %call112 = call fastcc i32 @emi62_set_reset(ptr noundef %dev, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %cmp113 = icmp slt i32 %call112, 0
  br i1 %cmp113, label %for.end111.do.end149_crit_edge, label %if.end116

for.end111.do.end149_crit_edge:                   ; preds = %for.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end149

if.end116:                                        ; preds = %for.end111
  %89 = ptrtoint ptr %data.i.i32 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data.i.i32, align 4
  %tobool119.not220 = icmp eq ptr %90, null
  br i1 %tobool119.not220, label %if.end116.for.end138_crit_edge, label %if.end116.for.body120_crit_edge

if.end116.for.body120_crit_edge:                  ; preds = %if.end116
  br label %for.body120

if.end116.for.end138_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end138

for.body120:                                      ; preds = %for.inc136.for.body120_crit_edge, %if.end116.for.body120_crit_edge
  %rec.5221 = phi ptr [ %add.ptr.i.i139, %for.inc136.for.body120_crit_edge ], [ %90, %if.end116.for.body120_crit_edge ]
  %91 = ptrtoint ptr %rec.5221 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %rec.5221, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6976, i32 %92)
  %cmp122 = icmp ult i32 %92, 6976
  br i1 %cmp122, label %if.then124, label %for.body120.for.inc136_crit_edge

for.body120.for.inc136_crit_edge:                 ; preds = %for.body120
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc136

if.then124:                                       ; preds = %for.body120
  %data126 = getelementptr inbounds %struct.ihex_binrec, ptr %rec.5221, i32 0, i32 2
  %len128 = getelementptr inbounds %struct.ihex_binrec, ptr %rec.5221, i32 0, i32 1
  %93 = ptrtoint ptr %len128 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 2)
  %94 = load i16, ptr %len128, align 1
  %conv129 = zext i16 %94 to i32
  %call.i123 = call ptr @kmemdup(ptr noundef %data126, i32 noundef %conv129, i32 noundef 3264) #7
  %tobool.not.i124 = icmp eq ptr %call.i123, null
  br i1 %tobool.not.i124, label %emi62_writememory.exit133.thread, label %emi62_writememory.exit133

emi62_writememory.exit133.thread:                 ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #9
  %conv129.le = zext i16 %94 to i32
  br label %do.end149.sink.split

emi62_writememory.exit133:                        ; preds = %if.then124
  %95 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dev, align 8
  %shl.i.i127 = shl i32 %96, 8
  %or.i128 = or i32 %shl.i.i127, -2147483648
  %conv.i129 = trunc i32 %92 to i16
  %call4.i130 = call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or.i128, i8 noundef zeroext -93, i8 noundef zeroext 64, i16 noundef zeroext %conv.i129, i16 noundef zeroext 0, ptr noundef nonnull %call.i123, i16 noundef zeroext %94, i32 noundef 300) #7
  call void @kfree(ptr noundef nonnull %call.i123) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i130)
  %cmp131 = icmp slt i32 %call4.i130, 0
  br i1 %cmp131, label %emi62_writememory.exit133.do.end149_crit_edge, label %emi62_writememory.exit133.for.inc136_crit_edge

emi62_writememory.exit133.for.inc136_crit_edge:   ; preds = %emi62_writememory.exit133
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc136

emi62_writememory.exit133.do.end149_crit_edge:    ; preds = %emi62_writememory.exit133
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end149

for.inc136:                                       ; preds = %emi62_writememory.exit133.for.inc136_crit_edge, %for.body120.for.inc136_crit_edge
  %len.i.i.i134 = getelementptr inbounds %struct.ihex_binrec, ptr %rec.5221, i32 0, i32 1
  %97 = ptrtoint ptr %len.i.i.i134 to i32
  call void @__asan_loadN_noabort(i32 %97, i32 2)
  %98 = load i16, ptr %len.i.i.i134, align 1
  %add.i.i.i135 = add i16 %98, 6
  %conv.i.i136 = zext i16 %add.i.i.i135 to i32
  %add.i.i137 = add nuw nsw i32 %conv.i.i136, 3
  %and.i.i138 = and i32 %add.i.i137, 131068
  %add.ptr.i.i139 = getelementptr i8, ptr %rec.5221, i32 %and.i.i138
  %len.i140 = getelementptr inbounds %struct.ihex_binrec, ptr %add.ptr.i.i139, i32 0, i32 1
  %99 = ptrtoint ptr %len.i140 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 2)
  %100 = load i16, ptr %len.i140, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %tobool.not.i141 = icmp eq i16 %100, 0
  %tobool119.not261 = icmp eq ptr %add.ptr.i.i139, null
  %tobool119.not = select i1 %tobool.not.i141, i1 true, i1 %tobool119.not261
  br i1 %tobool119.not, label %for.inc136.for.end138_crit_edge, label %for.inc136.for.body120_crit_edge

for.inc136.for.body120_crit_edge:                 ; preds = %for.inc136
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body120

for.inc136.for.end138_crit_edge:                  ; preds = %for.inc136
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end138

for.end138:                                       ; preds = %for.inc136.for.end138_crit_edge, %if.end116.for.end138_crit_edge
  %call139 = call fastcc i32 @emi62_set_reset(ptr noundef %dev, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %cmp140 = icmp slt i32 %call139, 0
  br i1 %cmp140, label %for.end138.do.end149_crit_edge, label %if.end143

for.end138.do.end149_crit_edge:                   ; preds = %for.end138
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end149

if.end143:                                        ; preds = %for.end138
  call void @__sanitizer_cov_trace_pc() #9
  call void @msleep(i32 noundef 250) #7
  call void @release_firmware(ptr noundef %3) #7
  call void @release_firmware(ptr noundef %16) #7
  call void @release_firmware(ptr noundef %29) #7
  call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

wraperr:                                          ; preds = %request_ihex_firmware.exit55.thread, %request_ihex_firmware.exit28.thread, %request_ihex_firmware.exit.thread
  %loader_fw.1 = phi ptr [ null, %request_ihex_firmware.exit.thread ], [ %3, %request_ihex_firmware.exit28.thread ], [ %3, %request_ihex_firmware.exit55.thread ]
  %bitstream_fw.1 = phi ptr [ null, %request_ihex_firmware.exit.thread ], [ null, %request_ihex_firmware.exit28.thread ], [ %16, %request_ihex_firmware.exit55.thread ]
  %err.0 = phi i32 [ %retval.0.i1.ph, %request_ihex_firmware.exit.thread ], [ %retval.0.i27.ph, %request_ihex_firmware.exit28.thread ], [ %retval.0.i54.ph, %request_ihex_firmware.exit55.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp144 = icmp slt i32 %err.0, 0
  br i1 %cmp144, label %wraperr.do.end149_crit_edge, label %wraperr.if.end151_crit_edge

wraperr.if.end151_crit_edge:                      ; preds = %wraperr
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end151

wraperr.do.end149_crit_edge:                      ; preds = %wraperr
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end149

do.end149.sink.split:                             ; preds = %emi62_writememory.exit133.thread, %emi62_writememory.exit113.thread, %emi62_writememory.exit93.thread, %while.end58.do.end149.sink.split_crit_edge, %emi62_writememory.exit.thread
  %conv129.le.sink = phi i32 [ %conv129.le, %emi62_writememory.exit133.thread ], [ %conv102.le, %emi62_writememory.exit113.thread ], [ %conv78.le, %emi62_writememory.exit93.thread ], [ %conv.le, %emi62_writememory.exit.thread ], [ %i.0.lcssa, %while.end58.do.end149.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.26, i32 noundef %conv129.le.sink) #10
  br label %do.end149

do.end149:                                        ; preds = %do.end149.sink.split, %wraperr.do.end149_crit_edge, %for.end138.do.end149_crit_edge, %emi62_writememory.exit133.do.end149_crit_edge, %for.end111.do.end149_crit_edge, %emi62_writememory.exit113.do.end149_crit_edge, %for.end.do.end149_crit_edge, %emi62_writememory.exit93.do.end149_crit_edge, %do.end66.do.end149_crit_edge, %emi62_writememory.exit82.do.end149_crit_edge, %while.end.do.end149_crit_edge, %emi62_writememory.exit.do.end149_crit_edge, %if.end22.do.end149_crit_edge, %do.end.do.end149_crit_edge
  %err.0186 = phi i32 [ %err.0, %wraperr.do.end149_crit_edge ], [ -12, %do.end.do.end149_crit_edge ], [ %call139, %for.end138.do.end149_crit_edge ], [ %call112, %for.end111.do.end149_crit_edge ], [ %call85, %for.end.do.end149_crit_edge ], [ %call67, %do.end66.do.end149_crit_edge ], [ %call35, %while.end.do.end149_crit_edge ], [ %call23, %if.end22.do.end149_crit_edge ], [ -12, %do.end149.sink.split ], [ %call4.i130, %emi62_writememory.exit133.do.end149_crit_edge ], [ %call4.i110, %emi62_writememory.exit113.do.end149_crit_edge ], [ %call4.i90, %emi62_writememory.exit93.do.end149_crit_edge ], [ %call4.i79, %emi62_writememory.exit82.do.end149_crit_edge ], [ %call4.i, %emi62_writememory.exit.do.end149_crit_edge ]
  %firmware_fw.1185 = phi ptr [ null, %wraperr.do.end149_crit_edge ], [ null, %do.end.do.end149_crit_edge ], [ %29, %for.end138.do.end149_crit_edge ], [ %29, %for.end111.do.end149_crit_edge ], [ %29, %for.end.do.end149_crit_edge ], [ %29, %do.end66.do.end149_crit_edge ], [ %29, %while.end.do.end149_crit_edge ], [ %29, %if.end22.do.end149_crit_edge ], [ %29, %do.end149.sink.split ], [ %29, %emi62_writememory.exit133.do.end149_crit_edge ], [ %29, %emi62_writememory.exit113.do.end149_crit_edge ], [ %29, %emi62_writememory.exit93.do.end149_crit_edge ], [ %29, %emi62_writememory.exit82.do.end149_crit_edge ], [ %29, %emi62_writememory.exit.do.end149_crit_edge ]
  %bitstream_fw.1183 = phi ptr [ %bitstream_fw.1, %wraperr.do.end149_crit_edge ], [ null, %do.end.do.end149_crit_edge ], [ %16, %for.end138.do.end149_crit_edge ], [ %16, %for.end111.do.end149_crit_edge ], [ %16, %for.end.do.end149_crit_edge ], [ %16, %do.end66.do.end149_crit_edge ], [ %16, %while.end.do.end149_crit_edge ], [ %16, %if.end22.do.end149_crit_edge ], [ %16, %do.end149.sink.split ], [ %16, %emi62_writememory.exit133.do.end149_crit_edge ], [ %16, %emi62_writememory.exit113.do.end149_crit_edge ], [ %16, %emi62_writememory.exit93.do.end149_crit_edge ], [ %16, %emi62_writememory.exit82.do.end149_crit_edge ], [ %16, %emi62_writememory.exit.do.end149_crit_edge ]
  %loader_fw.1181 = phi ptr [ %loader_fw.1, %wraperr.do.end149_crit_edge ], [ null, %do.end.do.end149_crit_edge ], [ %3, %for.end138.do.end149_crit_edge ], [ %3, %for.end111.do.end149_crit_edge ], [ %3, %for.end.do.end149_crit_edge ], [ %3, %do.end66.do.end149_crit_edge ], [ %3, %while.end.do.end149_crit_edge ], [ %3, %if.end22.do.end149_crit_edge ], [ %3, %do.end149.sink.split ], [ %3, %emi62_writememory.exit133.do.end149_crit_edge ], [ %3, %emi62_writememory.exit113.do.end149_crit_edge ], [ %3, %emi62_writememory.exit93.do.end149_crit_edge ], [ %3, %emi62_writememory.exit82.do.end149_crit_edge ], [ %3, %emi62_writememory.exit.do.end149_crit_edge ]
  %dev150 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev150, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.8, i32 noundef %err.0186) #10
  br label %if.end151

if.end151:                                        ; preds = %do.end149, %wraperr.if.end151_crit_edge
  %firmware_fw.1184 = phi ptr [ %firmware_fw.1185, %do.end149 ], [ null, %wraperr.if.end151_crit_edge ]
  %bitstream_fw.1182 = phi ptr [ %bitstream_fw.1183, %do.end149 ], [ %bitstream_fw.1, %wraperr.if.end151_crit_edge ]
  %loader_fw.1180 = phi ptr [ %loader_fw.1181, %do.end149 ], [ %loader_fw.1, %wraperr.if.end151_crit_edge ]
  call void @release_firmware(ptr noundef %loader_fw.1180) #7
  call void @release_firmware(ptr noundef %bitstream_fw.1182) #7
  call void @release_firmware(ptr noundef %firmware_fw.1184) #7
  call void @kfree(ptr noundef %call7.i) #7
  %dev155 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev155, ptr noundef nonnull @.str.16) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end151, %if.end143
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @emi62_set_reset(ptr noundef %dev, i8 noundef zeroext %reset_bit) unnamed_addr #2 align 64 {
entry:
  %reset_bit.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reset_bit.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reset_bit, ptr %reset_bit.addr, align 1
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  %conv = zext i8 %reset_bit to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef %conv) #10
  %call.i = call ptr @kmemdup(ptr noundef nonnull %reset_bit.addr, i32 noundef 1, i32 noundef 3264) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %emi62_writememory.exit.thread, label %emi62_writememory.exit

emi62_writememory.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef 1) #10
  br label %do.end5

emi62_writememory.exit:                           ; preds = %entry
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dev, align 8
  %shl.i.i = shl i32 %2, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call4.i = call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 32658, i16 noundef zeroext 0, ptr noundef nonnull %call.i, i16 noundef zeroext 1, i32 noundef 300) #7
  call void @kfree(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp = icmp slt i32 %call4.i, 0
  br i1 %cmp, label %emi62_writememory.exit.do.end5_crit_edge, label %emi62_writememory.exit.if.end_crit_edge

emi62_writememory.exit.if.end_crit_edge:          ; preds = %emi62_writememory.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

emi62_writememory.exit.do.end5_crit_edge:         ; preds = %emi62_writememory.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end5:                                          ; preds = %emi62_writememory.exit.do.end5_crit_edge, %emi62_writememory.exit.thread
  %retval.0.i14 = phi i32 [ -12, %emi62_writememory.exit.thread ], [ %call4.i, %emi62_writememory.exit.do.end5_crit_edge ]
  %3 = ptrtoint ptr %reset_bit.addr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %reset_bit.addr, align 1
  %conv7 = zext i8 %4 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %conv7) #10
  br label %if.end

if.end:                                           ; preds = %do.end5, %emi62_writememory.exit.if.end_crit_edge
  %retval.0.i13 = phi i32 [ %retval.0.i14, %do.end5 ], [ %call4.i, %emi62_writememory.exit.if.end_crit_edge ]
  ret i32 %retval.0.i13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !24, !25, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_emi62__234_262_emi62_driver_init6, !1, !"__initcall__kmod_emi62__234_262_emi62_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/misc/emi62.c", i32 262, i32 1}
!2 = !{ptr @__exitcall_emi62_driver_exit, !1, !"__exitcall_emi62_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/usb/misc/emi62.c", i32 264, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/usb/misc/emi62.c", i32 265, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/usb/misc/emi62.c", i32 266, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_firmware239, !11, !"__UNIQUE_ID_firmware239", i1 false, i1 false}
!11 = !{!"../drivers/usb/misc/emi62.c", i32 268, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware240, !13, !"__UNIQUE_ID_firmware240", i1 false, i1 false}
!13 = !{!"../drivers/usb/misc/emi62.c", i32 269, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware241, !15, !"__UNIQUE_ID_firmware241", i1 false, i1 false}
!15 = !{!"../drivers/usb/misc/emi62.c", i32 270, i32 1}
!16 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/misc/emi62.c", i32 256, i32 11}
!19 = !{ptr @emi62_driver, !20, !"emi62_driver", i1 false, i1 false}
!20 = !{!"../drivers/usb/misc/emi62.c", i32 255, i32 26}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/misc/emi62.c", i32 241, i32 2}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @emi62_probe.__UNIQUE_ID_ddebug233, !22, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/misc/emi62.c", i32 243, i32 2}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @emi62_probe._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @emi62_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/misc/emi62.c", i32 90, i32 2}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @emi62_load_firmware.__UNIQUE_ID_ddebug232, !33, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/misc/emi62.c", i32 95, i32 42}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/misc/emi62.c", i32 99, i32 45}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/misc/emi62.c", i32 104, i32 44}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/misc/emi62.c", i32 220, i32 3}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @emi62_load_firmware._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @emi62_load_firmware._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/misc/emi62.c", i32 227, i32 2}
!49 = !{ptr @emi62_load_firmware._entry.15, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @emi62_load_firmware._entry_ptr.17, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/ihex.h", i32 76, i32 3}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @request_ihex_firmware._entry, !52, !"_entry", i1 false, i1 false}
!56 = !{ptr @request_ihex_firmware._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/misc/emi62.c", i32 69, i32 2}
!59 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @emi62_set_reset._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @emi62_set_reset._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/misc/emi62.c", i32 73, i32 3}
!64 = !{ptr @emi62_set_reset._entry.23, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @emi62_set_reset._entry_ptr.25, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/misc/emi62.c", i32 55, i32 3}
!68 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @emi62_writememory._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @emi62_writememory._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @id_table, !72, !"id_table", i1 false, i1 false}
!72 = !{!"../drivers/usb/misc/emi62.c", i32 231, i32 35}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i64 2148697438, i64 2148697443, i64 2148697456, i64 2148697500, i64 2148697534, i64 2148697555}
!83 = !{!"auto-init"}
