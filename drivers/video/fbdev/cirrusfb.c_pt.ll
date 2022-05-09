; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/cirrusfb.c_pt.bc'
source_filename = "../drivers/video/fbdev/cirrusfb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cirrusfb_board_info_rec = type { ptr, [5 x i32], i8, i8, i8, i8, i8, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.85, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.85 = type { ptr }
%struct.cirrusfb_info = type { ptr, ptr, i32, i8, i32, i32, i32, [16 x i32], ptr }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }

@__UNIQUE_ID_author347 = internal constant [68 x i8] c"cirrusfb.author=Copyright 1999,2000 Jeff Garzik <jgarzik@pobox.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description348 = internal constant [69 x i8] c"cirrusfb.description=Accelerated FBDev driver for Cirrus Logic chips\00", section ".modinfo", align 1
@__UNIQUE_ID_file349 = internal constant [43 x i8] c"cirrusfb.file=drivers/video/fbdev/cirrusfb\00", section ".modinfo", align 1
@__UNIQUE_ID_license350 = internal constant [21 x i8] c"cirrusfb.license=GPL\00", section ".modinfo", align 1
@cirrusfb_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @cirrusfb_pci_table, ptr @cirrusfb_pci_register, ptr @cirrusfb_pci_unregister, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_cirrusfb__351_2388_cirrusfb_init6 = internal global ptr @cirrusfb_init, section ".initcall6.init", align 4
@__param_str_mode_option = internal constant [21 x i8] c"cirrusfb.mode_option\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@mode_option = internal global { ptr, [28 x i8] } { ptr @.str.135, [28 x i8] zeroinitializer }, align 32
@__param_mode_option = internal constant %struct.kernel_param { ptr @__param_str_mode_option, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @mode_option } }, section "__param", align 4
@__UNIQUE_ID_mode_optiontype352 = internal constant [36 x i8] c"cirrusfb.parmtype=mode_option:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_mode_option353 = internal constant [65 x i8] c"cirrusfb.parm=mode_option:Initial video mode e.g. '648x480-8@60'\00", section ".modinfo", align 1
@__param_str_noaccel = internal constant [17 x i8] c"cirrusfb.noaccel\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@noaccel = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_noaccel = internal constant %struct.kernel_param { ptr @__param_str_noaccel, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @noaccel } }, section "__param", align 4
@__UNIQUE_ID_noacceltype354 = internal constant [31 x i8] c"cirrusfb.parmtype=noaccel:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_noaccel355 = internal constant [43 x i8] c"cirrusfb.parm=noaccel:Disable acceleration\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cirrusfb\00", [23 x i8] zeroinitializer }, align 32
@cirrusfb_pci_table = internal global { [12 x %struct.pci_device_id], [96 x i8] } { [12 x %struct.pci_device_id] [%struct.pci_device_id { i32 4115, i32 172, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4115, i32 168, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4115, i32 164, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4115, i32 160, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4115, i32 4610, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4115, i32 56, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4115, i32 188, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 4115, i32 184, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4115, i32 208, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4115, i32 212, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4115, i32 214, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@cirrusfb_pci_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2090, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013cirrusfb: Cannot enable PCI device\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cirrusfb_pci_register\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/video/fbdev/cirrusfb.c\00", [33 x i8] zeroinitializer }, align 32
@cirrusfb_pci_register._entry_ptr = internal global ptr @cirrusfb_pci_register._entry, section ".printk_index", align 4
@cirrusfb_pci_register.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 2, i8 14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c" Found PCI device, base address 0 is 0x%Lx, btype set to %d\0A\00", [35 x i8] zeroinitializer }, align 32
@cirrusfb_pci_register.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 2, i8 14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c" base address 1 is 0x%Lx\0A\00", [38 x i8] zeroinitializer }, align 32
@cirrusfb_pci_register.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 2, i8 15, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Attempt to get PCI info for Cirrus Graphics Card\0A\00", [46 x i8] zeroinitializer }, align 32
@cirrusfb_pci_register.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 2, i8 17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Board address: 0x%lx, register address: 0x%lx\0A\00", [49 x i8] zeroinitializer }, align 32
@cirrusfb_pci_register._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 2125, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cannot reserve region 0x%lx, abort\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cirrusfb_pci_register._entry_ptr.12 = internal global ptr @cirrusfb_pci_register._entry.8, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@release_io_ports = internal global { i1, [31 x i8] } zeroinitializer, align 32
@cirrusfb_pci_register._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 2151, ptr @.str.15, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Cirrus Logic chipset on PCI bus, RAM (%lu kB) at 0x%lx\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cirrusfb_pci_register._entry_ptr.16 = internal global ptr @cirrusfb_pci_register._entry.13, section ".printk_index", align 4
@get_pci_addrs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 1906, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Assertion failed! %s,%s,%s,line=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"get_pci_addrs\00", [18 x i8] zeroinitializer }, align 32
@get_pci_addrs._entry_ptr = internal global ptr @get_pci_addrs._entry, section ".printk_index", align 4
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pdev != NULL\00", [19 x i8] zeroinitializer }, align 32
@get_pci_addrs._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 1907, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_pci_addrs._entry_ptr.21 = internal global ptr @get_pci_addrs._entry.20, section ".printk_index", align 4
@get_pci_addrs._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 1908, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_pci_addrs._entry_ptr.24 = internal global ptr @get_pci_addrs._entry.23, section ".printk_index", align 4
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"registers != NULL\00", [46 x i8] zeroinitializer }, align 32
@get_pci_addrs._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 1923, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_pci_addrs._entry_ptr.27 = internal global ptr @get_pci_addrs._entry.26, section ".printk_index", align 4
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"*display != 0\00", [18 x i8] zeroinitializer }, align 32
@cirrusfb_get_memsize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 1889, ptr @.str.31, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unknown memory size!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cirrusfb_get_memsize\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cirrusfb_get_memsize._entry_ptr = internal global ptr @cirrusfb_get_memsize._entry, section ".printk_index", align 4
@cirrusfb_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.32, ptr @.str.3, i32 2029, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cirrusfb_register\00", [46 x i8] zeroinitializer }, align 32
@cirrusfb_register._entry_ptr = internal global ptr @cirrusfb_register._entry, section ".printk_index", align 4
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cinfo->btype != BT_NONE\00", [40 x i8] zeroinitializer }, align 32
@cirrusfb_register.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.3, ptr @.str.34, i8 1, i8 -4, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(RAM start set to: 0x%p)\0A\00", [38 x i8] zeroinitializer }, align 32
@cirrusfb_register.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.3, ptr @.str.35, i8 1, i8 -3, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wrong initial video mode\0A\00", [38 x i8] zeroinitializer }, align 32
@cirrusfb_register.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.3, ptr @.str.36, i8 2, i8 0, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"choking on default var... umm, no good.\0A\00", [55 x i8] zeroinitializer }, align 32
@cirrusfb_register._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.32, ptr @.str.3, i32 2056, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"could not register fb device; err = %d!\0A\00", [55 x i8] zeroinitializer }, align 32
@cirrusfb_register._entry_ptr.39 = internal global ptr @cirrusfb_register._entry.37, section ".printk_index", align 4
@cirrusfb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr @cirrusfb_open, ptr @cirrusfb_release, ptr null, ptr null, ptr @cirrusfb_check_var, ptr @cirrusfb_set_par, ptr @cirrusfb_setcolreg, ptr null, ptr @cirrusfb_blank, ptr @cirrusfb_pan_display, ptr @cirrusfb_fillrect, ptr @cirrusfb_copyarea, ptr @cirrusfb_imageblit, ptr null, ptr @cirrusfb_sync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cirrusfb_board_info = internal constant { [10 x %struct.cirrusfb_board_info_rec], [64 x i8] } { [10 x %struct.cirrusfb_board_info_rec] [%struct.cirrusfb_board_info_rec zeroinitializer, %struct.cirrusfb_board_info_rec { ptr @.str.109, [5 x i32] [i32 135100, i32 135100, i32 85500, i32 85500, i32 0], i8 -32, i8 -16, i8 -16, i8 -10, i8 -15, i8 -9, i8 30 }, %struct.cirrusfb_board_info_rec { ptr @.str.110, [5 x i32] [i32 90000, i32 90000, i32 90000, i32 90000, i32 90000], i8 -64, i8 -128, i8 -128, i8 0, i8 -127, i8 0, i8 34 }, %struct.cirrusfb_board_info_rec { ptr @.str.111, [5 x i32] [i32 90000, i32 90000, i32 90000, i32 90000, i32 90000], i8 -64, i8 32, i8 32, i8 0, i8 33, i8 0, i8 34 }, %struct.cirrusfb_board_info_rec { ptr @.str.112, [5 x i32] [i32 90000, i32 90000, i32 90000, i32 90000, i32 90000], i8 -64, i8 -128, i8 -128, i8 0, i8 -127, i8 0, i8 34 }, %struct.cirrusfb_board_info_rec { ptr @.str.113, [5 x i32] [i32 135100, i32 135100, i32 85500, i32 85500, i32 0], i8 -96, i8 -96, i8 -96, i8 -90, i8 -95, i8 -89, i8 0 }, %struct.cirrusfb_board_info_rec { ptr @.str.114, [5 x i32] [i32 85500, i32 85500, i32 50000, i32 28500, i32 0], i8 -32, i8 -96, i8 -96, i8 -90, i8 -95, i8 -89, i8 28 }, %struct.cirrusfb_board_info_rec { ptr @.str.115, [5 x i32] [i32 135100, i32 200000, i32 200000, i32 135100, i32 135100], i8 -32, i8 16, i8 17, i8 0, i8 17, i8 0, i8 28 }, %struct.cirrusfb_board_info_rec { ptr @.str.116, [5 x i32] [i32 170000, i32 170000, i32 170000, i32 170000, i32 135100], i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.cirrusfb_board_info_rec { ptr @.str.117, [5 x i32] [i32 170000, i32 250000, i32 170000, i32 170000, i32 135100], i8 32, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }], [64 x i8] zeroinitializer }, align 32
@opencount = internal global { i32, [28 x i8] } zeroinitializer, align 32
@cirrusfb_set_par_foo.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 0, i8 -88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cirrusfb_set_par_foo\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Requested mode: %dx%dx%d\0A\00", [38 x i8] zeroinitializer }, align 32
@cirrusfb_set_par_foo.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.42, i8 0, i8 -69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CRT0: %d\0A\00", [22 x i8] zeroinitializer }, align 32
@cirrusfb_set_par_foo.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.43, i8 0, i8 -68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CRT1: %d\0A\00", [22 x i8] zeroinitializer }, align 32
@cirrusfb_set_par_foo.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.44, i8 0, i8 -67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CRT2: %d\0A\00", [22 x i8] zeroinitializer }, align 32
@cirrusfb_set_par_foo.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.45, i8 0, i8 -66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CRT3: 128+%d\0A\00", [18 x i8] zeroinitializer }, align 32
@cirrusfb_set_par_foo.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.46, i8 0, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CRT4: %d\0A\00", [22 x i8] zeroinitializer }, align 32
@cirrusfb_set_par_foo.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.47, i8 0, i8 -64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CRT5: %d\0A\00", [22 x i8] zeroinitializer }, align 32
@cirrusfb_set_par_foo.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.48, i8 0, i8 -63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CRT6: %d\0A\00", [22 x i8] zeroinitializer }, align 32
@cirrusfb_set_par_foo.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.49, i8 0, i8 -58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CRT7: %d\0A\00", [22 x i8] zeroinitializer }, align 32
@cirrusfb_set_par_foo.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.50, i8 0, i8 -56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CRT9: %d\0A\00", [22 x i8] zeroinitializer }, align 32
@cirrusfb_set_par_foo.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.51, i8 0, i8 -56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CRT10: %d\0A\00", [21 x i8] zeroinitializer }, align 32
@cirrusfb_set_par_foo.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.52, i8 0, i8 -55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CRT11: 64+32+%d\0A\00", [47 x i8] zeroinitializer }, align 32
@cirrusfb_set_par_foo.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.53, i8 0, i8 -54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CRT12: %d\0A\00", [21 x i8] zeroinitializer }, align 32
@cirrusfb_set_par_foo.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.54, i8 0, i8 -53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CRT15: %d\0A\00", [21 x i8] zeroinitializer }, align 32
@cirrusfb_set_par_foo.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.55, i8 0, i8 -53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CRT16: %d\0A\00", [21 x i8] zeroinitializer }, align 32
@cirrusfb_set_par_foo.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.56, i8 0, i8 -52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CRT18: 0xff\0A\00", [19 x i8] zeroinitializer }, align 32
@cirrusfb_set_par_foo.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.57, i8 0, i8 -48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CRT1a: %d\0A\00", [21 x i8] zeroinitializer }, align 32
@cirrusfb_set_par_foo.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.58, i8 0, i8 -44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"VCLK freq: %ld kHz  nom: %d  den: %d  div: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@cirrusfb_set_par_foo.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.59, i8 0, i8 -21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"preparing for 1 bit deep display\0A\00", [62 x i8] zeroinitializer }, align 32
@cirrusfb_set_par_foo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.40, ptr @.str.3, i32 965, ptr @.str.31, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unknown Board\0A\00", [17 x i8] zeroinitializer }, align 32
@cirrusfb_set_par_foo._entry_ptr = internal global ptr @cirrusfb_set_par_foo._entry, section ".printk_index", align 4
@cirrusfb_set_par_foo._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.40, ptr @.str.3, i32 993, ptr @.str.31, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@cirrusfb_set_par_foo._entry_ptr.62 = internal global ptr @cirrusfb_set_par_foo._entry.61, section ".printk_index", align 4
@cirrusfb_set_par_foo.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.63, i8 0, i8 -2, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"preparing for 8 bit deep display\0A\00", [62 x i8] zeroinitializer }, align 32
@cirrusfb_set_par_foo._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.40, ptr @.str.3, i32 1040, ptr @.str.31, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@cirrusfb_set_par_foo._entry_ptr.65 = internal global ptr @cirrusfb_set_par_foo._entry.64, section ".printk_index", align 4
@cirrusfb_set_par_foo._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.40, ptr @.str.3, i32 1066, ptr @.str.31, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unknown board\0A\00", [17 x i8] zeroinitializer }, align 32
@cirrusfb_set_par_foo._entry_ptr.68 = internal global ptr @cirrusfb_set_par_foo._entry.66, section ".printk_index", align 4
@cirrusfb_set_par_foo.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.69, i8 1, i8 15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"preparing for 16 bit deep display\0A\00", [61 x i8] zeroinitializer }, align 32
@cirrusfb_set_par_foo._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.40, ptr @.str.3, i32 1125, ptr @.str.31, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@cirrusfb_set_par_foo._entry_ptr.71 = internal global ptr @cirrusfb_set_par_foo._entry.70, section ".printk_index", align 4
@cirrusfb_set_par_foo.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.72, i8 1, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"preparing for 24 bit deep display\0A\00", [61 x i8] zeroinitializer }, align 32
@cirrusfb_set_par_foo._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.40, ptr @.str.3, i32 1183, ptr @.str.31, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@cirrusfb_set_par_foo._entry_ptr.74 = internal global ptr @cirrusfb_set_par_foo._entry.73, section ".printk_index", align 4
@cirrusfb_set_par_foo._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.40, ptr @.str.3, i32 1202, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"What's this? requested color depth == %d.\0A\00", [53 x i8] zeroinitializer }, align 32
@cirrusfb_set_par_foo._entry_ptr.77 = internal global ptr @cirrusfb_set_par_foo._entry.75, section ".printk_index", align 4
@cirrusfb_set_par_foo.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.78, i8 1, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CRT1e: %d\0A\00", [21 x i8] zeroinitializer }, align 32
@cirrusfb_set_par_foo.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.79, i8 1, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CL_SEQR1: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@init_vgachip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.80, ptr @.str.3, i32 1451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init_vgachip\00", [19 x i8] zeroinitializer }, align 32
@init_vgachip._entry_ptr = internal global ptr @init_vgachip._entry, section ".printk_index", align 4
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cinfo != NULL\00", [18 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@init_vgachip._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.80, ptr @.str.3, i32 1496, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Warning: Unknown board type\0A\00", [35 x i8] zeroinitializer }, align 32
@init_vgachip._entry_ptr.84 = internal global ptr @init_vgachip._entry.82, section ".printk_index", align 4
@init_vgachip._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.80, ptr @.str.3, i32 1501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@init_vgachip._entry_ptr.86 = internal global ptr @init_vgachip._entry.85, section ".printk_index", align 4
@.str.87 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"info->screen_size > 0\00", [42 x i8] zeroinitializer }, align 32
@bestclock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.88, ptr @.str.3, i32 2741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bestclock\00", [22 x i8] zeroinitializer }, align 32
@bestclock._entry_ptr = internal global ptr @bestclock._entry, section ".printk_index", align 4
@bestclock._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.88, ptr @.str.3, i32 2742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bestclock._entry_ptr.91 = internal global ptr @bestclock._entry.90, section ".printk_index", align 4
@bestclock._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.88, ptr @.str.3, i32 2743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bestclock._entry_ptr.94 = internal global ptr @bestclock._entry.93, section ".printk_index", align 4
@cirrusfb_check_mclk.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.96, ptr @.str.3, ptr @.str.97, i8 0, i8 113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cirrusfb_check_mclk\00", [44 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Read MCLK of %ld kHz\0A\00", [42 x i8] zeroinitializer }, align 32
@cirrusfb_check_mclk.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.96, ptr @.str.3, ptr @.str.98, i8 0, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Using VCLK = MCLK\0A\00", [45 x i8] zeroinitializer }, align 32
@cirrusfb_check_mclk.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.96, ptr @.str.3, ptr @.str.99, i8 0, i8 116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Using VCLK = MCLK/2\0A\00", [43 x i8] zeroinitializer }, align 32
@cirrusfb_set_mclk_as_source._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.100, ptr @.str.3, i32 637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cirrusfb_set_mclk_as_source\00", [36 x i8] zeroinitializer }, align 32
@cirrusfb_set_mclk_as_source._entry_ptr = internal global ptr @cirrusfb_set_mclk_as_source._entry, section ".printk_index", align 4
@cirrusfb_set_mclk_as_source.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.3, ptr @.str.101, i8 0, i8 -96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Set %s as pixclock source.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MCLK/2\00", [25 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCLK\00", [27 x i8] zeroinitializer }, align 32
@AttrOn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.104, ptr @.str.3, i32 2442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AttrOn\00", [25 x i8] zeroinitializer }, align 32
@AttrOn._entry_ptr = internal global ptr @AttrOn._entry, section ".printk_index", align 4
@cirrusfb_blank.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.105, ptr @.str.3, ptr @.str.106, i8 1, i8 92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cirrusfb_blank\00", [17 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ENTER, blank mode = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@cirrusfb_blank.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.105, ptr @.str.3, ptr @.str.107, i8 1, i8 93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"EXIT, returning 0\0A\00", [45 x i8] zeroinitializer }, align 32
@cirrusfb_blank.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.105, ptr @.str.3, ptr @.str.108, i8 1, i8 101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"EXIT, returning 1\0A\00", [45 x i8] zeroinitializer }, align 32
@cirrusfb_blank.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.105, ptr @.str.3, ptr @.str.107, i8 1, i8 103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CL SD64\00", [24 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CL Piccolo\00", [21 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CL Picasso\00", [21 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CL Spectrum\00", [20 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CL Picasso4\00", [20 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CL Alpine\00", [22 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CL GD5480\00", [22 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CL Laguna\00", [22 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CL Laguna AGP\00", [18 x i8] zeroinitializer }, align 32
@cirrusfb_check_var.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.118, ptr @.str.3, ptr @.str.119, i8 0, i8 -113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cirrusfb_check_var\00", [45 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported bpp size: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@cirrusfb_check_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.118, ptr @.str.3, i32 585, ptr @.str.15, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"virtual resolution set to maximum of %dx%d\0A\00", [52 x i8] zeroinitializer }, align 32
@cirrusfb_check_var._entry_ptr = internal global ptr @cirrusfb_check_var._entry, section ".printk_index", align 4
@cirrusfb_check_var._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.118, ptr @.str.3, i32 594, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"mode %dx%dx%d rejected... virtual resolution too high to fit into video memory!\0A\00", [47 x i8] zeroinitializer }, align 32
@cirrusfb_check_var._entry_ptr.123 = internal global ptr @cirrusfb_check_var._entry.121, section ".printk_index", align 4
@cirrusfb_check_var._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.118, ptr @.str.3, i32 619, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"ERROR: VerticalTotal >= 1280; special treatment required! (TODO)\0A\00", [62 x i8] zeroinitializer }, align 32
@cirrusfb_check_var._entry_ptr.126 = internal global ptr @cirrusfb_check_var._entry.124, section ".printk_index", align 4
@cirrusfb_check_pixclock.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.127, ptr @.str.3, ptr @.str.128, i8 0, i8 120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cirrusfb_check_pixclock\00", [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"desired pixclock: %ld kHz\0A\00", [37 x i8] zeroinitializer }, align 32
@cirrusfb_check_pixclock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.127, ptr @.str.3, i32 493, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Frequency greater than maxclock (%ld kHz)\0A\00", [53 x i8] zeroinitializer }, align 32
@cirrusfb_check_pixclock._entry_ptr = internal global ptr @cirrusfb_check_pixclock._entry, section ".printk_index", align 4
@cirrusfb_cleanup.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.130, ptr @.str.3, ptr @.str.131, i8 2, i8 6, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cirrusfb_cleanup\00", [47 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Framebuffer unregistered\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"noaccel\00", [24 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mode:\00", [26 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"640x480@60\00", [21 x i8] zeroinitializer }, align 32
@switch.table.cirrusfb_blank = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\00\04\02\06", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 24]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.137 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 8, i64 16, i64 24]
@__sancov_gen_cov_switch_values.138 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 3, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.140 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 8, i64 16, i64 24]
@__sancov_gen_cov_switch_values.141 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.142 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.145 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 5, i64 6]
@__sancov_gen_cov_switch_values.146 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 6, i64 7]
@__sancov_gen_cov_switch_values.147 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 8, i64 16, i64 24]
@__sancov_gen_cov_switch_values.148 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.149 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.150 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.151 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.152 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.153 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.154 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 5, i64 6, i64 7]
@___asan_gen_.155 = private unnamed_addr constant [20 x i8] c"cirrusfb_pci_driver\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2182, i32 26 }
@___asan_gen_.158 = private unnamed_addr constant [12 x i8] c"mode_option\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 369, i32 14 }
@___asan_gen_.161 = private unnamed_addr constant [8 x i8] c"noaccel\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 368, i32 13 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2183, i32 11 }
@___asan_gen_.167 = private unnamed_addr constant [19 x i8] c"cirrusfb_pci_table\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 257, i32 29 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2090, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2103, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2106, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2109, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2116, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2124, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant [17 x i8] c"release_io_ports\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2149, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1906, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1907, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1908, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1923, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1889, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2029, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2034, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2038, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2048, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2055, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant [13 x i8] c"cirrusfb_ops\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1959, i32 28 }
@___asan_gen_.282 = private unnamed_addr constant [20 x i8] c"cirrusfb_board_info\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 127, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant [10 x i8] c"opencount\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 425, i32 12 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 672, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 751, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 754, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 757, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 761, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 765, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 771, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 774, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 792, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 800, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 803, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 806, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 809, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 812, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 815, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 818, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 833, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 847, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 941, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 965, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 993, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1018, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1040, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1066, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1087, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1125, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1146, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1183, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1200, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1233, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1259, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1451, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1496, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1501, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2741, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2742, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2743, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 455, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 462, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 465, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 637, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 641, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2442, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1394, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1398, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 1429, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 129, i32 13 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 146, i32 13 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 160, i32 13 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 174, i32 13 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 188, i32 13 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 203, i32 13 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 219, i32 13 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 232, i32 13 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 242, i32 13 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 571, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 583, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 591, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 618, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 483, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 491, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2074, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2334, i32 38 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2338, i32 25 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 2340, i32 31 }
@___asan_gen_.549 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.550 = private constant [34 x i8] c"../drivers/video/fbdev/cirrusfb.c\00", align 1
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.550, i32 369, i32 28 }
@___asan_gen_.552 = private unnamed_addr constant [28 x i8] c"switch.table.cirrusfb_blank\00", align 1
@llvm.compiler.used = appending global [175 x ptr] [ptr @AttrOn._entry, ptr @AttrOn._entry_ptr, ptr @__UNIQUE_ID_author347, ptr @__UNIQUE_ID_description348, ptr @__UNIQUE_ID_file349, ptr @__UNIQUE_ID_license350, ptr @__UNIQUE_ID_mode_option353, ptr @__UNIQUE_ID_mode_optiontype352, ptr @__UNIQUE_ID_noaccel355, ptr @__UNIQUE_ID_noacceltype354, ptr @__initcall__kmod_cirrusfb__351_2388_cirrusfb_init6, ptr @__param_mode_option, ptr @__param_noaccel, ptr @bestclock._entry, ptr @bestclock._entry.90, ptr @bestclock._entry.93, ptr @bestclock._entry_ptr, ptr @bestclock._entry_ptr.91, ptr @bestclock._entry_ptr.94, ptr @cirrusfb_check_pixclock._entry, ptr @cirrusfb_check_pixclock._entry_ptr, ptr @cirrusfb_check_var._entry, ptr @cirrusfb_check_var._entry.121, ptr @cirrusfb_check_var._entry.124, ptr @cirrusfb_check_var._entry_ptr, ptr @cirrusfb_check_var._entry_ptr.123, ptr @cirrusfb_check_var._entry_ptr.126, ptr @cirrusfb_exit, ptr @cirrusfb_get_memsize._entry, ptr @cirrusfb_get_memsize._entry_ptr, ptr @cirrusfb_pci_register._entry, ptr @cirrusfb_pci_register._entry.13, ptr @cirrusfb_pci_register._entry.8, ptr @cirrusfb_pci_register._entry_ptr, ptr @cirrusfb_pci_register._entry_ptr.12, ptr @cirrusfb_pci_register._entry_ptr.16, ptr @cirrusfb_register._entry, ptr @cirrusfb_register._entry.37, ptr @cirrusfb_register._entry_ptr, ptr @cirrusfb_register._entry_ptr.39, ptr @cirrusfb_set_mclk_as_source._entry, ptr @cirrusfb_set_mclk_as_source._entry_ptr, ptr @cirrusfb_set_par_foo._entry, ptr @cirrusfb_set_par_foo._entry.61, ptr @cirrusfb_set_par_foo._entry.64, ptr @cirrusfb_set_par_foo._entry.66, ptr @cirrusfb_set_par_foo._entry.70, ptr @cirrusfb_set_par_foo._entry.73, ptr @cirrusfb_set_par_foo._entry.75, ptr @cirrusfb_set_par_foo._entry_ptr, ptr @cirrusfb_set_par_foo._entry_ptr.62, ptr @cirrusfb_set_par_foo._entry_ptr.65, ptr @cirrusfb_set_par_foo._entry_ptr.68, ptr @cirrusfb_set_par_foo._entry_ptr.71, ptr @cirrusfb_set_par_foo._entry_ptr.74, ptr @cirrusfb_set_par_foo._entry_ptr.77, ptr @get_pci_addrs._entry, ptr @get_pci_addrs._entry.20, ptr @get_pci_addrs._entry.23, ptr @get_pci_addrs._entry.26, ptr @get_pci_addrs._entry_ptr, ptr @get_pci_addrs._entry_ptr.21, ptr @get_pci_addrs._entry_ptr.24, ptr @get_pci_addrs._entry_ptr.27, ptr @init_vgachip._entry, ptr @init_vgachip._entry.82, ptr @init_vgachip._entry.85, ptr @init_vgachip._entry_ptr, ptr @init_vgachip._entry_ptr.84, ptr @init_vgachip._entry_ptr.86, ptr @cirrusfb_pci_driver, ptr @mode_option, ptr @noaccel, ptr @.str, ptr @cirrusfb_pci_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @release_io_ports, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.25, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @cirrusfb_ops, ptr @cirrusfb_board_info, ptr @opencount, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.63, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.87, ptr @.str.88, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.122, ptr @.str.125, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @switch.table.cirrusfb_blank], section "llvm.metadata"
@0 = internal global [134 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirrusfb_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_option to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noaccel to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirrusfb_pci_table to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirrusfb_pci_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirrusfb_pci_register._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @release_io_ports to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirrusfb_pci_register._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_pci_addrs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_pci_addrs._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_pci_addrs._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_pci_addrs._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirrusfb_get_memsize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirrusfb_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirrusfb_register._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirrusfb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirrusfb_board_info to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opencount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirrusfb_set_par_foo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirrusfb_set_par_foo._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirrusfb_set_par_foo._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirrusfb_set_par_foo._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirrusfb_set_par_foo._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirrusfb_set_par_foo._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirrusfb_set_par_foo._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_vgachip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_vgachip._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_vgachip._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bestclock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bestclock._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bestclock._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirrusfb_set_mclk_as_source._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AttrOn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirrusfb_check_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirrusfb_check_var._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirrusfb_check_var._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cirrusfb_check_pixclock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cirrusfb_blank to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cirrusfb_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @cirrusfb_pci_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cirrusfb_init() #0 section ".init.text" align 64 {
entry:
  %option = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #9
  %0 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %option, align 4
  %call = call i32 @fb_get_options(ptr noundef nonnull @.str, ptr noundef nonnull %option) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %option, align 4
  call fastcc void @cirrusfb_setup(ptr noundef %2) #12
  %call2 = call i32 @__pci_register_driver(ptr noundef nonnull @cirrusfb_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cirrusfb_pci_register(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call2 = tail call ptr @framebuffer_alloc(i32 noundef 96, ptr noundef %dev) #9
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %par = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %btype = getelementptr inbounds %struct.cirrusfb_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %btype to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %btype, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_pci_register.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_pci_register, %if.then11)) #9
          to label %do.body16 [label %if.then11], !srcloc !331

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 21
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %7 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %resource, align 8
  %conv = zext i32 %8 to i64
  %9 = ptrtoint ptr %btype to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %btype, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_pci_register.__UNIQUE_ID_ddebug343, ptr noundef %6, ptr noundef nonnull @.str.4, i64 noundef %conv, i32 noundef %10) #9
  br label %do.body16

do.body16:                                        ; preds = %if.then11, %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_pci_register.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_pci_register, %if.then28)) #9
          to label %do.body37 [label %if.then28], !srcloc !331

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  %device29 = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 21
  %11 = ptrtoint ptr %device29 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device29, align 4
  %arrayidx31 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %13 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx31, align 8
  %conv33 = zext i32 %14 to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_pci_register.__UNIQUE_ID_ddebug344, ptr noundef %12, ptr noundef nonnull @.str.5, i64 noundef %conv33) #9
  br label %do.body37

do.body37:                                        ; preds = %if.then28, %do.body16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_pci_register.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_pci_register, %if.then49)) #9
          to label %do.end53 [label %if.then49], !srcloc !331

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  %device50 = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 21
  %15 = ptrtoint ptr %device50 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device50, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_pci_register.__UNIQUE_ID_ddebug345, ptr noundef %16, ptr noundef nonnull @.str.6) #9
  br label %do.end53

do.end53:                                         ; preds = %if.then49, %do.body37
  %mmio_start = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 7, i32 10
  %cmp.not.i = icmp eq ptr %pdev, null
  br i1 %cmp.not.i, label %do.end.i, label %do.end53.if.end.i_crit_edge

do.end53.if.end.i_crit_edge:                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18, i32 noundef 1906) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %do.end53.if.end.i_crit_edge
  %cmp8.not.i = icmp eq ptr %mmio_start, null
  br i1 %cmp8.not.i, label %do.end11.i, label %if.end.i.if.end14.i_crit_edge

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18, i32 noundef 1908) #13
  br label %if.end14.i

if.end14.i:                                       ; preds = %do.end11.i, %if.end.i.if.end14.i_crit_edge
  %17 = ptrtoint ptr %mmio_start to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %mmio_start, align 4
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %flags.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 3
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %arrayidx25.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %board_addr.0.in = select i1 %tobool.not.i, ptr %resource.i, ptr %arrayidx25.i
  %storemerge.in.i = select i1 %tobool.not.i, ptr %arrayidx25.i, ptr %resource.i
  %20 = ptrtoint ptr %board_addr.0.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %board_addr.0 = load i32, ptr %board_addr.0.in, align 8
  %21 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %storemerge.i = load i32, ptr %storemerge.in.i, align 8
  %22 = ptrtoint ptr %mmio_start to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %storemerge.i, ptr %mmio_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %board_addr.0)
  %cmp28.not.i = icmp eq i32 %board_addr.0, 0
  br i1 %cmp28.not.i, label %do.end31.i, label %if.end14.i.get_pci_addrs.exit_crit_edge

if.end14.i.get_pci_addrs.exit_crit_edge:          ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pci_addrs.exit

do.end31.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18, i32 noundef 1923) #13
  br label %get_pci_addrs.exit

get_pci_addrs.exit:                               ; preds = %do.end31.i, %if.end14.i.get_pci_addrs.exit_crit_edge
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %1, align 4
  %24 = ptrtoint ptr %mmio_start to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mmio_start, align 4
  %call56 = tail call ptr @ioremap(i32 noundef %25, i32 noundef 4096) #9
  %laguna_mmio = getelementptr inbounds %struct.cirrusfb_info, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %laguna_mmio to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call56, ptr %laguna_mmio, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_pci_register.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_pci_register, %if.then69)) #9
          to label %do.end75 [label %if.then69], !srcloc !331

if.then69:                                        ; preds = %get_pci_addrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %device70 = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 21
  %27 = ptrtoint ptr %device70 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device70, align 4
  %29 = ptrtoint ptr %mmio_start to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mmio_start, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_pci_register.__UNIQUE_ID_ddebug346, ptr noundef %28, ptr noundef nonnull @.str.7, i32 noundef %board_addr.0, i32 noundef %30) #9
  br label %do.end75

do.end75:                                         ; preds = %if.then69, %get_pci_addrs.exit
  %31 = ptrtoint ptr %btype to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %btype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %32)
  %cmp77 = icmp eq i32 %32, 7
  br i1 %cmp77, label %do.end75.cond.end_crit_edge, label %cond.false

do.end75.cond.end_crit_edge:                      ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %do.end75
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %35 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %par, align 4
  %btype.i.i = getelementptr inbounds %struct.cirrusfb_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %btype.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %btype.i.i, align 4
  %39 = and i32 %38, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %39)
  %.not.i = icmp eq i32 %39, 8
  %tobool.not.i.i.i = icmp eq ptr %34, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %.not.i, label %if.then.i, label %if.else.i169

if.then.i:                                        ; preds = %cond.false
  br i1 %tobool.not.i.i.i, label %if.else.i5.i.i, label %if.then.i4.i.i

if.then.i4.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i.i = getelementptr i8, ptr %34, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 20) #9, !srcloc !332
  %add.ptr.i.i3.i.i = getelementptr i8, ptr %34, i32 965
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  br label %vga_rseq.exit.i

if.else.i5.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 20) #9, !srcloc !332
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !335
  br label %vga_rseq.exit.i

vga_rseq.exit.i:                                  ; preds = %if.else.i5.i.i, %if.then.i4.i.i
  %retval.0.i.i.i = phi i8 [ %40, %if.then.i4.i.i ], [ %41, %if.else.i5.i.i ]
  %42 = and i8 %retval.0.i.i.i, 7
  %narrow.i = add nuw nsw i8 %42, 1
  %add.i = zext i8 %narrow.i to i32
  %shl.i = shl nuw nsw i32 %add.i, 20
  br label %cond.end

if.else.i169:                                     ; preds = %cond.false
  br i1 %tobool.not.i.i.i, label %if.else.i5.i23.i, label %if.then.i4.i22.i

if.then.i4.i22.i:                                 ; preds = %if.else.i169
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i20.i = getelementptr i8, ptr %34, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i20.i, i8 15) #9, !srcloc !332
  %add.ptr.i.i3.i21.i = getelementptr i8, ptr %34, i32 965
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i21.i) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  br label %vga_rseq.exit25.i

if.else.i5.i23.i:                                 ; preds = %if.else.i169
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 15) #9, !srcloc !332
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !335
  br label %vga_rseq.exit25.i

vga_rseq.exit25.i:                                ; preds = %if.else.i5.i23.i, %if.then.i4.i22.i
  %retval.0.i.i24.i = phi i8 [ %43, %if.then.i4.i22.i ], [ %44, %if.else.i5.i23.i ]
  %conv3.i = zext i8 %retval.0.i.i24.i to i32
  %and4.i = and i32 %conv3.i, 24
  %45 = zext i32 %and4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and4.i, label %do.end.i170 [
    i32 8, label %vga_rseq.exit25.i.sw.epilog.i_crit_edge
    i32 16, label %sw.bb5.i
    i32 24, label %sw.bb6.i
  ]

vga_rseq.exit25.i.sw.epilog.i_crit_edge:          ; preds = %vga_rseq.exit25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %vga_rseq.exit25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %vga_rseq.exit25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

do.end.i170:                                      ; preds = %vga_rseq.exit25.i
  call void @__sanitizer_cov_trace_pc() #11
  %device.i = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 21
  %46 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %47, ptr noundef nonnull @.str.29) #13
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end.i170, %sw.bb6.i, %sw.bb5.i, %vga_rseq.exit25.i.sw.epilog.i_crit_edge
  %mem.0.i = phi i32 [ 1048576, %do.end.i170 ], [ 2097152, %sw.bb6.i ], [ 1048576, %sw.bb5.i ], [ 524288, %vga_rseq.exit25.i.sw.epilog.i_crit_edge ]
  %48 = ptrtoint ptr %btype.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %btype.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %49)
  %cmp.not.i171 = icmp ne i32 %49, 6
  %and9.i = and i32 %conv3.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %cmp10.not.i = icmp ne i32 %and9.i, 0
  %or.cond.i = select i1 %cmp.not.i171, i1 %cmp10.not.i, i1 false
  %mul.i = zext i1 %or.cond.i to i32
  %mem.1.i = shl nuw nsw i32 %mem.0.i, %mul.i
  br label %cond.end

