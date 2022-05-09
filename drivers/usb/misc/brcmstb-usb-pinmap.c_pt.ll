; ModuleID = '/llk/IR_all_yes/drivers/usb/misc/brcmstb-usb-pinmap.c_pt.bc'
source_filename = "../drivers/usb/misc/brcmstb-usb-pinmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.brcmstb_usb_pinmap_data = type { ptr, i32, ptr, i32, ptr }
%struct.in_pin = type { i32, i32, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.out_pin = type { i32, i32, i32, i32, ptr, ptr }

@__initcall__kmod_brcmstb_usb_pinmap__192_352_brcmstb_usb_pinmap_init6 = internal global ptr @brcmstb_usb_pinmap_init, section ".initcall6.init", align 4
@__UNIQUE_ID_author193 = internal constant [58 x i8] c"brcmstb_usb_pinmap.author=Al Cooper <alcooperx@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description194 = internal constant [58 x i8] c"brcmstb_usb_pinmap.description=Broadcom USB Pinmap Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file195 = internal constant [60 x i8] c"brcmstb_usb_pinmap.file=drivers/usb/misc/brcmstb-usb-pinmap\00", section ".modinfo", align 1
@__UNIQUE_ID_license196 = internal constant [31 x i8] c"brcmstb_usb_pinmap.license=GPL\00", section ".modinfo", align 1
@brcmstb_usb_pinmap_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @brcmstb_usb_pinmap_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"brcm-usb-pinmap\00", [16 x i8] zeroinitializer }, align 32
@brcmstb_usb_pinmap_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,usb-pinmap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@brcmstb_usb_pinmap_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 303, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Error requesting IRQ\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"brcmstb_usb_pinmap_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/usb/misc/brcmstb-usb-pinmap.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@brcmstb_usb_pinmap_probe._entry_ptr = internal global ptr @brcmstb_usb_pinmap_probe._entry, section ".printk_index", align 4
@brcmstb_usb_pinmap_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 312, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error getting IRQ for %s pin\0A\00", [34 x i8] zeroinitializer }, align 32
@brcmstb_usb_pinmap_probe._entry_ptr.8 = internal global ptr @brcmstb_usb_pinmap_probe._entry.6, section ".printk_index", align 4
@brcmstb_usb_pinmap_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 322, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error requesting IRQ for %s pin\0A\00", [63 x i8] zeroinitializer }, align 32
@brcmstb_usb_pinmap_probe._entry_ptr.11 = internal global ptr @brcmstb_usb_pinmap_probe._entry.9, section ".printk_index", align 4
@brcmstb_usb_pinmap_probe.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 0, i8 81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"brcmstb_usb_pinmap\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Driver probe succeeded\0A\00", [40 x i8] zeroinitializer }, align 32
@brcmstb_usb_pinmap_probe.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.2, ptr @.str.3, ptr @.str.14, i8 0, i8 82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"In pin count: %d, out pin count: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"brcm,in-functions\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"brcm,out-functions\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@parse_pins._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 143, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error getting gpio %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"parse_pins\00", [21 x i8] zeroinitializer }, align 32
@parse_pins._entry_ptr = internal global ptr @parse_pins._entry, section ".printk_index", align 4
@parse_pins._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.3, i32 151, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error getting brcm,in-functions for %s\0A\00", [56 x i8] zeroinitializer }, align 32
@parse_pins._entry_ptr.22 = internal global ptr @parse_pins._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"brcm,in-masks\00", [18 x i8] zeroinitializer }, align 32
@parse_pins._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.19, ptr @.str.3, i32 158, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error getting 1st brcm,in-masks for %s\0A\00", [56 x i8] zeroinitializer }, align 32
@parse_pins._entry_ptr.26 = internal global ptr @parse_pins._entry.24, section ".printk_index", align 4
@parse_pins._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.19, ptr @.str.3, i32 165, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error getting 2nd brcm,in-masks for %s\0A\00", [56 x i8] zeroinitializer }, align 32
@parse_pins._entry_ptr.29 = internal global ptr @parse_pins._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@parse_pins._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 176, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@parse_pins._entry_ptr.32 = internal global ptr @parse_pins._entry.31, section ".printk_index", align 4
@parse_pins._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.19, ptr @.str.3, i32 183, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error getting brcm,out-functions for %s\0A\00", [55 x i8] zeroinitializer }, align 32
@parse_pins._entry_ptr.35 = internal global ptr @parse_pins._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"brcm,out-masks\00", [17 x i8] zeroinitializer }, align 32
@parse_pins._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.19, ptr @.str.3, i32 190, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error getting 1st brcm,out-masks for %s\0A\00", [55 x i8] zeroinitializer }, align 32
@parse_pins._entry_ptr.39 = internal global ptr @parse_pins._entry.37, section ".printk_index", align 4
@parse_pins._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.19, ptr @.str.3, i32 197, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error getting 2nd brcm,out-masks for %s\0A\00", [55 x i8] zeroinitializer }, align 32
@parse_pins._entry_ptr.42 = internal global ptr @parse_pins._entry.40, section ".printk_index", align 4
@parse_pins._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.19, ptr @.str.3, i32 204, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error getting 3rd brcm,out-masks for %s\0A\00", [55 x i8] zeroinitializer }, align 32
@parse_pins._entry_ptr.45 = internal global ptr @parse_pins._entry.43, section ".printk_index", align 4
@parse_pins._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.19, ptr @.str.3, i32 211, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error getting 4th out-masks for %s\0A\00", [60 x i8] zeroinitializer }, align 32
@parse_pins._entry_ptr.48 = internal global ptr @parse_pins._entry.46, section ".printk_index", align 4
@brcmstb_usb_pinmap_ovr_isr.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.49, ptr @.str.3, ptr @.str.50, i8 0, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"brcmstb_usb_pinmap_ovr_isr\00", [37 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: reg: 0x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@brcmstb_usb_pinmap_ovr_isr.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.49, ptr @.str.3, ptr @.str.51, i8 0, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: %s bit changed state to %d\0A\00", [32 x i8] zeroinitializer }, align 32
@brcmstb_usb_pinmap_gpio_isr.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.52, ptr @.str.3, ptr @.str.53, i8 0, i8 26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"brcmstb_usb_pinmap_gpio_isr\00", [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: %s pin changed state\0A\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.54 = private unnamed_addr constant [26 x i8] c"brcmstb_usb_pinmap_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 339, i32 31 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 341, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [28 x i8] c"brcmstb_usb_pinmap_of_match\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 334, i32 34 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 303, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 311, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 321, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 327, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 328, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 120, i32 37 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 123, i32 38 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 141, i32 42 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 143, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 150, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 154, i32 40 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 157, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 164, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 173, i32 43 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 176, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 182, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 186, i32 40 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 189, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 196, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 203, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 210, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 83, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 92, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.193 = private constant [41 x i8] c"../drivers/usb/misc/brcmstb-usb-pinmap.c\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 106, i32 2 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_author193, ptr @__UNIQUE_ID_description194, ptr @__UNIQUE_ID_file195, ptr @__UNIQUE_ID_license196, ptr @__initcall__kmod_brcmstb_usb_pinmap__192_352_brcmstb_usb_pinmap_init6, ptr @brcmstb_usb_pinmap_probe._entry, ptr @brcmstb_usb_pinmap_probe._entry.6, ptr @brcmstb_usb_pinmap_probe._entry.9, ptr @brcmstb_usb_pinmap_probe._entry_ptr, ptr @brcmstb_usb_pinmap_probe._entry_ptr.11, ptr @brcmstb_usb_pinmap_probe._entry_ptr.8, ptr @parse_pins._entry, ptr @parse_pins._entry.20, ptr @parse_pins._entry.24, ptr @parse_pins._entry.27, ptr @parse_pins._entry.31, ptr @parse_pins._entry.33, ptr @parse_pins._entry.37, ptr @parse_pins._entry.40, ptr @parse_pins._entry.43, ptr @parse_pins._entry.46, ptr @parse_pins._entry_ptr, ptr @parse_pins._entry_ptr.22, ptr @parse_pins._entry_ptr.26, ptr @parse_pins._entry_ptr.29, ptr @parse_pins._entry_ptr.32, ptr @parse_pins._entry_ptr.35, ptr @parse_pins._entry_ptr.39, ptr @parse_pins._entry_ptr.42, ptr @parse_pins._entry_ptr.45, ptr @parse_pins._entry_ptr.48, ptr @brcmstb_usb_pinmap_driver, ptr @.str, ptr @brcmstb_usb_pinmap_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_usb_pinmap_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_usb_pinmap_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_usb_pinmap_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_usb_pinmap_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_usb_pinmap_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_pins._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_pins._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_pins._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_pins._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_pins._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_pins._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_pins._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_pins._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_pins._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_pins._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_usb_pinmap_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @brcmstb_usb_pinmap_driver, ptr noundef nonnull @brcmstb_usb_pinmap_probe, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_usb_pinmap_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i.i = tail call i32 @of_property_read_string_helper(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.get_pin_counts.exit_crit_edge, label %if.end.i

entry.get_pin_counts.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_pin_counts.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i11.i = tail call i32 @of_property_read_string_helper(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef null, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i)
  %cmp2.i = icmp slt i32 %call.i11.i, 0
  %2 = tail call i32 @llvm.smax.i32(i32 %call.i11.i, i32 0)
  %spec.select188 = select i1 %cmp2.i, i32 0, i32 %call.i.i
  br label %get_pin_counts.exit

get_pin_counts.exit:                              ; preds = %if.end.i, %entry.get_pin_counts.exit_crit_edge
  %out_count.0 = phi i32 [ 0, %entry.get_pin_counts.exit_crit_edge ], [ %2, %if.end.i ]
  %in_count.0 = phi i32 [ 0, %entry.get_pin_counts.exit_crit_edge ], [ %spec.select188, %if.end.i ]
  %add = sub nsw i32 0, %out_count.0
  call void @__sanitizer_cov_trace_cmp4(i32 %in_count.0, i32 %add)
  %cmp = icmp eq i32 %in_count.0, %add
  br i1 %cmp, label %get_pin_counts.exit.cleanup_crit_edge, label %if.end

get_pin_counts.exit.cleanup_crit_edge:            ; preds = %get_pin_counts.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %get_pin_counts.exit
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %mul = mul i32 %in_count.0, 20
  %mul5 = mul i32 %out_count.0, 24
  %add4 = add i32 %mul5, 20
  %add6 = add i32 %add4, %mul
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %add6, i32 noundef 3520) #5
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end2.cleanup_crit_edge, label %if.end10

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end2
  %in_count11 = getelementptr inbounds %struct.brcmstb_usb_pinmap_data, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %in_count11 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %in_count.0, ptr %in_count11, align 4
  %out_count12 = getelementptr inbounds %struct.brcmstb_usb_pinmap_data, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %out_count12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %out_count.0, ptr %out_count12, align 4
  %add.ptr = getelementptr %struct.brcmstb_usb_pinmap_data, ptr %call.i, i32 1
  %in_pins = getelementptr inbounds %struct.brcmstb_usb_pinmap_data, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %in_pins to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %in_pins, align 4
  %add.ptr14 = getelementptr %struct.in_pin, ptr %add.ptr, i32 %in_count.0
  %out_pins = getelementptr inbounds %struct.brcmstb_usb_pinmap_data, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %out_pins to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr14, ptr %out_pins, align 4
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %8
  %add.i = add i32 %sub.i, %10
  %call17 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %8, i32 noundef %add.i) #5
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call17, ptr %call.i, align 4
  %tobool19.not = icmp eq ptr %call17, null
  br i1 %tobool19.not, label %if.end10.cleanup_crit_edge, label %if.end21

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.end10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %13 = ptrtoint ptr %in_pins to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %in_pins, align 4
  %15 = ptrtoint ptr %in_count11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %in_count11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp211.i = icmp sgt i32 %16, 0
  br i1 %cmp211.i, label %if.end21.for.body.i_crit_edge, label %if.end21.for.end.i_crit_edge

