; ModuleID = '/llk/IR_all_yes/sound/usb/6fire/firmware.c_pt.bc'
source_filename = "../sound/usb/6fire/firmware.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.firmware = type { i32, ptr, ptr }
%struct.ihex_record = type { i16, i8, [256 x i8], i8, i8, ptr, i32, i32 }

@__UNIQUE_ID_firmware234 = internal constant [44 x i8] c"snd_usb_6fire.firmware=6fire/dmx6firel2.ihx\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware235 = internal constant [44 x i8] c"snd_usb_6fire.firmware=6fire/dmx6fireap.ihx\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware236 = internal constant [44 x i8] c"snd_usb_6fire.firmware=6fire/dmx6firecf.bin\00", section ".modinfo", align 1
@usb6fire_fw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 356, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unable to receive device firmware state.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usb6fire_fw_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/usb/6fire/firmware.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usb6fire_fw_init._entry_ptr = internal global ptr @usb6fire_fw_init._entry, section ".printk_index", align 4
@usb6fire_fw_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 361, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"unknown device firmware state received from device:\00", [44 x i8] zeroinitializer }, align 32
@usb6fire_fw_init._entry_ptr.7 = internal global ptr @usb6fire_fw_init._entry.5, section ".printk_index", align 4
@usb6fire_fw_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c%02x \00", [24 x i8] zeroinitializer }, align 32
@usb6fire_fw_init._entry_ptr.10 = internal global ptr @usb6fire_fw_init._entry.8, section ".printk_index", align 4
@usb6fire_fw_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@usb6fire_fw_init._entry_ptr.13 = internal global ptr @usb6fire_fw_init._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"6fire/dmx6firel2.ihx\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"6fire/dmx6firecf.bin\00", [43 x i8] zeroinitializer }, align 32
@ep_w_max_packet_size = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\E4\00\E4\00\A4\01\A4\01\94\01\\\02", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"6fire/dmx6fireap.ihx\00", [43 x i8] zeroinitializer }, align 32
@usb6fire_fw_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 397, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"unknown device firmware state received from device: \00", [43 x i8] zeroinitializer }, align 32
@usb6fire_fw_init._entry_ptr.19 = internal global ptr @usb6fire_fw_init._entry.17, section ".printk_index", align 4
@usb6fire_fw_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@usb6fire_fw_init._entry_ptr.21 = internal global ptr @usb6fire_fw_init._entry.20, section ".printk_index", align 4
@usb6fire_fw_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@usb6fire_fw_init._entry_ptr.23 = internal global ptr @usb6fire_fw_init._entry.22, section ".printk_index", align 4
@usb6fire_fw_ezusb_upload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 207, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error requesting ezusb firmware %s.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"usb6fire_fw_ezusb_upload\00", [39 x i8] zeroinitializer }, align 32
@usb6fire_fw_ezusb_upload._entry_ptr = internal global ptr @usb6fire_fw_ezusb_upload._entry, section ".printk_index", align 4
@usb6fire_fw_ezusb_upload._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 215, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error validating ezusb firmware %s.\0A\00", [59 x i8] zeroinitializer }, align 32
@usb6fire_fw_ezusb_upload._entry_ptr.28 = internal global ptr @usb6fire_fw_ezusb_upload._entry.26, section ".printk_index", align 4
@usb6fire_fw_ezusb_upload._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 226, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"unable to upload ezusb firmware %s: begin message.\0A\00", [44 x i8] zeroinitializer }, align 32
@usb6fire_fw_ezusb_upload._entry_ptr.31 = internal global ptr @usb6fire_fw_ezusb_upload._entry.29, section ".printk_index", align 4
@usb6fire_fw_ezusb_upload._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str.2, i32 238, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"unable to upload ezusb firmware %s: data urb.\0A\00", [49 x i8] zeroinitializer }, align 32
@usb6fire_fw_ezusb_upload._entry_ptr.34 = internal global ptr @usb6fire_fw_ezusb_upload._entry.32, section ".printk_index", align 4
@usb6fire_fw_ezusb_upload._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.25, ptr @.str.2, i32 251, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"unable to upload ezusb firmware %s: post urb.\0A\00", [49 x i8] zeroinitializer }, align 32
@usb6fire_fw_ezusb_upload._entry_ptr.37 = internal global ptr @usb6fire_fw_ezusb_upload._entry.35, section ".printk_index", align 4
@usb6fire_fw_ezusb_upload._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.25, ptr @.str.2, i32 261, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"unable to upload ezusb firmware %s: end message.\0A\00", [46 x i8] zeroinitializer }, align 32
@usb6fire_fw_ezusb_upload._entry_ptr.40 = internal global ptr @usb6fire_fw_ezusb_upload._entry.38, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@known_fw_versions = internal constant { [1 x [2 x i8]], [30 x i8] } { [1 x [2 x i8]] [[2 x i8] c"\03\01"], [30 x i8] zeroinitializer }, align 32
@usb6fire_fw_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 340, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [134 x i8], [58 x i8] } { [134 x i8] c"invalid firmware version in device: %4ph. please reconnect to power. if this failure still happens, check your firmware installation.\00", [58 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usb6fire_fw_check\00", [46 x i8] zeroinitializer }, align 32
@usb6fire_fw_check._entry_ptr = internal global ptr @usb6fire_fw_check._entry, section ".printk_index", align 4
@usb6fire_fw_fpga_upload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 284, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to get fpga firmware %s.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"usb6fire_fw_fpga_upload\00", [40 x i8] zeroinitializer }, align 32
@usb6fire_fw_fpga_upload._entry_ptr = internal global ptr @usb6fire_fw_fpga_upload._entry, section ".printk_index", align 4
@usb6fire_fw_fpga_upload._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 297, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"unable to upload fpga firmware: begin urb.\0A\00", [52 x i8] zeroinitializer }, align 32
@usb6fire_fw_fpga_upload._entry_ptr.47 = internal global ptr @usb6fire_fw_fpga_upload._entry.45, section ".printk_index", align 4
@usb6fire_fw_fpga_upload._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.2, i32 310, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unable to upload fpga firmware: fw urb.\0A\00", [55 x i8] zeroinitializer }, align 32
@usb6fire_fw_fpga_upload._entry_ptr.50 = internal global ptr @usb6fire_fw_fpga_upload._entry.48, section ".printk_index", align 4
@usb6fire_fw_fpga_upload._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.44, ptr @.str.2, i32 320, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unable to upload fpga firmware: end urb.\0A\00", [54 x i8] zeroinitializer }, align 32
@usb6fire_fw_fpga_upload._entry_ptr.53 = internal global ptr @usb6fire_fw_fpga_upload._entry.51, section ".printk_index", align 4
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 355, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 360, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 363, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 364, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 370, i32 5 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 380, i32 39 }
@___asan_gen_.96 = private unnamed_addr constant [21 x i8] c"ep_w_max_packet_size\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 35, i32 17 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 385, i32 40 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 396, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 399, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 400, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 206, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 214, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 224, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 236, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 249, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 259, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [18 x i8] c"known_fw_versions\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 41, i32 17 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 337, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 283, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 296, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 309, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.190 = private constant [30 x i8] c"../sound/usb/6fire/firmware.c\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 319, i32 3 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_firmware234, ptr @__UNIQUE_ID_firmware235, ptr @__UNIQUE_ID_firmware236, ptr @usb6fire_fw_check._entry, ptr @usb6fire_fw_check._entry_ptr, ptr @usb6fire_fw_ezusb_upload._entry, ptr @usb6fire_fw_ezusb_upload._entry.26, ptr @usb6fire_fw_ezusb_upload._entry.29, ptr @usb6fire_fw_ezusb_upload._entry.32, ptr @usb6fire_fw_ezusb_upload._entry.35, ptr @usb6fire_fw_ezusb_upload._entry.38, ptr @usb6fire_fw_ezusb_upload._entry_ptr, ptr @usb6fire_fw_ezusb_upload._entry_ptr.28, ptr @usb6fire_fw_ezusb_upload._entry_ptr.31, ptr @usb6fire_fw_ezusb_upload._entry_ptr.34, ptr @usb6fire_fw_ezusb_upload._entry_ptr.37, ptr @usb6fire_fw_ezusb_upload._entry_ptr.40, ptr @usb6fire_fw_fpga_upload._entry, ptr @usb6fire_fw_fpga_upload._entry.45, ptr @usb6fire_fw_fpga_upload._entry.48, ptr @usb6fire_fw_fpga_upload._entry.51, ptr @usb6fire_fw_fpga_upload._entry_ptr, ptr @usb6fire_fw_fpga_upload._entry_ptr.47, ptr @usb6fire_fw_fpga_upload._entry_ptr.50, ptr @usb6fire_fw_fpga_upload._entry_ptr.53, ptr @usb6fire_fw_init._entry, ptr @usb6fire_fw_init._entry.11, ptr @usb6fire_fw_init._entry.17, ptr @usb6fire_fw_init._entry.20, ptr @usb6fire_fw_init._entry.22, ptr @usb6fire_fw_init._entry.5, ptr @usb6fire_fw_init._entry.8, ptr @usb6fire_fw_init._entry_ptr, ptr @usb6fire_fw_init._entry_ptr.10, ptr @usb6fire_fw_init._entry_ptr.13, ptr @usb6fire_fw_init._entry_ptr.19, ptr @usb6fire_fw_init._entry_ptr.21, ptr @usb6fire_fw_init._entry_ptr.23, ptr @usb6fire_fw_init._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @ep_w_max_packet_size, ptr @.str.16, ptr @.str.18, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @known_fw_versions, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.52], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_fw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_fw_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_fw_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_fw_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_w_max_packet_size to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_fw_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_fw_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_fw_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_fw_ezusb_upload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_fw_ezusb_upload._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_fw_ezusb_upload._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_fw_ezusb_upload._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_fw_ezusb_upload._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_fw_ezusb_upload._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @known_fw_versions to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_fw_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 134, i32 192, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_fw_fpga_upload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_fw_fpga_upload._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_fw_fpga_upload._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_fw_fpga_upload._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb6fire_fw_init(ptr noundef %intf) local_unnamed_addr #0 align 64 {
entry:
  %actual_len.i.i = alloca i32, align 4
  %fw.i = alloca ptr, align 4
  %buffer = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buffer) #7
  %2 = getelementptr inbounds [12 x i8], ptr %buffer, i32 0, i32 1
  %3 = getelementptr inbounds [12 x i8], ptr %buffer, i32 0, i32 2
  %4 = getelementptr inbounds [12 x i8], ptr %buffer, i32 0, i32 3
  %5 = getelementptr inbounds [12 x i8], ptr %buffer, i32 0, i32 4
  %6 = getelementptr inbounds [12 x i8], ptr %buffer, i32 0, i32 5
  %7 = getelementptr inbounds [12 x i8], ptr %buffer, i32 0, i32 6
  %8 = getelementptr inbounds [12 x i8], ptr %buffer, i32 0, i32 7
  %9 = call ptr @memset(ptr %buffer, i32 255, i32 12)
  %call.i = call i32 @usb_control_msg_recv(ptr noundef %add.ptr.i, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buffer, i16 noundef zeroext 8, i32 noundef 1000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buffer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -21, i8 %11)
  %cmp.not = icmp eq i8 %11, -21
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.do.end15_crit_edge