cond.end:                                         ; preds = %sw.epilog.i, %vga_rseq.exit.i, %do.end75.cond.end_crit_edge
  %cond = phi i32 [ 33554432, %do.end75.cond.end_crit_edge ], [ %shl.i, %vga_rseq.exit.i ], [ %mem.1.i, %sw.epilog.i ]
  %call81 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %do.end87, label %if.end89

do.end87:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %device88 = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 21
  %50 = ptrtoint ptr %device88 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %device88, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.9, i32 noundef %board_addr.0) #13
  br label %err_release_fb

if.end89:                                         ; preds = %cond.end
  %call90 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef 960, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef 0) #9
  %tobool91.not = icmp eq ptr %call90, null
  br i1 %tobool91.not, label %if.end89.if.end93_crit_edge, label %if.then92

if.end89.if.end93_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.then92:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @release_io_ports, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %if.end89.if.end93_crit_edge
  %call94 = tail call ptr @ioremap(i32 noundef %board_addr.0, i32 noundef %cond) #9
  %52 = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 25
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call94, ptr %52, align 4
  %tobool95.not = icmp eq ptr %call94, null
  br i1 %tobool95.not, label %if.end93.err_release_legacy_crit_edge, label %if.end97

if.end93.err_release_legacy_crit_edge:            ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_release_legacy

if.end97:                                         ; preds = %if.end93
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 7, i32 1
  %54 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %board_addr.0, ptr %smem_start, align 4
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 26
  %55 = ptrtoint ptr %screen_size to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %cond, ptr %screen_size, align 4
  %unmap = getelementptr inbounds %struct.cirrusfb_info, ptr %1, i32 0, i32 8
  %56 = ptrtoint ptr %unmap to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @cirrusfb_pci_unmap, ptr %unmap, align 4
  %device102 = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 21
  %57 = ptrtoint ptr %device102 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %device102, align 4
  %59 = load i32, ptr %screen_size, align 4
  %shr = lshr i32 %59, 10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %58, ptr noundef nonnull @.str.14, i32 noundef %shr, i32 noundef %board_addr.0) #13
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %60 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call2, ptr %driver_data.i.i, align 4
  %call104 = tail call fastcc i32 @cirrusfb_register(ptr noundef nonnull %call2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end97.cleanup_crit_edge, label %if.end107

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end107:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %52, align 4
  tail call void @iounmap(ptr noundef %62) #9
  br label %err_release_legacy

err_release_legacy:                               ; preds = %if.end107, %if.end93.err_release_legacy_crit_edge
  %ret.0 = phi i32 [ %call104, %if.end107 ], [ -5, %if.end93.err_release_legacy_crit_edge ]
  %.b = load i1, ptr @release_io_ports, align 4
  br i1 %.b, label %if.then109, label %err_release_legacy.if.end110_crit_edge

err_release_legacy.if.end110_crit_edge:           ; preds = %err_release_legacy
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

if.then109:                                       ; preds = %err_release_legacy
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef 960, i32 noundef 32) #9
  br label %if.end110

if.end110:                                        ; preds = %if.then109, %err_release_legacy.if.end110_crit_edge
  tail call void @pci_release_regions(ptr noundef %pdev) #9
  br label %err_release_fb

err_release_fb:                                   ; preds = %if.end110, %do.end87
  %ret.1 = phi i32 [ %call81, %do.end87 ], [ %ret.0, %if.end110 ]
  %63 = ptrtoint ptr %laguna_mmio to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %laguna_mmio, align 4
  %cmp112.not = icmp eq ptr %64, null
  br i1 %cmp112.not, label %err_release_fb.if.end116_crit_edge, label %if.then114

err_release_fb.if.end116_crit_edge:               ; preds = %err_release_fb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116

if.then114:                                       ; preds = %err_release_fb
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iounmap(ptr noundef nonnull %64) #9
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %err_release_fb.if.end116_crit_edge
  tail call void @framebuffer_release(ptr noundef nonnull %call2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end116, %if.end97.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end97.cleanup_crit_edge ], [ %call, %do.end ], [ %ret.1, %if.end116 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cirrusfb_pci_unregister(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %par.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par.i, align 4
  tail call void @unregister_framebuffer(ptr noundef %1) #9
  %cmap.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_cleanup.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_pci_unregister, %if.then.i)) #9
          to label %cirrusfb_cleanup.exit [label %if.then.i], !srcloc !331

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %device.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_cleanup.__UNIQUE_ID_ddebug342, ptr noundef %5, ptr noundef nonnull @.str.131) #9
  br label %cirrusfb_cleanup.exit

cirrusfb_cleanup.exit:                            ; preds = %if.then.i, %entry
  %unmap.i = getelementptr inbounds %struct.cirrusfb_info, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %unmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unmap.i, align 4
  tail call void %7(ptr noundef %1) #9
  tail call void @framebuffer_release(ptr noundef %1) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cirrusfb_pci_unmap(ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %laguna_mmio = getelementptr inbounds %struct.cirrusfb_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %laguna_mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %laguna_mmio, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iounmap(ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void @iounmap(ptr noundef %8) #9
  %.b = load i1, ptr @release_io_ports, align 4
  br i1 %.b, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef 960, i32 noundef 32) #9
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %add.ptr = getelementptr i8, ptr %1, i32 -136
  tail call void @pci_release_regions(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cirrusfb_register(ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %btype = getelementptr inbounds %struct.cirrusfb_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %btype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %btype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.32, i32 noundef 2029) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 4
  %pseudo_palette.i = getelementptr inbounds %struct.cirrusfb_info, ptr %5, i32 0, i32 7
  %pseudo_palette2.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %6 = ptrtoint ptr %pseudo_palette2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pseudo_palette.i, ptr %pseudo_palette2.i, align 4
  %flags.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 14080, ptr %flags.i, align 4
  %8 = load i8, ptr @noaccel, align 1, !range !336
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end
  %btype.i.i = getelementptr inbounds %struct.cirrusfb_info, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %btype.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %btype.i.i, align 4
  %11 = and i32 %10, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %.not.i = icmp eq i32 %11, 8
  br i1 %.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 14082, ptr %flags.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i.if.end.i_crit_edge
  %.sink.i = phi i32 [ 0, %if.then.i ], [ 53, %lor.lhs.false.i.if.end.i_crit_edge ]
  %accel6.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 12
  %13 = ptrtoint ptr %accel6.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink.i, ptr %accel6.i, align 4
  %fbops.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %14 = ptrtoint ptr %fbops.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @cirrusfb_ops, ptr %fbops.i, align 4
  %btype.i = getelementptr inbounds %struct.cirrusfb_info, ptr %5, i32 0, i32 2
  %15 = ptrtoint ptr %btype.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %btype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %16)
  %cmp.i = icmp eq i32 %16, 7
  br i1 %cmp.i, label %if.then7.i, label %if.end.i.if.end16.i_crit_edge

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.then7.i:                                       ; preds = %if.end.i
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %17 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bits_per_pixel.i, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %18, label %if.then7.i.if.end16.i_crit_edge [
    i32 16, label %if.then7.i.if.end16.sink.split.i_crit_edge
    i32 32, label %if.then13.i
  ]

if.then7.i.if.end16.sink.split.i_crit_edge:       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.sink.split.i

if.then7.i.if.end16.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.then13.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.sink.split.i

if.end16.sink.split.i:                            ; preds = %if.then13.i, %if.then7.i.if.end16.sink.split.i_crit_edge
  %.sink5.i = phi i32 [ 2097152, %if.then13.i ], [ 1048576, %if.then7.i.if.end16.sink.split.i_crit_edge ]
  %20 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 %.sink5.i
  store ptr %add.ptr.i, ptr %20, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end16.sink.split.i, %if.then7.i.if.end16.i_crit_edge, %if.end.i.if.end16.i_crit_edge
  %fix17.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %23 = ptrtoint ptr %btype.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %btype.i, align 4
  %arrayidx.i = getelementptr [10 x %struct.cirrusfb_board_info_rec], ptr @cirrusfb_board_info, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %call20.i = tail call i32 @strlcpy(ptr noundef %fix17.i, ptr noundef %26, i32 noundef 16) #9
  %screen_size.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 26
  %27 = ptrtoint ptr %screen_size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %screen_size.i, align 4
  %smem_len.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %29 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %smem_len.i, align 4
  %bits_per_pixel22.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %30 = ptrtoint ptr %bits_per_pixel22.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bits_per_pixel22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp23.i = icmp eq i32 %31, 1
  br i1 %cmp23.i, label %if.then24.i, label %if.end16.i.cirrusfb_set_fbinfo.exit_crit_edge

if.end16.i.cirrusfb_set_fbinfo.exit_crit_edge:    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cirrusfb_set_fbinfo.exit

if.then24.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  %div1.i = lshr i32 %28, 2
  %32 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div1.i, ptr %smem_len.i, align 4
  br label %cirrusfb_set_fbinfo.exit

cirrusfb_set_fbinfo.exit:                         ; preds = %if.then24.i, %if.end16.i.cirrusfb_set_fbinfo.exit_crit_edge
  %type_aux.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 4
  %33 = ptrtoint ptr %type_aux.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %type_aux.i, align 4
  %xpanstep.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 6
  %34 = ptrtoint ptr %xpanstep.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %xpanstep.i, align 4
  %ypanstep.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 7
  %35 = ptrtoint ptr %ypanstep.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %ypanstep.i, align 2
  %ywrapstep.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 8
  %36 = ptrtoint ptr %ywrapstep.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %ywrapstep.i, align 4
  %mmio_len.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 11
  %37 = ptrtoint ptr %mmio_len.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %mmio_len.i, align 4
  %cmap.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12
  %call33.i = tail call i32 @fb_alloc_cmap(ptr noundef %cmap.i, i32 noundef 256, i32 noundef 0) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_register.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_register, %if.then7)) #9
          to label %do.end10 [label %if.then7], !srcloc !331

if.then7:                                         ; preds = %cirrusfb_set_fbinfo.exit
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %38 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device, align 4
  %40 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_register.__UNIQUE_ID_ddebug339, ptr noundef %39, ptr noundef nonnull @.str.34, ptr noundef %42) #9
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %cirrusfb_set_fbinfo.exit
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %43 = load ptr, ptr @mode_option, align 4
  %call11 = tail call i32 @fb_find_mode(ptr noundef %var, ptr noundef %info, ptr noundef %43, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.body14, label %if.end31

do.body14:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_register.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_register, %if.then26)) #9
          to label %err_dealloc_cmap [label %if.then26], !srcloc !331

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %device27 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %44 = ptrtoint ptr %device27 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device27, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_register.__UNIQUE_ID_ddebug340, ptr noundef %45, ptr noundef nonnull @.str.35) #9
  br label %err_dealloc_cmap

if.end31:                                         ; preds = %do.end10
  %activate = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 13
  %46 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %activate, align 4
  %call34 = tail call i32 @cirrusfb_check_var(ptr noundef %var, ptr noundef %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.body37, label %if.end54

do.body37:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_register.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_register, %if.then49)) #9
          to label %err_dealloc_cmap [label %if.then49], !srcloc !331

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  %device50 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %47 = ptrtoint ptr %device50 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device50, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_register.__UNIQUE_ID_ddebug341, ptr noundef %48, ptr noundef nonnull @.str.36) #9
  br label %err_dealloc_cmap

if.end54:                                         ; preds = %if.end31
  %call55 = tail call i32 @register_framebuffer(ptr noundef %info) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %do.end60, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end60:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %device61 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %49 = ptrtoint ptr %device61 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device61, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.38, i32 noundef %call55) #13
  br label %err_dealloc_cmap

err_dealloc_cmap:                                 ; preds = %do.end60, %if.then49, %do.body37, %if.then26, %do.body14
  %err.0 = phi i32 [ %call34, %if.then49 ], [ %call55, %do.end60 ], [ -22, %if.then26 ], [ -22, %do.body14 ], [ %call34, %do.body37 ]
  tail call void @fb_dealloc_cmap(ptr noundef %cmap.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_dealloc_cmap, %if.end54.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_dealloc_cmap ], [ 0, %if.end54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cirrusfb_check_var(ptr noundef %var, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %2 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_pixel, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %3, label %do.body [
    i32 1, label %sw.bb
    i32 8, label %sw.bb4
    i32 16, label %sw.bb13
    i32 24, label %sw.bb26
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %red = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %5 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %red, align 4
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %length, align 4
  %green = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %7 = call ptr @memcpy(ptr %green, ptr %red, i32 12)
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %8 = call ptr @memcpy(ptr %blue, ptr %red, i32 12)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %red5 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %9 = ptrtoint ptr %red5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %red5, align 4
  %length8 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %length8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %length8, align 4
  %green9 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %11 = call ptr @memcpy(ptr %green9, ptr %red5, i32 12)
  %blue11 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %12 = call ptr @memcpy(ptr %blue11, ptr %red5, i32 12)
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %red14 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %13 = ptrtoint ptr %red14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 11, ptr %red14, align 4
  %green16 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %14 = ptrtoint ptr %green16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 5, ptr %green16, align 4
  %blue18 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %15 = ptrtoint ptr %blue18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %blue18, align 4
  %length21 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %length21 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 5, ptr %length21, align 4
  %length23 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %17 = ptrtoint ptr %length23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 6, ptr %length23, align 4
  %length25 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %length25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 5, ptr %length25, align 4
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %red27 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %19 = ptrtoint ptr %red27 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 16, ptr %red27, align 4
  %green29 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %20 = ptrtoint ptr %green29 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %green29, align 4
  %blue31 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %21 = ptrtoint ptr %blue31 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %blue31, align 4
  %length34 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %22 = ptrtoint ptr %length34 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8, ptr %length34, align 4
  %length36 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %23 = ptrtoint ptr %length36 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8, ptr %length36, align 4
  %length38 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %24 = ptrtoint ptr %length38 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 8, ptr %length38, align 4
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_check_var.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_check_var, %if.then)) #9
          to label %cleanup [label %if.then], !srcloc !331

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %25 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device, align 4
  %27 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bits_per_pixel, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_check_var.__UNIQUE_ID_ddebug309, ptr noundef %26, ptr noundef nonnull @.str.119, i32 noundef %28) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb26, %sw.bb13, %sw.bb4, %sw.bb
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 26
  %29 = ptrtoint ptr %screen_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %screen_size, align 4
  %mul = shl i32 %30, 3
  %div = udiv i32 %mul, %3
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %31 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %xres_virtual, align 4
  %33 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp = icmp ult i32 %32, %34
  br i1 %cmp, label %if.then43, label %sw.epilog.if.end46_crit_edge

sw.epilog.if.end46_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then43:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %xres_virtual, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %sw.epilog.if.end46_crit_edge
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %36 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp47 = icmp eq i32 %37, -1
  br i1 %cmp47, label %if.then48, label %if.end46.if.end58_crit_edge

if.end46.if.end58_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %xres_virtual, align 4
  %div50 = udiv i32 %div, %39
  %40 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %div50, ptr %yres_virtual, align 4
  %device55 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %41 = ptrtoint ptr %device55 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device55, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %42, ptr noundef nonnull @.str.120, i32 noundef %39, i32 noundef %div50) #13
  br label %if.end58

if.end58:                                         ; preds = %if.then48, %if.end46.if.end58_crit_edge
  %43 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %yres_virtual, align 4
  %yres60 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %45 = ptrtoint ptr %yres60 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %yres60, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp61 = icmp ult i32 %44, %46
  br i1 %cmp61, label %if.then62, label %if.end58.if.end65_crit_edge

if.end58.if.end65_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %yres_virtual, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end58.if.end65_crit_edge
  %48 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %xres_virtual, align 4
  %50 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %yres_virtual, align 4
  %mul68 = mul i32 %51, %49
  call void @__sanitizer_cov_trace_cmp4(i32 %mul68, i32 %div)
  %cmp69 = icmp ugt i32 %mul68, %div
  br i1 %cmp69, label %do.end73, label %if.end78

do.end73:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %device74 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %52 = ptrtoint ptr %device74 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device74, align 4
  %54 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bits_per_pixel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.122, i32 noundef %49, i32 noundef %51, i32 noundef %55) #13
  br label %cleanup

if.end78:                                         ; preds = %if.end65
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %56 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %xoffset, align 4
  %58 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %var, align 4
  %sub = sub i32 %49, %59
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %sub)
  %cmp81 = icmp ugt i32 %57, %sub
  br i1 %cmp81, label %if.then82, label %if.end78.if.end88_crit_edge

if.end78.if.end88_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then82:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %sub86 = add i32 %sub, -1
  %60 = ptrtoint ptr %xoffset to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %sub86, ptr %xoffset, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then82, %if.end78.if.end88_crit_edge
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %61 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %yoffset, align 4
  %sub91 = sub i32 %51, %46
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %sub91)
  %cmp92 = icmp ugt i32 %62, %sub91
  br i1 %cmp92, label %if.then93, label %if.end88.if.end99_crit_edge

if.end88.if.end99_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

if.then93:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  %sub97 = add i32 %sub91, -1
  %63 = ptrtoint ptr %yoffset to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub97, ptr %yoffset, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then93, %if.end88.if.end99_crit_edge
  %msb_right105 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 2
  %msb_right107 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 2
  %64 = ptrtoint ptr %msb_right107 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %msb_right107, align 4
  %msb_right109 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 2
  %65 = ptrtoint ptr %msb_right109 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %msb_right109, align 4
  %vmode = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %66 = call ptr @memset(ptr %msb_right105, i32 0, i32 16)
  %67 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %vmode, align 4
  %and = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool111.not = icmp eq i32 %and, 0
  br i1 %tobool111.not, label %if.else, label %if.then112

if.then112:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  %mul113 = shl i32 %46, 1
  br label %if.end120

if.else:                                          ; preds = %if.end99
  %and115 = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %if.else.if.end120_crit_edge, label %if.then117

if.else.if.end120_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.then117:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %46, 1
  %div118 = sdiv i32 %add, 2
  br label %if.end120

if.end120:                                        ; preds = %if.then117, %if.else.if.end120_crit_edge, %if.then112
  %yres.0 = phi i32 [ %mul113, %if.then112 ], [ %div118, %if.then117 ], [ %46, %if.else.if.end120_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1279, i32 %yres.0)
  %cmp121 = icmp sgt i32 %yres.0, 1279
  br i1 %cmp121, label %do.end125, label %if.end127

do.end125:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  %device126 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %69 = ptrtoint ptr %device126 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %device126, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.125) #13
  br label %cleanup

if.end127:                                        ; preds = %if.end120
  %call128 = tail call fastcc i32 @cirrusfb_check_pixclock(ptr noundef %var, ptr noundef %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end131, label %if.end127.cleanup_crit_edge

if.end127.cleanup_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end131:                                        ; preds = %if.end127
  %btype.i = getelementptr inbounds %struct.cirrusfb_info, ptr %1, i32 0, i32 2
  %71 = ptrtoint ptr %btype.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %btype.i, align 4
  %73 = and i32 %72, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %73)
  %.not = icmp eq i32 %73, 8
  br i1 %.not, label %if.end131.cleanup_crit_edge, label %if.then134

if.end131.cleanup_crit_edge:                      ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then134:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  %accel_flags = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 16
  %74 = ptrtoint ptr %accel_flags to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %accel_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then134, %if.end131.cleanup_crit_edge, %if.end127.cleanup_crit_edge, %do.end125, %do.end73, %if.then, %do.body
  %retval.0 = phi i32 [ -22, %do.end73 ], [ -22, %do.end125 ], [ -22, %if.then ], [ -22, %if.end127.cleanup_crit_edge ], [ 0, %if.then134 ], [ 0, %if.end131.cleanup_crit_edge ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cirrusfb_open(ptr nocapture noundef readnone %info, i32 noundef %user) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @opencount, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @opencount, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cirrusfb_release(ptr nocapture noundef readnone %info, i32 noundef %user) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @opencount, align 4
  %dec = add i32 %0, -1
  store i32 %dec, ptr @opencount, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cirrusfb_set_par(ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @cirrusfb_set_par_foo(ptr noundef %info)
  tail call fastcc void @cirrusfb_set_par_foo(ptr noundef %info)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cirrusfb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %regno)
  %cmp = icmp ugt i32 %regno, 255
  br i1 %cmp, label %entry.cleanup39_crit_edge, label %if.end

entry.cleanup39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup39

if.end:                                           ; preds = %entry
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %2 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %visual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp1 = icmp eq i32 %3, 2
  br i1 %cmp1, label %if.then2, label %if.end28

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %regno)
  %cmp14 = icmp ugt i32 %regno, 15
  br i1 %cmp14, label %if.then2.cleanup39_crit_edge, label %if.end16

if.then2.cleanup39_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup39

if.end16:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %length11 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %4 = ptrtoint ptr %length11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length11, align 4
  %sub12 = sub i32 16, %5
  %shr13 = lshr i32 %blue, %sub12
  %blue10 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %length6 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %6 = ptrtoint ptr %length6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length6, align 4
  %sub7 = sub i32 16, %7
  %shr8 = lshr i32 %green, %sub7
  %green5 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  %sub = sub i32 16, %9
  %shr = lshr i32 %red, %sub
  %red3 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %10 = ptrtoint ptr %red3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %red3, align 4
  %shl = shl i32 %shr, %11
  %12 = ptrtoint ptr %green5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %green5, align 4
  %shl22 = shl i32 %shr8, %13
  %or = or i32 %shl, %shl22
  %14 = ptrtoint ptr %blue10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %blue10, align 4
  %shl26 = shl i32 %shr13, %15
  %or27 = or i32 %or, %shl26
  %arrayidx = getelementptr %struct.cirrusfb_info, ptr %1, i32 0, i32 7, i32 %regno
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or27, ptr %arrayidx, align 4
  br label %cleanup39

if.end28:                                         ; preds = %if.end
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %17 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %18)
  %cmp30 = icmp eq i32 %18, 8
  br i1 %cmp30, label %if.then31, label %if.end28.cleanup39_crit_edge

if.end28.cleanup39_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup39

if.then31:                                        ; preds = %if.end28
  %conv = trunc i32 %regno to i8
  %shr32 = lshr i32 %red, 10
  %conv33 = trunc i32 %shr32 to i8
  %shr34 = lshr i32 %green, 10
  %conv35 = trunc i32 %shr34 to i8
  %shr36 = lshr i32 %blue, 10
  %conv37 = trunc i32 %shr36 to i8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 968
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 %conv) #9, !srcloc !332
  br label %vga_w.exit.i

if.else.i.i:                                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873400 to ptr), i8 %conv) #9, !srcloc !332
  br label %vga_w.exit.i

vga_w.exit.i:                                     ; preds = %if.else.i.i, %if.then.i.i
  %btype.i = getelementptr inbounds %struct.cirrusfb_info, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %btype.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %btype.i, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %22, label %lor.lhs.false12.i [
    i32 3, label %vga_w.exit.i.if.then.i_crit_edge
    i32 5, label %vga_w.exit.i.if.then.i_crit_edge58
    i32 6, label %vga_w.exit.i.if.then.i_crit_edge59
    i32 7, label %vga_w.exit.i.if.then.i_crit_edge60
    i32 1, label %vga_w.exit.i.if.then.i_crit_edge61
  ]

vga_w.exit.i.if.then.i_crit_edge61:               ; preds = %vga_w.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

vga_w.exit.i.if.then.i_crit_edge60:               ; preds = %vga_w.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

vga_w.exit.i.if.then.i_crit_edge59:               ; preds = %vga_w.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

vga_w.exit.i.if.then.i_crit_edge58:               ; preds = %vga_w.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

vga_w.exit.i.if.then.i_crit_edge:                 ; preds = %vga_w.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false12.i:                                ; preds = %vga_w.exit.i
  %24 = and i32 %22, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %24)
  %.not.i = icmp eq i32 %24, 8
  br i1 %.not.i, label %lor.lhs.false12.i.if.then.i_crit_edge, label %if.else.i

lor.lhs.false12.i.if.then.i_crit_edge:            ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false12.i.if.then.i_crit_edge, %vga_w.exit.i.if.then.i_crit_edge, %vga_w.exit.i.if.then.i_crit_edge58, %vga_w.exit.i.if.then.i_crit_edge59, %vga_w.exit.i.if.then.i_crit_edge60, %vga_w.exit.i.if.then.i_crit_edge61
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp14.i = icmp eq i32 %22, 3
  %spec.select.i = select i1 %cmp14.i, i16 5064, i16 969
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %tobool.not.i50.i = icmp eq ptr %26, null
  br i1 %tobool.not.i50.i, label %if.else.i53.i, label %if.then.i52.i

if.then.i52.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %conv.i.i.i = zext i16 %spec.select.i to i32
  %add.ptr.i.i51.i = getelementptr i8, ptr %26, i32 %conv.i.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i51.i, i8 %conv33) #9, !srcloc !332
  br label %vga_w.exit54.i

if.else.i53.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i4.i.i = zext i16 %spec.select.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  %add.i.i.i.i = or i32 %conv.i4.i.i, -18874368
  %27 = inttoptr i32 %add.i.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %conv33) #9, !srcloc !332
  br label %vga_w.exit54.i

vga_w.exit54.i:                                   ; preds = %if.else.i53.i, %if.then.i52.i
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %tobool.not.i55.i = icmp eq ptr %29, null
  br i1 %tobool.not.i55.i, label %if.else.i61.i, label %if.then.i58.i

if.then.i58.i:                                    ; preds = %vga_w.exit54.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %conv.i.i56.i = zext i16 %spec.select.i to i32
  %add.ptr.i.i57.i = getelementptr i8, ptr %29, i32 %conv.i.i56.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i57.i, i8 %conv35) #9, !srcloc !332
  br label %vga_w.exit62.i

if.else.i61.i:                                    ; preds = %vga_w.exit54.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i4.i59.i = zext i16 %spec.select.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  %add.i.i.i60.i = or i32 %conv.i4.i59.i, -18874368
  %30 = inttoptr i32 %add.i.i.i60.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %conv35) #9, !srcloc !332
  br label %vga_w.exit62.i

vga_w.exit62.i:                                   ; preds = %if.else.i61.i, %if.then.i58.i
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %tobool.not.i63.i = icmp eq ptr %32, null
  br i1 %tobool.not.i63.i, label %if.else.i69.i, label %if.then.i66.i

if.then.i66.i:                                    ; preds = %vga_w.exit62.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %conv.i.i64.i = zext i16 %spec.select.i to i32
  %add.ptr.i.i65.i = getelementptr i8, ptr %32, i32 %conv.i.i64.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i65.i, i8 %conv37) #9, !srcloc !332
  br label %cleanup39

if.else.i69.i:                                    ; preds = %vga_w.exit62.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i4.i67.i = zext i16 %spec.select.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  %add.i.i.i68.i = or i32 %conv.i4.i67.i, -18874368
  %33 = inttoptr i32 %add.i.i.i68.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 %conv37) #9, !srcloc !332
  br label %cleanup39

if.else.i:                                        ; preds = %lor.lhs.false12.i
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %tobool.not.i71.i = icmp eq ptr %35, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i71.i, label %if.else.i74.i, label %if.then.i73.i

if.then.i73.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i72.i = getelementptr i8, ptr %35, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i72.i, i8 %conv37) #9, !srcloc !332
  br label %vga_w.exit75.i

if.else.i74.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv37) #9, !srcloc !332
  br label %vga_w.exit75.i

vga_w.exit75.i:                                   ; preds = %if.else.i74.i, %if.then.i73.i
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %tobool.not.i76.i = icmp eq ptr %37, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i76.i, label %if.else.i79.i, label %if.then.i78.i

if.then.i78.i:                                    ; preds = %vga_w.exit75.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i77.i = getelementptr i8, ptr %37, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i77.i, i8 %conv35) #9, !srcloc !332
  br label %vga_w.exit80.i

if.else.i79.i:                                    ; preds = %vga_w.exit75.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv35) #9, !srcloc !332
  br label %vga_w.exit80.i

vga_w.exit80.i:                                   ; preds = %if.else.i79.i, %if.then.i78.i
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %tobool.not.i81.i = icmp eq ptr %39, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i81.i, label %if.else.i84.i, label %if.then.i83.i

if.then.i83.i:                                    ; preds = %vga_w.exit80.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i82.i = getelementptr i8, ptr %39, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i82.i, i8 %conv33) #9, !srcloc !332
  br label %cleanup39

if.else.i84.i:                                    ; preds = %vga_w.exit80.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %conv33) #9, !srcloc !332
  br label %cleanup39

cleanup39:                                        ; preds = %if.else.i84.i, %if.then.i83.i, %if.else.i69.i, %if.then.i66.i, %if.end28.cleanup39_crit_edge, %if.end16, %if.then2.cleanup39_crit_edge, %entry.cleanup39_crit_edge
  %retval.1 = phi i32 [ -22, %entry.cleanup39_crit_edge ], [ 0, %if.end16 ], [ 1, %if.then2.cleanup39_crit_edge ], [ 0, %if.end28.cleanup39_crit_edge ], [ 0, %if.then.i66.i ], [ 0, %if.else.i69.i ], [ 0, %if.then.i83.i ], [ 0, %if.else.i84.i ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cirrusfb_blank(i32 noundef %blank_mode, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %blank_mode1 = getelementptr inbounds %struct.cirrusfb_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %blank_mode1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blank_mode1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_blank.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_blank, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !331

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_blank.__UNIQUE_ID_ddebug335, ptr noundef %5, ptr noundef nonnull @.str.106, i32 noundef %blank_mode) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp ne i32 %7, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %blank_mode)
  %cmp4 = icmp eq i32 %3, %blank_mode
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp4
  br i1 %or.cond, label %do.body6, label %if.end23

do.body6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_blank.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_blank, %if.then18)) #9
          to label %cleanup [label %if.then18], !srcloc !331

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  %device19 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %8 = ptrtoint ptr %device19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device19, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_blank.__UNIQUE_ID_ddebug336, ptr noundef %9, ptr noundef nonnull @.str.107) #9
  br label %cleanup

if.end23:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch = icmp ult i32 %3, 2
  %spec.select = select i1 %switch, i8 0, i8 32
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i, label %if.then.i4.i

if.then.i4.i:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 1) #9, !srcloc !332
  %add.ptr.i.i3.i = getelementptr i8, ptr %11, i32 965
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  br label %vga_rseq.exit

if.else.i5.i:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #9, !srcloc !332
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !335
  br label %vga_rseq.exit

vga_rseq.exit:                                    ; preds = %if.else.i5.i, %if.then.i4.i
  %retval.0.i.i = phi i8 [ %12, %if.then.i4.i ], [ %13, %if.else.i5.i ]
  %14 = and i8 %retval.0.i.i, -33
  %or = or i8 %14, %spec.select
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %tobool.not.i.i102 = icmp eq ptr %16, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i102, label %if.else.i5.i106, label %if.then.i4.i105

if.then.i4.i105:                                  ; preds = %vga_rseq.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i103 = getelementptr i8, ptr %16, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i103, i8 1) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i104 = getelementptr i8, ptr %16, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i104, i8 %or) #9, !srcloc !332
  br label %vga_wseq.exit

if.else.i5.i106:                                  ; preds = %vga_rseq.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or) #9, !srcloc !332
  br label %vga_wseq.exit

vga_wseq.exit:                                    ; preds = %if.else.i5.i106, %if.then.i4.i105
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %blank_mode)
  %17 = icmp ult i32 %blank_mode, 5
  br i1 %17, label %switch.lookup, label %do.body36

do.body36:                                        ; preds = %vga_wseq.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_blank.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_blank, %if.then48)) #9
          to label %cleanup [label %if.then48], !srcloc !331

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #11
  %device49 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %18 = ptrtoint ptr %device49 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device49, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_blank.__UNIQUE_ID_ddebug337, ptr noundef %19, ptr noundef nonnull @.str.108) #9
  br label %cleanup

switch.lookup:                                    ; preds = %vga_wseq.exit
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.cirrusfb_blank, i32 0, i32 %blank_mode
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %20)
  %switch.load = load i8, ptr %switch.gep, align 1
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %tobool.not.i.i107 = icmp eq ptr %22, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i107, label %if.else.i5.i111, label %if.then.i4.i110

if.then.i4.i110:                                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i108 = getelementptr i8, ptr %22, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i108, i8 14) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i109 = getelementptr i8, ptr %22, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i109, i8 %switch.load) #9, !srcloc !332
  br label %vga_wgfx.exit

if.else.i5.i111:                                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 14) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %switch.load) #9, !srcloc !332
  br label %vga_wgfx.exit

vga_wgfx.exit:                                    ; preds = %if.else.i5.i111, %if.then.i4.i110
  %23 = ptrtoint ptr %blank_mode1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %blank_mode, ptr %blank_mode1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_blank.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_blank, %if.then67)) #9
          to label %do.end71 [label %if.then67], !srcloc !331

if.then67:                                        ; preds = %vga_wgfx.exit
  call void @__sanitizer_cov_trace_pc() #11
  %device68 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %24 = ptrtoint ptr %device68 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device68, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_blank.__UNIQUE_ID_ddebug338, ptr noundef %25, ptr noundef nonnull @.str.107) #9
  br label %do.end71

do.end71:                                         ; preds = %if.then67, %vga_wgfx.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %blank_mode)
  %cmp72 = icmp eq i32 %blank_mode, 1
  %cond = zext i1 %cmp72 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end71, %if.then48, %do.body36, %if.then18, %do.body6
  %retval.0 = phi i32 [ %cond, %do.end71 ], [ 0, %if.then18 ], [ 1, %if.then48 ], [ 0, %do.body6 ], [ 1, %do.body36 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cirrusfb_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %vmode = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %2 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vmode, align 4
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %xoffset1 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %4 = ptrtoint ptr %xoffset1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xoffset1, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %6 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bits_per_pixel, align 4
  %mul = mul i32 %7, %5
  %div112 = lshr i32 %mul, 3
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %8 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %yoffset, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %10 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %line_length, align 4
  %mul3 = mul i32 %11, %9
  %add = add i32 %mul3, %div112
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %12 = trunc i32 %5 to i8
  %conv = and i8 %12, 7
  %div8113 = lshr i32 %add, 2
  %rem9 = shl nuw nsw i32 %div112, 1
  %13 = trunc i32 %rem9 to i8
  %conv11 = and i8 %13, 6
  %base.0 = select i1 %cmp, i32 %add, i32 %div8113
  %xpix.0 = select i1 %cmp, i8 %conv, i8 %conv11
  %btype.i = getelementptr inbounds %struct.cirrusfb_info, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %btype.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %btype.i, align 4
  %16 = and i32 %15, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %16)
  %.not = icmp eq i32 %16, 8
  br i1 %.not, label %if.end.if.end15_crit_edge, label %if.then14

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then14:                                        ; preds = %if.end
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %tobool.not.i.i.i = icmp eq ptr %18, null
  %add.ptr.i.i.i.i = getelementptr i8, ptr %18, i32 974
  %add.ptr.i.i2.i.i = getelementptr i8, ptr %18, i32 975
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end.i, %if.then14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i.i, label %if.else.i4.i.i, label %if.then.i3.i.i

if.then.i3.i.i:                                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 49) #9, !srcloc !332
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i2.i.i) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  br label %vga_rgfx.exit.i

if.else.i4.i.i:                                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 49) #9, !srcloc !332
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr)) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !335
  br label %vga_rgfx.exit.i

vga_rgfx.exit.i:                                  ; preds = %if.else.i4.i.i, %if.then.i3.i.i
  %retval.0.i.i.i = phi i8 [ %19, %if.then.i3.i.i ], [ %20, %if.else.i4.i.i ]
  %21 = and i8 %retval.0.i.i.i, 8
  %tobool.not.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i, label %vga_rgfx.exit.i.if.end15_crit_edge, label %do.end.i

vga_rgfx.exit.i.if.end15_crit_edge:               ; preds = %vga_rgfx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

do.end.i:                                         ; preds = %vga_rgfx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !339
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !340
  br label %while.cond.i

if.end15:                                         ; preds = %vga_rgfx.exit.i.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %conv18 = trunc i32 %base.0 to i8
  %tobool.not.i.i = icmp eq ptr %23, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i, label %if.then.i4.i

if.then.i4.i:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 13) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i = getelementptr i8, ptr %23, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i, i8 %conv18) #9, !srcloc !332
  br label %vga_wcrt.exit

if.else.i5.i:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 13) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %conv18) #9, !srcloc !332
  br label %vga_wcrt.exit

vga_wcrt.exit:                                    ; preds = %if.else.i5.i, %if.then.i4.i
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %shr = lshr i32 %base.0, 8
  %conv21 = trunc i32 %shr to i8
  %tobool.not.i.i114 = icmp eq ptr %25, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i114, label %if.else.i5.i118, label %if.then.i4.i117

if.then.i4.i117:                                  ; preds = %vga_wcrt.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i115 = getelementptr i8, ptr %25, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i115, i8 12) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i116 = getelementptr i8, ptr %25, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i116, i8 %conv21) #9, !srcloc !332
  br label %vga_wcrt.exit119

if.else.i5.i118:                                  ; preds = %vga_wcrt.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 12) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %conv21) #9, !srcloc !332
  br label %vga_wcrt.exit119

vga_wcrt.exit119:                                 ; preds = %if.else.i5.i118, %if.then.i4.i117
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %tobool.not.i.i120 = icmp eq ptr %27, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i120, label %if.else.i5.i124, label %if.then.i4.i123

if.then.i4.i123:                                  ; preds = %vga_wcrt.exit119
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i121 = getelementptr i8, ptr %27, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i121, i8 27) #9, !srcloc !332
  %add.ptr.i.i3.i122 = getelementptr i8, ptr %27, i32 981
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i122) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  br label %vga_rcrt.exit

if.else.i5.i124:                                  ; preds = %vga_wcrt.exit119
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 27) #9, !srcloc !332
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !335
  br label %vga_rcrt.exit

