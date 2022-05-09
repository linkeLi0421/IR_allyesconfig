; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/sstfb.c_pt.bc'
source_filename = "../drivers/video/fbdev/sstfb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sst_spec = type { ptr, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dac_switch = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.84, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.84 = type { ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.85, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.85 = type { ptr }
%struct.sstfb_par = type { [16 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.pll_timing, i32, ptr, %struct.dac_switch, ptr, i32, i8, i8 }
%struct.pll_timing = type { i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__initcall__kmod_sstfb__305_1514_sstfb_init6 = internal global ptr @sstfb_init, section ".initcall6.init", align 4
@__exitcall_sstfb_exit = internal global ptr @sstfb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author306 = internal constant [63 x i8] c"sstfb.author=(c) 2000,2002 Ghozlane Toumi <gtoumi@laposte.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description307 = internal constant [87 x i8] c"sstfb.description=FBDev driver for 3dfx Voodoo Graphics and Voodoo2 based video boards\00", section ".modinfo", align 1
@__UNIQUE_ID_file308 = internal constant [37 x i8] c"sstfb.file=drivers/video/fbdev/sstfb\00", section ".modinfo", align 1
@__UNIQUE_ID_license309 = internal constant [18 x i8] c"sstfb.license=GPL\00", section ".modinfo", align 1
@__param_str_mem = internal constant [10 x i8] c"sstfb.mem\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@mem = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_mem = internal constant %struct.kernel_param { ptr @__param_str_mem, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @mem } }, section "__param", align 4
@__UNIQUE_ID_memtype310 = internal constant [23 x i8] c"sstfb.parmtype=mem:int\00", section ".modinfo", align 1
@__UNIQUE_ID_mem311 = internal constant [82 x i8] c"sstfb.parm=mem:Size of frame buffer memory in MB (1, 2, 4 MB, default=autodetect)\00", section ".modinfo", align 1
@__param_str_vgapass = internal constant [14 x i8] c"sstfb.vgapass\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@vgapass = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_vgapass = internal constant %struct.kernel_param { ptr @__param_str_vgapass, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @vgapass } }, section "__param", align 4
@__UNIQUE_ID_vgapasstype312 = internal constant [28 x i8] c"sstfb.parmtype=vgapass:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_vgapass313 = internal constant [68 x i8] c"sstfb.parm=vgapass:Enable VGA PassThrough mode (0 or 1) (default=0)\00", section ".modinfo", align 1
@__param_str_clipping = internal constant [15 x i8] c"sstfb.clipping\00", align 1
@clipping = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_clipping = internal constant %struct.kernel_param { ptr @__param_str_clipping, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @clipping } }, section "__param", align 4
@__UNIQUE_ID_clippingtype314 = internal constant [29 x i8] c"sstfb.parmtype=clipping:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_clipping315 = internal constant [73 x i8] c"sstfb.parm=clipping:Enable clipping (slower, safer) (0 or 1) (default=1)\00", section ".modinfo", align 1
@__param_str_gfxclk = internal constant [13 x i8] c"sstfb.gfxclk\00", align 1
@gfxclk = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_gfxclk = internal constant %struct.kernel_param { ptr @__param_str_gfxclk, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @gfxclk } }, section "__param", align 4
@__UNIQUE_ID_gfxclktype316 = internal constant [26 x i8] c"sstfb.parmtype=gfxclk:int\00", section ".modinfo", align 1
@__UNIQUE_ID_gfxclk317 = internal constant [81 x i8] c"sstfb.parm=gfxclk:Force graphic chip frequency in MHz. DANGEROUS. (default=auto)\00", section ".modinfo", align 1
@__param_str_slowpci = internal constant [14 x i8] c"sstfb.slowpci\00", align 1
@slowpci = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_slowpci = internal constant %struct.kernel_param { ptr @__param_str_slowpci, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @slowpci } }, section "__param", align 4
@__UNIQUE_ID_slowpcitype318 = internal constant [28 x i8] c"sstfb.parmtype=slowpci:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_slowpci319 = internal constant [63 x i8] c"sstfb.parm=slowpci:Uses slow PCI settings (0 or 1) (default=0)\00", section ".modinfo", align 1
@__param_str_mode_option = internal constant [18 x i8] c"sstfb.mode_option\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@mode_option = internal global { ptr, [28 x i8] } { ptr @.str.99, [28 x i8] zeroinitializer }, align 32
@__param_mode_option = internal constant %struct.kernel_param { ptr @__param_str_mode_option, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @mode_option } }, section "__param", align 4
@__UNIQUE_ID_mode_optiontype320 = internal constant [33 x i8] c"sstfb.parmtype=mode_option:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_mode_option321 = internal constant [63 x i8] c"sstfb.parm=mode_option:Initial video mode (default=640x480@60)\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sstfb\00", [26 x i8] zeroinitializer }, align 32
@sstfb_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @sstfb_id_tbl, ptr @sstfb_probe, ptr @sstfb_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vganopass\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vgapass\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clipping\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"noclipping\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fastpci\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"slowpci\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mem:\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gfxclk:\00", [24 x i8] zeroinitializer }, align 32
@sstfb_id_tbl = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4634, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4634, i32 2, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@sstfb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 1331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013cannot enable device\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sstfb_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/video/fbdev/sstfb.c\00", [36 x i8] zeroinitializer }, align 32
@sstfb_probe._entry_ptr = internal global ptr @sstfb_probe._entry, section ".printk_index", align 4
@voodoo_spec = internal constant { [2 x %struct.sst_spec], [40 x i8] } { [2 x %struct.sst_spec] [%struct.sst_spec { ptr @.str.54, i32 50000, i32 60 }, %struct.sst_spec { ptr @.str.55, i32 75000, i32 85 }], [40 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sstfb MMIO\00", [21 x i8] zeroinitializer }, align 32
@sstfb_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.11, ptr @.str.12, i32 1357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013sstfb: cannot reserve mmio memory\0A\00", [59 x i8] zeroinitializer }, align 32
@sstfb_probe._entry_ptr.16 = internal global ptr @sstfb_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sstfb FB\00", [23 x i8] zeroinitializer }, align 32
@sstfb_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.12, i32 1362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013sstfb: cannot reserve fb memory\0A\00", [61 x i8] zeroinitializer }, align 32
@sstfb_probe._entry_ptr.20 = internal global ptr @sstfb_probe._entry.18, section ".printk_index", align 4
@sstfb_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.11, ptr @.str.12, i32 1370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013sstfb: cannot remap register area %#lx\0A\00", [54 x i8] zeroinitializer }, align 32
@sstfb_probe._entry_ptr.23 = internal global ptr @sstfb_probe._entry.21, section ".printk_index", align 4
@sstfb_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.11, ptr @.str.12, i32 1376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013sstfb: cannot remap framebuffer %#lx\0A\00", [56 x i8] zeroinitializer }, align 32
@sstfb_probe._entry_ptr.26 = internal global ptr @sstfb_probe._entry.24, section ".printk_index", align 4
@sstfb_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.11, ptr @.str.12, i32 1381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013sstfb: Init failed\0A\00", [42 x i8] zeroinitializer }, align 32
@sstfb_probe._entry_ptr.29 = internal global ptr @sstfb_probe._entry.27, section ".printk_index", align 4
@sstfb_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.11, ptr @.str.12, i32 1388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s (revision %d) with %s dac\0A\00", [32 x i8] zeroinitializer }, align 32
@sstfb_probe._entry_ptr.32 = internal global ptr @sstfb_probe._entry.30, section ".printk_index", align 4
@sstfb_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.11, ptr @.str.12, i32 1391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016framebuffer at %#lx, mapped to 0x%p, size %dMB\0A\00", [46 x i8] zeroinitializer }, align 32
@sstfb_probe._entry_ptr.35 = internal global ptr @sstfb_probe._entry.33, section ".printk_index", align 4
@sstfb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sstfb_check_var, ptr @sstfb_set_par, ptr @sstfb_setcolreg, ptr null, ptr null, ptr null, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr null, ptr null, ptr @sstfb_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sstfb_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.11, ptr @.str.12, i32 1414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013sstfb: invalid video mode.\0A\00", [34 x i8] zeroinitializer }, align 32
@sstfb_probe._entry_ptr.38 = internal global ptr @sstfb_probe._entry.36, section ".printk_index", align 4
@sstfb_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.11, ptr @.str.12, i32 1419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013sstfb: can't set default video mode.\0A\00", [56 x i8] zeroinitializer }, align 32
@sstfb_probe._entry_ptr.41 = internal global ptr @sstfb_probe._entry.39, section ".printk_index", align 4
@sstfb_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.11, ptr @.str.12, i32 1424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013sstfb: can't alloc cmap memory.\0A\00", [61 x i8] zeroinitializer }, align 32
@sstfb_probe._entry_ptr.44 = internal global ptr @sstfb_probe._entry.42, section ".printk_index", align 4
@sstfb_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.11, ptr @.str.12, i32 1431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013sstfb: can't register framebuffer.\0A\00", [58 x i8] zeroinitializer }, align 32
@sstfb_probe._entry_ptr.47 = internal global ptr @sstfb_probe._entry.45, section ".printk_index", align 4
@device_attrs = internal global { [1 x %struct.device_attribute], [36 x i8] } { [1 x %struct.device_attribute] [%struct.device_attribute { %struct.attribute { ptr @.str.3, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_vgapass, ptr @store_vgapass }], [36 x i8] zeroinitializer }, align 32
@sstfb_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.11, ptr @.str.12, i32 1438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014sstfb: can't create sysfs entry.\0A\00", [60 x i8] zeroinitializer }, align 32
@sstfb_probe._entry_ptr.50 = internal global ptr @sstfb_probe._entry.48, section ".printk_index", align 4
@sstfb_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.11, ptr @.str.12, i32 1442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016fb%d: %s frame buffer device at 0x%p\0A\00", [56 x i8] zeroinitializer }, align 32
@sstfb_probe._entry_ptr.53 = internal global ptr @sstfb_probe._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Voodoo Graphics\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Voodoo2\00", [24 x i8] zeroinitializer }, align 32
@sst_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.12, i32 1186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013sstfb: unknown dac type.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sst_init\00", [23 x i8] zeroinitializer }, align 32
@sst_init._entry_ptr = internal global ptr @sst_init._entry, section ".printk_index", align 4
@sst_init._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.12, i32 1194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016sstfb: Using supplied graphic freq : %dMHz\0A\00", [50 x i8] zeroinitializer }, align 32
@sst_init._entry_ptr.60 = internal global ptr @sst_init._entry.58, section ".printk_index", align 4
@sst_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.12, i32 1197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014sstfb: %dMhz is way out of spec! Using default\0A\00", [46 x i8] zeroinitializer }, align 32
@sst_init._entry_ptr.63 = internal global ptr @sst_init._entry.61, section ".printk_index", align 4
@dacs = internal constant { [3 x %struct.dac_switch], [48 x i8] } { [3 x %struct.dac_switch] [%struct.dac_switch { ptr @.str.64, ptr @sst_detect_ti, ptr @sst_set_pll_att_ti, ptr @sst_set_vidmod_att_ti }, %struct.dac_switch { ptr @.str.65, ptr @sst_detect_att, ptr @sst_set_pll_att_ti, ptr @sst_set_vidmod_att_ti }, %struct.dac_switch { ptr @.str.66, ptr @sst_detect_ics, ptr @sst_set_pll_ics, ptr @sst_set_vidmod_ics }], [48 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TI TVP3409\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AT&T ATT20C409\00", [17 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ICS ICS5342\00", [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sst_get_memsize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.12, i32 833, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016supplied memsize: %#x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sst_get_memsize\00", [16 x i8] zeroinitializer }, align 32
@sst_get_memsize._entry_ptr = internal global ptr @sst_get_memsize._entry, section ".printk_index", align 4
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@sstfb_setvgapass._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.12, i32 710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016fb%d: Enabling VGA pass-through\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sstfb_setvgapass\00", [47 x i8] zeroinitializer }, align 32
@sstfb_setvgapass._entry_ptr = internal global ptr @sstfb_setvgapass._entry, section ".printk_index", align 4
@sstfb_setvgapass._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.12, i32 713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016fb%d: Disabling VGA pass-through\0A\00", [60 x i8] zeroinitializer }, align 32
@sstfb_setvgapass._entry_ptr.76 = internal global ptr @sstfb_setvgapass._entry.74, section ".printk_index", align 4
@sstfb_check_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.12, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013sstfb: Pixclock at %ld KHZ out of range\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sstfb_check_var\00", [16 x i8] zeroinitializer }, align 32
@sstfb_check_var._entry_ptr = internal global ptr @sstfb_check_var._entry, section ".printk_index", align 4
@sstfb_check_var._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.12, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013sstfb: Unsupported bpp %d\0A\00", [35 x i8] zeroinitializer }, align 32
@sstfb_check_var._entry_ptr.81 = internal global ptr @sstfb_check_var._entry.79, section ".printk_index", align 4
@sstfb_check_var._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str.12, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013sstfb: Unsupported resolution %dx%d\0A\00", [57 x i8] zeroinitializer }, align 32
@sstfb_check_var._entry_ptr.84 = internal global ptr @sstfb_check_var._entry.82, section ".printk_index", align 4
@sstfb_check_var._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.78, ptr @.str.12, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013sstfb: Unsupported timings\0A\00", [34 x i8] zeroinitializer }, align 32
@sstfb_check_var._entry_ptr.87 = internal global ptr @sstfb_check_var._entry.85, section ".printk_index", align 4
@sstfb_check_var._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.78, ptr @.str.12, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013sstfb: Interlace/doublescan not supported %#x\0A\00", [47 x i8] zeroinitializer }, align 32
@sstfb_check_var._entry_ptr.90 = internal global ptr @sstfb_check_var._entry.88, section ".printk_index", align 4
@sstfb_check_var._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str.12, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sstfb_check_var._entry_ptr.92 = internal global ptr @sstfb_check_var._entry.91, section ".printk_index", align 4
@sstfb_check_var._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.78, ptr @.str.12, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sstfb_check_var._entry_ptr.94 = internal global ptr @sstfb_check_var._entry.93, section ".printk_index", align 4
@sstfb_check_var._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.78, ptr @.str.12, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013sstfb: Not enough video memory\0A\00", [62 x i8] zeroinitializer }, align 32
@sstfb_check_var._entry_ptr.97 = internal global ptr @sstfb_check_var._entry.95, section ".printk_index", align 4
@.str.98 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"640x480@60\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 1074022109, i64 2147763933]
@___asan_gen_.102 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 98, i32 12 }
@___asan_gen_.105 = private unnamed_addr constant [8 x i8] c"vgapass\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 97, i32 13 }
@___asan_gen_.108 = private unnamed_addr constant [9 x i8] c"clipping\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 99, i32 13 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"gfxclk\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 100, i32 12 }
@___asan_gen_.114 = private unnamed_addr constant [8 x i8] c"slowpci\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 101, i32 13 }
@___asan_gen_.117 = private unnamed_addr constant [12 x i8] c"mode_option\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 108, i32 14 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1501, i32 21 }
@___asan_gen_.123 = private unnamed_addr constant [13 x i8] c"sstfb_driver\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1489, i32 26 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1282, i32 38 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1287, i32 25 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1289, i32 30 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1291, i32 30 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1293, i32 30 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1295, i32 30 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1297, i32 30 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1299, i32 31 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1301, i32 31 }
@___asan_gen_.153 = private unnamed_addr constant [13 x i8] c"sstfb_id_tbl\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1481, i32 35 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1331, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [12 x i8] c"voodoo_spec\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 117, i32 24 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1356, i32 7 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1357, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1361, i32 7 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1362, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1369, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1375, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1381, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1387, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1389, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant [10 x i8] c"sstfb_ops\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1310, i32 28 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1414, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1419, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1424, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1431, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant [13 x i8] c"device_attrs\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 739, i32 32 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1438, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1441, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 118, i32 12 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 119, i32 12 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1186, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1194, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1197, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant [5 x i8] c"dacs\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1109, i32 26 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1110, i32 13 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1115, i32 13 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1119, i32 13 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 833, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 156, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 710, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 713, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 362, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 382, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 398, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 407, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 415, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 420, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 428, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 439, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 736, i32 22 }
@___asan_gen_.375 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.376 = private constant [31 x i8] c"../drivers/video/fbdev/sstfb.c\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 108, i32 28 }
@llvm.compiler.used = appending global [144 x ptr] [ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_clipping315, ptr @__UNIQUE_ID_clippingtype314, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_gfxclk317, ptr @__UNIQUE_ID_gfxclktype316, ptr @__UNIQUE_ID_license309, ptr @__UNIQUE_ID_mem311, ptr @__UNIQUE_ID_memtype310, ptr @__UNIQUE_ID_mode_option321, ptr @__UNIQUE_ID_mode_optiontype320, ptr @__UNIQUE_ID_slowpci319, ptr @__UNIQUE_ID_slowpcitype318, ptr @__UNIQUE_ID_vgapass313, ptr @__UNIQUE_ID_vgapasstype312, ptr @__exitcall_sstfb_exit, ptr @__initcall__kmod_sstfb__305_1514_sstfb_init6, ptr @__param_clipping, ptr @__param_gfxclk, ptr @__param_mem, ptr @__param_mode_option, ptr @__param_slowpci, ptr @__param_vgapass, ptr @sst_get_memsize._entry, ptr @sst_get_memsize._entry_ptr, ptr @sst_init._entry, ptr @sst_init._entry.58, ptr @sst_init._entry.61, ptr @sst_init._entry_ptr, ptr @sst_init._entry_ptr.60, ptr @sst_init._entry_ptr.63, ptr @sstfb_check_var._entry, ptr @sstfb_check_var._entry.79, ptr @sstfb_check_var._entry.82, ptr @sstfb_check_var._entry.85, ptr @sstfb_check_var._entry.88, ptr @sstfb_check_var._entry.91, ptr @sstfb_check_var._entry.93, ptr @sstfb_check_var._entry.95, ptr @sstfb_check_var._entry_ptr, ptr @sstfb_check_var._entry_ptr.81, ptr @sstfb_check_var._entry_ptr.84, ptr @sstfb_check_var._entry_ptr.87, ptr @sstfb_check_var._entry_ptr.90, ptr @sstfb_check_var._entry_ptr.92, ptr @sstfb_check_var._entry_ptr.94, ptr @sstfb_check_var._entry_ptr.97, ptr @sstfb_probe._entry, ptr @sstfb_probe._entry.14, ptr @sstfb_probe._entry.18, ptr @sstfb_probe._entry.21, ptr @sstfb_probe._entry.24, ptr @sstfb_probe._entry.27, ptr @sstfb_probe._entry.30, ptr @sstfb_probe._entry.33, ptr @sstfb_probe._entry.36, ptr @sstfb_probe._entry.39, ptr @sstfb_probe._entry.42, ptr @sstfb_probe._entry.45, ptr @sstfb_probe._entry.48, ptr @sstfb_probe._entry.51, ptr @sstfb_probe._entry_ptr, ptr @sstfb_probe._entry_ptr.16, ptr @sstfb_probe._entry_ptr.20, ptr @sstfb_probe._entry_ptr.23, ptr @sstfb_probe._entry_ptr.26, ptr @sstfb_probe._entry_ptr.29, ptr @sstfb_probe._entry_ptr.32, ptr @sstfb_probe._entry_ptr.35, ptr @sstfb_probe._entry_ptr.38, ptr @sstfb_probe._entry_ptr.41, ptr @sstfb_probe._entry_ptr.44, ptr @sstfb_probe._entry_ptr.47, ptr @sstfb_probe._entry_ptr.50, ptr @sstfb_probe._entry_ptr.53, ptr @sstfb_setvgapass._entry, ptr @sstfb_setvgapass._entry.74, ptr @sstfb_setvgapass._entry_ptr, ptr @sstfb_setvgapass._entry_ptr.76, ptr @mem, ptr @vgapass, ptr @clipping, ptr @gfxclk, ptr @slowpci, ptr @mode_option, ptr @.str, ptr @sstfb_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @sstfb_id_tbl, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @voodoo_spec, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @sstfb_ops, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @device_attrs, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @dacs, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.96, ptr @.str.98, ptr @.str.99], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vgapass to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clipping to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfxclk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slowpci to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_option to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sstfb_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sstfb_id_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sstfb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voodoo_spec to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sstfb_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sstfb_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sstfb_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sstfb_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sstfb_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sstfb_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sstfb_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sstfb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sstfb_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sstfb_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sstfb_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sstfb_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_attrs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sstfb_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sstfb_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sst_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sst_init._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sst_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dacs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sst_get_memsize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sstfb_setvgapass._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sstfb_setvgapass._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sstfb_check_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sstfb_check_var._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sstfb_check_var._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sstfb_check_var._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sstfb_check_var._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sstfb_check_var._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sstfb_check_var._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sstfb_check_var._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sstfb_init() #0 align 64 {
entry:
  %options.addr.i = alloca ptr, align 4
  %option = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #11
  %0 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %option, align 4
  %call = call i32 @fb_get_options(ptr noundef nonnull @.str, ptr noundef nonnull %option) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %option, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %options.addr.i)
  %3 = ptrtoint ptr %options.addr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %options.addr.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.sstfb_setup.exit_crit_edge, label %lor.lhs.false.i

if.end.sstfb_setup.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sstfb_setup.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.sstfb_setup.exit_crit_edge, label %while.cond.preheader.i

lor.lhs.false.i.sstfb_setup.exit_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sstfb_setup.exit

while.cond.preheader.i:                           ; preds = %lor.lhs.false.i
  %call1.i = call ptr @strsep(ptr noundef nonnull %options.addr.i, ptr noundef nonnull @.str.1) #11
  %cmp.not2.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not2.i, label %while.cond.preheader.i.sstfb_setup.exit_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.sstfb_setup.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sstfb_setup.exit

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %call3.i = phi ptr [ %call.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ %call1.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %6 = ptrtoint ptr %call3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %call3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not.i = icmp eq i8 %7, 0
  br i1 %tobool2.not.i, label %while.body.i.while.cond.backedge.i_crit_edge, label %if.end4.i

while.body.i.while.cond.backedge.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge.i

if.end4.i:                                        ; preds = %while.body.i
  %call5.i = call i32 @strcmp(ptr noundef nonnull %call3.i, ptr noundef nonnull dereferenceable(10) @.str.2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  store i8 0, ptr @vgapass, align 1
  br label %while.cond.backedge.i

if.else.i:                                        ; preds = %if.end4.i
  %call8.i = call i32 @strcmp(ptr noundef nonnull %call3.i, ptr noundef nonnull dereferenceable(8) @.str.3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.else11.i

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  store i8 1, ptr @vgapass, align 1
  br label %while.cond.backedge.i

if.else11.i:                                      ; preds = %if.else.i
  %call12.i = call i32 @strcmp(ptr noundef nonnull %call3.i, ptr noundef nonnull dereferenceable(9) @.str.4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %if.else15.i

if.then14.i:                                      ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #13
  store i8 1, ptr @clipping, align 1
  br label %while.cond.backedge.i

if.else15.i:                                      ; preds = %if.else11.i
  %call16.i = call i32 @strcmp(ptr noundef nonnull %call3.i, ptr noundef nonnull dereferenceable(11) @.str.5) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %if.else19.i

if.then18.i:                                      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #13
  store i8 0, ptr @clipping, align 1
  br label %while.cond.backedge.i

if.else19.i:                                      ; preds = %if.else15.i
  %call20.i = call i32 @strcmp(ptr noundef nonnull %call3.i, ptr noundef nonnull dereferenceable(8) @.str.6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %if.else23.i

if.then22.i:                                      ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #13
  store i8 0, ptr @slowpci, align 1
  br label %while.cond.backedge.i

if.else23.i:                                      ; preds = %if.else19.i
  %call24.i = call i32 @strcmp(ptr noundef nonnull %call3.i, ptr noundef nonnull dereferenceable(8) @.str.7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.then26.i, label %if.else27.i

if.then26.i:                                      ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #13
  store i8 1, ptr @slowpci, align 1
  br label %while.cond.backedge.i

if.else27.i:                                      ; preds = %if.else23.i
  %call28.i = call i32 @strncmp(ptr noundef nonnull %call3.i, ptr noundef nonnull dereferenceable(5) @.str.8, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.then30.i, label %if.else32.i

if.then30.i:                                      ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 4
  %call31.i = call i32 @simple_strtoul(ptr noundef %add.ptr.i, ptr noundef null, i32 noundef 0) #11
  store i32 %call31.i, ptr @mem, align 4
  br label %while.cond.backedge.i

if.else32.i:                                      ; preds = %if.else27.i
  %call33.i = call i32 @strncmp(ptr noundef nonnull %call3.i, ptr noundef nonnull dereferenceable(8) @.str.9, i32 noundef 7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.then35.i, label %if.else38.i

if.then35.i:                                      ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr36.i = getelementptr i8, ptr %call3.i, i32 7
  %call37.i = call i32 @simple_strtoul(ptr noundef %add.ptr36.i, ptr noundef null, i32 noundef 0) #11
  store i32 %call37.i, ptr @gfxclk, align 4
  br label %while.cond.backedge.i

if.else38.i:                                      ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %call3.i, ptr @mode_option, align 4
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.else38.i, %if.then35.i, %if.then30.i, %if.then26.i, %if.then22.i, %if.then18.i, %if.then14.i, %if.then10.i, %if.then7.i, %while.body.i.while.cond.backedge.i_crit_edge
  %call.i = call ptr @strsep(ptr noundef nonnull %options.addr.i, ptr noundef nonnull @.str.1) #11
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %while.cond.backedge.i.sstfb_setup.exit_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.cond.backedge.i.sstfb_setup.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sstfb_setup.exit

sstfb_setup.exit:                                 ; preds = %while.cond.backedge.i.sstfb_setup.exit_crit_edge, %while.cond.preheader.i.sstfb_setup.exit_crit_edge, %lor.lhs.false.i.sstfb_setup.exit_crit_edge, %if.end.sstfb_setup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.addr.i)
  %call2 = call i32 @__pci_register_driver(ptr noundef nonnull @sstfb_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  br label %cleanup

cleanup:                                          ; preds = %sstfb_setup.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %sstfb_setup.exit ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sstfb_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_unregister_driver(ptr noundef nonnull @sstfb_driver) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sstfb_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call2 = tail call ptr @framebuffer_alloc(i32 noundef 140, ptr noundef %dev) #11
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %driver_data.i.i, align 4
  %par6 = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 30
  %1 = ptrtoint ptr %par6 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %par6, align 4
  %fix7 = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 7
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  %type = getelementptr inbounds %struct.sstfb_par, ptr %2, i32 0, i32 13
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %type, align 4
  %arrayidx = getelementptr [2 x %struct.sst_spec], ptr @voodoo_spec, i32 0, i32 %4
  %dev10 = getelementptr inbounds %struct.sstfb_par, ptr %2, i32 0, i32 12
  %6 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pdev, ptr %dev10, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %7 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %revision, align 4
  %revision11 = getelementptr inbounds %struct.sstfb_par, ptr %2, i32 0, i32 14
  %9 = ptrtoint ptr %revision11 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %revision11, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %10 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resource, align 8
  %mmio_start = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 7, i32 10
  %12 = ptrtoint ptr %mmio_start to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %mmio_start, align 4
  %mmio_len = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 7, i32 11
  %13 = ptrtoint ptr %mmio_len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4194304, ptr %mmio_len, align 4
  %add = add i32 %11, 4194304
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %smem_start, align 4
  %call16 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %11, i32 noundef 4194304, ptr noundef nonnull @.str.13, i32 noundef 0) #11
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %do.end21, label %if.end24

do.end21:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #15
  br label %fail_mmio_mem

if.end24:                                         ; preds = %if.end5
  %15 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %smem_start, align 4
  %call26 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %16, i32 noundef 4194304, ptr noundef nonnull @.str.17, i32 noundef 0) #11
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %do.end31, label %if.end34

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #15
  br label %fail_fb_mem

if.end34:                                         ; preds = %if.end24
  %17 = ptrtoint ptr %mmio_start to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mmio_start, align 4
  %19 = ptrtoint ptr %mmio_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mmio_len, align 4
  %call37 = tail call ptr @ioremap(i32 noundef %18, i32 noundef %20) #11
  %mmio_vbase = getelementptr inbounds %struct.sstfb_par, ptr %2, i32 0, i32 10
  %21 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call37, ptr %mmio_vbase, align 4
  %tobool39.not = icmp eq ptr %call37, null
  br i1 %tobool39.not, label %do.end43, label %if.end47

do.end43:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %mmio_start to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mmio_start, align 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %23) #15
  br label %fail_mmio_remap

if.end47:                                         ; preds = %if.end34
  %24 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %smem_start, align 4
  %call49 = tail call ptr @ioremap(i32 noundef %25, i32 noundef 4194304) #11
  %26 = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 25
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call49, ptr %26, align 4
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %do.end54, label %if.end58

do.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %smem_start, align 4
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %29) #15
  br label %fail_fb_remap

if.end58:                                         ; preds = %if.end47
  %call59 = tail call fastcc i32 @sst_init(ptr noundef nonnull %call2, ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %do.end64, label %if.end67

do.end64:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #15
  br label %fail

if.end67:                                         ; preds = %if.end58
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 7, i32 2
  tail call fastcc void @sst_get_memsize(ptr noundef nonnull %call2, ptr noundef %smem_len)
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %call70 = tail call i32 @strlcpy(ptr noundef %fix7, ptr noundef %31, i32 noundef 16) #11
  %32 = ptrtoint ptr %revision11 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %revision11, align 4
  %conv = zext i8 %33 to i32
  %dac_sw = getelementptr inbounds %struct.sstfb_par, ptr %2, i32 0, i32 11
  %34 = ptrtoint ptr %dac_sw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dac_sw, align 4
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %fix7, i32 noundef %conv, ptr noundef %35) #15
  %36 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %smem_start, align 4
  %38 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %26, align 4
  %40 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %smem_len, align 4
  %shr = lshr i32 %41, 20
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %37, ptr noundef %39, i32 noundef %shr) #15
  %flags = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 2
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %flags, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 20
  %43 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @sstfb_ops, ptr %fbops, align 4
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 27
  %44 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %2, ptr %pseudo_palette, align 4
  %type91 = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 7, i32 3
  %45 = ptrtoint ptr %type91 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %type91, align 4
  %visual = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 7, i32 5
  %46 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %visual, align 4
  %accel = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 7, i32 12
  %47 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %accel, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 7, i32 9
  %48 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2048, ptr %line_length, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 6
  %49 = load ptr, ptr @mode_option, align 4
  %call92 = tail call i32 @fb_find_mode(ptr noundef %var, ptr noundef nonnull %call2, ptr noundef %49, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 16) #11
  %call94 = tail call i32 @sstfb_check_var(ptr noundef %var, ptr noundef nonnull %call2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end102, label %do.end99

do.end99:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #15
  br label %fail

if.end102:                                        ; preds = %if.end67
  %call103 = tail call i32 @sstfb_set_par(ptr noundef nonnull %call2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end111, label %do.end108

do.end108:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #15
  br label %fail

if.end111:                                        ; preds = %if.end102
  %cmap = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 12
  %call112 = tail call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end120, label %do.end117

do.end117:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  %call119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #15
  br label %fail

if.end120:                                        ; preds = %if.end111
  %device = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 21
  %50 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %dev, ptr %device, align 4
  %call122 = tail call i32 @register_framebuffer(ptr noundef nonnull %call2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %cmp = icmp slt i32 %call122, 0
  br i1 %cmp, label %do.end127, label %if.end130

do.end127:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #13
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #15
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #11
  br label %fail

if.end130:                                        ; preds = %if.end120
  %51 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %26, align 4
  %53 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %smem_len, align 4
  tail call void @mmioset(ptr noundef %52, i32 noundef 0, i32 noundef %54) #11
  %dev131 = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 22
  %55 = ptrtoint ptr %dev131 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev131, align 4
  %call132 = tail call i32 @device_create_file(ptr noundef %56, ptr noundef nonnull @device_attrs) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end130.do.end143_crit_edge, label %do.end137

if.end130.do.end143_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end143

do.end137:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #13
  %call139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #15
  br label %do.end143

do.end143:                                        ; preds = %do.end137, %if.end130.do.end143_crit_edge
  %node = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 1
  %57 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %node, align 4
  %59 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %26, align 4
  %call147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %58, ptr noundef %fix7, ptr noundef %60) #15
  br label %cleanup

fail:                                             ; preds = %do.end127, %do.end117, %do.end108, %do.end99, %do.end64
  %61 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %26, align 4
  tail call void @iounmap(ptr noundef %62) #11
  br label %fail_fb_remap

fail_fb_remap:                                    ; preds = %fail, %do.end54
  %63 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mmio_vbase, align 4
  tail call void @iounmap(ptr noundef %64) #11
  br label %fail_mmio_remap

fail_mmio_remap:                                  ; preds = %fail_fb_remap, %do.end43
  %65 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %smem_start, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %66, i32 noundef 4194304) #11
  br label %fail_fb_mem

fail_fb_mem:                                      ; preds = %fail_mmio_remap, %do.end31
  %67 = ptrtoint ptr %mmio_start to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mmio_start, align 4
  %69 = ptrtoint ptr %mmio_len to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mmio_len, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %68, i32 noundef %70) #11
  br label %fail_mmio_mem

fail_mmio_mem:                                    ; preds = %fail_fb_mem, %do.end21
  tail call void @framebuffer_release(ptr noundef nonnull %call2) #11
  br label %cleanup

cleanup:                                          ; preds = %fail_mmio_mem, %do.end143, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -6, %fail_mmio_mem ], [ 0, %do.end143 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sstfb_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  %gfx_timings.i = alloca %struct.pll_timing, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %dev = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void @device_remove_file(ptr noundef %5, ptr noundef nonnull @device_attrs) #11
  %6 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %par1, align 4
  %dev2.i = getelementptr inbounds %struct.sstfb_par, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %gfx_timings.i) #11
  %10 = ptrtoint ptr %gfx_timings.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %gfx_timings.i, align 4, !annotation !242
  %11 = getelementptr inbounds %struct.pll_timing, ptr %gfx_timings.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !242
  %13 = getelementptr inbounds %struct.pll_timing, ptr %gfx_timings.i, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %13, align 4, !annotation !242
  %call.i = tail call i32 @pci_write_config_dword(ptr noundef %9, i32 noundef 64, i32 noundef 1) #11
  %mmio_vbase.i = getelementptr inbounds %struct.sstfb_par, ptr %7, i32 0, i32 10
  %15 = ptrtoint ptr %mmio_vbase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio_vbase.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 532
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %18 = or i32 %17, 1114112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %18) #11, !srcloc !246
  %19 = ptrtoint ptr %mmio_vbase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio_vbase.i, align 4
  %add.ptr.i.i25.i = getelementptr i8, ptr %20, i32 536
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i25.i) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %22 = and i32 %21, -16385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i25.i, i32 %22) #11, !srcloc !246
  %23 = ptrtoint ptr %mmio_vbase.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio_vbase.i, align 4
  %add.ptr.i.i26.i = getelementptr i8, ptr %24, i32 528
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i26.i) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %26 = or i32 %25, 100663296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i26.i, i32 %26) #11, !srcloc !246
  %27 = ptrtoint ptr %mmio_vbase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio_vbase.i, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %entry
  %count.0.i.i = phi i32 [ 0, %entry ], [ %count.1.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i = add nsw i32 %count.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.inv.i.i = icmp slt i32 %29, 0
  %count.1.i.i = select i1 %tobool.not.inv.i.i, i32 0, i32 %inc.i.i
  %cmp.i.i = icmp sgt i32 %count.1.i.i, 4
  br i1 %cmp.i.i, label %sst_shutdown.exit, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i

sst_shutdown.exit:                                ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i = tail call i32 @pci_write_config_dword(ptr noundef %9, i32 noundef 64, i32 noundef 5) #11
  %30 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %13, align 4
  %31 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 3, ptr %11, align 4
  %32 = ptrtoint ptr %gfx_timings.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 54, ptr %gfx_timings.i, align 4
  %set_pll.i = getelementptr inbounds %struct.sstfb_par, ptr %7, i32 0, i32 11, i32 2
  %33 = ptrtoint ptr %set_pll.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %set_pll.i, align 4
  %call9.i = call i32 %34(ptr noundef %1, ptr noundef nonnull %gfx_timings.i, i32 noundef 1) #11
  %call10.i = call i32 @pci_write_config_dword(ptr noundef %9, i32 noundef 64, i32 noundef 1) #11
  %35 = ptrtoint ptr %mmio_vbase.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio_vbase.i, align 4
  %add.ptr.i.i31.i = getelementptr i8, ptr %36, i32 528
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i31.i) #11, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %38 = and i32 %37, -117440513
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i31.i, i32 %38) #11, !srcloc !246
  %call12.i = call i32 @pci_write_config_dword(ptr noundef %9, i32 noundef 224, i32 noundef 0) #11
  %call13.i = call i32 @pci_write_config_dword(ptr noundef %9, i32 noundef 64, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %gfx_timings.i) #11
  %39 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  call void @iounmap(ptr noundef %41) #11
  %mmio_vbase = getelementptr inbounds %struct.sstfb_par, ptr %3, i32 0, i32 10
  %42 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio_vbase, align 4
  call void @iounmap(ptr noundef %43) #11
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 1
  %44 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %smem_start, align 4
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %45, i32 noundef 4194304) #11
  %mmio_start = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 10
  %46 = ptrtoint ptr %mmio_start to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mmio_start, align 4
  %mmio_len = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 11
  %48 = ptrtoint ptr %mmio_len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mmio_len, align 4
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %47, i32 noundef %49) #11
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  call void @fb_dealloc_cmap(ptr noundef %cmap) #11
  call void @unregister_framebuffer(ptr noundef %1) #11
  call void @framebuffer_release(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sst_init(ptr noundef %info, ptr nocapture noundef %par) unnamed_addr #0 align 64 {
entry:
  %gfx_timings = alloca %struct.pll_timing, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.sstfb_par, ptr %par, i32 0, i32 12
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %gfx_timings) #11
  %2 = ptrtoint ptr %gfx_timings to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %gfx_timings, align 4, !annotation !242
  %3 = getelementptr inbounds %struct.pll_timing, ptr %gfx_timings, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !242
  %5 = getelementptr inbounds %struct.pll_timing, ptr %gfx_timings, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !242
  %type = getelementptr inbounds %struct.sstfb_par, ptr %par, i32 0, i32 13
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  %call = tail call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 224, i32 noundef 0) #11
  %call3 = tail call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 64, i32 noundef 1) #11
  %mmio_vbase = getelementptr inbounds %struct.sstfb_par, ptr %par, i32 0, i32 10
  %9 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 532
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %12 = or i32 %11, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %12) #11, !srcloc !246
  %13 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio_vbase, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %count.0.i = phi i32 [ 0, %entry ], [ %count.1.i, %while.cond.i.while.cond.i_crit_edge ]
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i = add nsw i32 %count.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.inv.i = icmp slt i32 %15, 0
  %count.1.i = select i1 %tobool.not.inv.i, i32 0, i32 %inc.i
  %cmp.i = icmp sgt i32 %count.1.i, 4
  br i1 %cmp.i, label %__sst_wait_idle.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