if.end21.for.end.i_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.end21.for.body.i_crit_edge:                    ; preds = %if.end21
  br label %for.body.i

for.body.i:                                       ; preds = %if.end30.i.for.body.i_crit_edge, %if.end21.for.body.i_crit_edge
  %x.0214.i = phi i32 [ %inc32.i, %if.end30.i.for.body.i_crit_edge ], [ 0, %if.end21.for.body.i_crit_edge ]
  %index.0213.i = phi i32 [ %inc22.i, %if.end30.i.for.body.i_crit_edge ], [ 0, %if.end21.for.body.i_crit_edge ]
  %pin.0212.i = phi ptr [ %incdec.ptr.i, %if.end30.i.for.body.i_crit_edge ], [ %14, %if.end21.for.body.i_crit_edge ]
  %call.i152 = tail call ptr @devm_gpiod_get_index(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %x.0214.i, i32 noundef 1) #5
  %gpiod.i = getelementptr inbounds %struct.in_pin, ptr %pin.0212.i, i32 0, i32 2
  %17 = ptrtoint ptr %gpiod.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i152, ptr %gpiod.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i152, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i154

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %gpiod.i.le = getelementptr inbounds %struct.in_pin, ptr %pin.0212.i, i32 0, i32 2
  br label %parse_pins.exit