vga_rcrt.exit:                                    ; preds = %if.else.i5.i124, %if.then.i4.i123
  %retval.0.i.i = phi i8 [ %28, %if.then.i4.i123 ], [ %29, %if.else.i5.i124 ]
  %30 = and i8 %retval.0.i.i, -14
  %and27 = lshr i32 %base.0, 16
  %31 = trunc i32 %and27 to i8
  %32 = and i8 %31, 1
  %and33 = lshr i32 %base.0, 15
  %33 = trunc i32 %and33 to i8
  %34 = and i8 %33, 4
  %35 = and i8 %33, 8
  %36 = or i8 %34, %32
  %37 = or i8 %36, %35
  %38 = or i8 %37, %30
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %tobool.not.i.i125 = icmp eq ptr %40, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i125, label %if.else.i5.i129, label %if.then.i4.i128

if.then.i4.i128:                                  ; preds = %vga_rcrt.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i126 = getelementptr i8, ptr %40, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i126, i8 27) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i127 = getelementptr i8, ptr %40, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i127, i8 %38) #9, !srcloc !332
  br label %vga_wcrt.exit130

if.else.i5.i129:                                  ; preds = %vga_rcrt.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 27) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %38) #9, !srcloc !332
  br label %vga_wcrt.exit130

vga_wcrt.exit130:                                 ; preds = %if.else.i5.i129, %if.then.i4.i128
  %41 = ptrtoint ptr %btype.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %btype.i, align 4
  %43 = and i32 %42, 134217727
  %44 = lshr i32 29, %43
  %45 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %bf.cast.not.not = icmp eq i32 %45, 0
  br i1 %bf.cast.not.not, label %if.then48, label %vga_wcrt.exit130.if.end69_crit_edge

vga_wcrt.exit130.if.end69_crit_edge:              ; preds = %vga_wcrt.exit130
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then48:                                        ; preds = %vga_wcrt.exit130
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %tobool.not.i.i131 = icmp eq ptr %47, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i131, label %if.else.i5.i135, label %if.then.i4.i134

if.then.i4.i134:                                  ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i132 = getelementptr i8, ptr %47, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i132, i8 29) #9, !srcloc !332
  %add.ptr.i.i3.i133 = getelementptr i8, ptr %47, i32 981
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i133) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  br label %vga_rcrt.exit137

if.else.i5.i135:                                  ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 29) #9, !srcloc !332
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !335
  br label %vga_rcrt.exit137

vga_rcrt.exit137:                                 ; preds = %if.else.i5.i135, %if.then.i4.i134
  %retval.0.i.i136 = phi i8 [ %48, %if.then.i4.i134 ], [ %49, %if.else.i5.i135 ]
  %50 = ptrtoint ptr %btype.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %btype.i, align 4
  %52 = and i32 %51, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %52)
  %.not149 = icmp eq i32 %52, 8
  br i1 %.not149, label %if.then53, label %if.else60

if.then53:                                        ; preds = %vga_rcrt.exit137
  call void @__sanitizer_cov_trace_pc() #11
  %53 = and i8 %retval.0.i.i136, -25
  %54 = and i8 %31, 24
  %conv59 = or i8 %53, %54
  br label %if.end67

if.else60:                                        ; preds = %vga_rcrt.exit137
  call void @__sanitizer_cov_trace_pc() #11
  %55 = and i8 %retval.0.i.i136, 127
  %shr63 = lshr i32 %base.0, 12
  %56 = trunc i32 %shr63 to i8
  %57 = and i8 %56, -128
  %conv66 = or i8 %55, %57
  br label %if.end67

if.end67:                                         ; preds = %if.else60, %if.then53
  %tmp.3 = phi i8 [ %conv59, %if.then53 ], [ %conv66, %if.else60 ]
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %tobool.not.i.i139 = icmp eq ptr %59, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i139, label %if.else.i5.i143, label %if.then.i4.i142

if.then.i4.i142:                                  ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i140 = getelementptr i8, ptr %59, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i140, i8 29) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i141 = getelementptr i8, ptr %59, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i141, i8 %tmp.3) #9, !srcloc !332
  br label %if.end69

if.else.i5.i143:                                  ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 29) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %tmp.3) #9, !srcloc !332
  br label %if.end69

if.end69:                                         ; preds = %if.else.i5.i143, %if.then.i4.i142, %vga_wcrt.exit130.if.end69_crit_edge
  %60 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp72 = icmp eq i32 %61, 1
  br i1 %cmp72, label %if.then74, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then74:                                        ; preds = %if.end69
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %tobool.not.i.i145 = icmp eq ptr %63, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i145, label %if.else.i5.i148, label %if.then.i4.i147

if.then.i4.i147:                                  ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i146 = getelementptr i8, ptr %63, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i146, i8 51) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i146, i8 %xpix.0) #9, !srcloc !332
  br label %cleanup

if.else.i5.i148:                                  ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 51) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 %xpix.0) #9, !srcloc !332
  br label %cleanup

cleanup:                                          ; preds = %if.else.i5.i148, %if.then.i4.i147, %if.end69.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end69.cleanup_crit_edge ], [ 0, %if.then.i4.i147 ], [ 0, %if.else.i5.i148 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cirrusfb_fillrect(ptr noundef %info, ptr noundef %region) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %2 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_pixel, align 4
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %4 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %visual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  %color1 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 4
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %color1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %color1, align 4
  %arrayidx = getelementptr %struct.cirrusfb_info, ptr %1, i32 0, i32 7, i32 %7
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond.in = phi ptr [ %arrayidx, %cond.true ], [ %color1, %entry.cond.end_crit_edge ]
  %8 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %cond = load i32, ptr %cond.in, align 4
  %state = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp3.not = icmp eq i32 %10, 0
  br i1 %cmp3.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cfb_fillrect(ptr noundef %info, ptr noundef %region) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %13 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %xres_virtual, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %15 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %yres_virtual, align 4
  %17 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %17)
  %modded.sroa.0.0.copyload = load i32, ptr %region, align 4
  %modded.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %region, i32 4
  %18 = ptrtoint ptr %modded.sroa.7.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %modded.sroa.7.0.copyload = load i32, ptr %modded.sroa.7.0..sroa_idx, align 4
  %modded.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %region, i32 8
  %19 = ptrtoint ptr %modded.sroa.11.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %modded.sroa.11.0.copyload = load i32, ptr %modded.sroa.11.0..sroa_idx, align 4
  %modded.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %region, i32 12
  %20 = ptrtoint ptr %modded.sroa.15.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %modded.sroa.15.0.copyload = load i32, ptr %modded.sroa.15.0..sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %modded.sroa.11.0.copyload)
  %tobool8.not = icmp ne i32 %modded.sroa.11.0.copyload, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %modded.sroa.15.0.copyload)
  %tobool9.not = icmp ne i32 %modded.sroa.15.0.copyload, 0
  %or.cond = select i1 %tobool8.not, i1 %tobool9.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %modded.sroa.0.0.copyload, i32 %14)
  %cmp11.not = icmp ult i32 %modded.sroa.0.0.copyload, %14
  %or.cond82 = select i1 %or.cond, i1 %cmp11.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %modded.sroa.7.0.copyload, i32 %16)
  %cmp13.not = icmp ult i32 %modded.sroa.7.0.copyload, %16
  %or.cond83 = select i1 %or.cond82, i1 %cmp13.not, i1 false
  br i1 %or.cond83, label %if.end15, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %mul = mul i32 %modded.sroa.0.0.copyload, %3
  %div80 = lshr i32 %mul, 3
  %conv = trunc i32 %div80 to i16
  %23 = ptrtoint ptr %modded.sroa.7.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %modded.sroa.7.0..sroa_idx, align 4
  %conv36 = trunc i32 %24 to i16
  %25 = ptrtoint ptr %modded.sroa.11.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %modded.sroa.11.0..sroa_idx, align 4
  %mul38 = mul i32 %26, %3
  %div3981 = lshr i32 %mul38, 3
  %conv40 = trunc i32 %div3981 to i16
  %27 = ptrtoint ptr %modded.sroa.15.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %modded.sroa.15.0..sroa_idx, align 4
  %conv42 = trunc i32 %28 to i16
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %29 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %line_length, align 4
  %conv44 = trunc i32 %30 to i16
  tail call fastcc void @cirrusfb_RectFill(ptr noundef %22, i32 noundef %3, i16 noundef zeroext %conv, i16 noundef zeroext %conv36, i16 noundef zeroext %conv40, i16 noundef zeroext %conv42, i32 noundef %cond, i32 noundef %cond, i16 noundef zeroext %conv44, i8 noundef zeroext 64)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end5.cleanup_crit_edge, %if.then4, %cond.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cirrusfb_copyarea(ptr noundef %info, ptr noundef %area) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %2 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_pixel, align 4
  %state = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cfb_copyarea(ptr noundef %info, ptr noundef %area) #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %8 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xres_virtual, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %10 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %yres_virtual, align 4
  %12 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %12)
  %modded.sroa.0.0.copyload = load i32, ptr %area, align 4
  %modded.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %area, i32 4
  %13 = ptrtoint ptr %modded.sroa.7.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %modded.sroa.7.0.copyload = load i32, ptr %modded.sroa.7.0..sroa_idx, align 4
  %modded.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %area, i32 8
  %14 = ptrtoint ptr %modded.sroa.11.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %modded.sroa.11.0.copyload = load i32, ptr %modded.sroa.11.0..sroa_idx, align 4
  %modded.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %area, i32 12
  %15 = ptrtoint ptr %modded.sroa.17.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %modded.sroa.17.0.copyload = load i32, ptr %modded.sroa.17.0..sroa_idx, align 4
  %modded.sroa.23.0..sroa_idx = getelementptr inbounds i8, ptr %area, i32 16
  %16 = ptrtoint ptr %modded.sroa.23.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %modded.sroa.23.0.copyload = load i32, ptr %modded.sroa.23.0..sroa_idx, align 4
  %modded.sroa.27.0..sroa_idx = getelementptr inbounds i8, ptr %area, i32 20
  %17 = ptrtoint ptr %modded.sroa.27.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %modded.sroa.27.0.copyload = load i32, ptr %modded.sroa.27.0..sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %modded.sroa.11.0.copyload)
  %tobool5.not = icmp ne i32 %modded.sroa.11.0.copyload, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %modded.sroa.17.0.copyload)
  %tobool6.not = icmp ne i32 %modded.sroa.17.0.copyload, 0
  %or.cond = select i1 %tobool5.not, i1 %tobool6.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %modded.sroa.23.0.copyload)
  %cmp8.not = icmp ugt i32 %9, %modded.sroa.23.0.copyload
  %or.cond116 = select i1 %or.cond, i1 %cmp8.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %modded.sroa.27.0.copyload)
  %cmp10.not = icmp ugt i32 %11, %modded.sroa.27.0.copyload
  %or.cond117 = select i1 %or.cond116, i1 %cmp10.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %modded.sroa.0.0.copyload, i32 %9)
  %cmp12.not = icmp ult i32 %modded.sroa.0.0.copyload, %9
  %or.cond118 = select i1 %or.cond117, i1 %cmp12.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %modded.sroa.7.0.copyload, i32 %11)
  %cmp14.not = icmp ult i32 %modded.sroa.7.0.copyload, %11
  %or.cond119 = select i1 %or.cond118, i1 %cmp14.not, i1 false
  br i1 %or.cond119, label %if.end16, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end2
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %20 = ptrtoint ptr %modded.sroa.23.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %modded.sroa.23.0..sroa_idx, align 4
  %mul = mul i32 %21, %3
  %div113 = lshr i32 %mul, 3
  %conv = trunc i32 %div113 to i16
  %22 = ptrtoint ptr %modded.sroa.27.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %modded.sroa.27.0..sroa_idx, align 4
  %conv55 = trunc i32 %23 to i16
  %mul57 = mul i32 %modded.sroa.0.0.copyload, %3
  %div58114 = lshr i32 %mul57, 3
  %conv59 = trunc i32 %div58114 to i16
  %24 = ptrtoint ptr %modded.sroa.7.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %modded.sroa.7.0..sroa_idx, align 4
  %conv61 = trunc i32 %25 to i16
  %26 = ptrtoint ptr %modded.sroa.11.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %modded.sroa.11.0..sroa_idx, align 4
  %mul63 = mul i32 %27, %3
  %div64115 = lshr i32 %mul63, 3
  %conv65 = trunc i32 %div64115 to i16
  %28 = ptrtoint ptr %modded.sroa.17.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %modded.sroa.17.0..sroa_idx, align 4
  %conv67 = trunc i32 %29 to i16
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %30 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %line_length, align 4
  %conv68 = trunc i32 %31 to i16
  %sub.i = add i16 %conv65, -1
  %sub3.i = add i16 %conv67, -1
  %conv5.i = and i32 %23, 65535
  %conv6.i = and i32 %25, 65535
  call void @__sanitizer_cov_trace_cmp2(i16 %conv55, i16 %conv61)
  %cmp.not.i = icmp ugt i16 %conv55, %conv61
  br i1 %cmp.not.i, label %if.end16.if.end24.i_crit_edge, label %if.then.i

if.end16.if.end24.i_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_cmp2(i16 %conv55, i16 %conv61)
  %cmp10.i = icmp eq i16 %conv55, %conv61
  br i1 %cmp10.i, label %if.then12.i, label %if.then.i.if.end24.i_crit_edge

if.then.i.if.end24.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp2(i16 %conv, i16 %conv59)
  %cmp15.i = icmp ult i16 %conv, %conv59
  %not.cmp15.i = xor i1 %cmp15.i, true
  %spec.select1.i = zext i1 %cmp15.i to i8
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then12.i, %if.then.i.if.end24.i_crit_edge, %if.end16.if.end24.i_crit_edge
  %tobool.not.i = phi i1 [ true, %if.end16.if.end24.i_crit_edge ], [ %not.cmp15.i, %if.then12.i ], [ false, %if.then.i.if.end24.i_crit_edge ]
  %bltmode.0.i = phi i8 [ 0, %if.end16.if.end24.i_crit_edge ], [ %spec.select1.i, %if.then12.i ], [ 1, %if.then.i.if.end24.i_crit_edge ]
  %conv26.i = and i32 %31, 65535
  %mul.i = mul nuw i32 %conv26.i, %conv5.i
  %conv27.i = and i32 %div113, 65535
  %add.i = add nuw i32 %mul.i, %conv27.i
  %mul30.i = mul nuw i32 %conv26.i, %conv6.i
  %conv31.i = and i32 %div58114, 65535
  %add32.i = add nuw i32 %mul30.i, %conv31.i
  br i1 %tobool.not.i, label %if.end24.i.if.end46.i_crit_edge, label %if.then33.i

if.end24.i.if.end46.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.then33.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv34.i = zext i16 %sub3.i to i32
  %mul36.i = mul nuw i32 %conv26.i, %conv34.i
  %conv37.i = zext i16 %sub.i to i32
  %add38.i = add nuw i32 %mul36.i, %conv37.i
  %add39.i = add i32 %add38.i, %add.i
  %add45.i = add i32 %add38.i, %add32.i
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then33.i, %if.end24.i.if.end46.i_crit_edge
  %nsrc.0.i = phi i32 [ %add39.i, %if.then33.i ], [ %add.i, %if.end24.i.if.end46.i_crit_edge ]
  %ndest.0.i = phi i32 [ %add45.i, %if.then33.i ], [ %add32.i, %if.end24.i.if.end46.i_crit_edge ]
  %tobool.not.i.i.i.i = icmp eq ptr %19, null
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %19, i32 974
  %add.ptr.i.i2.i.i.i = getelementptr i8, ptr %19, i32 975
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %do.end.i.i, %if.end46.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i.i.i, label %if.else.i4.i.i.i, label %if.then.i3.i.i.i

if.then.i3.i.i.i:                                 ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i.i, i8 49) #9, !srcloc !332
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i2.i.i.i) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  br label %vga_rgfx.exit.i.i

if.else.i4.i.i.i:                                 ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 49) #9, !srcloc !332
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr)) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !335
  br label %vga_rgfx.exit.i.i

vga_rgfx.exit.i.i:                                ; preds = %if.else.i4.i.i.i, %if.then.i3.i.i.i
  %retval.0.i.i.i.i = phi i8 [ %32, %if.then.i3.i.i.i ], [ %33, %if.else.i4.i.i.i ]
  %34 = and i8 %retval.0.i.i.i.i, 8
  %tobool.not.i.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i.i, label %cirrusfb_BitBLT.exit, label %do.end.i.i

do.end.i.i:                                       ; preds = %vga_rgfx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !339
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !340
  br label %while.cond.i.i

cirrusfb_BitBLT.exit:                             ; preds = %vga_rgfx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv47.i = zext i8 %bltmode.0.i to i16
  tail call fastcc void @cirrusfb_set_blitter(ptr noundef %19, i16 noundef zeroext %sub.i, i16 noundef zeroext %sub3.i, i32 noundef %nsrc.0.i, i32 noundef %ndest.0.i, i16 noundef zeroext %conv47.i, i16 noundef zeroext %conv68) #9
  br label %cleanup

cleanup:                                          ; preds = %cirrusfb_BitBLT.exit, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cirrusfb_imageblit(ptr noundef %info, ptr noundef %image) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %2 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %3)
  %cmp = icmp eq i32 %3, 24
  %conv = select i1 %cmp, i8 12, i8 4
  %state = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.not = icmp eq i32 %5, 0
  br i1 %cmp1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end
  %depth = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 6
  %8 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp4.not = icmp eq i8 %9, 1
  br i1 %cmp4.not, label %if.else, label %lor.lhs.false.if.then6_crit_edge

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.end.if.then6_crit_edge
  tail call void @cfb_imageblit(ptr noundef %info, ptr noundef %image) #9
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %btype = getelementptr inbounds %struct.cirrusfb_info, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %btype to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %btype, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %11, label %if.else.if.else17_crit_edge [
    i32 6, label %if.else.land.lhs.true_crit_edge
    i32 1, label %if.else.land.lhs.true_crit_edge116
  ]

if.else.land.lhs.true_crit_edge116:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.else.land.lhs.true_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.else.if.else17_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else17

land.lhs.true:                                    ; preds = %if.else.land.lhs.true_crit_edge, %if.else.land.lhs.true_crit_edge116
  br i1 %cmp, label %if.then16, label %land.lhs.true.if.else17_crit_edge

land.lhs.true.if.else17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else17

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cfb_imageblit(ptr noundef %info, ptr noundef %image) #9
  br label %cleanup

if.else17:                                        ; preds = %land.lhs.true.if.else17_crit_edge, %if.else.if.else17_crit_edge
  %width = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 2
  %13 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width, align 4
  %add = add i32 %14, 7
  %shr = lshr i32 %add, 3
  %height = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 3
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height, align 4
  %mul = mul i32 %shr, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp22 = icmp eq i32 %3, 8
  br i1 %cmp22, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  %fg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  %bg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  br label %if.end30

if.else25:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %17 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pseudo_palette, align 4
  %fg_color26 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  %19 = ptrtoint ptr %fg_color26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fg_color26, align 4
  %arrayidx = getelementptr i32, ptr %18, i32 %20
  %bg_color28 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  %21 = ptrtoint ptr %bg_color28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bg_color28, align 4
  %arrayidx29 = getelementptr i32, ptr %18, i32 %22
  br label %if.end30

if.end30:                                         ; preds = %if.else25, %if.then24
  %fg.0.in = phi ptr [ %fg_color, %if.then24 ], [ %arrayidx, %if.else25 ]
  %bg.0.in = phi ptr [ %bg_color, %if.then24 ], [ %arrayidx29, %if.else25 ]
  %23 = ptrtoint ptr %bg.0.in to i32
  call void @__asan_load4_noabort(i32 %23)
  %bg.0 = load i32, ptr %bg.0.in, align 4
  %24 = ptrtoint ptr %fg.0.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %fg.0 = load i32, ptr %fg.0.in, align 4
  br i1 %cmp, label %if.then35, label %if.end30.if.end48_crit_edge

if.end30.if.end48_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %27 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %image, align 4
  %mul38 = mul i32 %28, 24
  %div114 = lshr exact i32 %mul38, 3
  %conv39 = trunc i32 %div114 to i16
  %dy = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 1
  %29 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dy, align 4
  %conv40 = trunc i32 %30 to i16
  %mul42 = mul i32 %14, 24
  %div43115 = lshr exact i32 %mul42, 3
  %conv44 = trunc i32 %div43115 to i16
  %conv46 = trunc i32 %16 to i16
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %31 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %line_length, align 4
  %conv47 = trunc i32 %32 to i16
  tail call fastcc void @cirrusfb_RectFill(ptr noundef %26, i32 noundef 24, i16 noundef zeroext %conv39, i16 noundef zeroext %conv40, i16 noundef zeroext %conv44, i16 noundef zeroext %conv46, i32 noundef %bg.0, i32 noundef %bg.0, i16 noundef zeroext %conv47, i8 noundef zeroext 64)
  br label %if.end48

if.end48:                                         ; preds = %if.then35, %if.end30.if.end48_crit_edge
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %35 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bits_per_pixel, align 4
  %37 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %image, align 4
  %mul53 = mul i32 %38, %3
  %div54112 = lshr i32 %mul53, 3
  %conv55 = trunc i32 %div54112 to i16
  %dy56 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 1
  %39 = ptrtoint ptr %dy56 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dy56, align 4
  %conv57 = trunc i32 %40 to i16
  %41 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %width, align 4
  %mul59 = mul i32 %42, %3
  %div60113 = lshr i32 %mul59, 3
  %conv61 = trunc i32 %div60113 to i16
  %43 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %height, align 4
  %conv63 = trunc i32 %44 to i16
  %line_length65 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %45 = ptrtoint ptr %line_length65 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %line_length65, align 4
  %conv66 = trunc i32 %46 to i16
  tail call fastcc void @cirrusfb_RectFill(ptr noundef %34, i32 noundef %36, i16 noundef zeroext %conv55, i16 noundef zeroext %conv57, i16 noundef zeroext %conv61, i16 noundef zeroext %conv63, i32 noundef %fg.0, i32 noundef %bg.0, i16 noundef zeroext %conv66, i8 noundef zeroext %conv)
  %47 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %data = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 7
  %50 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data, align 4
  %52 = call ptr @memcpy(ptr %49, ptr %51, i32 %mul)
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then16, %if.then6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cirrusfb_sync(ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %btype.i = getelementptr inbounds %struct.cirrusfb_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %btype.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %btype.i, align 4
  %4 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %.not = icmp eq i32 %4, 8
  br i1 %.not, label %entry.if.end_crit_edge, label %entry.while.cond_crit_edge

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.cond:                                       ; preds = %do.end, %entry.while.cond_crit_edge
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i4.i, label %if.then.i3.i

if.then.i3.i:                                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 49) #9, !srcloc !332
  %add.ptr.i.i2.i = getelementptr i8, ptr %6, i32 975
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i2.i) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  br label %vga_rgfx.exit

if.else.i4.i:                                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 49) #9, !srcloc !332
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr)) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !335
  br label %vga_rgfx.exit

vga_rgfx.exit:                                    ; preds = %if.else.i4.i, %if.then.i3.i
  %retval.0.i.i = phi i8 [ %7, %if.then.i3.i ], [ %8, %if.else.i4.i ]
  %9 = and i8 %retval.0.i.i, 3
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %vga_rgfx.exit.if.end_crit_edge, label %do.end

vga_rgfx.exit.if.end_crit_edge:                   ; preds = %vga_rgfx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %vga_rgfx.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !341
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !342
  br label %while.cond

if.end:                                           ; preds = %vga_rgfx.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cirrusfb_set_par_foo(ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %var1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_set_par_foo, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !331

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %6 = ptrtoint ptr %var1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %var1, align 4
  %yres6 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %yres6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %yres6, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %10 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bits_per_pixel, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug311, ptr noundef %5, ptr noundef nonnull @.str.41, i32 noundef %7, i32 noundef %9, i32 noundef %11) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bits_per_pixel7 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %12 = ptrtoint ptr %bits_per_pixel7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bits_per_pixel7, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %13, label %do.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb10
    i32 16, label %do.end.sw.bb16_crit_edge
    i32 24, label %do.end.sw.bb16_crit_edge527
  ]

do.end.sw.bb16_crit_edge527:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb16

do.end.sw.bb16_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb16

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %15 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %xres_virtual, align 4
  %div89 = lshr i32 %16, 3
  br label %sw.epilog.sink.split

sw.bb10:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %xres_virtual11 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %17 = ptrtoint ptr %xres_virtual11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %xres_virtual11, align 4
  br label %sw.epilog.sink.split

sw.bb16:                                          ; preds = %do.end.sw.bb16_crit_edge, %do.end.sw.bb16_crit_edge527
  %xres_virtual17 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %19 = ptrtoint ptr %xres_virtual17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %xres_virtual17, align 4
  %mul = mul i32 %20, %13
  %shr = lshr i32 %mul, 3
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb16, %sw.bb10, %sw.bb
  %shr.sink = phi i32 [ %shr, %sw.bb16 ], [ %18, %sw.bb10 ], [ %div89, %sw.bb ]
  %.sink = phi i32 [ 2, %sw.bb16 ], [ 3, %sw.bb10 ], [ 1, %sw.bb ]
  %line_length20 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %21 = ptrtoint ptr %line_length20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shr.sink, ptr %line_length20, align 4
  %visual22 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %22 = ptrtoint ptr %visual22 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink, ptr %visual22, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.end.sw.epilog_crit_edge
  %type = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 3
  %23 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %type, align 4
  %24 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %par, align 4
  %cmp.not.i = icmp eq ptr %25, null
  br i1 %cmp.not.i, label %do.end.i, label %sw.epilog.if.end.i_crit_edge

sw.epilog.if.end.i_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.80, i32 noundef 1451) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %sw.epilog.if.end.i_crit_edge
  %btype.i = getelementptr inbounds %struct.cirrusfb_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %btype.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %btype.i, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %27, label %do.end13.i [
    i32 2, label %sw.bb.i
    i32 3, label %sw.bb2.i
    i32 1, label %if.end.i.sw.bb3.i_crit_edge
    i32 4, label %if.end.i.sw.bb3.i_crit_edge528
    i32 5, label %sw.bb4.i
    i32 7, label %if.end.i.sw.bb6.i_crit_edge
    i32 6, label %if.end.i.sw.bb8.i_crit_edge
    i32 8, label %if.end.i.sw.epilog.i_crit_edge
    i32 9, label %if.end.i.sw.epilog.i_crit_edge529
  ]

if.end.i.sw.epilog.i_crit_edge529:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end.i.sw.bb8.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8.i

if.end.i.sw.bb6.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6.i

if.end.i.sw.bb3.i_crit_edge528:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

if.end.i.sw.bb3.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 107374000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 107374000) #9
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 107374000) #9
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end.i.sw.bb3.i_crit_edge, %if.end.i.sw.bb3.i_crit_edge528
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 107374000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 107374000) #9
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end.i
  %34 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %25, align 4
  %tobool.not.i.i.i = icmp eq ptr %35, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i.i, label %if.else.i5.i.i, label %if.then.i4.i.i

if.then.i4.i.i:                                   ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i.i = getelementptr i8, ptr %35, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 81) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i.i = getelementptr i8, ptr %35, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i.i, i8 0) #9, !srcloc !332
  br label %while.body.i.preheader

if.else.i5.i.i:                                   ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 81) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 0) #9, !srcloc !332
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %if.else.i5.i.i, %if.then.i4.i.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %__ms.0575.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 100, %while.body.i.preheader ]
  %dec.i = add nsw i32 %__ms.0575.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #9
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  %37 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %25, align 4
  %tobool.not.i.i195.i = icmp eq ptr %38, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i195.i, label %if.else.i5.i199.i, label %if.then.i4.i198.i

if.then.i4.i198.i:                                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i196.i = getelementptr i8, ptr %38, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i196.i, i8 49) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i197.i = getelementptr i8, ptr %38, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i197.i, i8 0) #9, !srcloc !332
  br label %sw.bb6.i

if.else.i5.i199.i:                                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 49) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #9, !srcloc !332
  br label %sw.bb6.i

sw.bb6.i:                                         ; preds = %if.else.i5.i199.i, %if.then.i4.i198.i, %if.end.i.sw.bb6.i_crit_edge
  %39 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %25, align 4
  %tobool.not.i.i200.i = icmp eq ptr %40, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i200.i, label %if.else.i5.i204.i, label %if.then.i4.i203.i

if.then.i4.i203.i:                                ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i201.i = getelementptr i8, ptr %40, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i201.i, i8 47) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i202.i = getelementptr i8, ptr %40, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i202.i, i8 0) #9, !srcloc !332
  br label %sw.bb8.i

if.else.i5.i204.i:                                ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 47) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #9, !srcloc !332
  br label %sw.bb8.i

sw.bb8.i:                                         ; preds = %if.else.i5.i204.i, %if.then.i4.i203.i, %if.end.i.sw.bb8.i_crit_edge
  %41 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %25, align 4
  %tobool.not.i.i206.i = icmp eq ptr %42, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i206.i, label %if.else.i5.i210.i, label %if.then.i4.i209.i

if.then.i4.i209.i:                                ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i207.i = getelementptr i8, ptr %42, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i207.i, i8 51) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i208.i = getelementptr i8, ptr %42, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i208.i, i8 0) #9, !srcloc !332
  br label %sw.epilog.i

if.else.i5.i210.i:                                ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 51) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #9, !srcloc !332
  br label %sw.epilog.i

do.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %device.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %43 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %device.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.83) #13
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end13.i, %if.else.i5.i210.i, %if.then.i4.i209.i, %sw.bb3.i, %sw.bb2.i, %sw.bb.i, %if.end.i.sw.epilog.i_crit_edge, %if.end.i.sw.epilog.i_crit_edge529
  %screen_size.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 26
  %45 = ptrtoint ptr %screen_size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %screen_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp14.not.i = icmp eq i32 %46, 0
  br i1 %cmp14.not.i, label %do.end18.i, label %sw.epilog.i.if.end21.i_crit_edge

sw.epilog.i.if.end21.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

do.end18.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.80, i32 noundef 1501) #13
  br label %if.end21.i

if.end21.i:                                       ; preds = %do.end18.i, %sw.epilog.i.if.end21.i_crit_edge
  %47 = ptrtoint ptr %btype.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %btype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %48)
  %cmp23.not.i = icmp eq i32 %48, 5
  br i1 %cmp23.not.i, label %if.end21.i.if.end40.i_crit_edge, label %if.then24.i

if.end21.i.if.end40.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

if.then24.i:                                      ; preds = %if.end21.i
  %49 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %25, align 4
  %tobool.not.i.i212.i = icmp eq ptr %50, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i212.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i213.i = getelementptr i8, ptr %50, i32 18152
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i213.i, i8 16) #9, !srcloc !332
  br label %WGen.exit.i

if.else.i.i.i:                                    ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18856216 to ptr), i8 16) #9, !srcloc !332
  br label %WGen.exit.i

WGen.exit.i:                                      ; preds = %if.else.i.i.i, %if.then.i.i.i
  %51 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %25, align 4
  %tobool.not.i.i216.i = icmp eq ptr %52, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i216.i, label %if.else.i.i219.i, label %if.then.i.i218.i

if.then.i.i218.i:                                 ; preds = %WGen.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i217.i = getelementptr i8, ptr %52, i32 258
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i217.i, i8 1) #9, !srcloc !332
  br label %WGen.exit220.i

if.else.i.i219.i:                                 ; preds = %WGen.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874110 to ptr), i8 1) #9, !srcloc !332
  br label %WGen.exit220.i

WGen.exit220.i:                                   ; preds = %if.else.i.i219.i, %if.then.i.i218.i
  %53 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %25, align 4
  %tobool.not.i.i223.i = icmp eq ptr %54, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i223.i, label %if.else.i.i226.i, label %if.then.i.i225.i

if.then.i.i225.i:                                 ; preds = %WGen.exit220.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i224.i = getelementptr i8, ptr %54, i32 18152
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i224.i, i8 8) #9, !srcloc !332
  br label %WGen.exit227.i

if.else.i.i226.i:                                 ; preds = %WGen.exit220.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18856216 to ptr), i8 8) #9, !srcloc !332
  br label %WGen.exit227.i

WGen.exit227.i:                                   ; preds = %if.else.i.i226.i, %if.then.i.i225.i
  %55 = ptrtoint ptr %btype.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %btype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp26.not.i = icmp eq i32 %56, 1
  br i1 %cmp26.not.i, label %WGen.exit227.i.if.end28.i_crit_edge, label %if.then27.i

WGen.exit227.i.if.end28.i_crit_edge:              ; preds = %WGen.exit227.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

if.then27.i:                                      ; preds = %WGen.exit227.i
  %57 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %25, align 4
  %tobool.not.i.i230.i = icmp eq ptr %58, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i230.i, label %if.else.i.i233.i, label %if.then.i.i232.i

if.then.i.i232.i:                                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i231.i = getelementptr i8, ptr %58, i32 963
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i231.i, i8 1) #9, !srcloc !332
  br label %if.end28.i

if.else.i.i233.i:                                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873405 to ptr), i8 1) #9, !srcloc !332
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else.i.i233.i, %if.then.i.i232.i, %WGen.exit227.i.if.end28.i_crit_edge
  %59 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %25, align 4
  %tobool.not.i.i235.i = icmp eq ptr %60, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i235.i, label %if.else.i5.i239.i, label %if.then.i4.i238.i

if.then.i4.i238.i:                                ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i236.i = getelementptr i8, ptr %60, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i236.i, i8 0) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i237.i = getelementptr i8, ptr %60, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i237.i, i8 3) #9, !srcloc !332
  br label %vga_wseq.exit.i

if.else.i5.i239.i:                                ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 0) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 3) #9, !srcloc !332
  br label %vga_wseq.exit.i

vga_wseq.exit.i:                                  ; preds = %if.else.i5.i239.i, %if.then.i4.i238.i
  %61 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %25, align 4
  %tobool.not.i.i240.i = icmp eq ptr %62, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i240.i, label %if.else.i5.i244.i, label %if.then.i4.i243.i

if.then.i4.i243.i:                                ; preds = %vga_wseq.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i241.i = getelementptr i8, ptr %62, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i241.i, i8 1) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i242.i = getelementptr i8, ptr %62, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i242.i, i8 33) #9, !srcloc !332
  br label %vga_wseq.exit245.i

if.else.i5.i244.i:                                ; preds = %vga_wseq.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 33) #9, !srcloc !332
  br label %vga_wseq.exit245.i

vga_wseq.exit245.i:                               ; preds = %if.else.i5.i244.i, %if.then.i4.i243.i
  %63 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %25, align 4
  %tobool.not.i.i246.i = icmp eq ptr %64, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i246.i, label %if.else.i5.i250.i, label %if.then.i4.i249.i

if.then.i4.i249.i:                                ; preds = %vga_wseq.exit245.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i247.i = getelementptr i8, ptr %64, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i247.i, i8 6) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i248.i = getelementptr i8, ptr %64, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i248.i, i8 18) #9, !srcloc !332
  br label %vga_wseq.exit251.i

if.else.i5.i250.i:                                ; preds = %vga_wseq.exit245.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 6) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 18) #9, !srcloc !332
  br label %vga_wseq.exit251.i

vga_wseq.exit251.i:                               ; preds = %if.else.i5.i250.i, %if.then.i4.i249.i
  %65 = ptrtoint ptr %btype.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %btype.i, align 4
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %66, label %sw.default36.i [
    i32 7, label %sw.bb33.i
    i32 6, label %vga_wseq.exit251.i.if.end40.i_crit_edge
    i32 8, label %vga_wseq.exit251.i.if.end40.i_crit_edge530
    i32 9, label %vga_wseq.exit251.i.if.end40.i_crit_edge531
    i32 1, label %vga_wseq.exit251.i.if.end40.i_crit_edge532
  ]

vga_wseq.exit251.i.if.end40.i_crit_edge532:       ; preds = %vga_wseq.exit251.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

vga_wseq.exit251.i.if.end40.i_crit_edge531:       ; preds = %vga_wseq.exit251.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

vga_wseq.exit251.i.if.end40.i_crit_edge530:       ; preds = %vga_wseq.exit251.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

vga_wseq.exit251.i.if.end40.i_crit_edge:          ; preds = %vga_wseq.exit251.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

sw.bb33.i:                                        ; preds = %vga_wseq.exit251.i
  %68 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %25, align 4
  %tobool.not.i.i252.i = icmp eq ptr %69, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i252.i, label %if.else.i5.i256.i, label %if.then.i4.i255.i

if.then.i4.i255.i:                                ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i253.i = getelementptr i8, ptr %69, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i253.i, i8 15) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i254.i = getelementptr i8, ptr %69, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i254.i, i8 -104) #9, !srcloc !332
  br label %if.end40.i

if.else.i5.i256.i:                                ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 15) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 -104) #9, !srcloc !332
  br label %if.end40.i

sw.default36.i:                                   ; preds = %vga_wseq.exit251.i
  %70 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %25, align 4
  %tobool.not.i.i258.i = icmp eq ptr %71, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i258.i, label %if.else.i5.i262.i, label %if.then.i4.i261.i

if.then.i4.i261.i:                                ; preds = %sw.default36.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i259.i = getelementptr i8, ptr %71, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i259.i, i8 22) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i260.i = getelementptr i8, ptr %71, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i260.i, i8 15) #9, !srcloc !332
  br label %vga_wseq.exit263.i

if.else.i5.i262.i:                                ; preds = %sw.default36.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 22) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 15) #9, !srcloc !332
  br label %vga_wseq.exit263.i

vga_wseq.exit263.i:                               ; preds = %if.else.i5.i262.i, %if.then.i4.i261.i
  %72 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %25, align 4
  %tobool.not.i.i264.i = icmp eq ptr %73, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i264.i, label %if.else.i5.i268.i, label %if.then.i4.i267.i

if.then.i4.i267.i:                                ; preds = %vga_wseq.exit263.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i265.i = getelementptr i8, ptr %73, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i265.i, i8 15) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i266.i = getelementptr i8, ptr %73, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i266.i, i8 -80) #9, !srcloc !332
  br label %if.end40.i