__sst_wait_idle.exit:                             ; preds = %while.cond.i
  %16 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr.i.i119 = getelementptr i8, ptr %17, i32 528
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i119) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %19 = or i32 %18, 100663296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i119, i32 %19) #11, !srcloc !246
  %20 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio_vbase, align 4
  br label %while.cond.i126

while.cond.i126:                                  ; preds = %while.cond.i126.while.cond.i126_crit_edge, %__sst_wait_idle.exit
  %count.0.i121 = phi i32 [ 0, %__sst_wait_idle.exit ], [ %count.1.i124, %while.cond.i126.while.cond.i126_crit_edge ]
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i122 = add nsw i32 %count.0.i121, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.inv.i123 = icmp slt i32 %22, 0
  %count.1.i124 = select i1 %tobool.not.inv.i123, i32 0, i32 %inc.i122
  %cmp.i125 = icmp sgt i32 %count.1.i124, 4
  br i1 %cmp.i125, label %__sst_wait_idle.exit127, label %while.cond.i126.while.cond.i126_crit_edge

while.cond.i126.while.cond.i126_crit_edge:        ; preds = %while.cond.i126
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i126

__sst_wait_idle.exit127:                          ; preds = %while.cond.i126
  %23 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr.i.i128 = getelementptr i8, ptr %24, i32 536
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i128) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %26 = and i32 %25, -16385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i128, i32 %26) #11, !srcloc !246
  %27 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio_vbase, align 4
  br label %while.cond.i134

while.cond.i134:                                  ; preds = %while.cond.i134.while.cond.i134_crit_edge, %__sst_wait_idle.exit127
  %count.0.i129 = phi i32 [ 0, %__sst_wait_idle.exit127 ], [ %count.1.i132, %while.cond.i134.while.cond.i134_crit_edge ]
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i130 = add nsw i32 %count.0.i129, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.inv.i131 = icmp slt i32 %29, 0
  %count.1.i132 = select i1 %tobool.not.inv.i131, i32 0, i32 %inc.i130
  %cmp.i133 = icmp sgt i32 %count.1.i132, 4
  br i1 %cmp.i133, label %__sst_wait_idle.exit135, label %while.cond.i134.while.cond.i134_crit_edge

while.cond.i134.while.cond.i134_crit_edge:        ; preds = %while.cond.i134
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i134

__sst_wait_idle.exit135:                          ; preds = %while.cond.i134
  %call12 = tail call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 64, i32 noundef 5) #11
  %call.i = tail call i32 @sst_detect_ti(ptr noundef %info) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %__sst_wait_idle.exit135.if.end_crit_edge

__sst_wait_idle.exit135.if.end_crit_edge:         ; preds = %__sst_wait_idle.exit135
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.i:                                        ; preds = %__sst_wait_idle.exit135
  %call.1.i = tail call i32 @sst_detect_att(ptr noundef %info) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.1.i, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.1.i:                                      ; preds = %for.inc.i
  %call.2.i = tail call i32 @sst_detect_ics(ptr noundef %info) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %do.end, label %for.inc.1.i.if.end_crit_edge

for.inc.1.i.if.end_crit_edge:                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #15
  br label %cleanup

if.end:                                           ; preds = %for.inc.1.i.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %__sst_wait_idle.exit135.if.end_crit_edge
  %i.013.lcssa.i = phi i32 [ 0, %__sst_wait_idle.exit135.if.end_crit_edge ], [ 1, %for.inc.i.if.end_crit_edge ], [ 2, %for.inc.1.i.if.end_crit_edge ]
  %dac_sw.i = getelementptr inbounds %struct.sstfb_par, ptr %par, i32 0, i32 11
  %arrayidx4.i = getelementptr [3 x %struct.dac_switch], ptr @dacs, i32 0, i32 %i.013.lcssa.i
  %30 = call ptr @memcpy(ptr %dac_sw.i, ptr %arrayidx4.i, i32 16)
  %default_gfx_clock = getelementptr [2 x %struct.sst_spec], ptr @voodoo_spec, i32 0, i32 %8, i32 1
  %31 = ptrtoint ptr %default_gfx_clock to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %default_gfx_clock, align 4
  %33 = load i32, ptr @gfxclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %33)
  %cmp = icmp sgt i32 %33, 10
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %max_gfxclk = getelementptr [2 x %struct.sst_spec], ptr @voodoo_spec, i32 0, i32 %8, i32 2
  %34 = ptrtoint ptr %max_gfxclk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_gfxclk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp16 = icmp slt i32 %33, %35
  br i1 %cmp16, label %do.end20, label %land.lhs.true.do.end27_crit_edge

land.lhs.true.do.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27

do.end20:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %33) #15
  %36 = load i32, ptr @gfxclk, align 4
  %mul = mul i32 %36, 1000
  br label %while.cond.i137

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool23.not = icmp eq i32 %33, 0
  br i1 %tobool23.not, label %if.else.while.cond.i137_crit_edge, label %if.else.do.end27_crit_edge

if.else.do.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27

if.else.while.cond.i137_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i137

do.end27:                                         ; preds = %if.else.do.end27_crit_edge, %land.lhs.true.do.end27_crit_edge
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %33) #15
  br label %while.cond.i137

while.cond.i137:                                  ; preds = %do.end27, %if.else.while.cond.i137_crit_edge, %do.end20
  %gfx_clock.0 = phi i32 [ %mul, %do.end20 ], [ %32, %do.end27 ], [ %32, %if.else.while.cond.i137_crit_edge ]
  %mul.i = shl i32 %gfx_clock.0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 260000, i32 %mul.i)
  %cmp.i136 = icmp sgt i32 %mul.i, 260000
  br i1 %cmp.i136, label %while.cond.i137.1, label %while.cond.i137.while.end.i_crit_edge

while.cond.i137.while.end.i_crit_edge:            ; preds = %while.cond.i137
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.cond.i137.1:                                ; preds = %while.cond.i137
  %mul.i.1 = shl i32 %gfx_clock.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 260000, i32 %mul.i.1)
  %cmp.i136.1 = icmp sgt i32 %mul.i.1, 260000
  br i1 %cmp.i136.1, label %while.cond.i137.2, label %while.cond.i137.1.while.end.i_crit_edge

while.cond.i137.1.while.end.i_crit_edge:          ; preds = %while.cond.i137.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.cond.i137.2:                                ; preds = %while.cond.i137.1
  %mul.i.2 = shl i32 %gfx_clock.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 260000, i32 %mul.i.2)
  %cmp.i136.2 = icmp sgt i32 %mul.i.2, 260000
  br i1 %cmp.i136.2, label %while.cond.i137.3, label %while.cond.i137.2.while.end.i_crit_edge

while.cond.i137.2.while.end.i_crit_edge:          ; preds = %while.cond.i137.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.cond.i137.3:                                ; preds = %while.cond.i137.2
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 260000, i32 %gfx_clock.0)
  %cmp.i136.3 = icmp sgt i32 %gfx_clock.0, 260000
  %spec.select = select i1 %cmp.i136.3, i1 true, i1 false
  %spec.select203 = select i1 %cmp.i136.3, i32 -1, i32 0
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.i137.3, %while.cond.i137.2.while.end.i_crit_edge, %while.cond.i137.1.while.end.i_crit_edge, %while.cond.i137.while.end.i_crit_edge
  %cmp2.i = phi i1 [ false, %while.cond.i137.2.while.end.i_crit_edge ], [ false, %while.cond.i137.1.while.end.i_crit_edge ], [ false, %while.cond.i137.while.end.i_crit_edge ], [ %spec.select, %while.cond.i137.3 ]
  %p.0.i.lcssa = phi i32 [ 1, %while.cond.i137.2.while.end.i_crit_edge ], [ 2, %while.cond.i137.1.while.end.i_crit_edge ], [ 3, %while.cond.i137.while.end.i_crit_edge ], [ %spec.select203, %while.cond.i137.3 ]
  br i1 %cmp2.i, label %while.end.i.sst_calc_pll.exit_crit_edge, label %for.cond.preheader.i

while.end.i.sst_calc_pll.exit_crit_edge:          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sst_calc_pll.exit

for.cond.preheader.i:                             ; preds = %while.end.i
  %mul4.i = shl i32 %gfx_clock.0, 1
  %mul6.i = shl i32 %mul4.i, %p.0.i.lcssa
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i139.for.body.i_crit_edge, %for.cond.preheader.i
  %best_m.0104.i = phi i32 [ -1, %for.cond.preheader.i ], [ %best_m.1.i, %for.inc.i139.for.body.i_crit_edge ]
  %best_n.0103.i = phi i32 [ -1, %for.cond.preheader.i ], [ %best_n.1.i, %for.inc.i139.for.body.i_crit_edge ]
  %best_err.0102.i = phi i32 [ %gfx_clock.0, %for.cond.preheader.i ], [ %best_err.1.i, %for.inc.i139.for.body.i_crit_edge ]
  %n.0100.i = phi i32 [ 1, %for.cond.preheader.i ], [ %inc.i138, %for.inc.i139.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %n.0100.i, 2
  %mul7.i = mul i32 %add.i, %mul6.i
  %div.i = sdiv i32 %mul7.i, 14318
  %sub.i = add nsw i32 %div.i, -4
  %37 = and i32 %div.i, 1
  %div8.i = sdiv i32 %sub.i, 2
  %cond.i = add nsw i32 %div8.i, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %cond.i)
  %cmp11.i = icmp sgt i32 %cond.i, 127
  br i1 %cmp11.i, label %for.body.i.for.end.i_crit_edge, label %if.end13.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end13.i:                                       ; preds = %for.body.i
  %38 = mul nsw i32 %cond.i, 14318
  %mul15.i = add nsw i32 %38, 28636
  %mul18.i = shl i32 %add.i, %p.0.i.lcssa
  %div19.i = sdiv i32 %mul15.i, %mul18.i
  %sub20.i = sub i32 %div19.i, %gfx_clock.0
  %39 = tail call i32 @llvm.abs.i32(i32 %sub20.i, i1 false) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %best_err.0102.i)
  %cmp27.i = icmp slt i32 %39, %best_err.0102.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp28.i = icmp sgt i32 %cond.i, 0
  %or.cond99.i = select i1 %cmp27.i, i1 %cmp28.i, i1 false
  br i1 %or.cond99.i, label %if.then29.i, label %if.end13.i.for.inc.i139_crit_edge

if.end13.i.for.inc.i139_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i139

if.then29.i:                                      ; preds = %if.end13.i
  %mul39.i = mul i32 %39, 200
  call void @__sanitizer_cov_trace_cmp4(i32 %mul39.i, i32 %gfx_clock.0)
  %cmp40.i = icmp slt i32 %mul39.i, %gfx_clock.0
  br i1 %cmp40.i, label %if.then29.i.if.end46.i_crit_edge, label %if.then29.i.for.inc.i139_crit_edge

if.then29.i.for.inc.i139_crit_edge:               ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i139

if.then29.i.if.end46.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

for.inc.i139:                                     ; preds = %if.then29.i.for.inc.i139_crit_edge, %if.end13.i.for.inc.i139_crit_edge
  %best_err.1.i = phi i32 [ %39, %if.then29.i.for.inc.i139_crit_edge ], [ %best_err.0102.i, %if.end13.i.for.inc.i139_crit_edge ]
  %best_n.1.i = phi i32 [ %n.0100.i, %if.then29.i.for.inc.i139_crit_edge ], [ %best_n.0103.i, %if.end13.i.for.inc.i139_crit_edge ]
  %best_m.1.i = phi i32 [ %cond.i, %if.then29.i.for.inc.i139_crit_edge ], [ %best_m.0104.i, %if.end13.i.for.inc.i139_crit_edge ]
  %inc.i138 = add nuw nsw i32 %n.0100.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i138, 32
  br i1 %exitcond.not.i, label %for.inc.i139.for.end.i_crit_edge, label %for.inc.i139.for.body.i_crit_edge

for.inc.i139.for.body.i_crit_edge:                ; preds = %for.inc.i139
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i139.for.end.i_crit_edge:                 ; preds = %for.inc.i139
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i139.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %best_n.2.i = phi i32 [ %best_n.0103.i, %for.body.i.for.end.i_crit_edge ], [ %best_n.1.i, %for.inc.i139.for.end.i_crit_edge ]
  %best_m.2.i = phi i32 [ %best_m.0104.i, %for.body.i.for.end.i_crit_edge ], [ %best_m.1.i, %for.inc.i139.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_n.2.i)
  %cmp44.i = icmp eq i32 %best_n.2.i, -1
  br i1 %cmp44.i, label %for.end.i.sst_calc_pll.exit_crit_edge, label %for.end.i.if.end46.i_crit_edge

for.end.i.if.end46.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

for.end.i.sst_calc_pll.exit_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sst_calc_pll.exit

if.end46.i:                                       ; preds = %for.end.i.if.end46.i_crit_edge, %if.then29.i.if.end46.i_crit_edge
  %best_m.2109.i = phi i32 [ %best_m.2.i, %for.end.i.if.end46.i_crit_edge ], [ %cond.i, %if.then29.i.if.end46.i_crit_edge ]
  %best_n.2108.i = phi i32 [ %best_n.2.i, %for.end.i.if.end46.i_crit_edge ], [ %n.0100.i, %if.then29.i.if.end46.i_crit_edge ]
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %p.0.i.lcssa, ptr %5, align 4
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %best_n.2108.i, ptr %3, align 4
  %42 = ptrtoint ptr %gfx_timings to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %best_m.2109.i, ptr %gfx_timings, align 4
  br label %sst_calc_pll.exit

sst_calc_pll.exit:                                ; preds = %if.end46.i, %for.end.i.sst_calc_pll.exit_crit_edge, %while.end.i.sst_calc_pll.exit_crit_edge
  %set_pll = getelementptr inbounds %struct.sstfb_par, ptr %par, i32 0, i32 11, i32 2
  %43 = ptrtoint ptr %set_pll to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %set_pll, align 4
  %call33 = call i32 %44(ptr noundef %info, ptr noundef nonnull %gfx_timings, i32 noundef 1) #11
  %call34 = call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 64, i32 noundef 3) #11
  %45 = load i8, ptr @vgapass, align 1, !range !247
  %vgapass = getelementptr inbounds %struct.sstfb_par, ptr %par, i32 0, i32 15
  %46 = ptrtoint ptr %vgapass to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %vgapass, align 1
  %47 = xor i8 %45, 1
  %48 = zext i8 %47 to i32
  %49 = load i8, ptr @slowpci, align 1, !range !247
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool41.not = icmp eq i8 %49, 0
  %fbiinit4.0 = select i1 %tobool41.not, i32 33554432, i32 50331648
  %50 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio_vbase, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  call void @arm_heavy_mb() #11
  %52 = shl nuw nsw i32 %48, 24
  %add.ptr.i = getelementptr i8, ptr %51, i32 528
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %52) #11, !srcloc !246
  %53 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmio_vbase, align 4
  br label %while.cond.i146

while.cond.i146:                                  ; preds = %while.cond.i146.while.cond.i146_crit_edge, %sst_calc_pll.exit
  %count.0.i141 = phi i32 [ 0, %sst_calc_pll.exit ], [ %count.1.i144, %while.cond.i146.while.cond.i146_crit_edge ]
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #11, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i142 = add nsw i32 %count.0.i141, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.inv.i143 = icmp slt i32 %55, 0
  %count.1.i144 = select i1 %tobool.not.inv.i143, i32 0, i32 %inc.i142
  %cmp.i145 = icmp sgt i32 %count.1.i144, 4
  br i1 %cmp.i145, label %__sst_wait_idle.exit147, label %while.cond.i146.while.cond.i146_crit_edge

while.cond.i146.while.cond.i146_crit_edge:        ; preds = %while.cond.i146
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i146

__sst_wait_idle.exit147:                          ; preds = %while.cond.i146
  %fbiinit1.0 = select i1 %tobool41.not, i32 2097576, i32 2097578
  %56 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio_vbase, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  call void @arm_heavy_mb() #11
  %58 = call i32 @llvm.bswap.i32(i32 %fbiinit1.0) #11
  %add.ptr.i148 = getelementptr i8, ptr %57, i32 532
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148, i32 %58) #11, !srcloc !246
  %59 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mmio_vbase, align 4
  br label %while.cond.i154