if.end.i154:                                      ; preds = %for.body.i
  %name5.i = getelementptr inbounds %struct.in_pin, ptr %pin.0212.i, i32 0, i32 3
  %call.i.i153 = tail call i32 @of_property_read_string_helper(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef %name5.i, i32 noundef 1, i32 noundef %x.0214.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i153)
  %cmp7.i = icmp slt i32 %call.i.i153, 0
  br i1 %cmp7.i, label %do.end11.i, label %if.end13.i

do.end11.i:                                       ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %name5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name5.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef %19) #8
  br label %cleanup

if.end13.i:                                       ; preds = %if.end.i154
  %call14.i = tail call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %index.0213.i, ptr noundef %pin.0212.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %do.end19.i, label %if.end21.i

do.end19.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %name5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name5.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef %21) #8
  br label %cleanup

if.end21.i:                                       ; preds = %if.end13.i
  %inc.i = or i32 %index.0213.i, 1
  %value_mask.i = getelementptr inbounds %struct.in_pin, ptr %pin.0212.i, i32 0, i32 1
  %call23.i = tail call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %inc.i, ptr noundef %value_mask.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 0
  br i1 %cmp24.i, label %do.end28.i, label %if.end30.i

do.end28.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %name5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name5.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef %23) #8
  br label %cleanup

if.end30.i:                                       ; preds = %if.end21.i
  %inc22.i = add nuw i32 %index.0213.i, 2
  %pdata31.i = getelementptr inbounds %struct.in_pin, ptr %pin.0212.i, i32 0, i32 4
  %24 = ptrtoint ptr %pdata31.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %pdata31.i, align 4
  %incdec.ptr.i = getelementptr %struct.in_pin, ptr %pin.0212.i, i32 1
  %inc32.i = add nuw nsw i32 %x.0214.i, 1
  %25 = ptrtoint ptr %in_count11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %in_count11, align 4
  %cmp.i155 = icmp slt i32 %inc32.i, %26
  br i1 %cmp.i155, label %if.end30.i.for.body.i_crit_edge, label %if.end30.i.for.end.i_crit_edge

if.end30.i.for.end.i_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.end30.i.for.body.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %if.end30.i.for.end.i_crit_edge, %if.end21.for.end.i_crit_edge
  %pin.0.lcssa.i = phi ptr [ %14, %if.end21.for.end.i_crit_edge ], [ %incdec.ptr.i, %if.end30.i.for.end.i_crit_edge ]
  %27 = ptrtoint ptr %out_count12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %out_count12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp34215.i = icmp sgt i32 %28, 0
  br i1 %cmp34215.i, label %for.body35.preheader.i, label %for.end.i.for.end.i167_crit_edge

for.end.i.for.end.i167_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i167

for.body35.preheader.i:                           ; preds = %for.end.i
  %29 = ptrtoint ptr %out_pins to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %out_pins, align 4
  br label %for.body35.i