if.end.do.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

lor.lhs.false:                                    ; preds = %if.end
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %13)
  %cmp5.not = icmp eq i8 %13, -86
  br i1 %cmp5.not, label %lor.lhs.false7, label %lor.lhs.false.do.end15_crit_edge

lor.lhs.false.do.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %15)
  %cmp10.not = icmp eq i8 %15, 85
  br i1 %cmp10.not, label %if.end30, label %lor.lhs.false7.do.end15_crit_edge

lor.lhs.false7.do.end15_crit_edge:                ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

do.end15:                                         ; preds = %lor.lhs.false7.do.end15_crit_edge, %lor.lhs.false.do.end15_crit_edge, %if.end.do.end15_crit_edge
  %dev16 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.6) #10
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %buffer, align 1
  %conv23 = zext i8 %17 to i32
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv23) #10
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %2, align 1
  %conv23.1 = zext i8 %19 to i32
  %call24.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv23.1) #10
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %3, align 1
  %conv23.2 = zext i8 %21 to i32
  %call24.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv23.2) #10
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %4, align 1
  %conv23.3 = zext i8 %23 to i32
  %call24.3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv23.3) #10
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %5, align 1
  %conv23.4 = zext i8 %25 to i32
  %call24.4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv23.4) #10
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %6, align 1
  %conv23.5 = zext i8 %27 to i32
  %call24.5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv23.5) #10
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %7, align 1
  %conv23.6 = zext i8 %29 to i32
  %call24.6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv23.6) #10
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %8, align 1
  %conv23.7 = zext i8 %31 to i32
  %call24.7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv23.7) #10
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end30:                                         ; preds = %lor.lhs.false7
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %4, align 1
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i8 %33, label %do.end76 [
    i8 1, label %if.then35
    i8 2, label %if.then45
    i8 3, label %if.then69
  ]

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %call36 = call fastcc i32 @usb6fire_fw_ezusb_upload(ptr noundef %intf, ptr noundef nonnull @.str.14, i32 noundef 0, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  %call36. = select i1 %cmp37, i32 %call36, i32 1
  br label %cleanup

if.then45:                                        ; preds = %if.end30
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(2) %5, ptr noundef nonnull dereferenceable(2) @known_fw_versions, i32 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %if.end51, label %usb6fire_fw_check.exit.thread

usb6fire_fw_check.exit.thread:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.41, ptr noundef %5) #10
  br label %cleanup