if.else.i5.i268.i:                                ; preds = %vga_wseq.exit263.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 15) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 -80) #9, !srcloc !332
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.else.i5.i268.i, %if.then.i4.i267.i, %if.else.i5.i256.i, %if.then.i4.i255.i, %vga_wseq.exit251.i.if.end40.i_crit_edge, %vga_wseq.exit251.i.if.end40.i_crit_edge530, %vga_wseq.exit251.i.if.end40.i_crit_edge531, %vga_wseq.exit251.i.if.end40.i_crit_edge532, %if.end21.i.if.end40.i_crit_edge
  %74 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %25, align 4
  %tobool.not.i.i270.i = icmp eq ptr %75, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i270.i, label %if.else.i5.i274.i, label %if.then.i4.i273.i

if.then.i4.i273.i:                                ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i271.i = getelementptr i8, ptr %75, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i271.i, i8 2) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i272.i = getelementptr i8, ptr %75, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i272.i, i8 -1) #9, !srcloc !332
  br label %vga_wseq.exit275.i

if.else.i5.i274.i:                                ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 2) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 -1) #9, !srcloc !332
  br label %vga_wseq.exit275.i

vga_wseq.exit275.i:                               ; preds = %if.else.i5.i274.i, %if.then.i4.i273.i
  %76 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %25, align 4
  %tobool.not.i.i276.i = icmp eq ptr %77, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i276.i, label %if.else.i5.i280.i, label %if.then.i4.i279.i

if.then.i4.i279.i:                                ; preds = %vga_wseq.exit275.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i277.i = getelementptr i8, ptr %77, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i277.i, i8 3) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i278.i = getelementptr i8, ptr %77, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i278.i, i8 0) #9, !srcloc !332
  br label %vga_wseq.exit281.i

if.else.i5.i280.i:                                ; preds = %vga_wseq.exit275.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 3) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 0) #9, !srcloc !332
  br label %vga_wseq.exit281.i

vga_wseq.exit281.i:                               ; preds = %if.else.i5.i280.i, %if.then.i4.i279.i
  %78 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %25, align 4
  %tobool.not.i.i282.i = icmp eq ptr %79, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i282.i, label %if.else.i5.i286.i, label %if.then.i4.i285.i

if.then.i4.i285.i:                                ; preds = %vga_wseq.exit281.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i283.i = getelementptr i8, ptr %79, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i283.i, i8 4) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i284.i = getelementptr i8, ptr %79, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i284.i, i8 10) #9, !srcloc !332
  br label %vga_wseq.exit287.i

if.else.i5.i286.i:                                ; preds = %vga_wseq.exit281.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 4) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 10) #9, !srcloc !332
  br label %vga_wseq.exit287.i

vga_wseq.exit287.i:                               ; preds = %if.else.i5.i286.i, %if.then.i4.i285.i
  %80 = and i32 %27, 134217727
  %81 = add nsw i32 %80, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %81)
  %bf.cast.not.i = icmp ult i32 %81, -7
  br i1 %bf.cast.not.i, label %vga_wseq.exit287.i.if.end46.i_crit_edge, label %if.then44.i

vga_wseq.exit287.i.if.end46.i_crit_edge:          ; preds = %vga_wseq.exit287.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.then44.i:                                      ; preds = %vga_wseq.exit287.i
  %82 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %25, align 4
  %sr07.i = getelementptr [10 x %struct.cirrusfb_board_info_rec], ptr @cirrusfb_board_info, i32 0, i32 %27, i32 3
  %84 = ptrtoint ptr %sr07.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %sr07.i, align 1
  %tobool.not.i.i288.i = icmp eq ptr %83, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i288.i, label %if.else.i5.i292.i, label %if.then.i4.i291.i

if.then.i4.i291.i:                                ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i289.i = getelementptr i8, ptr %83, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i289.i, i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i290.i = getelementptr i8, ptr %83, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i290.i, i8 %85) #9, !srcloc !332
  br label %if.end46.i

if.else.i5.i292.i:                                ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %85) #9, !srcloc !332
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.else.i5.i292.i, %if.then.i4.i291.i, %vga_wseq.exit287.i.if.end46.i_crit_edge
  %86 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %25, align 4
  %tobool.not.i.i294.i = icmp eq ptr %87, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i294.i, label %if.else.i5.i298.i, label %if.then.i4.i297.i

if.then.i4.i297.i:                                ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i295.i = getelementptr i8, ptr %87, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i295.i, i8 16) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i296.i = getelementptr i8, ptr %87, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i296.i, i8 0) #9, !srcloc !332
  br label %vga_wseq.exit299.i

if.else.i5.i298.i:                                ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 16) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 0) #9, !srcloc !332
  br label %vga_wseq.exit299.i

vga_wseq.exit299.i:                               ; preds = %if.else.i5.i298.i, %if.then.i4.i297.i
  %88 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %25, align 4
  %tobool.not.i.i300.i = icmp eq ptr %89, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i300.i, label %if.else.i5.i304.i, label %if.then.i4.i303.i

if.then.i4.i303.i:                                ; preds = %vga_wseq.exit299.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i301.i = getelementptr i8, ptr %89, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i301.i, i8 17) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i302.i = getelementptr i8, ptr %89, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i302.i, i8 0) #9, !srcloc !332
  br label %vga_wseq.exit305.i

if.else.i5.i304.i:                                ; preds = %vga_wseq.exit299.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 17) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 0) #9, !srcloc !332
  br label %vga_wseq.exit305.i

vga_wseq.exit305.i:                               ; preds = %if.else.i5.i304.i, %if.then.i4.i303.i
  %90 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %25, align 4
  %tobool.not.i.i306.i = icmp eq ptr %91, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i306.i, label %if.else.i5.i310.i, label %if.then.i4.i309.i

if.then.i4.i309.i:                                ; preds = %vga_wseq.exit305.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i307.i = getelementptr i8, ptr %91, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i307.i, i8 18) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i308.i = getelementptr i8, ptr %91, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i308.i, i8 0) #9, !srcloc !332
  br label %vga_wseq.exit311.i

if.else.i5.i310.i:                                ; preds = %vga_wseq.exit305.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 18) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 0) #9, !srcloc !332
  br label %vga_wseq.exit311.i

vga_wseq.exit311.i:                               ; preds = %if.else.i5.i310.i, %if.then.i4.i309.i
  %92 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %25, align 4
  %tobool.not.i.i312.i = icmp eq ptr %93, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i312.i, label %if.else.i5.i316.i, label %if.then.i4.i315.i

if.then.i4.i315.i:                                ; preds = %vga_wseq.exit311.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i313.i = getelementptr i8, ptr %93, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i313.i, i8 19) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i314.i = getelementptr i8, ptr %93, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i314.i, i8 0) #9, !srcloc !332
  br label %vga_wseq.exit317.i

if.else.i5.i316.i:                                ; preds = %vga_wseq.exit311.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 19) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 0) #9, !srcloc !332
  br label %vga_wseq.exit317.i

vga_wseq.exit317.i:                               ; preds = %if.else.i5.i316.i, %if.then.i4.i315.i
  %94 = ptrtoint ptr %btype.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %btype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %95)
  %cmp52.not.i = icmp eq i32 %95, 5
  br i1 %cmp52.not.i, label %vga_wseq.exit317.i.if.end56.i_crit_edge, label %if.then53.i

vga_wseq.exit317.i.if.end56.i_crit_edge:          ; preds = %vga_wseq.exit317.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.i

if.then53.i:                                      ; preds = %vga_wseq.exit317.i
  %96 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %25, align 4
  %tobool.not.i.i318.i = icmp eq ptr %97, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i318.i, label %if.else.i5.i322.i, label %if.then.i4.i321.i

if.then.i4.i321.i:                                ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i319.i = getelementptr i8, ptr %97, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i319.i, i8 23) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i320.i = getelementptr i8, ptr %97, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i320.i, i8 0) #9, !srcloc !332
  br label %vga_wseq.exit323.i

if.else.i5.i322.i:                                ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 23) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 0) #9, !srcloc !332
  br label %vga_wseq.exit323.i

vga_wseq.exit323.i:                               ; preds = %if.else.i5.i322.i, %if.then.i4.i321.i
  %98 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %25, align 4
  %tobool.not.i.i324.i = icmp eq ptr %99, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i324.i, label %if.else.i5.i328.i, label %if.then.i4.i327.i

if.then.i4.i327.i:                                ; preds = %vga_wseq.exit323.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i325.i = getelementptr i8, ptr %99, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i325.i, i8 24) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i326.i = getelementptr i8, ptr %99, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i326.i, i8 2) #9, !srcloc !332
  br label %if.end56.i

if.else.i5.i328.i:                                ; preds = %vga_wseq.exit323.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 24) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 2) #9, !srcloc !332
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.else.i5.i328.i, %if.then.i4.i327.i, %vga_wseq.exit317.i.if.end56.i_crit_edge
  %100 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %25, align 4
  %tobool.not.i.i330.i = icmp eq ptr %101, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i330.i, label %if.else.i5.i334.i, label %if.then.i4.i333.i

if.then.i4.i333.i:                                ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i331.i = getelementptr i8, ptr %101, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i331.i, i8 8) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i332.i = getelementptr i8, ptr %101, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i332.i, i8 0) #9, !srcloc !332
  br label %vga_wcrt.exit335.i

if.else.i5.i334.i:                                ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 8) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 0) #9, !srcloc !332
  br label %vga_wcrt.exit335.i

vga_wcrt.exit335.i:                               ; preds = %if.else.i5.i334.i, %if.then.i4.i333.i
  %102 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %25, align 4
  %tobool.not.i.i336.i = icmp eq ptr %103, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i336.i, label %if.else.i5.i340.i, label %if.then.i4.i339.i

if.then.i4.i339.i:                                ; preds = %vga_wcrt.exit335.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i337.i = getelementptr i8, ptr %103, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i337.i, i8 10) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i338.i = getelementptr i8, ptr %103, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i338.i, i8 32) #9, !srcloc !332
  br label %vga_wcrt.exit341.i

if.else.i5.i340.i:                                ; preds = %vga_wcrt.exit335.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 10) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 32) #9, !srcloc !332
  br label %vga_wcrt.exit341.i

vga_wcrt.exit341.i:                               ; preds = %if.else.i5.i340.i, %if.then.i4.i339.i
  %104 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %25, align 4
  %tobool.not.i.i342.i = icmp eq ptr %105, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i342.i, label %if.else.i5.i346.i, label %if.then.i4.i345.i

if.then.i4.i345.i:                                ; preds = %vga_wcrt.exit341.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i343.i = getelementptr i8, ptr %105, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i343.i, i8 11) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i344.i = getelementptr i8, ptr %105, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i344.i, i8 0) #9, !srcloc !332
  br label %vga_wcrt.exit347.i

if.else.i5.i346.i:                                ; preds = %vga_wcrt.exit341.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 11) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 0) #9, !srcloc !332
  br label %vga_wcrt.exit347.i

vga_wcrt.exit347.i:                               ; preds = %if.else.i5.i346.i, %if.then.i4.i345.i
  %106 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %25, align 4
  %tobool.not.i.i348.i = icmp eq ptr %107, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i348.i, label %if.else.i5.i352.i, label %if.then.i4.i351.i

if.then.i4.i351.i:                                ; preds = %vga_wcrt.exit347.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i349.i = getelementptr i8, ptr %107, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i349.i, i8 14) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i350.i = getelementptr i8, ptr %107, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i350.i, i8 0) #9, !srcloc !332
  br label %vga_wcrt.exit353.i

if.else.i5.i352.i:                                ; preds = %vga_wcrt.exit347.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 14) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 0) #9, !srcloc !332
  br label %vga_wcrt.exit353.i

vga_wcrt.exit353.i:                               ; preds = %if.else.i5.i352.i, %if.then.i4.i351.i
  %108 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %25, align 4
  %tobool.not.i.i354.i = icmp eq ptr %109, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i354.i, label %if.else.i5.i358.i, label %if.then.i4.i357.i

if.then.i4.i357.i:                                ; preds = %vga_wcrt.exit353.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i355.i = getelementptr i8, ptr %109, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i355.i, i8 15) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i356.i = getelementptr i8, ptr %109, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i356.i, i8 0) #9, !srcloc !332
  br label %vga_wcrt.exit359.i

if.else.i5.i358.i:                                ; preds = %vga_wcrt.exit353.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 15) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 0) #9, !srcloc !332
  br label %vga_wcrt.exit359.i

vga_wcrt.exit359.i:                               ; preds = %if.else.i5.i358.i, %if.then.i4.i357.i
  %110 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %25, align 4
  %tobool.not.i.i360.i = icmp eq ptr %111, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i360.i, label %if.else.i5.i364.i, label %if.then.i4.i363.i

if.then.i4.i363.i:                                ; preds = %vga_wcrt.exit359.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i361.i = getelementptr i8, ptr %111, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i361.i, i8 20) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i362.i = getelementptr i8, ptr %111, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i362.i, i8 0) #9, !srcloc !332
  br label %vga_wcrt.exit365.i

if.else.i5.i364.i:                                ; preds = %vga_wcrt.exit359.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 20) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 0) #9, !srcloc !332
  br label %vga_wcrt.exit365.i

vga_wcrt.exit365.i:                               ; preds = %if.else.i5.i364.i, %if.then.i4.i363.i
  %112 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %25, align 4
  %tobool.not.i.i366.i = icmp eq ptr %113, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i366.i, label %if.else.i5.i370.i, label %if.then.i4.i369.i

if.then.i4.i369.i:                                ; preds = %vga_wcrt.exit365.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i367.i = getelementptr i8, ptr %113, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i367.i, i8 27) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i368.i = getelementptr i8, ptr %113, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i368.i, i8 2) #9, !srcloc !332
  br label %vga_wcrt.exit371.i

if.else.i5.i370.i:                                ; preds = %vga_wcrt.exit365.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 27) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 2) #9, !srcloc !332
  br label %vga_wcrt.exit371.i

vga_wcrt.exit371.i:                               ; preds = %if.else.i5.i370.i, %if.then.i4.i369.i
  %114 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %25, align 4
  %tobool.not.i.i372.i = icmp eq ptr %115, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i372.i, label %if.else.i5.i376.i, label %if.then.i4.i375.i

if.then.i4.i375.i:                                ; preds = %vga_wcrt.exit371.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i373.i = getelementptr i8, ptr %115, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i373.i, i8 0) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i374.i = getelementptr i8, ptr %115, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i374.i, i8 0) #9, !srcloc !332
  br label %vga_wgfx.exit377.i

if.else.i5.i376.i:                                ; preds = %vga_wcrt.exit371.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 0) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #9, !srcloc !332
  br label %vga_wgfx.exit377.i

vga_wgfx.exit377.i:                               ; preds = %if.else.i5.i376.i, %if.then.i4.i375.i
  %116 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %25, align 4
  %tobool.not.i.i378.i = icmp eq ptr %117, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i378.i, label %if.else.i5.i382.i, label %if.then.i4.i381.i

if.then.i4.i381.i:                                ; preds = %vga_wgfx.exit377.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i379.i = getelementptr i8, ptr %117, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i379.i, i8 1) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i380.i = getelementptr i8, ptr %117, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i380.i, i8 0) #9, !srcloc !332
  br label %vga_wgfx.exit383.i

if.else.i5.i382.i:                                ; preds = %vga_wgfx.exit377.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 1) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #9, !srcloc !332
  br label %vga_wgfx.exit383.i

vga_wgfx.exit383.i:                               ; preds = %if.else.i5.i382.i, %if.then.i4.i381.i
  %118 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %25, align 4
  %tobool.not.i.i384.i = icmp eq ptr %119, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i384.i, label %if.else.i5.i388.i, label %if.then.i4.i387.i

if.then.i4.i387.i:                                ; preds = %vga_wgfx.exit383.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i385.i = getelementptr i8, ptr %119, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i385.i, i8 2) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i386.i = getelementptr i8, ptr %119, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i386.i, i8 0) #9, !srcloc !332
  br label %vga_wgfx.exit389.i

if.else.i5.i388.i:                                ; preds = %vga_wgfx.exit383.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 2) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #9, !srcloc !332
  br label %vga_wgfx.exit389.i

vga_wgfx.exit389.i:                               ; preds = %if.else.i5.i388.i, %if.then.i4.i387.i
  %120 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %25, align 4
  %tobool.not.i.i390.i = icmp eq ptr %121, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i390.i, label %if.else.i5.i394.i, label %if.then.i4.i393.i

if.then.i4.i393.i:                                ; preds = %vga_wgfx.exit389.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i391.i = getelementptr i8, ptr %121, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i391.i, i8 3) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i392.i = getelementptr i8, ptr %121, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i392.i, i8 0) #9, !srcloc !332
  br label %vga_wgfx.exit395.i

if.else.i5.i394.i:                                ; preds = %vga_wgfx.exit389.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 3) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #9, !srcloc !332
  br label %vga_wgfx.exit395.i

vga_wgfx.exit395.i:                               ; preds = %if.else.i5.i394.i, %if.then.i4.i393.i
  %122 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %25, align 4
  %tobool.not.i.i396.i = icmp eq ptr %123, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i396.i, label %if.else.i5.i400.i, label %if.then.i4.i399.i

if.then.i4.i399.i:                                ; preds = %vga_wgfx.exit395.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i397.i = getelementptr i8, ptr %123, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i397.i, i8 4) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i398.i = getelementptr i8, ptr %123, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i398.i, i8 0) #9, !srcloc !332
  br label %vga_wgfx.exit401.i

if.else.i5.i400.i:                                ; preds = %vga_wgfx.exit395.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 4) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #9, !srcloc !332
  br label %vga_wgfx.exit401.i

vga_wgfx.exit401.i:                               ; preds = %if.else.i5.i400.i, %if.then.i4.i399.i
  %124 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %25, align 4
  %tobool.not.i.i402.i = icmp eq ptr %125, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i402.i, label %if.else.i5.i406.i, label %if.then.i4.i405.i

if.then.i4.i405.i:                                ; preds = %vga_wgfx.exit401.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i403.i = getelementptr i8, ptr %125, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i403.i, i8 5) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i404.i = getelementptr i8, ptr %125, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i404.i, i8 0) #9, !srcloc !332
  br label %vga_wgfx.exit407.i

if.else.i5.i406.i:                                ; preds = %vga_wgfx.exit401.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 5) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #9, !srcloc !332
  br label %vga_wgfx.exit407.i

vga_wgfx.exit407.i:                               ; preds = %if.else.i5.i406.i, %if.then.i4.i405.i
  %126 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %25, align 4
  %tobool.not.i.i408.i = icmp eq ptr %127, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i408.i, label %if.else.i5.i412.i, label %if.then.i4.i411.i

if.then.i4.i411.i:                                ; preds = %vga_wgfx.exit407.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i409.i = getelementptr i8, ptr %127, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i409.i, i8 6) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i410.i = getelementptr i8, ptr %127, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i410.i, i8 1) #9, !srcloc !332
  br label %vga_wgfx.exit413.i

if.else.i5.i412.i:                                ; preds = %vga_wgfx.exit407.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 6) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 1) #9, !srcloc !332
  br label %vga_wgfx.exit413.i

vga_wgfx.exit413.i:                               ; preds = %if.else.i5.i412.i, %if.then.i4.i411.i
  %128 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %25, align 4
  %tobool.not.i.i414.i = icmp eq ptr %129, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i414.i, label %if.else.i5.i418.i, label %if.then.i4.i417.i

if.then.i4.i417.i:                                ; preds = %vga_wgfx.exit413.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i415.i = getelementptr i8, ptr %129, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i415.i, i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i416.i = getelementptr i8, ptr %129, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i416.i, i8 15) #9, !srcloc !332
  br label %vga_wgfx.exit419.i

if.else.i5.i418.i:                                ; preds = %vga_wgfx.exit413.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 15) #9, !srcloc !332
  br label %vga_wgfx.exit419.i

vga_wgfx.exit419.i:                               ; preds = %if.else.i5.i418.i, %if.then.i4.i417.i
  %130 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %25, align 4
  %tobool.not.i.i420.i = icmp eq ptr %131, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i420.i, label %if.else.i5.i424.i, label %if.then.i4.i423.i

if.then.i4.i423.i:                                ; preds = %vga_wgfx.exit419.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i421.i = getelementptr i8, ptr %131, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i421.i, i8 8) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i422.i = getelementptr i8, ptr %131, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i422.i, i8 -1) #9, !srcloc !332
  br label %vga_wgfx.exit425.i

if.else.i5.i424.i:                                ; preds = %vga_wgfx.exit419.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 8) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 -1) #9, !srcloc !332
  br label %vga_wgfx.exit425.i

vga_wgfx.exit425.i:                               ; preds = %if.else.i5.i424.i, %if.then.i4.i423.i
  %132 = ptrtoint ptr %btype.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %btype.i, align 4
  %134 = zext i32 %133 to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %133, label %lor.lhs.false77.i [
    i32 6, label %vga_wgfx.exit425.i.if.then80.i_crit_edge
    i32 1, label %vga_wgfx.exit425.i.if.then80.i_crit_edge533
  ]

vga_wgfx.exit425.i.if.then80.i_crit_edge533:      ; preds = %vga_wgfx.exit425.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then80.i

vga_wgfx.exit425.i.if.then80.i_crit_edge:         ; preds = %vga_wgfx.exit425.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then80.i

lor.lhs.false77.i:                                ; preds = %vga_wgfx.exit425.i
  %135 = and i32 %133, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %135)
  %.not.i = icmp eq i32 %135, 8
  br i1 %.not.i, label %lor.lhs.false77.i.if.then80.i_crit_edge, label %if.else.i

lor.lhs.false77.i.if.then80.i_crit_edge:          ; preds = %lor.lhs.false77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then80.i

if.then80.i:                                      ; preds = %lor.lhs.false77.i.if.then80.i_crit_edge, %vga_wgfx.exit425.i.if.then80.i_crit_edge, %vga_wgfx.exit425.i.if.then80.i_crit_edge533
  %136 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %25, align 4
  %tobool.not.i.i427.i = icmp eq ptr %137, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i427.i, label %if.else.i5.i431.i, label %if.then.i4.i430.i

if.then.i4.i430.i:                                ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i428.i = getelementptr i8, ptr %137, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i428.i, i8 11) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i429.i = getelementptr i8, ptr %137, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i429.i, i8 32) #9, !srcloc !332
  br label %if.end83.i

if.else.i5.i431.i:                                ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 11) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 32) #9, !srcloc !332
  br label %if.end83.i

if.else.i:                                        ; preds = %lor.lhs.false77.i
  %138 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %25, align 4
  %tobool.not.i.i433.i = icmp eq ptr %139, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i433.i, label %if.else.i5.i437.i, label %if.then.i4.i436.i

if.then.i4.i436.i:                                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i434.i = getelementptr i8, ptr %139, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i434.i, i8 11) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i435.i = getelementptr i8, ptr %139, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i435.i, i8 40) #9, !srcloc !332
  br label %if.end83.i

if.else.i5.i437.i:                                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 11) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 40) #9, !srcloc !332
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.else.i5.i437.i, %if.then.i4.i436.i, %if.else.i5.i431.i, %if.then.i4.i430.i
  %140 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %25, align 4
  %tobool.not.i.i439.i = icmp eq ptr %141, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i439.i, label %if.else.i5.i443.i, label %if.then.i4.i442.i

if.then.i4.i442.i:                                ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i440.i = getelementptr i8, ptr %141, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i440.i, i8 12) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i441.i = getelementptr i8, ptr %141, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i441.i, i8 -1) #9, !srcloc !332
  br label %vga_wgfx.exit444.i

if.else.i5.i443.i:                                ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 12) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 -1) #9, !srcloc !332
  br label %vga_wgfx.exit444.i

vga_wgfx.exit444.i:                               ; preds = %if.else.i5.i443.i, %if.then.i4.i442.i
  %142 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %25, align 4
  %tobool.not.i.i445.i = icmp eq ptr %143, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i445.i, label %if.else.i5.i449.i, label %if.then.i4.i448.i

if.then.i4.i448.i:                                ; preds = %vga_wgfx.exit444.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i446.i = getelementptr i8, ptr %143, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i446.i, i8 13) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i447.i = getelementptr i8, ptr %143, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i447.i, i8 0) #9, !srcloc !332
  br label %vga_wgfx.exit450.i

if.else.i5.i449.i:                                ; preds = %vga_wgfx.exit444.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 13) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #9, !srcloc !332
  br label %vga_wgfx.exit450.i

vga_wgfx.exit450.i:                               ; preds = %if.else.i5.i449.i, %if.then.i4.i448.i
  %144 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %25, align 4
  %tobool.not.i.i451.i = icmp eq ptr %145, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i451.i, label %if.else.i5.i455.i, label %if.then.i4.i454.i

if.then.i4.i454.i:                                ; preds = %vga_wgfx.exit450.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i452.i = getelementptr i8, ptr %145, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i452.i, i8 14) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i453.i = getelementptr i8, ptr %145, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i453.i, i8 0) #9, !srcloc !332
  br label %vga_wgfx.exit456.i

if.else.i5.i455.i:                                ; preds = %vga_wgfx.exit450.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 14) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #9, !srcloc !332
  br label %vga_wgfx.exit456.i

vga_wgfx.exit456.i:                               ; preds = %if.else.i5.i455.i, %if.then.i4.i454.i
  %146 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %25, align 4
  %tobool.not.i.i457.i = icmp eq ptr %147, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i457.i, label %if.else.i5.i460.i, label %if.then.i4.i459.i

if.then.i4.i459.i:                                ; preds = %vga_wgfx.exit456.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i458.i = getelementptr i8, ptr %147, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i458.i, i8 0) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i458.i, i8 0) #9, !srcloc !332
  br label %vga_wattr.exit.i

if.else.i5.i460.i:                                ; preds = %vga_wgfx.exit456.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 0) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 0) #9, !srcloc !332
  br label %vga_wattr.exit.i

vga_wattr.exit.i:                                 ; preds = %if.else.i5.i460.i, %if.then.i4.i459.i
  %148 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %25, align 4
  %tobool.not.i.i461.i = icmp eq ptr %149, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i461.i, label %if.else.i5.i464.i, label %if.then.i4.i463.i

if.then.i4.i463.i:                                ; preds = %vga_wattr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i462.i = getelementptr i8, ptr %149, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i462.i, i8 1) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i462.i, i8 1) #9, !srcloc !332
  br label %vga_wattr.exit465.i

if.else.i5.i464.i:                                ; preds = %vga_wattr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 1) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 1) #9, !srcloc !332
  br label %vga_wattr.exit465.i

vga_wattr.exit465.i:                              ; preds = %if.else.i5.i464.i, %if.then.i4.i463.i
  %150 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %25, align 4
  %tobool.not.i.i466.i = icmp eq ptr %151, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i466.i, label %if.else.i5.i469.i, label %if.then.i4.i468.i

if.then.i4.i468.i:                                ; preds = %vga_wattr.exit465.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i467.i = getelementptr i8, ptr %151, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i467.i, i8 2) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i467.i, i8 2) #9, !srcloc !332
  br label %vga_wattr.exit470.i

if.else.i5.i469.i:                                ; preds = %vga_wattr.exit465.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 2) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 2) #9, !srcloc !332
  br label %vga_wattr.exit470.i

vga_wattr.exit470.i:                              ; preds = %if.else.i5.i469.i, %if.then.i4.i468.i
  %152 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %25, align 4
  %tobool.not.i.i471.i = icmp eq ptr %153, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i471.i, label %if.else.i5.i474.i, label %if.then.i4.i473.i

if.then.i4.i473.i:                                ; preds = %vga_wattr.exit470.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i472.i = getelementptr i8, ptr %153, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i472.i, i8 3) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i472.i, i8 3) #9, !srcloc !332
  br label %vga_wattr.exit475.i

if.else.i5.i474.i:                                ; preds = %vga_wattr.exit470.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 3) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 3) #9, !srcloc !332
  br label %vga_wattr.exit475.i

vga_wattr.exit475.i:                              ; preds = %if.else.i5.i474.i, %if.then.i4.i473.i
  %154 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %25, align 4
  %tobool.not.i.i476.i = icmp eq ptr %155, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i476.i, label %if.else.i5.i479.i, label %if.then.i4.i478.i

if.then.i4.i478.i:                                ; preds = %vga_wattr.exit475.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i477.i = getelementptr i8, ptr %155, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i477.i, i8 4) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i477.i, i8 4) #9, !srcloc !332
  br label %vga_wattr.exit480.i

if.else.i5.i479.i:                                ; preds = %vga_wattr.exit475.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 4) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 4) #9, !srcloc !332
  br label %vga_wattr.exit480.i

vga_wattr.exit480.i:                              ; preds = %if.else.i5.i479.i, %if.then.i4.i478.i
  %156 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %25, align 4
  %tobool.not.i.i481.i = icmp eq ptr %157, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i481.i, label %if.else.i5.i484.i, label %if.then.i4.i483.i

if.then.i4.i483.i:                                ; preds = %vga_wattr.exit480.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i482.i = getelementptr i8, ptr %157, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i482.i, i8 5) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i482.i, i8 5) #9, !srcloc !332
  br label %vga_wattr.exit485.i

if.else.i5.i484.i:                                ; preds = %vga_wattr.exit480.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 5) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 5) #9, !srcloc !332
  br label %vga_wattr.exit485.i

vga_wattr.exit485.i:                              ; preds = %if.else.i5.i484.i, %if.then.i4.i483.i
  %158 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %25, align 4
  %tobool.not.i.i486.i = icmp eq ptr %159, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i486.i, label %if.else.i5.i489.i, label %if.then.i4.i488.i

if.then.i4.i488.i:                                ; preds = %vga_wattr.exit485.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i487.i = getelementptr i8, ptr %159, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i487.i, i8 6) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i487.i, i8 6) #9, !srcloc !332
  br label %vga_wattr.exit490.i

if.else.i5.i489.i:                                ; preds = %vga_wattr.exit485.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 6) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 6) #9, !srcloc !332
  br label %vga_wattr.exit490.i

vga_wattr.exit490.i:                              ; preds = %if.else.i5.i489.i, %if.then.i4.i488.i
  %160 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %25, align 4
  %tobool.not.i.i491.i = icmp eq ptr %161, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i491.i, label %if.else.i5.i494.i, label %if.then.i4.i493.i

if.then.i4.i493.i:                                ; preds = %vga_wattr.exit490.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i492.i = getelementptr i8, ptr %161, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i492.i, i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i492.i, i8 7) #9, !srcloc !332
  br label %vga_wattr.exit495.i

if.else.i5.i494.i:                                ; preds = %vga_wattr.exit490.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 7) #9, !srcloc !332
  br label %vga_wattr.exit495.i

vga_wattr.exit495.i:                              ; preds = %if.else.i5.i494.i, %if.then.i4.i493.i
  %162 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %25, align 4
  %tobool.not.i.i496.i = icmp eq ptr %163, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i496.i, label %if.else.i5.i499.i, label %if.then.i4.i498.i

if.then.i4.i498.i:                                ; preds = %vga_wattr.exit495.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i497.i = getelementptr i8, ptr %163, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i497.i, i8 8) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i497.i, i8 8) #9, !srcloc !332
  br label %vga_wattr.exit500.i

if.else.i5.i499.i:                                ; preds = %vga_wattr.exit495.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 8) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 8) #9, !srcloc !332
  br label %vga_wattr.exit500.i

vga_wattr.exit500.i:                              ; preds = %if.else.i5.i499.i, %if.then.i4.i498.i
  %164 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %25, align 4
  %tobool.not.i.i501.i = icmp eq ptr %165, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i501.i, label %if.else.i5.i504.i, label %if.then.i4.i503.i

if.then.i4.i503.i:                                ; preds = %vga_wattr.exit500.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i502.i = getelementptr i8, ptr %165, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i502.i, i8 9) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i502.i, i8 9) #9, !srcloc !332
  br label %vga_wattr.exit505.i

if.else.i5.i504.i:                                ; preds = %vga_wattr.exit500.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 9) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 9) #9, !srcloc !332
  br label %vga_wattr.exit505.i

vga_wattr.exit505.i:                              ; preds = %if.else.i5.i504.i, %if.then.i4.i503.i
  %166 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %25, align 4
  %tobool.not.i.i506.i = icmp eq ptr %167, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i506.i, label %if.else.i5.i509.i, label %if.then.i4.i508.i

if.then.i4.i508.i:                                ; preds = %vga_wattr.exit505.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i507.i = getelementptr i8, ptr %167, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i507.i, i8 10) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i507.i, i8 10) #9, !srcloc !332
  br label %vga_wattr.exit510.i

if.else.i5.i509.i:                                ; preds = %vga_wattr.exit505.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 10) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 10) #9, !srcloc !332
  br label %vga_wattr.exit510.i

vga_wattr.exit510.i:                              ; preds = %if.else.i5.i509.i, %if.then.i4.i508.i
  %168 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %25, align 4
  %tobool.not.i.i511.i = icmp eq ptr %169, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i511.i, label %if.else.i5.i514.i, label %if.then.i4.i513.i

if.then.i4.i513.i:                                ; preds = %vga_wattr.exit510.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i512.i = getelementptr i8, ptr %169, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i512.i, i8 11) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i512.i, i8 11) #9, !srcloc !332
  br label %vga_wattr.exit515.i

if.else.i5.i514.i:                                ; preds = %vga_wattr.exit510.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 11) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 11) #9, !srcloc !332
  br label %vga_wattr.exit515.i

vga_wattr.exit515.i:                              ; preds = %if.else.i5.i514.i, %if.then.i4.i513.i
  %170 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %25, align 4
  %tobool.not.i.i516.i = icmp eq ptr %171, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i516.i, label %if.else.i5.i519.i, label %if.then.i4.i518.i

if.then.i4.i518.i:                                ; preds = %vga_wattr.exit515.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i517.i = getelementptr i8, ptr %171, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i517.i, i8 12) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i517.i, i8 12) #9, !srcloc !332
  br label %vga_wattr.exit520.i

if.else.i5.i519.i:                                ; preds = %vga_wattr.exit515.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 12) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 12) #9, !srcloc !332
  br label %vga_wattr.exit520.i

vga_wattr.exit520.i:                              ; preds = %if.else.i5.i519.i, %if.then.i4.i518.i
  %172 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %25, align 4
  %tobool.not.i.i521.i = icmp eq ptr %173, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i521.i, label %if.else.i5.i524.i, label %if.then.i4.i523.i

if.then.i4.i523.i:                                ; preds = %vga_wattr.exit520.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i522.i = getelementptr i8, ptr %173, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i522.i, i8 13) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i522.i, i8 13) #9, !srcloc !332
  br label %vga_wattr.exit525.i

if.else.i5.i524.i:                                ; preds = %vga_wattr.exit520.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 13) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 13) #9, !srcloc !332
  br label %vga_wattr.exit525.i

vga_wattr.exit525.i:                              ; preds = %if.else.i5.i524.i, %if.then.i4.i523.i
  %174 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %25, align 4
  %tobool.not.i.i526.i = icmp eq ptr %175, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i526.i, label %if.else.i5.i529.i, label %if.then.i4.i528.i

if.then.i4.i528.i:                                ; preds = %vga_wattr.exit525.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i527.i = getelementptr i8, ptr %175, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i527.i, i8 14) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i527.i, i8 14) #9, !srcloc !332
  br label %vga_wattr.exit530.i

if.else.i5.i529.i:                                ; preds = %vga_wattr.exit525.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 14) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 14) #9, !srcloc !332
  br label %vga_wattr.exit530.i

vga_wattr.exit530.i:                              ; preds = %if.else.i5.i529.i, %if.then.i4.i528.i
  %176 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %25, align 4
  %tobool.not.i.i531.i = icmp eq ptr %177, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i531.i, label %if.else.i5.i534.i, label %if.then.i4.i533.i

if.then.i4.i533.i:                                ; preds = %vga_wattr.exit530.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i532.i = getelementptr i8, ptr %177, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i532.i, i8 15) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i532.i, i8 15) #9, !srcloc !332
  br label %vga_wattr.exit535.i

if.else.i5.i534.i:                                ; preds = %vga_wattr.exit530.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 15) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 15) #9, !srcloc !332
  br label %vga_wattr.exit535.i

vga_wattr.exit535.i:                              ; preds = %if.else.i5.i534.i, %if.then.i4.i533.i
  %178 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %25, align 4
  %tobool.not.i.i536.i = icmp eq ptr %179, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i536.i, label %if.else.i5.i539.i, label %if.then.i4.i538.i

if.then.i4.i538.i:                                ; preds = %vga_wattr.exit535.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i537.i = getelementptr i8, ptr %179, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i537.i, i8 16) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i537.i, i8 1) #9, !srcloc !332
  br label %vga_wattr.exit540.i

if.else.i5.i539.i:                                ; preds = %vga_wattr.exit535.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 16) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 1) #9, !srcloc !332
  br label %vga_wattr.exit540.i

vga_wattr.exit540.i:                              ; preds = %if.else.i5.i539.i, %if.then.i4.i538.i
  %180 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %25, align 4
  %tobool.not.i.i541.i = icmp eq ptr %181, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i541.i, label %if.else.i5.i544.i, label %if.then.i4.i543.i

if.then.i4.i543.i:                                ; preds = %vga_wattr.exit540.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i542.i = getelementptr i8, ptr %181, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i542.i, i8 17) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i542.i, i8 0) #9, !srcloc !332
  br label %vga_wattr.exit545.i

if.else.i5.i544.i:                                ; preds = %vga_wattr.exit540.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 17) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 0) #9, !srcloc !332
  br label %vga_wattr.exit545.i

vga_wattr.exit545.i:                              ; preds = %if.else.i5.i544.i, %if.then.i4.i543.i
  %182 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %25, align 4
  %tobool.not.i.i546.i = icmp eq ptr %183, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i546.i, label %if.else.i5.i549.i, label %if.then.i4.i548.i

if.then.i4.i548.i:                                ; preds = %vga_wattr.exit545.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i547.i = getelementptr i8, ptr %183, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i547.i, i8 18) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i547.i, i8 15) #9, !srcloc !332
  br label %vga_wattr.exit550.i

if.else.i5.i549.i:                                ; preds = %vga_wattr.exit545.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 18) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 15) #9, !srcloc !332
  br label %vga_wattr.exit550.i

vga_wattr.exit550.i:                              ; preds = %if.else.i5.i549.i, %if.then.i4.i548.i
  %184 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %25, align 4
  %tobool.not.i.i551.i = icmp eq ptr %185, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i551.i, label %if.else.i5.i554.i, label %if.then.i4.i553.i