for.body35.i:                                     ; preds = %if.end94.i.for.body35.i_crit_edge, %for.body35.preheader.i
  %x.1218.i = phi i32 [ %inc97.i, %if.end94.i.for.body35.i_crit_edge ], [ 0, %for.body35.preheader.i ]
  %index.1217.i = phi i32 [ %inc86.i, %if.end94.i.for.body35.i_crit_edge ], [ 0, %for.body35.preheader.i ]
  %pout.0216.i = phi ptr [ %incdec.ptr95.i, %if.end94.i.for.body35.i_crit_edge ], [ %30, %for.body35.preheader.i ]
  %call36.i = tail call ptr @devm_gpiod_get_index(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %x.1218.i, i32 noundef 7) #5
  %gpiod37.i = getelementptr inbounds %struct.out_pin, ptr %pout.0216.i, i32 0, i32 4
  %31 = ptrtoint ptr %gpiod37.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call36.i, ptr %gpiod37.i, align 4
  %cmp.i177.i = icmp ugt ptr %call36.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i177.i, label %do.end43.i, label %if.end47.i

do.end43.i:                                       ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #7
  %gpiod37.i.le = getelementptr inbounds %struct.out_pin, ptr %pout.0216.i, i32 0, i32 4
  br label %parse_pins.exit

if.end47.i:                                       ; preds = %for.body35.i
  %name48.i = getelementptr inbounds %struct.out_pin, ptr %pout.0216.i, i32 0, i32 5
  %call.i178.i = tail call i32 @of_property_read_string_helper(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef %name48.i, i32 noundef 1, i32 noundef %x.1218.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178.i)
  %cmp50.i = icmp slt i32 %call.i178.i, 0
  br i1 %cmp50.i, label %do.end54.i, label %if.end56.i

do.end54.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %name48.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name48.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef %33) #8
  br label %cleanup

if.end56.i:                                       ; preds = %if.end47.i
  %call59.i = tail call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %index.1217.i, ptr noundef %pout.0216.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %cmp60.i = icmp slt i32 %call59.i, 0
  br i1 %cmp60.i, label %do.end64.i, label %if.end66.i

do.end64.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %name48.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name48.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, ptr noundef %35) #8
  br label %cleanup

if.end66.i:                                       ; preds = %if.end56.i
  %inc57.i = or i32 %index.1217.i, 1
  %value_mask68.i = getelementptr inbounds %struct.out_pin, ptr %pout.0216.i, i32 0, i32 1
  %call69.i = tail call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %inc57.i, ptr noundef %value_mask68.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %cmp70.i = icmp slt i32 %call69.i, 0
  br i1 %cmp70.i, label %do.end74.i, label %if.end76.i

do.end74.i:                                       ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %name48.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name48.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef %37) #8
  br label %cleanup

if.end76.i:                                       ; preds = %if.end66.i
  %inc67.i = or i32 %index.1217.i, 2
  %changed_mask.i = getelementptr inbounds %struct.out_pin, ptr %pout.0216.i, i32 0, i32 2
  %call78.i = tail call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %inc67.i, ptr noundef %changed_mask.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %cmp79.i = icmp slt i32 %call78.i, 0
  br i1 %cmp79.i, label %do.end83.i, label %if.end85.i

do.end83.i:                                       ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %name48.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name48.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44, ptr noundef %39) #8
  br label %cleanup

if.end85.i:                                       ; preds = %if.end76.i
  %inc77.i = or i32 %index.1217.i, 3
  %clr_changed_mask.i = getelementptr inbounds %struct.out_pin, ptr %pout.0216.i, i32 0, i32 3
  %call87.i = tail call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %inc77.i, ptr noundef %clr_changed_mask.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.i)
  %cmp88.i = icmp slt i32 %call87.i, 0
  br i1 %cmp88.i, label %do.end92.i, label %if.end94.i

do.end92.i:                                       ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %name48.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name48.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef %41) #8
  br label %cleanup

if.end94.i:                                       ; preds = %if.end85.i
  %inc86.i = add i32 %index.1217.i, 4
  %incdec.ptr95.i = getelementptr %struct.out_pin, ptr %pout.0216.i, i32 1
  %inc97.i = add nuw nsw i32 %x.1218.i, 1
  %42 = ptrtoint ptr %out_count12 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %out_count12, align 4
  %cmp34.i = icmp slt i32 %inc97.i, %43
  br i1 %cmp34.i, label %if.end94.i.for.body35.i_crit_edge, label %if.end94.i.if.end26_crit_edge

if.end94.i.if.end26_crit_edge:                    ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.end94.i.for.body35.i_crit_edge:                ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body35.i

parse_pins.exit:                                  ; preds = %do.end43.i, %do.end.i
  %pin.0212.i.lcssa331.sink = phi ptr [ %pin.0212.i, %do.end.i ], [ %pin.0.lcssa.i, %do.end43.i ]
  %retval.0.i156.in.in = phi ptr [ %gpiod.i.le, %do.end.i ], [ %gpiod37.i.le, %do.end43.i ]
  %name.i = getelementptr inbounds %struct.in_pin, ptr %pin.0212.i.lcssa331.sink, i32 0, i32 3
  %44 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef %45) #8
  %46 = ptrtoint ptr %retval.0.i156.in.in to i32
  call void @__asan_load4_noabort(i32 %46)
  %retval.0.i156.in = load ptr, ptr %retval.0.i156.in.in, align 4
  %retval.0.i156 = ptrtoint ptr %retval.0.i156.in to i32
  %tobool24.not = icmp eq ptr %retval.0.i156.in, null
  br i1 %tobool24.not, label %if.end26thread-pre-split, label %parse_pins.exit.cleanup_crit_edge