while.cond.i154:                                  ; preds = %while.cond.i154.while.cond.i154_crit_edge, %__sst_wait_idle.exit147
  %count.0.i149 = phi i32 [ 0, %__sst_wait_idle.exit147 ], [ %count.1.i152, %while.cond.i154.while.cond.i154_crit_edge ]
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #11, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i150 = add nsw i32 %count.0.i149, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.inv.i151 = icmp slt i32 %61, 0
  %count.1.i152 = select i1 %tobool.not.inv.i151, i32 0, i32 %inc.i150
  %cmp.i153 = icmp sgt i32 %count.1.i152, 4
  br i1 %cmp.i153, label %__sst_wait_idle.exit155, label %while.cond.i154.while.cond.i154_crit_edge

while.cond.i154.while.cond.i154_crit_edge:        ; preds = %while.cond.i154
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i154

__sst_wait_idle.exit155:                          ; preds = %while.cond.i154
  %62 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmio_vbase, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  call void @arm_heavy_mb() #11
  %add.ptr.i156 = getelementptr i8, ptr %63, i32 536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156, i32 -536846312) #11, !srcloc !246
  %64 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio_vbase, align 4
  br label %while.cond.i162

while.cond.i162:                                  ; preds = %while.cond.i162.while.cond.i162_crit_edge, %__sst_wait_idle.exit155
  %count.0.i157 = phi i32 [ 0, %__sst_wait_idle.exit155 ], [ %count.1.i160, %while.cond.i162.while.cond.i162_crit_edge ]
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #11, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i158 = add nsw i32 %count.0.i157, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.inv.i159 = icmp slt i32 %66, 0
  %count.1.i160 = select i1 %tobool.not.inv.i159, i32 0, i32 %inc.i158
  %cmp.i161 = icmp sgt i32 %count.1.i160, 4
  br i1 %cmp.i161, label %__sst_wait_idle.exit163, label %while.cond.i162.while.cond.i162_crit_edge

while.cond.i162.while.cond.i162_crit_edge:        ; preds = %while.cond.i162
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i162

__sst_wait_idle.exit163:                          ; preds = %while.cond.i162
  %67 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mmio_vbase, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  call void @arm_heavy_mb() #11
  %add.ptr.i164 = getelementptr i8, ptr %68, i32 540
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i164, i32 1073741824) #11, !srcloc !246
  %69 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mmio_vbase, align 4
  br label %while.cond.i170

while.cond.i170:                                  ; preds = %while.cond.i170.while.cond.i170_crit_edge, %__sst_wait_idle.exit163
  %count.0.i165 = phi i32 [ 0, %__sst_wait_idle.exit163 ], [ %count.1.i168, %while.cond.i170.while.cond.i170_crit_edge ]
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #11, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i166 = add nsw i32 %count.0.i165, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.inv.i167 = icmp slt i32 %71, 0
  %count.1.i168 = select i1 %tobool.not.inv.i167, i32 0, i32 %inc.i166
  %cmp.i169 = icmp sgt i32 %count.1.i168, 4
  br i1 %cmp.i169, label %__sst_wait_idle.exit171, label %while.cond.i170.while.cond.i170_crit_edge

while.cond.i170.while.cond.i170_crit_edge:        ; preds = %while.cond.i170
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i170

__sst_wait_idle.exit171:                          ; preds = %while.cond.i170
  %72 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mmio_vbase, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  call void @arm_heavy_mb() #11
  %add.ptr.i172 = getelementptr i8, ptr %73, i32 512
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172, i32 %fbiinit4.0) #11, !srcloc !246
  %74 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mmio_vbase, align 4
  br label %while.cond.i178

while.cond.i178:                                  ; preds = %while.cond.i178.while.cond.i178_crit_edge, %__sst_wait_idle.exit171
  %count.0.i173 = phi i32 [ 0, %__sst_wait_idle.exit171 ], [ %count.1.i176, %while.cond.i178.while.cond.i178_crit_edge ]
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #11, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i174 = add nsw i32 %count.0.i173, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.inv.i175 = icmp slt i32 %76, 0
  %count.1.i176 = select i1 %tobool.not.inv.i175, i32 0, i32 %inc.i174
  %cmp.i177 = icmp sgt i32 %count.1.i176, 4
  br i1 %cmp.i177, label %__sst_wait_idle.exit179, label %while.cond.i178.while.cond.i178_crit_edge

while.cond.i178.while.cond.i178_crit_edge:        ; preds = %while.cond.i178
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i178

__sst_wait_idle.exit179:                          ; preds = %while.cond.i178
  %77 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %cmp65 = icmp eq i32 %78, 1
  br i1 %cmp65, label %if.then67, label %__sst_wait_idle.exit179.if.end71_crit_edge

__sst_wait_idle.exit179.if.end71_crit_edge:       ; preds = %__sst_wait_idle.exit179
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

if.then67:                                        ; preds = %__sst_wait_idle.exit179
  %79 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mmio_vbase, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  call void @arm_heavy_mb() #11
  %add.ptr.i180 = getelementptr i8, ptr %80, i32 584
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180, i32 0) #11, !srcloc !246
  %81 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mmio_vbase, align 4
  br label %while.cond.i186

while.cond.i186:                                  ; preds = %while.cond.i186.while.cond.i186_crit_edge, %if.then67
  %count.0.i181 = phi i32 [ 0, %if.then67 ], [ %count.1.i184, %while.cond.i186.while.cond.i186_crit_edge ]
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #11, !srcloc !243
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i182 = add nsw i32 %count.0.i181, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not.inv.i183 = icmp slt i32 %83, 0
  %count.1.i184 = select i1 %tobool.not.inv.i183, i32 0, i32 %inc.i182
  %cmp.i185 = icmp sgt i32 %count.1.i184, 4
  br i1 %cmp.i185, label %while.cond.i186.if.end71_crit_edge, label %while.cond.i186.while.cond.i186_crit_edge

while.cond.i186.while.cond.i186_crit_edge:        ; preds = %while.cond.i186
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i186

while.cond.i186.if.end71_crit_edge:               ; preds = %while.cond.i186
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

if.end71:                                         ; preds = %while.cond.i186.if.end71_crit_edge, %__sst_wait_idle.exit179.if.end71_crit_edge
  %call72 = call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 64, i32 noundef 2) #11
  %call73 = call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 192, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %do.end
  %retval.0 = phi i32 [ 1, %if.end71 ], [ 0, %do.end ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %gfx_timings) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sst_get_memsize(ptr nocapture noundef readonly %info, ptr nocapture noundef writeonly %memsize) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mem, align 4
  %1 = add i32 %0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %2 = icmp ult i32 %1, 4
  br i1 %2, label %if.then, label %do.body2

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mul = shl nuw nsw i32 %0, 20
  %3 = ptrtoint ptr %memsize to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mul, ptr %memsize, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %mul) #15
  br label %cleanup

do.body2:                                         ; preds = %entry
  %4 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !248
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 -272716322) #11, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !249
  tail call void @arm_heavy_mb() #11
  %add.ptr = getelementptr i8, ptr %6, i32 1048576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -272716322) #11, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !250
  tail call void @arm_heavy_mb() #11
  %add.ptr11 = getelementptr i8, ptr %6, i32 2097152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 -272716322) #11, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !251
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 32492971) #11, !srcloc !246
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !252
  call void @__sanitizer_cov_trace_const_cmp4(i32 -272716322, i32 %7)
  %cmp21 = icmp eq i32 %7, -272716322
  br i1 %cmp21, label %if.then22, label %if.else

if.then22:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %memsize to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4194304, ptr %memsize, align 4
  br label %cleanup

if.else:                                          ; preds = %do.body2
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !253
  call void @__sanitizer_cov_trace_const_cmp4(i32 -272716322, i32 %9)
  %cmp29 = icmp eq i32 %9, -272716322
  br i1 %cmp29, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %memsize to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2097152, ptr %memsize, align 4
  br label %cleanup

if.else31:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %memsize to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1048576, ptr %memsize, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else31, %if.then30, %if.then22, %if.then
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sstfb_check_var(ptr noundef %var, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %2 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %var, align 4
  %right_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %4 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %right_margin, align 4
  %left_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %6 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %left_margin, align 4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %8 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %yres, align 4
  %lower_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %10 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lower_margin, align 4
  %upper_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %12 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %upper_margin, align 4
  %vsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %14 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vsync_len, align 4
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %16 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pixclock, align 4
  %div = udiv i32 1000000000, %17
  %mul.i = shl i32 %div, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 260000, i32 %mul.i)
  %cmp.i = icmp sgt i32 %mul.i, 260000
  br i1 %cmp.i, label %while.cond.i.1, label %entry.while.end.i_crit_edge

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.cond.i.1:                                   ; preds = %entry
  %mul.i.1 = shl nuw i32 %div, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 260000, i32 %mul.i.1)
  %cmp.i.1 = icmp sgt i32 %mul.i.1, 260000
  br i1 %cmp.i.1, label %while.cond.i.2, label %while.cond.i.1.while.end.i_crit_edge

while.cond.i.1.while.end.i_crit_edge:             ; preds = %while.cond.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.cond.i.2:                                   ; preds = %while.cond.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7693, i32 %17)
  %cmp.i.2 = icmp ult i32 %17, 7693
  br i1 %cmp.i.2, label %while.cond.i.3, label %while.cond.i.2.while.end.i_crit_edge

while.cond.i.2.while.end.i_crit_edge:             ; preds = %while.cond.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.cond.i.3:                                   ; preds = %while.cond.i.2
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3847, i32 %17)
  %cmp.i.3 = icmp ult i32 %17, 3847
  %spec.select = select i1 %cmp.i.3, i1 true, i1 false
  %spec.select301 = select i1 %cmp.i.3, i32 -1, i32 0
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.i.3, %while.cond.i.2.while.end.i_crit_edge, %while.cond.i.1.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %cmp2.i = phi i1 [ false, %while.cond.i.2.while.end.i_crit_edge ], [ false, %while.cond.i.1.while.end.i_crit_edge ], [ false, %entry.while.end.i_crit_edge ], [ %spec.select, %while.cond.i.3 ]
  %p.0.i.lcssa = phi i32 [ 1, %while.cond.i.2.while.end.i_crit_edge ], [ 2, %while.cond.i.1.while.end.i_crit_edge ], [ 3, %entry.while.end.i_crit_edge ], [ %spec.select301, %while.cond.i.3 ]
  %add = add i32 %5, %3
  %add2 = add i32 %add, %7
  %add3 = add i32 %11, %9
  %add4 = add i32 %add3, %13
  %pll = getelementptr inbounds %struct.sstfb_par, ptr %1, i32 0, i32 8
  br i1 %cmp2.i, label %while.end.i.do.end_crit_edge, label %for.cond.preheader.i

while.end.i.do.end_crit_edge:                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.cond.preheader.i:                             ; preds = %while.end.i
  %mul4.i = shl nuw nsw i32 %div, 1
  %mul6.i = shl i32 %mul4.i, %p.0.i.lcssa
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %best_m.0104.i = phi i32 [ -1, %for.cond.preheader.i ], [ %best_m.1.i, %for.inc.i.for.body.i_crit_edge ]
  %best_n.0103.i = phi i32 [ -1, %for.cond.preheader.i ], [ %best_n.1.i, %for.inc.i.for.body.i_crit_edge ]
  %best_err.0102.i = phi i32 [ %div, %for.cond.preheader.i ], [ %best_err.1.i, %for.inc.i.for.body.i_crit_edge ]
  %n.0100.i = phi i32 [ 1, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %add.i = add nuw i32 %n.0100.i, 2
  %mul7.i = mul i32 %add.i, %mul6.i
  %div.i = sdiv i32 %mul7.i, 14318
  %sub.i = add nsw i32 %div.i, -4
  %18 = and i32 %div.i, 1
  %div8.i = sdiv i32 %sub.i, 2
  %cond.i = add nsw i32 %div8.i, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %cond.i)
  %cmp11.i = icmp sgt i32 %cond.i, 127
  br i1 %cmp11.i, label %for.body.i.for.end.i_crit_edge, label %if.end13.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end13.i:                                       ; preds = %for.body.i
  %19 = mul nsw i32 %cond.i, 14318
  %mul15.i = add nsw i32 %19, 28636
  %mul18.i = shl i32 %add.i, %p.0.i.lcssa
  %div19.i = sdiv i32 %mul15.i, %mul18.i
  %sub20.i = sub i32 %div19.i, %div
  %20 = tail call i32 @llvm.abs.i32(i32 %sub20.i, i1 false) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %best_err.0102.i)
  %cmp27.i = icmp slt i32 %20, %best_err.0102.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp28.i = icmp sgt i32 %cond.i, 0
  %or.cond99.i = select i1 %cmp27.i, i1 %cmp28.i, i1 false
  br i1 %or.cond99.i, label %if.then29.i, label %if.end13.i.for.inc.i_crit_edge

if.end13.i.for.inc.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then29.i:                                      ; preds = %if.end13.i
  %mul39.i = mul i32 %20, 200
  call void @__sanitizer_cov_trace_cmp4(i32 %mul39.i, i32 %div)
  %cmp40.i = icmp slt i32 %mul39.i, %div
  br i1 %cmp40.i, label %if.then29.i.if.end_crit_edge, label %if.then29.i.for.inc.i_crit_edge

if.then29.i.for.inc.i_crit_edge:                  ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then29.i.if.end_crit_edge:                     ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.i:                                        ; preds = %if.then29.i.for.inc.i_crit_edge, %if.end13.i.for.inc.i_crit_edge
  %best_err.1.i = phi i32 [ %20, %if.then29.i.for.inc.i_crit_edge ], [ %best_err.0102.i, %if.end13.i.for.inc.i_crit_edge ]
  %best_n.1.i = phi i32 [ %n.0100.i, %if.then29.i.for.inc.i_crit_edge ], [ %best_n.0103.i, %if.end13.i.for.inc.i_crit_edge ]
  %best_m.1.i = phi i32 [ %cond.i, %if.then29.i.for.inc.i_crit_edge ], [ %best_m.0104.i, %if.end13.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %n.0100.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %best_n.2.i = phi i32 [ %best_n.0103.i, %for.body.i.for.end.i_crit_edge ], [ %best_n.1.i, %for.inc.i.for.end.i_crit_edge ]
  %best_m.2.i = phi i32 [ %best_m.0104.i, %for.body.i.for.end.i_crit_edge ], [ %best_m.1.i, %for.inc.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_n.2.i)
  %cmp44.i = icmp eq i32 %best_n.2.i, -1
  br i1 %cmp44.i, label %for.end.i.do.end_crit_edge, label %for.end.i.if.end_crit_edge

for.end.i.do.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = mul i32 %best_m.2.i, 14318
  %.pre290 = add i32 %.pre, 28636
  %.pre291 = add i32 %best_n.2.i, 2
  %.pre292 = shl i32 %.pre291, %p.0.i.lcssa
  br label %if.end

do.end:                                           ; preds = %for.end.i.do.end_crit_edge, %while.end.i.do.end_crit_edge
  %21 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pixclock, align 4
  %div8 = udiv i32 1000000000, %22
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %div8) #15
  br label %cleanup

if.end:                                           ; preds = %for.end.i.if.end_crit_edge, %if.then29.i.if.end_crit_edge
  %mul57.i.pre-phi = phi i32 [ %.pre292, %for.end.i.if.end_crit_edge ], [ %mul18.i, %if.then29.i.if.end_crit_edge ]
  %mul52.i.pre-phi = phi i32 [ %.pre290, %for.end.i.if.end_crit_edge ], [ %mul15.i, %if.then29.i.if.end_crit_edge ]
  %best_m.2109.i = phi i32 [ %best_m.2.i, %for.end.i.if.end_crit_edge ], [ %cond.i, %if.then29.i.if.end_crit_edge ]
  %best_n.2108.i = phi i32 [ %best_n.2.i, %for.end.i.if.end_crit_edge ], [ %n.0100.i, %if.then29.i.if.end_crit_edge ]
  %p47.i = getelementptr inbounds %struct.sstfb_par, ptr %1, i32 0, i32 8, i32 2
  %23 = ptrtoint ptr %p47.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %p.0.i.lcssa, ptr %p47.i, align 4
  %n48.i = getelementptr inbounds %struct.sstfb_par, ptr %1, i32 0, i32 8, i32 1
  %24 = ptrtoint ptr %n48.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %best_n.2108.i, ptr %n48.i, align 4
  %25 = ptrtoint ptr %pll to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %best_m.2109.i, ptr %pll, align 4
  %div58.i = udiv i32 %mul52.i.pre-phi, %mul57.i.pre-phi
  %div10 = udiv i32 1000000000, %div58.i
  %26 = ptrtoint ptr %pixclock to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div10, ptr %pixclock, align 4
  %vmode = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %27 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vmode, align 4
  %and = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  %rem = srem i32 %7, 2
  %add14 = select i1 %tobool12.not, i32 0, i32 %rem
  %vBackPorch.0 = add i32 %add14, %7
  %and17 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end.if.end23_crit_edge, label %if.then19

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %shl = shl i32 %vBackPorch.0, 1
  %shl20 = shl i32 %9, 1
  %shl21 = shl i32 %15, 1
  %shl22 = shl i32 %add4, 1
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end.if.end23_crit_edge
  %vSyncOn.0 = phi i32 [ %shl21, %if.then19 ], [ %15, %if.end.if.end23_crit_edge ]
  %yDim.0 = phi i32 [ %shl20, %if.then19 ], [ %9, %if.end.if.end23_crit_edge ]
  %vBackPorch.1 = phi i32 [ %shl, %if.then19 ], [ %vBackPorch.0, %if.end.if.end23_crit_edge ]
  %vSyncOff.0 = phi i32 [ %shl22, %if.then19 ], [ %add4, %if.end.if.end23_crit_edge ]
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %29 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %30)
  %switch = icmp ult i32 %30, 17
  br i1 %switch, label %sw.bb, label %do.end27

sw.bb:                                            ; preds = %if.end23
  %31 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 16, ptr %bits_per_pixel, align 4
  %32 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp = icmp ult i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %yDim.0)
  %cmp32 = icmp slt i32 %yDim.0, 1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp32
  br i1 %or.cond, label %sw.bb.cleanup_crit_edge, label %lor.lhs.false33

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end27:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i32 noundef %30) #15
  br label %cleanup

lor.lhs.false33:                                  ; preds = %sw.bb
  %hsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %34 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hsync_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp34 = icmp ult i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add2)
  %cmp36 = icmp slt i32 %add2, 2
  %or.cond264 = select i1 %cmp34, i1 true, i1 %cmp36
  br i1 %or.cond264, label %lor.lhs.false33.cleanup_crit_edge, label %lor.lhs.false37

lor.lhs.false33.cleanup_crit_edge:                ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false37:                                  ; preds = %lor.lhs.false33
  %36 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %left_margin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp39 = icmp ult i32 %37, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %vSyncOn.0)
  %cmp41 = icmp slt i32 %vSyncOn.0, 1
  %or.cond265 = select i1 %cmp39, i1 true, i1 %cmp41
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %vSyncOff.0)
  %cmp43 = icmp slt i32 %vSyncOff.0, 1
  %or.cond266 = select i1 %or.cond265, i1 true, i1 %cmp43
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %vBackPorch.1)
  %cmp45 = icmp slt i32 %vBackPorch.1, 1
  %or.cond267 = select i1 %or.cond266, i1 true, i1 %cmp45
  br i1 %or.cond267, label %lor.lhs.false37.cleanup_crit_edge, label %if.end47

lor.lhs.false37.cleanup_crit_edge:                ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end47:                                         ; preds = %lor.lhs.false37
  %type = getelementptr inbounds %struct.sstfb_par, ptr %1, i32 0, i32 13
  %38 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp48 = icmp eq i32 %39, 1
  br i1 %cmp48, label %if.then49, label %if.else

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %33)
  %cmp54 = icmp ugt i32 %33, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %yDim.0)
  %cmp56 = icmp ugt i32 %yDim.0, 2047
  %or.cond268 = select i1 %cmp54, i1 true, i1 %cmp56
  br i1 %or.cond268, label %do.end60, label %if.end65

do.end60:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %yres, align 4
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i32 noundef %33, i32 noundef %41) #15
  br label %cleanup

if.end65:                                         ; preds = %if.then49
  %add51 = add nuw nsw i32 %33, 63
  %42 = lshr i32 %add51, 5
  %mul = and i32 %42, 134217726
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %35)
  %cmp67 = icmp ugt i32 %35, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %add2)
  %cmp69 = icmp ugt i32 %add2, 2048
  %or.cond269 = select i1 %cmp67, i1 true, i1 %cmp69
  %43 = add i32 %37, -514
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %43)
  %cmp72 = icmp ult i32 %43, -512
  %or.cond270 = select i1 %or.cond269, i1 true, i1 %cmp72
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %vSyncOn.0)
  %cmp74 = icmp ugt i32 %vSyncOn.0, 8191
  %or.cond271 = select i1 %or.cond270, i1 true, i1 %cmp74
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %vSyncOff.0)
  %cmp76 = icmp ugt i32 %vSyncOff.0, 8191
  %or.cond272 = select i1 %or.cond271, i1 true, i1 %cmp76
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %vBackPorch.1)
  %cmp78 = icmp ugt i32 %vBackPorch.1, 511
  %or.cond273 = select i1 %or.cond272, i1 true, i1 %cmp78
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %mul)
  %cmp80 = icmp ugt i32 %mul, 63
  %or.cond274 = select i1 %or.cond273, i1 true, i1 %cmp80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp82 = icmp eq i32 %mul, 0
  %or.cond275 = select i1 %or.cond274, i1 true, i1 %cmp82
  br i1 %or.cond275, label %do.end86, label %if.end65.if.end143_crit_edge

if.end65.if.end143_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end143

do.end86:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86) #15
  br label %cleanup

if.else:                                          ; preds = %if.end47
  %add91 = add i32 %33, 63
  %div92262 = lshr i32 %add91, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool94.not = icmp eq i32 %28, 0
  br i1 %tobool94.not, label %if.end102, label %do.end98

do.end98:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %28) #15
  br label %cleanup

if.end102:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %33)
  %cmp104 = icmp ugt i32 %33, 1024
  br i1 %cmp104, label %if.end102.do.end111_crit_edge, label %lor.lhs.false105

if.end102.do.end111_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end111

lor.lhs.false105:                                 ; preds = %if.end102
  %44 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %45)
  %cmp107 = icmp ugt i32 %45, 1023
  br i1 %cmp107, label %lor.lhs.false105.do.end111_crit_edge, label %if.end116

lor.lhs.false105.do.end111_crit_edge:             ; preds = %lor.lhs.false105
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end111

do.end111:                                        ; preds = %lor.lhs.false105.do.end111_crit_edge, %if.end102.do.end111_crit_edge
  %46 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %yres, align 4
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i32 noundef %33, i32 noundef %47) #15
  br label %cleanup

if.end116:                                        ; preds = %lor.lhs.false105
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %35)
  %cmp118 = icmp ugt i32 %35, 256
  %48 = add nsw i32 %add2, -1026
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1025, i32 %48)
  %cmp121 = icmp ult i32 %48, -1025
  %or.cond276 = select i1 %cmp118, i1 true, i1 %cmp121
  %49 = add i32 %37, -258
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %49)
  %cmp125 = icmp ult i32 %49, -256
  %or.cond277 = select i1 %or.cond276, i1 true, i1 %cmp125
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %vSyncOn.0)
  %cmp127 = icmp ugt i32 %vSyncOn.0, 4095
  %or.cond278 = select i1 %or.cond277, i1 true, i1 %cmp127
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %vSyncOff.0)
  %cmp129 = icmp ugt i32 %vSyncOff.0, 4095
  %or.cond279 = select i1 %or.cond278, i1 true, i1 %cmp129
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %vBackPorch.1)
  %cmp131 = icmp ugt i32 %vBackPorch.1, 255
  %or.cond280 = select i1 %or.cond279, i1 true, i1 %cmp131
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %add91)
  %cmp133 = icmp ugt i32 %add91, 1023
  %or.cond281 = select i1 %or.cond280, i1 true, i1 %cmp133
  br i1 %or.cond281, label %do.end139, label %if.end116.if.end143_crit_edge

if.end116.if.end143_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end143

do.end139:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  %call141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86) #15
  br label %cleanup

if.end143:                                        ; preds = %if.end116.if.end143_crit_edge, %if.end65.if.end143_crit_edge
  %cond = phi i32 [ 64, %if.end116.if.end143_crit_edge ], [ 32, %if.end65.if.end143_crit_edge ]
  %tiles_in_X.0 = phi i32 [ %div92262, %if.end116.if.end143_crit_edge ], [ %mul, %if.end65.if.end143_crit_edge ]
  %mul146 = shl nuw i32 %yDim.0, 1
  %mul150 = mul i32 %mul146, %cond
  %mul151 = mul i32 %mul150, %tiles_in_X.0
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %50 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %smem_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul151, i32 %51)
  %cmp152 = icmp ugt i32 %mul151, %51
  br i1 %cmp152, label %do.end156, label %sw.bb164

do.end156:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #13
  %call158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96) #15
  br label %cleanup

sw.bb164:                                         ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #13
  %sync = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 24
  %52 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sync, align 4
  %and160 = and i32 %53, 3
  store i32 %and160, ptr %sync, align 4
  %and162 = and i32 %28, 3
  %54 = ptrtoint ptr %vmode to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and162, ptr %vmode, align 4
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %55 = ptrtoint ptr %xoffset to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %xoffset, align 4
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %56 = ptrtoint ptr %yoffset to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %yoffset, align 4
  %height = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 14
  %57 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %height, align 4
  %width = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 15
  %58 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %width, align 4
  %red = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %59 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 5, ptr %length, align 4
  %green = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %length165 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %60 = ptrtoint ptr %length165 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 6, ptr %length165, align 4
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %length166 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %61 = ptrtoint ptr %length166 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 5, ptr %length166, align 4
  %transp = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %length167 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %62 = ptrtoint ptr %length167 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %length167, align 4
  %63 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 11, ptr %red, align 4
  %64 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 5, ptr %green, align 4
  %65 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %blue, align 4
  %66 = ptrtoint ptr %transp to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %transp, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb164, %do.end156, %do.end139, %do.end111, %do.end98, %do.end86, %do.end60, %lor.lhs.false37.cleanup_crit_edge, %lor.lhs.false33.cleanup_crit_edge, %do.end27, %sw.bb.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end27 ], [ -22, %do.end60 ], [ -22, %do.end86 ], [ -12, %do.end156 ], [ 0, %sw.bb164 ], [ -22, %do.end98 ], [ -22, %do.end111 ], [ -22, %do.end139 ], [ -22, %lor.lhs.false37.cleanup_crit_edge ], [ -22, %lor.lhs.false33.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sstfb_set_par(ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %dev = getelementptr inbounds %struct.sstfb_par, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %4 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %var, align 4
  %right_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 19
  %6 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %right_margin, align 4
  %add = add i32 %7, %5
  %left_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 18
  %8 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %left_margin, align 4
  %add4 = add i32 %add, %9
  %hSyncOff = getelementptr inbounds %struct.sstfb_par, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %hSyncOff to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add4, ptr %hSyncOff, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %yres, align 4
  %yDim = getelementptr inbounds %struct.sstfb_par, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %yDim to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %yDim, align 4
  %vsync_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 23
  %14 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vsync_len, align 4
  %vSyncOn = getelementptr inbounds %struct.sstfb_par, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %vSyncOn to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %vSyncOn, align 4
  %17 = load i32, ptr %yres, align 4
  %lower_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 21
  %18 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lower_margin, align 4
  %add10 = add i32 %19, %17
  %upper_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 20
  %20 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %upper_margin, align 4
  %add12 = add i32 %add10, %21
  %vSyncOff = getelementptr inbounds %struct.sstfb_par, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %vSyncOff to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add12, ptr %vSyncOff, align 4
  %23 = load i32, ptr %upper_margin, align 4
  %vBackPorch = getelementptr inbounds %struct.sstfb_par, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %vBackPorch to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %vBackPorch, align 4
  %pixclock = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 17
  %25 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pixclock, align 4
  %div = udiv i32 1000000000, %26
  %mul.i = shl i32 %div, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 260000, i32 %mul.i)
  %cmp.i = icmp sgt i32 %mul.i, 260000
  br i1 %cmp.i, label %while.cond.i.1, label %entry.while.end.i_crit_edge

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.cond.i.1:                                   ; preds = %entry
  %mul.i.1 = shl nuw i32 %div, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 260000, i32 %mul.i.1)
  %cmp.i.1 = icmp sgt i32 %mul.i.1, 260000
  br i1 %cmp.i.1, label %while.cond.i.2, label %while.cond.i.1.while.end.i_crit_edge