if.end51:                                         ; preds = %if.then45
  %35 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parent.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 -128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3264, i32 noundef 512) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #7
  %38 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !102
  %tobool.not.i122 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i122, label %if.end51.usb6fire_fw_fpga_upload.exit.thread_crit_edge, label %if.end.i

if.end51.usb6fire_fw_fpga_upload.exit.thread_crit_edge: ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %usb6fire_fw_fpga_upload.exit.thread

if.end.i:                                         ; preds = %if.end51
  %call2.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef nonnull @.str.15, ptr noundef %36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %do.end.i123, label %if.end5.i

do.end.i123:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev4.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.15) #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %usb6fire_fw_fpga_upload.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %39 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fw.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i, align 4
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %40, align 4
  %add.ptr.i124 = getelementptr i8, ptr %42, i32 %44
  %call.i.i = call i32 @usb_control_msg_send(ptr noundef %add.ptr.i.i, i8 noundef zeroext 0, i8 noundef zeroext 8, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool8.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool8.not.i, label %while.cond.preheader.i, label %if.then9.i

while.cond.preheader.i:                           ; preds = %if.end5.i
  %cmp15.not10.i = icmp eq ptr %42, %add.ptr.i124
  br i1 %cmp15.not10.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.cond.preheader.i.for.cond.preheader.i_crit_edge

while.cond.preheader.i.for.cond.preheader.i_crit_edge: ; preds = %while.cond.preheader.i
  br label %for.cond.preheader.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

if.then9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %45 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %46) #7
  br label %usb6fire_fw_fpga_upload.exit

for.cond.preheader.i:                             ; preds = %usb6fire_fw_fpga_write.exit.i.for.cond.preheader.i_crit_edge, %while.cond.preheader.i.for.cond.preheader.i_crit_edge
  %c.011.i = phi ptr [ %c.1.lcssa.i, %usb6fire_fw_fpga_write.exit.i.for.cond.preheader.i_crit_edge ], [ %42, %while.cond.preheader.i.for.cond.preheader.i_crit_edge ]
  %cmp16.not5.not.i = icmp eq ptr %c.011.i, %add.ptr.i124
  br i1 %cmp16.not5.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.cond.end.i_crit_edge

for.cond.preheader.i.cond.end.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %cond.end.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

cond.end.i:                                       ; preds = %cond.end.i.cond.end.i_crit_edge, %for.cond.preheader.i.cond.end.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %cond.end.i.cond.end.i_crit_edge ], [ 0, %for.cond.preheader.i.cond.end.i_crit_edge ]
  %c.17.i = phi ptr [ %incdec.ptr.i, %cond.end.i.cond.end.i_crit_edge ], [ %c.011.i, %for.cond.preheader.i.cond.end.i_crit_edge ]
  %47 = ptrtoint ptr %c.17.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %c.17.i, align 1
  %idxprom.i.i = zext i8 %48 to i32
  %arrayidx.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx.i = getelementptr i8, ptr %call7.i.i, i32 %i.08.i
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %incdec.ptr.i = getelementptr i8, ptr %c.17.i, i32 1
  %cmp16.not.i = icmp ne ptr %incdec.ptr.i, %add.ptr.i124
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %i.08.i)
  %cmp17.i = icmp ult i32 %i.08.i, 511
  %or.cond.i = select i1 %cmp16.not.i, i1 %cmp17.i, i1 false
  br i1 %or.cond.i, label %cond.end.i.cond.end.i_crit_edge, label %cond.end.i.for.end.i_crit_edge

cond.end.i.for.end.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

cond.end.i.cond.end.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

for.end.i:                                        ; preds = %cond.end.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %c.1.lcssa.i = phi ptr [ %add.ptr.i124, %for.cond.preheader.i.for.end.i_crit_edge ], [ %incdec.ptr.i, %cond.end.i.for.end.i_crit_edge ]
  %i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %inc.i, %cond.end.i.for.end.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len.i.i) #7
  %52 = ptrtoint ptr %actual_len.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %actual_len.i.i, align 4, !annotation !102
  %53 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i.i.i = shl i32 %54, 8
  %or.i.i = or i32 %shl.i.i.i, -1073676288
  %call1.i.i = call i32 @usb_bulk_msg(ptr noundef %add.ptr.i.i, i32 noundef %or.i.i, ptr noundef nonnull %call7.i.i, i32 noundef %i.0.lcssa.i, ptr noundef nonnull %actual_len.i.i, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %for.end.i.if.then43.i_crit_edge, label %if.else.i.i

for.end.i.if.then43.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43.i

if.else.i.i:                                      ; preds = %for.end.i
  %55 = ptrtoint ptr %actual_len.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %actual_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %i.0.lcssa.i)
  %cmp2.not.i.i = icmp eq i32 %56, %i.0.lcssa.i
  br i1 %cmp2.not.i.i, label %usb6fire_fw_fpga_write.exit.i, label %if.else.i.i.if.then43.i_crit_edge