parse_pins.exit.cleanup_crit_edge:                ; preds = %parse_pins.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26thread-pre-split:                         ; preds = %parse_pins.exit
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %out_count12 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pr = load i32, ptr %out_count12, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end26thread-pre-split, %if.end94.i.if.end26_crit_edge
  %48 = phi i32 [ %.pr, %if.end26thread-pre-split ], [ %43, %if.end94.i.if.end26_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp35.i = icmp sgt i32 %48, 0
  br i1 %cmp35.i, label %for.body.preheader.i, label %if.end26.for.end.i167_crit_edge

if.end26.for.end.i167_crit_edge:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i167

for.body.preheader.i:                             ; preds = %if.end26
  %49 = ptrtoint ptr %out_pins to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %out_pins, align 4
  br label %for.body.i165

for.body.i165:                                    ; preds = %for.body.i165.for.body.i165_crit_edge, %for.body.preheader.i
  %pout.037.i = phi ptr [ %incdec.ptr.i162, %for.body.i165.for.body.i165_crit_edge ], [ %50, %for.body.preheader.i ]
  %x.036.i = phi i32 [ %inc.i163, %for.body.i165.for.body.i165_crit_edge ], [ 0, %for.body.preheader.i ]
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call.i, align 4
  %53 = ptrtoint ptr %pout.037.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pout.037.i, align 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #5, !srcloc !110
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  %or.i.i = or i32 %56, %54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  %57 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %57) #5, !srcloc !113
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i, align 4
  %clr_changed_mask.i159 = getelementptr inbounds %struct.out_pin, ptr %pout.037.i, i32 0, i32 3
  %60 = ptrtoint ptr %clr_changed_mask.i159 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %clr_changed_mask.i159, align 4
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #5, !srcloc !110
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  %or.i33.i = or i32 %63, %61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  %64 = tail call i32 @llvm.bswap.i32(i32 %or.i33.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %64) #5, !srcloc !113
  %65 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call.i, align 4
  %67 = ptrtoint ptr %clr_changed_mask.i159 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %clr_changed_mask.i159, align 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #5, !srcloc !110
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  %neg.i.i = xor i32 %68, -1
  %and.i.i = and i32 %70, %neg.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  %71 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %71) #5, !srcloc !113
  %72 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call.i, align 4
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #5, !srcloc !110
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  %value_mask.i160 = getelementptr inbounds %struct.out_pin, ptr %pout.037.i, i32 0, i32 1
  %76 = ptrtoint ptr %value_mask.i160 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %value_mask.i160, align 4
  %and.i = and i32 %77, %75
  %gpiod.i161 = getelementptr inbounds %struct.out_pin, ptr %pout.037.i, i32 0, i32 4
  %78 = ptrtoint ptr %gpiod.i161 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %gpiod.i161, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %cond.i = zext i1 %tobool.not.i to i32
  tail call void @gpiod_set_value(ptr noundef %79, i32 noundef %cond.i) #5
  %incdec.ptr.i162 = getelementptr %struct.out_pin, ptr %pout.037.i, i32 1
  %inc.i163 = add nuw nsw i32 %x.036.i, 1
  %80 = ptrtoint ptr %out_count12 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %out_count12, align 4
  %cmp.i164 = icmp slt i32 %inc.i163, %81
  br i1 %cmp.i164, label %for.body.i165.for.body.i165_crit_edge, label %for.body.i165.for.end.i167_crit_edge

for.body.i165.for.end.i167_crit_edge:             ; preds = %for.body.i165
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i167

for.body.i165.for.body.i165_crit_edge:            ; preds = %for.body.i165
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i165

for.end.i167:                                     ; preds = %for.body.i165.for.end.i167_crit_edge, %if.end26.for.end.i167_crit_edge, %for.end.i.for.end.i167_crit_edge
  %82 = ptrtoint ptr %in_count11 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %in_count11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp738.i = icmp sgt i32 %83, 0
  br i1 %cmp738.i, label %for.body8.preheader.i, label %for.end.i167.sync_all_pins.exit_crit_edge

for.end.i167.sync_all_pins.exit_crit_edge:        ; preds = %for.end.i167
  call void @__sanitizer_cov_trace_pc() #7
  br label %sync_all_pins.exit

for.body8.preheader.i:                            ; preds = %for.end.i167
  %84 = ptrtoint ptr %in_pins to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %in_pins, align 4
  br label %for.body8.i

for.body8.i:                                      ; preds = %sync_in_pin.exit.i.for.body8.i_crit_edge, %for.body8.preheader.i
  %pin.040.i = phi ptr [ %incdec.ptr11.i, %sync_in_pin.exit.i.for.body8.i_crit_edge ], [ %85, %for.body8.preheader.i ]
  %x.139.i = phi i32 [ %inc13.i, %sync_in_pin.exit.i.for.body8.i_crit_edge ], [ 0, %for.body8.preheader.i ]
  %gpiod.i.i = getelementptr inbounds %struct.in_pin, ptr %pin.040.i, i32 0, i32 2
  %86 = ptrtoint ptr %gpiod.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %gpiod.i.i, align 4
  %call.i.i169 = tail call i32 @gpiod_get_value(ptr noundef %87) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i169)
  %tobool.not.i.i = icmp eq i32 %call.i.i169, 0
  %pdata1.i.i = getelementptr inbounds %struct.in_pin, ptr %pin.040.i, i32 0, i32 4
  %88 = ptrtoint ptr %pdata1.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pdata1.i.i, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %value_mask3.i.i = getelementptr inbounds %struct.in_pin, ptr %pin.040.i, i32 0, i32 1
  %92 = ptrtoint ptr %value_mask3.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %value_mask3.i.i, align 4
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #5
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  %or.i.i.i = or i32 %95, %93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  %96 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %96) #5, !srcloc !113
  br label %sync_in_pin.exit.i