while.cond.i.1.while.end.i_crit_edge:             ; preds = %while.cond.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.cond.i.2:                                   ; preds = %while.cond.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7693, i32 %26)
  %cmp.i.2 = icmp ult i32 %26, 7693
  br i1 %cmp.i.2, label %while.cond.i.3, label %while.cond.i.2.while.end.i_crit_edge

while.cond.i.2.while.end.i_crit_edge:             ; preds = %while.cond.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.cond.i.3:                                   ; preds = %while.cond.i.2
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3847, i32 %26)
  %cmp.i.3 = icmp ult i32 %26, 3847
  %spec.select = select i1 %cmp.i.3, i1 true, i1 false
  %spec.select348 = select i1 %cmp.i.3, i32 -1, i32 0
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.i.3, %while.cond.i.2.while.end.i_crit_edge, %while.cond.i.1.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %cmp2.i = phi i1 [ false, %while.cond.i.2.while.end.i_crit_edge ], [ false, %while.cond.i.1.while.end.i_crit_edge ], [ false, %entry.while.end.i_crit_edge ], [ %spec.select, %while.cond.i.3 ]
  %p.0.i.lcssa = phi i32 [ 1, %while.cond.i.2.while.end.i_crit_edge ], [ 2, %while.cond.i.1.while.end.i_crit_edge ], [ 3, %entry.while.end.i_crit_edge ], [ %spec.select348, %while.cond.i.3 ]
  %pll = getelementptr inbounds %struct.sstfb_par, ptr %1, i32 0, i32 8
  br i1 %cmp2.i, label %while.end.i.sst_calc_pll.exit_crit_edge, label %for.cond.preheader.i

while.end.i.sst_calc_pll.exit_crit_edge:          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sst_calc_pll.exit

for.cond.preheader.i:                             ; preds = %while.end.i
  %mul4.i = shl nuw nsw i32 %div, 1
  %mul6.i = shl i32 %mul4.i, %p.0.i.lcssa
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %best_m.0104.i = phi i32 [ -1, %for.cond.preheader.i ], [ %best_m.1.i, %for.inc.i.for.body.i_crit_edge ]
  %best_n.0103.i = phi i32 [ -1, %for.cond.preheader.i ], [ %best_n.1.i, %for.inc.i.for.body.i_crit_edge ]
  %best_err.0102.i = phi i32 [ %div, %for.cond.preheader.i ], [ %best_err.1.i, %for.inc.i.for.body.i_crit_edge ]
  %n.0100.i = phi i32 [ 1, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %n.0100.i, 2
  %mul7.i = mul i32 %add.i, %mul6.i
  %div.i = sdiv i32 %mul7.i, 14318
  %sub.i = add nsw i32 %div.i, -4
  %27 = and i32 %div.i, 1
  %div8.i = sdiv i32 %sub.i, 2
  %cond.i = add nsw i32 %div8.i, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %cond.i)
  %cmp11.i = icmp sgt i32 %cond.i, 127
  br i1 %cmp11.i, label %for.body.i.for.end.i_crit_edge, label %if.end13.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end13.i:                                       ; preds = %for.body.i
  %28 = mul nsw i32 %cond.i, 14318
  %mul15.i = add nsw i32 %28, 28636
  %mul18.i = shl i32 %add.i, %p.0.i.lcssa
  %div19.i = sdiv i32 %mul15.i, %mul18.i
  %sub20.i = sub i32 %div19.i, %div
  %29 = tail call i32 @llvm.abs.i32(i32 %sub20.i, i1 false) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %best_err.0102.i)
  %cmp27.i = icmp slt i32 %29, %best_err.0102.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp28.i = icmp sgt i32 %cond.i, 0
  %or.cond99.i = select i1 %cmp27.i, i1 %cmp28.i, i1 false
  br i1 %or.cond99.i, label %if.then29.i, label %if.end13.i.for.inc.i_crit_edge

if.end13.i.for.inc.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then29.i:                                      ; preds = %if.end13.i
  %mul39.i = mul i32 %29, 200
  call void @__sanitizer_cov_trace_cmp4(i32 %mul39.i, i32 %div)
  %cmp40.i = icmp slt i32 %mul39.i, %div
  br i1 %cmp40.i, label %if.then29.i.if.end46.i_crit_edge, label %if.then29.i.for.inc.i_crit_edge

if.then29.i.for.inc.i_crit_edge:                  ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then29.i.if.end46.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

for.inc.i:                                        ; preds = %if.then29.i.for.inc.i_crit_edge, %if.end13.i.for.inc.i_crit_edge
  %best_err.1.i = phi i32 [ %29, %if.then29.i.for.inc.i_crit_edge ], [ %best_err.0102.i, %if.end13.i.for.inc.i_crit_edge ]
  %best_n.1.i = phi i32 [ %n.0100.i, %if.then29.i.for.inc.i_crit_edge ], [ %best_n.0103.i, %if.end13.i.for.inc.i_crit_edge ]
  %best_m.1.i = phi i32 [ %cond.i, %if.then29.i.for.inc.i_crit_edge ], [ %best_m.0104.i, %if.end13.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %n.0100.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %best_n.2.i = phi i32 [ %best_n.0103.i, %for.body.i.for.end.i_crit_edge ], [ %best_n.1.i, %for.inc.i.for.end.i_crit_edge ]
  %best_m.2.i = phi i32 [ %best_m.0104.i, %for.body.i.for.end.i_crit_edge ], [ %best_m.1.i, %for.inc.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_n.2.i)
  %cmp44.i = icmp eq i32 %best_n.2.i, -1
  br i1 %cmp44.i, label %for.end.i.sst_calc_pll.exit_crit_edge, label %for.end.i.if.end46.i_crit_edge

for.end.i.if.end46.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

for.end.i.sst_calc_pll.exit_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sst_calc_pll.exit

if.end46.i:                                       ; preds = %for.end.i.if.end46.i_crit_edge, %if.then29.i.if.end46.i_crit_edge
  %best_m.2109.i = phi i32 [ %best_m.2.i, %for.end.i.if.end46.i_crit_edge ], [ %cond.i, %if.then29.i.if.end46.i_crit_edge ]
  %best_n.2108.i = phi i32 [ %best_n.2.i, %for.end.i.if.end46.i_crit_edge ], [ %n.0100.i, %if.then29.i.if.end46.i_crit_edge ]
  %p47.i = getelementptr inbounds %struct.sstfb_par, ptr %1, i32 0, i32 8, i32 2
  %30 = ptrtoint ptr %p47.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %p.0.i.lcssa, ptr %p47.i, align 4
  %n48.i = getelementptr inbounds %struct.sstfb_par, ptr %1, i32 0, i32 8, i32 1
  %31 = ptrtoint ptr %n48.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %best_n.2108.i, ptr %n48.i, align 4
  %32 = ptrtoint ptr %pll to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %best_m.2109.i, ptr %pll, align 4
  br label %sst_calc_pll.exit

sst_calc_pll.exit:                                ; preds = %if.end46.i, %for.end.i.sst_calc_pll.exit_crit_edge, %while.end.i.sst_calc_pll.exit_crit_edge
  %vmode = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 25
  %33 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vmode, align 4
  %and = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sst_calc_pll.exit.if.end_crit_edge, label %if.then

sst_calc_pll.exit.if.end_crit_edge:               ; preds = %sst_calc_pll.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %sst_calc_pll.exit
  call void @__sanitizer_cov_trace_pc() #13
  %rem = and i32 %23, 1
  %add19 = add i32 %rem, %23
  %35 = ptrtoint ptr %vBackPorch to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add19, ptr %vBackPorch, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sst_calc_pll.exit.if.end_crit_edge
  %36 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vmode, align 4
  %and22 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end.if.end32_crit_edge, label %if.then24

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %vBackPorch to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vBackPorch, align 4
  %shl = shl i32 %39, 1
  store i32 %shl, ptr %vBackPorch, align 4
  %shl27 = shl i32 %12, 1
  %40 = ptrtoint ptr %yDim to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %shl27, ptr %yDim, align 4
  %shl29 = shl i32 %15, 1
  %41 = ptrtoint ptr %vSyncOn to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %shl29, ptr %vSyncOn, align 4
  %shl31 = shl i32 %add12, 1
  %42 = ptrtoint ptr %vSyncOff to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shl31, ptr %vSyncOff, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then24, %if.end.if.end32_crit_edge
  %type = getelementptr inbounds %struct.sstfb_par, ptr %1, i32 0, i32 13
  %43 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp = icmp eq i32 %44, 1
  %45 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %var, align 4
  %add36 = add i32 %46, 63
  %47 = lshr i32 %add36, 5
  %mul = and i32 %47, 134217726
  %div41289 = lshr i32 %add36, 6
  %div41289.sink = select i1 %cmp, i32 %mul, i32 %div41289
  %48 = getelementptr inbounds %struct.sstfb_par, ptr %1, i32 0, i32 9
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %div41289.sink, ptr %48, align 4
  %mmio_vbase = getelementptr inbounds %struct.sstfb_par, ptr %1, i32 0, i32 10
  %50 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i = getelementptr i8, ptr %51, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #11, !srcloc !246
  %52 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio_vbase, align 4
  br label %while.cond.i293

while.cond.i293:                                  ; preds = %while.cond.i293.while.cond.i293_crit_edge, %if.end32
  %count.0.i = phi i32 [ 0, %if.end32 ], [ %count.1.i, %while.cond.i293.while.cond.i293_crit_edge ]
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i291 = add nsw i32 %count.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.inv.i = icmp slt i32 %54, 0
  %count.1.i = select i1 %tobool.not.inv.i, i32 0, i32 %inc.i291
  %cmp.i292 = icmp sgt i32 %count.1.i, 4
  br i1 %cmp.i292, label %__sst_wait_idle.exit, label %while.cond.i293.while.cond.i293_crit_edge

while.cond.i293.while.cond.i293_crit_edge:        ; preds = %while.cond.i293
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i293

__sst_wait_idle.exit:                             ; preds = %while.cond.i293
  %call49 = tail call i32 @pci_write_config_dword(ptr noundef %3, i32 noundef 64, i32 noundef 1) #11
  %55 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr.i.i = getelementptr i8, ptr %56, i32 532
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %58 = or i32 %57, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %58) #11, !srcloc !246
  %59 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr.i.i294 = getelementptr i8, ptr %60, i32 528
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i294) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %62 = or i32 %61, 100663296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i294, i32 %62) #11, !srcloc !246
  %63 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr.i.i296 = getelementptr i8, ptr %64, i32 536
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i296) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %66 = and i32 %65, -16385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i296, i32 %66) #11, !srcloc !246
  %67 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mmio_vbase, align 4
  br label %while.cond.i302

while.cond.i302:                                  ; preds = %while.cond.i302.while.cond.i302_crit_edge, %__sst_wait_idle.exit
  %count.0.i297 = phi i32 [ 0, %__sst_wait_idle.exit ], [ %count.1.i300, %while.cond.i302.while.cond.i302_crit_edge ]
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i298 = add nsw i32 %count.0.i297, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.inv.i299 = icmp slt i32 %69, 0
  %count.1.i300 = select i1 %tobool.not.inv.i299, i32 0, i32 %inc.i298
  %cmp.i301 = icmp sgt i32 %count.1.i300, 4
  br i1 %cmp.i301, label %__sst_wait_idle.exit303, label %while.cond.i302.while.cond.i302_crit_edge

while.cond.i302.while.cond.i302_crit_edge:        ; preds = %while.cond.i302
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i302

__sst_wait_idle.exit303:                          ; preds = %while.cond.i302
  %70 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mmio_vbase, align 4
  %72 = ptrtoint ptr %vBackPorch to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %vBackPorch, align 4
  %shl57 = shl i32 %73, 16
  %74 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %left_margin, align 4
  %sub = add i32 %75, -2
  %or = or i32 %sub, %shl57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %76 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %add.ptr.i304 = getelementptr i8, ptr %71, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i304, i32 %76) #11, !srcloc !246
  %77 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mmio_vbase, align 4
  %79 = ptrtoint ptr %yDim to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %yDim, align 4
  %shl62 = shl i32 %80, 16
  %81 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %var, align 4
  %sub65 = add i32 %82, -1
  %or66 = or i32 %sub65, %shl62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %83 = tail call i32 @llvm.bswap.i32(i32 %or66) #11
  %add.ptr.i305 = getelementptr i8, ptr %78, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i305, i32 %83) #11, !srcloc !246
  %84 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mmio_vbase, align 4
  %86 = ptrtoint ptr %hSyncOff to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %hSyncOff, align 4
  %sub69 = shl i32 %87, 16
  %shl70 = add i32 %sub69, -65536
  %hsync_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 22
  %88 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %hsync_len, align 4
  %sub72 = add i32 %89, -1
  %or73 = or i32 %shl70, %sub72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %90 = tail call i32 @llvm.bswap.i32(i32 %or73) #11
  %add.ptr.i306 = getelementptr i8, ptr %85, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i306, i32 %90) #11, !srcloc !246
  %91 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mmio_vbase, align 4
  %93 = ptrtoint ptr %vSyncOff to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %vSyncOff, align 4
  %shl76 = shl i32 %94, 16
  %95 = ptrtoint ptr %vSyncOn to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %vSyncOn, align 4
  %or78 = or i32 %shl76, %96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %97 = tail call i32 @llvm.bswap.i32(i32 %or78) #11
  %add.ptr.i307 = getelementptr i8, ptr %92, i32 548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i307, i32 %97) #11, !srcloc !246
  %98 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr.i308 = getelementptr i8, ptr %99, i32 536
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i308) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %101 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr.i309 = getelementptr i8, ptr %102, i32 540
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i309) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %call83 = tail call i32 @pci_write_config_dword(ptr noundef %3, i32 noundef 64, i32 noundef 5) #11
  %set_vidmod = getelementptr inbounds %struct.sstfb_par, ptr %1, i32 0, i32 11, i32 3
  %104 = ptrtoint ptr %set_vidmod to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %set_vidmod, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %106 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %bits_per_pixel, align 4
  tail call void %105(ptr noundef %info, i32 noundef %107) #11
  %set_pll = getelementptr inbounds %struct.sstfb_par, ptr %1, i32 0, i32 11, i32 2
  %108 = ptrtoint ptr %set_pll to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %set_pll, align 4
  %call87 = tail call i32 %109(ptr noundef %info, ptr noundef %pll, i32 noundef 0) #11
  %call88 = tail call i32 @pci_write_config_dword(ptr noundef %3, i32 noundef 64, i32 noundef 1) #11
  %110 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i310 = getelementptr i8, ptr %111, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i310, i32 %100) #11, !srcloc !246
  %112 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i311 = getelementptr i8, ptr %113, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i311, i32 %103) #11, !srcloc !246
  %114 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr.i312 = getelementptr i8, ptr %115, i32 532
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i312) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %117 = and i32 %116, 251756672
  %118 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %48, align 4
  %120 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %121)
  %cmp101 = icmp eq i32 %121, 1
  br i1 %cmp101, label %if.then102, label %if.else112

if.then102:                                       ; preds = %__sst_wait_idle.exit303
  call void @__sanitizer_cov_trace_pc() #13
  %122 = shl i32 %119, 19
  %shl104 = and i32 %122, 16777216
  %123 = shl i32 %119, 3
  %shl107 = and i32 %123, 240
  %or108 = or i32 %shl104, %shl107
  %124 = shl i32 %119, 6
  %phi.bo = and i32 %124, 64
  br label %if.end115

if.else112:                                       ; preds = %__sst_wait_idle.exit303
  call void @__sanitizer_cov_trace_pc() #13
  %shl113 = shl i32 %119, 4
  br label %if.end115

if.end115:                                        ; preds = %if.else112, %if.then102
  %fbiinit6.0 = phi i32 [ %phi.bo, %if.then102 ], [ 0, %if.else112 ]
  %or108.pn = phi i32 [ %or108, %if.then102 ], [ %shl113, %if.else112 ]
  %125 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %126)
  %cond = icmp eq i32 %126, 16
  br i1 %cond, label %sw.bb, label %if.end115.cleanup_crit_edge

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end115
  %127 = or i32 %117, 14688512
  %128 = call i32 @llvm.bswap.i32(i32 %127)
  %or118 = or i32 %128, %or108.pn
  %129 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %131 = tail call i32 @llvm.bswap.i32(i32 %or118) #11
  %add.ptr.i313 = getelementptr i8, ptr %130, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i313, i32 %131) #11, !srcloc !246
  %132 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %133)
  %cmp121 = icmp eq i32 %133, 1
  br i1 %cmp121, label %if.then122, label %sw.bb.if.end155_crit_edge

sw.bb.if.end155_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end155

if.then122:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %134 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i314 = getelementptr i8, ptr %135, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i314, i32 %fbiinit6.0) #11, !srcloc !246
  %136 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr.i315 = getelementptr i8, ptr %137, i32 580
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i315) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %139 = and i32 %138, -48902
  %140 = tail call i32 @llvm.bswap.i32(i32 %139)
  %141 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %vmode, align 4
  %and129 = shl i32 %142, 26
  %143 = and i32 %and129, 67108864
  %144 = or i32 %143, %140
  %and136 = shl i32 %142, 20
  %145 = and i32 %and136, 2097152
  %146 = or i32 %144, %145
  %sync = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 24
  %147 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %sync, align 4
  %and142 = shl i32 %148, 23
  %149 = and i32 %and142, 8388608
  %150 = or i32 %146, %149
  %151 = and i32 %and142, 16777216
  %152 = or i32 %150, %151
  %153 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %155 = tail call i32 @llvm.bswap.i32(i32 %152) #11
  %add.ptr.i316 = getelementptr i8, ptr %154, i32 580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i316, i32 %155) #11, !srcloc !246
  br label %if.end155

if.end155:                                        ; preds = %if.then122, %sw.bb.if.end155_crit_edge
  %156 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %mmio_vbase, align 4
  br label %while.cond.i322

while.cond.i322:                                  ; preds = %while.cond.i322.while.cond.i322_crit_edge, %if.end155
  %count.0.i317 = phi i32 [ 0, %if.end155 ], [ %count.1.i320, %while.cond.i322.while.cond.i322_crit_edge ]
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %157) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i318 = add nsw i32 %count.0.i317, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool.not.inv.i319 = icmp slt i32 %158, 0
  %count.1.i320 = select i1 %tobool.not.inv.i319, i32 0, i32 %inc.i318
  %cmp.i321 = icmp sgt i32 %count.1.i320, 4
  br i1 %cmp.i321, label %__sst_wait_idle.exit323, label %while.cond.i322.while.cond.i322_crit_edge

while.cond.i322.while.cond.i322_crit_edge:        ; preds = %while.cond.i322
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i322

__sst_wait_idle.exit323:                          ; preds = %while.cond.i322
  %159 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr.i.i324 = getelementptr i8, ptr %160, i32 532
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i324) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %162 = and i32 %161, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i324, i32 %162) #11, !srcloc !246
  %163 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr.i.i326 = getelementptr i8, ptr %164, i32 528
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i326) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %166 = and i32 %165, -100663297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i326, i32 %166) #11, !srcloc !246
  %167 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr.i.i328 = getelementptr i8, ptr %168, i32 536
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i328) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %170 = or i32 %169, 16384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i328, i32 %170) #11, !srcloc !246
  %call161 = tail call i32 @pci_write_config_dword(ptr noundef %3, i32 noundef 64, i32 noundef 2) #11
  %171 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %172)
  %cond191 = icmp eq i32 %172, 16
  br i1 %cond191, label %sw.bb164, label %__sst_wait_idle.exit323.cleanup_crit_edge

__sst_wait_idle.exit323.cleanup_crit_edge:        ; preds = %__sst_wait_idle.exit323
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb164:                                         ; preds = %__sst_wait_idle.exit323
  %173 = load i8, ptr @clipping, align 1, !range !247
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool168.not = icmp eq i8 %173, 0
  %174 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %add.ptr.i335 = getelementptr i8, ptr %175, i32 276
  br i1 %tobool168.not, label %if.else179, label %if.then169

if.then169:                                       ; preds = %sw.bb164
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i335, i32 10027264) #11, !srcloc !246
  %176 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %mmio_vbase, align 4
  %178 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %var, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %180 = tail call i32 @llvm.bswap.i32(i32 %179) #11
  %add.ptr.i331 = getelementptr i8, ptr %177, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i331, i32 %180) #11, !srcloc !246
  %181 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %mmio_vbase, align 4
  %183 = ptrtoint ptr %yDim to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %yDim, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %185 = tail call i32 @llvm.bswap.i32(i32 %184) #11
  %add.ptr.i332 = getelementptr i8, ptr %182, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i332, i32 %185) #11, !srcloc !246
  %186 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr.i.i333 = getelementptr i8, ptr %187, i32 272
  %188 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i333) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %189 = or i32 %188, 16908288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i333, i32 %189) #11, !srcloc !246
  br label %cleanup

if.else179:                                       ; preds = %sw.bb164
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i335, i32 9961728) #11, !srcloc !246
  br label %cleanup

cleanup:                                          ; preds = %if.else179, %if.then169, %__sst_wait_idle.exit323.cleanup_crit_edge, %if.end115.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end115.cleanup_crit_edge ], [ -22, %__sst_wait_idle.exit323.cleanup_crit_edge ], [ 0, %if.else179 ], [ 0, %if.then169 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sst_detect_ti(ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %mmio_vbase = getelementptr inbounds %struct.sstfb_par, ptr %1, i32 0, i32 10
  br label %for.body

for.cond:                                         ; preds = %__sst_dac_read.exit97
  %inc = add nuw nsw i32 %i.099, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.099 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %2 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #11, !srcloc !246
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %for.body
  %count.0.i.i = phi i32 [ 0, %for.body ], [ %count.1.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i = add nsw i32 %count.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.inv.i.i = icmp slt i32 %4, 0
  %count.1.i.i = select i1 %tobool.not.inv.i.i, i32 0, i32 %inc.i.i
  %cmp.i.i = icmp sgt i32 %count.1.i.i, 4
  br i1 %cmp.i.i, label %__sst_dac_write.exit, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i

__sst_dac_write.exit:                             ; preds = %while.cond.i.i
  %5 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i31 = getelementptr i8, ptr %6, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i31, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i37

while.cond.i.i37:                                 ; preds = %while.cond.i.i37.while.cond.i.i37_crit_edge, %__sst_dac_write.exit
  %count.0.i.i32 = phi i32 [ 0, %__sst_dac_write.exit ], [ %count.1.i.i35, %while.cond.i.i37.while.cond.i.i37_crit_edge ]
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i33 = add nsw i32 %count.0.i.i32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.inv.i.i34 = icmp slt i32 %7, 0
  %count.1.i.i35 = select i1 %tobool.not.inv.i.i34, i32 0, i32 %inc.i.i33
  %cmp.i.i36 = icmp sgt i32 %count.1.i.i35, 4
  br i1 %cmp.i.i36, label %__sst_dac_read.exit, label %while.cond.i.i37.while.cond.i.i37_crit_edge

while.cond.i.i37.while.cond.i.i37_crit_edge:      ; preds = %while.cond.i.i37
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i37

__sst_dac_read.exit:                              ; preds = %while.cond.i.i37
  %add.ptr.i9.i = getelementptr i8, ptr %6, i32 536
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %9 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i38 = getelementptr i8, ptr %10, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i38, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i44

while.cond.i.i44:                                 ; preds = %while.cond.i.i44.while.cond.i.i44_crit_edge, %__sst_dac_read.exit
  %count.0.i.i39 = phi i32 [ 0, %__sst_dac_read.exit ], [ %count.1.i.i42, %while.cond.i.i44.while.cond.i.i44_crit_edge ]
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i40 = add nsw i32 %count.0.i.i39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.inv.i.i41 = icmp slt i32 %11, 0
  %count.1.i.i42 = select i1 %tobool.not.inv.i.i41, i32 0, i32 %inc.i.i40
  %cmp.i.i43 = icmp sgt i32 %count.1.i.i42, 4
  br i1 %cmp.i.i43, label %__sst_dac_read.exit47, label %while.cond.i.i44.while.cond.i.i44_crit_edge

while.cond.i.i44.while.cond.i.i44_crit_edge:      ; preds = %while.cond.i.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i44

__sst_dac_read.exit47:                            ; preds = %while.cond.i.i44
  %add.ptr.i9.i45 = getelementptr i8, ptr %10, i32 536
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i45) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %13 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i48 = getelementptr i8, ptr %14, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i48, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i54

while.cond.i.i54:                                 ; preds = %while.cond.i.i54.while.cond.i.i54_crit_edge, %__sst_dac_read.exit47
  %count.0.i.i49 = phi i32 [ 0, %__sst_dac_read.exit47 ], [ %count.1.i.i52, %while.cond.i.i54.while.cond.i.i54_crit_edge ]
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i50 = add nsw i32 %count.0.i.i49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.inv.i.i51 = icmp slt i32 %15, 0
  %count.1.i.i52 = select i1 %tobool.not.inv.i.i51, i32 0, i32 %inc.i.i50
  %cmp.i.i53 = icmp sgt i32 %count.1.i.i52, 4
  br i1 %cmp.i.i53, label %__sst_dac_read.exit57, label %while.cond.i.i54.while.cond.i.i54_crit_edge

while.cond.i.i54.while.cond.i.i54_crit_edge:      ; preds = %while.cond.i.i54
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i54

__sst_dac_read.exit57:                            ; preds = %while.cond.i.i54
  %add.ptr.i9.i55 = getelementptr i8, ptr %14, i32 536
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i55) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %17 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i58 = getelementptr i8, ptr %18, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i58, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i64

while.cond.i.i64:                                 ; preds = %while.cond.i.i64.while.cond.i.i64_crit_edge, %__sst_dac_read.exit57
  %count.0.i.i59 = phi i32 [ 0, %__sst_dac_read.exit57 ], [ %count.1.i.i62, %while.cond.i.i64.while.cond.i.i64_crit_edge ]
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i60 = add nsw i32 %count.0.i.i59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.inv.i.i61 = icmp slt i32 %19, 0
  %count.1.i.i62 = select i1 %tobool.not.inv.i.i61, i32 0, i32 %inc.i.i60
  %cmp.i.i63 = icmp sgt i32 %count.1.i.i62, 4
  br i1 %cmp.i.i63, label %__sst_dac_read.exit67, label %while.cond.i.i64.while.cond.i.i64_crit_edge

while.cond.i.i64.while.cond.i.i64_crit_edge:      ; preds = %while.cond.i.i64
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i64

__sst_dac_read.exit67:                            ; preds = %while.cond.i.i64
  %add.ptr.i9.i65 = getelementptr i8, ptr %18, i32 536
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i65) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %21 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i68 = getelementptr i8, ptr %22, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i68, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i74

while.cond.i.i74:                                 ; preds = %while.cond.i.i74.while.cond.i.i74_crit_edge, %__sst_dac_read.exit67
  %count.0.i.i69 = phi i32 [ 0, %__sst_dac_read.exit67 ], [ %count.1.i.i72, %while.cond.i.i74.while.cond.i.i74_crit_edge ]
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i70 = add nsw i32 %count.0.i.i69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.inv.i.i71 = icmp slt i32 %23, 0
  %count.1.i.i72 = select i1 %tobool.not.inv.i.i71, i32 0, i32 %inc.i.i70
  %cmp.i.i73 = icmp sgt i32 %count.1.i.i72, 4
  br i1 %cmp.i.i73, label %__sst_dac_read.exit77, label %while.cond.i.i74.while.cond.i.i74_crit_edge