if.else.i.i.if.then43.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43.i

usb6fire_fw_fpga_write.exit.i:                    ; preds = %if.else.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len.i.i) #7
  %cmp15.not.i = icmp eq ptr %c.1.lcssa.i, %add.ptr.i124
  br i1 %cmp15.not.i, label %usb6fire_fw_fpga_write.exit.i.while.end.i_crit_edge, label %usb6fire_fw_fpga_write.exit.i.for.cond.preheader.i_crit_edge

usb6fire_fw_fpga_write.exit.i.for.cond.preheader.i_crit_edge: ; preds = %usb6fire_fw_fpga_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader.i

usb6fire_fw_fpga_write.exit.i.while.end.i_crit_edge: ; preds = %usb6fire_fw_fpga_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

if.then43.i:                                      ; preds = %if.else.i.i.if.then43.i_crit_edge, %for.end.i.if.then43.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -5, %if.else.i.i.if.then43.i_crit_edge ], [ %call1.i.i, %for.end.i.if.then43.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len.i.i) #7
  %57 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %58) #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %dev47.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47.i, ptr noundef nonnull @.str.49) #10
  br label %usb6fire_fw_fpga_upload.exit.thread

while.end.i:                                      ; preds = %usb6fire_fw_fpga_write.exit.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %59 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %60) #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %call.i1.i = call i32 @usb_control_msg_send(ptr noundef %add.ptr.i.i, i8 noundef zeroext 0, i8 noundef zeroext 9, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool50.not.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool50.not.i, label %usb6fire_fw_fpga_upload.exit.thread136, label %while.end.i.usb6fire_fw_fpga_upload.exit_crit_edge

while.end.i.usb6fire_fw_fpga_upload.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %usb6fire_fw_fpga_upload.exit

usb6fire_fw_fpga_upload.exit.thread136:           ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #7
  br label %if.end56

usb6fire_fw_fpga_upload.exit.thread:              ; preds = %if.then43.i, %do.end.i123, %if.end51.usb6fire_fw_fpga_upload.exit.thread_crit_edge
  %retval.0.i125.ph = phi i32 [ -12, %if.end51.usb6fire_fw_fpga_upload.exit.thread_crit_edge ], [ %retval.0.i.ph.i, %if.then43.i ], [ -5, %do.end.i123 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #7
  br label %cleanup

usb6fire_fw_fpga_upload.exit:                     ; preds = %while.end.i.usb6fire_fw_fpga_upload.exit_crit_edge, %if.then9.i
  %.str.46.sink = phi ptr [ @.str.46, %if.then9.i ], [ @.str.52, %while.end.i.usb6fire_fw_fpga_upload.exit_crit_edge ]
  %retval.0.i125 = phi i32 [ %call.i.i, %if.then9.i ], [ %call.i1.i, %while.end.i.usb6fire_fw_fpga_upload.exit_crit_edge ]
  %dev13.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i, ptr noundef nonnull %.str.46.sink) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i125)
  %cmp53 = icmp slt i32 %retval.0.i125, 0
  br i1 %cmp53, label %usb6fire_fw_fpga_upload.exit.cleanup_crit_edge, label %usb6fire_fw_fpga_upload.exit.if.end56_crit_edge

usb6fire_fw_fpga_upload.exit.if.end56_crit_edge:  ; preds = %usb6fire_fw_fpga_upload.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

usb6fire_fw_fpga_upload.exit.cleanup_crit_edge:   ; preds = %usb6fire_fw_fpga_upload.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end56:                                         ; preds = %usb6fire_fw_fpga_upload.exit.if.end56_crit_edge, %usb6fire_fw_fpga_upload.exit.thread136
  %61 = call ptr @memcpy(ptr %buffer, ptr @ep_w_max_packet_size, i32 12)
  %call59 = call fastcc i32 @usb6fire_fw_ezusb_upload(ptr noundef %intf, ptr noundef nonnull @.str.16, i32 noundef 3, ptr noundef nonnull %buffer, i32 noundef 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  %call59. = select i1 %cmp60, i32 %call59, i32 1
  br label %cleanup

if.then69:                                        ; preds = %if.end30
  %bcmp.i126 = call i32 @bcmp(ptr noundef dereferenceable(2) %5, ptr noundef nonnull dereferenceable(2) @known_fw_versions, i32 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i126)
  %tobool.not.i127 = icmp eq i32 %bcmp.i126, 0
  br i1 %tobool.not.i127, label %if.then69.cleanup_crit_edge, label %do.end.i129

if.then69.cleanup_crit_edge:                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i129:                                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i128 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i128, ptr noundef nonnull @.str.41, ptr noundef %5) #10
  br label %cleanup

do.end76:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %dev77 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev77, ptr noundef nonnull @.str.18) #10
  %62 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %buffer, align 1
  %conv87 = zext i8 %63 to i32
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv87) #10
  %64 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %2, align 1
  %conv87.1 = zext i8 %65 to i32
  %call88.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv87.1) #10
  %66 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %3, align 1
  %conv87.2 = zext i8 %67 to i32
  %call88.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv87.2) #10
  %68 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %4, align 1
  %conv87.3 = zext i8 %69 to i32
  %call88.3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv87.3) #10
  %70 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %5, align 1
  %conv87.4 = zext i8 %71 to i32
  %call88.4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv87.4) #10
  %72 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %6, align 1
  %conv87.5 = zext i8 %73 to i32
  %call88.5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv87.5) #10
  %74 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %7, align 1
  %conv87.6 = zext i8 %75 to i32
  %call88.6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv87.6) #10
  %76 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %8, align 1
  %conv87.7 = zext i8 %77 to i32
  %call88.7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv87.7) #10
  %call96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end76, %do.end.i129, %if.then69.cleanup_crit_edge, %if.end56, %usb6fire_fw_fpga_upload.exit.cleanup_crit_edge, %usb6fire_fw_fpga_upload.exit.thread, %usb6fire_fw_check.exit.thread, %if.then35, %do.end15, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -5, %do.end15 ], [ -5, %do.end76 ], [ %call36., %if.then35 ], [ %retval.0.i125, %usb6fire_fw_fpga_upload.exit.cleanup_crit_edge ], [ %call59., %if.end56 ], [ -22, %usb6fire_fw_check.exit.thread ], [ %retval.0.i125.ph, %usb6fire_fw_fpga_upload.exit.thread ], [ -22, %do.end.i129 ], [ 0, %if.then69.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buffer) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb6fire_fw_ezusb_upload(ptr noundef %intf, ptr noundef %fwname, i32 noundef %postaddr, ptr noundef %postdata, i32 noundef %postlen) unnamed_addr #0 align 64 {