if.else.i.i:                                      ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  %neg.i.i.i = xor i32 %93, -1
  %and.i.i.i = and i32 %95, %neg.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  %97 = tail call i32 @llvm.bswap.i32(i32 %and.i.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %97) #5, !srcloc !113
  br label %sync_in_pin.exit.i

sync_in_pin.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %98 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %call.i, align 4
  %100 = ptrtoint ptr %pin.040.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pin.040.i, align 4
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #5, !srcloc !110
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  %or.i34.i = or i32 %103, %101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  %104 = tail call i32 @llvm.bswap.i32(i32 %or.i34.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %104) #5, !srcloc !113
  %incdec.ptr11.i = getelementptr %struct.in_pin, ptr %pin.040.i, i32 1
  %inc13.i = add nuw nsw i32 %x.139.i, 1
  %105 = ptrtoint ptr %in_count11 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %in_count11, align 4
  %cmp7.i170 = icmp slt i32 %inc13.i, %106
  br i1 %cmp7.i170, label %sync_in_pin.exit.i.for.body8.i_crit_edge, label %sync_in_pin.exit.i.sync_all_pins.exit_crit_edge

sync_in_pin.exit.i.sync_all_pins.exit_crit_edge:  ; preds = %sync_in_pin.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sync_all_pins.exit

sync_in_pin.exit.i.for.body8.i_crit_edge:         ; preds = %sync_in_pin.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body8.i

sync_all_pins.exit:                               ; preds = %sync_in_pin.exit.i.sync_all_pins.exit_crit_edge, %for.end.i167.sync_all_pins.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out_count.0)
  %tobool27.not = icmp eq i32 %out_count.0, 0
  br i1 %tobool27.not, label %sync_all_pins.exit.if.end39_crit_edge, label %if.then28

sync_all_pins.exit.if.end39_crit_edge:            ; preds = %sync_all_pins.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then28:                                        ; preds = %sync_all_pins.exit
  %call29 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then28.cleanup_crit_edge, label %if.end32

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end32:                                         ; preds = %if.then28
  %107 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pdev, align 8
  %call.i171 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call29, ptr noundef nonnull @brcmstb_usb_pinmap_ovr_isr, ptr noundef null, i32 noundef 1, ptr noundef %108, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171)
  %cmp35 = icmp slt i32 %call.i171, 0
  br i1 %cmp35, label %do.end, label %if.end32.if.end39_crit_edge

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

do.end:                                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end39:                                         ; preds = %if.end32.if.end39_crit_edge, %sync_all_pins.exit.if.end39_crit_edge
  %109 = ptrtoint ptr %in_count11 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %in_count11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp42236 = icmp sgt i32 %110, 0
  br i1 %cmp42236, label %for.body.preheader, label %if.end39.do.body63_crit_edge

if.end39.do.body63_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body63

for.body.preheader:                               ; preds = %if.end39
  %111 = ptrtoint ptr %in_pins to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %in_pins, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %pin.0238 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %112, %for.body.preheader ]
  %x.0237 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %gpiod = getelementptr inbounds %struct.in_pin, ptr %pin.0238, i32 0, i32 2
  %113 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %gpiod, align 4
  %call43 = tail call i32 @gpiod_to_irq(ptr noundef %114) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %do.end48, label %if.end51

do.end48:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %name50 = getelementptr inbounds %struct.in_pin, ptr %pin.0238, i32 0, i32 3
  %115 = ptrtoint ptr %name50 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %name50, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef %116) #8
  br label %cleanup

if.end51:                                         ; preds = %for.body
  %117 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pdev, align 8
  %call.i172 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call43, ptr noundef nonnull @brcmstb_usb_pinmap_gpio_isr, ptr noundef null, i32 noundef 131, ptr noundef %118, ptr noundef %pin.0238) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i172)
  %cmp55 = icmp slt i32 %call.i172, 0
  br i1 %cmp55, label %do.end59, label %for.inc

do.end59:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %name61 = getelementptr inbounds %struct.in_pin, ptr %pin.0238, i32 0, i32 3
  %119 = ptrtoint ptr %name61 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %name61, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %120) #8
  br label %cleanup

for.inc:                                          ; preds = %if.end51
  %inc = add nuw nsw i32 %x.0237, 1
  %incdec.ptr = getelementptr %struct.in_pin, ptr %pin.0238, i32 1
  %121 = ptrtoint ptr %in_count11 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %in_count11, align 4
  %cmp42 = icmp slt i32 %inc, %122
  br i1 %cmp42, label %for.inc.for.body_crit_edge, label %for.inc.do.body63_crit_edge

for.inc.do.body63_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body63

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.body63:                                        ; preds = %for.inc.do.body63_crit_edge, %if.end39.do.body63_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmstb_usb_pinmap_probe.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmstb_usb_pinmap_probe, %if.then68)) #5
          to label %do.body73 [label %if.then68], !srcloc !117

if.then68:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcmstb_usb_pinmap_probe.__UNIQUE_ID_ddebug190, ptr noundef %dev, ptr noundef nonnull @.str.13) #5
  br label %do.body73