while.cond.i.i74.while.cond.i.i74_crit_edge:      ; preds = %while.cond.i.i74
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i74

__sst_dac_read.exit77:                            ; preds = %while.cond.i.i74
  %add.ptr.i9.i75 = getelementptr i8, ptr %22, i32 536
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i75) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %25 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i78 = getelementptr i8, ptr %26, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i78, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i84

while.cond.i.i84:                                 ; preds = %while.cond.i.i84.while.cond.i.i84_crit_edge, %__sst_dac_read.exit77
  %count.0.i.i79 = phi i32 [ 0, %__sst_dac_read.exit77 ], [ %count.1.i.i82, %while.cond.i.i84.while.cond.i.i84_crit_edge ]
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i80 = add nsw i32 %count.0.i.i79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.inv.i.i81 = icmp slt i32 %27, 0
  %count.1.i.i82 = select i1 %tobool.not.inv.i.i81, i32 0, i32 %inc.i.i80
  %cmp.i.i83 = icmp sgt i32 %count.1.i.i82, 4
  br i1 %cmp.i.i83, label %__sst_dac_read.exit87, label %while.cond.i.i84.while.cond.i.i84_crit_edge

while.cond.i.i84.while.cond.i.i84_crit_edge:      ; preds = %while.cond.i.i84
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i84

__sst_dac_read.exit87:                            ; preds = %while.cond.i.i84
  %add.ptr.i9.i85 = getelementptr i8, ptr %26, i32 536
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i85) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %29 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i88 = getelementptr i8, ptr %30, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i88, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i94

while.cond.i.i94:                                 ; preds = %while.cond.i.i94.while.cond.i.i94_crit_edge, %__sst_dac_read.exit87
  %count.0.i.i89 = phi i32 [ 0, %__sst_dac_read.exit87 ], [ %count.1.i.i92, %while.cond.i.i94.while.cond.i.i94_crit_edge ]
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i90 = add nsw i32 %count.0.i.i89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.inv.i.i91 = icmp slt i32 %31, 0
  %count.1.i.i92 = select i1 %tobool.not.inv.i.i91, i32 0, i32 %inc.i.i90
  %cmp.i.i93 = icmp sgt i32 %count.1.i.i92, 4
  br i1 %cmp.i.i93, label %__sst_dac_read.exit97, label %while.cond.i.i94.while.cond.i.i94_crit_edge

while.cond.i.i94.while.cond.i.i94_crit_edge:      ; preds = %while.cond.i.i94
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i94

__sst_dac_read.exit97:                            ; preds = %while.cond.i.i94
  %add.ptr.i9.i95 = getelementptr i8, ptr %30, i32 536
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i95) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %.mask = and i32 %28, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1761607680, i32 %.mask)
  %cmp16 = icmp eq i32 %.mask, -1761607680
  %.mask98 = and i32 %32, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 150994944, i32 %.mask98)
  %cmp18 = icmp eq i32 %.mask98, 150994944
  %or.cond = select i1 %cmp16, i1 %cmp18, i1 false
  br i1 %or.cond, label %__sst_dac_read.exit97.cleanup_crit_edge, label %for.cond

__sst_dac_read.exit97.cleanup_crit_edge:          ; preds = %__sst_dac_read.exit97
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %__sst_dac_read.exit97.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %__sst_dac_read.exit97.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sst_set_pll_att_ti(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %t, i32 noundef %clock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %mmio_vbase = getelementptr inbounds %struct.sstfb_par, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #11, !srcloc !246
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %entry
  %count.0.i.i = phi i32 [ 0, %entry ], [ %count.1.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i = add nsw i32 %count.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.inv.i.i = icmp slt i32 %4, 0
  %count.1.i.i = select i1 %tobool.not.inv.i.i, i32 0, i32 %inc.i.i
  %cmp.i.i = icmp sgt i32 %count.1.i.i, 4
  br i1 %cmp.i.i, label %__sst_dac_write.exit, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i

__sst_dac_write.exit:                             ; preds = %while.cond.i.i
  %5 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i87 = getelementptr i8, ptr %6, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i87, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i93

while.cond.i.i93:                                 ; preds = %while.cond.i.i93.while.cond.i.i93_crit_edge, %__sst_dac_write.exit
  %count.0.i.i88 = phi i32 [ 0, %__sst_dac_write.exit ], [ %count.1.i.i91, %while.cond.i.i93.while.cond.i.i93_crit_edge ]
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i89 = add nsw i32 %count.0.i.i88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.inv.i.i90 = icmp slt i32 %7, 0
  %count.1.i.i91 = select i1 %tobool.not.inv.i.i90, i32 0, i32 %inc.i.i89
  %cmp.i.i92 = icmp sgt i32 %count.1.i.i91, 4
  br i1 %cmp.i.i92, label %__sst_dac_read.exit, label %while.cond.i.i93.while.cond.i.i93_crit_edge

while.cond.i.i93.while.cond.i.i93_crit_edge:      ; preds = %while.cond.i.i93
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i93

__sst_dac_read.exit:                              ; preds = %while.cond.i.i93
  %add.ptr.i9.i = getelementptr i8, ptr %6, i32 536
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %9 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i94 = getelementptr i8, ptr %10, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i94, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i100

while.cond.i.i100:                                ; preds = %while.cond.i.i100.while.cond.i.i100_crit_edge, %__sst_dac_read.exit
  %count.0.i.i95 = phi i32 [ 0, %__sst_dac_read.exit ], [ %count.1.i.i98, %while.cond.i.i100.while.cond.i.i100_crit_edge ]
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i96 = add nsw i32 %count.0.i.i95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.inv.i.i97 = icmp slt i32 %11, 0
  %count.1.i.i98 = select i1 %tobool.not.inv.i.i97, i32 0, i32 %inc.i.i96
  %cmp.i.i99 = icmp sgt i32 %count.1.i.i98, 4
  br i1 %cmp.i.i99, label %__sst_dac_read.exit103, label %while.cond.i.i100.while.cond.i.i100_crit_edge

while.cond.i.i100.while.cond.i.i100_crit_edge:    ; preds = %while.cond.i.i100
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i100

__sst_dac_read.exit103:                           ; preds = %while.cond.i.i100
  %add.ptr.i9.i101 = getelementptr i8, ptr %10, i32 536
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i101) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %13 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i104 = getelementptr i8, ptr %14, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i104, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i110

while.cond.i.i110:                                ; preds = %while.cond.i.i110.while.cond.i.i110_crit_edge, %__sst_dac_read.exit103
  %count.0.i.i105 = phi i32 [ 0, %__sst_dac_read.exit103 ], [ %count.1.i.i108, %while.cond.i.i110.while.cond.i.i110_crit_edge ]
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i106 = add nsw i32 %count.0.i.i105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.inv.i.i107 = icmp slt i32 %15, 0
  %count.1.i.i108 = select i1 %tobool.not.inv.i.i107, i32 0, i32 %inc.i.i106
  %cmp.i.i109 = icmp sgt i32 %count.1.i.i108, 4
  br i1 %cmp.i.i109, label %__sst_dac_read.exit113, label %while.cond.i.i110.while.cond.i.i110_crit_edge

while.cond.i.i110.while.cond.i.i110_crit_edge:    ; preds = %while.cond.i.i110
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i110

__sst_dac_read.exit113:                           ; preds = %while.cond.i.i110
  %add.ptr.i9.i111 = getelementptr i8, ptr %14, i32 536
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i111) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %17 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i114 = getelementptr i8, ptr %18, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i114, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i120

while.cond.i.i120:                                ; preds = %while.cond.i.i120.while.cond.i.i120_crit_edge, %__sst_dac_read.exit113
  %count.0.i.i115 = phi i32 [ 0, %__sst_dac_read.exit113 ], [ %count.1.i.i118, %while.cond.i.i120.while.cond.i.i120_crit_edge ]
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i116 = add nsw i32 %count.0.i.i115, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.inv.i.i117 = icmp slt i32 %19, 0
  %count.1.i.i118 = select i1 %tobool.not.inv.i.i117, i32 0, i32 %inc.i.i116
  %cmp.i.i119 = icmp sgt i32 %count.1.i.i118, 4
  br i1 %cmp.i.i119, label %__sst_dac_read.exit123, label %while.cond.i.i120.while.cond.i.i120_crit_edge

while.cond.i.i120.while.cond.i.i120_crit_edge:    ; preds = %while.cond.i.i120
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i120

__sst_dac_read.exit123:                           ; preds = %while.cond.i.i120
  %add.ptr.i9.i121 = getelementptr i8, ptr %18, i32 536
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i121) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %21 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i124 = getelementptr i8, ptr %22, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i124, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i130

while.cond.i.i130:                                ; preds = %while.cond.i.i130.while.cond.i.i130_crit_edge, %__sst_dac_read.exit123
  %count.0.i.i125 = phi i32 [ 0, %__sst_dac_read.exit123 ], [ %count.1.i.i128, %while.cond.i.i130.while.cond.i.i130_crit_edge ]
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i126 = add nsw i32 %count.0.i.i125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.inv.i.i127 = icmp slt i32 %23, 0
  %count.1.i.i128 = select i1 %tobool.not.inv.i.i127, i32 0, i32 %inc.i.i126
  %cmp.i.i129 = icmp sgt i32 %count.1.i.i128, 4
  br i1 %cmp.i.i129, label %__sst_dac_read.exit133, label %while.cond.i.i130.while.cond.i.i130_crit_edge

while.cond.i.i130.while.cond.i.i130_crit_edge:    ; preds = %while.cond.i.i130
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i130

__sst_dac_read.exit133:                           ; preds = %while.cond.i.i130
  %add.ptr.i9.i131 = getelementptr i8, ptr %22, i32 536
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i131) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %25 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i134 = getelementptr i8, ptr %26, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i134, i32 0) #11, !srcloc !246
  br label %while.cond.i.i140

while.cond.i.i140:                                ; preds = %while.cond.i.i140.while.cond.i.i140_crit_edge, %__sst_dac_read.exit133
  %count.0.i.i135 = phi i32 [ 0, %__sst_dac_read.exit133 ], [ %count.1.i.i138, %while.cond.i.i140.while.cond.i.i140_crit_edge ]
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i136 = add nsw i32 %count.0.i.i135, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.inv.i.i137 = icmp slt i32 %27, 0
  %count.1.i.i138 = select i1 %tobool.not.inv.i.i137, i32 0, i32 %inc.i.i136
  %cmp.i.i139 = icmp sgt i32 %count.1.i.i138, 4
  br i1 %cmp.i.i139, label %__sst_dac_write.exit141, label %while.cond.i.i140.while.cond.i.i140_crit_edge

while.cond.i.i140.while.cond.i.i140_crit_edge:    ; preds = %while.cond.i.i140
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i140

__sst_dac_write.exit141:                          ; preds = %while.cond.i.i140
  %28 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i142 = getelementptr i8, ptr %29, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i142, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i148

while.cond.i.i148:                                ; preds = %while.cond.i.i148.while.cond.i.i148_crit_edge, %__sst_dac_write.exit141
  %count.0.i.i143 = phi i32 [ 0, %__sst_dac_write.exit141 ], [ %count.1.i.i146, %while.cond.i.i148.while.cond.i.i148_crit_edge ]
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i144 = add nsw i32 %count.0.i.i143, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.inv.i.i145 = icmp slt i32 %30, 0
  %count.1.i.i146 = select i1 %tobool.not.inv.i.i145, i32 0, i32 %inc.i.i144
  %cmp.i.i147 = icmp sgt i32 %count.1.i.i146, 4
  br i1 %cmp.i.i147, label %__sst_dac_read.exit151, label %while.cond.i.i148.while.cond.i.i148_crit_edge

while.cond.i.i148.while.cond.i.i148_crit_edge:    ; preds = %while.cond.i.i148
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i148

__sst_dac_read.exit151:                           ; preds = %while.cond.i.i148
  %add.ptr.i9.i149 = getelementptr i8, ptr %29, i32 536
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i149) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %32 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i152 = getelementptr i8, ptr %33, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i152, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i158

while.cond.i.i158:                                ; preds = %while.cond.i.i158.while.cond.i.i158_crit_edge, %__sst_dac_read.exit151
  %count.0.i.i153 = phi i32 [ 0, %__sst_dac_read.exit151 ], [ %count.1.i.i156, %while.cond.i.i158.while.cond.i.i158_crit_edge ]
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i154 = add nsw i32 %count.0.i.i153, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.inv.i.i155 = icmp slt i32 %34, 0
  %count.1.i.i156 = select i1 %tobool.not.inv.i.i155, i32 0, i32 %inc.i.i154
  %cmp.i.i157 = icmp sgt i32 %count.1.i.i156, 4
  br i1 %cmp.i.i157, label %__sst_dac_read.exit161, label %while.cond.i.i158.while.cond.i.i158_crit_edge

while.cond.i.i158.while.cond.i.i158_crit_edge:    ; preds = %while.cond.i.i158
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i158

__sst_dac_read.exit161:                           ; preds = %while.cond.i.i158
  %add.ptr.i9.i159 = getelementptr i8, ptr %33, i32 536
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i159) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %36 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i162 = getelementptr i8, ptr %37, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i162, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i168

while.cond.i.i168:                                ; preds = %while.cond.i.i168.while.cond.i.i168_crit_edge, %__sst_dac_read.exit161
  %count.0.i.i163 = phi i32 [ 0, %__sst_dac_read.exit161 ], [ %count.1.i.i166, %while.cond.i.i168.while.cond.i.i168_crit_edge ]
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i164 = add nsw i32 %count.0.i.i163, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.inv.i.i165 = icmp slt i32 %38, 0
  %count.1.i.i166 = select i1 %tobool.not.inv.i.i165, i32 0, i32 %inc.i.i164
  %cmp.i.i167 = icmp sgt i32 %count.1.i.i166, 4
  br i1 %cmp.i.i167, label %__sst_dac_read.exit171, label %while.cond.i.i168.while.cond.i.i168_crit_edge

while.cond.i.i168.while.cond.i.i168_crit_edge:    ; preds = %while.cond.i.i168
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i168

__sst_dac_read.exit171:                           ; preds = %while.cond.i.i168
  %add.ptr.i9.i169 = getelementptr i8, ptr %37, i32 536
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i169) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %40 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i172 = getelementptr i8, ptr %41, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i172, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i178

while.cond.i.i178:                                ; preds = %while.cond.i.i178.while.cond.i.i178_crit_edge, %__sst_dac_read.exit171
  %count.0.i.i173 = phi i32 [ 0, %__sst_dac_read.exit171 ], [ %count.1.i.i176, %while.cond.i.i178.while.cond.i.i178_crit_edge ]
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i174 = add nsw i32 %count.0.i.i173, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.inv.i.i175 = icmp slt i32 %42, 0
  %count.1.i.i176 = select i1 %tobool.not.inv.i.i175, i32 0, i32 %inc.i.i174
  %cmp.i.i177 = icmp sgt i32 %count.1.i.i176, 4
  br i1 %cmp.i.i177, label %__sst_dac_read.exit181, label %while.cond.i.i178.while.cond.i.i178_crit_edge

while.cond.i.i178.while.cond.i.i178_crit_edge:    ; preds = %while.cond.i.i178
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i178

__sst_dac_read.exit181:                           ; preds = %while.cond.i.i178
  %43 = lshr i32 %24, 24
  %add.ptr.i9.i179 = getelementptr i8, ptr %41, i32 536
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i179) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %45 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmio_vbase, align 4
  %and = and i32 %43, 240
  %or.i = or i32 %and, 523
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %47 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %add.ptr.i.i182 = getelementptr i8, ptr %46, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i182, i32 %47) #11, !srcloc !246
  br label %while.cond.i.i188

while.cond.i.i188:                                ; preds = %while.cond.i.i188.while.cond.i.i188_crit_edge, %__sst_dac_read.exit181
  %count.0.i.i183 = phi i32 [ 0, %__sst_dac_read.exit181 ], [ %count.1.i.i186, %while.cond.i.i188.while.cond.i.i188_crit_edge ]
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i184 = add nsw i32 %count.0.i.i183, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.inv.i.i185 = icmp slt i32 %48, 0
  %count.1.i.i186 = select i1 %tobool.not.inv.i.i185, i32 0, i32 %inc.i.i184
  %cmp.i.i187 = icmp sgt i32 %count.1.i.i186, 4
  br i1 %cmp.i.i187, label %__sst_dac_write.exit189, label %while.cond.i.i188.while.cond.i.i188_crit_edge

while.cond.i.i188.while.cond.i.i188_crit_edge:    ; preds = %while.cond.i.i188
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i188

__sst_dac_write.exit189:                          ; preds = %while.cond.i.i188
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 64424400) #11
  %50 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i.i = getelementptr i8, ptr %51, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 100663296) #11, !srcloc !246
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.cond.i.i.i.while.cond.i.i.i_crit_edge, %__sst_dac_write.exit189
  %count.0.i.i.i = phi i32 [ 0, %__sst_dac_write.exit189 ], [ %count.1.i.i.i, %while.cond.i.i.i.while.cond.i.i.i_crit_edge ]
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i.i = add nsw i32 %count.0.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.inv.i.i.i = icmp slt i32 %52, 0
  %count.1.i.i.i = select i1 %tobool.not.inv.i.i.i, i32 0, i32 %inc.i.i.i
  %cmp.i.i.i = icmp sgt i32 %count.1.i.i.i, 4
  br i1 %cmp.i.i.i, label %__sst_dac_write.exit.i, label %while.cond.i.i.i.while.cond.i.i.i_crit_edge

while.cond.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i.i

__sst_dac_write.exit.i:                           ; preds = %while.cond.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i7.i

while.cond.i.i7.i:                                ; preds = %while.cond.i.i7.i.while.cond.i.i7.i_crit_edge, %__sst_dac_write.exit.i
  %count.0.i.i2.i = phi i32 [ 0, %__sst_dac_write.exit.i ], [ %count.1.i.i5.i, %while.cond.i.i7.i.while.cond.i.i7.i_crit_edge ]
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i3.i = add nsw i32 %count.0.i.i2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.inv.i.i4.i = icmp slt i32 %53, 0
  %count.1.i.i5.i = select i1 %tobool.not.inv.i.i4.i, i32 0, i32 %inc.i.i3.i
  %cmp.i.i6.i = icmp sgt i32 %count.1.i.i5.i, 4
  br i1 %cmp.i.i6.i, label %__dac_i_read.exit, label %while.cond.i.i7.i.while.cond.i.i7.i_crit_edge

while.cond.i.i7.i.while.cond.i.i7.i_crit_edge:    ; preds = %while.cond.i.i7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i7.i

__dac_i_read.exit:                                ; preds = %while.cond.i.i7.i
  %add.ptr.i9.i.i = getelementptr i8, ptr %51, i32 536
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i.i) #11, !srcloc !243
  %55 = lshr i32 %54, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %56 = zext i32 %clock to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values)
  switch i32 %clock, label %__dac_i_read.exit.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb38
  ]

__dac_i_read.exit.cleanup_crit_edge:              ; preds = %__dac_i_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %__dac_i_read.exit
  %57 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mmio_vbase, align 4
  %59 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %t, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i.i190 = getelementptr i8, ptr %58, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i190, i32 1207959552) #11, !srcloc !246
  br label %while.cond.i.i.i196

while.cond.i.i.i196:                              ; preds = %while.cond.i.i.i196.while.cond.i.i.i196_crit_edge, %sw.bb
  %count.0.i.i.i191 = phi i32 [ 0, %sw.bb ], [ %count.1.i.i.i194, %while.cond.i.i.i196.while.cond.i.i.i196_crit_edge ]
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i.i192 = add nsw i32 %count.0.i.i.i191, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.inv.i.i.i193 = icmp slt i32 %61, 0
  %count.1.i.i.i194 = select i1 %tobool.not.inv.i.i.i193, i32 0, i32 %inc.i.i.i192
  %cmp.i.i.i195 = icmp sgt i32 %count.1.i.i.i194, 4
  br i1 %cmp.i.i.i195, label %__sst_dac_write.exit.i197, label %while.cond.i.i.i196.while.cond.i.i.i196_crit_edge

while.cond.i.i.i196.while.cond.i.i.i196_crit_edge: ; preds = %while.cond.i.i.i196
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i.i196

__sst_dac_write.exit.i197:                        ; preds = %while.cond.i.i.i196
  %conv3.i2.i = and i32 %60, 255
  %or.i.i = or i32 %conv3.i2.i, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %62 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i190, i32 %62) #11, !srcloc !246
  br label %while.cond.i.i9.i

while.cond.i.i9.i:                                ; preds = %while.cond.i.i9.i.while.cond.i.i9.i_crit_edge, %__sst_dac_write.exit.i197
  %count.0.i.i4.i = phi i32 [ 0, %__sst_dac_write.exit.i197 ], [ %count.1.i.i7.i, %while.cond.i.i9.i.while.cond.i.i9.i_crit_edge ]
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i5.i = add nsw i32 %count.0.i.i4.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.inv.i.i6.i = icmp slt i32 %63, 0
  %count.1.i.i7.i = select i1 %tobool.not.inv.i.i6.i, i32 0, i32 %inc.i.i5.i
  %cmp.i.i8.i = icmp sgt i32 %count.1.i.i7.i, 4
  br i1 %cmp.i.i8.i, label %__dac_i_write.exit, label %while.cond.i.i9.i.while.cond.i.i9.i_crit_edge

while.cond.i.i9.i.while.cond.i.i9.i_crit_edge:    ; preds = %while.cond.i.i9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i9.i

__dac_i_write.exit:                               ; preds = %while.cond.i.i9.i
  %64 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio_vbase, align 4
  %p = getelementptr inbounds %struct.pll_timing, ptr %t, i32 0, i32 2
  %66 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %p, align 4
  %n = getelementptr inbounds %struct.pll_timing, ptr %t, i32 0, i32 1
  %68 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %n, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i.i198 = getelementptr i8, ptr %65, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i198, i32 1224736768) #11, !srcloc !246
  br label %while.cond.i.i.i204

while.cond.i.i.i204:                              ; preds = %while.cond.i.i.i204.while.cond.i.i.i204_crit_edge, %__dac_i_write.exit
  %count.0.i.i.i199 = phi i32 [ 0, %__dac_i_write.exit ], [ %count.1.i.i.i202, %while.cond.i.i.i204.while.cond.i.i.i204_crit_edge ]
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i.i200 = add nsw i32 %count.0.i.i.i199, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.inv.i.i.i201 = icmp slt i32 %70, 0
  %count.1.i.i.i202 = select i1 %tobool.not.inv.i.i.i201, i32 0, i32 %inc.i.i.i200
  %cmp.i.i.i203 = icmp sgt i32 %count.1.i.i.i202, 4
  br i1 %cmp.i.i.i203, label %__sst_dac_write.exit.i207, label %while.cond.i.i.i204.while.cond.i.i.i204_crit_edge

while.cond.i.i.i204.while.cond.i.i.i204_crit_edge: ; preds = %while.cond.i.i.i204
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i.i204

__sst_dac_write.exit.i207:                        ; preds = %while.cond.i.i.i204
  %shl = shl i32 %67, 6
  %or30 = or i32 %shl, %69
  %conv3.i2.i205 = and i32 %or30, 255
  %or.i.i206 = or i32 %conv3.i2.i205, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %71 = tail call i32 @llvm.bswap.i32(i32 %or.i.i206) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i198, i32 %71) #11, !srcloc !246
  br label %while.cond.i.i9.i213

while.cond.i.i9.i213:                             ; preds = %while.cond.i.i9.i213.while.cond.i.i9.i213_crit_edge, %__sst_dac_write.exit.i207
  %count.0.i.i4.i208 = phi i32 [ 0, %__sst_dac_write.exit.i207 ], [ %count.1.i.i7.i211, %while.cond.i.i9.i213.while.cond.i.i9.i213_crit_edge ]
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i5.i209 = add nsw i32 %count.0.i.i4.i208, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.inv.i.i6.i210 = icmp slt i32 %72, 0
  %count.1.i.i7.i211 = select i1 %tobool.not.inv.i.i6.i210, i32 0, i32 %inc.i.i5.i209
  %cmp.i.i8.i212 = icmp sgt i32 %count.1.i.i7.i211, 4
  br i1 %cmp.i.i8.i212, label %__dac_i_write.exit214, label %while.cond.i.i9.i213.while.cond.i.i9.i213_crit_edge

while.cond.i.i9.i213.while.cond.i.i9.i213_crit_edge: ; preds = %while.cond.i.i9.i213
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i9.i213

__dac_i_write.exit214:                            ; preds = %while.cond.i.i9.i213
  %73 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i.i215 = getelementptr i8, ptr %74, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i215, i32 100663296) #11, !srcloc !246
  br label %while.cond.i.i.i221

while.cond.i.i.i221:                              ; preds = %while.cond.i.i.i221.while.cond.i.i.i221_crit_edge, %__dac_i_write.exit214
  %count.0.i.i.i216 = phi i32 [ 0, %__dac_i_write.exit214 ], [ %count.1.i.i.i219, %while.cond.i.i.i221.while.cond.i.i.i221_crit_edge ]
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i.i217 = add nsw i32 %count.0.i.i.i216, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.inv.i.i.i218 = icmp slt i32 %75, 0
  %count.1.i.i.i219 = select i1 %tobool.not.inv.i.i.i218, i32 0, i32 %inc.i.i.i217
  %cmp.i.i.i220 = icmp sgt i32 %count.1.i.i.i219, 4
  br i1 %cmp.i.i.i220, label %__sst_dac_write.exit.i224, label %while.cond.i.i.i221.while.cond.i.i.i221_crit_edge

while.cond.i.i.i221.while.cond.i.i.i221_crit_edge: ; preds = %while.cond.i.i.i221
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i.i221

__sst_dac_write.exit.i224:                        ; preds = %while.cond.i.i.i221
  %76 = and i32 %55, 15
  %or.i.i223 = or i32 %76, 672
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %77 = tail call i32 @llvm.bswap.i32(i32 %or.i.i223) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i215, i32 %77) #11, !srcloc !246
  br label %while.cond.i.i9.i230

while.cond.i.i9.i230:                             ; preds = %while.cond.i.i9.i230.while.cond.i.i9.i230_crit_edge, %__sst_dac_write.exit.i224
  %count.0.i.i4.i225 = phi i32 [ 0, %__sst_dac_write.exit.i224 ], [ %count.1.i.i7.i228, %while.cond.i.i9.i230.while.cond.i.i9.i230_crit_edge ]
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i5.i226 = add nsw i32 %count.0.i.i4.i225, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.inv.i.i6.i227 = icmp slt i32 %78, 0
  %count.1.i.i7.i228 = select i1 %tobool.not.inv.i.i6.i227, i32 0, i32 %inc.i.i5.i226
  %cmp.i.i8.i229 = icmp sgt i32 %count.1.i.i7.i228, 4
  br i1 %cmp.i.i8.i229, label %while.cond.i.i9.i230.sw.epilog_crit_edge, label %while.cond.i.i9.i230.while.cond.i.i9.i230_crit_edge

while.cond.i.i9.i230.while.cond.i.i9.i230_crit_edge: ; preds = %while.cond.i.i9.i230
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i9.i230

while.cond.i.i9.i230.sw.epilog_crit_edge:         ; preds = %while.cond.i.i9.i230
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb38:                                          ; preds = %__dac_i_read.exit
  %79 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mmio_vbase, align 4
  %81 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %t, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i.i232 = getelementptr i8, ptr %80, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i232, i32 1811939328) #11, !srcloc !246
  br label %while.cond.i.i.i238