entry:
  %data = alloca i8, align 1
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #7
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #7
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fw, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 276) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %fwname, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %txt_data.i = getelementptr inbounds %struct.ihex_record, ptr %call7.i, i32 0, i32 5
  %8 = ptrtoint ptr %txt_data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %txt_data.i, align 8
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %5, align 4
  %txt_length.i = getelementptr inbounds %struct.ihex_record, ptr %call7.i, i32 0, i32 6
  %11 = ptrtoint ptr %txt_length.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %txt_length.i, align 4
  %txt_offset.i = getelementptr inbounds %struct.ihex_record, ptr %call7.i, i32 0, i32 7
  %12 = ptrtoint ptr %txt_offset.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %txt_offset.i, align 8
  %max_len.i = getelementptr inbounds %struct.ihex_record, ptr %call7.i, i32 0, i32 4
  %13 = ptrtoint ptr %max_len.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %max_len.i, align 4
  %call21.i = call fastcc zeroext i1 @usb6fire_fw_ihex_next_record(ptr noundef nonnull %call7.i) #7
  br i1 %call21.i, label %while.body.lr.ph.i, label %if.end5.while.end.i_crit_edge

if.end5.while.end.i_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end5
  %len.i = getelementptr inbounds %struct.ihex_record, ptr %call7.i, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %len.i, align 2
  %16 = ptrtoint ptr %max_len.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %max_len.i, align 4
  %18 = call i8 @llvm.umax.i8(i8 %15, i8 %17) #7
  %19 = ptrtoint ptr %max_len.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %max_len.i, align 4
  %call.i = call fastcc zeroext i1 @usb6fire_fw_ihex_next_record(ptr noundef nonnull %call7.i) #7
  br i1 %call.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end5.while.end.i_crit_edge
  %error.i = getelementptr inbounds %struct.ihex_record, ptr %call7.i, i32 0, i32 3
  %20 = ptrtoint ptr %error.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %error.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i, label %if.end13, label %if.then8

if.then8:                                         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i) #7
  %22 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %23) #7
  br label %cleanup.sink.split

if.end13:                                         ; preds = %while.end.i
  %24 = ptrtoint ptr %txt_offset.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %txt_offset.i, align 8
  %25 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %data, align 1
  %call.i94 = call i32 @usb_control_msg_send(ptr noundef %add.ptr.i, i8 noundef zeroext 0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext -6656, i16 noundef zeroext 0, ptr noundef nonnull %data, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %tobool15.not = icmp eq i32 %call.i94, 0
  br i1 %tobool15.not, label %while.cond.preheader, label %if.then16

while.cond.preheader:                             ; preds = %if.end13
  %data23 = getelementptr inbounds %struct.ihex_record, ptr %call7.i, i32 0, i32 2
  %len = getelementptr inbounds %struct.ihex_record, ptr %call7.i, i32 0, i32 1
  br label %while.cond

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i) #7
  %26 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %27) #7
  br label %cleanup.sink.split

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %call22 = call fastcc zeroext i1 @usb6fire_fw_ihex_next_record(ptr noundef nonnull %call7.i)
  br i1 %call22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %28 = ptrtoint ptr %call7.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %call7.i, align 8
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %len, align 2
  %conv2.i = zext i8 %31 to i16
  %call.i95 = call i32 @usb_control_msg_send(ptr noundef %add.ptr.i, i8 noundef zeroext 0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %29, i16 noundef zeroext 0, ptr noundef %data23, i16 noundef zeroext %conv2.i, i32 noundef 1000, i32 noundef 3264) #7
  %tobool26.not = icmp eq i32 %call.i95, 0
  br i1 %tobool26.not, label %while.body.while.cond_crit_edge, label %if.then27

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

if.then27:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i) #7
  %32 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %33) #7
  br label %cleanup.sink.split

while.end:                                        ; preds = %while.cond
  %34 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %35) #7
  call void @kfree(ptr noundef nonnull %call7.i) #7
  %tobool33.not = icmp eq ptr %postdata, null
  br i1 %tobool33.not, label %while.end.if.end43_crit_edge, label %if.then34