if.then.i4.i553.i:                                ; preds = %vga_wattr.exit550.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i552.i = getelementptr i8, ptr %185, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i552.i, i8 20) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i552.i, i8 0) #9, !srcloc !332
  br label %vga_wattr.exit555.i

if.else.i5.i554.i:                                ; preds = %vga_wattr.exit550.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 20) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 0) #9, !srcloc !332
  br label %vga_wattr.exit555.i

vga_wattr.exit555.i:                              ; preds = %if.else.i5.i554.i, %if.then.i4.i553.i
  %186 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %25, align 4
  %tobool.not.i.i558.i = icmp eq ptr %187, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i558.i, label %if.else.i.i561.i, label %if.then.i.i560.i

if.then.i.i560.i:                                 ; preds = %vga_wattr.exit555.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i559.i = getelementptr i8, ptr %187, i32 966
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i559.i, i8 -1) #9, !srcloc !332
  br label %WGen.exit562.i

if.else.i.i561.i:                                 ; preds = %vga_wattr.exit555.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873402 to ptr), i8 -1) #9, !srcloc !332
  br label %WGen.exit562.i

WGen.exit562.i:                                   ; preds = %if.else.i.i561.i, %if.then.i.i560.i
  %188 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %25, align 4
  %tobool.not.i.i563.i = icmp eq ptr %189, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i563.i, label %if.else.i5.i567.i, label %if.then.i4.i566.i

if.then.i4.i566.i:                                ; preds = %WGen.exit562.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i564.i = getelementptr i8, ptr %189, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i564.i, i8 49) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i565.i = getelementptr i8, ptr %189, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i565.i, i8 4) #9, !srcloc !332
  br label %vga_wgfx.exit568.i

if.else.i5.i567.i:                                ; preds = %WGen.exit562.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 49) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 4) #9, !srcloc !332
  br label %vga_wgfx.exit568.i

vga_wgfx.exit568.i:                               ; preds = %if.else.i5.i567.i, %if.then.i4.i566.i
  %190 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %25, align 4
  %tobool.not.i.i569.i = icmp eq ptr %191, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i569.i, label %if.else.i5.i573.i, label %if.then.i4.i572.i

if.then.i4.i572.i:                                ; preds = %vga_wgfx.exit568.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i570.i = getelementptr i8, ptr %191, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i570.i, i8 49) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i571.i = getelementptr i8, ptr %191, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i571.i, i8 0) #9, !srcloc !332
  br label %init_vgachip.exit

if.else.i5.i573.i:                                ; preds = %vga_wgfx.exit568.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 49) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #9, !srcloc !332
  br label %init_vgachip.exit

init_vgachip.exit:                                ; preds = %if.else.i5.i573.i, %if.then.i4.i572.i
  tail call fastcc void @WHDR(ptr noundef %25, i8 noundef zeroext 0) #9
  %btype = getelementptr inbounds %struct.cirrusfb_info, ptr %1, i32 0, i32 2
  %192 = ptrtoint ptr %btype to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %btype, align 4
  %194 = ptrtoint ptr %var1 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %var1, align 4
  %right_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 19
  %196 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %right_margin, align 4
  %add = add i32 %197, %195
  %hsync_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 22
  %198 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %hsync_len, align 4
  %add25 = add i32 %add, %199
  %left_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 18
  %200 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %left_margin, align 4
  %add26 = add i32 %add25, %201
  %div271 = lshr i32 %add26, 3
  %div292 = lshr i32 %195, 3
  %div30 = sdiv i32 %add, 8
  %div31 = sdiv i32 %add25, 8
  %yres32 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %202 = ptrtoint ptr %yres32 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %yres32, align 4
  %lower_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 21
  %204 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %lower_margin, align 4
  %add33 = add i32 %205, %203
  %vsync_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 23
  %206 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %vsync_len, align 4
  %add34 = add i32 %add33, %207
  %upper_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 20
  %208 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %upper_margin, align 4
  %add35 = add i32 %add34, %209
  %vmode = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 25
  %210 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %vmode, align 4
  %and = and i32 %211, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %init_vgachip.exit
  call void @__sanitizer_cov_trace_pc() #11
  %mul38 = shl i32 %203, 1
  %mul39 = shl i32 %add33, 1
  %mul40 = shl i32 %add34, 1
  %mul41 = shl i32 %add35, 1
  br label %if.end55

if.else:                                          ; preds = %init_vgachip.exit
  %and43 = and i32 %211, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.else.if.end55_crit_edge, label %if.then45

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then45:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %add46 = add i32 %203, 1
  %div47 = sdiv i32 %add46, 2
  %add48 = add i32 %add33, 1
  %div49 = sdiv i32 %add48, 2
  %add50 = add i32 %add34, 1
  %div51 = sdiv i32 %add50, 2
  %add52 = add i32 %add35, 1
  %div53 = sdiv i32 %add52, 2
  br label %if.end55

if.end55:                                         ; preds = %if.then45, %if.else.if.end55_crit_edge, %if.then37
  %vtotal.0 = phi i32 [ %mul41, %if.then37 ], [ %div53, %if.then45 ], [ %add35, %if.else.if.end55_crit_edge ]
  %vsyncend.0 = phi i32 [ %mul40, %if.then37 ], [ %div51, %if.then45 ], [ %add34, %if.else.if.end55_crit_edge ]
  %vsyncstart.0 = phi i32 [ %mul39, %if.then37 ], [ %div49, %if.then45 ], [ %add33, %if.else.if.end55_crit_edge ]
  %vdispend.0 = phi i32 [ %mul38, %if.then37 ], [ %div47, %if.then45 ], [ %203, %if.else.if.end55_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %vdispend.0)
  %cmp = icmp sgt i32 %vdispend.0, 1023
  br i1 %cmp, label %if.then56, label %if.end55.if.end61_crit_edge

if.end55.if.end61_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then56:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  %div57 = sdiv i32 %vtotal.0, 2
  %div58 = sdiv i32 %vsyncstart.0, 2
  %div59 = sdiv i32 %vsyncend.0, 2
  %div60520525 = lshr i32 %vdispend.0, 1
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %if.end55.if.end61_crit_edge
  %vtotal.1 = phi i32 [ %div57, %if.then56 ], [ %vtotal.0, %if.end55.if.end61_crit_edge ]
  %vsyncend.1 = phi i32 [ %div59, %if.then56 ], [ %vsyncend.0, %if.end55.if.end61_crit_edge ]
  %vsyncstart.1 = phi i32 [ %div58, %if.then56 ], [ %vsyncstart.0, %if.end55.if.end61_crit_edge ]
  %vdispend.1 = phi i32 [ %div60520525, %if.then56 ], [ %vdispend.0, %if.end55.if.end61_crit_edge ]
  %sub = add i32 %vdispend.1, -1
  %sub62 = add i32 %vsyncstart.1, -1
  %sub63 = add i32 %vsyncend.1, -1
  %sub64 = add i32 %vtotal.1, -2
  %multiplexing = getelementptr inbounds %struct.cirrusfb_info, ptr %1, i32 0, i32 4
  %212 = ptrtoint ptr %multiplexing to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %multiplexing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %tobool65.not = icmp eq i32 %213, 0
  br i1 %tobool65.not, label %if.end61.if.end71_crit_edge, label %if.then66

if.end61.if.end71_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then66:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %div677 = lshr i32 %add26, 4
  %div68 = sdiv i32 %add, 16
  %div69 = sdiv i32 %add25, 16
  %div708 = lshr i32 %195, 4
  br label %if.end71

if.end71:                                         ; preds = %if.then66, %if.end61.if.end71_crit_edge
  %htotal.0 = phi i32 [ %div677, %if.then66 ], [ %div271, %if.end61.if.end71_crit_edge ]
  %hsyncend.0 = phi i32 [ %div69, %if.then66 ], [ %div31, %if.end61.if.end71_crit_edge ]
  %hsyncstart.0 = phi i32 [ %div68, %if.then66 ], [ %div30, %if.end61.if.end71_crit_edge ]
  %hdispend.0 = phi i32 [ %div708, %if.then66 ], [ %div292, %if.end61.if.end71_crit_edge ]
  %sub72 = add nsw i32 %htotal.0, -5
  %sub73 = add nsw i32 %hdispend.0, -1
  %add74 = add nsw i32 %hsyncstart.0, 1
  %add75 = add nsw i32 %hsyncend.0, 1
  %tobool.not.i.i = icmp eq ptr %3, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i, label %if.then.i4.i

if.then.i4.i:                                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 17) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i = getelementptr i8, ptr %3, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i, i8 32) #9, !srcloc !332
  br label %vga_wcrt.exit

if.else.i5.i:                                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 32) #9, !srcloc !332
  br label %vga_wcrt.exit

vga_wcrt.exit:                                    ; preds = %if.else.i5.i, %if.then.i4.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_set_par_foo, %if.then88)) #9
          to label %do.end92 [label %if.then88], !srcloc !331

if.then88:                                        ; preds = %vga_wcrt.exit
  call void @__sanitizer_cov_trace_pc() #11
  %device89 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %214 = ptrtoint ptr %device89 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %device89, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug312, ptr noundef %215, ptr noundef nonnull @.str.42, i32 noundef %sub72) #9
  br label %do.end92

do.end92:                                         ; preds = %if.then88, %vga_wcrt.exit
  %conv = trunc i32 %sub72 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i91, label %if.then.i4.i90

if.then.i4.i90:                                   ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i88 = getelementptr i8, ptr %3, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i88, i8 0) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i89 = getelementptr i8, ptr %3, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i89, i8 %conv) #9, !srcloc !332
  br label %vga_wcrt.exit92

if.else.i5.i91:                                   ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 0) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %conv) #9, !srcloc !332
  br label %vga_wcrt.exit92

vga_wcrt.exit92:                                  ; preds = %if.else.i5.i91, %if.then.i4.i90
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_set_par_foo, %if.then105)) #9
          to label %do.end109 [label %if.then105], !srcloc !331

if.then105:                                       ; preds = %vga_wcrt.exit92
  call void @__sanitizer_cov_trace_pc() #11
  %device106 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %216 = ptrtoint ptr %device106 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %device106, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug313, ptr noundef %217, ptr noundef nonnull @.str.43, i32 noundef %sub73) #9
  br label %do.end109

do.end109:                                        ; preds = %if.then105, %vga_wcrt.exit92
  %conv110 = trunc i32 %sub73 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i97, label %if.then.i4.i96

if.then.i4.i96:                                   ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i94 = getelementptr i8, ptr %3, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i94, i8 1) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i95 = getelementptr i8, ptr %3, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i95, i8 %conv110) #9, !srcloc !332
  br label %vga_wcrt.exit98

if.else.i5.i97:                                   ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 1) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %conv110) #9, !srcloc !332
  br label %vga_wcrt.exit98

vga_wcrt.exit98:                                  ; preds = %if.else.i5.i97, %if.then.i4.i96
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_set_par_foo, %if.then123)) #9
          to label %do.end129 [label %if.then123], !srcloc !331

if.then123:                                       ; preds = %vga_wcrt.exit98
  call void @__sanitizer_cov_trace_pc() #11
  %device124 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %218 = ptrtoint ptr %device124 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %device124, align 4
  %220 = ptrtoint ptr %var1 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %var1, align 4
  %div1266 = lshr i32 %221, 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug314, ptr noundef %219, ptr noundef nonnull @.str.44, i32 noundef %div1266) #9
  br label %do.end129

do.end129:                                        ; preds = %if.then123, %vga_wcrt.exit98
  %222 = ptrtoint ptr %var1 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %var1, align 4
  %div1313 = lshr i32 %223, 3
  %conv132 = trunc i32 %div1313 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i103, label %if.then.i4.i102

if.then.i4.i102:                                  ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i100 = getelementptr i8, ptr %3, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i100, i8 2) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i101 = getelementptr i8, ptr %3, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i101, i8 %conv132) #9, !srcloc !332
  br label %vga_wcrt.exit104

if.else.i5.i103:                                  ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 2) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %conv132) #9, !srcloc !332
  br label %vga_wcrt.exit104

vga_wcrt.exit104:                                 ; preds = %if.else.i5.i103, %if.then.i4.i102
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_set_par_foo, %if.then145)) #9
          to label %do.end150 [label %if.then145], !srcloc !331

if.then145:                                       ; preds = %vga_wcrt.exit104
  call void @__sanitizer_cov_trace_pc() #11
  %device146 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %224 = ptrtoint ptr %device146 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %device146, align 4
  %rem = and i32 %htotal.0, 31
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug315, ptr noundef %225, ptr noundef nonnull @.str.45, i32 noundef %rem) #9
  br label %do.end150

do.end150:                                        ; preds = %if.then145, %vga_wcrt.exit104
  %226 = trunc i32 %htotal.0 to i8
  %227 = and i8 %226, 31
  %conv15410 = or i8 %227, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i109, label %if.then.i4.i108

if.then.i4.i108:                                  ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i106 = getelementptr i8, ptr %3, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i106, i8 3) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i107 = getelementptr i8, ptr %3, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i107, i8 %conv15410) #9, !srcloc !332
  br label %vga_wcrt.exit110

if.else.i5.i109:                                  ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 3) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %conv15410) #9, !srcloc !332
  br label %vga_wcrt.exit110

vga_wcrt.exit110:                                 ; preds = %if.else.i5.i109, %if.then.i4.i108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_set_par_foo, %if.then167)) #9
          to label %do.end171 [label %if.then167], !srcloc !331

if.then167:                                       ; preds = %vga_wcrt.exit110
  call void @__sanitizer_cov_trace_pc() #11
  %device168 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %228 = ptrtoint ptr %device168 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %device168, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug316, ptr noundef %229, ptr noundef nonnull @.str.46, i32 noundef %add74) #9
  br label %do.end171

do.end171:                                        ; preds = %if.then167, %vga_wcrt.exit110
  %conv172 = trunc i32 %add74 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i115, label %if.then.i4.i114

if.then.i4.i114:                                  ; preds = %do.end171
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i112 = getelementptr i8, ptr %3, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i112, i8 4) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i113 = getelementptr i8, ptr %3, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i113, i8 %conv172) #9, !srcloc !332
  br label %vga_wcrt.exit116

if.else.i5.i115:                                  ; preds = %do.end171
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 4) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %conv172) #9, !srcloc !332
  br label %vga_wcrt.exit116

vga_wcrt.exit116:                                 ; preds = %if.else.i5.i115, %if.then.i4.i114
  %rem173 = srem i32 %add75, 32
  %conv174 = trunc i32 %rem173 to i8
  %and176 = and i32 %htotal.0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176)
  %tobool177.not = icmp eq i32 %and176, 0
  %conv181 = xor i8 %conv174, -128
  %tmp.0 = select i1 %tobool177.not, i8 %conv174, i8 %conv181
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_set_par_foo, %if.then195)) #9
          to label %do.end200 [label %if.then195], !srcloc !331

if.then195:                                       ; preds = %vga_wcrt.exit116
  call void @__sanitizer_cov_trace_pc() #11
  %device196 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %230 = ptrtoint ptr %device196 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %device196, align 4
  %conv197 = zext i8 %tmp.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug317, ptr noundef %231, ptr noundef nonnull @.str.47, i32 noundef %conv197) #9
  br label %do.end200

do.end200:                                        ; preds = %if.then195, %vga_wcrt.exit116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i121, label %if.then.i4.i120

if.then.i4.i120:                                  ; preds = %do.end200
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i118 = getelementptr i8, ptr %3, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i118, i8 5) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i119 = getelementptr i8, ptr %3, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i119, i8 %tmp.0) #9, !srcloc !332
  br label %vga_wcrt.exit122

if.else.i5.i121:                                  ; preds = %do.end200
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 5) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %tmp.0) #9, !srcloc !332
  br label %vga_wcrt.exit122

vga_wcrt.exit122:                                 ; preds = %if.else.i5.i121, %if.then.i4.i120
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_set_par_foo, %if.then213)) #9
          to label %do.end218 [label %if.then213], !srcloc !331

if.then213:                                       ; preds = %vga_wcrt.exit122
  call void @__sanitizer_cov_trace_pc() #11
  %device214 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %232 = ptrtoint ptr %device214 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %device214, align 4
  %and215 = and i32 %sub64, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug318, ptr noundef %233, ptr noundef nonnull @.str.48, i32 noundef %and215) #9
  br label %do.end218

do.end218:                                        ; preds = %if.then213, %vga_wcrt.exit122
  %and219 = and i32 %sub64, 255
  %conv220 = trunc i32 %sub64 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i127, label %if.then.i4.i126

if.then.i4.i126:                                  ; preds = %do.end218
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i124 = getelementptr i8, ptr %3, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i124, i8 6) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i125 = getelementptr i8, ptr %3, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i125, i8 %conv220) #9, !srcloc !332
  br label %vga_wcrt.exit128

if.else.i5.i127:                                  ; preds = %do.end218
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 6) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %conv220) #9, !srcloc !332
  br label %vga_wcrt.exit128

vga_wcrt.exit128:                                 ; preds = %if.else.i5.i127, %if.then.i4.i126
  %and221 = and i32 %sub64, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and221)
  %tobool222.not = icmp eq i32 %and221, 0
  %spec.select = select i1 %tobool222.not, i8 16, i8 17
  %and227 = lshr i32 %sub, 7
  %234 = trunc i32 %and227 to i8
  %235 = and i8 %234, 2
  %and234 = lshr i32 %sub62, 6
  %236 = trunc i32 %and234 to i8
  %237 = and i8 %236, 4
  %and242 = lshr i32 %vdispend.1, 5
  %238 = trunc i32 %and242 to i8
  %239 = and i8 %238, 8
  %240 = or i8 %237, %spec.select
  %241 = or i8 %240, %239
  %242 = or i8 %241, %235
  %and249 = and i32 %sub64, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and249)
  %tobool250.not = icmp eq i32 %and249, 0
  %243 = or i8 %242, 32
  %tmp.5 = select i1 %tobool250.not, i8 %242, i8 %243
  %and256 = lshr i32 %sub, 3
  %244 = trunc i32 %and256 to i8
  %245 = and i8 %244, 64
  %and263 = lshr i32 %sub62, 2
  %246 = trunc i32 %and263 to i8
  %247 = and i8 %246, -128
  %248 = or i8 %245, %247
  %249 = or i8 %248, %tmp.5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_set_par_foo, %if.then282)) #9
          to label %do.end287 [label %if.then282], !srcloc !331

if.then282:                                       ; preds = %vga_wcrt.exit128
  call void @__sanitizer_cov_trace_pc() #11
  %device283 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %250 = ptrtoint ptr %device283 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %device283, align 4
  %conv284 = zext i8 %249 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug319, ptr noundef %251, ptr noundef nonnull @.str.49, i32 noundef %conv284) #9
  br label %do.end287

do.end287:                                        ; preds = %if.then282, %vga_wcrt.exit128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i133, label %if.then.i4.i132

if.then.i4.i132:                                  ; preds = %do.end287
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i130 = getelementptr i8, ptr %3, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i130, i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i131 = getelementptr i8, ptr %3, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i131, i8 %249) #9, !srcloc !332
  br label %vga_wcrt.exit134

if.else.i5.i133:                                  ; preds = %do.end287
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %249) #9, !srcloc !332
  br label %vga_wcrt.exit134

vga_wcrt.exit134:                                 ; preds = %if.else.i5.i133, %if.then.i4.i132
  %and289 = and i32 %vdispend.1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and289)
  %tobool290.not = icmp eq i32 %and289, 0
  %spec.select11 = select i1 %tobool290.not, i8 64, i8 96
  %252 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %vmode, align 4
  %254 = trunc i32 %253 to i8
  %255 = shl i8 %254, 6
  %256 = or i8 %255, %spec.select11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_set_par_foo, %if.then316)) #9
          to label %do.end321 [label %if.then316], !srcloc !331

if.then316:                                       ; preds = %vga_wcrt.exit134
  call void @__sanitizer_cov_trace_pc() #11
  %device317 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %257 = ptrtoint ptr %device317 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %device317, align 4
  %conv318 = zext i8 %256 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug320, ptr noundef %258, ptr noundef nonnull @.str.50, i32 noundef %conv318) #9
  br label %do.end321

do.end321:                                        ; preds = %if.then316, %vga_wcrt.exit134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i139, label %if.then.i4.i138

if.then.i4.i138:                                  ; preds = %do.end321
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i136 = getelementptr i8, ptr %3, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i136, i8 9) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i137 = getelementptr i8, ptr %3, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i137, i8 %256) #9, !srcloc !332
  br label %vga_wcrt.exit140

if.else.i5.i139:                                  ; preds = %do.end321
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 9) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %256) #9, !srcloc !332
  br label %vga_wcrt.exit140

vga_wcrt.exit140:                                 ; preds = %if.else.i5.i139, %if.then.i4.i138
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_set_par_foo, %if.then334)) #9
          to label %do.end339 [label %if.then334], !srcloc !331

if.then334:                                       ; preds = %vga_wcrt.exit140
  call void @__sanitizer_cov_trace_pc() #11
  %device335 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %259 = ptrtoint ptr %device335 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %device335, align 4
  %and336 = and i32 %sub62, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug321, ptr noundef %260, ptr noundef nonnull @.str.51, i32 noundef %and336) #9
  br label %do.end339

do.end339:                                        ; preds = %if.then334, %vga_wcrt.exit140
  %conv341 = trunc i32 %sub62 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i145, label %if.then.i4.i144

if.then.i4.i144:                                  ; preds = %do.end339
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i142 = getelementptr i8, ptr %3, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i142, i8 16) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i143 = getelementptr i8, ptr %3, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i143, i8 %conv341) #9, !srcloc !332
  br label %vga_wcrt.exit146

if.else.i5.i145:                                  ; preds = %do.end339
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 16) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %conv341) #9, !srcloc !332
  br label %vga_wcrt.exit146

vga_wcrt.exit146:                                 ; preds = %if.else.i5.i145, %if.then.i4.i144
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_set_par_foo, %if.then354)) #9
          to label %do.end359 [label %if.then354], !srcloc !331

if.then354:                                       ; preds = %vga_wcrt.exit146
  call void @__sanitizer_cov_trace_pc() #11
  %device355 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %261 = ptrtoint ptr %device355 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %device355, align 4
  %rem356 = srem i32 %sub63, 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug322, ptr noundef %262, ptr noundef nonnull @.str.52, i32 noundef %rem356) #9
  br label %do.end359

do.end359:                                        ; preds = %if.then354, %vga_wcrt.exit146
  %rem360 = srem i32 %sub63, 16
  %263 = trunc i32 %rem360 to i8
  %conv363 = add nsw i8 %263, 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i151, label %if.then.i4.i150

if.then.i4.i150:                                  ; preds = %do.end359
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i148 = getelementptr i8, ptr %3, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i148, i8 17) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i149 = getelementptr i8, ptr %3, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i149, i8 %conv363) #9, !srcloc !332
  br label %vga_wcrt.exit152

if.else.i5.i151:                                  ; preds = %do.end359
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %conv363) #9, !srcloc !332
  br label %vga_wcrt.exit152

vga_wcrt.exit152:                                 ; preds = %if.else.i5.i151, %if.then.i4.i150
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_set_par_foo, %if.then376)) #9
          to label %do.end381 [label %if.then376], !srcloc !331

if.then376:                                       ; preds = %vga_wcrt.exit152
  call void @__sanitizer_cov_trace_pc() #11
  %device377 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %264 = ptrtoint ptr %device377 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %device377, align 4
  %and378 = and i32 %sub, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug323, ptr noundef %265, ptr noundef nonnull @.str.53, i32 noundef %and378) #9
  br label %do.end381

do.end381:                                        ; preds = %if.then376, %vga_wcrt.exit152
  %conv383 = trunc i32 %sub to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i157, label %if.then.i4.i156

if.then.i4.i156:                                  ; preds = %do.end381
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i154 = getelementptr i8, ptr %3, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i154, i8 18) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i155 = getelementptr i8, ptr %3, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i155, i8 %conv383) #9, !srcloc !332
  br label %vga_wcrt.exit158

if.else.i5.i157:                                  ; preds = %do.end381
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 18) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %conv383) #9, !srcloc !332
  br label %vga_wcrt.exit158

vga_wcrt.exit158:                                 ; preds = %if.else.i5.i157, %if.then.i4.i156
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_set_par_foo, %if.then396)) #9
          to label %do.end402 [label %if.then396], !srcloc !331

if.then396:                                       ; preds = %vga_wcrt.exit158
  call void @__sanitizer_cov_trace_pc() #11
  %device397 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %266 = ptrtoint ptr %device397 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %device397, align 4
  %and399 = and i32 %vdispend.1, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug324, ptr noundef %267, ptr noundef nonnull @.str.54, i32 noundef %and399) #9
  br label %do.end402

do.end402:                                        ; preds = %if.then396, %vga_wcrt.exit158
  %conv405 = trunc i32 %vdispend.1 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i163, label %if.then.i4.i162

if.then.i4.i162:                                  ; preds = %do.end402
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i160 = getelementptr i8, ptr %3, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i160, i8 21) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i161 = getelementptr i8, ptr %3, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i161, i8 %conv405) #9, !srcloc !332
  br label %vga_wcrt.exit164

if.else.i5.i163:                                  ; preds = %do.end402
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 21) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %conv405) #9, !srcloc !332
  br label %vga_wcrt.exit164

vga_wcrt.exit164:                                 ; preds = %if.else.i5.i163, %if.then.i4.i162
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_set_par_foo, %if.then418)) #9
          to label %do.end423 [label %if.then418], !srcloc !331

if.then418:                                       ; preds = %vga_wcrt.exit164
  call void @__sanitizer_cov_trace_pc() #11
  %device419 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %268 = ptrtoint ptr %device419 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %device419, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug325, ptr noundef %269, ptr noundef nonnull @.str.55, i32 noundef %and219) #9
  br label %do.end423

do.end423:                                        ; preds = %if.then418, %vga_wcrt.exit164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i169, label %if.then.i4.i168

if.then.i4.i168:                                  ; preds = %do.end423
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i166 = getelementptr i8, ptr %3, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i166, i8 22) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i167 = getelementptr i8, ptr %3, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i167, i8 %conv220) #9, !srcloc !332
  br label %vga_wcrt.exit170

if.else.i5.i169:                                  ; preds = %do.end423
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 22) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %conv220) #9, !srcloc !332
  br label %vga_wcrt.exit170

vga_wcrt.exit170:                                 ; preds = %if.else.i5.i169, %if.then.i4.i168
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_set_par_foo, %if.then438)) #9
          to label %do.end442 [label %if.then438], !srcloc !331

if.then438:                                       ; preds = %vga_wcrt.exit170
  call void @__sanitizer_cov_trace_pc() #11
  %device439 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %270 = ptrtoint ptr %device439 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %device439, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug326, ptr noundef %271, ptr noundef nonnull @.str.56) #9
  br label %do.end442

do.end442:                                        ; preds = %if.then438, %vga_wcrt.exit170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i175, label %if.then.i4.i174

if.then.i4.i174:                                  ; preds = %do.end442
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i172 = getelementptr i8, ptr %3, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i172, i8 24) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i173 = getelementptr i8, ptr %3, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i173, i8 -1) #9, !srcloc !332
  br label %vga_wcrt.exit176

if.else.i5.i175:                                  ; preds = %do.end442
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 24) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 -1) #9, !srcloc !332
  br label %vga_wcrt.exit176

vga_wcrt.exit176:                                 ; preds = %if.else.i5.i175, %if.then.i4.i174
  %272 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %vmode, align 4
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  %276 = lshr i8 %226, 2
  %277 = and i8 %276, 48
  %278 = or i8 %277, %275
  %279 = or i8 %278, 64
  %tmp.13 = select i1 %tobool222.not, i8 %278, i8 %279
  %280 = or i8 %tmp.13, -128
  %tmp.14 = select i1 %tobool250.not, i8 %tmp.13, i8 %280
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_set_par_foo, %if.then493)) #9
          to label %do.end498 [label %if.then493], !srcloc !331

if.then493:                                       ; preds = %vga_wcrt.exit176
  call void @__sanitizer_cov_trace_pc() #11
  %device494 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %281 = ptrtoint ptr %device494 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %device494, align 4
  %conv495 = zext i8 %tmp.14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug327, ptr noundef %282, ptr noundef nonnull @.str.57, i32 noundef %conv495) #9
  br label %do.end498

do.end498:                                        ; preds = %if.then493, %vga_wcrt.exit176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i181, label %if.then.i4.i180

if.then.i4.i180:                                  ; preds = %do.end498
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i178 = getelementptr i8, ptr %3, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i178, i8 26) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i179 = getelementptr i8, ptr %3, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i179, i8 %tmp.14) #9, !srcloc !332
  br label %vga_wcrt.exit182

if.else.i5.i181:                                  ; preds = %do.end498
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 26) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %tmp.14) #9, !srcloc !332
  br label %vga_wcrt.exit182

vga_wcrt.exit182:                                 ; preds = %if.else.i5.i181, %if.then.i4.i180
  %pixclock = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 17
  %283 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %pixclock, align 4
  %div499 = udiv i32 1000000000, %284
  %285 = ptrtoint ptr %bits_per_pixel7 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %bits_per_pixel7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %286)
  %cmp501 = icmp eq i32 %286, 24
  br i1 %cmp501, label %if.then503, label %vga_wcrt.exit182.if.end513_crit_edge

vga_wcrt.exit182.if.end513_crit_edge:             ; preds = %vga_wcrt.exit182
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end513

if.then503:                                       ; preds = %vga_wcrt.exit182
  %287 = ptrtoint ptr %btype to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %btype, align 4
  %289 = zext i32 %288 to i64
  call void @__sanitizer_cov_trace_switch(i64 %289, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %288, label %if.then503.if.end513_crit_edge [
    i32 6, label %if.then503.if.then510_crit_edge
    i32 1, label %if.then503.if.then510_crit_edge534
  ]

if.then503.if.then510_crit_edge534:               ; preds = %if.then503
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then510

if.then503.if.then510_crit_edge:                  ; preds = %if.then503
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then510

if.then503.if.end513_crit_edge:                   ; preds = %if.then503
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end513

if.then510:                                       ; preds = %if.then503.if.then510_crit_edge, %if.then503.if.then510_crit_edge534
  %mul511 = mul nuw i32 %div499, 3
  br label %if.end513

if.end513:                                        ; preds = %if.then510, %if.then503.if.end513_crit_edge, %vga_wcrt.exit182.if.end513_crit_edge
  %freq.0 = phi i32 [ %mul511, %if.then510 ], [ %div499, %vga_wcrt.exit182.if.end513_crit_edge ], [ %div499, %if.then503.if.end513_crit_edge ]
  %290 = ptrtoint ptr %multiplexing to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %multiplexing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %291)
  %tobool515.not = icmp eq i32 %291, 0
  %div517 = sdiv i32 %freq.0, 2
  %spec.select13 = select i1 %tobool515.not, i32 %freq.0, i32 %div517
  %doubleVCLK = getelementptr inbounds %struct.cirrusfb_info, ptr %1, i32 0, i32 5
  %292 = ptrtoint ptr %doubleVCLK to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %doubleVCLK, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %293)
  %tobool519.not = icmp ne i32 %293, 0
  %mul521 = zext i1 %tobool519.not to i32
  %freq.2 = shl i32 %spec.select13, %mul521
  %294 = tail call i32 @llvm.smax.i32(i32 %freq.2, i32 8000) #9
  br label %for.body.i

for.body.i:                                       ; preds = %if.end58.i.for.body.i_crit_edge, %if.end513
  %nom.0 = phi i32 [ 0, %if.end513 ], [ %nom.2, %if.end58.i.for.body.i_crit_edge ]
  %den.0 = phi i32 [ 0, %if.end513 ], [ %den.2, %if.end58.i.for.body.i_crit_edge ]
  %div.0 = phi i32 [ 0, %if.end513 ], [ %div.2, %if.end58.i.for.body.i_crit_edge ]
  %n.0115.i = phi i32 [ 32, %if.end513 ], [ %inc59.i, %if.end58.i.for.body.i_crit_edge ]
  %diff.0114.i = phi i32 [ %294, %if.end513 ], [ %diff.3.i, %if.end58.i.for.body.i_crit_edge ]
  %mul.i = mul nuw nsw i32 %n.0115.i, 14318
  %div21.udiv.i = udiv i32 %mul.i, %294
  %295 = add nsw i32 %div21.udiv.i, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %295)
  %296 = icmp ult i32 %295, 57
  br i1 %296, label %if.then24.i184, label %for.body.i.if.end36.i_crit_edge

for.body.i.if.end36.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

if.then24.i184:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %div21.udiv.i)
  %cmp25.i = icmp ugt i32 %div21.udiv.i, 31
  %spec.select.i = zext i1 %cmp25.i to i32
  %spec.select108.i = lshr i32 %div21.udiv.i, %spec.select.i
  %div29.i = udiv i32 %mul.i, %spec.select108.i
  %shr30.i = lshr i32 %div29.i, %spec.select.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr30.i, i32 %294)
  %cmp31.i = icmp ugt i32 %shr30.i, %294
  %sub.i = sub nsw i32 %shr30.i, %294
  %sub32.i = sub nsw i32 %294, %shr30.i
  %cond.i = select i1 %cmp31.i, i32 %sub.i, i32 %sub32.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %diff.0114.i)
  %cmp33.i = icmp slt i32 %cond.i, %diff.0114.i
  br i1 %cmp33.i, label %if.then34.i, label %if.then24.i184.if.end36.i_crit_edge

if.then24.i184.if.end36.i_crit_edge:              ; preds = %if.then24.i184
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

if.then34.i:                                      ; preds = %if.then24.i184
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then34.i, %if.then24.i184.if.end36.i_crit_edge, %for.body.i.if.end36.i_crit_edge
  %nom.1 = phi i32 [ %n.0115.i, %if.then34.i ], [ %nom.0, %if.then24.i184.if.end36.i_crit_edge ], [ %nom.0, %for.body.i.if.end36.i_crit_edge ]
  %den.1 = phi i32 [ %spec.select108.i, %if.then34.i ], [ %den.0, %if.then24.i184.if.end36.i_crit_edge ], [ %den.0, %for.body.i.if.end36.i_crit_edge ]
  %div.1 = phi i32 [ %spec.select.i, %if.then34.i ], [ %div.0, %if.then24.i184.if.end36.i_crit_edge ], [ %div.0, %for.body.i.if.end36.i_crit_edge ]
  %diff.2.i = phi i32 [ %cond.i, %if.then34.i ], [ %diff.0114.i, %if.then24.i184.if.end36.i_crit_edge ], [ %diff.0114.i, %for.body.i.if.end36.i_crit_edge ]
  %s.1.i = phi i32 [ %spec.select.i, %if.then34.i ], [ %spec.select.i, %if.then24.i184.if.end36.i_crit_edge ], [ 0, %for.body.i.if.end36.i_crit_edge ]
  %297 = add nsw i32 %div21.udiv.i, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %297)
  %298 = icmp ult i32 %297, 57
  br i1 %298, label %if.then40.i, label %if.end36.i.if.end58.i_crit_edge

if.end36.i.if.end58.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.i

if.then40.i:                                      ; preds = %if.end36.i
  %inc.i = add nuw nsw i32 %div21.udiv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %div21.udiv.i)
  %cmp41.i = icmp ugt i32 %div21.udiv.i, 30
  %shr43113.i = zext i1 %cmp41.i to i32
  %spec.select110.i = lshr i32 %inc.i, %shr43113.i
  %spec.select111.i = select i1 %cmp41.i, i32 1, i32 %s.1.i
  %div46.i = udiv i32 %mul.i, %spec.select110.i
  %shr47.i = lshr i32 %div46.i, %spec.select111.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr47.i, i32 %294)
  %cmp48.i = icmp ugt i32 %shr47.i, %294
  %sub50.i = sub nsw i32 %shr47.i, %294
  %sub52.i = sub nsw i32 %294, %shr47.i
  %cond54.i = select i1 %cmp48.i, i32 %sub50.i, i32 %sub52.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond54.i, i32 %diff.2.i)
  %cmp55.i = icmp slt i32 %cond54.i, %diff.2.i
  br i1 %cmp55.i, label %if.then56.i, label %if.then40.i.if.end58.i_crit_edge

if.then40.i.if.end58.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.i

if.then56.i:                                      ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then56.i, %if.then40.i.if.end58.i_crit_edge, %if.end36.i.if.end58.i_crit_edge
  %nom.2 = phi i32 [ %n.0115.i, %if.then56.i ], [ %nom.1, %if.then40.i.if.end58.i_crit_edge ], [ %nom.1, %if.end36.i.if.end58.i_crit_edge ]
  %den.2 = phi i32 [ %spec.select110.i, %if.then56.i ], [ %den.1, %if.then40.i.if.end58.i_crit_edge ], [ %den.1, %if.end36.i.if.end58.i_crit_edge ]
  %div.2 = phi i32 [ %spec.select111.i, %if.then56.i ], [ %div.1, %if.then40.i.if.end58.i_crit_edge ], [ %div.1, %if.end36.i.if.end58.i_crit_edge ]
  %diff.3.i = phi i32 [ %cond54.i, %if.then56.i ], [ %diff.2.i, %if.then40.i.if.end58.i_crit_edge ], [ %diff.2.i, %if.end36.i.if.end58.i_crit_edge ]
  %inc59.i = add nuw nsw i32 %n.0115.i, 1
  %exitcond.not.i = icmp eq i32 %inc59.i, 128
  br i1 %exitcond.not.i, label %bestclock.exit, label %if.end58.i.for.body.i_crit_edge

if.end58.i.for.body.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

bestclock.exit:                                   ; preds = %if.end58.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_set_par_foo, %if.then535)) #9
          to label %do.end539 [label %if.then535], !srcloc !331

if.then535:                                       ; preds = %bestclock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %device536 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %299 = ptrtoint ptr %device536 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %device536, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug328, ptr noundef %300, ptr noundef nonnull @.str.58, i32 noundef %freq.2, i32 noundef %nom.2, i32 noundef %den.2, i32 noundef %div.2) #9
  br label %do.end539