while.cond.i.i.i238:                              ; preds = %while.cond.i.i.i238.while.cond.i.i.i238_crit_edge, %sw.bb38
  %count.0.i.i.i233 = phi i32 [ 0, %sw.bb38 ], [ %count.1.i.i.i236, %while.cond.i.i.i238.while.cond.i.i.i238_crit_edge ]
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i.i234 = add nsw i32 %count.0.i.i.i233, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not.inv.i.i.i235 = icmp slt i32 %83, 0
  %count.1.i.i.i236 = select i1 %tobool.not.inv.i.i.i235, i32 0, i32 %inc.i.i.i234
  %cmp.i.i.i237 = icmp sgt i32 %count.1.i.i.i236, 4
  br i1 %cmp.i.i.i237, label %__sst_dac_write.exit.i241, label %while.cond.i.i.i238.while.cond.i.i.i238_crit_edge

while.cond.i.i.i238.while.cond.i.i.i238_crit_edge: ; preds = %while.cond.i.i.i238
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i.i238

__sst_dac_write.exit.i241:                        ; preds = %while.cond.i.i.i238
  %conv3.i2.i239 = and i32 %82, 255
  %or.i.i240 = or i32 %conv3.i2.i239, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %84 = tail call i32 @llvm.bswap.i32(i32 %or.i.i240) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i232, i32 %84) #11, !srcloc !246
  br label %while.cond.i.i9.i247

while.cond.i.i9.i247:                             ; preds = %while.cond.i.i9.i247.while.cond.i.i9.i247_crit_edge, %__sst_dac_write.exit.i241
  %count.0.i.i4.i242 = phi i32 [ 0, %__sst_dac_write.exit.i241 ], [ %count.1.i.i7.i245, %while.cond.i.i9.i247.while.cond.i.i9.i247_crit_edge ]
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i5.i243 = add nsw i32 %count.0.i.i4.i242, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.inv.i.i6.i244 = icmp slt i32 %85, 0
  %count.1.i.i7.i245 = select i1 %tobool.not.inv.i.i6.i244, i32 0, i32 %inc.i.i5.i243
  %cmp.i.i8.i246 = icmp sgt i32 %count.1.i.i7.i245, 4
  br i1 %cmp.i.i8.i246, label %__dac_i_write.exit248, label %while.cond.i.i9.i247.while.cond.i.i9.i247_crit_edge

while.cond.i.i9.i247.while.cond.i.i9.i247_crit_edge: ; preds = %while.cond.i.i9.i247
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i9.i247

__dac_i_write.exit248:                            ; preds = %while.cond.i.i9.i247
  %86 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mmio_vbase, align 4
  %p43 = getelementptr inbounds %struct.pll_timing, ptr %t, i32 0, i32 2
  %88 = ptrtoint ptr %p43 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %p43, align 4
  %n45 = getelementptr inbounds %struct.pll_timing, ptr %t, i32 0, i32 1
  %90 = ptrtoint ptr %n45 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %n45, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i.i249 = getelementptr i8, ptr %87, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i249, i32 1828716544) #11, !srcloc !246
  br label %while.cond.i.i.i255

while.cond.i.i.i255:                              ; preds = %while.cond.i.i.i255.while.cond.i.i.i255_crit_edge, %__dac_i_write.exit248
  %count.0.i.i.i250 = phi i32 [ 0, %__dac_i_write.exit248 ], [ %count.1.i.i.i253, %while.cond.i.i.i255.while.cond.i.i.i255_crit_edge ]
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i.i251 = add nsw i32 %count.0.i.i.i250, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.not.inv.i.i.i252 = icmp slt i32 %92, 0
  %count.1.i.i.i253 = select i1 %tobool.not.inv.i.i.i252, i32 0, i32 %inc.i.i.i251
  %cmp.i.i.i254 = icmp sgt i32 %count.1.i.i.i253, 4
  br i1 %cmp.i.i.i254, label %__sst_dac_write.exit.i258, label %while.cond.i.i.i255.while.cond.i.i.i255_crit_edge

while.cond.i.i.i255.while.cond.i.i.i255_crit_edge: ; preds = %while.cond.i.i.i255
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i.i255

__sst_dac_write.exit.i258:                        ; preds = %while.cond.i.i.i255
  %shl44 = shl i32 %89, 6
  %or46 = or i32 %shl44, %91
  %conv3.i2.i256 = and i32 %or46, 255
  %or.i.i257 = or i32 %conv3.i2.i256, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %93 = tail call i32 @llvm.bswap.i32(i32 %or.i.i257) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i249, i32 %93) #11, !srcloc !246
  br label %while.cond.i.i9.i264

while.cond.i.i9.i264:                             ; preds = %while.cond.i.i9.i264.while.cond.i.i9.i264_crit_edge, %__sst_dac_write.exit.i258
  %count.0.i.i4.i259 = phi i32 [ 0, %__sst_dac_write.exit.i258 ], [ %count.1.i.i7.i262, %while.cond.i.i9.i264.while.cond.i.i9.i264_crit_edge ]
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i5.i260 = add nsw i32 %count.0.i.i4.i259, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.inv.i.i6.i261 = icmp slt i32 %94, 0
  %count.1.i.i7.i262 = select i1 %tobool.not.inv.i.i6.i261, i32 0, i32 %inc.i.i5.i260
  %cmp.i.i8.i263 = icmp sgt i32 %count.1.i.i7.i262, 4
  br i1 %cmp.i.i8.i263, label %__dac_i_write.exit265, label %while.cond.i.i9.i264.while.cond.i.i9.i264_crit_edge

while.cond.i.i9.i264.while.cond.i.i9.i264_crit_edge: ; preds = %while.cond.i.i9.i264
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i9.i264

__dac_i_write.exit265:                            ; preds = %while.cond.i.i9.i264
  %95 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i.i266 = getelementptr i8, ptr %96, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i266, i32 100663296) #11, !srcloc !246
  br label %while.cond.i.i.i272

while.cond.i.i.i272:                              ; preds = %while.cond.i.i.i272.while.cond.i.i.i272_crit_edge, %__dac_i_write.exit265
  %count.0.i.i.i267 = phi i32 [ 0, %__dac_i_write.exit265 ], [ %count.1.i.i.i270, %while.cond.i.i.i272.while.cond.i.i.i272_crit_edge ]
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i.i268 = add nsw i32 %count.0.i.i.i267, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.not.inv.i.i.i269 = icmp slt i32 %97, 0
  %count.1.i.i.i270 = select i1 %tobool.not.inv.i.i.i269, i32 0, i32 %inc.i.i.i268
  %cmp.i.i.i271 = icmp sgt i32 %count.1.i.i.i270, 4
  br i1 %cmp.i.i.i271, label %__sst_dac_write.exit.i275, label %while.cond.i.i.i272.while.cond.i.i.i272_crit_edge

while.cond.i.i.i272.while.cond.i.i.i272_crit_edge: ; preds = %while.cond.i.i.i272
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i.i272

__sst_dac_write.exit.i275:                        ; preds = %while.cond.i.i.i272
  %98 = and i32 %55, 240
  %or.i.i274 = or i32 %98, 523
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %99 = tail call i32 @llvm.bswap.i32(i32 %or.i.i274) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i266, i32 %99) #11, !srcloc !246
  br label %while.cond.i.i9.i281

while.cond.i.i9.i281:                             ; preds = %while.cond.i.i9.i281.while.cond.i.i9.i281_crit_edge, %__sst_dac_write.exit.i275
  %count.0.i.i4.i276 = phi i32 [ 0, %__sst_dac_write.exit.i275 ], [ %count.1.i.i7.i279, %while.cond.i.i9.i281.while.cond.i.i9.i281_crit_edge ]
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i5.i277 = add nsw i32 %count.0.i.i4.i276, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.inv.i.i6.i278 = icmp slt i32 %100, 0
  %count.1.i.i7.i279 = select i1 %tobool.not.inv.i.i6.i278, i32 0, i32 %inc.i.i5.i277
  %cmp.i.i8.i280 = icmp sgt i32 %count.1.i.i7.i279, 4
  br i1 %cmp.i.i8.i280, label %while.cond.i.i9.i281.sw.epilog_crit_edge, label %while.cond.i.i9.i281.while.cond.i.i9.i281_crit_edge

while.cond.i.i9.i281.while.cond.i.i9.i281_crit_edge: ; preds = %while.cond.i.i9.i281
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i9.i281

while.cond.i.i9.i281.sw.epilog_crit_edge:         ; preds = %while.cond.i.i9.i281
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.cond.i.i9.i281.sw.epilog_crit_edge, %while.cond.i.i9.i230.sw.epilog_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %101(i32 noundef 64424400) #11
  %102 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i.i283 = getelementptr i8, ptr %103, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i283, i32 16777216) #11, !srcloc !246
  br label %while.cond.i.i.i289

while.cond.i.i.i289:                              ; preds = %while.cond.i.i.i289.while.cond.i.i.i289_crit_edge, %sw.epilog
  %count.0.i.i.i284 = phi i32 [ 0, %sw.epilog ], [ %count.1.i.i.i287, %while.cond.i.i.i289.while.cond.i.i.i289_crit_edge ]
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i.i285 = add nsw i32 %count.0.i.i.i284, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool.not.inv.i.i.i286 = icmp slt i32 %104, 0
  %count.1.i.i.i287 = select i1 %tobool.not.inv.i.i.i286, i32 0, i32 %inc.i.i.i285
  %cmp.i.i.i288 = icmp sgt i32 %count.1.i.i.i287, 4
  br i1 %cmp.i.i.i288, label %__sst_dac_write.exit.i292, label %while.cond.i.i.i289.while.cond.i.i.i289_crit_edge

while.cond.i.i.i289.while.cond.i.i.i289_crit_edge: ; preds = %while.cond.i.i.i289
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i.i289

__sst_dac_write.exit.i292:                        ; preds = %while.cond.i.i.i289
  %105 = and i32 %43, 246
  %or.i.i291 = or i32 %105, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %106 = tail call i32 @llvm.bswap.i32(i32 %or.i.i291) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i283, i32 %106) #11, !srcloc !246
  br label %while.cond.i.i9.i298

while.cond.i.i9.i298:                             ; preds = %while.cond.i.i9.i298.while.cond.i.i9.i298_crit_edge, %__sst_dac_write.exit.i292
  %count.0.i.i4.i293 = phi i32 [ 0, %__sst_dac_write.exit.i292 ], [ %count.1.i.i7.i296, %while.cond.i.i9.i298.while.cond.i.i9.i298_crit_edge ]
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i5.i294 = add nsw i32 %count.0.i.i4.i293, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.not.inv.i.i6.i295 = icmp slt i32 %107, 0
  %count.1.i.i7.i296 = select i1 %tobool.not.inv.i.i6.i295, i32 0, i32 %inc.i.i5.i294
  %cmp.i.i8.i297 = icmp sgt i32 %count.1.i.i7.i296, 4
  br i1 %cmp.i.i8.i297, label %while.cond.i.i9.i298.cleanup_crit_edge, label %while.cond.i.i9.i298.while.cond.i.i9.i298_crit_edge

while.cond.i.i9.i298.while.cond.i.i9.i298_crit_edge: ; preds = %while.cond.i.i9.i298
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i9.i298

while.cond.i.i9.i298.cleanup_crit_edge:           ; preds = %while.cond.i.i9.i298
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %while.cond.i.i9.i298.cleanup_crit_edge, %__dac_i_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %__dac_i_read.exit.cleanup_crit_edge ], [ 1, %while.cond.i.i9.i298.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sst_set_vidmod_att_ti(ptr nocapture noundef readonly %info, i32 noundef %bpp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %mmio_vbase = getelementptr inbounds %struct.sstfb_par, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #11, !srcloc !246
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %entry
  %count.0.i.i = phi i32 [ 0, %entry ], [ %count.1.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i = add nsw i32 %count.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.inv.i.i = icmp slt i32 %4, 0
  %count.1.i.i = select i1 %tobool.not.inv.i.i, i32 0, i32 %inc.i.i
  %cmp.i.i = icmp sgt i32 %count.1.i.i, 4
  br i1 %cmp.i.i, label %__sst_dac_write.exit, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i

__sst_dac_write.exit:                             ; preds = %while.cond.i.i
  %5 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i33 = getelementptr i8, ptr %6, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i33, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i39

while.cond.i.i39:                                 ; preds = %while.cond.i.i39.while.cond.i.i39_crit_edge, %__sst_dac_write.exit
  %count.0.i.i34 = phi i32 [ 0, %__sst_dac_write.exit ], [ %count.1.i.i37, %while.cond.i.i39.while.cond.i.i39_crit_edge ]
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i35 = add nsw i32 %count.0.i.i34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.inv.i.i36 = icmp slt i32 %7, 0
  %count.1.i.i37 = select i1 %tobool.not.inv.i.i36, i32 0, i32 %inc.i.i35
  %cmp.i.i38 = icmp sgt i32 %count.1.i.i37, 4
  br i1 %cmp.i.i38, label %__sst_dac_read.exit, label %while.cond.i.i39.while.cond.i.i39_crit_edge

while.cond.i.i39.while.cond.i.i39_crit_edge:      ; preds = %while.cond.i.i39
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i39

__sst_dac_read.exit:                              ; preds = %while.cond.i.i39
  %add.ptr.i9.i = getelementptr i8, ptr %6, i32 536
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %9 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i40 = getelementptr i8, ptr %10, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i40, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i46

while.cond.i.i46:                                 ; preds = %while.cond.i.i46.while.cond.i.i46_crit_edge, %__sst_dac_read.exit
  %count.0.i.i41 = phi i32 [ 0, %__sst_dac_read.exit ], [ %count.1.i.i44, %while.cond.i.i46.while.cond.i.i46_crit_edge ]
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i42 = add nsw i32 %count.0.i.i41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.inv.i.i43 = icmp slt i32 %11, 0
  %count.1.i.i44 = select i1 %tobool.not.inv.i.i43, i32 0, i32 %inc.i.i42
  %cmp.i.i45 = icmp sgt i32 %count.1.i.i44, 4
  br i1 %cmp.i.i45, label %__sst_dac_read.exit49, label %while.cond.i.i46.while.cond.i.i46_crit_edge

while.cond.i.i46.while.cond.i.i46_crit_edge:      ; preds = %while.cond.i.i46
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i46

__sst_dac_read.exit49:                            ; preds = %while.cond.i.i46
  %add.ptr.i9.i47 = getelementptr i8, ptr %10, i32 536
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i47) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %13 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i50 = getelementptr i8, ptr %14, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i50, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i56

while.cond.i.i56:                                 ; preds = %while.cond.i.i56.while.cond.i.i56_crit_edge, %__sst_dac_read.exit49
  %count.0.i.i51 = phi i32 [ 0, %__sst_dac_read.exit49 ], [ %count.1.i.i54, %while.cond.i.i56.while.cond.i.i56_crit_edge ]
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i52 = add nsw i32 %count.0.i.i51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.inv.i.i53 = icmp slt i32 %15, 0
  %count.1.i.i54 = select i1 %tobool.not.inv.i.i53, i32 0, i32 %inc.i.i52
  %cmp.i.i55 = icmp sgt i32 %count.1.i.i54, 4
  br i1 %cmp.i.i55, label %__sst_dac_read.exit59, label %while.cond.i.i56.while.cond.i.i56_crit_edge

while.cond.i.i56.while.cond.i.i56_crit_edge:      ; preds = %while.cond.i.i56
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i56

__sst_dac_read.exit59:                            ; preds = %while.cond.i.i56
  %add.ptr.i9.i57 = getelementptr i8, ptr %14, i32 536
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i57) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %17 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i60 = getelementptr i8, ptr %18, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i60, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i66

while.cond.i.i66:                                 ; preds = %while.cond.i.i66.while.cond.i.i66_crit_edge, %__sst_dac_read.exit59
  %count.0.i.i61 = phi i32 [ 0, %__sst_dac_read.exit59 ], [ %count.1.i.i64, %while.cond.i.i66.while.cond.i.i66_crit_edge ]
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i62 = add nsw i32 %count.0.i.i61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.inv.i.i63 = icmp slt i32 %19, 0
  %count.1.i.i64 = select i1 %tobool.not.inv.i.i63, i32 0, i32 %inc.i.i62
  %cmp.i.i65 = icmp sgt i32 %count.1.i.i64, 4
  br i1 %cmp.i.i65, label %__sst_dac_read.exit69, label %while.cond.i.i66.while.cond.i.i66_crit_edge

while.cond.i.i66.while.cond.i.i66_crit_edge:      ; preds = %while.cond.i.i66
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i66

__sst_dac_read.exit69:                            ; preds = %while.cond.i.i66
  %add.ptr.i9.i67 = getelementptr i8, ptr %18, i32 536
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i67) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %21 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i70 = getelementptr i8, ptr %22, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i70, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i76

while.cond.i.i76:                                 ; preds = %while.cond.i.i76.while.cond.i.i76_crit_edge, %__sst_dac_read.exit69
  %count.0.i.i71 = phi i32 [ 0, %__sst_dac_read.exit69 ], [ %count.1.i.i74, %while.cond.i.i76.while.cond.i.i76_crit_edge ]
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i72 = add nsw i32 %count.0.i.i71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.inv.i.i73 = icmp slt i32 %23, 0
  %count.1.i.i74 = select i1 %tobool.not.inv.i.i73, i32 0, i32 %inc.i.i72
  %cmp.i.i75 = icmp sgt i32 %count.1.i.i74, 4
  br i1 %cmp.i.i75, label %__sst_dac_read.exit79, label %while.cond.i.i76.while.cond.i.i76_crit_edge

while.cond.i.i76.while.cond.i.i76_crit_edge:      ; preds = %while.cond.i.i76
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i76

__sst_dac_read.exit79:                            ; preds = %while.cond.i.i76
  %add.ptr.i9.i77 = getelementptr i8, ptr %22, i32 536
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i77) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %25 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i80 = getelementptr i8, ptr %26, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i80, i32 0) #11, !srcloc !246
  br label %while.cond.i.i86

while.cond.i.i86:                                 ; preds = %while.cond.i.i86.while.cond.i.i86_crit_edge, %__sst_dac_read.exit79
  %count.0.i.i81 = phi i32 [ 0, %__sst_dac_read.exit79 ], [ %count.1.i.i84, %while.cond.i.i86.while.cond.i.i86_crit_edge ]
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i82 = add nsw i32 %count.0.i.i81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.inv.i.i83 = icmp slt i32 %27, 0
  %count.1.i.i84 = select i1 %tobool.not.inv.i.i83, i32 0, i32 %inc.i.i82
  %cmp.i.i85 = icmp sgt i32 %count.1.i.i84, 4
  br i1 %cmp.i.i85, label %__sst_dac_write.exit87, label %while.cond.i.i86.while.cond.i.i86_crit_edge

while.cond.i.i86.while.cond.i.i86_crit_edge:      ; preds = %while.cond.i.i86
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i86

__sst_dac_write.exit87:                           ; preds = %while.cond.i.i86
  %28 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i88 = getelementptr i8, ptr %29, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i88, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i94

while.cond.i.i94:                                 ; preds = %while.cond.i.i94.while.cond.i.i94_crit_edge, %__sst_dac_write.exit87
  %count.0.i.i89 = phi i32 [ 0, %__sst_dac_write.exit87 ], [ %count.1.i.i92, %while.cond.i.i94.while.cond.i.i94_crit_edge ]
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i90 = add nsw i32 %count.0.i.i89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.inv.i.i91 = icmp slt i32 %30, 0
  %count.1.i.i92 = select i1 %tobool.not.inv.i.i91, i32 0, i32 %inc.i.i90
  %cmp.i.i93 = icmp sgt i32 %count.1.i.i92, 4
  br i1 %cmp.i.i93, label %__sst_dac_read.exit97, label %while.cond.i.i94.while.cond.i.i94_crit_edge

while.cond.i.i94.while.cond.i.i94_crit_edge:      ; preds = %while.cond.i.i94
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i94

__sst_dac_read.exit97:                            ; preds = %while.cond.i.i94
  %add.ptr.i9.i95 = getelementptr i8, ptr %29, i32 536
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i95) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %32 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i98 = getelementptr i8, ptr %33, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i98, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i104

while.cond.i.i104:                                ; preds = %while.cond.i.i104.while.cond.i.i104_crit_edge, %__sst_dac_read.exit97
  %count.0.i.i99 = phi i32 [ 0, %__sst_dac_read.exit97 ], [ %count.1.i.i102, %while.cond.i.i104.while.cond.i.i104_crit_edge ]
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i100 = add nsw i32 %count.0.i.i99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.inv.i.i101 = icmp slt i32 %34, 0
  %count.1.i.i102 = select i1 %tobool.not.inv.i.i101, i32 0, i32 %inc.i.i100
  %cmp.i.i103 = icmp sgt i32 %count.1.i.i102, 4
  br i1 %cmp.i.i103, label %__sst_dac_read.exit107, label %while.cond.i.i104.while.cond.i.i104_crit_edge

while.cond.i.i104.while.cond.i.i104_crit_edge:    ; preds = %while.cond.i.i104
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i104

__sst_dac_read.exit107:                           ; preds = %while.cond.i.i104
  %add.ptr.i9.i105 = getelementptr i8, ptr %33, i32 536
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i105) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %36 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i108 = getelementptr i8, ptr %37, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i108, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i114

while.cond.i.i114:                                ; preds = %while.cond.i.i114.while.cond.i.i114_crit_edge, %__sst_dac_read.exit107
  %count.0.i.i109 = phi i32 [ 0, %__sst_dac_read.exit107 ], [ %count.1.i.i112, %while.cond.i.i114.while.cond.i.i114_crit_edge ]
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i110 = add nsw i32 %count.0.i.i109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.inv.i.i111 = icmp slt i32 %38, 0
  %count.1.i.i112 = select i1 %tobool.not.inv.i.i111, i32 0, i32 %inc.i.i110
  %cmp.i.i113 = icmp sgt i32 %count.1.i.i112, 4
  br i1 %cmp.i.i113, label %__sst_dac_read.exit117, label %while.cond.i.i114.while.cond.i.i114_crit_edge

while.cond.i.i114.while.cond.i.i114_crit_edge:    ; preds = %while.cond.i.i114
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i114

__sst_dac_read.exit117:                           ; preds = %while.cond.i.i114
  %add.ptr.i9.i115 = getelementptr i8, ptr %37, i32 536
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i115) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %40 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i118 = getelementptr i8, ptr %41, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i118, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i124

while.cond.i.i124:                                ; preds = %while.cond.i.i124.while.cond.i.i124_crit_edge, %__sst_dac_read.exit117
  %count.0.i.i119 = phi i32 [ 0, %__sst_dac_read.exit117 ], [ %count.1.i.i122, %while.cond.i.i124.while.cond.i.i124_crit_edge ]
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i120 = add nsw i32 %count.0.i.i119, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.inv.i.i121 = icmp slt i32 %42, 0
  %count.1.i.i122 = select i1 %tobool.not.inv.i.i121, i32 0, i32 %inc.i.i120
  %cmp.i.i123 = icmp sgt i32 %count.1.i.i122, 4
  br i1 %cmp.i.i123, label %__sst_dac_read.exit127, label %while.cond.i.i124.while.cond.i.i124_crit_edge

while.cond.i.i124.while.cond.i.i124_crit_edge:    ; preds = %while.cond.i.i124
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i124

__sst_dac_read.exit127:                           ; preds = %while.cond.i.i124
  %add.ptr.i9.i125 = getelementptr i8, ptr %41, i32 536
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i125) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %bpp)
  %cond = icmp eq i32 %bpp, 16
  br i1 %cond, label %sw.bb, label %__sst_dac_read.exit127.sw.epilog_crit_edge

__sst_dac_read.exit127.sw.epilog_crit_edge:       ; preds = %__sst_dac_read.exit127
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %__sst_dac_read.exit127
  %44 = lshr i32 %24, 24
  %45 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmio_vbase, align 4
  %47 = and i32 %44, 15
  %or.i = or i32 %47, 560
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %48 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %add.ptr.i.i128 = getelementptr i8, ptr %46, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i128, i32 %48) #11, !srcloc !246
  br label %while.cond.i.i134

while.cond.i.i134:                                ; preds = %while.cond.i.i134.while.cond.i.i134_crit_edge, %sw.bb
  %count.0.i.i129 = phi i32 [ 0, %sw.bb ], [ %count.1.i.i132, %while.cond.i.i134.while.cond.i.i134_crit_edge ]
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i130 = add nsw i32 %count.0.i.i129, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.inv.i.i131 = icmp slt i32 %49, 0
  %count.1.i.i132 = select i1 %tobool.not.inv.i.i131, i32 0, i32 %inc.i.i130
  %cmp.i.i133 = icmp sgt i32 %count.1.i.i132, 4
  br i1 %cmp.i.i133, label %while.cond.i.i134.sw.epilog_crit_edge, label %while.cond.i.i134.while.cond.i.i134_crit_edge

while.cond.i.i134.while.cond.i.i134_crit_edge:    ; preds = %while.cond.i.i134
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i134

while.cond.i.i134.sw.epilog_crit_edge:            ; preds = %while.cond.i.i134
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.cond.i.i134.sw.epilog_crit_edge, %__sst_dac_read.exit127.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sst_detect_att(ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %mmio_vbase = getelementptr inbounds %struct.sstfb_par, ptr %1, i32 0, i32 10
  br label %for.body

for.cond:                                         ; preds = %__sst_dac_read.exit97
  %inc = add nuw nsw i32 %i.099, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.099 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %2 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #11, !srcloc !246
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %for.body
  %count.0.i.i = phi i32 [ 0, %for.body ], [ %count.1.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i = add nsw i32 %count.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.inv.i.i = icmp slt i32 %4, 0
  %count.1.i.i = select i1 %tobool.not.inv.i.i, i32 0, i32 %inc.i.i
  %cmp.i.i = icmp sgt i32 %count.1.i.i, 4
  br i1 %cmp.i.i, label %__sst_dac_write.exit, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i

__sst_dac_write.exit:                             ; preds = %while.cond.i.i
  %5 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i31 = getelementptr i8, ptr %6, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i31, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i37

while.cond.i.i37:                                 ; preds = %while.cond.i.i37.while.cond.i.i37_crit_edge, %__sst_dac_write.exit
  %count.0.i.i32 = phi i32 [ 0, %__sst_dac_write.exit ], [ %count.1.i.i35, %while.cond.i.i37.while.cond.i.i37_crit_edge ]
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i33 = add nsw i32 %count.0.i.i32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.inv.i.i34 = icmp slt i32 %7, 0
  %count.1.i.i35 = select i1 %tobool.not.inv.i.i34, i32 0, i32 %inc.i.i33
  %cmp.i.i36 = icmp sgt i32 %count.1.i.i35, 4
  br i1 %cmp.i.i36, label %__sst_dac_read.exit, label %while.cond.i.i37.while.cond.i.i37_crit_edge

while.cond.i.i37.while.cond.i.i37_crit_edge:      ; preds = %while.cond.i.i37
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i37

__sst_dac_read.exit:                              ; preds = %while.cond.i.i37
  %add.ptr.i9.i = getelementptr i8, ptr %6, i32 536
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %9 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i38 = getelementptr i8, ptr %10, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i38, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i44

while.cond.i.i44:                                 ; preds = %while.cond.i.i44.while.cond.i.i44_crit_edge, %__sst_dac_read.exit
  %count.0.i.i39 = phi i32 [ 0, %__sst_dac_read.exit ], [ %count.1.i.i42, %while.cond.i.i44.while.cond.i.i44_crit_edge ]
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i40 = add nsw i32 %count.0.i.i39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.inv.i.i41 = icmp slt i32 %11, 0
  %count.1.i.i42 = select i1 %tobool.not.inv.i.i41, i32 0, i32 %inc.i.i40
  %cmp.i.i43 = icmp sgt i32 %count.1.i.i42, 4
  br i1 %cmp.i.i43, label %__sst_dac_read.exit47, label %while.cond.i.i44.while.cond.i.i44_crit_edge

while.cond.i.i44.while.cond.i.i44_crit_edge:      ; preds = %while.cond.i.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i44

__sst_dac_read.exit47:                            ; preds = %while.cond.i.i44
  %add.ptr.i9.i45 = getelementptr i8, ptr %10, i32 536
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i45) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %13 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i48 = getelementptr i8, ptr %14, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i48, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i54

while.cond.i.i54:                                 ; preds = %while.cond.i.i54.while.cond.i.i54_crit_edge, %__sst_dac_read.exit47
  %count.0.i.i49 = phi i32 [ 0, %__sst_dac_read.exit47 ], [ %count.1.i.i52, %while.cond.i.i54.while.cond.i.i54_crit_edge ]
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i50 = add nsw i32 %count.0.i.i49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.inv.i.i51 = icmp slt i32 %15, 0
  %count.1.i.i52 = select i1 %tobool.not.inv.i.i51, i32 0, i32 %inc.i.i50
  %cmp.i.i53 = icmp sgt i32 %count.1.i.i52, 4
  br i1 %cmp.i.i53, label %__sst_dac_read.exit57, label %while.cond.i.i54.while.cond.i.i54_crit_edge

while.cond.i.i54.while.cond.i.i54_crit_edge:      ; preds = %while.cond.i.i54
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i54

__sst_dac_read.exit57:                            ; preds = %while.cond.i.i54
  %add.ptr.i9.i55 = getelementptr i8, ptr %14, i32 536
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i55) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %17 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i58 = getelementptr i8, ptr %18, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i58, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i64