while.end.if.end43_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then34:                                        ; preds = %while.end
  %conv1.i = trunc i32 %postaddr to i16
  %conv2.i96 = trunc i32 %postlen to i16
  %call.i97 = call i32 @usb_control_msg_send(ptr noundef %add.ptr.i, i8 noundef zeroext 0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv1.i, i16 noundef zeroext 0, ptr noundef nonnull %postdata, i16 noundef zeroext %conv2.i96, i32 noundef 1000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool36.not = icmp eq i32 %call.i97, 0
  br i1 %tobool36.not, label %if.then34.if.end43_crit_edge, label %if.then34.cleanup.sink.split_crit_edge

if.then34.cleanup.sink.split_crit_edge:           ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then34.if.end43_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.end43:                                         ; preds = %if.then34.if.end43_crit_edge, %while.end.if.end43_crit_edge
  %36 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %data, align 1
  %call.i98 = call i32 @usb_control_msg_send(ptr noundef %add.ptr.i, i8 noundef zeroext 0, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext -6656, i16 noundef zeroext 0, ptr noundef nonnull %data, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool45.not = icmp eq i32 %call.i98, 0
  br i1 %tobool45.not, label %if.end43.cleanup_crit_edge, label %if.end43.cleanup.sink.split_crit_edge

if.end43.cleanup.sink.split_crit_edge:            ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end43.cleanup.sink.split_crit_edge, %if.then34.cleanup.sink.split_crit_edge, %if.then27, %if.then16, %if.then8, %if.then3
  %.str.39.sink = phi ptr [ @.str.33, %if.then27 ], [ @.str.30, %if.then16 ], [ @.str.27, %if.then8 ], [ @.str.24, %if.then3 ], [ @.str.36, %if.then34.cleanup.sink.split_crit_edge ], [ @.str.39, %if.end43.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i95, %if.then27 ], [ %call.i94, %if.then16 ], [ -22, %if.then8 ], [ %call2, %if.then3 ], [ %call.i97, %if.then34.cleanup.sink.split_crit_edge ], [ %call.i98, %if.end43.cleanup.sink.split_crit_edge ]
  %dev50 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev50, ptr noundef nonnull %.str.39.sink, ptr noundef %fwname) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end43.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end43.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg_recv(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @usb6fire_fw_ihex_next_record(ptr nocapture noundef %record) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %error = getelementptr inbounds %struct.ihex_record, ptr %record, i32 0, i32 3
  %0 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %error, align 1
  %txt_offset = getelementptr inbounds %struct.ihex_record, ptr %record, i32 0, i32 7
  %txt_length = getelementptr inbounds %struct.ihex_record, ptr %record, i32 0, i32 6
  %1 = ptrtoint ptr %txt_length to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %txt_length, align 4
  %3 = ptrtoint ptr %txt_offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %txt_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %2)
  %cmp186 = icmp ult i32 %4, %2
  br i1 %cmp186, label %land.rhs.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %txt_data = getelementptr inbounds %struct.ihex_record, ptr %record, i32 0, i32 5
  %5 = ptrtoint ptr %txt_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %txt_data, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %7 = phi i32 [ %4, %land.rhs.lr.ph ], [ %inc, %while.body.land.rhs_crit_edge ]
  %arrayidx = getelementptr i8, ptr %6, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %9)
  %cmp2.not = icmp eq i8 %9, 58
  br i1 %cmp2.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %inc = add i32 %7, 1
  %10 = ptrtoint ptr %txt_offset to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %inc, ptr %txt_offset, align 4
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %while.body.cleanup_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %.lcssa185 = phi i32 [ %4, %entry.while.end_crit_edge ], [ %7, %land.rhs.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa185, i32 %2)
  %cmp7 = icmp eq i32 %.lcssa185, %2
  br i1 %cmp7, label %while.end.cleanup_crit_edge, label %if.end

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %while.end
  %inc10 = add i32 %.lcssa185, 1
  %11 = ptrtoint ptr %txt_offset to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %inc10, ptr %txt_offset, align 4
  %add = add i32 %.lcssa185, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %2)
  %cmp13 = icmp ugt i32 %add, %2
  br i1 %cmp13, label %if.end.cleanup.sink.split_crit_edge, label %if.end17

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end17:                                         ; preds = %if.end
  %txt_data18 = getelementptr inbounds %struct.ihex_record, ptr %record, i32 0, i32 5
  %12 = ptrtoint ptr %txt_data18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %txt_data18, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %inc10
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr, align 1
  %call.i = tail call i32 @hex_to_bin(i8 noundef zeroext %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  %call.tr.i = trunc i32 %call.i to i8
  %conv1.i = shl i8 %call.tr.i, 4
  %val.0.i = select i1 %cmp.i, i8 %conv1.i, i8 0
  %arrayidx2.i = getelementptr i8, ptr %add.ptr, i32 1
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx2.i, align 1
  %call3.i = tail call i32 @hex_to_bin(i8 noundef zeroext %17) #7
  %18 = tail call i32 @llvm.smax.i32(i32 %call3.i, i32 0) #7
  %19 = trunc i32 %18 to i8
  %val.1.i = or i8 %val.0.i, %19
  %len = getelementptr inbounds %struct.ihex_record, ptr %record, i32 0, i32 1
  %20 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %val.1.i, ptr %len, align 2
  %21 = ptrtoint ptr %txt_offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %txt_offset, align 4
  %add21 = add i32 %22, 2
  store i32 %add21, ptr %txt_offset, align 4
  %23 = ptrtoint ptr %txt_data18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %txt_data18, align 4
  %add.ptr24 = getelementptr i8, ptr %24, i32 %add21
  %25 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr24, align 1
  %call.i134 = tail call i32 @hex_to_bin(i8 noundef zeroext %26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i134)
  %cmp.i135 = icmp sgt i32 %call.i134, -1
  %call.tr.i136 = trunc i32 %call.i134 to i8
  %conv1.i137 = shl i8 %call.tr.i136, 4
  %val.0.i138 = select i1 %cmp.i135, i8 %conv1.i137, i8 0
  %arrayidx2.i139 = getelementptr i8, ptr %add.ptr24, i32 1
  %27 = ptrtoint ptr %arrayidx2.i139 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx2.i139, align 1
  %call3.i140 = tail call i32 @hex_to_bin(i8 noundef zeroext %28) #7
  %29 = tail call i32 @llvm.smax.i32(i32 %call3.i140, i32 0) #7
  %30 = trunc i32 %29 to i8
  %val.1.i141 = or i8 %val.0.i138, %30
  %conv26 = zext i8 %val.1.i141 to i16
  %shl = shl nuw i16 %conv26, 8
  %31 = ptrtoint ptr %record to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %shl, ptr %record, align 4
  %32 = ptrtoint ptr %txt_offset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %txt_offset, align 4
  %add29 = add i32 %33, 2
  store i32 %add29, ptr %txt_offset, align 4
  %34 = ptrtoint ptr %txt_data18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %txt_data18, align 4
  %add.ptr32 = getelementptr i8, ptr %35, i32 %add29
  %36 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %add.ptr32, align 1
  %call.i143 = tail call i32 @hex_to_bin(i8 noundef zeroext %37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i143)
  %cmp.i144 = icmp sgt i32 %call.i143, -1
  %call.tr.i145 = trunc i32 %call.i143 to i8
  %conv1.i146 = shl i8 %call.tr.i145, 4
  %val.0.i147 = select i1 %cmp.i144, i8 %conv1.i146, i8 0
  %arrayidx2.i148 = getelementptr i8, ptr %add.ptr32, i32 1
  %38 = ptrtoint ptr %arrayidx2.i148 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx2.i148, align 1
  %call3.i149 = tail call i32 @hex_to_bin(i8 noundef zeroext %39) #7
  %40 = tail call i32 @llvm.smax.i32(i32 %call3.i149, i32 0) #7
  %41 = trunc i32 %40 to i8
  %val.1.i150 = or i8 %val.0.i147, %41
  %conv34 = zext i8 %val.1.i150 to i16
  %42 = ptrtoint ptr %record to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %record, align 4
  %or = or i16 %43, %conv34
  store i16 %or, ptr %record, align 4
  %44 = ptrtoint ptr %txt_offset to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %txt_offset, align 4
  %add39 = add i32 %45, 2
  store i32 %add39, ptr %txt_offset, align 4
  %46 = ptrtoint ptr %txt_data18 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %txt_data18, align 4
  %add.ptr42 = getelementptr i8, ptr %47, i32 %add39
  %48 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %add.ptr42, align 1
  %call.i152 = tail call i32 @hex_to_bin(i8 noundef zeroext %49) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i152)
  %cmp.i153 = icmp sgt i32 %call.i152, -1
  %call.tr.i154 = trunc i32 %call.i152 to i8
  %conv1.i155 = shl i8 %call.tr.i154, 4
  %val.0.i156 = select i1 %cmp.i153, i8 %conv1.i155, i8 0
  %arrayidx2.i157 = getelementptr i8, ptr %add.ptr42, i32 1
  %50 = ptrtoint ptr %arrayidx2.i157 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx2.i157, align 1
  %call3.i158 = tail call i32 @hex_to_bin(i8 noundef zeroext %51) #7
  %52 = tail call i32 @llvm.smax.i32(i32 %call3.i158, i32 0) #7
  %53 = trunc i32 %52 to i8
  %val.1.i159 = or i8 %val.0.i156, %53
  %54 = ptrtoint ptr %txt_offset to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %txt_offset, align 4
  %add45 = add i32 %55, 2
  store i32 %add45, ptr %txt_offset, align 4
  %56 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %len, align 2
  %conv48 = zext i8 %57 to i32
  %add49 = shl nuw nsw i32 %conv48, 1
  %mul = add i32 %55, 4
  %add50 = add i32 %mul, %add49
  %58 = ptrtoint ptr %txt_length to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %txt_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add50, i32 %59)
  %cmp52 = icmp ugt i32 %add50, %59
  br i1 %cmp52, label %if.end17.cleanup.sink.split_crit_edge, label %for.cond.preheader