do.end539:                                        ; preds = %if.then535, %bestclock.exit
  %301 = ptrtoint ptr %btype to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %btype, align 4
  %303 = zext i32 %302 to i64
  call void @__sanitizer_cov_trace_switch(i64 %303, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %302, label %do.end539.if.end556_crit_edge [
    i32 6, label %do.end539.if.then551_crit_edge
    i32 5, label %do.end539.if.then551_crit_edge535
    i32 1, label %do.end539.if.then551_crit_edge536
  ]

do.end539.if.then551_crit_edge536:                ; preds = %do.end539
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then551

do.end539.if.then551_crit_edge535:                ; preds = %do.end539
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then551

do.end539.if.then551_crit_edge:                   ; preds = %do.end539
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then551

do.end539.if.end556_crit_edge:                    ; preds = %do.end539
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end556

if.then551:                                       ; preds = %do.end539.if.then551_crit_edge, %do.end539.if.then551_crit_edge535, %do.end539.if.then551_crit_edge536
  %call552 = tail call fastcc i32 @cirrusfb_check_mclk(ptr noundef %info, i32 noundef %freq.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call552)
  %tobool553.not = icmp eq i32 %call552, 0
  %spec.select521 = select i1 %tobool553.not, i32 %nom.2, i32 0
  tail call fastcc void @cirrusfb_set_mclk_as_source(ptr noundef %info, i32 noundef %call552)
  br label %if.end556

if.end556:                                        ; preds = %if.then551, %do.end539.if.end556_crit_edge
  %nom.4 = phi i32 [ %nom.2, %do.end539.if.end556_crit_edge ], [ %spec.select521, %if.then551 ]
  %304 = ptrtoint ptr %btype to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %btype, align 4
  %306 = and i32 %305, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %306)
  %.not = icmp eq i32 %306, 8
  br i1 %.not, label %if.then559, label %if.end556.if.end595_crit_edge

if.end556.if.end595_crit_edge:                    ; preds = %if.end556
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end595

if.then559:                                       ; preds = %if.end556
  %laguna_mmio = getelementptr inbounds %struct.cirrusfb_info, ptr %1, i32 0, i32 1
  %307 = ptrtoint ptr %laguna_mmio to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %laguna_mmio, align 4
  %add.ptr = getelementptr i8, ptr %308, i32 1020
  %309 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !343
  %310 = ptrtoint ptr %laguna_mmio to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %laguna_mmio, align 4
  %add.ptr562 = getelementptr i8, ptr %311, i32 1031
  %312 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr562) #9, !srcloc !333
  %313 = ptrtoint ptr %btype to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %btype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %314)
  %cmp565 = icmp eq i32 %314, 9
  br i1 %cmp565, label %if.then567, label %if.then559.if.end576_crit_edge

if.then559.if.end576_crit_edge:                   ; preds = %if.then559
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end576

if.then567:                                       ; preds = %if.then559
  call void @__sanitizer_cov_trace_pc() #11
  %315 = ptrtoint ptr %laguna_mmio to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %laguna_mmio, align 4
  %add.ptr569 = getelementptr i8, ptr %316, i32 708
  %317 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr569) #9, !srcloc !344
  %318 = and i16 %317, -129
  %319 = ptrtoint ptr %laguna_mmio to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %laguna_mmio, align 4
  %add.ptr575 = getelementptr i8, ptr %320, i32 708
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr575, i16 %318) #9, !srcloc !345
  br label %if.end576

if.end576:                                        ; preds = %if.then567, %if.then559.if.end576_crit_edge
  %or577 = or i32 %309, 268435456
  %321 = ptrtoint ptr %laguna_mmio to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %laguna_mmio, align 4
  %add.ptr579 = getelementptr i8, ptr %322, i32 1020
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr579, i32 %or577) #9, !srcloc !346
  %323 = and i8 %312, 63
  %324 = ptrtoint ptr %laguna_mmio to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %laguna_mmio, align 4
  %add.ptr584 = getelementptr i8, ptr %325, i32 1031
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr584, i8 %323) #9, !srcloc !332
  %326 = ptrtoint ptr %laguna_mmio to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %laguna_mmio, align 4
  %add.ptr586 = getelementptr i8, ptr %327, i32 1026
  %328 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr586) #9, !srcloc !344
  %329 = ptrtoint ptr %laguna_mmio to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %laguna_mmio, align 4
  %add.ptr590 = getelementptr i8, ptr %330, i32 234
  %331 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr590) #9, !srcloc !344
  %332 = and i16 %328, -26625
  %and593 = zext i16 %332 to i32
  %333 = and i16 %331, 16256
  %and594 = zext i16 %333 to i32
  br label %if.end595

if.end595:                                        ; preds = %if.end576, %if.end556.if.end595_crit_edge
  %threshold.0 = phi i32 [ %and594, %if.end576 ], [ 0, %if.end556.if.end595_crit_edge ]
  %control.0 = phi i32 [ %and593, %if.end576 ], [ 0, %if.end556.if.end595_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nom.4)
  %tobool596.not = icmp eq i32 %nom.4, 0
  br i1 %tobool596.not, label %if.end595.if.end629_crit_edge, label %if.then597

if.end595.if.end629_crit_edge:                    ; preds = %if.end595
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end629

if.then597:                                       ; preds = %if.end595
  %.tr = trunc i32 %den.2 to i8
  %conv598 = shl i8 %.tr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.2)
  %cmp599.not = icmp ne i32 %div.2, 0
  %334 = zext i1 %cmp599.not to i8
  %spec.select14 = or i8 %conv598, %334
  %335 = ptrtoint ptr %btype to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %btype, align 4
  %337 = zext i32 %336 to i64
  call void @__sanitizer_cov_trace_switch(i64 %337, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %336, label %if.then597.if.end621_crit_edge [
    i32 1, label %if.then597.if.then617_crit_edge
    i32 6, label %if.then597.if.then617_crit_edge537
    i32 7, label %if.then597.if.then617_crit_edge538
  ]

if.then597.if.then617_crit_edge538:               ; preds = %if.then597
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then617

if.then597.if.then617_crit_edge537:               ; preds = %if.then597
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then617

if.then597.if.then617_crit_edge:                  ; preds = %if.then597
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then617

if.then597.if.end621_crit_edge:                   ; preds = %if.then597
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end621

if.then617:                                       ; preds = %if.then597.if.then617_crit_edge, %if.then597.if.then617_crit_edge537, %if.then597.if.then617_crit_edge538
  %338 = or i8 %spec.select14, -128
  br label %if.end621

if.end621:                                        ; preds = %if.then617, %if.then597.if.end621_crit_edge
  %tmp.16 = phi i8 [ %338, %if.then617 ], [ %spec.select14, %if.then597.if.end621_crit_edge ]
  %339 = and i32 %336, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %339)
  %.not522 = icmp eq i32 %339, 8
  br i1 %.not522, label %if.then624, label %if.else626

if.then624:                                       ; preds = %if.end621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i191, label %if.then.i4.i190

if.then.i4.i190:                                  ; preds = %if.then624
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i188 = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i188, i8 14) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i189 = getelementptr i8, ptr %3, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i189, i8 %tmp.16) #9, !srcloc !332
  br label %vga_wseq.exit

if.else.i5.i191:                                  ; preds = %if.then624
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 14) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %tmp.16) #9, !srcloc !332
  br label %vga_wseq.exit

vga_wseq.exit:                                    ; preds = %if.else.i5.i191, %if.then.i4.i190
  %conv625 = trunc i32 %nom.4 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i196, label %if.then.i4.i195

if.then.i4.i195:                                  ; preds = %vga_wseq.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i193 = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i193, i8 30) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i194 = getelementptr i8, ptr %3, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i194, i8 %conv625) #9, !srcloc !332
  br label %if.end629

if.else.i5.i196:                                  ; preds = %vga_wseq.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 30) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %conv625) #9, !srcloc !332
  br label %if.end629

if.else626:                                       ; preds = %if.end621
  %conv627 = trunc i32 %nom.4 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i202, label %if.then.i4.i201

if.then.i4.i201:                                  ; preds = %if.else626
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i199 = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i199, i8 14) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i200 = getelementptr i8, ptr %3, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i200, i8 %conv627) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i199, i8 30) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i200, i8 %tmp.16) #9, !srcloc !332
  br label %if.end629

if.else.i5.i202:                                  ; preds = %if.else626
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 14) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %conv627) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 30) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %tmp.16) #9, !srcloc !332
  br label %if.end629

if.end629:                                        ; preds = %if.else.i5.i202, %if.then.i4.i201, %if.else.i5.i196, %if.then.i4.i195, %if.end595.if.end629_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %cmp, label %if.then632, label %if.else633

if.then632:                                       ; preds = %if.end629
  br i1 %tobool.not.i.i, label %if.else.i5.i214, label %if.then.i4.i213

if.then.i4.i213:                                  ; preds = %if.then632
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i211 = getelementptr i8, ptr %3, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i211, i8 23) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i212 = getelementptr i8, ptr %3, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i212, i8 -57) #9, !srcloc !332
  br label %if.end634

if.else.i5.i214:                                  ; preds = %if.then632
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 23) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 -57) #9, !srcloc !332
  br label %if.end634

if.else633:                                       ; preds = %if.end629
  br i1 %tobool.not.i.i, label %if.else.i5.i220, label %if.then.i4.i219

if.then.i4.i219:                                  ; preds = %if.else633
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i217 = getelementptr i8, ptr %3, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i217, i8 23) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i218 = getelementptr i8, ptr %3, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i218, i8 -61) #9, !srcloc !332
  br label %if.end634

if.else.i5.i220:                                  ; preds = %if.else633
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 23) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 -61) #9, !srcloc !332
  br label %if.end634

if.end634:                                        ; preds = %if.else.i5.i220, %if.then.i4.i219, %if.else.i5.i214, %if.then.i4.i213
  %340 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %vmode, align 4
  %and636 = and i32 %341, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and636)
  %tobool637.not = icmp eq i32 %and636, 0
  br i1 %tobool637.not, label %if.else641, label %if.then638

if.then638:                                       ; preds = %if.end634
  %div639 = sdiv i32 %sub72, 2
  %conv640 = trunc i32 %div639 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i226, label %if.then.i4.i225

if.then.i4.i225:                                  ; preds = %if.then638
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i223 = getelementptr i8, ptr %3, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i223, i8 25) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i224 = getelementptr i8, ptr %3, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i224, i8 %conv640) #9, !srcloc !332
  br label %if.end642

if.else.i5.i226:                                  ; preds = %if.then638
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 25) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %conv640) #9, !srcloc !332
  br label %if.end642

if.else641:                                       ; preds = %if.end634
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i232, label %if.then.i4.i231

if.then.i4.i231:                                  ; preds = %if.else641
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i229 = getelementptr i8, ptr %3, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i229, i8 25) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i230 = getelementptr i8, ptr %3, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i230, i8 0) #9, !srcloc !332
  br label %if.end642

if.else.i5.i232:                                  ; preds = %if.else641
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 25) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 0) #9, !srcloc !332
  br label %if.end642

if.end642:                                        ; preds = %if.else.i5.i232, %if.then.i4.i231, %if.else.i5.i226, %if.then.i4.i225
  %sync = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 24
  %342 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %sync, align 4
  %and643 = and i32 %343, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and643)
  %tobool644.not = icmp eq i32 %and643, 0
  %spec.select15 = select i1 %tobool644.not, i8 15, i8 79
  %344 = trunc i32 %343 to i8
  %345 = shl i8 %344, 6
  %346 = and i8 %345, -128
  %347 = or i8 %346, %spec.select15
  %348 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %1, align 4
  %tobool.not.i.i235 = icmp eq ptr %349, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i235, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end642
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i236 = getelementptr i8, ptr %349, i32 962
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i236, i8 %347) #9, !srcloc !332
  br label %WGen.exit

if.else.i.i:                                      ; preds = %if.end642
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873406 to ptr), i8 %347) #9, !srcloc !332
  br label %WGen.exit

WGen.exit:                                        ; preds = %if.else.i.i, %if.then.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i241, label %if.then.i4.i240

if.then.i4.i240:                                  ; preds = %WGen.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i238 = getelementptr i8, ptr %3, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i238, i8 10) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i239 = getelementptr i8, ptr %3, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i239, i8 0) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i238, i8 11) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i239, i8 31) #9, !srcloc !332
  br label %vga_wcrt.exit248

if.else.i5.i241:                                  ; preds = %WGen.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 10) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 0) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 11) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 31) #9, !srcloc !332
  br label %vga_wcrt.exit248

vga_wcrt.exit248:                                 ; preds = %if.else.i5.i241, %if.then.i4.i240
  %350 = ptrtoint ptr %bits_per_pixel7 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %bits_per_pixel7, align 4
  %352 = zext i32 %351 to i64
  call void @__sanitizer_cov_trace_switch(i64 %352, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %351, label %do.end863 [
    i32 1, label %do.body662
    i32 8, label %do.body716
    i32 16, label %do.body775
    i32 24, label %do.body824
  ]

do.body662:                                       ; preds = %vga_wcrt.exit248
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_set_par_foo, %if.then674)) #9
          to label %do.end678 [label %if.then674], !srcloc !331

if.then674:                                       ; preds = %do.body662
  call void @__sanitizer_cov_trace_pc() #11
  %device675 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %353 = ptrtoint ptr %device675 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %device675, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug329, ptr noundef %354, ptr noundef nonnull @.str.59) #9
  br label %do.end678

do.end678:                                        ; preds = %if.then674, %do.body662
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i253, label %if.then.i4.i252

if.then.i4.i252:                                  ; preds = %do.end678
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i250 = getelementptr i8, ptr %3, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i250, i8 5) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i251 = getelementptr i8, ptr %3, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i251, i8 0) #9, !srcloc !332
  br label %vga_wgfx.exit

if.else.i5.i253:                                  ; preds = %do.end678
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 5) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 0) #9, !srcloc !332
  br label %vga_wgfx.exit

vga_wgfx.exit:                                    ; preds = %if.else.i5.i253, %if.then.i4.i252
  %355 = ptrtoint ptr %btype to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %btype, align 4
  %357 = zext i32 %356 to i64
  call void @__sanitizer_cov_trace_switch(i64 %357, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %356, label %do.end693 [
    i32 1, label %vga_wgfx.exit.sw.bb680_crit_edge
    i32 2, label %vga_wgfx.exit.sw.bb680_crit_edge539
    i32 3, label %vga_wgfx.exit.sw.bb680_crit_edge540
    i32 4, label %vga_wgfx.exit.sw.bb680_crit_edge541
    i32 5, label %vga_wgfx.exit.sw.bb680_crit_edge542
    i32 6, label %vga_wgfx.exit.sw.bb680_crit_edge543
    i32 7, label %vga_wgfx.exit.sw.bb680_crit_edge544
    i32 8, label %vga_wgfx.exit.sw.bb686_crit_edge
    i32 9, label %vga_wgfx.exit.sw.bb686_crit_edge545
  ]

vga_wgfx.exit.sw.bb686_crit_edge545:              ; preds = %vga_wgfx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb686

vga_wgfx.exit.sw.bb686_crit_edge:                 ; preds = %vga_wgfx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb686

vga_wgfx.exit.sw.bb680_crit_edge544:              ; preds = %vga_wgfx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb680

vga_wgfx.exit.sw.bb680_crit_edge543:              ; preds = %vga_wgfx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb680

vga_wgfx.exit.sw.bb680_crit_edge542:              ; preds = %vga_wgfx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb680

vga_wgfx.exit.sw.bb680_crit_edge541:              ; preds = %vga_wgfx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb680

vga_wgfx.exit.sw.bb680_crit_edge540:              ; preds = %vga_wgfx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb680

vga_wgfx.exit.sw.bb680_crit_edge539:              ; preds = %vga_wgfx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb680

vga_wgfx.exit.sw.bb680_crit_edge:                 ; preds = %vga_wgfx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb680

sw.bb680:                                         ; preds = %vga_wgfx.exit.sw.bb680_crit_edge, %vga_wgfx.exit.sw.bb680_crit_edge539, %vga_wgfx.exit.sw.bb680_crit_edge540, %vga_wgfx.exit.sw.bb680_crit_edge541, %vga_wgfx.exit.sw.bb680_crit_edge542, %vga_wgfx.exit.sw.bb680_crit_edge543, %vga_wgfx.exit.sw.bb680_crit_edge544
  %358 = ptrtoint ptr %multiplexing to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %multiplexing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %359)
  %tobool682.not = icmp eq i32 %359, 0
  %sr07_1bpp_mux = getelementptr [10 x %struct.cirrusfb_board_info_rec], ptr @cirrusfb_board_info, i32 0, i32 %193, i32 5
  %sr07_1bpp = getelementptr [10 x %struct.cirrusfb_board_info_rec], ptr @cirrusfb_board_info, i32 0, i32 %193, i32 4
  %cond.in.in = select i1 %tobool682.not, ptr %sr07_1bpp, ptr %sr07_1bpp_mux
  %360 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load1_noabort(i32 %360)
  %cond.in5 = load i8, ptr %cond.in.in, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i258, label %if.then.i4.i257

if.then.i4.i257:                                  ; preds = %sw.bb680
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i255 = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i255, i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i256 = getelementptr i8, ptr %3, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i256, i8 %cond.in5) #9, !srcloc !332
  br label %sw.epilog695

if.else.i5.i258:                                  ; preds = %sw.bb680
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %cond.in5) #9, !srcloc !332
  br label %sw.epilog695

sw.bb686:                                         ; preds = %vga_wgfx.exit.sw.bb686_crit_edge, %vga_wgfx.exit.sw.bb686_crit_edge545
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i264, label %if.then.i4.i263

if.then.i4.i263:                                  ; preds = %sw.bb686
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i261 = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i261, i8 7) #9, !srcloc !332
  %add.ptr.i.i3.i262 = getelementptr i8, ptr %3, i32 965
  %361 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i262) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  br label %vga_rseq.exit

if.else.i5.i264:                                  ; preds = %sw.bb686
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 7) #9, !srcloc !332
  %362 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !335
  br label %vga_rseq.exit

vga_rseq.exit:                                    ; preds = %if.else.i5.i264, %if.then.i4.i263
  %retval.0.i.i = phi i8 [ %361, %if.then.i4.i263 ], [ %362, %if.else.i5.i264 ]
  %363 = and i8 %retval.0.i.i, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i269, label %if.then.i4.i268

if.then.i4.i268:                                  ; preds = %vga_rseq.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i266 = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i266, i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i267 = getelementptr i8, ptr %3, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i267, i8 %363) #9, !srcloc !332
  br label %sw.epilog695

if.else.i5.i269:                                  ; preds = %vga_rseq.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %363) #9, !srcloc !332
  br label %sw.epilog695

do.end693:                                        ; preds = %vga_wgfx.exit
  call void @__sanitizer_cov_trace_pc() #11
  %device694 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %364 = ptrtoint ptr %device694 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %device694, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %365, ptr noundef nonnull @.str.60) #13
  br label %sw.epilog695

sw.epilog695:                                     ; preds = %do.end693, %if.else.i5.i269, %if.then.i4.i268, %if.else.i5.i258, %if.then.i4.i257
  %366 = ptrtoint ptr %btype to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %btype, align 4
  %368 = zext i32 %367 to i64
  call void @__sanitizer_cov_trace_switch(i64 %368, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %367, label %do.end703 [
    i32 2, label %sw.epilog695.sw.bb697_crit_edge
    i32 4, label %sw.epilog695.sw.bb697_crit_edge546
    i32 3, label %sw.bb698
    i32 1, label %sw.epilog695.sw.epilog705_crit_edge
    i32 5, label %sw.epilog695.sw.epilog705_crit_edge547
    i32 6, label %sw.epilog695.sw.epilog705_crit_edge548
    i32 7, label %sw.epilog695.sw.epilog705_crit_edge549
    i32 8, label %sw.epilog695.sw.epilog705_crit_edge550
    i32 9, label %sw.epilog695.sw.epilog705_crit_edge551
  ]

sw.epilog695.sw.epilog705_crit_edge551:           ; preds = %sw.epilog695
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog705

sw.epilog695.sw.epilog705_crit_edge550:           ; preds = %sw.epilog695
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog705

sw.epilog695.sw.epilog705_crit_edge549:           ; preds = %sw.epilog695
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog705

sw.epilog695.sw.epilog705_crit_edge548:           ; preds = %sw.epilog695
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog705

sw.epilog695.sw.epilog705_crit_edge547:           ; preds = %sw.epilog695
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog705

sw.epilog695.sw.epilog705_crit_edge:              ; preds = %sw.epilog695
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog705

sw.epilog695.sw.bb697_crit_edge546:               ; preds = %sw.epilog695
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb697

sw.epilog695.sw.bb697_crit_edge:                  ; preds = %sw.epilog695
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb697

sw.bb697:                                         ; preds = %sw.epilog695.sw.bb697_crit_edge, %sw.epilog695.sw.bb697_crit_edge546
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i275, label %if.then.i4.i274

if.then.i4.i274:                                  ; preds = %sw.bb697
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i272 = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i272, i8 15) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i273 = getelementptr i8, ptr %3, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i273, i8 -80) #9, !srcloc !332
  br label %sw.epilog705

if.else.i5.i275:                                  ; preds = %sw.bb697
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 15) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 -80) #9, !srcloc !332
  br label %sw.epilog705

sw.bb698:                                         ; preds = %sw.epilog695
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i281, label %if.then.i4.i280

if.then.i4.i280:                                  ; preds = %sw.bb698
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i278 = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i278, i8 15) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i279 = getelementptr i8, ptr %3, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i279, i8 -48) #9, !srcloc !332
  br label %sw.epilog705

if.else.i5.i281:                                  ; preds = %sw.bb698
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 15) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 -48) #9, !srcloc !332
  br label %sw.epilog705

do.end703:                                        ; preds = %sw.epilog695
  call void @__sanitizer_cov_trace_pc() #11
  %device704 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %369 = ptrtoint ptr %device704 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %device704, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %370, ptr noundef nonnull @.str.60) #13
  br label %sw.epilog705

sw.epilog705:                                     ; preds = %do.end703, %if.else.i5.i281, %if.then.i4.i280, %if.else.i5.i275, %if.then.i4.i274, %sw.epilog695.sw.epilog705_crit_edge, %sw.epilog695.sw.epilog705_crit_edge547, %sw.epilog695.sw.epilog705_crit_edge548, %sw.epilog695.sw.epilog705_crit_edge549, %sw.epilog695.sw.epilog705_crit_edge550, %sw.epilog695.sw.epilog705_crit_edge551
  %371 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %1, align 4
  %tobool.not.i.i285 = icmp eq ptr %372, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i285, label %if.else.i.i288, label %if.then.i.i287

if.then.i.i287:                                   ; preds = %sw.epilog705
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i286 = getelementptr i8, ptr %372, i32 966
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i286, i8 1) #9, !srcloc !332
  br label %WGen.exit289

if.else.i.i288:                                   ; preds = %sw.epilog705
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873402 to ptr), i8 1) #9, !srcloc !332
  br label %WGen.exit289

WGen.exit289:                                     ; preds = %if.else.i.i288, %if.then.i.i287
  %373 = ptrtoint ptr %multiplexing to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %multiplexing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %374)
  %tobool707.not = icmp eq i32 %374, 0
  %. = select i1 %tobool707.not, i8 0, i8 74
  tail call fastcc void @WHDR(ptr noundef %1, i8 noundef zeroext %.)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i294, label %if.then.i4.i293

if.then.i4.i293:                                  ; preds = %WGen.exit289
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i291 = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i291, i8 4) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i292 = getelementptr i8, ptr %3, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i292, i8 6) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i291, i8 2) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i292, i8 1) #9, !srcloc !332
  br label %if.end869

if.else.i5.i294:                                  ; preds = %WGen.exit289
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 4) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 6) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 2) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 1) #9, !srcloc !332
  br label %if.end869

do.body716:                                       ; preds = %vga_wcrt.exit248
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_set_par_foo, %if.then728)) #9
          to label %do.end732 [label %if.then728], !srcloc !331

if.then728:                                       ; preds = %do.body716
  call void @__sanitizer_cov_trace_pc() #11
  %device729 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %375 = ptrtoint ptr %device729 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %device729, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug330, ptr noundef %376, ptr noundef nonnull @.str.63) #9
  br label %do.end732

do.end732:                                        ; preds = %if.then728, %do.body716
  %377 = ptrtoint ptr %btype to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %btype, align 4
  %379 = zext i32 %378 to i64
  call void @__sanitizer_cov_trace_switch(i64 %379, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %378, label %do.end753 [
    i32 1, label %do.end732.sw.bb734_crit_edge
    i32 2, label %do.end732.sw.bb734_crit_edge552
    i32 3, label %do.end732.sw.bb734_crit_edge553
    i32 4, label %do.end732.sw.bb734_crit_edge554
    i32 5, label %do.end732.sw.bb734_crit_edge555
    i32 6, label %do.end732.sw.bb734_crit_edge556
    i32 7, label %do.end732.sw.bb734_crit_edge557
    i32 8, label %do.end732.sw.bb744_crit_edge
    i32 9, label %do.end732.sw.bb744_crit_edge558
  ]

do.end732.sw.bb744_crit_edge558:                  ; preds = %do.end732
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb744

do.end732.sw.bb744_crit_edge:                     ; preds = %do.end732
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb744

do.end732.sw.bb734_crit_edge557:                  ; preds = %do.end732
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb734

do.end732.sw.bb734_crit_edge556:                  ; preds = %do.end732
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb734

do.end732.sw.bb734_crit_edge555:                  ; preds = %do.end732
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb734

do.end732.sw.bb734_crit_edge554:                  ; preds = %do.end732
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb734

do.end732.sw.bb734_crit_edge553:                  ; preds = %do.end732
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb734

do.end732.sw.bb734_crit_edge552:                  ; preds = %do.end732
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb734

do.end732.sw.bb734_crit_edge:                     ; preds = %do.end732
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb734

sw.bb734:                                         ; preds = %do.end732.sw.bb734_crit_edge, %do.end732.sw.bb734_crit_edge552, %do.end732.sw.bb734_crit_edge553, %do.end732.sw.bb734_crit_edge554, %do.end732.sw.bb734_crit_edge555, %do.end732.sw.bb734_crit_edge556, %do.end732.sw.bb734_crit_edge557
  %380 = ptrtoint ptr %multiplexing to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %multiplexing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %381)
  %tobool736.not = icmp eq i32 %381, 0
  %sr07_8bpp_mux = getelementptr [10 x %struct.cirrusfb_board_info_rec], ptr @cirrusfb_board_info, i32 0, i32 %193, i32 7
  %sr07_8bpp = getelementptr [10 x %struct.cirrusfb_board_info_rec], ptr @cirrusfb_board_info, i32 0, i32 %193, i32 6
  %cond742.in.in = select i1 %tobool736.not, ptr %sr07_8bpp, ptr %sr07_8bpp_mux
  %382 = ptrtoint ptr %cond742.in.in to i32
  call void @__asan_load1_noabort(i32 %382)
  %cond742.in4 = load i8, ptr %cond742.in.in, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i306, label %if.then.i4.i305

if.then.i4.i305:                                  ; preds = %sw.bb734
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i303 = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i303, i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i304 = getelementptr i8, ptr %3, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i304, i8 %cond742.in4) #9, !srcloc !332
  br label %sw.epilog755

if.else.i5.i306:                                  ; preds = %sw.bb734
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %cond742.in4) #9, !srcloc !332
  br label %sw.epilog755

sw.bb744:                                         ; preds = %do.end732.sw.bb744_crit_edge, %do.end732.sw.bb744_crit_edge558
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i312, label %if.then.i4.i311

if.then.i4.i311:                                  ; preds = %sw.bb744
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i309 = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i309, i8 7) #9, !srcloc !332
  %add.ptr.i.i3.i310 = getelementptr i8, ptr %3, i32 965
  %383 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i310) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  br label %vga_rseq.exit314

if.else.i5.i312:                                  ; preds = %sw.bb744
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 7) #9, !srcloc !332
  %384 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !335
  br label %vga_rseq.exit314

vga_rseq.exit314:                                 ; preds = %if.else.i5.i312, %if.then.i4.i311
  %retval.0.i.i313 = phi i8 [ %383, %if.then.i4.i311 ], [ %384, %if.else.i5.i312 ]
  %385 = or i8 %retval.0.i.i313, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i319, label %if.then.i4.i318

if.then.i4.i318:                                  ; preds = %vga_rseq.exit314
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i316 = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i316, i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i317 = getelementptr i8, ptr %3, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i317, i8 %385) #9, !srcloc !332
  br label %vga_wseq.exit320

if.else.i5.i319:                                  ; preds = %vga_rseq.exit314
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %385) #9, !srcloc !332
  br label %vga_wseq.exit320

vga_wseq.exit320:                                 ; preds = %if.else.i5.i319, %if.then.i4.i318
  %or749 = or i32 %threshold.0, 16
  br label %sw.epilog755

do.end753:                                        ; preds = %do.end732
  call void @__sanitizer_cov_trace_pc() #11
  %device754 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %386 = ptrtoint ptr %device754 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %device754, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %387, ptr noundef nonnull @.str.60) #13
  br label %sw.epilog755

sw.epilog755:                                     ; preds = %do.end753, %vga_wseq.exit320, %if.else.i5.i306, %if.then.i4.i305
  %threshold.1 = phi i32 [ %threshold.0, %do.end753 ], [ %or749, %vga_wseq.exit320 ], [ %threshold.0, %if.then.i4.i305 ], [ %threshold.0, %if.else.i5.i306 ]
  %388 = ptrtoint ptr %btype to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %btype, align 4
  %390 = zext i32 %389 to i64
  call void @__sanitizer_cov_trace_switch(i64 %390, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %389, label %do.end762 [
    i32 2, label %sw.epilog755.sw.bb757_crit_edge
    i32 3, label %sw.epilog755.sw.bb757_crit_edge559
    i32 4, label %sw.epilog755.sw.bb757_crit_edge560
    i32 5, label %sw.epilog755.sw.epilog764_crit_edge
    i32 6, label %sw.epilog755.sw.epilog764_crit_edge561
    i32 1, label %sw.epilog755.sw.epilog764_crit_edge562
    i32 7, label %sw.epilog755.sw.epilog764_crit_edge563
    i32 8, label %sw.epilog755.sw.epilog764_crit_edge564
    i32 9, label %sw.epilog755.sw.epilog764_crit_edge565
  ]

sw.epilog755.sw.epilog764_crit_edge565:           ; preds = %sw.epilog755
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog764

sw.epilog755.sw.epilog764_crit_edge564:           ; preds = %sw.epilog755
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog764

sw.epilog755.sw.epilog764_crit_edge563:           ; preds = %sw.epilog755
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog764

sw.epilog755.sw.epilog764_crit_edge562:           ; preds = %sw.epilog755
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog764

sw.epilog755.sw.epilog764_crit_edge561:           ; preds = %sw.epilog755
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog764

sw.epilog755.sw.epilog764_crit_edge:              ; preds = %sw.epilog755
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog764

sw.epilog755.sw.bb757_crit_edge560:               ; preds = %sw.epilog755
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb757

sw.epilog755.sw.bb757_crit_edge559:               ; preds = %sw.epilog755
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb757

sw.epilog755.sw.bb757_crit_edge:                  ; preds = %sw.epilog755
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb757

sw.bb757:                                         ; preds = %sw.epilog755.sw.bb757_crit_edge, %sw.epilog755.sw.bb757_crit_edge559, %sw.epilog755.sw.bb757_crit_edge560
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i325, label %if.then.i4.i324

if.then.i4.i324:                                  ; preds = %sw.bb757
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i322 = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i322, i8 15) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i323 = getelementptr i8, ptr %3, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i323, i8 -80) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br label %if.then.i4.i330

if.else.i5.i325:                                  ; preds = %sw.bb757
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 15) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 -80) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br label %if.else.i5.i331

do.end762:                                        ; preds = %sw.epilog755
  call void @__sanitizer_cov_trace_pc() #11
  %device763 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %391 = ptrtoint ptr %device763 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %device763, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %392, ptr noundef nonnull @.str.67) #13
  br label %sw.epilog764

sw.epilog764:                                     ; preds = %do.end762, %sw.epilog755.sw.epilog764_crit_edge, %sw.epilog755.sw.epilog764_crit_edge561, %sw.epilog755.sw.epilog764_crit_edge562, %sw.epilog755.sw.epilog764_crit_edge563, %sw.epilog755.sw.epilog764_crit_edge564, %sw.epilog755.sw.epilog764_crit_edge565
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %sw.epilog764.if.else.i5.i331_crit_edge, label %sw.epilog764.if.then.i4.i330_crit_edge

sw.epilog764.if.then.i4.i330_crit_edge:           ; preds = %sw.epilog764
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i4.i330

sw.epilog764.if.else.i5.i331_crit_edge:           ; preds = %sw.epilog764
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i5.i331

if.then.i4.i330:                                  ; preds = %sw.epilog764.if.then.i4.i330_crit_edge, %if.then.i4.i324
  %add.ptr.i.i.i328 = getelementptr i8, ptr %3, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i328, i8 5) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i329 = getelementptr i8, ptr %3, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i329, i8 64) #9, !srcloc !332
  br label %vga_wgfx.exit332

if.else.i5.i331:                                  ; preds = %sw.epilog764.if.else.i5.i331_crit_edge, %if.else.i5.i325
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 5) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 64) #9, !srcloc !332
  br label %vga_wgfx.exit332

vga_wgfx.exit332:                                 ; preds = %if.else.i5.i331, %if.then.i4.i330
  %393 = ptrtoint ptr %multiplexing to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %multiplexing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %394)
  %tobool766.not = icmp eq i32 %394, 0
  br i1 %tobool766.not, label %if.else768, label %if.then767

if.then767:                                       ; preds = %vga_wgfx.exit332
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @WHDR(ptr noundef %1, i8 noundef zeroext 74)
  br label %if.end869

if.else768:                                       ; preds = %vga_wgfx.exit332
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @WHDR(ptr noundef %1, i8 noundef zeroext 0)
  br label %if.end869

do.body775:                                       ; preds = %vga_wcrt.exit248
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_set_par_foo, %if.then787)) #9
          to label %do.end791 [label %if.then787], !srcloc !331

if.then787:                                       ; preds = %do.body775
  call void @__sanitizer_cov_trace_pc() #11
  %device788 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %395 = ptrtoint ptr %device788 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %device788, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug331, ptr noundef %396, ptr noundef nonnull @.str.69) #9
  br label %do.end791

do.end791:                                        ; preds = %if.then787, %do.body775
  %397 = ptrtoint ptr %btype to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %btype, align 4
  %399 = zext i32 %398 to i64
  call void @__sanitizer_cov_trace_switch(i64 %399, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %398, label %do.end812 [
    i32 2, label %do.end791.sw.bb793_crit_edge
    i32 4, label %do.end791.sw.bb793_crit_edge566
    i32 3, label %sw.bb794
    i32 1, label %do.end791.sw.bb795_crit_edge
    i32 5, label %do.end791.sw.bb795_crit_edge567
    i32 6, label %do.end791.sw.bb795_crit_edge568
    i32 7, label %sw.bb800
    i32 8, label %do.end791.sw.bb801_crit_edge
    i32 9, label %do.end791.sw.bb801_crit_edge569
  ]

do.end791.sw.bb801_crit_edge569:                  ; preds = %do.end791
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb801

do.end791.sw.bb801_crit_edge:                     ; preds = %do.end791
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb801

do.end791.sw.bb795_crit_edge568:                  ; preds = %do.end791
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb795

do.end791.sw.bb795_crit_edge567:                  ; preds = %do.end791
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb795

do.end791.sw.bb795_crit_edge:                     ; preds = %do.end791
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb795

do.end791.sw.bb793_crit_edge566:                  ; preds = %do.end791
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb793

do.end791.sw.bb793_crit_edge:                     ; preds = %do.end791
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb793

sw.bb793:                                         ; preds = %do.end791.sw.bb793_crit_edge, %do.end791.sw.bb793_crit_edge566
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i337, label %if.then.i4.i336

if.then.i4.i336:                                  ; preds = %sw.bb793
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i334 = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i334, i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i335 = getelementptr i8, ptr %3, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i335, i8 -121) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i334, i8 15) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i335, i8 -80) #9, !srcloc !332
  br label %sw.epilog814

if.else.i5.i337:                                  ; preds = %sw.bb793
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 -121) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 15) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 -80) #9, !srcloc !332
  br label %sw.epilog814

sw.bb794:                                         ; preds = %do.end791
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i349, label %if.then.i4.i348

if.then.i4.i348:                                  ; preds = %sw.bb794
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i346 = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i346, i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i347 = getelementptr i8, ptr %3, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i347, i8 39) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i346, i8 15) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i347, i8 -80) #9, !srcloc !332
  br label %sw.epilog814

if.else.i5.i349:                                  ; preds = %sw.bb794
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 39) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 15) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 -80) #9, !srcloc !332
  br label %sw.epilog814

sw.bb795:                                         ; preds = %do.end791.sw.bb795_crit_edge, %do.end791.sw.bb795_crit_edge567, %do.end791.sw.bb795_crit_edge568
  %400 = ptrtoint ptr %doubleVCLK to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %doubleVCLK, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %401)
  %tobool797.not = icmp eq i32 %401, 0
  %conv799 = select i1 %tobool797.not, i8 -89, i8 -93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i361, label %if.then.i4.i360

if.then.i4.i360:                                  ; preds = %sw.bb795
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i358 = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i358, i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i359 = getelementptr i8, ptr %3, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i359, i8 %conv799) #9, !srcloc !332
  br label %sw.epilog814

if.else.i5.i361:                                  ; preds = %sw.bb795
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %conv799) #9, !srcloc !332
  br label %sw.epilog814

sw.bb800:                                         ; preds = %do.end791
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i367, label %if.then.i4.i366

if.then.i4.i366:                                  ; preds = %sw.bb800
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i364 = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i364, i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i365 = getelementptr i8, ptr %3, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i365, i8 23) #9, !srcloc !332
  br label %sw.epilog814