while.cond.i.i64:                                 ; preds = %while.cond.i.i64.while.cond.i.i64_crit_edge, %__sst_dac_read.exit57
  %count.0.i.i59 = phi i32 [ 0, %__sst_dac_read.exit57 ], [ %count.1.i.i62, %while.cond.i.i64.while.cond.i.i64_crit_edge ]
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i60 = add nsw i32 %count.0.i.i59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.inv.i.i61 = icmp slt i32 %19, 0
  %count.1.i.i62 = select i1 %tobool.not.inv.i.i61, i32 0, i32 %inc.i.i60
  %cmp.i.i63 = icmp sgt i32 %count.1.i.i62, 4
  br i1 %cmp.i.i63, label %__sst_dac_read.exit67, label %while.cond.i.i64.while.cond.i.i64_crit_edge

while.cond.i.i64.while.cond.i.i64_crit_edge:      ; preds = %while.cond.i.i64
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i64

__sst_dac_read.exit67:                            ; preds = %while.cond.i.i64
  %add.ptr.i9.i65 = getelementptr i8, ptr %18, i32 536
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i65) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %21 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i68 = getelementptr i8, ptr %22, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i68, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i74

while.cond.i.i74:                                 ; preds = %while.cond.i.i74.while.cond.i.i74_crit_edge, %__sst_dac_read.exit67
  %count.0.i.i69 = phi i32 [ 0, %__sst_dac_read.exit67 ], [ %count.1.i.i72, %while.cond.i.i74.while.cond.i.i74_crit_edge ]
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i70 = add nsw i32 %count.0.i.i69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.inv.i.i71 = icmp slt i32 %23, 0
  %count.1.i.i72 = select i1 %tobool.not.inv.i.i71, i32 0, i32 %inc.i.i70
  %cmp.i.i73 = icmp sgt i32 %count.1.i.i72, 4
  br i1 %cmp.i.i73, label %__sst_dac_read.exit77, label %while.cond.i.i74.while.cond.i.i74_crit_edge

while.cond.i.i74.while.cond.i.i74_crit_edge:      ; preds = %while.cond.i.i74
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i74

__sst_dac_read.exit77:                            ; preds = %while.cond.i.i74
  %add.ptr.i9.i75 = getelementptr i8, ptr %22, i32 536
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i75) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %25 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i78 = getelementptr i8, ptr %26, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i78, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i84

while.cond.i.i84:                                 ; preds = %while.cond.i.i84.while.cond.i.i84_crit_edge, %__sst_dac_read.exit77
  %count.0.i.i79 = phi i32 [ 0, %__sst_dac_read.exit77 ], [ %count.1.i.i82, %while.cond.i.i84.while.cond.i.i84_crit_edge ]
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i80 = add nsw i32 %count.0.i.i79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.inv.i.i81 = icmp slt i32 %27, 0
  %count.1.i.i82 = select i1 %tobool.not.inv.i.i81, i32 0, i32 %inc.i.i80
  %cmp.i.i83 = icmp sgt i32 %count.1.i.i82, 4
  br i1 %cmp.i.i83, label %__sst_dac_read.exit87, label %while.cond.i.i84.while.cond.i.i84_crit_edge

while.cond.i.i84.while.cond.i.i84_crit_edge:      ; preds = %while.cond.i.i84
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i84

__sst_dac_read.exit87:                            ; preds = %while.cond.i.i84
  %add.ptr.i9.i85 = getelementptr i8, ptr %26, i32 536
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i85) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %29 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i88 = getelementptr i8, ptr %30, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i88, i32 655360) #11, !srcloc !246
  br label %while.cond.i.i94

while.cond.i.i94:                                 ; preds = %while.cond.i.i94.while.cond.i.i94_crit_edge, %__sst_dac_read.exit87
  %count.0.i.i89 = phi i32 [ 0, %__sst_dac_read.exit87 ], [ %count.1.i.i92, %while.cond.i.i94.while.cond.i.i94_crit_edge ]
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i90 = add nsw i32 %count.0.i.i89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.inv.i.i91 = icmp slt i32 %31, 0
  %count.1.i.i92 = select i1 %tobool.not.inv.i.i91, i32 0, i32 %inc.i.i90
  %cmp.i.i93 = icmp sgt i32 %count.1.i.i92, 4
  br i1 %cmp.i.i93, label %__sst_dac_read.exit97, label %while.cond.i.i94.while.cond.i.i94_crit_edge

while.cond.i.i94.while.cond.i.i94_crit_edge:      ; preds = %while.cond.i.i94
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i94

__sst_dac_read.exit97:                            ; preds = %while.cond.i.i94
  %add.ptr.i9.i95 = getelementptr i8, ptr %30, i32 536
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i95) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %.mask = and i32 %28, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2080374784, i32 %.mask)
  %cmp16 = icmp eq i32 %.mask, -2080374784
  %.mask98 = and i32 %32, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 150994944, i32 %.mask98)
  %cmp18 = icmp eq i32 %.mask98, 150994944
  %or.cond = select i1 %cmp16, i1 %cmp18, i1 false
  br i1 %or.cond, label %__sst_dac_read.exit97.cleanup_crit_edge, label %for.cond

__sst_dac_read.exit97.cleanup_crit_edge:          ; preds = %__sst_dac_read.exit97
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %__sst_dac_read.exit97.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %__sst_dac_read.exit97.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sst_detect_ics(ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %mmio_vbase = getelementptr inbounds %struct.sstfb_par, ptr %1, i32 0, i32 10
  br label %for.body

for.cond:                                         ; preds = %__sst_dac_read.exit117
  %inc = add nuw nsw i32 %i.0120, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.0120 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %2 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 17235968) #11, !srcloc !246
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %for.body
  %count.0.i.i = phi i32 [ 0, %for.body ], [ %count.1.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i = add nsw i32 %count.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.inv.i.i = icmp slt i32 %4, 0
  %count.1.i.i = select i1 %tobool.not.inv.i.i, i32 0, i32 %inc.i.i
  %cmp.i.i = icmp sgt i32 %count.1.i.i, 4
  br i1 %cmp.i.i, label %__sst_dac_write.exit, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i

__sst_dac_write.exit:                             ; preds = %while.cond.i.i
  %5 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i45 = getelementptr i8, ptr %6, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i45, i32 851968) #11, !srcloc !246
  br label %while.cond.i.i51

while.cond.i.i51:                                 ; preds = %while.cond.i.i51.while.cond.i.i51_crit_edge, %__sst_dac_write.exit
  %count.0.i.i46 = phi i32 [ 0, %__sst_dac_write.exit ], [ %count.1.i.i49, %while.cond.i.i51.while.cond.i.i51_crit_edge ]
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i47 = add nsw i32 %count.0.i.i46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.inv.i.i48 = icmp slt i32 %7, 0
  %count.1.i.i49 = select i1 %tobool.not.inv.i.i48, i32 0, i32 %inc.i.i47
  %cmp.i.i50 = icmp sgt i32 %count.1.i.i49, 4
  br i1 %cmp.i.i50, label %__sst_dac_read.exit, label %while.cond.i.i51.while.cond.i.i51_crit_edge

while.cond.i.i51.while.cond.i.i51_crit_edge:      ; preds = %while.cond.i.i51
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i51

__sst_dac_read.exit:                              ; preds = %while.cond.i.i51
  %add.ptr.i9.i = getelementptr i8, ptr %6, i32 536
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %9 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i52 = getelementptr i8, ptr %10, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i52, i32 851968) #11, !srcloc !246
  br label %while.cond.i.i58

while.cond.i.i58:                                 ; preds = %while.cond.i.i58.while.cond.i.i58_crit_edge, %__sst_dac_read.exit
  %count.0.i.i53 = phi i32 [ 0, %__sst_dac_read.exit ], [ %count.1.i.i56, %while.cond.i.i58.while.cond.i.i58_crit_edge ]
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i54 = add nsw i32 %count.0.i.i53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.inv.i.i55 = icmp slt i32 %11, 0
  %count.1.i.i56 = select i1 %tobool.not.inv.i.i55, i32 0, i32 %inc.i.i54
  %cmp.i.i57 = icmp sgt i32 %count.1.i.i56, 4
  br i1 %cmp.i.i57, label %__sst_dac_read.exit61, label %while.cond.i.i58.while.cond.i.i58_crit_edge

while.cond.i.i58.while.cond.i.i58_crit_edge:      ; preds = %while.cond.i.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i58

__sst_dac_read.exit61:                            ; preds = %while.cond.i.i58
  %add.ptr.i9.i59 = getelementptr i8, ptr %10, i32 536
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i59) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %13 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i62 = getelementptr i8, ptr %14, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i62, i32 117899264) #11, !srcloc !246
  br label %while.cond.i.i68

while.cond.i.i68:                                 ; preds = %while.cond.i.i68.while.cond.i.i68_crit_edge, %__sst_dac_read.exit61
  %count.0.i.i63 = phi i32 [ 0, %__sst_dac_read.exit61 ], [ %count.1.i.i66, %while.cond.i.i68.while.cond.i.i68_crit_edge ]
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i64 = add nsw i32 %count.0.i.i63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.inv.i.i65 = icmp slt i32 %15, 0
  %count.1.i.i66 = select i1 %tobool.not.inv.i.i65, i32 0, i32 %inc.i.i64
  %cmp.i.i67 = icmp sgt i32 %count.1.i.i66, 4
  br i1 %cmp.i.i67, label %__sst_dac_write.exit69, label %while.cond.i.i68.while.cond.i.i68_crit_edge

while.cond.i.i68.while.cond.i.i68_crit_edge:      ; preds = %while.cond.i.i68
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i68

__sst_dac_write.exit69:                           ; preds = %while.cond.i.i68
  %16 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i70 = getelementptr i8, ptr %17, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i70, i32 851968) #11, !srcloc !246
  br label %while.cond.i.i76

while.cond.i.i76:                                 ; preds = %while.cond.i.i76.while.cond.i.i76_crit_edge, %__sst_dac_write.exit69
  %count.0.i.i71 = phi i32 [ 0, %__sst_dac_write.exit69 ], [ %count.1.i.i74, %while.cond.i.i76.while.cond.i.i76_crit_edge ]
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i72 = add nsw i32 %count.0.i.i71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.inv.i.i73 = icmp slt i32 %18, 0
  %count.1.i.i74 = select i1 %tobool.not.inv.i.i73, i32 0, i32 %inc.i.i72
  %cmp.i.i75 = icmp sgt i32 %count.1.i.i74, 4
  br i1 %cmp.i.i75, label %__sst_dac_read.exit79, label %while.cond.i.i76.while.cond.i.i76_crit_edge

while.cond.i.i76.while.cond.i.i76_crit_edge:      ; preds = %while.cond.i.i76
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i76

__sst_dac_read.exit79:                            ; preds = %while.cond.i.i76
  %add.ptr.i9.i77 = getelementptr i8, ptr %17, i32 536
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i77) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %20 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i80 = getelementptr i8, ptr %21, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i80, i32 851968) #11, !srcloc !246
  br label %while.cond.i.i86

while.cond.i.i86:                                 ; preds = %while.cond.i.i86.while.cond.i.i86_crit_edge, %__sst_dac_read.exit79
  %count.0.i.i81 = phi i32 [ 0, %__sst_dac_read.exit79 ], [ %count.1.i.i84, %while.cond.i.i86.while.cond.i.i86_crit_edge ]
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i82 = add nsw i32 %count.0.i.i81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.inv.i.i83 = icmp slt i32 %22, 0
  %count.1.i.i84 = select i1 %tobool.not.inv.i.i83, i32 0, i32 %inc.i.i82
  %cmp.i.i85 = icmp sgt i32 %count.1.i.i84, 4
  br i1 %cmp.i.i85, label %__sst_dac_read.exit89, label %while.cond.i.i86.while.cond.i.i86_crit_edge

while.cond.i.i86.while.cond.i.i86_crit_edge:      ; preds = %while.cond.i.i86
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i86

__sst_dac_read.exit89:                            ; preds = %while.cond.i.i86
  %add.ptr.i9.i87 = getelementptr i8, ptr %21, i32 536
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i87) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %24 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i90 = getelementptr i8, ptr %25, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i90, i32 185008128) #11, !srcloc !246
  br label %while.cond.i.i96

while.cond.i.i96:                                 ; preds = %while.cond.i.i96.while.cond.i.i96_crit_edge, %__sst_dac_read.exit89
  %count.0.i.i91 = phi i32 [ 0, %__sst_dac_read.exit89 ], [ %count.1.i.i94, %while.cond.i.i96.while.cond.i.i96_crit_edge ]
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i92 = add nsw i32 %count.0.i.i91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.inv.i.i93 = icmp slt i32 %26, 0
  %count.1.i.i94 = select i1 %tobool.not.inv.i.i93, i32 0, i32 %inc.i.i92
  %cmp.i.i95 = icmp sgt i32 %count.1.i.i94, 4
  br i1 %cmp.i.i95, label %__sst_dac_write.exit97, label %while.cond.i.i96.while.cond.i.i96_crit_edge

while.cond.i.i96.while.cond.i.i96_crit_edge:      ; preds = %while.cond.i.i96
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i96

__sst_dac_write.exit97:                           ; preds = %while.cond.i.i96
  %27 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i98 = getelementptr i8, ptr %28, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i98, i32 851968) #11, !srcloc !246
  br label %while.cond.i.i104

while.cond.i.i104:                                ; preds = %while.cond.i.i104.while.cond.i.i104_crit_edge, %__sst_dac_write.exit97
  %count.0.i.i99 = phi i32 [ 0, %__sst_dac_write.exit97 ], [ %count.1.i.i102, %while.cond.i.i104.while.cond.i.i104_crit_edge ]
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i100 = add nsw i32 %count.0.i.i99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.inv.i.i101 = icmp slt i32 %29, 0
  %count.1.i.i102 = select i1 %tobool.not.inv.i.i101, i32 0, i32 %inc.i.i100
  %cmp.i.i103 = icmp sgt i32 %count.1.i.i102, 4
  br i1 %cmp.i.i103, label %__sst_dac_read.exit107, label %while.cond.i.i104.while.cond.i.i104_crit_edge

while.cond.i.i104.while.cond.i.i104_crit_edge:    ; preds = %while.cond.i.i104
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i104

__sst_dac_read.exit107:                           ; preds = %while.cond.i.i104
  %add.ptr.i9.i105 = getelementptr i8, ptr %28, i32 536
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i105) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %31 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i108 = getelementptr i8, ptr %32, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i108, i32 851968) #11, !srcloc !246
  br label %while.cond.i.i114

while.cond.i.i114:                                ; preds = %while.cond.i.i114.while.cond.i.i114_crit_edge, %__sst_dac_read.exit107
  %count.0.i.i109 = phi i32 [ 0, %__sst_dac_read.exit107 ], [ %count.1.i.i112, %while.cond.i.i114.while.cond.i.i114_crit_edge ]
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i110 = add nsw i32 %count.0.i.i109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.inv.i.i111 = icmp slt i32 %33, 0
  %count.1.i.i112 = select i1 %tobool.not.inv.i.i111, i32 0, i32 %inc.i.i110
  %cmp.i.i113 = icmp sgt i32 %count.1.i.i112, 4
  br i1 %cmp.i.i113, label %__sst_dac_read.exit117, label %while.cond.i.i114.while.cond.i.i114_crit_edge

while.cond.i.i114.while.cond.i.i114_crit_edge:    ; preds = %while.cond.i.i114
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i114

__sst_dac_read.exit117:                           ; preds = %while.cond.i.i114
  %add.ptr.i9.i115 = getelementptr i8, ptr %32, i32 536
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i115) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %.mask = and i32 %8, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 1426063360, i32 %.mask)
  %cmp21 = icmp eq i32 %.mask, 1426063360
  %.mask118 = and i32 %19, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 1895825408, i32 %.mask118)
  %cmp23 = icmp eq i32 %.mask118, 1895825408
  %or.cond = select i1 %cmp21, i1 %cmp23, i1 false
  %.mask119 = and i32 %30, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 2030043136, i32 %.mask119)
  %cmp26 = icmp eq i32 %.mask119, 2030043136
  %or.cond44 = select i1 %or.cond, i1 %cmp26, i1 false
  br i1 %or.cond44, label %__sst_dac_read.exit117.cleanup_crit_edge, label %for.cond

__sst_dac_read.exit117.cleanup_crit_edge:         ; preds = %__sst_dac_read.exit117
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %__sst_dac_read.exit117.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %__sst_dac_read.exit117.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sst_set_pll_ics(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %t, i32 noundef %clock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %mmio_vbase = getelementptr inbounds %struct.sstfb_par, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 235339776) #11, !srcloc !246
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %entry
  %count.0.i.i = phi i32 [ 0, %entry ], [ %count.1.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i = add nsw i32 %count.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.inv.i.i = icmp slt i32 %4, 0
  %count.1.i.i = select i1 %tobool.not.inv.i.i, i32 0, i32 %inc.i.i
  %cmp.i.i = icmp sgt i32 %count.1.i.i, 4
  br i1 %cmp.i.i, label %__sst_dac_write.exit, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i

__sst_dac_write.exit:                             ; preds = %while.cond.i.i
  %5 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i48 = getelementptr i8, ptr %6, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i48, i32 851968) #11, !srcloc !246
  br label %while.cond.i.i54

while.cond.i.i54:                                 ; preds = %while.cond.i.i54.while.cond.i.i54_crit_edge, %__sst_dac_write.exit
  %count.0.i.i49 = phi i32 [ 0, %__sst_dac_write.exit ], [ %count.1.i.i52, %while.cond.i.i54.while.cond.i.i54_crit_edge ]
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i50 = add nsw i32 %count.0.i.i49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.inv.i.i51 = icmp slt i32 %7, 0
  %count.1.i.i52 = select i1 %tobool.not.inv.i.i51, i32 0, i32 %inc.i.i50
  %cmp.i.i53 = icmp sgt i32 %count.1.i.i52, 4
  br i1 %cmp.i.i53, label %__sst_dac_read.exit, label %while.cond.i.i54.while.cond.i.i54_crit_edge

while.cond.i.i54.while.cond.i.i54_crit_edge:      ; preds = %while.cond.i.i54
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i54

__sst_dac_read.exit:                              ; preds = %while.cond.i.i54
  %add.ptr.i9.i = getelementptr i8, ptr %6, i32 536
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #11, !srcloc !243
  %9 = lshr i32 %8, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %10 = zext i32 %clock to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %clock, label %__sst_dac_read.exit.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb13
  ]

__sst_dac_read.exit.cleanup_crit_edge:            ; preds = %__sst_dac_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %__sst_dac_read.exit
  %11 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i55 = getelementptr i8, ptr %12, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i55, i32 262144) #11, !srcloc !246
  br label %while.cond.i.i61

while.cond.i.i61:                                 ; preds = %while.cond.i.i61.while.cond.i.i61_crit_edge, %sw.bb
  %count.0.i.i56 = phi i32 [ 0, %sw.bb ], [ %count.1.i.i59, %while.cond.i.i61.while.cond.i.i61_crit_edge ]
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i57 = add nsw i32 %count.0.i.i56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.inv.i.i58 = icmp slt i32 %13, 0
  %count.1.i.i59 = select i1 %tobool.not.inv.i.i58, i32 0, i32 %inc.i.i57
  %cmp.i.i60 = icmp sgt i32 %count.1.i.i59, 4
  br i1 %cmp.i.i60, label %__sst_dac_write.exit62, label %while.cond.i.i61.while.cond.i.i61_crit_edge

while.cond.i.i61.while.cond.i.i61_crit_edge:      ; preds = %while.cond.i.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i61

__sst_dac_write.exit62:                           ; preds = %while.cond.i.i61
  %14 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio_vbase, align 4
  %16 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %t, align 4
  %conv3.i = and i32 %17, 255
  %or.i = or i32 %conv3.i, 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %add.ptr.i.i63 = getelementptr i8, ptr %15, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i63, i32 %18) #11, !srcloc !246
  br label %while.cond.i.i69

while.cond.i.i69:                                 ; preds = %while.cond.i.i69.while.cond.i.i69_crit_edge, %__sst_dac_write.exit62
  %count.0.i.i64 = phi i32 [ 0, %__sst_dac_write.exit62 ], [ %count.1.i.i67, %while.cond.i.i69.while.cond.i.i69_crit_edge ]
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i65 = add nsw i32 %count.0.i.i64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.inv.i.i66 = icmp slt i32 %19, 0
  %count.1.i.i67 = select i1 %tobool.not.inv.i.i66, i32 0, i32 %inc.i.i65
  %cmp.i.i68 = icmp sgt i32 %count.1.i.i67, 4
  br i1 %cmp.i.i68, label %__sst_dac_write.exit70, label %while.cond.i.i69.while.cond.i.i69_crit_edge

while.cond.i.i69.while.cond.i.i69_crit_edge:      ; preds = %while.cond.i.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i69

__sst_dac_write.exit70:                           ; preds = %while.cond.i.i69
  %20 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio_vbase, align 4
  %p = getelementptr inbounds %struct.pll_timing, ptr %t, i32 0, i32 2
  %22 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %p, align 4
  %shl = shl i32 %23, 5
  %n = getelementptr inbounds %struct.pll_timing, ptr %t, i32 0, i32 1
  %24 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n, align 4
  %or = or i32 %shl, %25
  %conv3.i71 = and i32 %or, 255
  %or.i72 = or i32 %conv3.i71, 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i72) #11
  %add.ptr.i.i73 = getelementptr i8, ptr %21, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i73, i32 %26) #11, !srcloc !246
  br label %while.cond.i.i79

while.cond.i.i79:                                 ; preds = %while.cond.i.i79.while.cond.i.i79_crit_edge, %__sst_dac_write.exit70
  %count.0.i.i74 = phi i32 [ 0, %__sst_dac_write.exit70 ], [ %count.1.i.i77, %while.cond.i.i79.while.cond.i.i79_crit_edge ]
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i75 = add nsw i32 %count.0.i.i74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.inv.i.i76 = icmp slt i32 %27, 0
  %count.1.i.i77 = select i1 %tobool.not.inv.i.i76, i32 0, i32 %inc.i.i75
  %cmp.i.i78 = icmp sgt i32 %count.1.i.i77, 4
  br i1 %cmp.i.i78, label %__sst_dac_write.exit80, label %while.cond.i.i79.while.cond.i.i79_crit_edge

while.cond.i.i79.while.cond.i.i79_crit_edge:      ; preds = %while.cond.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i79

__sst_dac_write.exit80:                           ; preds = %while.cond.i.i79
  %28 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i81 = getelementptr i8, ptr %29, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i81, i32 235143168) #11, !srcloc !246
  br label %while.cond.i.i87

while.cond.i.i87:                                 ; preds = %while.cond.i.i87.while.cond.i.i87_crit_edge, %__sst_dac_write.exit80
  %count.0.i.i82 = phi i32 [ 0, %__sst_dac_write.exit80 ], [ %count.1.i.i85, %while.cond.i.i87.while.cond.i.i87_crit_edge ]
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i83 = add nsw i32 %count.0.i.i82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.inv.i.i84 = icmp slt i32 %30, 0
  %count.1.i.i85 = select i1 %tobool.not.inv.i.i84, i32 0, i32 %inc.i.i83
  %cmp.i.i86 = icmp sgt i32 %count.1.i.i85, 4
  br i1 %cmp.i.i86, label %__sst_dac_write.exit88, label %while.cond.i.i87.while.cond.i.i87_crit_edge

while.cond.i.i87.while.cond.i.i87_crit_edge:      ; preds = %while.cond.i.i87
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i87

__sst_dac_write.exit88:                           ; preds = %while.cond.i.i87
  %31 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio_vbase, align 4
  %33 = and i32 %9, 216
  %or.i90 = or i32 %33, 1312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %34 = tail call i32 @llvm.bswap.i32(i32 %or.i90) #11
  %add.ptr.i.i91 = getelementptr i8, ptr %32, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i91, i32 %34) #11, !srcloc !246
  br label %while.cond.i.i97

while.cond.i.i97:                                 ; preds = %while.cond.i.i97.while.cond.i.i97_crit_edge, %__sst_dac_write.exit88
  %count.0.i.i92 = phi i32 [ 0, %__sst_dac_write.exit88 ], [ %count.1.i.i95, %while.cond.i.i97.while.cond.i.i97_crit_edge ]
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i93 = add nsw i32 %count.0.i.i92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.inv.i.i94 = icmp slt i32 %35, 0
  %count.1.i.i95 = select i1 %tobool.not.inv.i.i94, i32 0, i32 %inc.i.i93
  %cmp.i.i96 = icmp sgt i32 %count.1.i.i95, 4
  br i1 %cmp.i.i96, label %while.cond.i.i97.sw.epilog_crit_edge, label %while.cond.i.i97.while.cond.i.i97_crit_edge

while.cond.i.i97.while.cond.i.i97_crit_edge:      ; preds = %while.cond.i.i97
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i97

while.cond.i.i97.sw.epilog_crit_edge:             ; preds = %while.cond.i.i97
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb13:                                          ; preds = %__sst_dac_read.exit
  %36 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i99 = getelementptr i8, ptr %37, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i99, i32 168034304) #11, !srcloc !246
  br label %while.cond.i.i105

while.cond.i.i105:                                ; preds = %while.cond.i.i105.while.cond.i.i105_crit_edge, %sw.bb13
  %count.0.i.i100 = phi i32 [ 0, %sw.bb13 ], [ %count.1.i.i103, %while.cond.i.i105.while.cond.i.i105_crit_edge ]
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i101 = add nsw i32 %count.0.i.i100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.inv.i.i102 = icmp slt i32 %38, 0
  %count.1.i.i103 = select i1 %tobool.not.inv.i.i102, i32 0, i32 %inc.i.i101
  %cmp.i.i104 = icmp sgt i32 %count.1.i.i103, 4
  br i1 %cmp.i.i104, label %__sst_dac_write.exit106, label %while.cond.i.i105.while.cond.i.i105_crit_edge

while.cond.i.i105.while.cond.i.i105_crit_edge:    ; preds = %while.cond.i.i105
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i105

__sst_dac_write.exit106:                          ; preds = %while.cond.i.i105
  %39 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio_vbase, align 4
  %41 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %t, align 4
  %conv3.i107 = and i32 %42, 255
  %or.i108 = or i32 %conv3.i107, 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %43 = tail call i32 @llvm.bswap.i32(i32 %or.i108) #11
  %add.ptr.i.i109 = getelementptr i8, ptr %40, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i109, i32 %43) #11, !srcloc !246
  br label %while.cond.i.i115