if.end17.cleanup.sink.split_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %if.end17
  %add.i142 = add i8 %val.1.i141, %val.1.i
  %add.i151 = add i8 %add.i142, %val.1.i150
  %add.i160 = add i8 %add.i151, %val.1.i159
  %60 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp59193.not = icmp eq i8 %61, 0
  br i1 %cmp59193.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0195 = phi i32 [ %inc68, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %crc.0194 = phi i8 [ %add.i169, %for.body.for.body_crit_edge ], [ %add.i160, %for.cond.preheader.for.body_crit_edge ]
  %62 = ptrtoint ptr %txt_data18 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %txt_data18, align 4
  %64 = ptrtoint ptr %txt_offset to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %txt_offset, align 4
  %add.ptr63 = getelementptr i8, ptr %63, i32 %65
  %66 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %add.ptr63, align 1
  %call.i161 = tail call i32 @hex_to_bin(i8 noundef zeroext %67) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i161)
  %cmp.i162 = icmp sgt i32 %call.i161, -1
  %call.tr.i163 = trunc i32 %call.i161 to i8
  %conv1.i164 = shl i8 %call.tr.i163, 4
  %val.0.i165 = select i1 %cmp.i162, i8 %conv1.i164, i8 0
  %arrayidx2.i166 = getelementptr i8, ptr %add.ptr63, i32 1
  %68 = ptrtoint ptr %arrayidx2.i166 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx2.i166, align 1
  %call3.i167 = tail call i32 @hex_to_bin(i8 noundef zeroext %69) #7
  %70 = tail call i32 @llvm.smax.i32(i32 %call3.i167, i32 0) #7
  %71 = trunc i32 %70 to i8
  %val.1.i168 = or i8 %val.0.i165, %71
  %add.i169 = add i8 %val.1.i168, %crc.0194
  %arrayidx65 = getelementptr %struct.ihex_record, ptr %record, i32 0, i32 2, i32 %i.0195
  %72 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %val.1.i168, ptr %arrayidx65, align 1
  %73 = ptrtoint ptr %txt_offset to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %txt_offset, align 4
  %add67 = add i32 %74, 2
  store i32 %add67, ptr %txt_offset, align 4
  %inc68 = add nuw nsw i32 %i.0195, 1
  %75 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %len, align 2
  %conv58 = zext i8 %76 to i32
  %cmp59 = icmp ult i32 %inc68, %conv58
  br i1 %cmp59, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %crc.0.lcssa = phi i8 [ %add.i160, %for.cond.preheader.for.end_crit_edge ], [ %add.i169, %for.body.for.end_crit_edge ]
  %77 = ptrtoint ptr %txt_data18 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %txt_data18, align 4
  %79 = ptrtoint ptr %txt_offset to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %txt_offset, align 4
  %add.ptr71 = getelementptr i8, ptr %78, i32 %80
  %81 = ptrtoint ptr %add.ptr71 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %add.ptr71, align 1
  %call.i170 = tail call i32 @hex_to_bin(i8 noundef zeroext %82) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i170)
  %cmp.i171 = icmp sgt i32 %call.i170, -1
  %call.tr.i172 = trunc i32 %call.i170 to i8
  %conv1.i173 = shl i8 %call.tr.i172, 4
  %val.0.i174 = select i1 %cmp.i171, i8 %conv1.i173, i8 0
  %arrayidx2.i175 = getelementptr i8, ptr %add.ptr71, i32 1
  %83 = ptrtoint ptr %arrayidx2.i175 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx2.i175, align 1
  %call3.i176 = tail call i32 @hex_to_bin(i8 noundef zeroext %84) #7
  %85 = tail call i32 @llvm.smax.i32(i32 %call3.i176, i32 0) #7
  %86 = trunc i32 %85 to i8
  %val.1.i177 = or i8 %val.0.i174, %86
  %add.i178 = sub i8 0, %crc.0.lcssa
  call void @__sanitizer_cov_trace_cmp1(i8 %val.1.i177, i8 %add.i178)
  %tobool.not = icmp eq i8 %val.1.i177, %add.i178
  br i1 %tobool.not, label %if.end75, label %for.end.cleanup.sink.split_crit_edge

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end75:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %val.1.i159)
  %cmp77 = icmp eq i8 %val.1.i159, 1
  br i1 %cmp77, label %if.end75.cleanup_crit_edge, label %lor.lhs.false

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end75
  %87 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool80.not = icmp eq i8 %88, 0
  br i1 %tobool80.not, label %lor.lhs.false.cleanup_crit_edge, label %if.else

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %val.1.i159)
  %cmp83 = icmp eq i8 %val.1.i159, 0
  br i1 %cmp83, label %if.else.cleanup_crit_edge, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %for.end.cleanup.sink.split_crit_edge, %if.end17.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %89 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %error, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %while.end.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %while.end.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %if.end75.cleanup_crit_edge ], [ true, %if.else.cleanup_crit_edge ], [ false, %cleanup.sink.split ], [ false, %while.body.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !35, !36, !38, !39, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__UNIQUE_ID_firmware234, !1, !"__UNIQUE_ID_firmware234", i1 false, i1 false}