if.else.i5.i367:                                  ; preds = %sw.bb800
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 23) #9, !srcloc !332
  br label %sw.epilog814

sw.bb801:                                         ; preds = %do.end791.sw.bb801_crit_edge, %do.end791.sw.bb801_crit_edge569
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i373, label %if.then.i4.i372

if.then.i4.i372:                                  ; preds = %sw.bb801
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i370 = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i370, i8 7) #9, !srcloc !332
  %add.ptr.i.i3.i371 = getelementptr i8, ptr %3, i32 965
  %402 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i371) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  br label %vga_rseq.exit375

if.else.i5.i373:                                  ; preds = %sw.bb801
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 7) #9, !srcloc !332
  %403 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !335
  br label %vga_rseq.exit375

vga_rseq.exit375:                                 ; preds = %if.else.i5.i373, %if.then.i4.i372
  %retval.0.i.i374 = phi i8 [ %402, %if.then.i4.i372 ], [ %403, %if.else.i5.i373 ]
  %404 = and i8 %retval.0.i.i374, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i380, label %if.then.i4.i379

if.then.i4.i379:                                  ; preds = %vga_rseq.exit375
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i377 = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i377, i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i378 = getelementptr i8, ptr %3, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i378, i8 %404) #9, !srcloc !332
  br label %vga_wseq.exit381

if.else.i5.i380:                                  ; preds = %vga_rseq.exit375
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %404) #9, !srcloc !332
  br label %vga_wseq.exit381

vga_wseq.exit381:                                 ; preds = %if.else.i5.i380, %if.then.i4.i379
  %or806 = or i32 %control.0, 8192
  %or808 = or i32 %threshold.0, 16
  br label %sw.epilog814

do.end812:                                        ; preds = %do.end791
  call void @__sanitizer_cov_trace_pc() #11
  %device813 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %405 = ptrtoint ptr %device813 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %device813, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %406, ptr noundef nonnull @.str.60) #13
  br label %sw.epilog814

sw.epilog814:                                     ; preds = %do.end812, %vga_wseq.exit381, %if.else.i5.i367, %if.then.i4.i366, %if.else.i5.i361, %if.then.i4.i360, %if.else.i5.i349, %if.then.i4.i348, %if.else.i5.i337, %if.then.i4.i336
  %threshold.2 = phi i32 [ %threshold.0, %do.end812 ], [ %or808, %vga_wseq.exit381 ], [ %threshold.0, %if.then.i4.i336 ], [ %threshold.0, %if.else.i5.i337 ], [ %threshold.0, %if.then.i4.i348 ], [ %threshold.0, %if.else.i5.i349 ], [ %threshold.0, %if.then.i4.i360 ], [ %threshold.0, %if.else.i5.i361 ], [ %threshold.0, %if.then.i4.i366 ], [ %threshold.0, %if.else.i5.i367 ]
  %format.1 = phi i16 [ 0, %do.end812 ], [ 5120, %vga_wseq.exit381 ], [ 0, %if.then.i4.i336 ], [ 0, %if.else.i5.i337 ], [ 0, %if.then.i4.i348 ], [ 0, %if.else.i5.i349 ], [ 0, %if.then.i4.i360 ], [ 0, %if.else.i5.i361 ], [ 0, %if.then.i4.i366 ], [ 0, %if.else.i5.i367 ]
  %control.1 = phi i32 [ %control.0, %do.end812 ], [ %or806, %vga_wseq.exit381 ], [ %control.0, %if.then.i4.i336 ], [ %control.0, %if.else.i5.i337 ], [ %control.0, %if.then.i4.i348 ], [ %control.0, %if.else.i5.i349 ], [ %control.0, %if.then.i4.i360 ], [ %control.0, %if.else.i5.i361 ], [ %control.0, %if.then.i4.i366 ], [ %control.0, %if.else.i5.i367 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i386, label %if.then.i4.i385

if.then.i4.i385:                                  ; preds = %sw.epilog814
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i383 = getelementptr i8, ptr %3, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i383, i8 5) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i384 = getelementptr i8, ptr %3, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i384, i8 64) #9, !srcloc !332
  br label %vga_wgfx.exit387

if.else.i5.i386:                                  ; preds = %sw.epilog814
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 5) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 64) #9, !srcloc !332
  br label %vga_wgfx.exit387

vga_wgfx.exit387:                                 ; preds = %if.else.i5.i386, %if.then.i4.i385
  %407 = ptrtoint ptr %doubleVCLK to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %doubleVCLK, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %408)
  %tobool816.not = icmp eq i32 %408, 0
  %conv818 = select i1 %tobool816.not, i8 -63, i8 -31
  tail call fastcc void @WHDR(ptr noundef %1, i8 noundef zeroext %conv818)
  br label %if.end869

do.body824:                                       ; preds = %vga_wcrt.exit248
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_set_par_foo, %if.then836)) #9
          to label %do.end840 [label %if.then836], !srcloc !331

if.then836:                                       ; preds = %do.body824
  call void @__sanitizer_cov_trace_pc() #11
  %device837 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %409 = ptrtoint ptr %device837 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %device837, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug332, ptr noundef %410, ptr noundef nonnull @.str.72) #9
  br label %do.end840

do.end840:                                        ; preds = %if.then836, %do.body824
  %411 = ptrtoint ptr %btype to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %btype, align 4
  %413 = zext i32 %412 to i64
  call void @__sanitizer_cov_trace_switch(i64 %413, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %412, label %do.end857 [
    i32 2, label %do.end840.sw.bb842_crit_edge
    i32 4, label %do.end840.sw.bb842_crit_edge570
    i32 3, label %sw.bb843
    i32 1, label %do.end840.sw.bb844_crit_edge
    i32 5, label %do.end840.sw.bb844_crit_edge571
    i32 6, label %do.end840.sw.bb844_crit_edge572
    i32 7, label %sw.bb845
    i32 8, label %do.end840.sw.bb846_crit_edge
    i32 9, label %do.end840.sw.bb846_crit_edge573
  ]

do.end840.sw.bb846_crit_edge573:                  ; preds = %do.end840
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb846

do.end840.sw.bb846_crit_edge:                     ; preds = %do.end840
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb846

do.end840.sw.bb844_crit_edge572:                  ; preds = %do.end840
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb844

do.end840.sw.bb844_crit_edge571:                  ; preds = %do.end840
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb844

do.end840.sw.bb844_crit_edge:                     ; preds = %do.end840
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb844

do.end840.sw.bb842_crit_edge570:                  ; preds = %do.end840
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb842

do.end840.sw.bb842_crit_edge:                     ; preds = %do.end840
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb842

sw.bb842:                                         ; preds = %do.end840.sw.bb842_crit_edge, %do.end840.sw.bb842_crit_edge570
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i392, label %if.then.i4.i391

if.then.i4.i391:                                  ; preds = %sw.bb842
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i389 = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i389, i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i390 = getelementptr i8, ptr %3, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i390, i8 -123) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i389, i8 15) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i390, i8 -80) #9, !srcloc !332
  br label %sw.epilog859

if.else.i5.i392:                                  ; preds = %sw.bb842
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 -123) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 15) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 -80) #9, !srcloc !332
  br label %sw.epilog859

sw.bb843:                                         ; preds = %do.end840
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i404, label %if.then.i4.i403

if.then.i4.i403:                                  ; preds = %sw.bb843
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i401 = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i401, i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i402 = getelementptr i8, ptr %3, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i402, i8 37) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i401, i8 15) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i402, i8 -80) #9, !srcloc !332
  br label %sw.epilog859

if.else.i5.i404:                                  ; preds = %sw.bb843
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 37) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 15) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 -80) #9, !srcloc !332
  br label %sw.epilog859

sw.bb844:                                         ; preds = %do.end840.sw.bb844_crit_edge, %do.end840.sw.bb844_crit_edge571, %do.end840.sw.bb844_crit_edge572
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i416, label %if.then.i4.i415

if.then.i4.i415:                                  ; preds = %sw.bb844
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i413 = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i413, i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i414 = getelementptr i8, ptr %3, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i414, i8 -91) #9, !srcloc !332
  br label %sw.epilog859

if.else.i5.i416:                                  ; preds = %sw.bb844
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 -91) #9, !srcloc !332
  br label %sw.epilog859

sw.bb845:                                         ; preds = %do.end840
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i422, label %if.then.i4.i421

if.then.i4.i421:                                  ; preds = %sw.bb845
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i419 = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i419, i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i420 = getelementptr i8, ptr %3, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i420, i8 21) #9, !srcloc !332
  br label %sw.epilog859

if.else.i5.i422:                                  ; preds = %sw.bb845
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 21) #9, !srcloc !332
  br label %sw.epilog859

sw.bb846:                                         ; preds = %do.end840.sw.bb846_crit_edge, %do.end840.sw.bb846_crit_edge573
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i428, label %if.then.i4.i427

if.then.i4.i427:                                  ; preds = %sw.bb846
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i425 = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i425, i8 7) #9, !srcloc !332
  %add.ptr.i.i3.i426 = getelementptr i8, ptr %3, i32 965
  %414 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i426) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  br label %vga_rseq.exit430

if.else.i5.i428:                                  ; preds = %sw.bb846
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 7) #9, !srcloc !332
  %415 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !335
  br label %vga_rseq.exit430

vga_rseq.exit430:                                 ; preds = %if.else.i5.i428, %if.then.i4.i427
  %retval.0.i.i429 = phi i8 [ %414, %if.then.i4.i427 ], [ %415, %if.else.i5.i428 ]
  %416 = and i8 %retval.0.i.i429, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i435, label %if.then.i4.i434

if.then.i4.i434:                                  ; preds = %vga_rseq.exit430
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i432 = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i432, i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i433 = getelementptr i8, ptr %3, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i433, i8 %416) #9, !srcloc !332
  br label %vga_wseq.exit436

if.else.i5.i435:                                  ; preds = %vga_rseq.exit430
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 7) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %416) #9, !srcloc !332
  br label %vga_wseq.exit436

vga_wseq.exit436:                                 ; preds = %if.else.i5.i435, %if.then.i4.i434
  %or851 = or i32 %control.0, 16384
  %or853 = or i32 %threshold.0, 32
  br label %sw.epilog859

do.end857:                                        ; preds = %do.end840
  call void @__sanitizer_cov_trace_pc() #11
  %device858 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %417 = ptrtoint ptr %device858 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %device858, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %418, ptr noundef nonnull @.str.60) #13
  br label %sw.epilog859

sw.epilog859:                                     ; preds = %do.end857, %vga_wseq.exit436, %if.else.i5.i422, %if.then.i4.i421, %if.else.i5.i416, %if.then.i4.i415, %if.else.i5.i404, %if.then.i4.i403, %if.else.i5.i392, %if.then.i4.i391
  %threshold.3 = phi i32 [ %threshold.0, %do.end857 ], [ %or853, %vga_wseq.exit436 ], [ %threshold.0, %if.then.i4.i391 ], [ %threshold.0, %if.else.i5.i392 ], [ %threshold.0, %if.then.i4.i403 ], [ %threshold.0, %if.else.i5.i404 ], [ %threshold.0, %if.then.i4.i415 ], [ %threshold.0, %if.else.i5.i416 ], [ %threshold.0, %if.then.i4.i421 ], [ %threshold.0, %if.else.i5.i422 ]
  %format.2 = phi i16 [ 0, %do.end857 ], [ 9216, %vga_wseq.exit436 ], [ 0, %if.then.i4.i391 ], [ 0, %if.else.i5.i392 ], [ 0, %if.then.i4.i403 ], [ 0, %if.else.i5.i404 ], [ 0, %if.then.i4.i415 ], [ 0, %if.else.i5.i416 ], [ 0, %if.then.i4.i421 ], [ 0, %if.else.i5.i422 ]
  %control.2 = phi i32 [ %control.0, %do.end857 ], [ %or851, %vga_wseq.exit436 ], [ %control.0, %if.then.i4.i391 ], [ %control.0, %if.else.i5.i392 ], [ %control.0, %if.then.i4.i403 ], [ %control.0, %if.else.i5.i404 ], [ %control.0, %if.then.i4.i415 ], [ %control.0, %if.else.i5.i416 ], [ %control.0, %if.then.i4.i421 ], [ %control.0, %if.else.i5.i422 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i441, label %if.then.i4.i440

if.then.i4.i440:                                  ; preds = %sw.epilog859
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i438 = getelementptr i8, ptr %3, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i438, i8 5) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i439 = getelementptr i8, ptr %3, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i439, i8 64) #9, !srcloc !332
  br label %vga_wgfx.exit442

if.else.i5.i441:                                  ; preds = %sw.epilog859
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 5) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 64) #9, !srcloc !332
  br label %vga_wgfx.exit442

vga_wgfx.exit442:                                 ; preds = %if.else.i5.i441, %if.then.i4.i440
  tail call fastcc void @WHDR(ptr noundef %1, i8 noundef zeroext -59)
  br label %if.end869

do.end863:                                        ; preds = %vga_wcrt.exit248
  call void @__sanitizer_cov_trace_pc() #11
  %device864 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %419 = ptrtoint ptr %device864 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %device864, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %420, ptr noundef nonnull @.str.76, i32 noundef %351) #13
  br label %if.end869

if.end869:                                        ; preds = %do.end863, %vga_wgfx.exit442, %vga_wgfx.exit387, %if.else768, %if.then767, %if.else.i5.i294, %if.then.i4.i293
  %threshold.4 = phi i32 [ %threshold.1, %if.then767 ], [ %threshold.1, %if.else768 ], [ %threshold.2, %vga_wgfx.exit387 ], [ %threshold.3, %vga_wgfx.exit442 ], [ %threshold.0, %do.end863 ], [ %threshold.0, %if.then.i4.i293 ], [ %threshold.0, %if.else.i5.i294 ]
  %format.3 = phi i16 [ 0, %if.then767 ], [ 0, %if.else768 ], [ %format.1, %vga_wgfx.exit387 ], [ %format.2, %vga_wgfx.exit442 ], [ 0, %do.end863 ], [ 0, %if.then.i4.i293 ], [ 0, %if.else.i5.i294 ]
  %control.3 = phi i32 [ %control.0, %if.then767 ], [ %control.0, %if.else768 ], [ %control.1, %vga_wgfx.exit387 ], [ %control.2, %vga_wgfx.exit442 ], [ %control.0, %do.end863 ], [ %control.0, %if.then.i4.i293 ], [ %control.0, %if.else.i5.i294 ]
  %line_length871 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %421 = ptrtoint ptr %line_length871 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %line_length871, align 4
  %shr872 = lshr i32 %422, 3
  %conv874 = trunc i32 %shr872 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i447, label %if.then.i4.i446

if.then.i4.i446:                                  ; preds = %if.end869
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i444 = getelementptr i8, ptr %3, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i444, i8 19) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i445 = getelementptr i8, ptr %3, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i445, i8 %conv874) #9, !srcloc !332
  br label %vga_wcrt.exit448

if.else.i5.i447:                                  ; preds = %if.end869
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 19) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %conv874) #9, !srcloc !332
  br label %vga_wcrt.exit448

vga_wcrt.exit448:                                 ; preds = %if.else.i5.i447, %if.then.i4.i446
  %423 = and i32 %422, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %423)
  %tobool876.not = icmp eq i32 %423, 0
  %spec.select16 = select i1 %tobool876.not, i8 34, i8 50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i453, label %if.then.i4.i452

if.then.i4.i452:                                  ; preds = %vga_wcrt.exit448
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i450 = getelementptr i8, ptr %3, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i450, i8 27) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i451 = getelementptr i8, ptr %3, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i451, i8 %spec.select16) #9, !srcloc !332
  br label %vga_wcrt.exit454

if.else.i5.i453:                                  ; preds = %vga_wcrt.exit448
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 27) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %spec.select16) #9, !srcloc !332
  br label %vga_wcrt.exit454

vga_wcrt.exit454:                                 ; preds = %if.else.i5.i453, %if.then.i4.i452
  %424 = ptrtoint ptr %btype to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %btype, align 4
  %426 = and i32 %425, 134217727
  %427 = lshr i32 29, %426
  %428 = and i32 %427, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %428)
  %bf.cast.not.not = icmp eq i32 %428, 0
  br i1 %bf.cast.not.not, label %if.then884, label %vga_wcrt.exit454.if.end888_crit_edge

vga_wcrt.exit454.if.end888_crit_edge:             ; preds = %vga_wcrt.exit454
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end888

if.then884:                                       ; preds = %vga_wcrt.exit454
  %429 = lshr i32 %422, 12
  %430 = trunc i32 %429 to i8
  %conv887 = and i8 %430, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i459, label %if.then.i4.i458

if.then.i4.i458:                                  ; preds = %if.then884
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i456 = getelementptr i8, ptr %3, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i456, i8 29) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i457 = getelementptr i8, ptr %3, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i457, i8 %conv887) #9, !srcloc !332
  br label %if.end888

if.else.i5.i459:                                  ; preds = %if.then884
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 29) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %conv887) #9, !srcloc !332
  br label %if.end888

if.end888:                                        ; preds = %if.else.i5.i459, %if.then.i4.i458, %vga_wcrt.exit454.if.end888_crit_edge
  %431 = ptrtoint ptr %btype to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %btype, align 4
  %433 = and i32 %432, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %433)
  %.not523 = icmp eq i32 %433, 8
  br i1 %.not523, label %if.then891, label %if.end888.if.end953_crit_edge

if.end888.if.end953_crit_edge:                    ; preds = %if.end888
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end953

if.then891:                                       ; preds = %if.end888
  %and893 = lshr i32 %htotal.0, 1
  %434 = trunc i32 %and893 to i8
  %435 = and i8 %434, -128
  %and900 = lshr i32 %sub73, 2
  %436 = trunc i32 %and900 to i8
  %437 = and i8 %436, 64
  %438 = or i8 %437, %435
  %and907 = and i32 %add74, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and907)
  %tobool908.not = icmp eq i32 %and907, 0
  %439 = or i8 %438, 48
  %tmp.22 = select i1 %tobool908.not, i8 %438, i8 %439
  %and914 = lshr i32 %sub64, 7
  %440 = trunc i32 %and914 to i8
  %441 = and i8 %440, 8
  %and921 = lshr i32 %sub, 8
  %442 = trunc i32 %and921 to i8
  %443 = and i8 %442, 4
  %444 = or i8 %443, %441
  %445 = or i8 %444, %tmp.22
  %and928 = and i32 %sub62, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and928)
  %tobool929.not = icmp eq i32 %and928, 0
  %446 = or i8 %445, 3
  %tmp.25 = select i1 %tobool929.not, i8 %445, i8 %446
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i466, label %if.then.i4.i465

if.then.i4.i465:                                  ; preds = %if.then891
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i463 = getelementptr i8, ptr %3, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i463, i8 30) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i464 = getelementptr i8, ptr %3, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i464, i8 %tmp.25) #9, !srcloc !332
  br label %vga_wcrt.exit467

if.else.i5.i466:                                  ; preds = %if.then891
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 30) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %tmp.25) #9, !srcloc !332
  br label %vga_wcrt.exit467

vga_wcrt.exit467:                                 ; preds = %if.else.i5.i466, %if.then.i4.i465
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_set_par_foo, %if.then947)) #9
          to label %if.end953 [label %if.then947], !srcloc !331

if.then947:                                       ; preds = %vga_wcrt.exit467
  call void @__sanitizer_cov_trace_pc() #11
  %device948 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %447 = ptrtoint ptr %device948 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %device948, align 4
  %conv949 = zext i8 %tmp.25 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug333, ptr noundef %448, ptr noundef nonnull @.str.78, i32 noundef %conv949) #9
  br label %if.end953

if.end953:                                        ; preds = %if.then947, %vga_wcrt.exit467, %if.end888.if.end953_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i471, label %if.then.i4.i470

if.then.i4.i470:                                  ; preds = %if.end953
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i469 = getelementptr i8, ptr %3, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i469, i8 51) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i469, i8 0) #9, !srcloc !332
  br label %vga_wattr.exit

if.else.i5.i471:                                  ; preds = %if.end953
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 51) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 0) #9, !srcloc !332
  br label %vga_wattr.exit

vga_wattr.exit:                                   ; preds = %if.else.i5.i471, %if.then.i4.i470
  %cmp.not.i472 = icmp eq ptr %1, null
  br i1 %cmp.not.i472, label %do.end.i474, label %vga_wattr.exit.if.end.i476_crit_edge

vga_wattr.exit.if.end.i476_crit_edge:             ; preds = %vga_wattr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i476

do.end.i474:                                      ; preds = %vga_wattr.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i473 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.104, i32 noundef 2442) #13
  br label %if.end.i476

if.end.i476:                                      ; preds = %do.end.i474, %vga_wattr.exit.if.end.i476_crit_edge
  %449 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %1, align 4
  %tobool.not.i.i.i475 = icmp eq ptr %450, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i.i475, label %if.else.i5.i.i480, label %if.then.i4.i.i479

if.then.i4.i.i479:                                ; preds = %if.end.i476
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i.i477 = getelementptr i8, ptr %450, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i477, i8 36) #9, !srcloc !332
  %add.ptr.i.i3.i.i478 = getelementptr i8, ptr %450, i32 981
  %451 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i.i478) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  br label %vga_rcrt.exit.i

if.else.i5.i.i480:                                ; preds = %if.end.i476
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 36) #9, !srcloc !332
  %452 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !335
  br label %vga_rcrt.exit.i

vga_rcrt.exit.i:                                  ; preds = %if.else.i5.i.i480, %if.then.i4.i.i479
  %retval.0.i.i.i = phi i8 [ %451, %if.then.i4.i.i479 ], [ %452, %if.else.i5.i.i480 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %retval.0.i.i.i)
  %tobool.not.i481 = icmp sgt i8 %retval.0.i.i.i, -1
  br i1 %tobool.not.i481, label %vga_rcrt.exit.i.if.end6.i_crit_edge, label %if.then2.i

vga_rcrt.exit.i.if.end6.i_crit_edge:              ; preds = %vga_rcrt.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then2.i:                                       ; preds = %vga_rcrt.exit.i
  %453 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %1, align 4
  %tobool.not.i.i482 = icmp eq ptr %454, null
  br i1 %tobool.not.i.i482, label %if.else.i17.i, label %if.then.i16.i

if.then.i16.i:                                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i483 = getelementptr i8, ptr %454, i32 961
  %455 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i483) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i15.i = getelementptr i8, ptr %454, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i15.i, i8 %455) #9, !srcloc !332
  br label %if.end6.i

if.else.i17.i:                                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  %456 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873407 to ptr)) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !335
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 %456) #9, !srcloc !332
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i17.i, %if.then.i16.i, %vga_rcrt.exit.i.if.end6.i_crit_edge
  %457 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %1, align 4
  %tobool.not.i18.i = icmp eq ptr %458, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i18.i, label %if.else.i21.i, label %if.then.i20.i

if.then.i20.i:                                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i19.i = getelementptr i8, ptr %458, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i19.i, i8 51) #9, !srcloc !332
  br label %vga_w.exit22.i

if.else.i21.i:                                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 51) #9, !srcloc !332
  br label %vga_w.exit22.i

vga_w.exit22.i:                                   ; preds = %if.else.i21.i, %if.then.i20.i
  %459 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %1, align 4
  %tobool.not.i23.i = icmp eq ptr %460, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i23.i, label %if.else.i26.i, label %if.then.i25.i

if.then.i25.i:                                    ; preds = %vga_w.exit22.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i24.i = getelementptr i8, ptr %460, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i24.i, i8 0) #9, !srcloc !332
  br label %AttrOn.exit

if.else.i26.i:                                    ; preds = %vga_w.exit22.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 0) #9, !srcloc !332
  br label %AttrOn.exit

AttrOn.exit:                                      ; preds = %if.else.i26.i, %if.then.i25.i
  %461 = ptrtoint ptr %btype to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %btype, align 4
  %463 = and i32 %462, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %463)
  %.not524 = icmp eq i32 %463, 8
  br i1 %.not524, label %if.then956, label %AttrOn.exit.if.end967_crit_edge

AttrOn.exit.if.end967_crit_edge:                  ; preds = %AttrOn.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end967

if.then956:                                       ; preds = %AttrOn.exit
  call void @__sanitizer_cov_trace_pc() #11
  %464 = trunc i32 %control.3 to i16
  %conv958 = or i16 %464, 4096
  %laguna_mmio959 = getelementptr inbounds %struct.cirrusfb_info, ptr %1, i32 0, i32 1
  %465 = ptrtoint ptr %laguna_mmio959 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %laguna_mmio959, align 4
  %add.ptr960 = getelementptr i8, ptr %466, i32 1026
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr960, i16 %conv958) #9, !srcloc !345
  %467 = ptrtoint ptr %laguna_mmio959 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %laguna_mmio959, align 4
  %add.ptr963 = getelementptr i8, ptr %468, i32 192
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr963, i16 %format.3) #9, !srcloc !345
  %conv964 = trunc i32 %threshold.4 to i16
  %469 = ptrtoint ptr %laguna_mmio959 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %laguna_mmio959, align 4
  %add.ptr966 = getelementptr i8, ptr %470, i32 234
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr966, i16 %conv964) #9, !srcloc !345
  br label %if.end967

if.end967:                                        ; preds = %if.then956, %AttrOn.exit.if.end967_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i489, label %if.then.i4.i488

if.then.i4.i488:                                  ; preds = %if.end967
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i486 = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i486, i8 1) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i487 = getelementptr i8, ptr %3, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i487, i8 1) #9, !srcloc !332
  br label %vga_wseq.exit490

if.else.i5.i489:                                  ; preds = %if.end967
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 1) #9, !srcloc !332
  br label %vga_wseq.exit490

vga_wseq.exit490:                                 ; preds = %if.else.i5.i489, %if.then.i4.i488
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_set_par_foo, %if.then980)) #9
          to label %do.end985 [label %if.then980], !srcloc !331

if.then980:                                       ; preds = %vga_wseq.exit490
  call void @__sanitizer_cov_trace_pc() #11
  %device981 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %471 = ptrtoint ptr %device981 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %device981, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug334, ptr noundef %472, ptr noundef nonnull @.str.79, i32 noundef 1) #9
  br label %do.end985

do.end985:                                        ; preds = %if.then980, %vga_wseq.exit490
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cirrusfb_check_mclk(ptr nocapture noundef readonly %info, i32 noundef %freq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i, label %if.then.i4.i

if.then.i4.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 31) #9, !srcloc !332
  %add.ptr.i.i3.i = getelementptr i8, ptr %3, i32 965
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  br label %vga_rseq.exit

if.else.i5.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 31) #9, !srcloc !332
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !335
  br label %vga_rseq.exit

vga_rseq.exit:                                    ; preds = %if.else.i5.i, %if.then.i4.i
  %retval.0.i.i = phi i8 [ %4, %if.then.i4.i ], [ %5, %if.else.i5.i ]
  %6 = and i8 %retval.0.i.i, 63
  %and = zext i8 %6 to i32
  %mul = mul nuw nsw i32 %and, 14318
  %7 = lshr i32 %mul, 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_check_mclk.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_check_mclk, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !331

if.then:                                          ; preds = %vga_rseq.exit
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_check_mclk.__UNIQUE_ID_ddebug305, ptr noundef %9, ptr noundef nonnull @.str.97, i32 noundef %7) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %vga_rseq.exit
  %sub = sub i32 %freq, %7
  %10 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 250, i32 %10)
  %cmp7 = icmp slt i32 %10, 250
  br i1 %cmp7, label %do.body10, label %if.else

do.body10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_check_mclk.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_check_mclk, %if.then22)) #9
          to label %cleanup [label %if.then22], !srcloc !331

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %device23 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %11 = ptrtoint ptr %device23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device23, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_check_mclk.__UNIQUE_ID_ddebug306, ptr noundef %12, ptr noundef nonnull @.str.98) #9
  br label %cleanup

if.else:                                          ; preds = %do.end
  %div71 = lshr i32 %mul, 4
  %sub28 = sub i32 %freq, %div71
  %13 = tail call i32 @llvm.abs.i32(i32 %sub28, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 250, i32 %13)
  %cmp37 = icmp slt i32 %13, 250
  br i1 %cmp37, label %do.body40, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body40:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_check_mclk.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_check_mclk, %if.then52)) #9
          to label %cleanup [label %if.then52], !srcloc !331

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #11
  %device53 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %14 = ptrtoint ptr %device53 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device53, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_check_mclk.__UNIQUE_ID_ddebug307, ptr noundef %15, ptr noundef nonnull @.str.99) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %do.body40, %if.else.cleanup_crit_edge, %if.then22, %do.body10
  %retval.0 = phi i32 [ 1, %if.then22 ], [ 2, %if.then52 ], [ 0, %if.else.cleanup_crit_edge ], [ 1, %do.body10 ], [ 2, %do.body40 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cirrusfb_set_mclk_as_source(ptr nocapture noundef readonly %info, i32 noundef %div) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.100, i32 noundef 637) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i, label %if.then.i4.i

if.then.i4.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 31) #9, !srcloc !332
  %add.ptr.i.i3.i = getelementptr i8, ptr %3, i32 965
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  br label %vga_rseq.exit

if.else.i5.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 31) #9, !srcloc !332
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !335
  br label %vga_rseq.exit

vga_rseq.exit:                                    ; preds = %if.else.i5.i, %if.then.i4.i
  %retval.0.i.i = phi i8 [ %4, %if.then.i4.i ], [ %5, %if.else.i5.i ]
  %6 = and i8 %retval.0.i.i, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div)
  %tobool.not = icmp eq i32 %div, 0
  br i1 %tobool.not, label %vga_rseq.exit.if.end31_crit_edge, label %do.body4

vga_rseq.exit.if.end31_crit_edge:                 ; preds = %vga_rseq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

do.body4:                                         ; preds = %vga_rseq.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_set_mclk_as_source.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_set_mclk_as_source, %if.then10)) #9
          to label %do.end15 [label %if.then10], !srcloc !331

if.then10:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div)
  %cmp11 = icmp eq i32 %div, 2
  %cond = select i1 %cmp11, ptr @.str.102, ptr @.str.103
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_set_mclk_as_source.__UNIQUE_ID_ddebug310, ptr noundef %8, ptr noundef nonnull @.str.101, ptr noundef nonnull %cond) #9
  br label %do.end15

do.end15:                                         ; preds = %if.then10, %do.body4
  %9 = or i8 %retval.0.i.i, 64
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %tobool.not.i.i42 = icmp eq ptr %11, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i42, label %if.else.i5.i46, label %if.then.i4.i45

if.then.i4.i45:                                   ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i43 = getelementptr i8, ptr %11, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i43, i8 30) #9, !srcloc !332
  %add.ptr.i.i3.i44 = getelementptr i8, ptr %11, i32 965
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i44) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  br label %vga_rseq.exit48

if.else.i5.i46:                                   ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 30) #9, !srcloc !332
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !335
  br label %vga_rseq.exit48

vga_rseq.exit48:                                  ; preds = %if.else.i5.i46, %if.then.i4.i45
  %retval.0.i.i47 = phi i8 [ %12, %if.then.i4.i45 ], [ %13, %if.else.i5.i46 ]
  %14 = and i8 %retval.0.i.i47, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div)
  %cmp23 = icmp eq i32 %div, 2
  %masksel = zext i1 %cmp23 to i8
  %spec.select = or i8 %14, %masksel
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %tobool.not.i.i49 = icmp eq ptr %16, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i49, label %if.else.i5.i53, label %if.then.i4.i52

if.then.i4.i52:                                   ; preds = %vga_rseq.exit48
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i50 = getelementptr i8, ptr %16, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i50, i8 30) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i51 = getelementptr i8, ptr %16, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i51, i8 %spec.select) #9, !srcloc !332
  br label %if.end31

if.else.i5.i53:                                   ; preds = %vga_rseq.exit48
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 30) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %spec.select) #9, !srcloc !332
  br label %if.end31

if.end31:                                         ; preds = %if.else.i5.i53, %if.then.i4.i52, %vga_rseq.exit.if.end31_crit_edge
  %old1f.0 = phi i8 [ %6, %vga_rseq.exit.if.end31_crit_edge ], [ %9, %if.then.i4.i52 ], [ %9, %if.else.i5.i53 ]
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %tobool.not.i.i54 = icmp eq ptr %18, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i54, label %if.else.i5.i58, label %if.then.i4.i57

if.then.i4.i57:                                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i55 = getelementptr i8, ptr %18, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i55, i8 31) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i56 = getelementptr i8, ptr %18, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i56, i8 %old1f.0) #9, !srcloc !332
  br label %vga_wseq.exit59

if.else.i5.i58:                                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 31) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %old1f.0) #9, !srcloc !332
  br label %vga_wseq.exit59

vga_wseq.exit59:                                  ; preds = %if.else.i5.i58, %if.then.i4.i57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @WHDR(ptr nocapture noundef readonly %cinfo, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %btype.i = getelementptr inbounds %struct.cirrusfb_info, ptr %cinfo, i32 0, i32 2
  %0 = ptrtoint ptr %btype.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %btype.i, align 4
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %.not = icmp eq i32 %2, 8
  br i1 %.not, label %entry.if.end12_crit_edge, label %if.end

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then1, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then1:                                         ; preds = %if.end
  %3 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cinfo, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 966
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 0) #9, !srcloc !332
  br label %WGen.exit

if.else.i.i:                                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873402 to ptr), i8 0) #9, !srcloc !332
  br label %WGen.exit

WGen.exit:                                        ; preds = %if.else.i.i, %if.then.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 42949600) #9
  %6 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cinfo, align 4
  %tobool.not.i.i27 = icmp eq ptr %7, null
  br i1 %tobool.not.i.i27, label %if.else.i.i30, label %if.then.i.i29

if.then.i.i29:                                    ; preds = %WGen.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i28 = getelementptr i8, ptr %7, i32 968
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i28) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  br label %RGen.exit

if.else.i.i30:                                    ; preds = %WGen.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873400 to ptr)) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !335
  br label %RGen.exit

RGen.exit:                                        ; preds = %if.else.i.i30, %if.then.i.i29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 42949600) #9
  br label %if.end3

if.end3:                                          ; preds = %RGen.exit, %if.end.if.end3_crit_edge
  %11 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cinfo, align 4
  %tobool.not.i.i33 = icmp eq ptr %12, null
  br i1 %tobool.not.i.i33, label %if.else.i.i36, label %if.then.i.i35

if.then.i.i35:                                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i34 = getelementptr i8, ptr %12, i32 966
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i34) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  br label %RGen.exit37

if.else.i.i36:                                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873402 to ptr)) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !335
  br label %RGen.exit37

RGen.exit37:                                      ; preds = %if.else.i.i36, %if.then.i.i35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 42949600) #9
  %16 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cinfo, align 4
  %tobool.not.i.i40 = icmp eq ptr %17, null
  br i1 %tobool.not.i.i40, label %if.else.i.i43, label %if.then.i.i42

if.then.i.i42:                                    ; preds = %RGen.exit37
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i41 = getelementptr i8, ptr %17, i32 966
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i41) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  br label %RGen.exit44

if.else.i.i43:                                    ; preds = %RGen.exit37
  call void @__sanitizer_cov_trace_pc() #11
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873402 to ptr)) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !335
  br label %RGen.exit44

RGen.exit44:                                      ; preds = %if.else.i.i43, %if.then.i.i42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 42949600) #9
  %21 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cinfo, align 4
  %tobool.not.i.i47 = icmp eq ptr %22, null
  br i1 %tobool.not.i.i47, label %if.else.i.i50, label %if.then.i.i49

if.then.i.i49:                                    ; preds = %RGen.exit44
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i48 = getelementptr i8, ptr %22, i32 966
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i48) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  br label %RGen.exit51

if.else.i.i50:                                    ; preds = %RGen.exit44
  call void @__sanitizer_cov_trace_pc() #11
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873402 to ptr)) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !335
  br label %RGen.exit51

RGen.exit51:                                      ; preds = %if.else.i.i50, %if.then.i.i49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 42949600) #9
  %26 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cinfo, align 4
  %tobool.not.i.i54 = icmp eq ptr %27, null
  br i1 %tobool.not.i.i54, label %if.else.i.i57, label %if.then.i.i56

if.then.i.i56:                                    ; preds = %RGen.exit51
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i55 = getelementptr i8, ptr %27, i32 966
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i55) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  br label %RGen.exit58

if.else.i.i57:                                    ; preds = %RGen.exit51
  call void @__sanitizer_cov_trace_pc() #11
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873402 to ptr)) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !335
  br label %RGen.exit58

RGen.exit58:                                      ; preds = %if.else.i.i57, %if.then.i.i56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 42949600) #9
  %31 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cinfo, align 4
  %tobool.not.i.i61 = icmp eq ptr %32, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i61, label %if.else.i.i64, label %if.then.i.i63

if.then.i.i63:                                    ; preds = %RGen.exit58
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i62 = getelementptr i8, ptr %32, i32 966
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i62, i8 %val) #9, !srcloc !332
  br label %WGen.exit65

if.else.i.i64:                                    ; preds = %RGen.exit58
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873402 to ptr), i8 %val) #9, !srcloc !332
  br label %WGen.exit65

WGen.exit65:                                      ; preds = %if.else.i.i64, %if.then.i.i63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 42949600) #9
  %34 = ptrtoint ptr %btype.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %btype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp9 = icmp eq i32 %35, 3
  br i1 %cmp9, label %if.then10, label %WGen.exit65.if.end12_crit_edge

WGen.exit65.if.end12_crit_edge:                   ; preds = %WGen.exit65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then10:                                        ; preds = %WGen.exit65
  %36 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cinfo, align 4
  %tobool.not.i.i68 = icmp eq ptr %37, null
  br i1 %tobool.not.i.i68, label %if.else.i.i71, label %if.then.i.i70

if.then.i.i70:                                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i69 = getelementptr i8, ptr %37, i32 968
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i69) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  br label %RGen.exit72

if.else.i.i71:                                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873400 to ptr)) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !335
  br label %RGen.exit72

RGen.exit72:                                      ; preds = %if.else.i.i71, %if.then.i.i70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 42949600) #9
  %41 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cinfo, align 4
  %tobool.not.i.i75 = icmp eq ptr %42, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i75, label %if.else.i.i78, label %if.then.i.i77