do.body73:                                        ; preds = %if.then68, %do.body63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmstb_usb_pinmap_probe.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmstb_usb_pinmap_probe, %if.then85)) #5
          to label %cleanup [label %if.then85], !srcloc !117

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #7
  %123 = ptrtoint ptr %in_count11 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %in_count11, align 4
  %125 = ptrtoint ptr %out_count12 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %out_count12, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcmstb_usb_pinmap_probe.__UNIQUE_ID_ddebug191, ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %124, i32 noundef %126) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then85, %do.body73, %do.end59, %do.end48, %do.end, %if.then28.cleanup_crit_edge, %parse_pins.exit.cleanup_crit_edge, %do.end92.i, %do.end83.i, %do.end74.i, %do.end64.i, %do.end54.i, %do.end28.i, %do.end19.i, %do.end11.i, %if.end10.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %get_pin_counts.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i171, %do.end ], [ %call43, %do.end48 ], [ %call.i172, %do.end59 ], [ -22, %get_pin_counts.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end2.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ %retval.0.i156, %parse_pins.exit.cleanup_crit_edge ], [ %call29, %if.then28.cleanup_crit_edge ], [ 0, %if.then85 ], [ 0, %do.body73 ], [ %call87.i, %do.end92.i ], [ %call78.i, %do.end83.i ], [ %call69.i, %do.end74.i ], [ %call59.i, %do.end64.i ], [ %call.i178.i, %do.end54.i ], [ %call23.i, %do.end28.i ], [ %call14.i, %do.end19.i ], [ %call.i.i153, %do.end11.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_usb_pinmap_ovr_isr(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmstb_usb_pinmap_ovr_isr.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmstb_usb_pinmap_ovr_isr, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !117

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !110
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @brcmstb_usb_pinmap_ovr_isr.__UNIQUE_ID_ddebug187, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, i32 noundef %3) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %out_count = getelementptr inbounds %struct.brcmstb_usb_pinmap_data, ptr %dev_id, i32 0, i32 3
  %4 = ptrtoint ptr %out_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp56 = icmp sgt i32 %5, 0
  br i1 %cmp56, label %for.body.lr.ph, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %out_pins = getelementptr inbounds %struct.brcmstb_usb_pinmap_data, ptr %dev_id, i32 0, i32 4
  %6 = ptrtoint ptr %out_pins to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %out_pins, align 4
  %changed_mask = getelementptr inbounds %struct.out_pin, ptr %7, i32 0, i32 2
  %clr_changed_mask = getelementptr inbounds %struct.out_pin, ptr %7, i32 0, i32 3
  %value_mask = getelementptr inbounds %struct.out_pin, ptr %7, i32 0, i32 1
  %gpiod = getelementptr inbounds %struct.out_pin, ptr %7, i32 0, i32 4
  %name = getelementptr inbounds %struct.out_pin, ptr %7, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %x.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_id, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !110
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !119
  %12 = ptrtoint ptr %changed_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %changed_mask, align 4
  %and = and i32 %13, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %for.body.for.inc_crit_edge, label %if.then13

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_id, align 4
  %16 = ptrtoint ptr %clr_changed_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %clr_changed_mask, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !110
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  %or.i = or i32 %19, %17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %20) #5, !srcloc !113
  %21 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_id, align 4
  %23 = ptrtoint ptr %clr_changed_mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clr_changed_mask, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !110
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  %neg.i = xor i32 %24, -1
  %and.i = and i32 %26, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  %27 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %27) #5, !srcloc !113
  %28 = ptrtoint ptr %value_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %value_mask, align 4
  %and17 = and i32 %29, %11
  %30 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %gpiod, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp ne i32 %and17, 0
  %cond = zext i1 %tobool18.not to i32
  tail call void @gpiod_set_value(ptr noundef %31, i32 noundef %cond) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmstb_usb_pinmap_ovr_isr.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmstb_usb_pinmap_ovr_isr, %if.then31)) #5
          to label %for.inc [label %if.then31], !srcloc !117

if.then31:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @brcmstb_usb_pinmap_ovr_isr.__UNIQUE_ID_ddebug188, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.49, ptr noundef %33, i32 noundef %cond) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then31, %if.then13, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %x.057, 1
  %34 = ptrtoint ptr %out_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %out_count, align 4
  %cmp = icmp slt i32 %inc, %35
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_usb_pinmap_gpio_isr(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmstb_usb_pinmap_gpio_isr.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmstb_usb_pinmap_gpio_isr, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !117

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.in_pin, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @brcmstb_usb_pinmap_gpio_isr.__UNIQUE_ID_ddebug189, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, ptr noundef %1) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %gpiod.i = getelementptr inbounds %struct.in_pin, ptr %dev_id, i32 0, i32 2
  %2 = ptrtoint ptr %gpiod.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpiod.i, align 4
  %call.i = tail call i32 @gpiod_get_value(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %pdata1.i = getelementptr inbounds %struct.in_pin, ptr %dev_id, i32 0, i32 4
  %4 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata1.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %value_mask3.i = getelementptr inbounds %struct.in_pin, ptr %dev_id, i32 0, i32 1
  %8 = ptrtoint ptr %value_mask3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value_mask3.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %or.i.i = or i32 %11, %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %12) #5, !srcloc !113
  br label %sync_in_pin.exit

if.else.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %neg.i.i = xor i32 %9, -1
  %and.i.i = and i32 %11, %neg.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  %13 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %13) #5, !srcloc !113
  br label %sync_in_pin.exit