!1 = !{!"../sound/usb/6fire/firmware.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware235, !3, !"__UNIQUE_ID_firmware235", i1 false, i1 false}
!3 = !{!"../sound/usb/6fire/firmware.c", i32 21, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware236, !5, !"__UNIQUE_ID_firmware236", i1 false, i1 false}
!5 = !{!"../sound/usb/6fire/firmware.c", i32 22, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/usb/6fire/firmware.c", i32 355, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @usb6fire_fw_init._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @usb6fire_fw_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/usb/6fire/firmware.c", i32 360, i32 3}
!16 = !{ptr @usb6fire_fw_init._entry.5, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @usb6fire_fw_init._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/usb/6fire/firmware.c", i32 363, i32 4}
!20 = !{ptr @usb6fire_fw_init._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @usb6fire_fw_init._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/usb/6fire/firmware.c", i32 364, i32 3}
!24 = !{ptr @usb6fire_fw_init._entry.11, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @usb6fire_fw_init._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/usb/6fire/firmware.c", i32 370, i32 5}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/usb/6fire/firmware.c", i32 380, i32 39}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/usb/6fire/firmware.c", i32 385, i32 40}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/usb/6fire/firmware.c", i32 396, i32 3}
!34 = !{ptr @usb6fire_fw_init._entry.17, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @usb6fire_fw_init._entry_ptr.19, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @usb6fire_fw_init._entry.20, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../sound/usb/6fire/firmware.c", i32 399, i32 4}
!38 = !{ptr @usb6fire_fw_init._entry_ptr.21, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @usb6fire_fw_init._entry.22, !40, !"_entry", i1 false, i1 false}
!40 = !{!"../sound/usb/6fire/firmware.c", i32 400, i32 3}
!41 = !{ptr @usb6fire_fw_init._entry_ptr.23, !40, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/usb/6fire/firmware.c", i32 206, i32 3}
!44 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @usb6fire_fw_ezusb_upload._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @usb6fire_fw_ezusb_upload._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/usb/6fire/firmware.c", i32 214, i32 3}
!49 = !{ptr @usb6fire_fw_ezusb_upload._entry.26, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @usb6fire_fw_ezusb_upload._entry_ptr.28, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.30, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/usb/6fire/firmware.c", i32 224, i32 3}
!53 = !{ptr @usb6fire_fw_ezusb_upload._entry.29, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @usb6fire_fw_ezusb_upload._entry_ptr.31, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/usb/6fire/firmware.c", i32 236, i32 4}
!57 = !{ptr @usb6fire_fw_ezusb_upload._entry.32, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @usb6fire_fw_ezusb_upload._entry_ptr.34, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.36, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/usb/6fire/firmware.c", i32 249, i32 4}
!61 = !{ptr @usb6fire_fw_ezusb_upload._entry.35, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @usb6fire_fw_ezusb_upload._entry_ptr.37, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.39, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/usb/6fire/firmware.c", i32 259, i32 3}
!65 = !{ptr @usb6fire_fw_ezusb_upload._entry.38, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @usb6fire_fw_ezusb_upload._entry_ptr.40, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.41, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/usb/6fire/firmware.c", i32 337, i32 2}
!69 = !{ptr @.str.42, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @usb6fire_fw_check._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @usb6fire_fw_check._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @known_fw_versions, !73, !"known_fw_versions", i1 false, i1 false}
!73 = !{!"../sound/usb/6fire/firmware.c", i32 41, i32 17}
!74 = !{ptr @.str.43, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/usb/6fire/firmware.c", i32 283, i32 3}
!76 = !{ptr @.str.44, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @usb6fire_fw_fpga_upload._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @usb6fire_fw_fpga_upload._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.46, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/usb/6fire/firmware.c", i32 296, i32 3}
!81 = !{ptr @usb6fire_fw_fpga_upload._entry.45, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @usb6fire_fw_fpga_upload._entry_ptr.47, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.49, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/usb/6fire/firmware.c", i32 309, i32 4}
!85 = !{ptr @usb6fire_fw_fpga_upload._entry.48, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @usb6fire_fw_fpga_upload._entry_ptr.50, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.52, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/usb/6fire/firmware.c", i32 319, i32 3}
!89 = !{ptr @usb6fire_fw_fpga_upload._entry.51, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @usb6fire_fw_fpga_upload._entry_ptr.53, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @ep_w_max_packet_size, !92, !"ep_w_max_packet_size", i1 false, i1 false}
!92 = !{!"../sound/usb/6fire/firmware.c", i32 35, i32 17}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{!"auto-init"}