if.then.i.i77:                                    ; preds = %RGen.exit72
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i76 = getelementptr i8, ptr %42, i32 966
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i76, i8 -1) #9, !srcloc !332
  br label %WGen.exit79

if.else.i.i78:                                    ; preds = %RGen.exit72
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873402 to ptr), i8 -1) #9, !srcloc !332
  br label %WGen.exit79

WGen.exit79:                                      ; preds = %if.else.i.i78, %if.then.i.i77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 42949600) #9
  br label %if.end12

if.end12:                                         ; preds = %WGen.exit79, %WGen.exit65.if.end12_crit_edge, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cirrusfb_RectFill(ptr noundef %regbase, i32 noundef %bits_per_pixel, i16 noundef zeroext %x, i16 noundef zeroext %y, i16 noundef zeroext %width, i16 noundef zeroext %height, i32 noundef %fg_color, i32 noundef %bg_color, i16 noundef zeroext %line_length, i8 noundef zeroext %blitmode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i.i = icmp eq ptr %regbase, null
  %add.ptr.i.i.i.i = getelementptr i8, ptr %regbase, i32 974
  %add.ptr.i.i2.i.i = getelementptr i8, ptr %regbase, i32 975
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end.i, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i.i, label %if.else.i4.i.i, label %if.then.i3.i.i

if.then.i3.i.i:                                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 49) #9, !srcloc !332
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i2.i.i) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  br label %vga_rgfx.exit.i

if.else.i4.i.i:                                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 49) #9, !srcloc !332
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr)) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !335
  br label %vga_rgfx.exit.i

vga_rgfx.exit.i:                                  ; preds = %if.else.i4.i.i, %if.then.i3.i.i
  %retval.0.i.i.i = phi i8 [ %0, %if.then.i3.i.i ], [ %1, %if.else.i4.i.i ]
  %2 = and i8 %retval.0.i.i.i, 8
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %cirrusfb_WaitBLT.exit, label %do.end.i

do.end.i:                                         ; preds = %vga_rgfx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !339
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !340
  br label %while.cond.i

cirrusfb_WaitBLT.exit:                            ; preds = %vga_rgfx.exit.i
  %conv3 = trunc i32 %bg_color to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i.i, label %if.else.i5.i, label %if.then.i4.i

if.then.i4.i:                                     ; preds = %cirrusfb_WaitBLT.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 0) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i2.i.i, i8 %conv3) #9, !srcloc !332
  br label %vga_wgfx.exit

if.else.i5.i:                                     ; preds = %cirrusfb_WaitBLT.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 0) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %conv3) #9, !srcloc !332
  br label %vga_wgfx.exit

vga_wgfx.exit:                                    ; preds = %if.else.i5.i, %if.then.i4.i
  %conv4 = trunc i32 %fg_color to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i.i, label %if.else.i5.i55, label %if.then.i4.i54

if.then.i4.i54:                                   ; preds = %vga_wgfx.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 1) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i2.i.i, i8 %conv4) #9, !srcloc !332
  br label %vga_wgfx.exit56

if.else.i5.i55:                                   ; preds = %vga_wgfx.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 1) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %conv4) #9, !srcloc !332
  br label %vga_wgfx.exit56

vga_wgfx.exit56:                                  ; preds = %if.else.i5.i55, %if.then.i4.i54
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %bits_per_pixel)
  %cmp = icmp sgt i32 %bits_per_pixel, 15
  br i1 %cmp, label %if.then, label %vga_wgfx.exit56.if.end24_crit_edge

vga_wgfx.exit56.if.end24_crit_edge:               ; preds = %vga_wgfx.exit56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then:                                          ; preds = %vga_wgfx.exit56
  %shr = lshr i32 %bg_color, 8
  %conv6 = trunc i32 %shr to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i.i, label %if.else.i5.i61, label %if.then.i4.i60

if.then.i4.i60:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 16) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i2.i.i, i8 %conv6) #9, !srcloc !332
  br label %vga_wgfx.exit62

if.else.i5.i61:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 16) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %conv6) #9, !srcloc !332
  br label %vga_wgfx.exit62

vga_wgfx.exit62:                                  ; preds = %if.else.i5.i61, %if.then.i4.i60
  %shr7 = lshr i32 %fg_color, 8
  %conv8 = trunc i32 %shr7 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i.i, label %if.else.i5.i67, label %if.then.i4.i66

if.then.i4.i66:                                   ; preds = %vga_wgfx.exit62
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 17) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i2.i.i, i8 %conv8) #9, !srcloc !332
  br label %if.end

if.else.i5.i67:                                   ; preds = %vga_wgfx.exit62
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 17) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %conv8) #9, !srcloc !332
  br label %if.end

if.end:                                           ; preds = %if.else.i5.i67, %if.then.i4.i66
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %bits_per_pixel)
  %cmp9 = icmp ugt i32 %bits_per_pixel, 23
  br i1 %cmp9, label %if.then11, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then11:                                        ; preds = %if.end
  %shr12 = lshr i32 %bg_color, 16
  %conv13 = trunc i32 %shr12 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i.i, label %if.else.i5.i73, label %if.then.i4.i72

if.then.i4.i72:                                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 18) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i2.i.i, i8 %conv13) #9, !srcloc !332
  br label %vga_wgfx.exit74

if.else.i5.i73:                                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 18) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %conv13) #9, !srcloc !332
  br label %vga_wgfx.exit74

vga_wgfx.exit74:                                  ; preds = %if.else.i5.i73, %if.then.i4.i72
  %shr14 = lshr i32 %fg_color, 16
  %conv15 = trunc i32 %shr14 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i.i, label %if.else.i5.i79, label %if.then.i4.i78

if.then.i4.i78:                                   ; preds = %vga_wgfx.exit74
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 19) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i2.i.i, i8 %conv15) #9, !srcloc !332
  br label %if.end16

if.else.i5.i79:                                   ; preds = %vga_wgfx.exit74
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 19) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %conv15) #9, !srcloc !332
  br label %if.end16

if.end16:                                         ; preds = %if.else.i5.i79, %if.then.i4.i78
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bits_per_pixel)
  %cmp17 = icmp eq i32 %bits_per_pixel, 32
  br i1 %cmp17, label %if.then19, label %if.end16.if.end24_crit_edge

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then19:                                        ; preds = %if.end16
  %shr20 = lshr i32 %bg_color, 24
  %conv21 = trunc i32 %shr20 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i.i, label %if.else.i5.i85, label %if.then.i4.i84

if.then.i4.i84:                                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 20) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i2.i.i, i8 %conv21) #9, !srcloc !332
  br label %vga_wgfx.exit86

if.else.i5.i85:                                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 20) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %conv21) #9, !srcloc !332
  br label %vga_wgfx.exit86

vga_wgfx.exit86:                                  ; preds = %if.else.i5.i85, %if.then.i4.i84
  %shr22 = lshr i32 %fg_color, 24
  %conv23 = trunc i32 %shr22 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i.i, label %if.else.i5.i91, label %if.then.i4.i90

if.then.i4.i90:                                   ; preds = %vga_wgfx.exit86
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 21) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i2.i.i, i8 %conv23) #9, !srcloc !332
  br label %if.end24

if.else.i5.i91:                                   ; preds = %vga_wgfx.exit86
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 21) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %conv23) #9, !srcloc !332
  br label %if.end24

if.end24:                                         ; preds = %if.else.i5.i91, %if.then.i4.i90, %if.end16.if.end24_crit_edge, %if.end.if.end24_crit_edge, %vga_wgfx.exit56.if.end24_crit_edge
  %op.2 = phi i16 [ 160, %if.end16.if.end24_crit_edge ], [ 176, %if.then.i4.i90 ], [ 176, %if.else.i5.i91 ], [ 144, %if.end.if.end24_crit_edge ], [ 128, %vga_wgfx.exit56.if.end24_crit_edge ]
  %conv = zext i16 %y to i32
  %conv1 = zext i16 %line_length to i32
  %mul = mul nuw i32 %conv1, %conv
  %conv2 = zext i16 %x to i32
  %add = add nuw i32 %mul, %conv2
  %sub = add i16 %width, -1
  %sub28 = add i16 %height, -1
  %conv31 = zext i8 %blitmode to i16
  %or = or i16 %op.2, %conv31
  tail call fastcc void @cirrusfb_set_blitter(ptr noundef %regbase, i16 noundef zeroext %sub, i16 noundef zeroext %sub28, i32 noundef 0, i32 noundef %add, i16 noundef zeroext %or, i16 noundef zeroext %line_length)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cirrusfb_set_blitter(ptr noundef %regbase, i16 noundef zeroext %nwidth, i16 noundef zeroext %nheight, i32 noundef %nsrc, i32 noundef %ndest, i16 noundef zeroext %bltmode, i16 noundef zeroext %line_length) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv1 = trunc i16 %line_length to i8
  %tobool.not.i.i = icmp eq ptr %regbase, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i, label %if.then.i4.i

if.then.i4.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i = getelementptr i8, ptr %regbase, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 36) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i = getelementptr i8, ptr %regbase, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i, i8 %conv1) #9, !srcloc !332
  br label %vga_wgfx.exit

if.else.i5.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 36) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %conv1) #9, !srcloc !332
  br label %vga_wgfx.exit

vga_wgfx.exit:                                    ; preds = %if.else.i5.i, %if.then.i4.i
  %0 = lshr i16 %line_length, 8
  %conv3 = trunc i16 %0 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i64, label %if.then.i4.i63

if.then.i4.i63:                                   ; preds = %vga_wgfx.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i61 = getelementptr i8, ptr %regbase, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i61, i8 37) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i62 = getelementptr i8, ptr %regbase, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i62, i8 %conv3) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i61, i8 38) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i62, i8 %conv1) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i61, i8 39) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i62, i8 %conv3) #9, !srcloc !332
  br label %vga_wgfx.exit77

if.else.i5.i64:                                   ; preds = %vga_wgfx.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 37) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %conv3) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 38) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %conv1) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 39) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %conv3) #9, !srcloc !332
  br label %vga_wgfx.exit77

vga_wgfx.exit77:                                  ; preds = %if.else.i5.i64, %if.then.i4.i63
  %conv12 = trunc i16 %nwidth to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i82, label %if.then.i4.i81

if.then.i4.i81:                                   ; preds = %vga_wgfx.exit77
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i79 = getelementptr i8, ptr %regbase, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i79, i8 32) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i80 = getelementptr i8, ptr %regbase, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i80, i8 %conv12) #9, !srcloc !332
  br label %vga_wgfx.exit83

if.else.i5.i82:                                   ; preds = %vga_wgfx.exit77
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 32) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %conv12) #9, !srcloc !332
  br label %vga_wgfx.exit83

vga_wgfx.exit83:                                  ; preds = %if.else.i5.i82, %if.then.i4.i81
  %1 = lshr i16 %nwidth, 8
  %conv15 = trunc i16 %1 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i88, label %if.then.i4.i87

if.then.i4.i87:                                   ; preds = %vga_wgfx.exit83
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i85 = getelementptr i8, ptr %regbase, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i85, i8 33) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i86 = getelementptr i8, ptr %regbase, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i86, i8 %conv15) #9, !srcloc !332
  br label %vga_wgfx.exit89

if.else.i5.i88:                                   ; preds = %vga_wgfx.exit83
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 33) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %conv15) #9, !srcloc !332
  br label %vga_wgfx.exit89

vga_wgfx.exit89:                                  ; preds = %if.else.i5.i88, %if.then.i4.i87
  %conv18 = trunc i16 %nheight to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i94, label %if.then.i4.i93

if.then.i4.i93:                                   ; preds = %vga_wgfx.exit89
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i91 = getelementptr i8, ptr %regbase, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i91, i8 34) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i92 = getelementptr i8, ptr %regbase, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i92, i8 %conv18) #9, !srcloc !332
  br label %vga_wgfx.exit95

if.else.i5.i94:                                   ; preds = %vga_wgfx.exit89
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 34) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %conv18) #9, !srcloc !332
  br label %vga_wgfx.exit95

vga_wgfx.exit95:                                  ; preds = %if.else.i5.i94, %if.then.i4.i93
  %2 = lshr i16 %nheight, 8
  %conv21 = trunc i16 %2 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i100, label %if.then.i4.i99

if.then.i4.i99:                                   ; preds = %vga_wgfx.exit95
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i97 = getelementptr i8, ptr %regbase, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i97, i8 35) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i98 = getelementptr i8, ptr %regbase, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i98, i8 %conv21) #9, !srcloc !332
  br label %vga_wgfx.exit101

if.else.i5.i100:                                  ; preds = %vga_wgfx.exit95
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 35) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %conv21) #9, !srcloc !332
  br label %vga_wgfx.exit101

vga_wgfx.exit101:                                 ; preds = %if.else.i5.i100, %if.then.i4.i99
  %conv23 = trunc i32 %ndest to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i106, label %if.then.i4.i105

if.then.i4.i105:                                  ; preds = %vga_wgfx.exit101
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i103 = getelementptr i8, ptr %regbase, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i103, i8 40) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i104 = getelementptr i8, ptr %regbase, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i104, i8 %conv23) #9, !srcloc !332
  br label %vga_wgfx.exit107

if.else.i5.i106:                                  ; preds = %vga_wgfx.exit101
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 40) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %conv23) #9, !srcloc !332
  br label %vga_wgfx.exit107

vga_wgfx.exit107:                                 ; preds = %if.else.i5.i106, %if.then.i4.i105
  %shr24 = lshr i32 %ndest, 8
  %conv25 = trunc i32 %shr24 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i112, label %if.then.i4.i111

if.then.i4.i111:                                  ; preds = %vga_wgfx.exit107
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i109 = getelementptr i8, ptr %regbase, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i109, i8 41) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i110 = getelementptr i8, ptr %regbase, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i110, i8 %conv25) #9, !srcloc !332
  br label %vga_wgfx.exit113

if.else.i5.i112:                                  ; preds = %vga_wgfx.exit107
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 41) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %conv25) #9, !srcloc !332
  br label %vga_wgfx.exit113

vga_wgfx.exit113:                                 ; preds = %if.else.i5.i112, %if.then.i4.i111
  %shr26 = lshr i32 %ndest, 16
  %conv27 = trunc i32 %shr26 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i118, label %if.then.i4.i117

if.then.i4.i117:                                  ; preds = %vga_wgfx.exit113
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i115 = getelementptr i8, ptr %regbase, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i115, i8 42) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i116 = getelementptr i8, ptr %regbase, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i116, i8 %conv27) #9, !srcloc !332
  br label %vga_wgfx.exit119

if.else.i5.i118:                                  ; preds = %vga_wgfx.exit113
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 42) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %conv27) #9, !srcloc !332
  br label %vga_wgfx.exit119

vga_wgfx.exit119:                                 ; preds = %if.else.i5.i118, %if.then.i4.i117
  %conv29 = trunc i32 %nsrc to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i124, label %if.then.i4.i123

if.then.i4.i123:                                  ; preds = %vga_wgfx.exit119
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i121 = getelementptr i8, ptr %regbase, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i121, i8 44) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i122 = getelementptr i8, ptr %regbase, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i122, i8 %conv29) #9, !srcloc !332
  br label %vga_wgfx.exit125

if.else.i5.i124:                                  ; preds = %vga_wgfx.exit119
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 44) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %conv29) #9, !srcloc !332
  br label %vga_wgfx.exit125

vga_wgfx.exit125:                                 ; preds = %if.else.i5.i124, %if.then.i4.i123
  %shr30 = lshr i32 %nsrc, 8
  %conv31 = trunc i32 %shr30 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i130, label %if.then.i4.i129

if.then.i4.i129:                                  ; preds = %vga_wgfx.exit125
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i127 = getelementptr i8, ptr %regbase, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i127, i8 45) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i128 = getelementptr i8, ptr %regbase, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i128, i8 %conv31) #9, !srcloc !332
  br label %vga_wgfx.exit131

if.else.i5.i130:                                  ; preds = %vga_wgfx.exit125
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 45) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %conv31) #9, !srcloc !332
  br label %vga_wgfx.exit131

vga_wgfx.exit131:                                 ; preds = %if.else.i5.i130, %if.then.i4.i129
  %shr32 = lshr i32 %nsrc, 16
  %conv33 = trunc i32 %shr32 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i136, label %if.then.i4.i135

if.then.i4.i135:                                  ; preds = %vga_wgfx.exit131
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i133 = getelementptr i8, ptr %regbase, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i133, i8 46) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i134 = getelementptr i8, ptr %regbase, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i134, i8 %conv33) #9, !srcloc !332
  br label %vga_wgfx.exit137

if.else.i5.i136:                                  ; preds = %vga_wgfx.exit131
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 46) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %conv33) #9, !srcloc !332
  br label %vga_wgfx.exit137

vga_wgfx.exit137:                                 ; preds = %if.else.i5.i136, %if.then.i4.i135
  %conv34 = trunc i16 %bltmode to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %if.else.i5.i142, label %if.then.i4.i141

if.then.i4.i141:                                  ; preds = %vga_wgfx.exit137
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i139 = getelementptr i8, ptr %regbase, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i139, i8 48) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %add.ptr.i.i3.i140 = getelementptr i8, ptr %regbase, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i140, i8 %conv34) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i139, i8 50) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i140, i8 13) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i139, i8 49) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i140, i8 2) #9, !srcloc !332
  br label %vga_wgfx.exit155

if.else.i5.i142:                                  ; preds = %vga_wgfx.exit137
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 48) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %conv34) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 50) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 13) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 49) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 2) #9, !srcloc !332
  br label %vga_wgfx.exit155

vga_wgfx.exit155:                                 ; preds = %if.else.i5.i142, %if.then.i4.i141
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cirrusfb_check_pixclock(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %2 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_pixel, align 4
  %shr = lshr i32 %3, 3
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %4 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixclock, align 4
  %div = udiv i32 1000000000, %5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cirrusfb_check_pixclock.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cirrusfb_check_pixclock, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !331

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cirrusfb_check_pixclock.__UNIQUE_ID_ddebug308, ptr noundef %7, ptr noundef nonnull @.str.128, i32 noundef %div) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %btype = getelementptr inbounds %struct.cirrusfb_info, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %btype to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %btype, align 4
  %arrayidx4 = getelementptr [10 x %struct.cirrusfb_board_info_rec], ptr @cirrusfb_board_info, i32 0, i32 %9, i32 1, i32 %shr
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4, align 4
  %multiplexing = getelementptr inbounds %struct.cirrusfb_info, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %multiplexing to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %multiplexing, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %11)
  %cmp = icmp sgt i32 %div, %11
  br i1 %cmp, label %do.end8, label %if.end10

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %device9 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %13 = ptrtoint ptr %device9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.129, i32 noundef %11) #13
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %15 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %16)
  %cmp12 = icmp eq i32 %16, 8
  br i1 %cmp12, label %if.then13, label %if.end10.if.end24_crit_edge

if.end10.if.end24_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then13:                                        ; preds = %if.end10
  %17 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %9, label %if.then13.if.end24_crit_edge [
    i32 6, label %if.then13.sw.bb_crit_edge
    i32 1, label %if.then13.sw.bb_crit_edge55
    i32 5, label %if.then13.sw.bb_crit_edge56
    i32 7, label %sw.bb19
  ]

if.then13.sw.bb_crit_edge56:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then13.sw.bb_crit_edge55:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then13.sw.bb_crit_edge:                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then13.if.end24_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

sw.bb:                                            ; preds = %if.then13.sw.bb_crit_edge, %if.then13.sw.bb_crit_edge55, %if.then13.sw.bb_crit_edge56
  call void @__sanitizer_cov_trace_const_cmp4(i32 11696, i32 %5)
  %cmp15 = icmp ult i32 %5, 11696
  br i1 %cmp15, label %sw.bb.if.end24.sink.split_crit_edge, label %sw.bb.if.end24_crit_edge

sw.bb.if.end24_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

sw.bb.if.end24.sink.split_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.sink.split

sw.bb19:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_const_cmp4(i32 7402, i32 %5)
  %cmp20 = icmp ult i32 %5, 7402
  br i1 %cmp20, label %sw.bb19.if.end24.sink.split_crit_edge, label %sw.bb19.if.end24_crit_edge

sw.bb19.if.end24_crit_edge:                       ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

sw.bb19.if.end24.sink.split_crit_edge:            ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.sink.split

if.end24.sink.split:                              ; preds = %sw.bb19.if.end24.sink.split_crit_edge, %sw.bb.if.end24.sink.split_crit_edge
  %18 = ptrtoint ptr %multiplexing to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %multiplexing, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %sw.bb19.if.end24_crit_edge, %sw.bb.if.end24_crit_edge, %if.then13.if.end24_crit_edge, %if.end10.if.end24_crit_edge
  %doubleVCLK = getelementptr inbounds %struct.cirrusfb_info, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %doubleVCLK to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %doubleVCLK, align 4
  %20 = ptrtoint ptr %btype to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %btype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp26 = icmp eq i32 %21, 1
  br i1 %cmp26, label %land.lhs.true, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end24
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %22 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %smem_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048577, i32 %23)
  %cmp27 = icmp ult i32 %23, 1048577
  br i1 %cmp27, label %land.lhs.true28, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true28:                                  ; preds = %land.lhs.true
  %24 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %25)
  %cmp30 = icmp eq i32 %25, 16
  br i1 %cmp30, label %if.then31, label %land.lhs.true28.cleanup_crit_edge

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then31:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %doubleVCLK to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %doubleVCLK, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %land.lhs.true28.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %do.end8
  %retval.0 = phi i32 [ -22, %do.end8 ], [ 0, %if.then31 ], [ 0, %land.lhs.true28.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cirrusfb_setup(ptr noundef %options) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %options.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %options.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %options, ptr %options.addr, align 4
  %tobool.not = icmp eq ptr %options, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %options, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %while.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %lor.lhs.false
  %call1 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.132) #9
  %cmp.not2 = icmp eq ptr %call1, null
  br i1 %cmp.not2, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call3 = phi ptr [ %call, %while.cond.backedge.while.body_crit_edge ], [ %call1, %while.cond.preheader.while.body_crit_edge ]
  %3 = ptrtoint ptr %call3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %while.body.while.cond.backedge_crit_edge, label %if.end4

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end4:                                          ; preds = %while.body
  %call5 = call i32 @strcmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(8) @.str.133) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  store i8 1, ptr @noaccel, align 1
  br label %while.cond.backedge

if.else:                                          ; preds = %if.end4
  %call8 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(6) @.str.134, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %call3, i32 5
  store ptr %add.ptr, ptr @mode_option, align 4
  br label %while.cond.backedge

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %call3, ptr @mode_option, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else11, %if.then10, %if.then7, %while.body.while.cond.backedge_crit_edge
  %call = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.132) #9
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %while.cond.backedge.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 134)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 134)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !80, !82, !84, !85, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !100, !102, !104, !106, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !166, !168, !169, !171, !172, !174, !175, !177, !178, !179, !181, !182, !184, !185, !187, !188, !190, !191, !193, !194, !195, !197, !198, !200, !201, !203, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !236, !237, !239, !240, !241, !243, !244, !245, !246, !248, !249, !250, !252, !253, !254, !256, !257, !259, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !285, !286, !288, !289, !290, !292, !293, !294, !296, !297, !298, !300, !301, !302, !304, !305, !306, !308, !309, !310, !312, !314, !316, !317, !319, !321}
!llvm.module.flags = !{!322, !323, !324, !325, !326, !327, !328, !329}
!llvm.ident = !{!330}

!0 = !{ptr @__UNIQUE_ID_author347, !1, !"__UNIQUE_ID_author347", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 2353, i32 1}
!2 = !{ptr @__UNIQUE_ID_description348, !3, !"__UNIQUE_ID_description348", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 2354, i32 1}
!4 = !{ptr @__UNIQUE_ID_file349, !5, !"__UNIQUE_ID_file349", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 2355, i32 1}
!6 = !{ptr @__UNIQUE_ID_license350, !5, !"__UNIQUE_ID_license350", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_cirrusfb__351_2388_cirrusfb_init6, !8, !"__initcall__kmod_cirrusfb__351_2388_cirrusfb_init6", i1 false, i1 false}
!8 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 2388, i32 1}
!9 = !{ptr @__param_mode_option, !10, !"__param_mode_option", i1 false, i1 false}
!10 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 2390, i32 1}
!11 = !{ptr @__UNIQUE_ID_mode_optiontype352, !10, !"__UNIQUE_ID_mode_optiontype352", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_mode_option353, !13, !"__UNIQUE_ID_mode_option353", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 2391, i32 1}
!14 = !{ptr @__param_noaccel, !15, !"__param_noaccel", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 2392, i32 1}
!16 = !{ptr @__UNIQUE_ID_noacceltype354, !15, !"__UNIQUE_ID_noacceltype354", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_noaccel355, !18, !"__UNIQUE_ID_noaccel355", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 2393, i32 1}
!19 = !{ptr @noaccel, !20, !"noaccel", i1 false, i1 false}
!20 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 368, i32 13}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 2183, i32 11}
!23 = !{ptr @cirrusfb_pci_driver, !24, !"cirrusfb_pci_driver", i1 false, i1 false}
!24 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 2182, i32 26}
!25 = !{ptr @cirrusfb_pci_table, !26, !"cirrusfb_pci_table", i1 false, i1 false}
!26 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 257, i32 29}
!27 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 2090, i32 3}
!29 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @cirrusfb_pci_register._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @cirrusfb_pci_register._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 2103, i32 2}
!35 = !{ptr @cirrusfb_pci_register.__UNIQUE_ID_ddebug343, !34, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!36 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 2106, i32 2}
!38 = !{ptr @cirrusfb_pci_register.__UNIQUE_ID_ddebug344, !37, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 2109, i32 2}
!41 = !{ptr @cirrusfb_pci_register.__UNIQUE_ID_ddebug345, !40, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!42 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 2116, i32 2}
!44 = !{ptr @cirrusfb_pci_register.__UNIQUE_ID_ddebug346, !43, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!45 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 2124, i32 3}
!47 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @cirrusfb_pci_register._entry.8, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @cirrusfb_pci_register._entry_ptr.12, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 2149, i32 2}
!53 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @cirrusfb_pci_register._entry.13, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @cirrusfb_pci_register._entry_ptr.16, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 1906, i32 2}
!58 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @get_pci_addrs._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @get_pci_addrs._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @get_pci_addrs._entry.20, !63, !"_entry", i1 false, i1 false}
!63 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 1907, i32 2}
!64 = !{ptr @get_pci_addrs._entry_ptr.21, !63, !"_entry_ptr", i1 false, i1 false}
!65 = distinct !{null, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @get_pci_addrs._entry.23, !67, !"_entry", i1 false, i1 false}
!67 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 1908, i32 2}
!68 = !{ptr @get_pci_addrs._entry_ptr.24, !67, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @get_pci_addrs._entry.26, !71, !"_entry", i1 false, i1 false}
!71 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 1923, i32 2}
!72 = !{ptr @get_pci_addrs._entry_ptr.27, !71, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 1889, i32 4}
!76 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @cirrusfb_get_memsize._entry, !75, !"_entry", i1 false, i1 false}
!79 = !{ptr @cirrusfb_get_memsize._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!80 = distinct !{null, !81, !"release_io_ports", i1 false, i1 false}
!81 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 1857, i32 12}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 2029, i32 2}
!84 = !{ptr @cirrusfb_register._entry, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @cirrusfb_register._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 2034, i32 2}
!89 = !{ptr @cirrusfb_register.__UNIQUE_ID_ddebug339, !88, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 2038, i32 3}
!92 = !{ptr @cirrusfb_register.__UNIQUE_ID_ddebug340, !91, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!93 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 2048, i32 3}
!95 = !{ptr @cirrusfb_register.__UNIQUE_ID_ddebug341, !94, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 2055, i32 3}
!98 = !{ptr @cirrusfb_register._entry.37, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @cirrusfb_register._entry_ptr.39, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @cirrusfb_ops, !101, !"cirrusfb_ops", i1 false, i1 false}
!101 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 1959, i32 28}
!102 = !{ptr @opencount, !103, !"opencount", i1 false, i1 false}
!103 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 425, i32 12}
!104 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 672, i32 2}
!106 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug311, !105, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!108 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 751, i32 2}
!110 = !{ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug312, !109, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!111 = !{ptr @.str.43, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 754, i32 2}
!113 = !{ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug313, !112, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 757, i32 2}
!116 = !{ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug314, !115, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!117 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 761, i32 2}
!119 = !{ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug315, !118, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!120 = !{ptr @.str.46, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 765, i32 2}
!122 = !{ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug316, !121, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!123 = !{ptr @.str.47, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 771, i32 2}
!125 = !{ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug317, !124, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!126 = !{ptr @.str.48, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 774, i32 2}
!128 = !{ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug318, !127, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!129 = !{ptr @.str.49, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 792, i32 2}
!131 = !{ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug319, !130, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!132 = !{ptr @.str.50, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 800, i32 2}
!134 = !{ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug320, !133, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!135 = !{ptr @.str.51, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 803, i32 2}
!137 = !{ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug321, !136, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!138 = !{ptr @.str.52, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 806, i32 2}
!140 = !{ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug322, !139, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!141 = !{ptr @.str.53, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 809, i32 2}
!143 = !{ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug323, !142, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!144 = !{ptr @.str.54, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 812, i32 2}
!146 = !{ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug324, !145, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!147 = !{ptr @.str.55, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 815, i32 2}
!149 = !{ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug325, !148, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!150 = !{ptr @.str.56, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 818, i32 2}
!152 = !{ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug326, !151, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!153 = !{ptr @.str.57, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 833, i32 2}
!155 = !{ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug327, !154, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!156 = !{ptr @.str.58, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 847, i32 2}
!158 = !{ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug328, !157, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!159 = !{ptr @.str.59, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 941, i32 3}
!161 = !{ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug329, !160, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!162 = !{ptr @.str.60, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 965, i32 4}
!164 = !{ptr @cirrusfb_set_par_foo._entry, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @cirrusfb_set_par_foo._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @cirrusfb_set_par_foo._entry.61, !167, !"_entry", i1 false, i1 false}
!167 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 993, i32 4}
!168 = !{ptr @cirrusfb_set_par_foo._entry_ptr.62, !167, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.63, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 1018, i32 3}
!171 = !{ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug330, !170, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!172 = !{ptr @cirrusfb_set_par_foo._entry.64, !173, !"_entry", i1 false, i1 false}
!173 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 1040, i32 4}
!174 = !{ptr @cirrusfb_set_par_foo._entry_ptr.65, !173, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.67, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 1066, i32 4}
!177 = !{ptr @cirrusfb_set_par_foo._entry.66, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @cirrusfb_set_par_foo._entry_ptr.68, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.69, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 1087, i32 3}
!181 = !{ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug331, !180, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!182 = !{ptr @cirrusfb_set_par_foo._entry.70, !183, !"_entry", i1 false, i1 false}
!183 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 1125, i32 4}
!184 = !{ptr @cirrusfb_set_par_foo._entry_ptr.71, !183, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.72, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 1146, i32 3}
!187 = !{ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug332, !186, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!188 = !{ptr @cirrusfb_set_par_foo._entry.73, !189, !"_entry", i1 false, i1 false}
!189 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 1183, i32 4}
!190 = !{ptr @cirrusfb_set_par_foo._entry_ptr.74, !189, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.76, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 1200, i32 3}
!193 = !{ptr @cirrusfb_set_par_foo._entry.75, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @cirrusfb_set_par_foo._entry_ptr.77, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.78, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 1233, i32 3}
!197 = !{ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug333, !196, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!198 = !{ptr @.str.79, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 1259, i32 2}
!200 = !{ptr @cirrusfb_set_par_foo.__UNIQUE_ID_ddebug334, !199, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!201 = !{ptr @.str.80, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 1451, i32 2}
!203 = !{ptr @init_vgachip._entry, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @init_vgachip._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.81, !202, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.83, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 1496, i32 3}
!208 = !{ptr @init_vgachip._entry.82, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @init_vgachip._entry_ptr.84, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @init_vgachip._entry.85, !211, !"_entry", i1 false, i1 false}
!211 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 1501, i32 2}
!212 = !{ptr @init_vgachip._entry_ptr.86, !211, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.87, !211, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.88, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 2741, i32 2}
!216 = !{ptr @bestclock._entry, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @bestclock._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!218 = distinct !{null, !215, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @bestclock._entry.90, !220, !"_entry", i1 false, i1 false}
!220 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 2742, i32 2}
!221 = !{ptr @bestclock._entry_ptr.91, !220, !"_entry_ptr", i1 false, i1 false}
!222 = distinct !{null, !220, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @bestclock._entry.93, !224, !"_entry", i1 false, i1 false}
!224 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 2743, i32 2}
!225 = !{ptr @bestclock._entry_ptr.94, !224, !"_entry_ptr", i1 false, i1 false}
!226 = distinct !{null, !224, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.96, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 455, i32 2}
!229 = !{ptr @.str.97, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @cirrusfb_check_mclk.__UNIQUE_ID_ddebug305, !228, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!231 = !{ptr @.str.98, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 462, i32 3}
!233 = !{ptr @cirrusfb_check_mclk.__UNIQUE_ID_ddebug306, !232, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!234 = !{ptr @.str.99, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 465, i32 3}
!236 = !{ptr @cirrusfb_check_mclk.__UNIQUE_ID_ddebug307, !235, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!237 = !{ptr @.str.100, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 637, i32 2}
!239 = !{ptr @cirrusfb_set_mclk_as_source._entry, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @cirrusfb_set_mclk_as_source._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.101, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 641, i32 3}
!243 = !{ptr @cirrusfb_set_mclk_as_source.__UNIQUE_ID_ddebug310, !242, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!244 = !{ptr @.str.102, !242, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.103, !242, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @.str.104, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 2442, i32 2}
!248 = !{ptr @AttrOn._entry, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @AttrOn._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.105, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 1394, i32 2}
!252 = !{ptr @.str.106, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @cirrusfb_blank.__UNIQUE_ID_ddebug335, !251, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!254 = !{ptr @.str.107, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 1398, i32 3}
!256 = !{ptr @cirrusfb_blank.__UNIQUE_ID_ddebug336, !255, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!257 = !{ptr @.str.108, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 1429, i32 3}
!259 = !{ptr @cirrusfb_blank.__UNIQUE_ID_ddebug337, !258, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!260 = !{ptr @cirrusfb_blank.__UNIQUE_ID_ddebug338, !261, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!261 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 1436, i32 2}
!262 = !{ptr @.str.109, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 129, i32 13}
!264 = !{ptr @.str.110, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 146, i32 13}
!266 = !{ptr @.str.111, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 160, i32 13}
!268 = !{ptr @.str.112, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 174, i32 13}
!270 = !{ptr @.str.113, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 188, i32 13}
!272 = !{ptr @.str.114, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 203, i32 13}
!274 = !{ptr @.str.115, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 219, i32 13}
!276 = !{ptr @.str.116, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 232, i32 13}
!278 = !{ptr @.str.117, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 242, i32 13}
!280 = !{ptr @cirrusfb_board_info, !281, !"cirrusfb_board_info", i1 false, i1 false}
!281 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 127, i32 3}
!282 = !{ptr @.str.118, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 571, i32 3}
!284 = !{ptr @.str.119, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @cirrusfb_check_var.__UNIQUE_ID_ddebug309, !283, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!286 = !{ptr @.str.120, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 583, i32 3}
!288 = !{ptr @cirrusfb_check_var._entry, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @cirrusfb_check_var._entry_ptr, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.122, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 591, i32 3}
!292 = !{ptr @cirrusfb_check_var._entry.121, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @cirrusfb_check_var._entry_ptr.123, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.125, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 618, i32 3}
!296 = !{ptr @cirrusfb_check_var._entry.124, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @cirrusfb_check_var._entry_ptr.126, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.127, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 483, i32 2}
!300 = !{ptr @.str.128, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @cirrusfb_check_pixclock.__UNIQUE_ID_ddebug308, !299, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!302 = !{ptr @.str.129, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 491, i32 3}
!304 = !{ptr @cirrusfb_check_pixclock._entry, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @cirrusfb_check_pixclock._entry_ptr, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.130, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 2074, i32 2}
!308 = !{ptr @.str.131, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @cirrusfb_cleanup.__UNIQUE_ID_ddebug342, !307, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!310 = !{ptr @.str.132, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 2334, i32 38}
!312 = !{ptr @.str.133, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 2338, i32 25}
!314 = !{ptr @.str.134, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 2340, i32 31}
!316 = !{ptr @__param_str_mode_option, !10, !"__param_str_mode_option", i1 false, i1 false}
!317 = !{ptr @.str.135, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 369, i32 28}
!319 = !{ptr @mode_option, !320, !"mode_option", i1 false, i1 false}
!320 = !{!"../drivers/video/fbdev/cirrusfb.c", i32 369, i32 14}
!321 = !{ptr @__param_str_noaccel, !15, !"__param_str_noaccel", i1 false, i1 false}
!322 = !{i32 1, !"wchar_size", i32 2}
!323 = !{i32 1, !"min_enum_size", i32 4}
!324 = !{i32 8, !"branch-target-enforcement", i32 0}
!325 = !{i32 8, !"sign-return-address", i32 0}
!326 = !{i32 8, !"sign-return-address-all", i32 0}
!327 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!328 = !{i32 7, !"uwtable", i32 1}
!329 = !{i32 7, !"frame-pointer", i32 2}
!330 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!331 = !{i64 2149028463, i64 2149028468, i64 2149028481, i64 2149028525, i64 2149028559, i64 2149028580}
!332 = !{i64 6246335}
!333 = !{i64 6246730}
!334 = !{i64 2156284424}
!335 = !{i64 2153780406}
!336 = !{i8 0, i8 2}
!337 = !{i64 2156284804}
!338 = !{i64 2153782391}
!339 = !{i64 2156483623}
!340 = !{i64 2156483465}
!341 = !{i64 2156420033}
!342 = !{i64 2156419875}
!343 = !{i64 6246950}
!344 = !{i64 6246112}
!345 = !{i64 6245912}
!346 = !{i64 6246532}