sync_in_pin.exit:                                 ; preds = %if.else.i, %if.then.i
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !40, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !57, !58, !59, !61, !62, !63, !65, !67, !68, !70, !71, !72, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !99, !100}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @__initcall__kmod_brcmstb_usb_pinmap__192_352_brcmstb_usb_pinmap_init6, !1, !"__initcall__kmod_brcmstb_usb_pinmap__192_352_brcmstb_usb_pinmap_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/misc/brcmstb-usb-pinmap.c", i32 352, i32 1}
!2 = !{ptr @__UNIQUE_ID_author193, !3, !"__UNIQUE_ID_author193", i1 false, i1 false}
!3 = !{!"../drivers/usb/misc/brcmstb-usb-pinmap.c", i32 353, i32 1}
!4 = !{ptr @__UNIQUE_ID_description194, !5, !"__UNIQUE_ID_description194", i1 false, i1 false}
!5 = !{!"../drivers/usb/misc/brcmstb-usb-pinmap.c", i32 354, i32 1}
!6 = !{ptr @__UNIQUE_ID_file195, !7, !"__UNIQUE_ID_file195", i1 false, i1 false}
!7 = !{!"../drivers/usb/misc/brcmstb-usb-pinmap.c", i32 355, i32 1}
!8 = !{ptr @__UNIQUE_ID_license196, !7, !"__UNIQUE_ID_license196", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/usb/misc/brcmstb-usb-pinmap.c", i32 341, i32 11}
!11 = !{ptr @brcmstb_usb_pinmap_driver, !12, !"brcmstb_usb_pinmap_driver", i1 false, i1 false}
!12 = !{!"../drivers/usb/misc/brcmstb-usb-pinmap.c", i32 339, i32 31}
!13 = !{ptr @brcmstb_usb_pinmap_of_match, !14, !"brcmstb_usb_pinmap_of_match", i1 false, i1 false}
!14 = !{!"../drivers/usb/misc/brcmstb-usb-pinmap.c", i32 334, i32 34}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/misc/brcmstb-usb-pinmap.c", i32 303, i32 4}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @brcmstb_usb_pinmap_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @brcmstb_usb_pinmap_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/misc/brcmstb-usb-pinmap.c", i32 311, i32 4}
!25 = !{ptr @brcmstb_usb_pinmap_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @brcmstb_usb_pinmap_probe._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/misc/brcmstb-usb-pinmap.c", i32 321, i32 4}
!29 = !{ptr @brcmstb_usb_pinmap_probe._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @brcmstb_usb_pinmap_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/misc/brcmstb-usb-pinmap.c", i32 327, i32 2}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @brcmstb_usb_pinmap_probe.__UNIQUE_ID_ddebug190, !32, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/misc/brcmstb-usb-pinmap.c", i32 328, i32 2}
!37 = !{ptr @brcmstb_usb_pinmap_probe.__UNIQUE_ID_ddebug191, !36, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/misc/brcmstb-usb-pinmap.c", i32 120, i32 37}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/misc/brcmstb-usb-pinmap.c", i32 123, i32 38}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/misc/brcmstb-usb-pinmap.c", i32 141, i32 42}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/misc/brcmstb-usb-pinmap.c", i32 143, i32 4}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @parse_pins._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @parse_pins._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/misc/brcmstb-usb-pinmap.c", i32 150, i32 4}
!51 = !{ptr @parse_pins._entry.20, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @parse_pins._entry_ptr.22, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/misc/brcmstb-usb-pinmap.c", i32 154, i32 40}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/misc/brcmstb-usb-pinmap.c", i32 157, i32 4}
!57 = !{ptr @parse_pins._entry.24, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @parse_pins._entry_ptr.26, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/misc/brcmstb-usb-pinmap.c", i32 164, i32 4}
!61 = !{ptr @parse_pins._entry.27, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @parse_pins._entry_ptr.29, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/misc/brcmstb-usb-pinmap.c", i32 173, i32 43}
!65 = !{ptr @parse_pins._entry.31, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../drivers/usb/misc/brcmstb-usb-pinmap.c", i32 176, i32 4}
!67 = !{ptr @parse_pins._entry_ptr.32, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/misc/brcmstb-usb-pinmap.c", i32 182, i32 4}
!70 = !{ptr @parse_pins._entry.33, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @parse_pins._entry_ptr.35, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/misc/brcmstb-usb-pinmap.c", i32 186, i32 40}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/misc/brcmstb-usb-pinmap.c", i32 189, i32 4}
!76 = !{ptr @parse_pins._entry.37, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @parse_pins._entry_ptr.39, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/misc/brcmstb-usb-pinmap.c", i32 196, i32 4}
!80 = !{ptr @parse_pins._entry.40, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @parse_pins._entry_ptr.42, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/misc/brcmstb-usb-pinmap.c", i32 203, i32 4}
!84 = !{ptr @parse_pins._entry.43, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @parse_pins._entry_ptr.45, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/misc/brcmstb-usb-pinmap.c", i32 210, i32 4}
!88 = !{ptr @parse_pins._entry.46, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @parse_pins._entry_ptr.48, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.49, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/misc/brcmstb-usb-pinmap.c", i32 83, i32 2}
!92 = !{ptr @.str.50, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @brcmstb_usb_pinmap_ovr_isr.__UNIQUE_ID_ddebug187, !91, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!94 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/misc/brcmstb-usb-pinmap.c", i32 92, i32 4}
!96 = !{ptr @brcmstb_usb_pinmap_ovr_isr.__UNIQUE_ID_ddebug188, !95, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!97 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/misc/brcmstb-usb-pinmap.c", i32 106, i32 2}
!99 = !{ptr @.str.53, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @brcmstb_usb_pinmap_gpio_isr.__UNIQUE_ID_ddebug189, !98, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{i64 4879189}
!111 = !{i64 2153110361}
!112 = !{i64 2153110561}
!113 = !{i64 4878771}
!114 = !{i64 2153111152}
!115 = !{i64 2153111352}
!116 = !{i64 2153137218}
!117 = !{i64 2148959973, i64 2148959978, i64 2148959991, i64 2148960035, i64 2148960069, i64 2148960090}
!118 = !{i64 2153114251}
!119 = !{i64 2153114713}