while.cond.i.i115:                                ; preds = %while.cond.i.i115.while.cond.i.i115_crit_edge, %__sst_dac_write.exit106
  %count.0.i.i110 = phi i32 [ 0, %__sst_dac_write.exit106 ], [ %count.1.i.i113, %while.cond.i.i115.while.cond.i.i115_crit_edge ]
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i111 = add nsw i32 %count.0.i.i110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.inv.i.i112 = icmp slt i32 %44, 0
  %count.1.i.i113 = select i1 %tobool.not.inv.i.i112, i32 0, i32 %inc.i.i111
  %cmp.i.i114 = icmp sgt i32 %count.1.i.i113, 4
  br i1 %cmp.i.i114, label %__sst_dac_write.exit116, label %while.cond.i.i115.while.cond.i.i115_crit_edge

while.cond.i.i115.while.cond.i.i115_crit_edge:    ; preds = %while.cond.i.i115
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i115

__sst_dac_write.exit116:                          ; preds = %while.cond.i.i115
  %45 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmio_vbase, align 4
  %p19 = getelementptr inbounds %struct.pll_timing, ptr %t, i32 0, i32 2
  %47 = ptrtoint ptr %p19 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %p19, align 4
  %shl20 = shl i32 %48, 5
  %n21 = getelementptr inbounds %struct.pll_timing, ptr %t, i32 0, i32 1
  %49 = ptrtoint ptr %n21 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %n21, align 4
  %or22 = or i32 %shl20, %50
  %conv3.i117 = and i32 %or22, 255
  %or.i118 = or i32 %conv3.i117, 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %51 = tail call i32 @llvm.bswap.i32(i32 %or.i118) #11
  %add.ptr.i.i119 = getelementptr i8, ptr %46, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i119, i32 %51) #11, !srcloc !246
  br label %while.cond.i.i125

while.cond.i.i125:                                ; preds = %while.cond.i.i125.while.cond.i.i125_crit_edge, %__sst_dac_write.exit116
  %count.0.i.i120 = phi i32 [ 0, %__sst_dac_write.exit116 ], [ %count.1.i.i123, %while.cond.i.i125.while.cond.i.i125_crit_edge ]
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i121 = add nsw i32 %count.0.i.i120, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.inv.i.i122 = icmp slt i32 %52, 0
  %count.1.i.i123 = select i1 %tobool.not.inv.i.i122, i32 0, i32 %inc.i.i121
  %cmp.i.i124 = icmp sgt i32 %count.1.i.i123, 4
  br i1 %cmp.i.i124, label %__sst_dac_write.exit126, label %while.cond.i.i125.while.cond.i.i125_crit_edge

while.cond.i.i125.while.cond.i.i125_crit_edge:    ; preds = %while.cond.i.i125
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i125

__sst_dac_write.exit126:                          ; preds = %while.cond.i.i125
  %53 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i127 = getelementptr i8, ptr %54, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i127, i32 235143168) #11, !srcloc !246
  br label %while.cond.i.i133

while.cond.i.i133:                                ; preds = %while.cond.i.i133.while.cond.i.i133_crit_edge, %__sst_dac_write.exit126
  %count.0.i.i128 = phi i32 [ 0, %__sst_dac_write.exit126 ], [ %count.1.i.i131, %while.cond.i.i133.while.cond.i.i133_crit_edge ]
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i129 = add nsw i32 %count.0.i.i128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.inv.i.i130 = icmp slt i32 %55, 0
  %count.1.i.i131 = select i1 %tobool.not.inv.i.i130, i32 0, i32 %inc.i.i129
  %cmp.i.i132 = icmp sgt i32 %count.1.i.i131, 4
  br i1 %cmp.i.i132, label %__sst_dac_write.exit134, label %while.cond.i.i133.while.cond.i.i133_crit_edge

while.cond.i.i133.while.cond.i.i133_crit_edge:    ; preds = %while.cond.i.i133
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i133

__sst_dac_write.exit134:                          ; preds = %while.cond.i.i133
  %56 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio_vbase, align 4
  %58 = and i32 %9, 239
  %or.i136 = or i32 %58, 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %59 = tail call i32 @llvm.bswap.i32(i32 %or.i136) #11
  %add.ptr.i.i137 = getelementptr i8, ptr %57, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i137, i32 %59) #11, !srcloc !246
  br label %while.cond.i.i143

while.cond.i.i143:                                ; preds = %while.cond.i.i143.while.cond.i.i143_crit_edge, %__sst_dac_write.exit134
  %count.0.i.i138 = phi i32 [ 0, %__sst_dac_write.exit134 ], [ %count.1.i.i141, %while.cond.i.i143.while.cond.i.i143_crit_edge ]
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i139 = add nsw i32 %count.0.i.i138, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.inv.i.i140 = icmp slt i32 %60, 0
  %count.1.i.i141 = select i1 %tobool.not.inv.i.i140, i32 0, i32 %inc.i.i139
  %cmp.i.i142 = icmp sgt i32 %count.1.i.i141, 4
  br i1 %cmp.i.i142, label %while.cond.i.i143.sw.epilog_crit_edge, label %while.cond.i.i143.while.cond.i.i143_crit_edge

while.cond.i.i143.while.cond.i.i143_crit_edge:    ; preds = %while.cond.i.i143
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i143

while.cond.i.i143.sw.epilog_crit_edge:            ; preds = %while.cond.i.i143
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.cond.i.i143.sw.epilog_crit_edge, %while.cond.i.i97.sw.epilog_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 64424400) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %__sst_dac_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.epilog ], [ 0, %__sst_dac_read.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sst_set_vidmod_ics(ptr nocapture noundef readonly %info, i32 noundef %bpp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %bpp)
  %cond = icmp eq i32 %bpp, 16
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %mmio_vbase = getelementptr inbounds %struct.sstfb_par, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_vbase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1342570496) #11, !srcloc !246
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %sw.bb
  %count.0.i.i = phi i32 [ 0, %sw.bb ], [ %count.1.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %inc.i.i = add nsw i32 %count.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.inv.i.i = icmp slt i32 %4, 0
  %count.1.i.i = select i1 %tobool.not.inv.i.i, i32 0, i32 %inc.i.i
  %cmp.i.i = icmp sgt i32 %count.1.i.i, 4
  br i1 %cmp.i.i, label %while.cond.i.i.sw.epilog_crit_edge, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i

while.cond.i.i.sw.epilog_crit_edge:               ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.cond.i.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sstfb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %regno)
  %cmp = icmp ugt i32 %regno, 15
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %red2 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  %sub = sub i32 16, %3
  %shr = lshr i32 %red, %sub
  %green4 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %length5 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %4 = ptrtoint ptr %length5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length5, align 4
  %sub6 = sub i32 16, %5
  %shr7 = lshr i32 %green, %sub6
  %blue9 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %length10 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %6 = ptrtoint ptr %length10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length10, align 4
  %sub11 = sub i32 16, %7
  %shr12 = lshr i32 %blue, %sub11
  %transp14 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11
  %length15 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11, i32 1
  %8 = ptrtoint ptr %length15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length15, align 4
  %sub16 = sub i32 16, %9
  %shr17 = lshr i32 %transp, %sub16
  %10 = ptrtoint ptr %red2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %red2, align 4
  %shl = shl i32 %shr, %11
  %12 = ptrtoint ptr %green4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %green4, align 4
  %shl23 = shl i32 %shr7, %13
  %or = or i32 %shl23, %shl
  %14 = ptrtoint ptr %blue9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %blue9, align 4
  %shl27 = shl i32 %shr12, %15
  %or28 = or i32 %or, %shl27
  %16 = ptrtoint ptr %transp14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %transp14, align 4
  %shl32 = shl i32 %shr17, %17
  %or33 = or i32 %or28, %shl32
  %arrayidx = getelementptr [16 x i32], ptr %1, i32 0, i32 %regno
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or33, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sstfb_ioctl(ptr nocapture noundef readonly %info, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !242
  %1 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1074022109, label %sw.bb
    i32 -2147203363, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %2 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.71, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %sw.bb.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb.if.then11.i.i_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 4, i32 -1226833920) #16, !srcloc !254
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !255

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val, i32 noundef 4) #11
  %4 = call i32 @llvm.read_register.i32(metadata !232) #11
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !256
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !257
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !258
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %val, ptr noundef %2, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #11, !srcloc !257
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !258
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !255

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %sw.bb.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %val, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  call fastcc void @sstfb_setvgapass(ptr noundef %info, i32 noundef %9)
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %par2 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %10 = ptrtoint ptr %par2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %par2, align 4
  %vgapass = getelementptr inbounds %struct.sstfb_par, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %vgapass to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %vgapass, align 1
  %conv = zext i8 %13 to i32
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %val, align 4
  %15 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.71, i32 noundef 174) #11
  %call.i.i12 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i12, label %sw.bb1.cleanup_crit_edge, label %if.end.i.i16

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i16:                                     ; preds = %sw.bb1
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %15, i32 4, i32 -1226833920) #16, !srcloc !259
  %asmresult.i.i14 = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i14)
  %cmp.i.i15 = icmp eq i32 %asmresult.i.i14, 0
  br i1 %cmp.i.i15, label %copy_to_user.exit, label %if.end.i.i16.cleanup_crit_edge

if.end.i.i16.cleanup_crit_edge:                   ; preds = %if.end.i.i16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i16
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i17 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val, i32 noundef 4) #11
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %15, ptr noundef nonnull %val, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool4.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool4.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i16.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %if.end, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %sw.bb1.cleanup_crit_edge ], [ -14, %if.end.i.i16.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sstfb_setvgapass(ptr nocapture noundef readonly %info, i32 noundef %enable) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %dev = getelementptr inbounds %struct.sstfb_par, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #11
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tmp, align 4, !annotation !242
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp ne i32 %enable, 0
  %vgapass = getelementptr inbounds %struct.sstfb_par, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %vgapass to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %vgapass, align 1
  %7 = zext i1 %tobool.not to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %7)
  %cmp = icmp eq i8 %6, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %vgapass to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %vgapass, align 1
  %call = call i32 @pci_read_config_dword(ptr noundef %3, i32 noundef 64, ptr noundef nonnull %tmp) #11
  %9 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tmp, align 4
  %or = or i32 %10, 1
  %call5 = call i32 @pci_write_config_dword(ptr noundef %3, i32 noundef 64, i32 noundef %or) #11
  %mmio_vbase = getelementptr inbounds %struct.sstfb_par, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio_vbase, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 528
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !243
  %14 = call i32 @llvm.bswap.i32(i32 %13) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  %15 = ptrtoint ptr %vgapass to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %vgapass, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool8.not = icmp eq i8 %16, 0
  %17 = ptrtoint ptr %mmio_vbase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio_vbase, align 4
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %and = and i32 %14, -2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  call void @arm_heavy_mb() #11
  %19 = call i32 @llvm.bswap.i32(i32 %and) #11
  %add.ptr.i39 = getelementptr i8, ptr %18, i32 528
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %19) #11, !srcloc !246
  br label %if.end21

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %or14 = or i32 %14, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  call void @arm_heavy_mb() #11
  %20 = call i32 @llvm.bswap.i32(i32 %or14) #11
  %add.ptr.i40 = getelementptr i8, ptr %18, i32 528
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %20) #11, !srcloc !246
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then9
  %.str.75.sink = phi ptr [ @.str.75, %if.else ], [ @.str.72, %if.then9 ]
  %node19 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %21 = ptrtoint ptr %node19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %node19, align 4
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.75.sink, i32 noundef %22) #15
  %23 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tmp, align 4
  %call22 = call i32 @pci_write_config_dword(ptr noundef %3, i32 noundef 64, i32 noundef %24) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_vgapass(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %vgapass = getelementptr inbounds %struct.sstfb_par, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %vgapass to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vgapass, align 1
  %conv = zext i8 %5 to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.98, i32 noundef %conv)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_vgapass(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @simple_strtoul(ptr noundef %buf, ptr noundef null, i32 noundef 0) #11
  tail call fastcc void @sstfb_setvgapass(ptr noundef %1, i32 noundef %call1)
  ret i32 %count
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !16, !18, !19, !21, !23, !24, !26, !28, !29, !31, !33, !34, !36, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !76, !77, !78, !79, !81, !83, !84, !85, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !139, !141, !143, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !158, !160, !162, !164, !165, !166, !167, !169, !171, !172, !174, !176, !178, !179, !180, !181, !183, !184, !185, !187, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !211, !212, !214, !215, !216, !218, !220, !221, !222, !223, !225, !226, !227, !228, !230}
!llvm.named.register.sp = !{!232}
!llvm.module.flags = !{!233, !234, !235, !236, !237, !238, !239, !240}
!llvm.ident = !{!241}

!0 = !{ptr @__initcall__kmod_sstfb__305_1514_sstfb_init6, !1, !"__initcall__kmod_sstfb__305_1514_sstfb_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/sstfb.c", i32 1514, i32 1}
!2 = !{ptr @__exitcall_sstfb_exit, !3, !"__exitcall_sstfb_exit", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/sstfb.c", i32 1515, i32 1}
!4 = !{ptr @__UNIQUE_ID_author306, !5, !"__UNIQUE_ID_author306", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/sstfb.c", i32 1517, i32 1}
!6 = !{ptr @__UNIQUE_ID_description307, !7, !"__UNIQUE_ID_description307", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/sstfb.c", i32 1518, i32 1}
!8 = !{ptr @__UNIQUE_ID_file308, !9, !"__UNIQUE_ID_file308", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/sstfb.c", i32 1519, i32 1}
!10 = !{ptr @__UNIQUE_ID_license309, !9, !"__UNIQUE_ID_license309", i1 false, i1 false}
!11 = !{ptr @__param_mem, !12, !"__param_mem", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/sstfb.c", i32 1521, i32 1}
!13 = !{ptr @__UNIQUE_ID_memtype310, !12, !"__UNIQUE_ID_memtype310", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_mem311, !15, !"__UNIQUE_ID_mem311", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/sstfb.c", i32 1522, i32 1}
!16 = !{ptr @__param_vgapass, !17, !"__param_vgapass", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/sstfb.c", i32 1523, i32 1}
!18 = !{ptr @__UNIQUE_ID_vgapasstype312, !17, !"__UNIQUE_ID_vgapasstype312", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_vgapass313, !20, !"__UNIQUE_ID_vgapass313", i1 false, i1 false}
!20 = !{!"../drivers/video/fbdev/sstfb.c", i32 1524, i32 1}
!21 = !{ptr @__param_clipping, !22, !"__param_clipping", i1 false, i1 false}
!22 = !{!"../drivers/video/fbdev/sstfb.c", i32 1525, i32 1}
!23 = !{ptr @__UNIQUE_ID_clippingtype314, !22, !"__UNIQUE_ID_clippingtype314", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_clipping315, !25, !"__UNIQUE_ID_clipping315", i1 false, i1 false}
!25 = !{!"../drivers/video/fbdev/sstfb.c", i32 1526, i32 1}
!26 = !{ptr @__param_gfxclk, !27, !"__param_gfxclk", i1 false, i1 false}
!27 = !{!"../drivers/video/fbdev/sstfb.c", i32 1527, i32 1}
!28 = !{ptr @__UNIQUE_ID_gfxclktype316, !27, !"__UNIQUE_ID_gfxclktype316", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_gfxclk317, !30, !"__UNIQUE_ID_gfxclk317", i1 false, i1 false}
!30 = !{!"../drivers/video/fbdev/sstfb.c", i32 1528, i32 1}
!31 = !{ptr @__param_slowpci, !32, !"__param_slowpci", i1 false, i1 false}
!32 = !{!"../drivers/video/fbdev/sstfb.c", i32 1529, i32 1}
!33 = !{ptr @__UNIQUE_ID_slowpcitype318, !32, !"__UNIQUE_ID_slowpcitype318", i1 false, i1 false}
!34 = !{ptr @__UNIQUE_ID_slowpci319, !35, !"__UNIQUE_ID_slowpci319", i1 false, i1 false}
!35 = !{!"../drivers/video/fbdev/sstfb.c", i32 1530, i32 1}
!36 = !{ptr @__param_mode_option, !37, !"__param_mode_option", i1 false, i1 false}
!37 = !{!"../drivers/video/fbdev/sstfb.c", i32 1531, i32 1}
!38 = !{ptr @__UNIQUE_ID_mode_optiontype320, !37, !"__UNIQUE_ID_mode_optiontype320", i1 false, i1 false}
!39 = !{ptr @__UNIQUE_ID_mode_option321, !40, !"__UNIQUE_ID_mode_option321", i1 false, i1 false}
!40 = !{!"../drivers/video/fbdev/sstfb.c", i32 1532, i32 1}
!41 = !{ptr @vgapass, !42, !"vgapass", i1 false, i1 false}
!42 = !{!"../drivers/video/fbdev/sstfb.c", i32 97, i32 13}
!43 = !{ptr @mem, !44, !"mem", i1 false, i1 false}
!44 = !{!"../drivers/video/fbdev/sstfb.c", i32 98, i32 12}
!45 = !{ptr @gfxclk, !46, !"gfxclk", i1 false, i1 false}
!46 = !{!"../drivers/video/fbdev/sstfb.c", i32 100, i32 12}
!47 = !{ptr @slowpci, !48, !"slowpci", i1 false, i1 false}
!48 = !{!"../drivers/video/fbdev/sstfb.c", i32 101, i32 13}
!49 = !{ptr @.str, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/video/fbdev/sstfb.c", i32 1501, i32 21}
!51 = !{ptr @.str.1, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/video/fbdev/sstfb.c", i32 1282, i32 38}
!53 = !{ptr @.str.2, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/video/fbdev/sstfb.c", i32 1287, i32 25}
!55 = !{ptr @.str.3, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/video/fbdev/sstfb.c", i32 1289, i32 30}
!57 = !{ptr @.str.4, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/video/fbdev/sstfb.c", i32 1291, i32 30}
!59 = !{ptr @.str.5, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/video/fbdev/sstfb.c", i32 1293, i32 30}
!61 = !{ptr @.str.6, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/video/fbdev/sstfb.c", i32 1295, i32 30}
!63 = !{ptr @.str.7, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/video/fbdev/sstfb.c", i32 1297, i32 30}
!65 = !{ptr @.str.8, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/video/fbdev/sstfb.c", i32 1299, i32 31}
!67 = !{ptr @.str.9, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/video/fbdev/sstfb.c", i32 1301, i32 31}
!69 = !{ptr @sstfb_driver, !70, !"sstfb_driver", i1 false, i1 false}
!70 = !{!"../drivers/video/fbdev/sstfb.c", i32 1489, i32 26}
!71 = !{ptr @sstfb_id_tbl, !72, !"sstfb_id_tbl", i1 false, i1 false}
!72 = !{!"../drivers/video/fbdev/sstfb.c", i32 1481, i32 35}
!73 = !{ptr @.str.10, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/video/fbdev/sstfb.c", i32 1331, i32 3}
!75 = !{ptr @.str.11, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.12, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @sstfb_probe._entry, !74, !"_entry", i1 false, i1 false}
!78 = !{ptr @sstfb_probe._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.13, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/video/fbdev/sstfb.c", i32 1356, i32 7}
!81 = !{ptr @.str.15, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/video/fbdev/sstfb.c", i32 1357, i32 3}
!83 = !{ptr @sstfb_probe._entry.14, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @sstfb_probe._entry_ptr.16, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.17, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/video/fbdev/sstfb.c", i32 1361, i32 7}
!87 = !{ptr @.str.19, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/video/fbdev/sstfb.c", i32 1362, i32 3}
!89 = !{ptr @sstfb_probe._entry.18, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @sstfb_probe._entry_ptr.20, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.22, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/video/fbdev/sstfb.c", i32 1369, i32 3}
!93 = !{ptr @sstfb_probe._entry.21, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @sstfb_probe._entry_ptr.23, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.25, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/video/fbdev/sstfb.c", i32 1375, i32 3}
!97 = !{ptr @sstfb_probe._entry.24, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @sstfb_probe._entry_ptr.26, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.28, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/video/fbdev/sstfb.c", i32 1381, i32 3}
!101 = !{ptr @sstfb_probe._entry.27, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @sstfb_probe._entry_ptr.29, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.31, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/video/fbdev/sstfb.c", i32 1387, i32 2}
!105 = !{ptr @sstfb_probe._entry.30, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @sstfb_probe._entry_ptr.32, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.34, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/video/fbdev/sstfb.c", i32 1389, i32 2}
!109 = !{ptr @sstfb_probe._entry.33, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @sstfb_probe._entry_ptr.35, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.37, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/video/fbdev/sstfb.c", i32 1414, i32 3}
!113 = !{ptr @sstfb_probe._entry.36, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @sstfb_probe._entry_ptr.38, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.40, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/video/fbdev/sstfb.c", i32 1419, i32 3}
!117 = !{ptr @sstfb_probe._entry.39, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @sstfb_probe._entry_ptr.41, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.43, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/video/fbdev/sstfb.c", i32 1424, i32 3}
!121 = !{ptr @sstfb_probe._entry.42, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @sstfb_probe._entry_ptr.44, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.46, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/video/fbdev/sstfb.c", i32 1431, i32 3}
!125 = !{ptr @sstfb_probe._entry.45, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @sstfb_probe._entry_ptr.47, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.49, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/video/fbdev/sstfb.c", i32 1438, i32 3}
!129 = !{ptr @sstfb_probe._entry.48, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @sstfb_probe._entry_ptr.50, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.52, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/video/fbdev/sstfb.c", i32 1441, i32 2}
!133 = !{ptr @sstfb_probe._entry.51, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @sstfb_probe._entry_ptr.53, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.54, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/video/fbdev/sstfb.c", i32 118, i32 12}
!137 = !{ptr @.str.55, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/video/fbdev/sstfb.c", i32 119, i32 12}
!139 = !{ptr @voodoo_spec, !140, !"voodoo_spec", i1 false, i1 false}
!140 = !{!"../drivers/video/fbdev/sstfb.c", i32 117, i32 24}
!141 = !{ptr @.str.56, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/video/fbdev/sstfb.c", i32 1186, i32 3}
!143 = !{ptr @.str.57, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @sst_init._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @sst_init._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.59, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/video/fbdev/sstfb.c", i32 1194, i32 3}
!148 = !{ptr @sst_init._entry.58, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @sst_init._entry_ptr.60, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.62, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/video/fbdev/sstfb.c", i32 1197, i32 3}
!152 = !{ptr @sst_init._entry.61, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @sst_init._entry_ptr.63, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.64, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/video/fbdev/sstfb.c", i32 1110, i32 13}
!156 = !{ptr @.str.65, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/video/fbdev/sstfb.c", i32 1115, i32 13}
!158 = !{ptr @.str.66, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/video/fbdev/sstfb.c", i32 1119, i32 13}
!160 = !{ptr @dacs, !161, !"dacs", i1 false, i1 false}
!161 = !{!"../drivers/video/fbdev/sstfb.c", i32 1109, i32 26}
!162 = !{ptr @.str.67, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/video/fbdev/sstfb.c", i32 833, i32 3}
!164 = !{ptr @.str.68, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @sst_get_memsize._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @sst_get_memsize._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @sstfb_ops, !168, !"sstfb_ops", i1 false, i1 false}
!168 = !{!"../drivers/video/fbdev/sstfb.c", i32 1310, i32 28}
!169 = distinct !{null, !170, !"__already_done", i1 false, i1 false}
!170 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!171 = distinct !{null, !170, !"<string literal>", i1 false, i1 false}
!172 = distinct !{null, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!174 = !{ptr @.str.71, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!176 = !{ptr @.str.72, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/video/fbdev/sstfb.c", i32 710, i32 3}
!178 = !{ptr @.str.73, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @sstfb_setvgapass._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @sstfb_setvgapass._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.75, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/video/fbdev/sstfb.c", i32 713, i32 3}
!183 = !{ptr @sstfb_setvgapass._entry.74, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @sstfb_setvgapass._entry_ptr.76, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.77, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/video/fbdev/sstfb.c", i32 362, i32 3}
!187 = !{ptr @.str.78, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @sstfb_check_var._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @sstfb_check_var._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.80, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/video/fbdev/sstfb.c", i32 382, i32 3}
!192 = !{ptr @sstfb_check_var._entry.79, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @sstfb_check_var._entry_ptr.81, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.83, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/video/fbdev/sstfb.c", i32 398, i32 4}
!196 = !{ptr @sstfb_check_var._entry.82, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @sstfb_check_var._entry_ptr.84, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.86, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/video/fbdev/sstfb.c", i32 407, i32 4}
!200 = !{ptr @sstfb_check_var._entry.85, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @sstfb_check_var._entry_ptr.87, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.89, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/video/fbdev/sstfb.c", i32 415, i32 4}
!204 = !{ptr @sstfb_check_var._entry.88, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @sstfb_check_var._entry_ptr.90, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @sstfb_check_var._entry.91, !207, !"_entry", i1 false, i1 false}
!207 = !{!"../drivers/video/fbdev/sstfb.c", i32 420, i32 4}
!208 = !{ptr @sstfb_check_var._entry_ptr.92, !207, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @sstfb_check_var._entry.93, !210, !"_entry", i1 false, i1 false}
!210 = !{!"../drivers/video/fbdev/sstfb.c", i32 428, i32 4}
!211 = !{ptr @sstfb_check_var._entry_ptr.94, !210, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.96, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/video/fbdev/sstfb.c", i32 439, i32 3}
!214 = !{ptr @sstfb_check_var._entry.95, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @sstfb_check_var._entry_ptr.97, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @device_attrs, !217, !"device_attrs", i1 false, i1 false}
!217 = !{!"../drivers/video/fbdev/sstfb.c", i32 739, i32 32}
!218 = !{ptr @.str.98, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/video/fbdev/sstfb.c", i32 736, i32 22}
!220 = !{ptr @__param_str_mem, !12, !"__param_str_mem", i1 false, i1 false}
!221 = !{ptr @__param_str_vgapass, !17, !"__param_str_vgapass", i1 false, i1 false}
!222 = !{ptr @__param_str_clipping, !22, !"__param_str_clipping", i1 false, i1 false}
!223 = !{ptr @clipping, !224, !"clipping", i1 false, i1 false}
!224 = !{!"../drivers/video/fbdev/sstfb.c", i32 99, i32 13}
!225 = !{ptr @__param_str_gfxclk, !27, !"__param_str_gfxclk", i1 false, i1 false}
!226 = !{ptr @__param_str_slowpci, !32, !"__param_str_slowpci", i1 false, i1 false}
!227 = !{ptr @__param_str_mode_option, !37, !"__param_str_mode_option", i1 false, i1 false}
!228 = !{ptr @.str.99, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/video/fbdev/sstfb.c", i32 108, i32 28}
!230 = !{ptr @mode_option, !231, !"mode_option", i1 false, i1 false}
!231 = !{!"../drivers/video/fbdev/sstfb.c", i32 108, i32 14}
!232 = !{!"sp"}
!233 = !{i32 1, !"wchar_size", i32 2}
!234 = !{i32 1, !"min_enum_size", i32 4}
!235 = !{i32 8, !"branch-target-enforcement", i32 0}
!236 = !{i32 8, !"sign-return-address", i32 0}
!237 = !{i32 8, !"sign-return-address-all", i32 0}
!238 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!239 = !{i32 7, !"uwtable", i32 1}
!240 = !{i32 7, !"frame-pointer", i32 2}
!241 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!242 = !{!"auto-init"}
!243 = !{i64 4757568}
!244 = !{i64 2156248008}
!245 = !{i64 2156248415}
!246 = !{i64 4757150}
!247 = !{i8 0, i8 2}
!248 = !{i64 2156295633}
!249 = !{i64 2156296047}
!250 = !{i64 2156296470}
!251 = !{i64 2156302883}
!252 = !{i64 2156309578}
!253 = !{i64 2156310084}
!254 = !{i64 2153475465, i64 2153475490}
!255 = !{!"branch_weights", i32 2000, i32 1}
!256 = !{i64 5971020}
!257 = !{i64 5971217}
!258 = !{i64 2153456450}
!259 = !{i64 2153476146, i64 2153476171}
