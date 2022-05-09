; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/aty/atyfb_base.c_pt.bc'
source_filename = "../drivers/video/fbdev/aty/atyfb_base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.77 }
%union.anon.77 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atyfb_par = type { [16 x i32], [256 x %struct.anon], ptr, ptr, ptr, i32, %struct.crtc, %union.aty_pll, %struct.pll_info, i32, i32, i32, i32, i32, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, %struct.aty_interrupt, i32, i32, %struct.spinlock, i32, i32, %struct.crtc, %union.aty_pll }
%struct.anon = type { i8, i8, i8 }
%struct.pll_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aty_interrupt = type { %struct.wait_queue_head, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.crtc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.aty_pll = type { %struct.pll_ct }
%struct.pll_ct = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.80, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.80 = type { ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.79, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.79 = type { ptr }
%struct.aty_pll_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@lt_lcd_regs = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 116, i32 212, i32 60, i32 168, i32 200, i32 204, i32 0, i32 188, i32 216], [60 x i8] zeroinitializer }, align 32
@atyfb_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.2, ptr @atyfb_pci_tbl, ptr @atyfb_pci_probe, ptr @atyfb_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atyfb_pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_atyfb__305_3998_atyfb_init6 = internal global ptr @atyfb_init, section ".initcall6.init", align 4
@__exitcall_atyfb_exit = internal global ptr @atyfb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description306 = internal constant [52 x i8] c"atyfb.description=FBDev driver for ATI Mach64 cards\00", section ".modinfo", align 1
@__UNIQUE_ID_file307 = internal constant [41 x i8] c"atyfb.file=drivers/video/fbdev/aty/atyfb\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [18 x i8] c"atyfb.license=GPL\00", section ".modinfo", align 1
@__param_str_noaccel = internal constant [14 x i8] c"atyfb.noaccel\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@noaccel = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_noaccel = internal constant %struct.kernel_param { ptr @__param_str_noaccel, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.77 { ptr @noaccel } }, section "__param", align 4
@__UNIQUE_ID_noacceltype309 = internal constant [28 x i8] c"atyfb.parmtype=noaccel:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_noaccel310 = internal constant [46 x i8] c"atyfb.parm=noaccel:bool: disable acceleration\00", section ".modinfo", align 1
@__param_str_vram = internal constant [11 x i8] c"atyfb.vram\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@vram = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_vram = internal constant %struct.kernel_param { ptr @__param_str_vram, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.77 { ptr @vram } }, section "__param", align 4
@__UNIQUE_ID_vramtype311 = internal constant [24 x i8] c"atyfb.parmtype=vram:int\00", section ".modinfo", align 1
@__UNIQUE_ID_vram312 = internal constant [48 x i8] c"atyfb.parm=vram:int: override size of video ram\00", section ".modinfo", align 1
@__param_str_pll = internal constant [10 x i8] c"atyfb.pll\00", align 1
@pll = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_pll = internal constant %struct.kernel_param { ptr @__param_str_pll, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.77 { ptr @pll } }, section "__param", align 4
@__UNIQUE_ID_plltype313 = internal constant [23 x i8] c"atyfb.parmtype=pll:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pll314 = internal constant [41 x i8] c"atyfb.parm=pll:int: override video clock\00", section ".modinfo", align 1
@__param_str_mclk = internal constant [11 x i8] c"atyfb.mclk\00", align 1
@mclk = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_mclk = internal constant %struct.kernel_param { ptr @__param_str_mclk, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.77 { ptr @mclk } }, section "__param", align 4
@__UNIQUE_ID_mclktype315 = internal constant [24 x i8] c"atyfb.parmtype=mclk:int\00", section ".modinfo", align 1
@__UNIQUE_ID_mclk316 = internal constant [43 x i8] c"atyfb.parm=mclk:int: override memory clock\00", section ".modinfo", align 1
@__param_str_xclk = internal constant [11 x i8] c"atyfb.xclk\00", align 1
@xclk = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_xclk = internal constant %struct.kernel_param { ptr @__param_str_xclk, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.77 { ptr @xclk } }, section "__param", align 4
@__UNIQUE_ID_xclktype317 = internal constant [24 x i8] c"atyfb.parmtype=xclk:int\00", section ".modinfo", align 1
@__UNIQUE_ID_xclk318 = internal constant [55 x i8] c"atyfb.parm=xclk:int: override accelerated engine clock\00", section ".modinfo", align 1
@__param_str_comp_sync = internal constant [16 x i8] c"atyfb.comp_sync\00", align 1
@comp_sync = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_comp_sync = internal constant %struct.kernel_param { ptr @__param_str_comp_sync, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.77 { ptr @comp_sync } }, section "__param", align 4
@__UNIQUE_ID_comp_synctype319 = internal constant [29 x i8] c"atyfb.parmtype=comp_sync:int\00", section ".modinfo", align 1
@__UNIQUE_ID_comp_sync320 = internal constant [70 x i8] c"atyfb.parm=comp_sync:Set composite sync signal to low (0) or high (1)\00", section ".modinfo", align 1
@__param_str_mode = internal constant [11 x i8] c"atyfb.mode\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@mode = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_mode = internal constant %struct.kernel_param { ptr @__param_str_mode, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.77 { ptr @mode } }, section "__param", align 4
@__UNIQUE_ID_modetype321 = internal constant [26 x i8] c"atyfb.parmtype=mode:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_mode322 = internal constant [75 x i8] c"atyfb.parm=mode:Specify resolution as \22<xres>x<yres>[-<bpp>][@<refresh>]\22 \00", section ".modinfo", align 1
@__param_str_nomtrr = internal constant [13 x i8] c"atyfb.nomtrr\00", align 1
@nomtrr = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_nomtrr = internal constant %struct.kernel_param { ptr @__param_str_nomtrr, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.77 { ptr @nomtrr } }, section "__param", align 4
@__UNIQUE_ID_nomtrrtype323 = internal constant [27 x i8] c"atyfb.parmtype=nomtrr:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nomtrr324 = internal constant [54 x i8] c"atyfb.parm=nomtrr:bool: disable use of MTRR registers\00", section ".modinfo", align 1
@reboot_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @reboot_lock, i64 52), ptr getelementptr (i8, ptr @reboot_lock, i64 52) }, ptr @reboot_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reboot_lock.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reboot_lock\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"atyfb\00", [26 x i8] zeroinitializer }, align 32
@atyfb_pci_tbl = internal constant { [36 x %struct.pci_device_id], [288 x i8] } { [36 x %struct.pci_device_id] [%struct.pci_device_id { i32 4098, i32 18264, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 17240, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 17236, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 17748, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 19540, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 22100, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 18260, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 22101, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 18261, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 19527, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 22102, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 18262, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 18263, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 18265, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 18266, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 18242, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 18244, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 18249, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 18256, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 18257, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 19522, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 19524, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 19529, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 19536, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 19537, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 18253, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 18254, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 18255, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 18252, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 18258, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 18259, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 19533, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 19534, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 19538, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 19539, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [288 x i8] zeroinitializer }, align 32
@atyfb_pci_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @atyfb_pci_suspend, ptr @atyfb_pci_resume, ptr @atyfb_pci_freeze, ptr @atyfb_pci_resume, ptr @atyfb_pci_hibernate, ptr @atyfb_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@atyfb_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 3541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013atyfb: Cannot enable PCI device\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atyfb_pci_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/video/fbdev/aty/atyfb_base.c\00", [59 x i8] zeroinitializer }, align 32
@atyfb_pci_probe._entry_ptr = internal global ptr @atyfb_pci_probe._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@atyfb_fix = internal constant { %struct.fb_fix_screeninfo, [60 x i8] } { %struct.fb_fix_screeninfo { [16 x i8] c"ATY Mach64\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 3, i16 8, i16 1, i16 0, i32 0, i32 0, i32 0, i32 0, i16 0, [2 x i16] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@atyfb_setup_generic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.5, i32 3446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016atyfb: using auxiliary register aperture\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atyfb_setup_generic\00", [44 x i8] zeroinitializer }, align 32
@atyfb_setup_generic._entry_ptr = internal global ptr @atyfb_setup_generic._entry, section ".printk_index", align 4
@correct_chipset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016atyfb: %s [0x%04x rev 0x%02x]\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"correct_chipset\00", [16 x i8] zeroinitializer }, align 32
@correct_chipset._entry_ptr = internal global ptr @correct_chipset._entry, section ".printk_index", align 4
@aty_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.5, i32 2408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016atyfb: aty_init: DAC type not implemented yet!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aty_init\00", [23 x i8] zeroinitializer }, align 32
@aty_init._entry_ptr = internal global ptr @aty_init._entry, section ".printk_index", align 4
@aty_init._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.5, i32 2423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016atyfb: aty_init: CLK type not implemented yet!\00", [47 x i8] zeroinitializer }, align 32
@aty_init._entry_ptr.58 = internal global ptr @aty_init._entry.56, section ".printk_index", align 4
@aty_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.55, ptr @.str.5, i32 2595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016atyfb: %d%c %s, %s MHz XTAL, %d MHz PLL, %d Mhz MCLK, %d MHz XCLK\0A\00", [59 x i8] zeroinitializer }, align 32
@aty_init._entry_ptr.63 = internal global ptr @aty_init._entry.61, section ".printk_index", align 4
@atyfb_ops = internal global { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr @atyfb_open, ptr @atyfb_release, ptr null, ptr null, ptr @atyfb_check_var, ptr @atyfb_set_par, ptr @atyfb_setcolreg, ptr null, ptr @atyfb_blank, ptr @atyfb_pan_display, ptr @atyfb_fillrect, ptr @atyfb_copyarea, ptr @atyfb_imageblit, ptr null, ptr @atyfb_sync, ptr @atyfb_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@aty_init._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.55, ptr @.str.5, i32 2740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013atyfb: can't set default video mode\0A\00", [57 x i8] zeroinitializer }, align 32
@aty_init._entry_ptr.66 = internal global ptr @aty_init._entry.64, section ".printk_index", align 4
@aty_init._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.55, ptr @.str.5, i32 2763, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016atyfb: fb%d: %s frame buffer device on %s\0A\00", [51 x i8] zeroinitializer }, align 32
@aty_init._entry_ptr.69 = internal global ptr @aty_init._entry.67, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@atyfb_set_par._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.5, i32 1322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013atyfb: Invalid pixclock\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atyfb_set_par\00", [18 x i8] zeroinitializer }, align 32
@atyfb_set_par._entry_ptr = internal global ptr @atyfb_set_par._entry, section ".printk_index", align 4
@aty_var_to_crtc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.5, i32 879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\012atyfb: invalid bpp\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aty_var_to_crtc\00", [16 x i8] zeroinitializer }, align 32
@aty_var_to_crtc._entry_ptr = internal global ptr @aty_var_to_crtc._entry, section ".printk_index", align 4
@aty_var_to_crtc._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.5, i32 884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\012atyfb: not enough video RAM\0A\00", [33 x i8] zeroinitializer }, align 32
@aty_var_to_crtc._entry_ptr.78 = internal global ptr @aty_var_to_crtc._entry.76, section ".printk_index", align 4
@aty_var_to_crtc._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.5, i32 891, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\012atyfb: MACH64 chips are designed for max 1920x1200\0Aselect another resolution.\0A\00", [47 x i8] zeroinitializer }, align 32
@aty_var_to_crtc._entry_ptr.81 = internal global ptr @aty_var_to_crtc._entry.79, section ".printk_index", align 4
@aty_var_to_crtc._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.75, ptr @.str.5, i32 935, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016atyfb: Disable LCD panel, because video mode does not fit.\0A\00", [34 x i8] zeroinitializer }, align 32
@aty_var_to_crtc._entry_ptr.84 = internal global ptr @aty_var_to_crtc._entry.82, section ".printk_index", align 4
@aty_var_to_crtc._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.75, ptr @.str.5, i32 940, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [126 x i8], [34 x i8] } { [126 x i8] c"\013atyfb: Video mode exceeds size of LCD panel.\0AConnect this computer to a conventional monitor if you really need this mode.\0A\00", [34 x i8] zeroinitializer }, align 32
@aty_var_to_crtc._entry_ptr.87 = internal global ptr @aty_var_to_crtc._entry.85, section ".printk_index", align 4
@aty_var_to_crtc._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.75, ptr @.str.5, i32 988, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\012atyfb: h_disp too large %x(%x)\0A\00", [62 x i8] zeroinitializer }, align 32
@aty_var_to_crtc._entry_ptr.90 = internal global ptr @aty_var_to_crtc._entry.88, section ".printk_index", align 4
@aty_var_to_crtc._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.75, ptr @.str.5, i32 989, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\012atyfb: h_sync_strt too large %x(%x)\0A\00", [57 x i8] zeroinitializer }, align 32
@aty_var_to_crtc._entry_ptr.93 = internal global ptr @aty_var_to_crtc._entry.91, section ".printk_index", align 4
@aty_var_to_crtc._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.75, ptr @.str.5, i32 993, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\012atyfb: h_total too large %x(%x)\0A\00", [61 x i8] zeroinitializer }, align 32
@aty_var_to_crtc._entry_ptr.96 = internal global ptr @aty_var_to_crtc._entry.94, section ".printk_index", align 4
@aty_var_to_crtc._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.75, ptr @.str.5, i32 1008, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\012atyfb: v_disp too large %x(%x)\0A\00", [62 x i8] zeroinitializer }, align 32
@aty_var_to_crtc._entry_ptr.99 = internal global ptr @aty_var_to_crtc._entry.97, section ".printk_index", align 4
@aty_var_to_crtc._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.75, ptr @.str.5, i32 1009, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\012atyfb: v_sync_stsrt too large %x(%x)\0A\00", [56 x i8] zeroinitializer }, align 32
@aty_var_to_crtc._entry_ptr.102 = internal global ptr @aty_var_to_crtc._entry.100, section ".printk_index", align 4
@aty_var_to_crtc._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.75, ptr @.str.5, i32 1013, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\012atyfb: v_total too large %x(%x)\0A\00", [61 x i8] zeroinitializer }, align 32
@aty_var_to_crtc._entry_ptr.105 = internal global ptr @aty_var_to_crtc._entry.103, section ".printk_index", align 4
@aty_var_to_crtc.StretchLoops = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\0A\0C\0D\0F\10", [27 x i8] zeroinitializer }, align 32
@aty_enable_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.5, i32 1649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"atyfb: someone disabled IRQ [%08x]\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aty_enable_irq\00", [17 x i8] zeroinitializer }, align 32
@aty_enable_irq._entry_ptr = internal global ptr @aty_enable_irq._entry, section ".printk_index", align 4
@aty_bl_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.5, i32 2268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014aty: Backlight registration failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aty_bl_init\00", [20 x i8] zeroinitializer }, align 32
@aty_bl_init._entry_ptr = internal global ptr @aty_bl_init._entry, section ".printk_index", align 4
@aty_bl_init._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.110, ptr @.str.5, i32 2281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"aty: Backlight initialized (%s)\0A\00", [63 x i8] zeroinitializer }, align 32
@aty_bl_init._entry_ptr.113 = internal global ptr @aty_bl_init._entry.111, section ".printk_index", align 4
@atyfb_check_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.114, ptr @.str.5, i32 1551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atyfb_check_var\00", [16 x i8] zeroinitializer }, align 32
@atyfb_check_var._entry_ptr = internal global ptr @atyfb_check_var._entry, section ".printk_index", align 4
@aty_crtc_to_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.5, i32 1262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013atyfb: Invalid pixel width\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aty_crtc_to_var\00", [16 x i8] zeroinitializer }, align 32
@aty_crtc_to_var._entry_ptr = internal global ptr @aty_crtc_to_var._entry, section ".printk_index", align 4
@aty_bl_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.5, i32 2293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"aty: Backlight unloaded\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aty_bl_exit\00", [20 x i8] zeroinitializer }, align 32
@aty_bl_exit._entry_ptr = internal global ptr @aty_bl_exit._entry, section ".printk_index", align 4
@.str.119 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"noaccel\00", [24 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nomtrr\00", [25 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vram:\00", [26 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll:\00", [27 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mclk:\00", [26 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xclk:\00", [26 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"comp_sync:\00", [21 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"backlight:\00", [21 x i8] zeroinitializer }, align 32
@switch.table.atyfb_check_var = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 10, i32 11, i32 16, i32 16], [44 x i8] zeroinitializer }, align 32
@switch.table.atyfb_check_var.129 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 8, i32 5, i32 5, i32 8, i32 8], [44 x i8] zeroinitializer }, align 32
@switch.table.atyfb_check_var.130 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 5, i32 5, i32 8, i32 8], [44 x i8] zeroinitializer }, align 32
@switch.table.atyfb_check_var.131 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 8, i32 5, i32 6, i32 8, i32 8], [44 x i8] zeroinitializer }, align 32
@switch.table.atyfb_check_var.132 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 0, i32 0, i32 24], [44 x i8] zeroinitializer }, align 32
@switch.table.atyfb_check_var.133 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 0, i32 0, i32 8], [44 x i8] zeroinitializer }, align 32
@switch.table.atyfb_check_var.134 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 8, i32 16, i32 16, i32 24, i32 32], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.136 = internal global [6 x i64] [i64 4, i64 32, i64 15, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.137 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.138 = private unnamed_addr constant [12 x i8] c"lt_lcd_regs\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 137, i32 18 }
@___asan_gen_.141 = private unnamed_addr constant [13 x i8] c"atyfb_driver\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 3826, i32 26 }
@___asan_gen_.144 = private unnamed_addr constant [8 x i8] c"noaccel\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 322, i32 13 }
@___asan_gen_.147 = private unnamed_addr constant [5 x i8] c"vram\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 324, i32 12 }
@___asan_gen_.150 = private unnamed_addr constant [4 x i8] c"pll\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 325, i32 12 }
@___asan_gen_.153 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 326, i32 12 }
@___asan_gen_.156 = private unnamed_addr constant [5 x i8] c"xclk\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 327, i32 12 }
@___asan_gen_.159 = private unnamed_addr constant [10 x i8] c"comp_sync\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 328, i32 12 }
@___asan_gen_.162 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 329, i32 14 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"nomtrr\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 323, i32 13 }
@___asan_gen_.168 = private unnamed_addr constant [12 x i8] c"reboot_lock\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 279, i32 8 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 3827, i32 11 }
@___asan_gen_.180 = private unnamed_addr constant [14 x i8] c"atyfb_pci_tbl\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 3770, i32 35 }
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"atyfb_pci_pm_ops\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2184, i32 32 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 3541, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [10 x i8] c"atyfb_fix\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 225, i32 39 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 3446, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 555, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2408, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2423, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2591, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [10 x i8] c"atyfb_ops\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 300, i32 22 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2740, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2762, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1322, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 879, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 884, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 890, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 935, i32 6 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 940, i32 6 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 988, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 989, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 993, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1008, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1009, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1013, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant [13 x i8] c"StretchLoops\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1090, i32 24 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1648, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2268, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2281, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1551, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 1262, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 2293, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 3844, i32 38 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 3845, i32 26 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 3847, i32 33 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 3849, i32 33 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 3851, i32 31 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 3853, i32 31 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 3855, i32 31 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 3857, i32 31 }
@___asan_gen_.408 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.409 = private constant [40 x i8] c"../drivers/video/fbdev/aty/atyfb_base.c\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 3859, i32 31 }
@___asan_gen_.411 = private unnamed_addr constant [29 x i8] c"switch.table.atyfb_check_var\00", align 1
@___asan_gen_.412 = private unnamed_addr constant [33 x i8] c"switch.table.atyfb_check_var.129\00", align 1
@___asan_gen_.413 = private unnamed_addr constant [33 x i8] c"switch.table.atyfb_check_var.130\00", align 1
@___asan_gen_.414 = private unnamed_addr constant [33 x i8] c"switch.table.atyfb_check_var.131\00", align 1
@___asan_gen_.415 = private unnamed_addr constant [33 x i8] c"switch.table.atyfb_check_var.132\00", align 1
@___asan_gen_.416 = private unnamed_addr constant [33 x i8] c"switch.table.atyfb_check_var.133\00", align 1
@___asan_gen_.417 = private unnamed_addr constant [33 x i8] c"switch.table.atyfb_check_var.134\00", align 1
@llvm.compiler.used = appending global [154 x ptr] [ptr @__UNIQUE_ID_comp_sync320, ptr @__UNIQUE_ID_comp_synctype319, ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__UNIQUE_ID_mclk316, ptr @__UNIQUE_ID_mclktype315, ptr @__UNIQUE_ID_mode322, ptr @__UNIQUE_ID_modetype321, ptr @__UNIQUE_ID_noaccel310, ptr @__UNIQUE_ID_noacceltype309, ptr @__UNIQUE_ID_nomtrr324, ptr @__UNIQUE_ID_nomtrrtype323, ptr @__UNIQUE_ID_pll314, ptr @__UNIQUE_ID_plltype313, ptr @__UNIQUE_ID_vram312, ptr @__UNIQUE_ID_vramtype311, ptr @__UNIQUE_ID_xclk318, ptr @__UNIQUE_ID_xclktype317, ptr @__exitcall_atyfb_exit, ptr @__initcall__kmod_atyfb__305_3998_atyfb_init6, ptr @__param_comp_sync, ptr @__param_mclk, ptr @__param_mode, ptr @__param_noaccel, ptr @__param_nomtrr, ptr @__param_pll, ptr @__param_vram, ptr @__param_xclk, ptr @aty_bl_exit._entry, ptr @aty_bl_exit._entry_ptr, ptr @aty_bl_init._entry, ptr @aty_bl_init._entry.111, ptr @aty_bl_init._entry_ptr, ptr @aty_bl_init._entry_ptr.113, ptr @aty_crtc_to_var._entry, ptr @aty_crtc_to_var._entry_ptr, ptr @aty_enable_irq._entry, ptr @aty_enable_irq._entry_ptr, ptr @aty_init._entry, ptr @aty_init._entry.56, ptr @aty_init._entry.61, ptr @aty_init._entry.64, ptr @aty_init._entry.67, ptr @aty_init._entry_ptr, ptr @aty_init._entry_ptr.58, ptr @aty_init._entry_ptr.63, ptr @aty_init._entry_ptr.66, ptr @aty_init._entry_ptr.69, ptr @aty_var_to_crtc._entry, ptr @aty_var_to_crtc._entry.100, ptr @aty_var_to_crtc._entry.103, ptr @aty_var_to_crtc._entry.76, ptr @aty_var_to_crtc._entry.79, ptr @aty_var_to_crtc._entry.82, ptr @aty_var_to_crtc._entry.85, ptr @aty_var_to_crtc._entry.88, ptr @aty_var_to_crtc._entry.91, ptr @aty_var_to_crtc._entry.94, ptr @aty_var_to_crtc._entry.97, ptr @aty_var_to_crtc._entry_ptr, ptr @aty_var_to_crtc._entry_ptr.102, ptr @aty_var_to_crtc._entry_ptr.105, ptr @aty_var_to_crtc._entry_ptr.78, ptr @aty_var_to_crtc._entry_ptr.81, ptr @aty_var_to_crtc._entry_ptr.84, ptr @aty_var_to_crtc._entry_ptr.87, ptr @aty_var_to_crtc._entry_ptr.90, ptr @aty_var_to_crtc._entry_ptr.93, ptr @aty_var_to_crtc._entry_ptr.96, ptr @aty_var_to_crtc._entry_ptr.99, ptr @atyfb_check_var._entry, ptr @atyfb_check_var._entry_ptr, ptr @atyfb_exit, ptr @atyfb_pci_probe._entry, ptr @atyfb_pci_probe._entry_ptr, ptr @atyfb_set_par._entry, ptr @atyfb_set_par._entry_ptr, ptr @atyfb_setup_generic._entry, ptr @atyfb_setup_generic._entry_ptr, ptr @correct_chipset._entry, ptr @correct_chipset._entry_ptr, ptr @lt_lcd_regs, ptr @atyfb_driver, ptr @noaccel, ptr @vram, ptr @pll, ptr @mclk, ptr @xclk, ptr @comp_sync, ptr @mode, ptr @nomtrr, ptr @reboot_lock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @atyfb_pci_tbl, ptr @atyfb_pci_pm_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @atyfb_fix, ptr @.str.6, ptr @.str.7, ptr @.str.14, ptr @.str.15, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.62, ptr @atyfb_ops, ptr @.str.65, ptr @.str.68, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @aty_var_to_crtc.StretchLoops, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @switch.table.atyfb_check_var, ptr @switch.table.atyfb_check_var.129, ptr @switch.table.atyfb_check_var.130, ptr @switch.table.atyfb_check_var.131, ptr @switch.table.atyfb_check_var.132, ptr @switch.table.atyfb_check_var.133, ptr @switch.table.atyfb_check_var.134], section "llvm.metadata"
@0 = internal global [98 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lt_lcd_regs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atyfb_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noaccel to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vram to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mclk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xclk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp_sync to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nomtrr to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reboot_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atyfb_pci_tbl to i32), i32 1152, i32 1440, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atyfb_pci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atyfb_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atyfb_fix to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atyfb_setup_generic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @correct_chipset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_init._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atyfb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_init._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_init._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atyfb_set_par._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_var_to_crtc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_var_to_crtc._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_var_to_crtc._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_var_to_crtc._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_var_to_crtc._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 126, i32 160, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_var_to_crtc._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_var_to_crtc._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_var_to_crtc._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_var_to_crtc._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_var_to_crtc._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_var_to_crtc._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_var_to_crtc.StretchLoops to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_enable_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_bl_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_bl_init._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atyfb_check_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_crtc_to_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aty_bl_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atyfb_check_var to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atyfb_check_var.129 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atyfb_check_var.130 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atyfb_check_var.131 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atyfb_check_var.132 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atyfb_check_var.133 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atyfb_check_var.134 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aty_st_lcd(i32 noundef %index, i32 noundef %val, ptr nocapture noundef readonly %par) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr inbounds %struct.atyfb_par, ptr %par, i32 0, i32 9
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [9 x i32], ptr @lt_lcd_regs, i32 0, i32 %index
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %val) #9
  %ati_regbase.i = getelementptr inbounds %struct.atyfb_par, ptr %par, i32 0, i32 4
  %5 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #9, !srcloc !383
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ati_regbase.i8 = getelementptr inbounds %struct.atyfb_par, ptr %par, i32 0, i32 4
  %7 = ptrtoint ptr %ati_regbase.i8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ati_regbase.i8, align 4
  %add.ptr.i9 = getelementptr i8, ptr %8, i32 164
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %10 = and i32 %9, -1056964609
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %or = or i32 %11, %index
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %13 = ptrtoint ptr %ati_regbase.i8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ati_regbase.i8, align 4
  %add.ptr.i11 = getelementptr i8, ptr %14, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %12) #9, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %15 = tail call i32 @llvm.bswap.i32(i32 %val) #9
  %16 = ptrtoint ptr %ati_regbase.i8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ati_regbase.i8, align 4
  %add.ptr.i13 = getelementptr i8, ptr %17, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %15) #9, !srcloc !383
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aty_ld_lcd(i32 noundef %index, ptr nocapture noundef readonly %par) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr inbounds %struct.atyfb_par, ptr %par, i32 0, i32 9
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [9 x i32], ptr @lt_lcd_regs, i32 0, i32 %index
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %ati_regbase.i = getelementptr inbounds %struct.atyfb_par, ptr %par, i32 0, i32 4
  %4 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !384
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ati_regbase.i9 = getelementptr inbounds %struct.atyfb_par, ptr %par, i32 0, i32 4
  %8 = ptrtoint ptr %ati_regbase.i9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ati_regbase.i9, align 4
  %add.ptr.i10 = getelementptr i8, ptr %9, i32 164
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %11 = and i32 %10, -1056964609
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %or = or i32 %12, %index
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %13 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %14 = ptrtoint ptr %ati_regbase.i9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ati_regbase.i9, align 4
  %add.ptr.i12 = getelementptr i8, ptr %15, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %13) #9, !srcloc !383
  %16 = ptrtoint ptr %ati_regbase.i9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ati_regbase.i9, align 4
  %add.ptr.i14 = getelementptr i8, ptr %17, i32 168
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #9, !srcloc !384
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %7, %if.then ], [ %19, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atyfb_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @atyfb_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atyfb_init() #2 section ".init.text" align 64 {
entry:
  %option = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #9
  %0 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %option, align 4
  %call = call i32 @fb_get_options(ptr noundef nonnull @.str.2, ptr noundef nonnull %option) #9
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
  call fastcc void @atyfb_setup(ptr noundef %2) #12
  %call2 = call i32 @__pci_register_driver(ptr noundef nonnull @atyfb_driver, ptr noundef null, ptr noundef nonnull @.str.2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  %spec.select = select i1 %tobool3.not, i32 0, i32 -19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aty_set_crtc(ptr noundef readonly %par, ptr noundef readonly %crtc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lcd_table = getelementptr inbounds %struct.atyfb_par, ptr %par, i32 0, i32 29
  %0 = ptrtoint ptr %lcd_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lcd_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %gen_cntl = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 11
  %2 = ptrtoint ptr %gen_cntl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gen_cntl, align 4
  %and = and i32 %3, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %and) #9
  %ati_regbase.i = getelementptr inbounds %struct.atyfb_par, ptr %par, i32 0, i32 4
  %5 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #9, !srcloc !383
  %lcd_config_panel = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 22
  %7 = ptrtoint ptr %lcd_config_panel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lcd_config_panel, align 4
  %features.i = getelementptr inbounds %struct.atyfb_par, ptr %par, i32 0, i32 9
  %9 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %features.i, align 4
  %and.i = and i32 %10, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %11 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  %12 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %11) #9, !srcloc !383
  br label %aty_st_lcd.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %15, i32 164
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %17 = and i32 %16, -1056964609
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %19, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %17) #9, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %20 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  %21 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %22, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %20) #9, !srcloc !383
  br label %aty_st_lcd.exit

aty_st_lcd.exit:                                  ; preds = %if.else.i, %if.then.i
  %lcd_gen_cntl = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 21
  %23 = ptrtoint ptr %lcd_gen_cntl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lcd_gen_cntl, align 4
  %and1 = and i32 %24, 939524095
  %25 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %features.i, align 4
  %and.i92 = and i32 %26, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i92)
  %tobool.not.i93 = icmp eq i32 %and.i92, 0
  br i1 %tobool.not.i93, label %if.else.i101, label %if.then.i96

if.then.i96:                                      ; preds = %aty_st_lcd.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %27 = tail call i32 @llvm.bswap.i32(i32 %and1) #9
  %28 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i95 = getelementptr i8, ptr %29, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i95, i32 %27) #9, !srcloc !383
  br label %aty_st_lcd.exit102

if.else.i101:                                     ; preds = %aty_st_lcd.exit
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i9.i98 = getelementptr i8, ptr %31, i32 164
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i98) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %33 = and i32 %32, -1056964609
  %34 = or i32 %33, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %35 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i11.i99 = getelementptr i8, ptr %36, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i99, i32 %34) #9, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %37 = tail call i32 @llvm.bswap.i32(i32 %and1) #9
  %38 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i13.i100 = getelementptr i8, ptr %39, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i100, i32 %37) #9, !srcloc !383
  br label %aty_st_lcd.exit102

aty_st_lcd.exit102:                               ; preds = %if.else.i101, %if.then.i96
  %horz_stretching = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 14
  %40 = ptrtoint ptr %horz_stretching to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %horz_stretching, align 4
  %and2 = and i32 %41, 1073741823
  %42 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %features.i, align 4
  %and.i104 = and i32 %43, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i104)
  %tobool.not.i105 = icmp eq i32 %and.i104, 0
  br i1 %tobool.not.i105, label %if.else.i114, label %if.then.i108

if.then.i108:                                     ; preds = %aty_st_lcd.exit102
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %44 = tail call i32 @llvm.bswap.i32(i32 %and2) #9
  %45 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i107 = getelementptr i8, ptr %46, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i107, i32 %44) #9, !srcloc !383
  br label %aty_st_lcd.exit115

if.else.i114:                                     ; preds = %aty_st_lcd.exit102
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i9.i110 = getelementptr i8, ptr %48, i32 164
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i110) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %50 = and i32 %49, -1056964609
  %51 = or i32 %50, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %52 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i11.i112 = getelementptr i8, ptr %53, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i112, i32 %51) #9, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %54 = tail call i32 @llvm.bswap.i32(i32 %and2) #9
  %55 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i13.i113 = getelementptr i8, ptr %56, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i113, i32 %54) #9, !srcloc !383
  br label %aty_st_lcd.exit115

aty_st_lcd.exit115:                               ; preds = %if.else.i114, %if.then.i108
  %vert_stretching = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 15
  %57 = ptrtoint ptr %vert_stretching to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %vert_stretching, align 4
  %and3 = and i32 %58, 1023
  %59 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %features.i, align 4
  %and.i117 = and i32 %60, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i117)
  %tobool.not.i118 = icmp eq i32 %and.i117, 0
  br i1 %tobool.not.i118, label %if.else.i127, label %if.then.i121

if.then.i121:                                     ; preds = %aty_st_lcd.exit115
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %61 = tail call i32 @llvm.bswap.i32(i32 %and3) #9
  %62 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i120 = getelementptr i8, ptr %63, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i120, i32 %61) #9, !srcloc !383
  br label %if.end

if.else.i127:                                     ; preds = %aty_st_lcd.exit115
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i9.i123 = getelementptr i8, ptr %65, i32 164
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i123) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %67 = and i32 %66, -1056964609
  %68 = or i32 %67, 83886080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %69 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i11.i125 = getelementptr i8, ptr %70, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i125, i32 %68) #9, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %71 = tail call i32 @llvm.bswap.i32(i32 %and3) #9
  %72 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i13.i126 = getelementptr i8, ptr %73, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i126, i32 %71) #9, !srcloc !383
  br label %if.end

if.end:                                           ; preds = %if.else.i127, %if.then.i121, %entry.if.end_crit_edge
  %gen_cntl4 = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 11
  %74 = ptrtoint ptr %gen_cntl4 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %gen_cntl4, align 4
  %and5 = and i32 %75, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %76 = tail call i32 @llvm.bswap.i32(i32 %and5) #9
  %ati_regbase.i129 = getelementptr inbounds %struct.atyfb_par, ptr %par, i32 0, i32 4
  %77 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ati_regbase.i129, align 4
  %add.ptr.i130 = getelementptr i8, ptr %78, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 %76) #9, !srcloc !383
  %h_tot_disp = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 5
  %79 = ptrtoint ptr %h_tot_disp to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %h_tot_disp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #9
  %82 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ati_regbase.i129, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %81) #9, !srcloc !383
  %h_sync_strt_wid = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 6
  %84 = ptrtoint ptr %h_sync_strt_wid to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %h_sync_strt_wid, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #9
  %87 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ati_regbase.i129, align 4
  %add.ptr.i133 = getelementptr i8, ptr %88, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133, i32 %86) #9, !srcloc !383
  %v_tot_disp = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 7
  %89 = ptrtoint ptr %v_tot_disp to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %v_tot_disp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #9
  %92 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ati_regbase.i129, align 4
  %add.ptr.i135 = getelementptr i8, ptr %93, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135, i32 %91) #9, !srcloc !383
  %v_sync_strt_wid = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 8
  %94 = ptrtoint ptr %v_sync_strt_wid to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %v_sync_strt_wid, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #9
  %97 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ati_regbase.i129, align 4
  %add.ptr.i137 = getelementptr i8, ptr %98, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i137, i32 %96) #9, !srcloc !383
  %off_pitch = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 10
  %99 = ptrtoint ptr %off_pitch to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %off_pitch, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #9
  %102 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ati_regbase.i129, align 4
  %add.ptr.i139 = getelementptr i8, ptr %103, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139, i32 %101) #9, !srcloc !383
  %vline_crnt_vline = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 9
  %104 = ptrtoint ptr %vline_crnt_vline to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %vline_crnt_vline, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #9
  %107 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ati_regbase.i129, align 4
  %add.ptr.i141 = getelementptr i8, ptr %108, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141, i32 %106) #9, !srcloc !383
  %109 = ptrtoint ptr %gen_cntl4 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %gen_cntl4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #9
  %112 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ati_regbase.i129, align 4
  %add.ptr.i143 = getelementptr i8, ptr %113, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143, i32 %111) #9, !srcloc !383
  %114 = ptrtoint ptr %lcd_table to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %lcd_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp16.not = icmp eq i32 %115, 0
  br i1 %cmp16.not, label %if.end.if.end41_crit_edge, label %if.then17

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then17:                                        ; preds = %if.end
  %lcd_gen_cntl18 = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 21
  %116 = ptrtoint ptr %lcd_gen_cntl18 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %lcd_gen_cntl18, align 4
  %and19 = and i32 %117, 939524095
  %or20 = or i32 %and19, -1073741824
  %features.i144 = getelementptr inbounds %struct.atyfb_par, ptr %par, i32 0, i32 9
  %118 = ptrtoint ptr %features.i144 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %features.i144, align 4
  %and.i145 = and i32 %119, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i145)
  %tobool.not.i146 = icmp eq i32 %and.i145, 0
  br i1 %tobool.not.i146, label %if.else.i155, label %if.then.i149

if.then.i149:                                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %120 = tail call i32 @llvm.bswap.i32(i32 %or20) #9
  %121 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ati_regbase.i129, align 4
  %add.ptr.i.i148 = getelementptr i8, ptr %122, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i148, i32 %120) #9, !srcloc !383
  br label %aty_st_lcd.exit156

if.else.i155:                                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %123 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ati_regbase.i129, align 4
  %add.ptr.i9.i151 = getelementptr i8, ptr %124, i32 164
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i151) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %126 = and i32 %125, -1056964609
  %127 = or i32 %126, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %128 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ati_regbase.i129, align 4
  %add.ptr.i11.i153 = getelementptr i8, ptr %129, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i153, i32 %127) #9, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %130 = tail call i32 @llvm.bswap.i32(i32 %or20) #9
  %131 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ati_regbase.i129, align 4
  %add.ptr.i13.i154 = getelementptr i8, ptr %132, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i154, i32 %130) #9, !srcloc !383
  br label %aty_st_lcd.exit156

aty_st_lcd.exit156:                               ; preds = %if.else.i155, %if.then.i149
  %shadow_h_tot_disp = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 17
  %133 = ptrtoint ptr %shadow_h_tot_disp to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %shadow_h_tot_disp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %135 = tail call i32 @llvm.bswap.i32(i32 %134) #9
  %136 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ati_regbase.i129, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 %135) #9, !srcloc !383
  %shadow_h_sync_strt_wid = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 18
  %138 = ptrtoint ptr %shadow_h_sync_strt_wid to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %shadow_h_sync_strt_wid, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #9
  %141 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ati_regbase.i129, align 4
  %add.ptr.i159 = getelementptr i8, ptr %142, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159, i32 %140) #9, !srcloc !383
  %shadow_v_tot_disp = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 19
  %143 = ptrtoint ptr %shadow_v_tot_disp to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %shadow_v_tot_disp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %145 = tail call i32 @llvm.bswap.i32(i32 %144) #9
  %146 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ati_regbase.i129, align 4
  %add.ptr.i161 = getelementptr i8, ptr %147, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i161, i32 %145) #9, !srcloc !383
  %shadow_v_sync_strt_wid = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 20
  %148 = ptrtoint ptr %shadow_v_sync_strt_wid to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %shadow_v_sync_strt_wid, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %150 = tail call i32 @llvm.bswap.i32(i32 %149) #9
  %151 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ati_regbase.i129, align 4
  %add.ptr.i163 = getelementptr i8, ptr %152, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163, i32 %150) #9, !srcloc !383
  %153 = ptrtoint ptr %features.i144 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %features.i144, align 4
  %and29 = and i32 %154, 262144
  %155 = ptrtoint ptr %lcd_gen_cntl18 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %lcd_gen_cntl18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not.i166 = icmp eq i32 %and29, 0
  br i1 %tobool.not.i166, label %if.else.i175, label %if.then.i169

if.then.i169:                                     ; preds = %aty_st_lcd.exit156
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %157 = tail call i32 @llvm.bswap.i32(i32 %156) #9
  %158 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %ati_regbase.i129, align 4
  %add.ptr.i.i168 = getelementptr i8, ptr %159, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i168, i32 %157) #9, !srcloc !383
  br label %aty_st_lcd.exit176

if.else.i175:                                     ; preds = %aty_st_lcd.exit156
  call void @__sanitizer_cov_trace_pc() #11
  %160 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ati_regbase.i129, align 4
  %add.ptr.i9.i171 = getelementptr i8, ptr %161, i32 164
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i171) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %163 = and i32 %162, -1056964609
  %164 = or i32 %163, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %165 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %ati_regbase.i129, align 4
  %add.ptr.i11.i173 = getelementptr i8, ptr %166, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i173, i32 %164) #9, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %167 = tail call i32 @llvm.bswap.i32(i32 %156) #9
  %168 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ati_regbase.i129, align 4
  %add.ptr.i13.i174 = getelementptr i8, ptr %169, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i174, i32 %167) #9, !srcloc !383
  br label %aty_st_lcd.exit176

aty_st_lcd.exit176:                               ; preds = %if.else.i175, %if.then.i169
  %horz_stretching34 = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 14
  %170 = ptrtoint ptr %horz_stretching34 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %horz_stretching34, align 4
  %172 = ptrtoint ptr %features.i144 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %features.i144, align 4
  %and.i178 = and i32 %173, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i178)
  %tobool.not.i179 = icmp eq i32 %and.i178, 0
  br i1 %tobool.not.i179, label %if.else.i188, label %if.then.i182

if.then.i182:                                     ; preds = %aty_st_lcd.exit176
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %174 = tail call i32 @llvm.bswap.i32(i32 %171) #9
  %175 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %ati_regbase.i129, align 4
  %add.ptr.i.i181 = getelementptr i8, ptr %176, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i181, i32 %174) #9, !srcloc !383
  br label %aty_st_lcd.exit189

if.else.i188:                                     ; preds = %aty_st_lcd.exit176
  call void @__sanitizer_cov_trace_pc() #11
  %177 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %ati_regbase.i129, align 4
  %add.ptr.i9.i184 = getelementptr i8, ptr %178, i32 164
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i184) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %180 = and i32 %179, -1056964609
  %181 = or i32 %180, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %182 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %ati_regbase.i129, align 4
  %add.ptr.i11.i186 = getelementptr i8, ptr %183, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i186, i32 %181) #9, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %184 = tail call i32 @llvm.bswap.i32(i32 %171) #9
  %185 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %ati_regbase.i129, align 4
  %add.ptr.i13.i187 = getelementptr i8, ptr %186, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i187, i32 %184) #9, !srcloc !383
  br label %aty_st_lcd.exit189

aty_st_lcd.exit189:                               ; preds = %if.else.i188, %if.then.i182
  %vert_stretching35 = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 15
  %187 = ptrtoint ptr %vert_stretching35 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %vert_stretching35, align 4
  %189 = ptrtoint ptr %features.i144 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %features.i144, align 4
  %and.i191 = and i32 %190, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i191)
  %tobool.not.i192 = icmp eq i32 %and.i191, 0
  br i1 %tobool.not.i192, label %if.else.i201, label %if.then.i195

if.then.i195:                                     ; preds = %aty_st_lcd.exit189
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %191 = tail call i32 @llvm.bswap.i32(i32 %188) #9
  %192 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %ati_regbase.i129, align 4
  %add.ptr.i.i194 = getelementptr i8, ptr %193, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i194, i32 %191) #9, !srcloc !383
  br label %aty_st_lcd.exit202

if.else.i201:                                     ; preds = %aty_st_lcd.exit189
  call void @__sanitizer_cov_trace_pc() #11
  %194 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %ati_regbase.i129, align 4
  %add.ptr.i9.i197 = getelementptr i8, ptr %195, i32 164
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i197) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %197 = and i32 %196, -1056964609
  %198 = or i32 %197, 83886080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %199 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %ati_regbase.i129, align 4
  %add.ptr.i11.i199 = getelementptr i8, ptr %200, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i199, i32 %198) #9, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %201 = tail call i32 @llvm.bswap.i32(i32 %188) #9
  %202 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %ati_regbase.i129, align 4
  %add.ptr.i13.i200 = getelementptr i8, ptr %203, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i200, i32 %201) #9, !srcloc !383
  br label %aty_st_lcd.exit202

aty_st_lcd.exit202:                               ; preds = %if.else.i201, %if.then.i195
  %204 = ptrtoint ptr %features.i144 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %features.i144, align 4
  %and37 = and i32 %205, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %aty_st_lcd.exit214, label %aty_st_lcd.exit202.if.end41_crit_edge

aty_st_lcd.exit202.if.end41_crit_edge:            ; preds = %aty_st_lcd.exit202
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

aty_st_lcd.exit214:                               ; preds = %aty_st_lcd.exit202
  call void @__sanitizer_cov_trace_pc() #11
  %ext_vert_stretch = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 16
  %206 = ptrtoint ptr %ext_vert_stretch to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %ext_vert_stretch, align 4
  %208 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %ati_regbase.i129, align 4
  %add.ptr.i9.i209 = getelementptr i8, ptr %209, i32 164
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i209) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %211 = and i32 %210, -1056964609
  %212 = or i32 %211, 100663296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %213 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %ati_regbase.i129, align 4
  %add.ptr.i11.i211 = getelementptr i8, ptr %214, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i211, i32 %212) #9, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %215 = tail call i32 @llvm.bswap.i32(i32 %207) #9
  %216 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %ati_regbase.i129, align 4
  %add.ptr.i13.i212 = getelementptr i8, ptr %217, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i212, i32 %215) #9, !srcloc !383
  %218 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %ati_regbase.i129, align 4
  %add.ptr.i216 = getelementptr i8, ptr %219, i32 164
  %220 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i216) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %lcd_index = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 23
  %221 = ptrtoint ptr %lcd_index to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %lcd_index, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %223 = tail call i32 @llvm.bswap.i32(i32 %222) #9
  %224 = ptrtoint ptr %ati_regbase.i129 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %ati_regbase.i129, align 4
  %add.ptr.i218 = getelementptr i8, ptr %225, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i218, i32 %223) #9, !srcloc !383
  br label %if.end41

if.end41:                                         ; preds = %aty_st_lcd.exit214, %aty_st_lcd.exit202.if.end41_crit_edge, %if.end.if.end41_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atyfb_pci_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %flags = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %arrayidx5 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %spec.select = select i1 %tobool2.not, ptr %resource, ptr %arrayidx5
  %2 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spec.select, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool7.not = icmp eq i32 %3, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %end.i = getelementptr inbounds %struct.resource, ptr %spec.select, i32 0, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %3
  %add.i = add i32 %sub.i, %5
  %call12 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %3, i32 noundef %add.i, ptr noundef nonnull @.str.2, i32 noundef 0) #9
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end9.cleanup_crit_edge, label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call16 = tail call ptr @framebuffer_alloc(i32 noundef 1408, ptr noundef %dev) #9
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %par20 = getelementptr inbounds %struct.fb_info, ptr %call16, i32 0, i32 30
  %6 = ptrtoint ptr %par20 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %par20, align 4
  %bus_type = getelementptr inbounds %struct.atyfb_par, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %bus_type to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 7, ptr %bus_type, align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %call16, i32 0, i32 7
  %9 = call ptr @memcpy(ptr %fix, ptr @atyfb_fix, i32 68)
  %device = getelementptr inbounds %struct.fb_info, ptr %call16, i32 0, i32 21
  %10 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %device, align 4
  %device22 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %11 = ptrtoint ptr %device22 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %device22, align 2
  %pci_id = getelementptr inbounds %struct.atyfb_par, ptr %7, i32 0, i32 17
  %13 = ptrtoint ptr %pci_id to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %pci_id, align 4
  %res_start23 = getelementptr inbounds %struct.atyfb_par, ptr %7, i32 0, i32 23
  %14 = ptrtoint ptr %res_start23 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %3, ptr %res_start23, align 4
  %res_size24 = getelementptr inbounds %struct.atyfb_par, ptr %7, i32 0, i32 24
  %15 = ptrtoint ptr %res_size24 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add.i, ptr %res_size24, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  %irq25 = getelementptr inbounds %struct.atyfb_par, ptr %7, i32 0, i32 49
  %18 = ptrtoint ptr %irq25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %irq25, align 4
  %pdev26 = getelementptr inbounds %struct.atyfb_par, ptr %7, i32 0, i32 25
  %19 = ptrtoint ptr %pdev26 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %pdev, ptr %pdev26, align 4
  %20 = load ptr, ptr %par20, align 4
  %add.i99 = add i32 %3, 8384512
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %flags.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 3
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %22, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end19.atyfb_setup_generic.exit_crit_edge, label %land.lhs.true.i

if.end19.atyfb_setup_generic.exit_crit_edge:      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %atyfb_setup_generic.exit

land.lhs.true.i:                                  ; preds = %if.end19
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %end.i.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 1
  %25 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %end.i.i, align 4
  %sub.i.i = sub i32 1, %24
  %add.i.i = add i32 %sub.i.i, %26
  %call2.i = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %24, i32 noundef %add.i.i, ptr noundef nonnull @.str.2, i32 noundef 0) #9
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.atyfb_setup_generic.exit_crit_edge, label %if.then.i

land.lhs.true.i.atyfb_setup_generic.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atyfb_setup_generic.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %aux_start.i = getelementptr inbounds %struct.atyfb_par, ptr %20, i32 0, i32 45
  %29 = ptrtoint ptr %aux_start.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %aux_start.i, align 4
  %30 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %end.i.i, align 4
  %32 = load i32, ptr %arrayidx.i, align 4
  %sub.i2.i = add i32 %31, 1
  %add.i3.i = sub i32 %sub.i2.i, %32
  %aux_size.i = getelementptr inbounds %struct.atyfb_par, ptr %20, i32 0, i32 46
  %33 = ptrtoint ptr %aux_size.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add.i3.i, ptr %aux_size.i, align 4
  %34 = load i32, ptr %arrayidx.i, align 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #13
  br label %atyfb_setup_generic.exit

atyfb_setup_generic.exit:                         ; preds = %if.then.i, %land.lhs.true.i.atyfb_setup_generic.exit_crit_edge, %if.end19.atyfb_setup_generic.exit_crit_edge
  %raddr.0.i = phi i32 [ %34, %if.then.i ], [ %add.i99, %land.lhs.true.i.atyfb_setup_generic.exit_crit_edge ], [ %add.i99, %if.end19.atyfb_setup_generic.exit_crit_edge ]
  %mmio_start.i = getelementptr inbounds %struct.fb_info, ptr %call16, i32 0, i32 7, i32 10
  %35 = ptrtoint ptr %mmio_start.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %raddr.0.i, ptr %mmio_start.i, align 4
  %ati_regbase.i = getelementptr inbounds %struct.atyfb_par, ptr %20, i32 0, i32 4
  %36 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %ati_regbase.i, align 4
  %aux_start = getelementptr inbounds %struct.atyfb_par, ptr %7, i32 0, i32 45
  %37 = ptrtoint ptr %aux_start to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %aux_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool45.not = icmp eq i32 %38, 0
  br i1 %tobool45.not, label %atyfb_setup_generic.exit.if.end48_crit_edge, label %if.then46

atyfb_setup_generic.exit.if.end48_crit_edge:      ; preds = %atyfb_setup_generic.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then46:                                        ; preds = %atyfb_setup_generic.exit
  call void @__sanitizer_cov_trace_pc() #11
  %aux_size = getelementptr inbounds %struct.atyfb_par, ptr %7, i32 0, i32 46
  %39 = ptrtoint ptr %aux_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %aux_size, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %38, i32 noundef %40) #9
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %atyfb_setup_generic.exit.if.end48_crit_edge
  %41 = ptrtoint ptr %res_start23 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %res_start23, align 4
  %43 = ptrtoint ptr %res_size24 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %res_size24, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %42, i32 noundef %44) #9
  tail call void @framebuffer_release(ptr noundef nonnull %call16) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.end15.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -12, %if.end48 ], [ -6, %if.end.cleanup_crit_edge ], [ -16, %if.end9.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atyfb_pci_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @reboot_lock, i32 noundef 0) #9
  tail call void @mutex_unlock(ptr noundef nonnull @reboot_lock) #9
  %par1.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1.i, align 4
  %saved_crtc.i = getelementptr inbounds %struct.atyfb_par, ptr %3, i32 0, i32 53
  tail call fastcc void @aty_set_crtc(ptr noundef %3, ptr noundef %saved_crtc.i) #9
  %pll_ops.i = getelementptr inbounds %struct.atyfb_par, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %pll_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pll_ops.i, align 4
  %set_pll.i = getelementptr inbounds %struct.aty_pll_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %set_pll.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_pll.i, align 4
  %saved_pll.i = getelementptr inbounds %struct.atyfb_par, ptr %3, i32 0, i32 54
  tail call void %7(ptr noundef %1, ptr noundef %saved_pll.i) #9
  tail call void @unregister_framebuffer(ptr noundef %1) #9
  %features.i = getelementptr inbounds %struct.atyfb_par, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %features.i, align 4
  %and.i = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bl_dev.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %bl_dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bl_dev.i, align 4
  tail call void @backlight_device_unregister(ptr noundef %11) #9
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %ati_regbase.i = getelementptr inbounds %struct.atyfb_par, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ati_regbase.i, align 4
  %tobool2.not.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iounmap(ptr noundef nonnull %13) #9
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %14 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %tobool6.not.i = icmp eq ptr %16, null
  br i1 %tobool6.not.i, label %if.end5.i.if.end8.i_crit_edge, label %if.then7.i

if.end5.i.if.end8.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iounmap(ptr noundef nonnull %16) #9
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end5.i.if.end8.i_crit_edge
  %sprite.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %sprite.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sprite.i, align 4
  %tobool9.not.i = icmp eq ptr %18, null
  br i1 %tobool9.not.i, label %if.end8.i.if.end13.i_crit_edge, label %if.then10.i

if.end8.i.if.end13.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iounmap(ptr noundef nonnull %18) #9
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %if.end8.i.if.end13.i_crit_edge
  %aux_start.i = getelementptr inbounds %struct.atyfb_par, ptr %3, i32 0, i32 45
  %19 = ptrtoint ptr %aux_start.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %aux_start.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool14.not.i = icmp eq i32 %20, 0
  br i1 %tobool14.not.i, label %if.end13.i.if.end17.i_crit_edge, label %if.then15.i

if.end13.i.if.end17.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %aux_size.i = getelementptr inbounds %struct.atyfb_par, ptr %3, i32 0, i32 46
  %21 = ptrtoint ptr %aux_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %aux_size.i, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %20, i32 noundef %22) #9
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then15.i, %if.end13.i.if.end17.i_crit_edge
  %res_start.i = getelementptr inbounds %struct.atyfb_par, ptr %3, i32 0, i32 23
  %23 = ptrtoint ptr %res_start.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %res_start.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool18.not.i = icmp eq i32 %24, 0
  br i1 %tobool18.not.i, label %if.end17.i.atyfb_remove.exit_crit_edge, label %if.then19.i

if.end17.i.atyfb_remove.exit_crit_edge:           ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atyfb_remove.exit

if.then19.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  %res_size.i = getelementptr inbounds %struct.atyfb_par, ptr %3, i32 0, i32 24
  %25 = ptrtoint ptr %res_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %res_size.i, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %24, i32 noundef %26) #9
  br label %atyfb_remove.exit

atyfb_remove.exit:                                ; preds = %if.then19.i, %if.end17.i.atyfb_remove.exit_crit_edge
  tail call void @framebuffer_release(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atyfb_check_var(ptr noundef %var, ptr noundef %info) #0 align 64 {
entry:
  %crtc = alloca %struct.crtc, align 4
  %pll = alloca %union.aty_pll, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %crtc) #9
  %2 = call ptr @memset(ptr %crtc, i32 255, i32 96)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %pll) #9
  %pll2 = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 7
  %3 = call ptr @memcpy(ptr %pll, ptr %pll2, i32 48)
  %call = call fastcc i32 @aty_var_to_crtc(ptr noundef %info, ptr noundef %var, ptr noundef nonnull %crtc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pixclock1.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %4 = ptrtoint ptr %pixclock1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixclock1.i, align 4
  %xres.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 7, i32 0, i32 23
  %6 = ptrtoint ptr %xres.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %xres.i, align 4
  %lcd_table.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 29
  %7 = ptrtoint ptr %lcd_table.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lcd_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %if.end.atyfb_get_pixclock.exit_crit_edge, label %if.then.i

if.end.atyfb_get_pixclock.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %atyfb_get_pixclock.exit

if.then.i:                                        ; preds = %if.end
  %features.i.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %features.i.i, align 4
  %and.i.i = and i32 %10, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %ati_regbase.i9.i.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %ati_regbase.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ati_regbase.i9.i.i, align 4
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 212
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !384
  %14 = call i32 @llvm.bswap.i32(i32 %13) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  br label %aty_ld_lcd.exit.i

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i10.i.i = getelementptr i8, ptr %12, i32 164
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i.i) #9, !srcloc !384
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %16 = and i32 %15, -1056964609
  %17 = or i32 %16, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %ati_regbase.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ati_regbase.i9.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %19, i32 164
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i, i32 %17) #9, !srcloc !383
  %20 = ptrtoint ptr %ati_regbase.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ati_regbase.i9.i.i, align 4
  %add.ptr.i14.i.i = getelementptr i8, ptr %21, i32 168
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i.i) #9, !srcloc !384
  %23 = call i32 @llvm.bswap.i32(i32 %22) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  br label %aty_ld_lcd.exit.i

aty_ld_lcd.exit.i:                                ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %14, %if.then.i.i ], [ %23, %if.else.i.i ]
  %and.i = and i32 %retval.0.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %aty_ld_lcd.exit.i.atyfb_get_pixclock.exit_crit_edge, label %if.then2.i

aty_ld_lcd.exit.i.atyfb_get_pixclock.exit_crit_edge: ; preds = %aty_ld_lcd.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atyfb_get_pixclock.exit

if.then2.i:                                       ; preds = %aty_ld_lcd.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %var, align 4
  %26 = ptrtoint ptr %xres.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %xres.i, align 4
  %lcd_pixclock.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 32
  %27 = ptrtoint ptr %lcd_pixclock.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lcd_pixclock.i, align 4
  br label %atyfb_get_pixclock.exit

atyfb_get_pixclock.exit:                          ; preds = %if.then2.i, %aty_ld_lcd.exit.i.atyfb_get_pixclock.exit_crit_edge, %if.end.atyfb_get_pixclock.exit_crit_edge
  %pixclock.0.i = phi i32 [ %28, %if.then2.i ], [ %5, %aty_ld_lcd.exit.i.atyfb_get_pixclock.exit_crit_edge ], [ %5, %if.end.atyfb_get_pixclock.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pixclock.0.i)
  %cmp = icmp eq i32 %pixclock.0.i, 0
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %atyfb_get_pixclock.exit
  %activate = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 13
  %29 = ptrtoint ptr %activate to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %activate, align 4
  %and = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.end, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #13
  br label %cleanup

if.else:                                          ; preds = %atyfb_get_pixclock.exit
  %pll_ops = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %pll_ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pll_ops, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %35 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bits_per_pixel, align 4
  %call9 = call i32 %34(ptr noundef %info, i32 noundef %pixclock.0.i, i32 noundef %36, ptr noundef nonnull %pll) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end13, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.else
  %accel_flags = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 16
  %37 = ptrtoint ptr %accel_flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %accel_flags, align 4
  %and14 = and i32 %38, 1
  %39 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 16
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and14, ptr %39, align 4
  %v_tot_disp.i = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 7
  %41 = ptrtoint ptr %v_tot_disp.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %v_tot_disp.i, align 4
  %and16.i = and i32 %42, 2047
  %shr18.i = lshr i32 %42, 16
  %and19.i = and i32 %shr18.i, 2047
  %v_sync_strt_wid.i = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 8
  %43 = ptrtoint ptr %v_sync_strt_wid.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %v_sync_strt_wid.i, align 4
  %and20.i = and i32 %44, 2047
  %shr22.i = lshr i32 %44, 16
  %and23.i = and i32 %shr22.i, 31
  %gen_cntl.i = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 11
  %45 = ptrtoint ptr %gen_cntl.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %gen_cntl.i, align 4
  %and29.i = and i32 %46, 1792
  %add34.i = add nuw nsw i32 %and19.i, 1
  %47 = add nuw nsw i32 %and20.i, %and23.i
  %sub43.i = sub nsw i32 %and16.i, %47
  %sub44.i = sub nsw i32 %and20.i, %and19.i
  %48 = add nsw i32 %and29.i, -512
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %48)
  %49 = icmp ult i32 %48, 1280
  br i1 %49, label %switch.lookup, label %do.end.i

do.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115) #13
  br label %aty_crtc_to_var.exit

switch.lookup:                                    ; preds = %if.end13
  %50 = lshr exact i32 %48, 8
  %51 = lshr i32 %44, 20
  %52 = and i32 %51, 2
  %h_sync_strt_wid.i = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 6
  %53 = ptrtoint ptr %h_sync_strt_wid.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %h_sync_strt_wid.i, align 4
  %55 = lshr i32 %54, 21
  %.lobit.i = and i32 %55, 1
  %56 = or i32 %52, %.lobit.i
  %and27.i = lshr i32 %46, 1
  %57 = and i32 %and27.i, 8
  %58 = or i32 %56, %57
  %or52.i = xor i32 %58, 3
  %shr11.i = lshr i32 %54, 16
  %and12.i = and i32 %shr11.i, 31
  %mul41.i = shl nuw nsw i32 %and12.i, 3
  %shr5.i = lshr i32 %54, 4
  %and6.i = and i32 %shr5.i, 256
  %and3.i = and i32 %54, 255
  %or.i = or i32 %and6.i, %and3.i
  %h_tot_disp.i = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 5
  %59 = ptrtoint ptr %h_tot_disp.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %h_tot_disp.i, align 4
  %shr.i = lshr i32 %60, 16
  %and2.i = and i32 %shr.i, 255
  %sub38.i = sub nsw i32 %or.i, %and2.i
  %mul39.i = shl nsw i32 %sub38.i, 3
  %shr8.i = lshr i32 %54, 8
  %and9.i = and i32 %shr8.i, 7
  %add40.i = or i32 %mul39.i, %and9.i
  %and.i49 = and i32 %60, 511
  %61 = add nuw nsw i32 %and12.i, %or.i
  %sub35.i = sub nsw i32 %and.i49, %61
  %mul36.i = shl nsw i32 %sub35.i, 3
  %sub37.i = sub nsw i32 %mul36.i, %and9.i
  %add.i = shl nuw nsw i32 %and2.i, 3
  %mul.i = add nuw nsw i32 %add.i, 8
  %and31.i = and i32 %46, 1
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.atyfb_check_var, i32 0, i32 %50
  %62 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %62)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep51 = getelementptr inbounds [5 x i32], ptr @switch.table.atyfb_check_var.129, i32 0, i32 %50
  %63 = ptrtoint ptr %switch.gep51 to i32
  call void @__asan_load4_noabort(i32 %63)
  %switch.load52 = load i32, ptr %switch.gep51, align 4
  %switch.gep53 = getelementptr inbounds [5 x i32], ptr @switch.table.atyfb_check_var.130, i32 0, i32 %50
  %64 = ptrtoint ptr %switch.gep53 to i32
  call void @__asan_load4_noabort(i32 %64)
  %switch.load54 = load i32, ptr %switch.gep53, align 4
  %switch.gep55 = getelementptr inbounds [5 x i32], ptr @switch.table.atyfb_check_var.131, i32 0, i32 %50
  %65 = ptrtoint ptr %switch.gep55 to i32
  call void @__asan_load4_noabort(i32 %65)
  %switch.load56 = load i32, ptr %switch.gep55, align 4
  %switch.gep57 = getelementptr inbounds [5 x i32], ptr @switch.table.atyfb_check_var.132, i32 0, i32 %50
  %66 = ptrtoint ptr %switch.gep57 to i32
  call void @__asan_load4_noabort(i32 %66)
  %switch.load58 = load i32, ptr %switch.gep57, align 4
  %switch.gep59 = getelementptr inbounds [5 x i32], ptr @switch.table.atyfb_check_var.133, i32 0, i32 %50
  %67 = ptrtoint ptr %switch.gep59 to i32
  call void @__asan_load4_noabort(i32 %67)
  %switch.load60 = load i32, ptr %switch.gep59, align 4
  %switch.gep61 = getelementptr inbounds [5 x i32], ptr @switch.table.atyfb_check_var.134, i32 0, i32 %50
  %68 = ptrtoint ptr %switch.gep61 to i32
  call void @__asan_load4_noabort(i32 %68)
  %switch.load62 = load i32, ptr %switch.gep61, align 4
  %red115.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %69 = ptrtoint ptr %red115.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %switch.load, ptr %red115.i, align 4
  %length118.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %70 = ptrtoint ptr %length118.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %switch.load52, ptr %length118.i, align 4
  %green119.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %71 = ptrtoint ptr %green119.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %switch.load54, ptr %green119.i, align 4
  %length122.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %72 = ptrtoint ptr %length122.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %switch.load56, ptr %length122.i, align 4
  %blue123.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %73 = ptrtoint ptr %blue123.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %blue123.i, align 4
  %length126.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %74 = ptrtoint ptr %length126.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %switch.load52, ptr %length126.i, align 4
  %transp127.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %75 = ptrtoint ptr %transp127.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %switch.load58, ptr %transp127.i, align 4
  %length130.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %76 = ptrtoint ptr %length130.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %switch.load60, ptr %length130.i, align 4
  %77 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %mul.i, ptr %var, align 4
  %yres132.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %78 = ptrtoint ptr %yres132.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %add34.i, ptr %yres132.i, align 4
  %79 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %crtc, align 4
  %xres_virtual.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %81 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %xres_virtual.i, align 4
  %vyres.i = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 1
  %82 = ptrtoint ptr %vyres.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %vyres.i, align 4
  %yres_virtual.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %84 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %yres_virtual.i, align 4
  %85 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %switch.load62, ptr %bits_per_pixel, align 4
  %left_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %86 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %sub37.i, ptr %left_margin.i, align 4
  %right_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %87 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add40.i, ptr %right_margin.i, align 4
  %upper_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %88 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %sub43.i, ptr %upper_margin.i, align 4
  %lower_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %89 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %sub44.i, ptr %lower_margin.i, align 4
  %hsync_len.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %90 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %mul41.i, ptr %hsync_len.i, align 4
  %vsync_len.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %91 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %and23.i, ptr %vsync_len.i, align 4
  %sync133.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 24
  %92 = ptrtoint ptr %sync133.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %or52.i, ptr %sync133.i, align 4
  %vmode.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %and33.lobit.i = and i32 %and27.i, 1
  %93 = ptrtoint ptr %vmode.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %and33.lobit.i, ptr %vmode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool136.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool136.not.i, label %switch.lookup.aty_crtc_to_var.exit_crit_edge, label %if.then137.i

switch.lookup.aty_crtc_to_var.exit_crit_edge:     ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %aty_crtc_to_var.exit

if.then137.i:                                     ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %vmode.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 2, ptr %vmode.i, align 4
  %shr140.i = lshr i32 %add34.i, 1
  %95 = ptrtoint ptr %yres132.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %shr140.i, ptr %yres132.i, align 4
  %shr142.i = lshr i32 %sub43.i, 1
  %96 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %shr142.i, ptr %upper_margin.i, align 4
  %shr144.i = lshr i32 %sub44.i, 1
  %97 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %shr144.i, ptr %lower_margin.i, align 4
  %shr146.i = lshr i32 %and23.i, 1
  %98 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %shr146.i, ptr %vsync_len.i, align 4
  br label %aty_crtc_to_var.exit

aty_crtc_to_var.exit:                             ; preds = %if.then137.i, %switch.lookup.aty_crtc_to_var.exit_crit_edge, %do.end.i
  %99 = ptrtoint ptr %pll_ops to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pll_ops, align 4
  %pll_to_var = getelementptr inbounds %struct.aty_pll_ops, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %pll_to_var to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pll_to_var, align 4
  %call25 = call i32 %102(ptr noundef %info, ptr noundef nonnull %pll) #9
  %103 = ptrtoint ptr %pixclock1.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %call25, ptr %pixclock1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %aty_crtc_to_var.exit, %if.else.cleanup_crit_edge, %do.end, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %aty_crtc_to_var.exit ], [ %call, %entry.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %if.then4.cleanup_crit_edge ], [ %call9, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %pll) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %crtc) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atyfb_open(ptr nocapture noundef readonly %info, i32 noundef %user) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %user)
  %tobool.not = icmp eq i32 %user, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %open = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %open, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %open, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atyfb_release(ptr nocapture noundef readonly %info, i32 noundef %user) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %user)
  %tobool.not = icmp eq i32 %user, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %open = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %open, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %open, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #9
  %fifo_space1.i.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %fifo_space1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fifo_space1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp1.i.i = icmp ult i32 %6, 16
  br i1 %cmp1.i.i, label %while.body.lr.ph.i.i, label %if.end.wait_for_fifo.exit.i_crit_edge

if.end.wait_for_fifo.exit.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_for_fifo.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.end
  %ati_regbase.i.i.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %7 = ptrtoint ptr %ati_regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ati_regbase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 784
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %10 = and i32 %9, -65536
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i = icmp eq i32 %10, 0
  %12 = tail call i32 @llvm.ctlz.i32(i32 %11, i1 true) #9, !range !386
  %sub.i.neg.op.i.i = add nsw i32 %12, -16
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 16, i32 %sub.i.neg.op.i.i
  %cmp.i.i = icmp ult i32 %sub.i.i, 16
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.wait_for_fifo.exit.i_crit_edge

while.body.i.i.wait_for_fifo.exit.i_crit_edge:    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_for_fifo.exit.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

wait_for_fifo.exit.i:                             ; preds = %while.body.i.i.wait_for_fifo.exit.i_crit_edge, %if.end.wait_for_fifo.exit.i_crit_edge
  %fifo_space.0.lcssa.i.i = phi i32 [ %6, %if.end.wait_for_fifo.exit.i_crit_edge ], [ %sub.i.i, %while.body.i.i.wait_for_fifo.exit.i_crit_edge ]
  %sub5.i.i = add i32 %fifo_space.0.lcssa.i.i, -16
  %13 = ptrtoint ptr %fifo_space1.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub5.i.i, ptr %fifo_space1.i.i, align 4
  %ati_regbase.i.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %wait_for_fifo.exit.i
  %14 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 824
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %17 = and i32 %16, 16777216
  %cmp.not.i = icmp eq i32 %17, 0
  br i1 %cmp.not.i, label %wait_for_idle.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

wait_for_idle.exit:                               ; preds = %while.cond.i
  %blitter_may_be_busy.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 19
  %18 = ptrtoint ptr %blitter_may_be_busy.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %blitter_may_be_busy.i, align 4
  %19 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool3.not = icmp eq i32 %20, 0
  br i1 %tobool3.not, label %if.end5, label %wait_for_idle.exit.cleanup_crit_edge

wait_for_idle.exit.cleanup_crit_edge:             ; preds = %wait_for_idle.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %wait_for_idle.exit
  %irq_flags.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 48
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %irq_flags.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end5.cleanup_crit_edge, label %if.then.i

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end5
  %pan_display.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 47, i32 2
  %21 = ptrtoint ptr %pan_display.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pan_display.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool1.not.i = icmp eq i32 %22, 0
  br i1 %tobool1.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then2.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %pan_display.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %pan_display.i, align 4
  %off_pitch.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 6, i32 10
  %24 = ptrtoint ptr %off_pitch.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %off_pitch.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #9
  %27 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i10 = getelementptr i8, ptr %28, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10, i32 %26) #9, !srcloc !383
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %int_lock.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 50
  tail call void @_raw_spin_lock_irq(ptr noundef %int_lock.i) #9
  %29 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %30, i32 24
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %32 = and i32 %31, -2007870171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %33 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %34, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %32) #9, !srcloc !383
  tail call void @_raw_spin_unlock_irq(ptr noundef %int_lock.i) #9
  %irq.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 49
  %35 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq.i, align 4
  %call8.i = tail call ptr @free_irq(i32 noundef %36, ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end5.cleanup_crit_edge, %wait_for_idle.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atyfb_set_par(ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %var2 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %asleep = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %asleep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %asleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %crtc = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 6
  %call = tail call fastcc i32 @aty_var_to_crtc(ptr noundef %info, ptr noundef %var2, ptr noundef %crtc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %pixclock1.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 17
  %4 = ptrtoint ptr %pixclock1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixclock1.i, align 4
  %xres.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 7, i32 0, i32 23
  %6 = ptrtoint ptr %xres.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %xres.i, align 4
  %lcd_table.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 29
  %7 = ptrtoint ptr %lcd_table.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lcd_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %if.end5.atyfb_get_pixclock.exit_crit_edge, label %if.then.i

if.end5.atyfb_get_pixclock.exit_crit_edge:        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %atyfb_get_pixclock.exit

if.then.i:                                        ; preds = %if.end5
  %features.i.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %features.i.i, align 4
  %and.i.i = and i32 %10, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %ati_regbase.i9.i.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %ati_regbase.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ati_regbase.i9.i.i, align 4
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 212
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !384
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  br label %aty_ld_lcd.exit.i

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i10.i.i = getelementptr i8, ptr %12, i32 164
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i.i) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %16 = and i32 %15, -1056964609
  %17 = or i32 %16, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %ati_regbase.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ati_regbase.i9.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %19, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i, i32 %17) #9, !srcloc !383
  %20 = ptrtoint ptr %ati_regbase.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ati_regbase.i9.i.i, align 4
  %add.ptr.i14.i.i = getelementptr i8, ptr %21, i32 168
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i.i) #9, !srcloc !384
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  br label %aty_ld_lcd.exit.i

aty_ld_lcd.exit.i:                                ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %14, %if.then.i.i ], [ %23, %if.else.i.i ]
  %and.i = and i32 %retval.0.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %aty_ld_lcd.exit.i.atyfb_get_pixclock.exit_crit_edge, label %if.then2.i

aty_ld_lcd.exit.i.atyfb_get_pixclock.exit_crit_edge: ; preds = %aty_ld_lcd.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %atyfb_get_pixclock.exit

if.then2.i:                                       ; preds = %aty_ld_lcd.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %var2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %var2, align 4
  %26 = ptrtoint ptr %xres.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %xres.i, align 4
  %lcd_pixclock.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 32
  %27 = ptrtoint ptr %lcd_pixclock.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lcd_pixclock.i, align 4
  br label %atyfb_get_pixclock.exit

atyfb_get_pixclock.exit:                          ; preds = %if.then2.i, %aty_ld_lcd.exit.i.atyfb_get_pixclock.exit_crit_edge, %if.end5.atyfb_get_pixclock.exit_crit_edge
  %pixclock.0.i = phi i32 [ %28, %if.then2.i ], [ %5, %aty_ld_lcd.exit.i.atyfb_get_pixclock.exit_crit_edge ], [ %5, %if.end5.atyfb_get_pixclock.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pixclock.0.i)
  %cmp = icmp eq i32 %pixclock.0.i, 0
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %atyfb_get_pixclock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #13
  br label %cleanup

if.else:                                          ; preds = %atyfb_get_pixclock.exit
  %pll_ops = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %pll_ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pll_ops, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %33 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bits_per_pixel, align 4
  %pll = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 7
  %call10 = tail call i32 %32(ptr noundef %info, i32 noundef %pixclock.0.i, i32 noundef %34, ptr noundef %pll) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end14, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.else
  %accel_flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 16
  %35 = ptrtoint ptr %accel_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %accel_flags, align 4
  %accel_flags15 = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 18
  %37 = ptrtoint ptr %accel_flags15 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %accel_flags15, align 4
  %38 = load i32, ptr %accel_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool17.not = icmp eq i32 %38, 0
  br i1 %tobool17.not, label %if.else19, label %if.then18

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  store ptr @atyfb_sync, ptr getelementptr inbounds (%struct.fb_ops, ptr @atyfb_ops, i32 0, i32 15), align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 4
  %and = and i32 %40, -3
  store i32 %and, ptr %flags, align 4
  br label %if.end21

if.else19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  store ptr null, ptr getelementptr inbounds (%struct.fb_ops, ptr @atyfb_ops, i32 0, i32 15), align 4
  %flags20 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %41 = ptrtoint ptr %flags20 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags20, align 4
  %or = or i32 %42, 2
  store i32 %or, ptr %flags20, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.then18
  %blitter_may_be_busy = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 19
  %43 = ptrtoint ptr %blitter_may_be_busy to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %blitter_may_be_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool22.not = icmp eq i32 %44, 0
  br i1 %tobool22.not, label %if.end21.if.end24_crit_edge, label %if.then23

if.end21.if.end24_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then23:                                        ; preds = %if.end21
  %fifo_space1.i.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 20
  %45 = ptrtoint ptr %fifo_space1.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fifo_space1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %46)
  %cmp1.i.i = icmp ult i32 %46, 16
  br i1 %cmp1.i.i, label %while.body.lr.ph.i.i, label %if.then23.wait_for_fifo.exit.i_crit_edge

if.then23.wait_for_fifo.exit.i_crit_edge:         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_for_fifo.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.then23
  %ati_regbase.i.i.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %47 = ptrtoint ptr %ati_regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ati_regbase.i.i.i, align 4
  %add.ptr.i.i.i175 = getelementptr i8, ptr %48, i32 784
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i175) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %50 = and i32 %49, -65536
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i.i.i = icmp eq i32 %50, 0
  %52 = tail call i32 @llvm.ctlz.i32(i32 %51, i1 true) #9, !range !386
  %sub.i.neg.op.i.i = add nsw i32 %52, -16
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 16, i32 %sub.i.neg.op.i.i
  %cmp.i.i = icmp ult i32 %sub.i.i, 16
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.wait_for_fifo.exit.i_crit_edge

while.body.i.i.wait_for_fifo.exit.i_crit_edge:    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_for_fifo.exit.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

wait_for_fifo.exit.i:                             ; preds = %while.body.i.i.wait_for_fifo.exit.i_crit_edge, %if.then23.wait_for_fifo.exit.i_crit_edge
  %fifo_space.0.lcssa.i.i = phi i32 [ %46, %if.then23.wait_for_fifo.exit.i_crit_edge ], [ %sub.i.i, %while.body.i.i.wait_for_fifo.exit.i_crit_edge ]
  %sub5.i.i = add i32 %fifo_space.0.lcssa.i.i, -16
  %53 = ptrtoint ptr %fifo_space1.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %sub5.i.i, ptr %fifo_space1.i.i, align 4
  %ati_regbase.i.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %wait_for_fifo.exit.i
  %54 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %55, i32 824
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %57 = and i32 %56, 16777216
  %cmp.not.i176 = icmp eq i32 %57, 0
  br i1 %cmp.not.i176, label %wait_for_idle.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

wait_for_idle.exit:                               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %blitter_may_be_busy to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %blitter_may_be_busy, align 4
  br label %if.end24

if.end24:                                         ; preds = %wait_for_idle.exit, %if.end21.if.end24_crit_edge
  tail call fastcc void @aty_set_crtc(ptr noundef %1, ptr noundef %crtc)
  %dac_ops = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 2
  %59 = ptrtoint ptr %dac_ops to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dac_ops, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %63 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bits_per_pixel, align 4
  %65 = ptrtoint ptr %accel_flags15 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %accel_flags15, align 4
  %call29 = tail call i32 %62(ptr noundef %info, ptr noundef %pll, i32 noundef %64, i32 noundef %66) #9
  %67 = ptrtoint ptr %pll_ops to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pll_ops, align 4
  %set_pll = getelementptr inbounds %struct.aty_pll_ops, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %set_pll to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %set_pll, align 4
  tail call void %70(ptr noundef %info, ptr noundef %pll) #9
  %features = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 9
  %71 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %features, align 4
  %and32 = and i32 %72, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %ati_regbase.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %73 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %74, i32 176
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  br i1 %tobool33.not, label %if.then34, label %if.else43

if.then34:                                        ; preds = %if.end24
  %76 = and i32 %75, -16
  %77 = tail call i32 @llvm.bswap.i32(i32 %76)
  %78 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bits_per_pixel, align 4
  %80 = zext i32 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values)
  switch i32 %79, label %if.then34.sw.epilog_crit_edge [
    i32 8, label %sw.bb
    i32 16, label %sw.bb39
    i32 32, label %sw.bb41
  ]

if.then34.sw.epilog_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  %or38 = or i32 %77, 33554432
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  %or40 = or i32 %77, 50331648
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  %or42 = or i32 %77, 100663296
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb41, %sw.bb39, %sw.bb, %if.then34.sw.epilog_crit_edge
  %tmp.0 = phi i32 [ %77, %if.then34.sw.epilog_crit_edge ], [ %or42, %sw.bb41 ], [ %or40, %sw.bb39 ], [ %or38, %sw.bb ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %81 = tail call i32 @llvm.bswap.i32(i32 %tmp.0) #9
  %82 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i178 = getelementptr i8, ptr %83, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178, i32 %81) #9, !srcloc !383
  br label %if.end86

if.else43:                                        ; preds = %if.end24
  %84 = and i32 %75, -61456
  %85 = tail call i32 @llvm.bswap.i32(i32 %84)
  %86 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %features, align 4
  %and47 = and i32 %87, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.then49, label %if.else43.if.end51_crit_edge

if.else43.if.end51_crit_edge:                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then49:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #11
  %mem_refresh_rate = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 16
  %88 = ptrtoint ptr %mem_refresh_rate to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %mem_refresh_rate, align 2
  %conv = zext i8 %89 to i32
  %shl = shl nuw nsw i32 %conv, 20
  %or50 = or i32 %shl, %85
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.else43.if.end51_crit_edge
  %tmp.1 = phi i32 [ %85, %if.else43.if.end51_crit_edge ], [ %or50, %if.then49 ]
  %90 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %bits_per_pixel, align 4
  %92 = add i32 %91, -8
  %93 = tail call i32 @llvm.fshl.i32(i32 %92, i32 %92, i32 29)
  %94 = zext i32 %93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %93, label %if.end51.sw.epilog59_crit_edge [
    i32 3, label %sw.bb57
    i32 1, label %sw.bb55
  ]

if.end51.sw.epilog59_crit_edge:                   ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog59

sw.bb55:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %or56 = or i32 %tmp.1, 67108864
  br label %sw.epilog59

sw.bb57:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %or58 = or i32 %tmp.1, 134217728
  br label %sw.epilog59

sw.epilog59:                                      ; preds = %sw.bb57, %sw.bb55, %if.end51.sw.epilog59_crit_edge
  %tmp.2 = phi i32 [ %or58, %sw.bb57 ], [ %or56, %sw.bb55 ], [ %tmp.1, %if.end51.sw.epilog59_crit_edge ]
  %and61 = and i32 %87, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.else64, label %if.then63

if.then63:                                        ; preds = %sw.epilog59
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %95 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i182 = getelementptr i8, ptr %96, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i182, i32 -2080308857) #9, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %97 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i184 = getelementptr i8, ptr %98, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184, i32 -117440408) #9, !srcloc !383
  br label %if.end85

if.else64:                                        ; preds = %sw.epilog59
  %and66 = and i32 %87, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.else69, label %if.then68

if.then68:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %99 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i186 = getelementptr i8, ptr %100, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i186, i32 -2080308857) #9, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %101 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i188 = getelementptr i8, ptr %102, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i188, i32 -117440408) #9, !srcloc !383
  br label %if.end85

if.else69:                                        ; preds = %if.else64
  %and71 = and i32 %87, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %103 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i194 = getelementptr i8, ptr %104, i32 196
  br i1 %tobool72.not, label %if.else76, label %if.then73

if.then73:                                        ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i194, i32 33620352) #9, !srcloc !383
  %aux_start = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 45
  %105 = ptrtoint ptr %aux_start to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %aux_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool74.not = icmp eq i32 %106, 0
  %or75 = select i1 %tobool74.not, i32 2066980928, i32 2066980944
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %107 = tail call i32 @llvm.bswap.i32(i32 %or75) #9
  %108 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i192 = getelementptr i8, ptr %109, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i192, i32 %107) #9, !srcloc !383
  br label %if.end85

if.else76:                                        ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i194, i32 33620358) #9, !srcloc !383
  %aux_start77 = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 45
  %110 = ptrtoint ptr %aux_start77 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %aux_start77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool78.not = icmp eq i32 %111, 0
  %or80 = select i1 %tobool78.not, i32 2065932352, i32 2065932368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %112 = tail call i32 @llvm.bswap.i32(i32 %or80) #9
  %113 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i196 = getelementptr i8, ptr %114, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i196, i32 %112) #9, !srcloc !383
  %115 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i198 = getelementptr i8, ptr %116, i32 172
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i198) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %118 = or i32 %117, 16777221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %119 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i200 = getelementptr i8, ptr %120, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i200, i32 %118) #9, !srcloc !383
  br label %if.end85

if.end85:                                         ; preds = %if.else76, %if.then73, %if.then68, %if.then63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %121 = tail call i32 @llvm.bswap.i32(i32 %tmp.2) #9
  %122 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i202 = getelementptr i8, ptr %123, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i202, i32 %121) #9, !srcloc !383
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %sw.epilog
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !387
  tail call void @arm_heavy_mb() #9
  %ati_regbase.i203 = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %124 = ptrtoint ptr %ati_regbase.i203 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ati_regbase.i203, align 4
  %add.ptr.i204 = getelementptr i8, ptr %125, i32 194
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i204, i8 -1) #9, !srcloc !388
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %126 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %xres_virtual, align 4
  %128 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %bits_per_pixel, align 4
  %mul.i = mul i32 %129, %127
  %div10.i = lshr i32 %mul.i, 3
  %ram_type.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 15
  %130 = ptrtoint ptr %ram_type.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %ram_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %131)
  %cmp.i = icmp eq i8 %131, 5
  br i1 %cmp.i, label %if.end86.if.then.i207_crit_edge, label %lor.lhs.false.i

if.end86.if.then.i207_crit_edge:                  ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i207

lor.lhs.false.i:                                  ; preds = %if.end86
  %132 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %features, align 4
  %and.i205 = and i32 %133, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i205)
  %tobool.not.i206 = icmp eq i32 %and.i205, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %131)
  %cmp4.i = icmp eq i8 %131, 6
  %or.cond.i = select i1 %tobool.not.i206, i1 %cmp4.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false.i.if.then.i207_crit_edge, label %lor.lhs.false.i.calc_line_length.exit_crit_edge

lor.lhs.false.i.calc_line_length.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %calc_line_length.exit

lor.lhs.false.i.if.then.i207_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i207

if.then.i207:                                     ; preds = %lor.lhs.false.i.if.then.i207_crit_edge, %if.end86.if.then.i207_crit_edge
  %add.i = add nuw nsw i32 %div10.i, 63
  %and6.i = and i32 %add.i, 1073741760
  br label %calc_line_length.exit

calc_line_length.exit:                            ; preds = %if.then.i207, %lor.lhs.false.i.calc_line_length.exit_crit_edge
  %line_length.0.i = phi i32 [ %and6.i, %if.then.i207 ], [ %div10.i, %lor.lhs.false.i.calc_line_length.exit_crit_edge ]
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %134 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %line_length.0.i, ptr %line_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %129)
  %cmp90 = icmp ult i32 %129, 9
  %cond92 = select i1 %cmp90, i32 3, i32 4
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %135 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %cond92, ptr %visual, align 4
  %136 = ptrtoint ptr %accel_flags15 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %accel_flags15, align 4
  %and95 = and i32 %137, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %calc_line_length.exit.cleanup_crit_edge, label %if.then97

calc_line_length.exit.cleanup_crit_edge:          ; preds = %calc_line_length.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then97:                                        ; preds = %calc_line_length.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @aty_init_engine(ptr noundef %1, ptr noundef %info) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then97, %calc_line_length.exit.cleanup_crit_edge, %if.else.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call10, %if.else.cleanup_crit_edge ], [ 0, %if.then97 ], [ 0, %calc_line_length.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atyfb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %2 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pseudo_palette, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %4 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp = icmp eq i32 %5, 16
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %cmp4 = icmp eq i32 %7, 5
  %cond = select i1 %cmp4, i32 15, i32 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %depth.0 = phi i32 [ %cond, %if.then ], [ %5, %entry.if.end_crit_edge ]
  %asleep = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %asleep to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %asleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %regno)
  %cmp7 = icmp ugt i32 %regno, 255
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %lor.lhs.false

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %depth.0)
  %cmp8 = icmp eq i32 %depth.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %regno)
  %cmp9 = icmp ugt i32 %regno, 63
  %or.cond = and i1 %cmp9, %cmp8
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false10

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %depth.0)
  %cmp11 = icmp eq i32 %depth.0, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %regno)
  %cmp13 = icmp ugt i32 %regno, 31
  %or.cond171 = and i1 %cmp13, %cmp11
  br i1 %or.cond171, label %lor.lhs.false10.cleanup_crit_edge, label %if.end15

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false10
  %shr = lshr i32 %red, 8
  %shr16 = lshr i32 %green, 8
  %shr17 = lshr i32 %blue, 8
  %conv = trunc i32 %shr to i8
  %arrayidx = getelementptr %struct.atyfb_par, ptr %1, i32 0, i32 1, i32 %regno
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx, align 1
  %conv19 = trunc i32 %shr16 to i8
  %green22 = getelementptr %struct.atyfb_par, ptr %1, i32 0, i32 1, i32 %regno, i32 1
  %11 = ptrtoint ptr %green22 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv19, ptr %green22, align 1
  %conv23 = trunc i32 %shr17 to i8
  %blue26 = getelementptr %struct.atyfb_par, ptr %1, i32 0, i32 1, i32 %regno, i32 2
  %12 = ptrtoint ptr %blue26 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv23, ptr %blue26, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp27 = icmp ult i32 %regno, 16
  br i1 %cmp27, label %if.then29, label %if.end15.if.end51_crit_edge

if.end15.if.end51_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then29:                                        ; preds = %if.end15
  %13 = zext i32 %depth.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %depth.0, label %if.then29.if.end51_crit_edge [
    i32 15, label %sw.bb
    i32 16, label %sw.bb33
    i32 24, label %sw.bb39
    i32 32, label %sw.bb45
  ]

if.then29.if.end51_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

sw.bb:                                            ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl nuw nsw i32 %regno, 10
  %shl30 = shl nuw nsw i32 %regno, 5
  %or = or i32 %shl30, %regno
  %or31 = or i32 %or, %shl
  br label %if.end51.sink.split

sw.bb33:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %shl34 = shl nuw nsw i32 %regno, 11
  %shl35 = shl nuw nsw i32 %regno, 5
  %or36 = or i32 %shl35, %regno
  %or37 = or i32 %or36, %shl34
  br label %if.end51.sink.split

sw.bb39:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %shl40 = shl nuw nsw i32 %regno, 16
  %shl41 = shl nuw nsw i32 %regno, 8
  %or42 = or i32 %shl41, %regno
  %or43 = or i32 %or42, %shl40
  br label %if.end51.sink.split

sw.bb45:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %shl46 = shl nuw nsw i32 %regno, 8
  %or47 = or i32 %shl46, %regno
  %shl48 = shl i32 %or47, 16
  %or49 = or i32 %shl48, %or47
  br label %if.end51.sink.split

if.end51.sink.split:                              ; preds = %sw.bb45, %sw.bb39, %sw.bb33, %sw.bb
  %or31.sink = phi i32 [ %or31, %sw.bb ], [ %or37, %sw.bb33 ], [ %or43, %sw.bb39 ], [ %or49, %sw.bb45 ]
  %arrayidx32 = getelementptr i32, ptr %3, i32 %regno
  %14 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or31.sink, ptr %arrayidx32, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.end51.sink.split, %if.then29.if.end51_crit_edge, %if.end15.if.end51_crit_edge
  %ati_regbase.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 196
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !389
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  %18 = and i8 %17, -4
  %features = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %features, align 4
  %and53 = lshr i32 %20, 16
  %21 = trunc i32 %and53 to i8
  %22 = and i8 %21, 2
  %23 = or i8 %22, %18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !387
  tail call void @arm_heavy_mb() #9
  %24 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i173 = getelementptr i8, ptr %25, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i173, i8 %23) #9, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !387
  tail call void @arm_heavy_mb() #9
  %26 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i175 = getelementptr i8, ptr %27, i32 194
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i175, i8 -1) #9, !srcloc !388
  %28 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %features, align 4
  %and60 = and i32 %29, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end51.if.end95_crit_edge, label %if.then62

if.end51.if.end95_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.then62:                                        ; preds = %if.end51
  br i1 %cmp8, label %if.then65, label %if.else

if.then65:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %regno)
  %cmp66 = icmp ult i32 %regno, 32
  br i1 %cmp66, label %if.then68, label %if.then65.if.end75_crit_edge

if.then65.if.end75_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.then68:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  %shl69 = shl nuw nsw i32 %regno, 3
  %shl71 = shl nuw nsw i32 %regno, 1
  %green73 = getelementptr %struct.atyfb_par, ptr %1, i32 0, i32 1, i32 %shl71, i32 1
  %30 = ptrtoint ptr %green73 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %green73, align 1
  %conv74 = zext i8 %31 to i32
  tail call fastcc void @aty_st_pal(i32 noundef %shl69, i32 noundef %shr, i32 noundef %conv74, i32 noundef %shr17, ptr noundef %1)
  br label %if.end75

if.end75:                                         ; preds = %if.then68, %if.then65.if.end75_crit_edge
  %shr77 = lshr i32 %regno, 1
  %arrayidx78 = getelementptr %struct.atyfb_par, ptr %1, i32 0, i32 1, i32 %shr77
  %32 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx78, align 1
  %blue84 = getelementptr %struct.atyfb_par, ptr %1, i32 0, i32 1, i32 %shr77, i32 2
  %34 = ptrtoint ptr %blue84 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %blue84, align 1
  %shl86 = shl nuw nsw i32 %regno, 2
  br label %if.end95

if.else:                                          ; preds = %if.then62
  br i1 %cmp11, label %if.then89, label %if.else.if.end95_crit_edge

if.else.if.end95_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.then89:                                        ; preds = %if.else
  %shl90 = shl nuw nsw i32 %regno, 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then89
  %i.1185 = phi i32 [ 0, %if.then89 ], [ %inc, %for.body.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.1185, %shl90
  %conv.i = trunc i32 %add to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !387
  tail call void @arm_heavy_mb() #9
  %36 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %conv.i) #9, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !387
  tail call void @arm_heavy_mb() #9
  %38 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %39, i32 193
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i8.i, i8 %conv) #9, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !387
  tail call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %41, i32 193
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i10.i, i8 %conv19) #9, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !387
  tail call void @arm_heavy_mb() #9
  %42 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %43, i32 193
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i12.i, i8 %conv23) #9, !srcloc !388
  %inc = add nuw nsw i32 %i.1185, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.body.if.end95_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.if.end95_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.end95:                                         ; preds = %for.body.if.end95_crit_edge, %if.else.if.end95_crit_edge, %if.end75, %if.end51.if.end95_crit_edge
  %conv3.i183.pre-phi = phi i8 [ %35, %if.end75 ], [ %conv23, %if.else.if.end95_crit_edge ], [ %conv23, %if.end51.if.end95_crit_edge ], [ %conv23, %for.body.if.end95_crit_edge ]
  %conv1.i179.pre-phi = phi i8 [ %33, %if.end75 ], [ %conv, %if.else.if.end95_crit_edge ], [ %conv, %if.end51.if.end95_crit_edge ], [ %conv, %for.body.if.end95_crit_edge ]
  %regno.addr.0 = phi i32 [ %shl86, %if.end75 ], [ %regno, %if.else.if.end95_crit_edge ], [ %regno, %if.end51.if.end95_crit_edge ], [ %shl90, %for.body.if.end95_crit_edge ]
  %conv.i176 = trunc i32 %regno.addr.0 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !387
  tail call void @arm_heavy_mb() #9
  %44 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i178 = getelementptr i8, ptr %45, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i178, i8 %conv.i176) #9, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !387
  tail call void @arm_heavy_mb() #9
  %46 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i8.i180 = getelementptr i8, ptr %47, i32 193
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i8.i180, i8 %conv1.i179.pre-phi) #9, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !387
  tail call void @arm_heavy_mb() #9
  %48 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i10.i182 = getelementptr i8, ptr %49, i32 193
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i10.i182, i8 %conv19) #9, !srcloc !388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !387
  tail call void @arm_heavy_mb() #9
  %50 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i12.i184 = getelementptr i8, ptr %51, i32 193
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i12.i184, i8 %conv3.i183.pre-phi) #9, !srcloc !388
  br label %cleanup

cleanup:                                          ; preds = %if.end95, %lor.lhs.false10.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end95 ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %lor.lhs.false10.cleanup_crit_edge ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atyfb_blank(i32 noundef %blank, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %lock_blank = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %lock_blank to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lock_blank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %asleep = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %asleep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %asleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %lcd_table = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 29
  %6 = ptrtoint ptr %lcd_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lcd_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp ne i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %blank)
  %cmp = icmp sgt i32 %blank, 1
  %or.cond = and i1 %cmp, %tobool3.not
  br i1 %or.cond, label %land.lhs.true4, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

land.lhs.true4:                                   ; preds = %if.end
  %features.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %features.i, align 4
  %and.i = and i32 %9, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %ati_regbase.i9.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %ati_regbase.i9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ati_regbase.i9.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 212
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !384
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  br label %aty_ld_lcd.exit

if.else.i:                                        ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i10.i = getelementptr i8, ptr %11, i32 164
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %15 = and i32 %14, -1056964609
  %16 = or i32 %15, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %17 = ptrtoint ptr %ati_regbase.i9.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ati_regbase.i9.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %18, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %16) #9, !srcloc !383
  %19 = ptrtoint ptr %ati_regbase.i9.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ati_regbase.i9.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %20, i32 168
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i) #9, !srcloc !384
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  br label %aty_ld_lcd.exit

aty_ld_lcd.exit:                                  ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %13, %if.then.i ], [ %22, %if.else.i ]
  %and = and i32 %retval.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %aty_ld_lcd.exit.if.end9_crit_edge, label %if.then6

aty_ld_lcd.exit.if.end9_crit_edge:                ; preds = %aty_ld_lcd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then6:                                         ; preds = %aty_ld_lcd.exit
  %23 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %features.i, align 4
  %and.i54 = and i32 %24, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i54)
  %tobool.not.i55 = icmp eq i32 %and.i54, 0
  %ati_regbase.i9.i59 = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %ati_regbase.i9.i59 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ati_regbase.i9.i59, align 4
  br i1 %tobool.not.i55, label %if.else.i64, label %if.then.i58

if.then.i58:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i57 = getelementptr i8, ptr %26, i32 216
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i57) #9, !srcloc !384
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  br label %aty_ld_lcd.exit66

if.else.i64:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i10.i60 = getelementptr i8, ptr %26, i32 164
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i60) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %30 = and i32 %29, -1056964609
  %31 = or i32 %30, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %32 = ptrtoint ptr %ati_regbase.i9.i59 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ati_regbase.i9.i59, align 4
  %add.ptr.i12.i62 = getelementptr i8, ptr %33, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i62, i32 %31) #9, !srcloc !383
  %34 = ptrtoint ptr %ati_regbase.i9.i59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ati_regbase.i9.i59, align 4
  %add.ptr.i14.i63 = getelementptr i8, ptr %35, i32 168
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i63) #9, !srcloc !384
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  br label %aty_ld_lcd.exit66

aty_ld_lcd.exit66:                                ; preds = %if.else.i64, %if.then.i58
  %retval.0.i65 = phi i32 [ %28, %if.then.i58 ], [ %37, %if.else.i64 ]
  %and8 = and i32 %retval.0.i65, -33554433
  %38 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %features.i, align 4
  %and.i68 = and i32 %39, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i68)
  %tobool.not.i69 = icmp eq i32 %and.i68, 0
  br i1 %tobool.not.i69, label %if.else.i74, label %if.then.i72

if.then.i72:                                      ; preds = %aty_ld_lcd.exit66
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %40 = tail call i32 @llvm.bswap.i32(i32 %and8) #9
  %ati_regbase.i.i70 = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %41 = ptrtoint ptr %ati_regbase.i.i70 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ati_regbase.i.i70, align 4
  %add.ptr.i.i71 = getelementptr i8, ptr %42, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i71, i32 %40) #9, !srcloc !383
  br label %if.end9

if.else.i74:                                      ; preds = %aty_ld_lcd.exit66
  call void @__sanitizer_cov_trace_pc() #11
  %ati_regbase.i8.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %43 = ptrtoint ptr %ati_regbase.i8.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ati_regbase.i8.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %44, i32 164
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %46 = and i32 %45, -1056964609
  %47 = or i32 %46, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %48 = ptrtoint ptr %ati_regbase.i8.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ati_regbase.i8.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %49, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %47) #9, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %50 = tail call i32 @llvm.bswap.i32(i32 %and8) #9
  %51 = ptrtoint ptr %ati_regbase.i8.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ati_regbase.i8.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %52, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %50) #9, !srcloc !383
  br label %if.end9

if.end9:                                          ; preds = %if.else.i74, %if.then.i72, %aty_ld_lcd.exit.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %ati_regbase.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %53 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %54, i32 28
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !384
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %and11 = and i32 %56, -67108941
  %57 = zext i32 %blank to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %blank, label %if.end9.sw.epilog_crit_edge [
    i32 4, label %sw.bb16
    i32 1, label %sw.bb
    i32 2, label %sw.bb12
    i32 3, label %sw.bb14
  ]

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %and11, 67108928
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %or13 = or i32 %and11, 67108936
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %or15 = or i32 %and11, 67108932
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %or17 = or i32 %56, 67108940
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb, %if.end9.sw.epilog_crit_edge
  %gen_cntl.0 = phi i32 [ %and11, %if.end9.sw.epilog_crit_edge ], [ %or15, %sw.bb14 ], [ %or13, %sw.bb12 ], [ %or, %sw.bb ], [ %or17, %sw.bb16 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %58 = tail call i32 @llvm.bswap.i32(i32 %gen_cntl.0) #9
  %59 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i76 = getelementptr i8, ptr %60, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76, i32 %58) #9, !srcloc !383
  %61 = ptrtoint ptr %lcd_table to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %lcd_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool19.not = icmp ne i32 %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %blank)
  %cmp21 = icmp slt i32 %blank, 2
  %or.cond52 = and i1 %cmp21, %tobool19.not
  br i1 %or.cond52, label %land.lhs.true22, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true22:                                  ; preds = %sw.epilog
  %features.i77 = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 9
  %63 = ptrtoint ptr %features.i77 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %features.i77, align 4
  %and.i78 = and i32 %64, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i78)
  %tobool.not.i79 = icmp eq i32 %and.i78, 0
  %65 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ati_regbase.i, align 4
  br i1 %tobool.not.i79, label %if.else.i88, label %if.then.i82

if.then.i82:                                      ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i81 = getelementptr i8, ptr %66, i32 212
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i81) #9, !srcloc !384
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  br label %aty_ld_lcd.exit90

if.else.i88:                                      ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i10.i84 = getelementptr i8, ptr %66, i32 164
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i84) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %70 = and i32 %69, -1056964609
  %71 = or i32 %70, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %72 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i12.i86 = getelementptr i8, ptr %73, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i86, i32 %71) #9, !srcloc !383
  %74 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i14.i87 = getelementptr i8, ptr %75, i32 168
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i87) #9, !srcloc !384
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  br label %aty_ld_lcd.exit90

aty_ld_lcd.exit90:                                ; preds = %if.else.i88, %if.then.i82
  %retval.0.i89 = phi i32 [ %68, %if.then.i82 ], [ %77, %if.else.i88 ]
  %and24 = and i32 %retval.0.i89, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %aty_ld_lcd.exit90.cleanup_crit_edge, label %if.then26

aty_ld_lcd.exit90.cleanup_crit_edge:              ; preds = %aty_ld_lcd.exit90
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then26:                                        ; preds = %aty_ld_lcd.exit90
  %78 = ptrtoint ptr %features.i77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %features.i77, align 4
  %and.i92 = and i32 %79, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i92)
  %tobool.not.i93 = icmp eq i32 %and.i92, 0
  %80 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ati_regbase.i, align 4
  br i1 %tobool.not.i93, label %if.else.i102, label %if.then.i96

if.then.i96:                                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i95 = getelementptr i8, ptr %81, i32 216
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i95) #9, !srcloc !384
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  br label %aty_ld_lcd.exit104

if.else.i102:                                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i10.i98 = getelementptr i8, ptr %81, i32 164
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i98) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %85 = and i32 %84, -1056964609
  %86 = or i32 %85, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %87 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i12.i100 = getelementptr i8, ptr %88, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i100, i32 %86) #9, !srcloc !383
  %89 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i14.i101 = getelementptr i8, ptr %90, i32 168
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i101) #9, !srcloc !384
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  br label %aty_ld_lcd.exit104

aty_ld_lcd.exit104:                               ; preds = %if.else.i102, %if.then.i96
  %retval.0.i103 = phi i32 [ %83, %if.then.i96 ], [ %92, %if.else.i102 ]
  %or29 = or i32 %retval.0.i103, 33554432
  %93 = ptrtoint ptr %features.i77 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %features.i77, align 4
  %and.i106 = and i32 %94, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106)
  %tobool.not.i107 = icmp eq i32 %and.i106, 0
  br i1 %tobool.not.i107, label %if.else.i116, label %if.then.i110

if.then.i110:                                     ; preds = %aty_ld_lcd.exit104
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %95 = tail call i32 @llvm.bswap.i32(i32 %or29) #9
  %96 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i109 = getelementptr i8, ptr %97, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i109, i32 %95) #9, !srcloc !383
  br label %cleanup

if.else.i116:                                     ; preds = %aty_ld_lcd.exit104
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i9.i112 = getelementptr i8, ptr %99, i32 164
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i112) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %101 = and i32 %100, -1056964609
  %102 = or i32 %101, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %103 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i11.i114 = getelementptr i8, ptr %104, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i114, i32 %102) #9, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %105 = tail call i32 @llvm.bswap.i32(i32 %or29) #9
  %106 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i13.i115 = getelementptr i8, ptr %107, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i115, i32 %105) #9, !srcloc !383
  br label %cleanup

cleanup:                                          ; preds = %if.else.i116, %if.then.i110, %aty_ld_lcd.exit90.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atyfb_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %crtc = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 6
  %h_tot_disp = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 6, i32 5
  %2 = ptrtoint ptr %h_tot_disp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %h_tot_disp, align 4
  %4 = lshr i32 %3, 13
  %add = and i32 %4, 2040
  %mul = add nuw nsw i32 %add, 8
  %xoffset9 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %5 = ptrtoint ptr %xoffset9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %xoffset9, align 4
  %add10 = add i32 %6, 7
  %and11 = and i32 %add10, -8
  %yoffset12 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %7 = ptrtoint ptr %yoffset12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %yoffset12, align 4
  %add13 = add i32 %mul, %and11
  %9 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %crtc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add13, i32 %10)
  %cmp = icmp ugt i32 %add13, %10
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %v_tot_disp = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 6, i32 7
  %11 = ptrtoint ptr %v_tot_disp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %v_tot_disp, align 4
  %shr3 = lshr i32 %12, 16
  %and4 = and i32 %shr3, 2047
  %add5 = add nuw nsw i32 %and4, 1
  %gen_cntl = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 6, i32 11
  %13 = ptrtoint ptr %gen_cntl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gen_cntl, align 4
  %and7 = and i32 %14, 1
  %spec.select = lshr i32 %add5, %and7
  %add15 = add i32 %spec.select, %8
  %vyres = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %vyres to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vyres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add15, i32 %16)
  %cmp17 = icmp ugt i32 %add15, %16
  br i1 %cmp17, label %lor.lhs.false.cleanup_crit_edge, label %if.end19

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false
  %xoffset21 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %17 = ptrtoint ptr %xoffset21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and11, ptr %xoffset21, align 4
  %yoffset23 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %18 = ptrtoint ptr %yoffset23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %8, ptr %yoffset23, align 4
  %asleep = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 21
  %19 = ptrtoint ptr %asleep to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %asleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool24.not = icmp eq i32 %20, 0
  br i1 %tobool24.not, label %if.end26, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  %line_length4.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %21 = ptrtoint ptr %line_length4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %line_length4.i, align 4
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %23 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bits_per_pixel.i, align 4
  %mul.i = mul i32 %22, %8
  %mul6.i = mul i32 %24, %and11
  %div14.i = lshr exact i32 %mul6.i, 3
  %add.i = add i32 %div14.i, %mul.i
  %div715.i = lshr i32 %add.i, 3
  %div8.i = udiv i32 %22, %24
  %shl.i = shl i32 %div8.i, 22
  %or.i = or i32 %div715.i, %shl.i
  %off_pitch.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 6, i32 10
  %25 = ptrtoint ptr %off_pitch.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or.i, ptr %off_pitch.i, align 4
  %activate = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 13
  %26 = ptrtoint ptr %activate to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %activate, align 4
  %and27 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.else_crit_edge, label %land.lhs.true

if.end26.if.else_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end26
  %call = tail call fastcc i32 @aty_enable_irq(ptr noundef %1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool29.not = icmp eq i32 %call, 0
  br i1 %tobool29.not, label %if.then30, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %pan_display = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 47, i32 2
  %28 = ptrtoint ptr %pan_display to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %pan_display, align 4
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end26.if.else_crit_edge
  %pan_display32 = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 47, i32 2
  %29 = ptrtoint ptr %pan_display32 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %pan_display32, align 4
  %30 = ptrtoint ptr %off_pitch.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %off_pitch.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #9
  %ati_regbase.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %32) #9, !srcloc !383
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then30, %if.end19.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then30 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @atyfb_fillrect(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @atyfb_copyarea(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @atyfb_imageblit(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atyfb_sync(ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %blitter_may_be_busy = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %blitter_may_be_busy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blitter_may_be_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %fifo_space1.i.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %fifo_space1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fifo_space1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp1.i.i = icmp ult i32 %5, 16
  br i1 %cmp1.i.i, label %while.body.lr.ph.i.i, label %if.then.wait_for_fifo.exit.i_crit_edge

if.then.wait_for_fifo.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_for_fifo.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.then
  %ati_regbase.i.i.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %6 = ptrtoint ptr %ati_regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ati_regbase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 784
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %9 = and i32 %8, -65536
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i = icmp eq i32 %9, 0
  %11 = tail call i32 @llvm.ctlz.i32(i32 %10, i1 true) #9, !range !386
  %sub.i.neg.op.i.i = add nsw i32 %11, -16
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 16, i32 %sub.i.neg.op.i.i
  %cmp.i.i = icmp ult i32 %sub.i.i, 16
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.wait_for_fifo.exit.i_crit_edge

while.body.i.i.wait_for_fifo.exit.i_crit_edge:    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_for_fifo.exit.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

wait_for_fifo.exit.i:                             ; preds = %while.body.i.i.wait_for_fifo.exit.i_crit_edge, %if.then.wait_for_fifo.exit.i_crit_edge
  %fifo_space.0.lcssa.i.i = phi i32 [ %5, %if.then.wait_for_fifo.exit.i_crit_edge ], [ %sub.i.i, %while.body.i.i.wait_for_fifo.exit.i_crit_edge ]
  %sub5.i.i = add i32 %fifo_space.0.lcssa.i.i, -16
  %12 = ptrtoint ptr %fifo_space1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub5.i.i, ptr %fifo_space1.i.i, align 4
  %ati_regbase.i.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %wait_for_fifo.exit.i
  %13 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 824
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %16 = and i32 %15, 16777216
  %cmp.not.i = icmp eq i32 %16, 0
  br i1 %cmp.not.i, label %wait_for_idle.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

wait_for_idle.exit:                               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %blitter_may_be_busy to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %blitter_may_be_busy, align 4
  br label %if.end

if.end:                                           ; preds = %wait_for_idle.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atyfb_ioctl(ptr nocapture noundef readonly %info, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1074021920, i32 %cmd)
  %cond = icmp eq i32 %cmd, 1074021920
  br i1 %cond, label %sw.bb, label %entry.cleanup5_crit_edge

entry.cleanup5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup5

sw.bb:                                            ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 1850) #9
  %2 = inttoptr i32 %arg to ptr
  %3 = tail call i32 @llvm.read_register.i32(metadata !372) #9
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !391
  %and.i = and i32 %5, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !393
  %6 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %2, i32 -1226833921) #9, !srcloc !394
  %asmresult = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #9, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !393
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup5_crit_edge

sw.bb.cleanup5_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup5

if.end:                                           ; preds = %sw.bb
  %asmresult2 = extractvalue { i32, i32 } %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult2)
  %cond.i = icmp eq i32 %asmresult2, 0
  br i1 %cond.i, label %sw.bb.i, label %if.end.cleanup5_crit_edge

if.end.cleanup5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup5

sw.bb.i:                                          ; preds = %if.end
  %vblank.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 47
  %call.i = tail call fastcc i32 @aty_enable_irq(ptr noundef %1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.i.cleanup5_crit_edge

sw.bb.i.cleanup5_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup5

if.end.i:                                         ; preds = %sw.bb.i
  %count1.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 47, i32 1
  %7 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count1.i, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 1788) #9
  %9 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.not.i = icmp eq i32 %8, %10
  br i1 %cmp.not.i, label %if.then13.i, label %if.end.i.cleanup5_crit_edge

if.end.i.cleanup5_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup5

if.then13.i:                                      ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  %11 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #9
  %call1587.i = call i32 @prepare_to_wait_event(ptr noundef %vblank.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #9
  %12 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %13)
  %cmp18.not88.not.i = icmp eq i32 %8, %13
  br i1 %cmp18.not88.not.i, label %if.then13.i.if.end34.i_crit_edge, label %if.then13.i.for.end.i_crit_edge

if.then13.i.for.end.i_crit_edge:                  ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.then13.i.if.end34.i_crit_edge:                 ; preds = %if.then13.i
  br label %if.end34.i

if.end34.i:                                       ; preds = %cleanup.i.if.end34.i_crit_edge, %if.then13.i.if.end34.i_crit_edge
  %__ret14.191.i = phi i32 [ %__ret14.1.i, %cleanup.i.if.end34.i_crit_edge ], [ 10, %if.then13.i.if.end34.i_crit_edge ]
  %call1590.i = phi i32 [ %call15.i, %cleanup.i.if.end34.i_crit_edge ], [ %call1587.i, %if.then13.i.if.end34.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1590.i)
  %tobool35.not.i = icmp eq i32 %call1590.i, 0
  br i1 %tobool35.not.i, label %cleanup.i, label %if.end34.i.if.end41.i_crit_edge

if.end34.i.if.end41.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41.i

cleanup.i:                                        ; preds = %if.end34.i
  %call38.i = call i32 @schedule_timeout(i32 noundef %__ret14.191.i) #9
  %call15.i = call i32 @prepare_to_wait_event(ptr noundef %vblank.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #9
  %14 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %15)
  %cmp18.not.i = icmp eq i32 %8, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool22.not.i = icmp eq i32 %call38.i, 0
  %spec.store.select53.i = select i1 %tobool22.not.i, i32 1, i32 %call38.i
  %__ret14.1.i = select i1 %cmp18.not.i, i32 %call38.i, i32 %spec.store.select53.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.1.i)
  %tobool28.not.i = icmp eq i32 %__ret14.1.i, 0
  %not.cmp18.not.i = xor i1 %cmp18.not.i, true
  %16 = select i1 %not.cmp18.not.i, i1 true, i1 %tobool28.not.i
  br i1 %16, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.if.end34.i_crit_edge

cleanup.i.if.end34.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then13.i.for.end.i_crit_edge
  %__ret14.1.lcssa.i = phi i32 [ 10, %if.then13.i.for.end.i_crit_edge ], [ %__ret14.1.i, %cleanup.i.for.end.i_crit_edge ]
  call void @finish_wait(ptr noundef %vblank.i, ptr noundef nonnull %__wq_entry.i) #9
  br label %if.end41.i

if.end41.i:                                       ; preds = %for.end.i, %if.end34.i.if.end41.i_crit_edge
  %__ret14.275.i = phi i32 [ %__ret14.1.lcssa.i, %for.end.i ], [ %call1590.i, %if.end34.i.if.end41.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.275.i)
  %cmp43.i = icmp slt i32 %__ret14.275.i, 0
  br i1 %cmp43.i, label %if.end41.i.cleanup5_crit_edge, label %if.end45.i

if.end41.i.cleanup5_crit_edge:                    ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup5

if.end45.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.275.i)
  %cmp46.i = icmp eq i32 %__ret14.275.i, 0
  br i1 %cmp46.i, label %if.then47.i, label %if.end45.i.cleanup5_crit_edge

if.end45.i.cleanup5_crit_edge:                    ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup5

if.then47.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  %call48.i = call fastcc i32 @aty_enable_irq(ptr noundef %1, i32 noundef 1) #9
  br label %cleanup5

cleanup5:                                         ; preds = %if.then47.i, %if.end45.i.cleanup5_crit_edge, %if.end41.i.cleanup5_crit_edge, %if.end.i.cleanup5_crit_edge, %sw.bb.i.cleanup5_crit_edge, %if.end.cleanup5_crit_edge, %sw.bb.cleanup5_crit_edge, %entry.cleanup5_crit_edge
  %retval.1 = phi i32 [ -14, %sw.bb.cleanup5_crit_edge ], [ -22, %entry.cleanup5_crit_edge ], [ -110, %if.then47.i ], [ -19, %if.end.cleanup5_crit_edge ], [ %call.i, %sw.bb.i.cleanup5_crit_edge ], [ %__ret14.275.i, %if.end41.i.cleanup5_crit_edge ], [ 0, %if.end45.i.cleanup5_crit_edge ], [ 0, %if.end.i.cleanup5_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aty_var_to_crtc(ptr nocapture noundef readonly %info, ptr noundef readonly %var, ptr noundef %crtc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %2 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %var, align 4
  %add = add i32 %3, 7
  %and = and i32 %add, -8
  %yres3 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %4 = ptrtoint ptr %yres3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %yres3, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %6 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xres_virtual, align 4
  %add4 = add i32 %7, 7
  %and5 = and i32 %add4, -8
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %8 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %yres_virtual, align 4
  %xoffset6 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %10 = ptrtoint ptr %xoffset6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xoffset6, align 4
  %add7 = add i32 %11, 7
  %and8 = and i32 %add7, -8
  %yoffset9 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %12 = ptrtoint ptr %yoffset9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %yoffset9, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %14 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %15)
  %cmp = icmp eq i32 %15, 16
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %17)
  %cmp10 = icmp eq i32 %17, 5
  %cond = select i1 %cmp10, i32 15, i32 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bpp.0 = phi i32 [ %cond, %if.then ], [ %15, %entry.if.end_crit_edge ]
  %sync11 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 24
  %18 = ptrtoint ptr %sync11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sync11, align 4
  %vmode12 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %20 = ptrtoint ptr %vmode12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vmode12, align 4
  %add13 = add i32 %and8, %and
  %22 = tail call i32 @llvm.umax.i32(i32 %and5, i32 %add13)
  %add18 = add i32 %13, %5
  %23 = tail call i32 @llvm.umax.i32(i32 %9, i32 %add18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %bpp.0)
  %cmp23 = icmp ult i32 %bpp.0, 9
  br i1 %cmp23, label %if.end.if.end49_crit_edge, label %if.else

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %bpp.0)
  %cmp25 = icmp ult i32 %bpp.0, 16
  br i1 %cmp25, label %if.else.if.end49_crit_edge, label %if.else27

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.else27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %bpp.0)
  %cmp28 = icmp eq i32 %bpp.0, 16
  br i1 %cmp28, label %if.else27.if.end49_crit_edge, label %if.else30

if.else27.if.end49_crit_edge:                     ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.else30:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %bpp.0)
  %cmp31 = icmp ult i32 %bpp.0, 25
  br i1 %cmp31, label %land.lhs.true, label %if.else34

land.lhs.true:                                    ; preds = %if.else30
  %features = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %features, align 4
  %and32 = and i32 %25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool.not = icmp eq i32 %and32, 0
  br i1 %tobool.not, label %if.else34.thread, label %land.lhs.true.if.end49_crit_edge

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.else34.thread:                                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.else34:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %bpp.0)
  %cmp35 = icmp ult i32 %bpp.0, 33
  br i1 %cmp35, label %if.else34.if.end49_crit_edge, label %do.body

if.else34.if.end49_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

do.body:                                          ; preds = %if.else34
  %activate = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 13
  %26 = ptrtoint ptr %activate to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %activate, align 4
  %and38 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.end, label %do.body.cleanup551_crit_edge

do.body.cleanup551_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup551

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #13
  br label %cleanup551

if.end49:                                         ; preds = %if.else34.if.end49_crit_edge, %if.else34.thread, %land.lhs.true.if.end49_crit_edge, %if.else27.if.end49_crit_edge, %if.else.if.end49_crit_edge, %if.end.if.end49_crit_edge
  %pix_width.0 = phi i32 [ 50332160, %if.end.if.end49_crit_edge ], [ 50332416, %if.else.if.end49_crit_edge ], [ 50332672, %if.else27.if.end49_crit_edge ], [ 50332928, %land.lhs.true.if.end49_crit_edge ], [ 50333184, %if.else34.if.end49_crit_edge ], [ 50333184, %if.else34.thread ]
  %dp_pix_width.0 = phi i32 [ 16908802, %if.end.if.end49_crit_edge ], [ 16974595, %if.else.if.end49_crit_edge ], [ 17040388, %if.else27.if.end49_crit_edge ], [ 16908802, %land.lhs.true.if.end49_crit_edge ], [ 17171974, %if.else34.if.end49_crit_edge ], [ 17171974, %if.else34.thread ]
  %dp_chain_mask.0 = phi i32 [ 32896, %if.end.if.end49_crit_edge ], [ 16912, %if.else.if.end49_crit_edge ], [ 33808, %if.else27.if.end49_crit_edge ], [ 32896, %land.lhs.true.if.end49_crit_edge ], [ 32896, %if.else34.if.end49_crit_edge ], [ 32896, %if.else34.thread ]
  %bpp.1 = phi i32 [ 8, %if.end.if.end49_crit_edge ], [ 16, %if.else.if.end49_crit_edge ], [ 16, %if.else27.if.end49_crit_edge ], [ 24, %land.lhs.true.if.end49_crit_edge ], [ 32, %if.else34.if.end49_crit_edge ], [ 32, %if.else34.thread ]
  %mul.i = mul i32 %bpp.1, %22
  %div10.i = lshr exact i32 %mul.i, 3
  %ram_type.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 15
  %28 = ptrtoint ptr %ram_type.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ram_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %29)
  %cmp.i = icmp eq i8 %29, 5
  br i1 %cmp.i, label %if.end49.if.then.i_crit_edge, label %lor.lhs.false.i

if.end49.if.then.i_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end49
  %features.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %features.i, align 4
  %and.i = and i32 %31, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %29)
  %cmp4.i = icmp eq i8 %29, 6
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp4.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.calc_line_length.exit_crit_edge

lor.lhs.false.i.calc_line_length.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %calc_line_length.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end49.if.then.i_crit_edge
  %add.i = add nuw nsw i32 %div10.i, 63
  %and6.i = and i32 %add.i, 1073741760
  br label %calc_line_length.exit

calc_line_length.exit:                            ; preds = %if.then.i, %lor.lhs.false.i.calc_line_length.exit_crit_edge
  %line_length.0.i = phi i32 [ %and6.i, %if.then.i ], [ %div10.i, %lor.lhs.false.i.calc_line_length.exit_crit_edge ]
  %mul = mul i32 %line_length.0.i, %23
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %32 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %smem_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %33)
  %cmp51 = icmp ugt i32 %mul, %33
  br i1 %cmp51, label %do.body53, label %if.end66

do.body53:                                        ; preds = %calc_line_length.exit
  %activate54 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 13
  %34 = ptrtoint ptr %activate54 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %activate54, align 4
  %and55 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %do.end60, label %do.body53.cleanup551_crit_edge

do.body53.cleanup551_crit_edge:                   ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup551

do.end60:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #13
  br label %cleanup551

if.end66:                                         ; preds = %calc_line_length.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1920, i32 %and)
  %cmp73 = icmp ugt i32 %and, 1920
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200, i32 %5)
  %cmp74 = icmp ugt i32 %5, 1200
  %or.cond = select i1 %cmp73, i1 true, i1 %cmp74
  br i1 %or.cond, label %do.body76, label %if.end89

do.body76:                                        ; preds = %if.end66
  %activate77 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 13
  %36 = ptrtoint ptr %activate77 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %activate77, align 4
  %and78 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %do.end83, label %do.body76.cleanup551_crit_edge

do.body76.cleanup551_crit_edge:                   ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup551

do.end83:                                         ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #11
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #13
  br label %cleanup551

if.end89:                                         ; preds = %if.end66
  %right_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %38 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %right_margin, align 4
  %add90 = add i32 %39, %and
  %hsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %40 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hsync_len, align 4
  %add91 = add i32 %add90, %41
  %and93 = and i32 %39, 7
  %add94 = add i32 %add91, %and93
  %left_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %42 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %left_margin, align 4
  %add95 = add i32 %add94, %43
  %lower_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %44 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %lower_margin, align 4
  %add96 = add i32 %45, %5
  %vsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %46 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vsync_len, align 4
  %add97 = add i32 %add96, %47
  %upper_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %48 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %upper_margin, align 4
  %add98 = add i32 %add97, %49
  %lcd_table = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 29
  %50 = ptrtoint ptr %lcd_table to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %lcd_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp99.not = icmp eq i32 %51, 0
  br i1 %cmp99.not, label %if.end89.if.end202_crit_edge, label %if.then100

if.end89.if.end202_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end202

if.then100:                                       ; preds = %if.end89
  %features101 = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 9
  %52 = ptrtoint ptr %features101 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %features101, align 4
  %and102 = and i32 %53, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.then104, label %if.then100.if.end108_crit_edge

if.then100.if.end108_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

if.then104:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #11
  %ati_regbase.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %54 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %55, i32 164
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %57 = and i32 %56, -1057423361
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %lcd_index107 = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 23
  %59 = ptrtoint ptr %lcd_index107 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %lcd_index107, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %60 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i809 = getelementptr i8, ptr %61, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i809, i32 %56) #9, !srcloc !383
  br label %if.end108

if.end108:                                        ; preds = %if.then104, %if.then100.if.end108_crit_edge
  %62 = ptrtoint ptr %features101 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %features101, align 4
  %and110 = and i32 %63, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.then112, label %if.end108.if.end114_crit_edge

if.end108.if.end114_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.then112:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  %lcd_index113 = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 23
  %64 = ptrtoint ptr %lcd_index113 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %lcd_index113, align 4
  %or = or i32 %65, 1024
  store i32 %or, ptr %lcd_index113, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %if.end108.if.end114_crit_edge
  %66 = ptrtoint ptr %features101 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %features101, align 4
  %and.i811 = and i32 %67, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i811)
  %tobool.not.i812 = icmp eq i32 %and.i811, 0
  %ati_regbase.i9.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %68 = ptrtoint ptr %ati_regbase.i9.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ati_regbase.i9.i, align 4
  br i1 %tobool.not.i812, label %if.else.i, label %if.then.i813

if.then.i813:                                     ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %69, i32 116
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !384
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  br label %aty_ld_lcd.exit

if.else.i:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i10.i = getelementptr i8, ptr %69, i32 164
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %73 = and i32 %72, -1056964609
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %74 = ptrtoint ptr %ati_regbase.i9.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ati_regbase.i9.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %75, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %73) #9, !srcloc !383
  %76 = ptrtoint ptr %ati_regbase.i9.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ati_regbase.i9.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %77, i32 168
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i) #9, !srcloc !384
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  br label %aty_ld_lcd.exit

aty_ld_lcd.exit:                                  ; preds = %if.else.i, %if.then.i813
  %retval.0.i = phi i32 [ %71, %if.then.i813 ], [ %79, %if.else.i ]
  %or116 = or i32 %retval.0.i, 16384
  %lcd_config_panel = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 22
  %80 = ptrtoint ptr %lcd_config_panel to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %or116, ptr %lcd_config_panel, align 4
  %81 = ptrtoint ptr %features101 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %features101, align 4
  %and.i815 = and i32 %82, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i815)
  %tobool.not.i816 = icmp eq i32 %and.i815, 0
  %ati_regbase.i9.i820 = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %83 = ptrtoint ptr %ati_regbase.i9.i820 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ati_regbase.i9.i820, align 4
  br i1 %tobool.not.i816, label %if.else.i824, label %if.then.i819

if.then.i819:                                     ; preds = %aty_ld_lcd.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i818 = getelementptr i8, ptr %84, i32 212
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i818) #9, !srcloc !384
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  br label %aty_ld_lcd.exit826

if.else.i824:                                     ; preds = %aty_ld_lcd.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i10.i821 = getelementptr i8, ptr %84, i32 164
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i821) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %88 = and i32 %87, -1056964609
  %89 = or i32 %88, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %90 = ptrtoint ptr %ati_regbase.i9.i820 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ati_regbase.i9.i820, align 4
  %add.ptr.i12.i822 = getelementptr i8, ptr %91, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i822, i32 %89) #9, !srcloc !383
  %92 = ptrtoint ptr %ati_regbase.i9.i820 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ati_regbase.i9.i820, align 4
  %add.ptr.i14.i823 = getelementptr i8, ptr %93, i32 168
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i823) #9, !srcloc !384
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  br label %aty_ld_lcd.exit826

aty_ld_lcd.exit826:                               ; preds = %if.else.i824, %if.then.i819
  %retval.0.i825 = phi i32 [ %86, %if.then.i819 ], [ %95, %if.else.i824 ]
  %lcd_gen_cntl = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 21
  %and120 = and i32 %retval.0.i825, 402586539
  %or122 = or i32 %and120, 80
  %96 = ptrtoint ptr %lcd_gen_cntl to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %or122, ptr %lcd_gen_cntl, align 4
  %and124 = and i32 %retval.0.i825, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %aty_ld_lcd.exit826.if.end163_crit_edge, label %land.lhs.true126

aty_ld_lcd.exit826.if.end163_crit_edge:           ; preds = %aty_ld_lcd.exit826
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end163

land.lhs.true126:                                 ; preds = %aty_ld_lcd.exit826
  %lcd_width = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 30
  %97 = ptrtoint ptr %lcd_width to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %lcd_width, align 4
  %conv = zext i16 %98 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv)
  %cmp127 = icmp ugt i32 %and, %conv
  br i1 %cmp127, label %land.lhs.true126.if.then133_crit_edge, label %lor.lhs.false129

land.lhs.true126.if.then133_crit_edge:            ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then133

lor.lhs.false129:                                 ; preds = %land.lhs.true126
  %lcd_height = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 31
  %99 = ptrtoint ptr %lcd_height to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %lcd_height, align 2
  %conv130 = zext i16 %100 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv130)
  %cmp131 = icmp ugt i32 %5, %conv130
  br i1 %cmp131, label %lor.lhs.false129.if.then133_crit_edge, label %lor.lhs.false129.if.end163_crit_edge

lor.lhs.false129.if.end163_crit_edge:             ; preds = %lor.lhs.false129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end163

lor.lhs.false129.if.then133_crit_edge:            ; preds = %lor.lhs.false129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then133

if.then133:                                       ; preds = %lor.lhs.false129.if.then133_crit_edge, %land.lhs.true126.if.then133_crit_edge
  %and135 = and i32 %retval.0.i825, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  %activate151 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 13
  %101 = ptrtoint ptr %activate151 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %activate151, align 4
  %and152 = and i32 %102, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  br i1 %tobool136.not, label %if.else150, label %if.then137

if.then137:                                       ; preds = %if.then133
  br i1 %tobool153.not, label %do.end144, label %if.then137.if.end147_crit_edge

if.then137.if.end147_crit_edge:                   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end147

do.end144:                                        ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #11
  %call146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #13
  br label %if.end147

if.end147:                                        ; preds = %do.end144, %if.then137.if.end147_crit_edge
  %103 = ptrtoint ptr %lcd_gen_cntl to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %lcd_gen_cntl, align 4
  %and149 = and i32 %104, -3
  store i32 %and149, ptr %lcd_gen_cntl, align 4
  br label %if.end163

if.else150:                                       ; preds = %if.then133
  br i1 %tobool153.not, label %do.end157, label %if.else150.cleanup551_crit_edge

if.else150.cleanup551_crit_edge:                  ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup551

do.end157:                                        ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #11
  %call159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86) #13
  br label %cleanup551

if.end163:                                        ; preds = %if.end147, %lor.lhs.false129.if.end163_crit_edge, %aty_ld_lcd.exit826.if.end163_crit_edge
  %105 = ptrtoint ptr %lcd_table to i32
  call void @__asan_load4_noabort(i32 %105)
  %.pr = load i32, ptr %lcd_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp165.not = icmp eq i32 %.pr, 0
  br i1 %cmp165.not, label %if.end163.if.end202_crit_edge, label %land.lhs.true167

if.end163.if.end202_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end202

land.lhs.true167:                                 ; preds = %if.end163
  %106 = ptrtoint ptr %lcd_gen_cntl to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %lcd_gen_cntl, align 4
  %and169 = and i32 %107, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %land.lhs.true167.if.end202_crit_edge, label %if.then171

land.lhs.true167.if.end202_crit_edge:             ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end202

if.then171:                                       ; preds = %land.lhs.true167
  %lcd_height173 = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 31
  %108 = ptrtoint ptr %lcd_height173 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %lcd_height173, align 2
  %conv174 = zext i16 %109 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv174)
  %cmp175 = icmp ult i32 %5, %conv174
  br i1 %cmp175, label %if.then177, label %if.then171.if.end185_crit_edge

if.then171.if.end185_crit_edge:                   ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end185

if.then177:                                       ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #11
  %div.rhs.trunc = trunc i32 %5 to i16
  %div845 = udiv i16 %109, %div.rhs.trunc
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %div845)
  %cmp180 = icmp ugt i16 %div845, 1
  %spec.select803 = select i1 %cmp180, i32 2, i32 0
  %narrow = select i1 %cmp180, i16 2, i16 %div845
  br label %if.end185

if.end185:                                        ; preds = %if.then177, %if.then171.if.end185_crit_edge
  %vmode.0 = phi i32 [ 0, %if.then171.if.end185_crit_edge ], [ %spec.select803, %if.then177 ]
  %VScan.0 = phi i16 [ 1, %if.then171.if.end185_crit_edge ], [ %narrow, %if.then177 ]
  %lcd_right_margin = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 41
  %110 = ptrtoint ptr %lcd_right_margin to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %lcd_right_margin, align 4
  %conv186 = zext i16 %111 to i32
  %add187 = add nuw nsw i32 %and, %conv186
  %lcd_hsync_len = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 37
  %112 = ptrtoint ptr %lcd_hsync_len to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %lcd_hsync_len, align 4
  %conv188 = zext i16 %113 to i32
  %add189 = add nuw nsw i32 %add187, %conv188
  %lcd_hsync_dly = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 36
  %114 = ptrtoint ptr %lcd_hsync_dly to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %lcd_hsync_dly, align 2
  %conv190 = zext i16 %115 to i32
  %lcd_hblank_len = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 43
  %116 = ptrtoint ptr %lcd_hblank_len to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %lcd_hblank_len, align 4
  %conv191 = zext i16 %117 to i32
  %add192 = add nuw nsw i32 %and, %conv191
  %lcd_lower_margin = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 42
  %118 = ptrtoint ptr %lcd_lower_margin to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %lcd_lower_margin, align 2
  %div194846847 = udiv i16 %119, %VScan.0
  %div194846.zext = zext i16 %div194846847 to i32
  %add195 = add nuw nsw i32 %5, %div194846.zext
  %lcd_vsync_len = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 40
  %120 = ptrtoint ptr %lcd_vsync_len to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %lcd_vsync_len, align 2
  %div197848849 = udiv i16 %121, %VScan.0
  %div197848.zext = zext i16 %div197848849 to i32
  %add198 = add nuw nsw i32 %add195, %div197848.zext
  %lcd_vblank_len = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 44
  %122 = ptrtoint ptr %lcd_vblank_len to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %lcd_vblank_len, align 2
  %div200850851 = udiv i16 %123, %VScan.0
  %div200850.zext = zext i16 %div200850851 to i32
  %add201 = add nuw nsw i32 %5, %div200850.zext
  br label %if.end202

if.end202:                                        ; preds = %if.end185, %land.lhs.true167.if.end202_crit_edge, %if.end163.if.end202_crit_edge, %if.end89.if.end202_crit_edge
  %h_sync_strt.0 = phi i32 [ %add187, %if.end185 ], [ %add90, %land.lhs.true167.if.end202_crit_edge ], [ %add90, %if.end163.if.end202_crit_edge ], [ %add90, %if.end89.if.end202_crit_edge ]
  %h_sync_end.0 = phi i32 [ %add189, %if.end185 ], [ %add91, %land.lhs.true167.if.end202_crit_edge ], [ %add91, %if.end163.if.end202_crit_edge ], [ %add91, %if.end89.if.end202_crit_edge ]
  %h_sync_dly.0 = phi i32 [ %conv190, %if.end185 ], [ %and93, %land.lhs.true167.if.end202_crit_edge ], [ %and93, %if.end163.if.end202_crit_edge ], [ %and93, %if.end89.if.end202_crit_edge ]
  %v_total.0 = phi i32 [ %add201, %if.end185 ], [ %add98, %land.lhs.true167.if.end202_crit_edge ], [ %add98, %if.end163.if.end202_crit_edge ], [ %add98, %if.end89.if.end202_crit_edge ]
  %v_sync_strt.0 = phi i32 [ %add195, %if.end185 ], [ %add96, %land.lhs.true167.if.end202_crit_edge ], [ %add96, %if.end163.if.end202_crit_edge ], [ %add96, %if.end89.if.end202_crit_edge ]
  %v_sync_end.0 = phi i32 [ %add198, %if.end185 ], [ %add97, %land.lhs.true167.if.end202_crit_edge ], [ %add97, %if.end163.if.end202_crit_edge ], [ %add97, %if.end89.if.end202_crit_edge ]
  %h_total.0 = phi i32 [ %add192, %if.end185 ], [ %add95, %land.lhs.true167.if.end202_crit_edge ], [ %add95, %if.end163.if.end202_crit_edge ], [ %add95, %if.end89.if.end202_crit_edge ]
  %vmode.1 = phi i32 [ %vmode.0, %if.end185 ], [ %21, %land.lhs.true167.if.end202_crit_edge ], [ %21, %if.end163.if.end202_crit_edge ], [ %21, %if.end89.if.end202_crit_edge ]
  %shr = lshr i32 %add, 3
  %sub = add nsw i32 %shr, -1
  %shr203 = lshr i32 %h_sync_strt.0, 3
  %sub204 = add nsw i32 %shr203, -1
  %shr205 = lshr i32 %h_sync_end.0, 3
  %shr207 = lshr i32 %h_total.0, 3
  %sub208 = add nsw i32 %shr207, -1
  %sub209 = sub nsw i32 %shr205, %shr203
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub)
  %cmp211 = icmp ugt i32 %sub, 255
  br i1 %cmp211, label %if.then213, label %do.body227

if.then213:                                       ; preds = %if.end202
  %activate214 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 13
  %124 = ptrtoint ptr %activate214 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %activate214, align 4
  %and215 = and i32 %125, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and215)
  %tobool216.not = icmp eq i32 %and215, 0
  br i1 %tobool216.not, label %do.end220, label %if.then213.cleanup551_crit_edge

if.then213.cleanup551_crit_edge:                  ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup551

do.end220:                                        ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #11
  %call222 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef -1, i32 noundef 255) #13
  br label %cleanup551

do.body227:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %sub204)
  %cmp228 = icmp ugt i32 %sub204, 511
  br i1 %cmp228, label %if.then230, label %do.end243

if.then230:                                       ; preds = %do.body227
  %activate231 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 13
  %126 = ptrtoint ptr %activate231 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %activate231, align 4
  %and232 = and i32 %127, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and232)
  %tobool233.not = icmp eq i32 %and232, 0
  br i1 %tobool233.not, label %do.end237, label %if.then230.cleanup551_crit_edge

if.then230.cleanup551_crit_edge:                  ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup551

do.end237:                                        ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #11
  %call239 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %sub204, i32 noundef 511) #13
  br label %cleanup551

do.end243:                                        ; preds = %do.body227
  %128 = tail call i32 @llvm.umin.i32(i32 %sub209, i32 31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %sub208)
  %cmp249 = icmp ugt i32 %sub208, 511
  br i1 %cmp249, label %if.then251, label %do.end264

if.then251:                                       ; preds = %do.end243
  %activate252 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 13
  %129 = ptrtoint ptr %activate252 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %activate252, align 4
  %and253 = and i32 %130, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and253)
  %tobool254.not = icmp eq i32 %and253, 0
  br i1 %tobool254.not, label %do.end258, label %if.then251.cleanup551_crit_edge

if.then251.cleanup551_crit_edge:                  ; preds = %if.then251
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup551

do.end258:                                        ; preds = %if.then251
  call void @__sanitizer_cov_trace_pc() #11
  %call260 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %sub208, i32 noundef 511) #13
  br label %cleanup551

do.end264:                                        ; preds = %do.end243
  %and265 = and i32 %vmode.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and265)
  %tobool266.not = icmp eq i32 %and265, 0
  br i1 %tobool266.not, label %do.end264.if.end271_crit_edge, label %if.then267

do.end264.if.end271_crit_edge:                    ; preds = %do.end264
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end271

if.then267:                                       ; preds = %do.end264
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl nuw nsw i32 %5, 1
  %shl268 = shl i32 %v_sync_strt.0, 1
  %shl269 = shl i32 %v_sync_end.0, 1
  %shl270 = shl i32 %v_total.0, 1
  br label %if.end271

if.end271:                                        ; preds = %if.then267, %do.end264.if.end271_crit_edge
  %v_total.1 = phi i32 [ %shl270, %if.then267 ], [ %v_total.0, %do.end264.if.end271_crit_edge ]
  %v_disp.0 = phi i32 [ %shl, %if.then267 ], [ %5, %do.end264.if.end271_crit_edge ]
  %v_sync_strt.1 = phi i32 [ %shl268, %if.then267 ], [ %v_sync_strt.0, %do.end264.if.end271_crit_edge ]
  %v_sync_end.1 = phi i32 [ %shl269, %if.then267 ], [ %v_sync_end.0, %do.end264.if.end271_crit_edge ]
  %dec = add nsw i32 %v_disp.0, -1
  %dec272 = add i32 %v_sync_strt.1, -1
  %dec274 = add i32 %v_total.1, -1
  %sub275 = sub i32 %v_sync_end.1, %v_sync_strt.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %dec)
  %cmp277 = icmp ugt i32 %dec, 2047
  br i1 %cmp277, label %if.then279, label %do.body293

if.then279:                                       ; preds = %if.end271
  %activate280 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 13
  %131 = ptrtoint ptr %activate280 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %activate280, align 4
  %and281 = and i32 %132, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and281)
  %tobool282.not = icmp eq i32 %and281, 0
  br i1 %tobool282.not, label %do.end286, label %if.then279.cleanup551_crit_edge

if.then279.cleanup551_crit_edge:                  ; preds = %if.then279
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup551

do.end286:                                        ; preds = %if.then279
  call void @__sanitizer_cov_trace_pc() #11
  %call288 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, i32 noundef %dec, i32 noundef 2047) #13
  br label %cleanup551

do.body293:                                       ; preds = %if.end271
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %dec272)
  %cmp294 = icmp ugt i32 %dec272, 2047
  br i1 %cmp294, label %if.then296, label %do.end309

if.then296:                                       ; preds = %do.body293
  %activate297 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 13
  %133 = ptrtoint ptr %activate297 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %activate297, align 4
  %and298 = and i32 %134, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and298)
  %tobool299.not = icmp eq i32 %and298, 0
  br i1 %tobool299.not, label %do.end303, label %if.then296.cleanup551_crit_edge

if.then296.cleanup551_crit_edge:                  ; preds = %if.then296
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup551

do.end303:                                        ; preds = %if.then296
  call void @__sanitizer_cov_trace_pc() #11
  %call305 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %dec272, i32 noundef 2047) #13
  br label %cleanup551

do.end309:                                        ; preds = %do.body293
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %dec274)
  %cmp315 = icmp ugt i32 %dec274, 2047
  br i1 %cmp315, label %if.then317, label %do.end330

if.then317:                                       ; preds = %do.end309
  %activate318 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 13
  %135 = ptrtoint ptr %activate318 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %activate318, align 4
  %and319 = and i32 %136, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and319)
  %tobool320.not = icmp eq i32 %and319, 0
  br i1 %tobool320.not, label %do.end324, label %if.then317.cleanup551_crit_edge

if.then317.cleanup551_crit_edge:                  ; preds = %if.then317
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup551

do.end324:                                        ; preds = %if.then317
  call void @__sanitizer_cov_trace_pc() #11
  %call326 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %dec274, i32 noundef 2047) #13
  br label %cleanup551

do.end330:                                        ; preds = %do.end309
  %137 = tail call i32 @llvm.umin.i32(i32 %sub275, i32 31)
  %and331 = shl i32 %19, 1
  %138 = and i32 %and331, 16
  %139 = ptrtoint ptr %crtc to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %22, ptr %crtc, align 4
  %vyres335 = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 1
  %140 = ptrtoint ptr %vyres335 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %23, ptr %vyres335, align 4
  %xoffset336 = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 2
  %141 = ptrtoint ptr %xoffset336 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %and8, ptr %xoffset336, align 4
  %yoffset337 = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 3
  %142 = ptrtoint ptr %yoffset337 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %13, ptr %yoffset337, align 4
  %bpp338 = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 4
  %143 = ptrtoint ptr %bpp338 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %bpp.1, ptr %bpp338, align 4
  %mul339 = mul i32 %line_length.0.i, %13
  %mul340 = mul i32 %bpp.1, %and8
  %div341801 = lshr exact i32 %mul340, 3
  %add342 = add i32 %mul339, %div341801
  %div343802 = lshr i32 %add342, 3
  %div344 = udiv i32 %line_length.0.i, %bpp.1
  %shl345 = shl i32 %div344, 22
  %or346 = or i32 %shl345, %div343802
  %off_pitch = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 10
  %144 = ptrtoint ptr %off_pitch to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %or346, ptr %off_pitch, align 4
  %vline_crnt_vline = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 9
  %145 = ptrtoint ptr %vline_crnt_vline to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %vline_crnt_vline, align 4
  %shl347 = shl nuw nsw i32 %sub, 16
  %or348 = or i32 %sub208, %shl347
  %h_tot_disp = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 5
  %146 = ptrtoint ptr %h_tot_disp to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %or348, ptr %h_tot_disp, align 4
  %and349 = and i32 %sub204, 255
  %shl350 = shl nuw nsw i32 %h_sync_dly.0, 8
  %or351 = or i32 %and349, %shl350
  %and352 = shl nuw nsw i32 %sub204, 4
  %shl353 = and i32 %and352, 4096
  %shl355 = shl nuw nsw i32 %128, 16
  %and67 = shl i32 %19, 21
  %147 = and i32 %and67, 2097152
  %148 = or i32 %147, %shl353
  %or354 = xor i32 %148, 2097152
  %or356 = or i32 %or354, %or351
  %or358 = or i32 %or356, %shl355
  %h_sync_strt_wid = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 6
  %149 = ptrtoint ptr %h_sync_strt_wid to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %or358, ptr %h_sync_strt_wid, align 4
  %shl359 = shl nuw nsw i32 %dec, 16
  %or360 = or i32 %shl359, %dec274
  %v_tot_disp = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 7
  %150 = ptrtoint ptr %v_tot_disp to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %or360, ptr %v_tot_disp, align 4
  %shl361 = shl nuw nsw i32 %137, 16
  %151 = shl i32 %19, 20
  %152 = and i32 %151, 2097152
  %shl363 = xor i32 %152, 2097152
  %or362 = or i32 %dec272, %shl363
  %or364 = or i32 %or362, %shl361
  %v_sync_strt_wid = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 8
  %153 = ptrtoint ptr %v_sync_strt_wid to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %or364, ptr %v_sync_strt_wid, align 4
  %or366 = or i32 %pix_width.0, %138
  %gen_cntl = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 11
  %spec.select805.v = select i1 %tobool266.not, i32 134217728, i32 134217729
  %spec.select805 = or i32 %or366, %spec.select805.v
  %and375 = shl i32 %vmode.1, 1
  %154 = and i32 %and375, 2
  %155 = or i32 %154, %spec.select805
  %156 = ptrtoint ptr %gen_cntl to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %gen_cntl, align 4
  %157 = ptrtoint ptr %lcd_table to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %lcd_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %cmp382.not = icmp eq i32 %158, 0
  br i1 %cmp382.not, label %do.end330.if.end539_crit_edge, label %if.then384

do.end330.if.end539_crit_edge:                    ; preds = %do.end330
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end539

if.then384:                                       ; preds = %do.end330
  %not.tobool266.not = xor i1 %tobool266.not, true
  %shl388 = zext i1 %not.tobool266.not to i32
  %spec.select806 = shl nuw nsw i32 %5, %shl388
  %159 = ptrtoint ptr %gen_cntl to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %gen_cntl, align 4
  %and391 = and i32 %160, -3014657
  store i32 %and391, ptr %gen_cntl, align 4
  %lcd_gen_cntl392 = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 21
  %161 = ptrtoint ptr %lcd_gen_cntl392 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %lcd_gen_cntl392, align 4
  %and393 = and i32 %162, 268434363
  %or395 = or i32 %and393, 64
  store i32 %or395, ptr %lcd_gen_cntl392, align 4
  %call396 = tail call i32 @aty_ld_lcd(i32 noundef 4, ptr noundef %1)
  %horz_stretching = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 14
  %163 = ptrtoint ptr %horz_stretching to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %call396, ptr %horz_stretching, align 4
  %features397 = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 9
  %164 = ptrtoint ptr %features397 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %features397, align 4
  %and398 = and i32 %165, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and398)
  %tobool399.not = icmp eq i32 %and398, 0
  br i1 %tobool399.not, label %if.then400, label %if.then384.if.end403_crit_edge

if.then384.if.end403_crit_edge:                   ; preds = %if.then384
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end403

if.then400:                                       ; preds = %if.then384
  call void @__sanitizer_cov_trace_pc() #11
  %call401 = tail call i32 @aty_ld_lcd(i32 noundef 6, ptr noundef %1)
  %and402 = and i32 %call401, -4196352
  %ext_vert_stretch = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 16
  %166 = ptrtoint ptr %ext_vert_stretch to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %and402, ptr %ext_vert_stretch, align 4
  br label %if.end403

if.end403:                                        ; preds = %if.then400, %if.then384.if.end403_crit_edge
  %167 = ptrtoint ptr %horz_stretching to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %horz_stretching, align 4
  %and405 = and i32 %168, 536346624
  store i32 %and405, ptr %horz_stretching, align 4
  %lcd_width406 = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 30
  %169 = ptrtoint ptr %lcd_width406 to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %lcd_width406, align 4
  %conv407 = zext i16 %170 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv407)
  %cmp408 = icmp ult i32 %and, %conv407
  br i1 %cmp408, label %land.lhs.true410, label %if.end403.if.end502_crit_edge

if.end403.if.end502_crit_edge:                    ; preds = %if.end403
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end502

land.lhs.true410:                                 ; preds = %if.end403
  %171 = ptrtoint ptr %lcd_gen_cntl392 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %lcd_gen_cntl392, align 4
  %and412 = and i32 %172, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and412)
  %tobool413.not = icmp eq i32 %and412, 0
  br i1 %tobool413.not, label %land.lhs.true410.if.end502_crit_edge, label %do.body415

land.lhs.true410.if.end502_crit_edge:             ; preds = %land.lhs.true410
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end502

do.body415:                                       ; preds = %land.lhs.true410
  %rem839.rhs.trunc = trunc i32 %and to i16
  %.frozen = freeze i16 %170
  %rem839.rhs.trunc.frozen = freeze i16 %rem839.rhs.trunc
  %div419841842 = udiv i16 %.frozen, %rem839.rhs.trunc.frozen
  %173 = mul i16 %div419841842, %rem839.rhs.trunc.frozen
  %rem839840.decomposed = sub i16 %.frozen, %173
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem839840.decomposed)
  %tobool422.not = icmp eq i16 %rem839840.decomposed, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %div419841842)
  %cmp424 = icmp ugt i16 %div419841842, 2
  %or.cond861 = and i1 %tobool422.not, %cmp424
  br i1 %or.cond861, label %do.body415.while.cond.i.preheader_crit_edge, label %lor.lhs.false426

do.body415.while.cond.i.preheader_crit_edge:      ; preds = %do.body415
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.preheader

lor.lhs.false426:                                 ; preds = %do.body415
  %div430843.lhs.trunc = shl nuw nsw i16 %rem839.rhs.trunc, 4
  %div430843844 = udiv i16 %div430843.lhs.trunc, %170
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %div430843844)
  %cmp431 = icmp ult i16 %div430843844, 7
  br i1 %cmp431, label %lor.lhs.false426.while.cond.i.preheader_crit_edge, label %lor.lhs.false426.if.end486_crit_edge

lor.lhs.false426.if.end486_crit_edge:             ; preds = %lor.lhs.false426
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end486

lor.lhs.false426.while.cond.i.preheader_crit_edge: ; preds = %lor.lhs.false426
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %lor.lhs.false426.while.cond.i.preheader_crit_edge, %do.body415.while.cond.i.preheader_crit_edge
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %Multiplier.0.i = phi i32 [ %Divider.0.i, %while.cond.i.while.cond.i_crit_edge ], [ %and, %while.cond.i.preheader ]
  %Divider.0.i = phi i32 [ %rem.i, %while.cond.i.while.cond.i_crit_edge ], [ %conv407, %while.cond.i.preheader ]
  %rem.i = srem i32 %Multiplier.0.i, %Divider.0.i
  %tobool.not.i827 = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i827, label %ATIReduceRatio.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

ATIReduceRatio.exit:                              ; preds = %while.cond.i
  %div.i = sdiv i32 %and, %Divider.0.i
  %div1.i = sdiv i32 %conv407, %Divider.0.i
  %mul436 = shl i32 %div.i, 4
  %div437 = sdiv i32 %mul436, %div1.i
  %sub441 = sub i32 %div1.i, %div.i
  %mul443 = shl i32 %sub441, 4
  %rem444 = srem i32 %mul443, %div1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %rem444, i32 %div437)
  %cmp445 = icmp slt i32 %rem444, %div437
  br i1 %cmp445, label %if.then447, label %ATIReduceRatio.exit.if.end451_crit_edge

ATIReduceRatio.exit.if.end451_crit_edge:          ; preds = %ATIReduceRatio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end451

if.then447:                                       ; preds = %ATIReduceRatio.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem444)
  %tobool448.not = icmp eq i32 %rem444, 0
  br i1 %tobool448.not, label %if.then447.while.end_crit_edge, label %if.then447.if.end451_crit_edge

if.then447.if.end451_crit_edge:                   ; preds = %if.then447
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end451

if.then447.while.end_crit_edge:                   ; preds = %if.then447
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end451:                                        ; preds = %if.then447.if.end451_crit_edge, %ATIReduceRatio.exit.if.end451_crit_edge
  %horz_stretch_loop.1 = phi i32 [ 4, %if.then447.if.end451_crit_edge ], [ -1, %ATIReduceRatio.exit.if.end451_crit_edge ]
  %BestRemainder.1 = phi i32 [ %rem444, %if.then447.if.end451_crit_edge ], [ %div437, %ATIReduceRatio.exit.if.end451_crit_edge ]
  %mul443.1 = mul i32 %sub441, 15
  %rem444.1 = srem i32 %mul443.1, %div1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %rem444.1, i32 %BestRemainder.1)
  %cmp445.1 = icmp slt i32 %rem444.1, %BestRemainder.1
  br i1 %cmp445.1, label %if.then447.1, label %if.end451.if.end451.1_crit_edge

if.end451.if.end451.1_crit_edge:                  ; preds = %if.end451
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end451.1

if.then447.1:                                     ; preds = %if.end451
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem444.1)
  %tobool448.not.1 = icmp eq i32 %rem444.1, 0
  br i1 %tobool448.not.1, label %if.then447.1.while.end_crit_edge, label %if.then447.1.if.end451.1_crit_edge

if.then447.1.if.end451.1_crit_edge:               ; preds = %if.then447.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end451.1

if.then447.1.while.end_crit_edge:                 ; preds = %if.then447.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end451.1:                                      ; preds = %if.then447.1.if.end451.1_crit_edge, %if.end451.if.end451.1_crit_edge
  %horz_stretch_loop.1.1 = phi i32 [ 3, %if.then447.1.if.end451.1_crit_edge ], [ %horz_stretch_loop.1, %if.end451.if.end451.1_crit_edge ]
  %BestRemainder.1.1 = phi i32 [ %rem444.1, %if.then447.1.if.end451.1_crit_edge ], [ %BestRemainder.1, %if.end451.if.end451.1_crit_edge ]
  %mul443.2 = mul i32 %sub441, 13
  %rem444.2 = srem i32 %mul443.2, %div1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %rem444.2, i32 %BestRemainder.1.1)
  %cmp445.2 = icmp slt i32 %rem444.2, %BestRemainder.1.1
  br i1 %cmp445.2, label %if.then447.2, label %if.end451.1.if.end451.2_crit_edge

if.end451.1.if.end451.2_crit_edge:                ; preds = %if.end451.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end451.2

if.then447.2:                                     ; preds = %if.end451.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem444.2)
  %tobool448.not.2 = icmp eq i32 %rem444.2, 0
  br i1 %tobool448.not.2, label %if.then447.2.while.end_crit_edge, label %if.then447.2.if.end451.2_crit_edge

if.then447.2.if.end451.2_crit_edge:               ; preds = %if.then447.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end451.2

if.then447.2.while.end_crit_edge:                 ; preds = %if.then447.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end451.2:                                      ; preds = %if.then447.2.if.end451.2_crit_edge, %if.end451.1.if.end451.2_crit_edge
  %horz_stretch_loop.1.2 = phi i32 [ 2, %if.then447.2.if.end451.2_crit_edge ], [ %horz_stretch_loop.1.1, %if.end451.1.if.end451.2_crit_edge ]
  %BestRemainder.1.2 = phi i32 [ %rem444.2, %if.then447.2.if.end451.2_crit_edge ], [ %BestRemainder.1.1, %if.end451.1.if.end451.2_crit_edge ]
  %mul443.3 = mul i32 %sub441, 12
  %rem444.3 = srem i32 %mul443.3, %div1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %rem444.3, i32 %BestRemainder.1.2)
  %cmp445.3 = icmp slt i32 %rem444.3, %BestRemainder.1.2
  br i1 %cmp445.3, label %if.then447.3, label %if.end451.2.if.end451.3_crit_edge

if.end451.2.if.end451.3_crit_edge:                ; preds = %if.end451.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end451.3

if.then447.3:                                     ; preds = %if.end451.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem444.3)
  %tobool448.not.3 = icmp eq i32 %rem444.3, 0
  br i1 %tobool448.not.3, label %if.then447.3.while.end_crit_edge, label %if.then447.3.if.end451.3_crit_edge

if.then447.3.if.end451.3_crit_edge:               ; preds = %if.then447.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end451.3

if.then447.3.while.end_crit_edge:                 ; preds = %if.then447.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end451.3:                                      ; preds = %if.then447.3.if.end451.3_crit_edge, %if.end451.2.if.end451.3_crit_edge
  %horz_stretch_loop.1.3 = phi i32 [ 1, %if.then447.3.if.end451.3_crit_edge ], [ %horz_stretch_loop.1.2, %if.end451.2.if.end451.3_crit_edge ]
  %BestRemainder.1.3 = phi i32 [ %rem444.3, %if.then447.3.if.end451.3_crit_edge ], [ %BestRemainder.1.2, %if.end451.2.if.end451.3_crit_edge ]
  %mul443.4 = mul i32 %sub441, 10
  %rem444.4 = srem i32 %mul443.4, %div1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %rem444.4, i32 %BestRemainder.1.3)
  %cmp445.4 = icmp slt i32 %rem444.4, %BestRemainder.1.3
  br i1 %cmp445.4, label %if.then447.4, label %if.end451.3.if.end451.4_crit_edge

if.end451.3.if.end451.4_crit_edge:                ; preds = %if.end451.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end451.4

if.then447.4:                                     ; preds = %if.end451.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem444.4)
  %tobool448.not.4 = icmp eq i32 %rem444.4, 0
  br i1 %tobool448.not.4, label %if.then447.4.while.end_crit_edge, label %if.then447.4.if.end451.4_crit_edge

if.then447.4.if.end451.4_crit_edge:               ; preds = %if.then447.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end451.4

if.then447.4.while.end_crit_edge:                 ; preds = %if.then447.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end451.4:                                      ; preds = %if.then447.4.if.end451.4_crit_edge, %if.end451.3.if.end451.4_crit_edge
  %horz_stretch_loop.1.4 = phi i32 [ 0, %if.then447.4.if.end451.4_crit_edge ], [ %horz_stretch_loop.1.3, %if.end451.3.if.end451.4_crit_edge ]
  %BestRemainder.1.4 = phi i32 [ %rem444.4, %if.then447.4.if.end451.4_crit_edge ], [ %BestRemainder.1.3, %if.end451.3.if.end451.4_crit_edge ]
  br label %while.end

while.end:                                        ; preds = %if.end451.4, %if.then447.4.while.end_crit_edge, %if.then447.3.while.end_crit_edge, %if.then447.2.while.end_crit_edge, %if.then447.1.while.end_crit_edge, %if.then447.while.end_crit_edge
  %horz_stretch_loop.2 = phi i32 [ 4, %if.then447.while.end_crit_edge ], [ 3, %if.then447.1.while.end_crit_edge ], [ 2, %if.then447.2.while.end_crit_edge ], [ 1, %if.then447.3.while.end_crit_edge ], [ 0, %if.then447.4.while.end_crit_edge ], [ %horz_stretch_loop.1.4, %if.end451.4 ]
  %BestRemainder.2 = phi i32 [ 0, %if.then447.while.end_crit_edge ], [ 0, %if.then447.1.while.end_crit_edge ], [ 0, %if.then447.2.while.end_crit_edge ], [ 0, %if.then447.3.while.end_crit_edge ], [ 0, %if.then447.4.while.end_crit_edge ], [ %BestRemainder.1.4, %if.end451.4 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %horz_stretch_loop.2)
  %cmp452 = icmp sgt i32 %horz_stretch_loop.2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %BestRemainder.2)
  %tobool455.not = icmp eq i32 %BestRemainder.2, 0
  %or.cond807 = select i1 %cmp452, i1 %tobool455.not, i1 false
  br i1 %or.cond807, label %while.body463.lr.ph, label %while.end.if.end486_crit_edge

while.end.if.end486_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end486

while.body463.lr.ph:                              ; preds = %while.end
  %arrayidx457 = getelementptr [5 x i8], ptr @aty_var_to_crtc.StretchLoops, i32 0, i32 %horz_stretch_loop.2
  %174 = ptrtoint ptr %arrayidx457 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx457, align 1
  %conv458 = zext i8 %175 to i32
  br label %while.body463

while.body463:                                    ; preds = %while.body463.while.body463_crit_edge, %while.body463.lr.ph
  %dec460860.in = phi i32 [ %conv458, %while.body463.lr.ph ], [ %dec460860, %while.body463.while.body463_crit_edge ]
  %reuse_previous.0859 = phi i32 [ 1, %while.body463.lr.ph ], [ %shl472, %while.body463.while.body463_crit_edge ]
  %Accumulator.0858 = phi i32 [ 0, %while.body463.lr.ph ], [ %sub471, %while.body463.while.body463_crit_edge ]
  %horz_stretch_ratio.0857 = phi i32 [ 0, %while.body463.lr.ph ], [ %horz_stretch_ratio.1, %while.body463.while.body463_crit_edge ]
  %dec460860 = add nsw i32 %dec460860.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %Accumulator.0858)
  %cmp464 = icmp sgt i32 %Accumulator.0858, 0
  %or467 = select i1 %cmp464, i32 %reuse_previous.0859, i32 0
  %horz_stretch_ratio.1 = or i32 %or467, %horz_stretch_ratio.0857
  %add469 = select i1 %cmp464, i32 0, i32 %div1.i
  %Accumulator.1 = sub i32 %Accumulator.0858, %div.i
  %sub471 = add i32 %Accumulator.1, %add469
  %shl472 = shl i32 %reuse_previous.0859, 1
  %cmp461 = icmp ugt i32 %dec460860.in, 1
  br i1 %cmp461, label %while.body463.while.body463_crit_edge, label %while.end473

while.body463.while.body463_crit_edge:            ; preds = %while.body463
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body463

while.end473:                                     ; preds = %while.body463
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo = and i32 %horz_stretch_ratio.1, 65535
  br label %if.end502.sink.split

if.end486:                                        ; preds = %while.end.if.end486_crit_edge, %lor.lhs.false426.if.end486_crit_edge
  %mul487 = shl i32 %and, 12
  %div490 = udiv i32 %mul487, %conv407
  %and491 = and i32 %div490, 4095
  br label %if.end502.sink.split

if.end502.sink.split:                             ; preds = %if.end486, %while.end473
  %and491.sink = phi i32 [ %and491, %if.end486 ], [ %phi.bo, %while.end473 ]
  %.sink = phi i32 [ -1073741824, %if.end486 ], [ -2147483648, %while.end473 ]
  %or492 = or i32 %and405, %and491.sink
  %or494 = or i32 %or492, %.sink
  %176 = ptrtoint ptr %horz_stretching to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %or494, ptr %horz_stretching, align 4
  br label %if.end502

if.end502:                                        ; preds = %if.end502.sink.split, %land.lhs.true410.if.end502_crit_edge, %if.end403.if.end502_crit_edge
  %lcd_height503 = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 31
  %177 = ptrtoint ptr %lcd_height503 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %lcd_height503, align 2
  %conv504 = zext i16 %178 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select806, i32 %conv504)
  %cmp505 = icmp ult i32 %spec.select806, %conv504
  br i1 %cmp505, label %land.lhs.true507, label %if.end502.if.else532_crit_edge

if.end502.if.else532_crit_edge:                   ; preds = %if.end502
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else532

land.lhs.true507:                                 ; preds = %if.end502
  %179 = ptrtoint ptr %lcd_gen_cntl392 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %lcd_gen_cntl392, align 4
  %and509 = and i32 %180, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and509)
  %tobool510.not = icmp eq i32 %and509, 0
  br i1 %tobool510.not, label %land.lhs.true507.if.else532_crit_edge, label %if.then511

land.lhs.true507.if.else532_crit_edge:            ; preds = %land.lhs.true507
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else532

if.then511:                                       ; preds = %land.lhs.true507
  %mul512 = shl i32 %spec.select806, 10
  %div515 = udiv i32 %mul512, %conv504
  %and516 = and i32 %div515, 1023
  %or517 = or i32 %and516, -1073741824
  %vert_stretching = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 15
  %181 = ptrtoint ptr %vert_stretching to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %or517, ptr %vert_stretching, align 4
  %182 = ptrtoint ptr %features397 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %features397, align 4
  %and519 = and i32 %183, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and519)
  %tobool520.not = icmp eq i32 %and519, 0
  br i1 %tobool520.not, label %land.lhs.true521, label %if.then511.if.end534_crit_edge

if.then511.if.end534_crit_edge:                   ; preds = %if.then511
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end534

land.lhs.true521:                                 ; preds = %if.then511
  %and523 = and i32 %183, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and523)
  %tobool524.not = icmp eq i32 %and523, 0
  %cond525 = select i1 %tobool524.not, i32 800, i32 1024
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %cond525)
  %cmp526.not = icmp ugt i32 %and, %cond525
  br i1 %cmp526.not, label %land.lhs.true521.if.end534_crit_edge, label %if.then528

land.lhs.true521.if.end534_crit_edge:             ; preds = %land.lhs.true521
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end534

if.then528:                                       ; preds = %land.lhs.true521
  call void @__sanitizer_cov_trace_pc() #11
  %ext_vert_stretch529 = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 16
  %184 = ptrtoint ptr %ext_vert_stretch529 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %ext_vert_stretch529, align 4
  %or530 = or i32 %185, 1024
  store i32 %or530, ptr %ext_vert_stretch529, align 4
  br label %if.end534

if.else532:                                       ; preds = %land.lhs.true507.if.else532_crit_edge, %if.end502.if.else532_crit_edge
  %vert_stretching533 = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 15
  %186 = ptrtoint ptr %vert_stretching533 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 0, ptr %vert_stretching533, align 4
  br label %if.end534

if.end534:                                        ; preds = %if.else532, %if.then528, %land.lhs.true521.if.end534_crit_edge, %if.then511.if.end534_crit_edge
  %187 = ptrtoint ptr %h_tot_disp to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %h_tot_disp, align 4
  %shadow_h_tot_disp = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 17
  %189 = ptrtoint ptr %shadow_h_tot_disp to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %shadow_h_tot_disp, align 4
  %190 = ptrtoint ptr %h_sync_strt_wid to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %h_sync_strt_wid, align 4
  %shadow_h_sync_strt_wid = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 18
  %192 = ptrtoint ptr %shadow_h_sync_strt_wid to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %shadow_h_sync_strt_wid, align 4
  %193 = ptrtoint ptr %v_tot_disp to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %v_tot_disp, align 4
  %shadow_v_tot_disp = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 19
  %195 = ptrtoint ptr %shadow_v_tot_disp to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %194, ptr %shadow_v_tot_disp, align 4
  %196 = ptrtoint ptr %v_sync_strt_wid to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %v_sync_strt_wid, align 4
  %shadow_v_sync_strt_wid = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 20
  %198 = ptrtoint ptr %shadow_v_sync_strt_wid to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %shadow_v_sync_strt_wid, align 4
  br label %if.end539

if.end539:                                        ; preds = %if.end534, %do.end330.if.end539_crit_edge
  %features540 = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 9
  %199 = ptrtoint ptr %features540 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %features540, align 4
  %and541 = and i32 %200, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and541)
  %tobool542.not = icmp eq i32 %and541, 0
  br i1 %tobool542.not, label %if.end539.if.end548_crit_edge, label %if.then543

if.end539.if.end548_crit_edge:                    ; preds = %if.end539
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end548

if.then543:                                       ; preds = %if.end539
  call void @__sanitizer_cov_trace_pc() #11
  %ati_regbase.i828 = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %201 = ptrtoint ptr %ati_regbase.i828 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %ati_regbase.i828, align 4
  %add.ptr.i829 = getelementptr i8, ptr %202, i32 28
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i829) #9, !srcloc !384
  %204 = shl i32 %203, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %and545 = and i32 %204, 983040
  %205 = ptrtoint ptr %gen_cntl to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %gen_cntl, align 4
  %or547 = or i32 %206, %and545
  store i32 %or547, ptr %gen_cntl, align 4
  br label %if.end548

if.end548:                                        ; preds = %if.then543, %if.end539.if.end548_crit_edge
  %dp_pix_width549 = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 12
  %207 = ptrtoint ptr %dp_pix_width549 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %dp_pix_width.0, ptr %dp_pix_width549, align 4
  %dp_chain_mask550 = getelementptr inbounds %struct.crtc, ptr %crtc, i32 0, i32 13
  %208 = ptrtoint ptr %dp_chain_mask550 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %dp_chain_mask.0, ptr %dp_chain_mask550, align 4
  br label %cleanup551

cleanup551:                                       ; preds = %if.end548, %do.end324, %if.then317.cleanup551_crit_edge, %do.end303, %if.then296.cleanup551_crit_edge, %do.end286, %if.then279.cleanup551_crit_edge, %do.end258, %if.then251.cleanup551_crit_edge, %do.end237, %if.then230.cleanup551_crit_edge, %do.end220, %if.then213.cleanup551_crit_edge, %do.end157, %if.else150.cleanup551_crit_edge, %do.end83, %do.body76.cleanup551_crit_edge, %do.end60, %do.body53.cleanup551_crit_edge, %do.end, %do.body.cleanup551_crit_edge
  %retval.0 = phi i32 [ 0, %if.end548 ], [ -22, %do.end ], [ -22, %do.body.cleanup551_crit_edge ], [ -22, %do.end60 ], [ -22, %do.body53.cleanup551_crit_edge ], [ -22, %do.end83 ], [ -22, %do.body76.cleanup551_crit_edge ], [ -22, %do.end157 ], [ -22, %if.else150.cleanup551_crit_edge ], [ -22, %do.end220 ], [ -22, %if.then213.cleanup551_crit_edge ], [ -22, %do.end237 ], [ -22, %if.then230.cleanup551_crit_edge ], [ -22, %do.end258 ], [ -22, %if.then251.cleanup551_crit_edge ], [ -22, %do.end286 ], [ -22, %if.then279.cleanup551_crit_edge ], [ -22, %do.end303 ], [ -22, %if.then296.cleanup551_crit_edge ], [ -22, %do.end324 ], [ -22, %if.then317.cleanup551_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @aty_init_engine(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aty_st_pal(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, ptr nocapture noundef readonly %par) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %regno to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !387
  tail call void @arm_heavy_mb() #9
  %ati_regbase.i = getelementptr inbounds %struct.atyfb_par, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv) #9, !srcloc !388
  %conv1 = trunc i32 %red to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !387
  tail call void @arm_heavy_mb() #9
  %2 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %3, i32 193
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i8, i8 %conv1) #9, !srcloc !388
  %conv2 = trunc i32 %green to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !387
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %5, i32 193
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i10, i8 %conv2) #9, !srcloc !388
  %conv3 = trunc i32 %blue to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !387
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %7, i32 193
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i12, i8 %conv3) #9, !srcloc !388
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aty_enable_irq(ptr noundef %par, i32 noundef %reenable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_flags = getelementptr inbounds %struct.atyfb_par, ptr %par, i32 0, i32 48
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %irq_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %irq = getelementptr inbounds %struct.atyfb_par, ptr %par, i32 0, i32 49
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @aty_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.2, ptr noundef %par) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %irq_flags) #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %int_lock = getelementptr inbounds %struct.atyfb_par, ptr %par, i32 0, i32 50
  tail call void @_raw_spin_lock_irq(ptr noundef %int_lock) #9
  %ati_regbase.i = getelementptr inbounds %struct.atyfb_par, ptr %par, i32 0, i32 4
  %2 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %5 = and i32 %4, -1974315739
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %or = or i32 %6, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %7 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %8 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %7) #9, !srcloc !383
  %or6 = or i32 %6, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %10 = tail call i32 @llvm.bswap.i32(i32 %or6) #9
  %11 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %12, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %10) #9, !srcloc !383
  tail call void @_raw_spin_unlock_irq(ptr noundef %int_lock) #9
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reenable)
  %tobool8.not = icmp eq i32 %reenable, 0
  br i1 %tobool8.not, label %if.else.cleanup_crit_edge, label %if.then9

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.else
  %int_lock10 = getelementptr inbounds %struct.atyfb_par, ptr %par, i32 0, i32 50
  tail call void @_raw_spin_lock_irq(ptr noundef %int_lock10) #9
  %ati_regbase.i42 = getelementptr inbounds %struct.atyfb_par, ptr %par, i32 0, i32 4
  %13 = ptrtoint ptr %ati_regbase.i42 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ati_regbase.i42, align 4
  %add.ptr.i43 = getelementptr i8, ptr %14, i32 24
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43) #9, !srcloc !384
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %and13 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.end, label %if.then9.if.end18_crit_edge

if.then9.if.end18_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

do.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %and12 = and i32 %16, 626348682
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, i32 noundef %and12) #13
  %or17 = or i32 %and12, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %17 = tail call i32 @llvm.bswap.i32(i32 %or17) #9
  %18 = ptrtoint ptr %ati_regbase.i42 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ati_regbase.i42, align 4
  %add.ptr.i45 = getelementptr i8, ptr %19, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %17) #9, !srcloc !383
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.then9.if.end18_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %int_lock10) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.else.cleanup_crit_edge, %if.end, %if.then3
  %retval.0 = phi i32 [ -22, %if.then3 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end18 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aty_irq(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %int_lock = getelementptr inbounds %struct.atyfb_par, ptr %dev_id, i32 0, i32 50
  tail call void @_raw_spin_lock(ptr noundef %int_lock) #9
  %ati_regbase.i = getelementptr inbounds %struct.atyfb_par, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !384
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then:                                          ; preds = %entry
  %and1 = and i32 %3, 626348682
  %or = or i32 %and1, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %5 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %6, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %4) #9, !srcloc !383
  %vblank = getelementptr inbounds %struct.atyfb_par, ptr %dev_id, i32 0, i32 47
  %count = getelementptr inbounds %struct.atyfb_par, ptr %dev_id, i32 0, i32 47, i32 1
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %count, align 4
  %pan_display = getelementptr inbounds %struct.atyfb_par, ptr %dev_id, i32 0, i32 47, i32 2
  %9 = ptrtoint ptr %pan_display to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pan_display, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not = icmp eq i32 %10, 0
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %pan_display to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %pan_display, align 4
  %off_pitch = getelementptr inbounds %struct.atyfb_par, ptr %dev_id, i32 0, i32 6, i32 10
  %12 = ptrtoint ptr %off_pitch to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %off_pitch, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  %15 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %16, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %14) #9, !srcloc !383
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  tail call void @__wake_up(ptr noundef %vblank, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %int_lock) #9
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @backlight_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atyfb_pci_suspend(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @atyfb_pci_suspend_late(ptr noundef %dev, [1 x i32] [i32 2])
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atyfb_pci_resume(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %power = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12
  %2 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par1, align 4
  tail call void @console_lock() #9
  %6 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %par1, align 4
  %mem_cntl.i = getelementptr inbounds %struct.atyfb_par, ptr %7, i32 0, i32 52
  %8 = ptrtoint ptr %mem_cntl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mem_cntl.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  %ati_regbase.i.i = getelementptr inbounds %struct.atyfb_par, ptr %7, i32 0, i32 4
  %11 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %10) #9, !srcloc !383
  %pll_ops.i = getelementptr inbounds %struct.atyfb_par, ptr %7, i32 0, i32 3
  %13 = ptrtoint ptr %pll_ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pll_ops.i, align 4
  %resume_pll.i = getelementptr inbounds %struct.aty_pll_ops, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %resume_pll.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %resume_pll.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pll.i = getelementptr inbounds %struct.atyfb_par, ptr %7, i32 0, i32 7
  tail call void %16(ptr noundef %1, ptr noundef %pll.i) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %aux_start.i = getelementptr inbounds %struct.atyfb_par, ptr %7, i32 0, i32 45
  %17 = ptrtoint ptr %aux_start.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %aux_start.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool4.not.i = icmp eq i32 %18, 0
  br i1 %tobool4.not.i, label %if.end.i.aty_resume_chip.exit_crit_edge, label %if.then5.i

if.end.i.aty_resume_chip.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aty_resume_chip.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %20, i32 160
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %22 = or i32 %21, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %24, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %22) #9, !srcloc !383
  br label %aty_resume_chip.exit

aty_resume_chip.exit:                             ; preds = %if.then5.i, %if.end.i.aty_resume_chip.exit_crit_edge
  %asleep = getelementptr inbounds %struct.atyfb_par, ptr %5, i32 0, i32 21
  %25 = ptrtoint ptr %asleep to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %asleep, align 4
  %call3 = tail call i32 @atyfb_set_par(ptr noundef %1)
  tail call void @fb_set_suspend(ptr noundef %1, i32 noundef 0) #9
  %lock_blank = getelementptr inbounds %struct.atyfb_par, ptr %5, i32 0, i32 22
  %26 = ptrtoint ptr %lock_blank to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %lock_blank, align 4
  %call4 = tail call i32 @atyfb_blank(i32 noundef 0, ptr noundef %1)
  tail call void @console_unlock() #9
  %27 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %power, align 8
  br label %cleanup

cleanup:                                          ; preds = %aty_resume_chip.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atyfb_pci_freeze(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @atyfb_pci_suspend_late(ptr noundef %dev, [1 x i32] [i32 1])
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atyfb_pci_hibernate(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @atyfb_pci_suspend_late(ptr noundef %dev, [1 x i32] [i32 4])
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atyfb_pci_suspend_late(ptr nocapture noundef %dev, [1 x i32] %state.coerce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state.coerce.fca.0.extract = extractvalue [1 x i32] %state.coerce, 0
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %power = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12
  %2 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %state.coerce.fca.0.extract, i32 %3)
  %cmp = icmp eq i32 %state.coerce.fca.0.extract, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par1, align 4
  tail call void @console_lock() #9
  tail call void @fb_set_suspend(ptr noundef %1, i32 noundef 1) #9
  %fifo_space1.i.i = getelementptr inbounds %struct.atyfb_par, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %fifo_space1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fifo_space1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp1.i.i = icmp ult i32 %7, 16
  br i1 %cmp1.i.i, label %while.body.lr.ph.i.i, label %if.end.wait_for_fifo.exit.i_crit_edge

if.end.wait_for_fifo.exit.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_for_fifo.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.end
  %ati_regbase.i.i.i = getelementptr inbounds %struct.atyfb_par, ptr %5, i32 0, i32 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %8 = ptrtoint ptr %ati_regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ati_regbase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 784
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %11 = and i32 %10, -65536
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i = icmp eq i32 %11, 0
  %13 = tail call i32 @llvm.ctlz.i32(i32 %12, i1 true) #9, !range !386
  %sub.i.neg.op.i.i = add nsw i32 %13, -16
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 16, i32 %sub.i.neg.op.i.i
  %cmp.i.i = icmp ult i32 %sub.i.i, 16
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.wait_for_fifo.exit.i_crit_edge

while.body.i.i.wait_for_fifo.exit.i_crit_edge:    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_for_fifo.exit.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

wait_for_fifo.exit.i:                             ; preds = %while.body.i.i.wait_for_fifo.exit.i_crit_edge, %if.end.wait_for_fifo.exit.i_crit_edge
  %fifo_space.0.lcssa.i.i = phi i32 [ %7, %if.end.wait_for_fifo.exit.i_crit_edge ], [ %sub.i.i, %while.body.i.i.wait_for_fifo.exit.i_crit_edge ]
  %sub5.i.i = add i32 %fifo_space.0.lcssa.i.i, -16
  %14 = ptrtoint ptr %fifo_space1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub5.i.i, ptr %fifo_space1.i.i, align 4
  %ati_regbase.i.i = getelementptr inbounds %struct.atyfb_par, ptr %5, i32 0, i32 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %wait_for_fifo.exit.i
  %15 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 824
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  %18 = and i32 %17, 16777216
  %cmp.not.i = icmp eq i32 %18, 0
  br i1 %cmp.not.i, label %wait_for_idle.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

wait_for_idle.exit:                               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %blitter_may_be_busy.i = getelementptr inbounds %struct.atyfb_par, ptr %5, i32 0, i32 19
  %19 = ptrtoint ptr %blitter_may_be_busy.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %blitter_may_be_busy.i, align 4
  tail call void @aty_reset_engine(ptr noundef %5) #9
  %call4 = tail call i32 @atyfb_blank(i32 noundef 4, ptr noundef %1)
  %asleep = getelementptr inbounds %struct.atyfb_par, ptr %5, i32 0, i32 21
  %20 = ptrtoint ptr %asleep to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %asleep, align 4
  %lock_blank = getelementptr inbounds %struct.atyfb_par, ptr %5, i32 0, i32 22
  %21 = ptrtoint ptr %lock_blank to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %lock_blank, align 4
  tail call void @console_unlock() #9
  %22 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %state.coerce.fca.0.extract, ptr %power, align 8
  br label %cleanup

cleanup:                                          ; preds = %wait_for_idle.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_set_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @aty_reset_engine(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atyfb_setup(ptr noundef %options) unnamed_addr #2 section ".init.text" align 64 {
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
  %call1 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.119) #9
  %cmp.not2 = icmp eq ptr %call1, null
  br i1 %cmp.not2, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %if.end51.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call3 = phi ptr [ %call, %if.end51.while.body_crit_edge ], [ %call1, %while.cond.preheader.while.body_crit_edge ]
  %call2 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(8) @.str.120, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  store i8 1, ptr @noaccel, align 1
  br label %if.end51

if.else:                                          ; preds = %while.body
  %call5 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(7) @.str.121, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  store i8 1, ptr @nomtrr, align 1
  br label %if.end51

if.else8:                                         ; preds = %if.else
  %call9 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(6) @.str.122, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %call3, i32 5
  %call12 = call i32 @simple_strtoul(ptr noundef %add.ptr, ptr noundef null, i32 noundef 0) #9
  store i32 %call12, ptr @vram, align 4
  br label %if.end51

if.else13:                                        ; preds = %if.else8
  %call14 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(5) @.str.123, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.else19

if.then16:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr17 = getelementptr i8, ptr %call3, i32 4
  %call18 = call i32 @simple_strtoul(ptr noundef %add.ptr17, ptr noundef null, i32 noundef 0) #9
  store i32 %call18, ptr @pll, align 4
  br label %if.end51

if.else19:                                        ; preds = %if.else13
  %call20 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(6) @.str.124, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.else25

if.then22:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr23 = getelementptr i8, ptr %call3, i32 5
  %call24 = call i32 @simple_strtoul(ptr noundef %add.ptr23, ptr noundef null, i32 noundef 0) #9
  store i32 %call24, ptr @mclk, align 4
  br label %if.end51

if.else25:                                        ; preds = %if.else19
  %call26 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(6) @.str.125, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.else31

if.then28:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr29 = getelementptr i8, ptr %call3, i32 5
  %call30 = call i32 @simple_strtoul(ptr noundef %add.ptr29, ptr noundef null, i32 noundef 0) #9
  store i32 %call30, ptr @xclk, align 4
  br label %if.end51

if.else31:                                        ; preds = %if.else25
  %call32 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(11) @.str.126, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.else37

if.then34:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr35 = getelementptr i8, ptr %call3, i32 10
  %call36 = call i32 @simple_strtoul(ptr noundef %add.ptr35, ptr noundef null, i32 noundef 0) #9
  store i32 %call36, ptr @comp_sync, align 4
  br label %if.end51

if.else37:                                        ; preds = %if.else31
  %call38 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(11) @.str.127, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %if.else43

if.then40:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr41 = getelementptr i8, ptr %call3, i32 10
  %call42 = call i32 @simple_strtoul(ptr noundef %add.ptr41, ptr noundef null, i32 noundef 0) #9
  br label %if.end51

if.else43:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %call3, ptr @mode, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.else43, %if.then40, %if.then34, %if.then28, %if.then22, %if.then16, %if.then11, %if.then7, %if.then4
  %call = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.119) #9
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.end51.cleanup_crit_edge, label %if.end51.while.body_crit_edge

if.end51.while.body_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end51.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !16, !17, !19, !21, !22, !24, !26, !27, !29, !31, !32, !34, !36, !37, !39, !41, !42, !44, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72, !73, !75, !77, !79, !81, !83, !84, !85, !86, !87, !89, !91, !92, !93, !94, !96, !98, !100, !102, !104, !106, !108, !109, !110, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !186, !188, !189, !191, !192, !193, !194, !196, !197, !198, !200, !202, !204, !205, !206, !208, !209, !210, !212, !213, !214, !215, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !249, !250, !251, !253, !254, !255, !256, !258, !259, !260, !262, !263, !264, !266, !267, !268, !270, !271, !272, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290, !291, !292, !294, !295, !296, !298, !300, !301, !302, !303, !305, !307, !309, !310, !311, !312, !314, !315, !316, !318, !320, !322, !324, !325, !326, !328, !329, !330, !331, !333, !335, !336, !337, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !363, !364, !365, !366, !367, !368, !370, !371}
!llvm.named.register.sp = !{!372}
!llvm.module.flags = !{!373, !374, !375, !376, !377, !378, !379, !380}
!llvm.ident = !{!381}

!0 = !{ptr @__initcall__kmod_atyfb__305_3998_atyfb_init6, !1, !"__initcall__kmod_atyfb__305_3998_atyfb_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 3998, i32 1}
!2 = !{ptr @__exitcall_atyfb_exit, !3, !"__exitcall_atyfb_exit", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 3999, i32 1}
!4 = !{ptr @__UNIQUE_ID_description306, !5, !"__UNIQUE_ID_description306", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 4001, i32 1}
!6 = !{ptr @__UNIQUE_ID_file307, !7, !"__UNIQUE_ID_file307", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 4002, i32 1}
!8 = !{ptr @__UNIQUE_ID_license308, !7, !"__UNIQUE_ID_license308", i1 false, i1 false}
!9 = !{ptr @__param_noaccel, !10, !"__param_noaccel", i1 false, i1 false}
!10 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 4003, i32 1}
!11 = !{ptr @__UNIQUE_ID_noacceltype309, !10, !"__UNIQUE_ID_noacceltype309", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_noaccel310, !13, !"__UNIQUE_ID_noaccel310", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 4004, i32 1}
!14 = !{ptr @__param_vram, !15, !"__param_vram", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 4005, i32 1}
!16 = !{ptr @__UNIQUE_ID_vramtype311, !15, !"__UNIQUE_ID_vramtype311", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_vram312, !18, !"__UNIQUE_ID_vram312", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 4006, i32 1}
!19 = !{ptr @__param_pll, !20, !"__param_pll", i1 false, i1 false}
!20 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 4007, i32 1}
!21 = !{ptr @__UNIQUE_ID_plltype313, !20, !"__UNIQUE_ID_plltype313", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_pll314, !23, !"__UNIQUE_ID_pll314", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 4008, i32 1}
!24 = !{ptr @__param_mclk, !25, !"__param_mclk", i1 false, i1 false}
!25 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 4009, i32 1}
!26 = !{ptr @__UNIQUE_ID_mclktype315, !25, !"__UNIQUE_ID_mclktype315", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_mclk316, !28, !"__UNIQUE_ID_mclk316", i1 false, i1 false}
!28 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 4010, i32 1}
!29 = !{ptr @__param_xclk, !30, !"__param_xclk", i1 false, i1 false}
!30 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 4011, i32 1}
!31 = !{ptr @__UNIQUE_ID_xclktype317, !30, !"__UNIQUE_ID_xclktype317", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_xclk318, !33, !"__UNIQUE_ID_xclk318", i1 false, i1 false}
!33 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 4012, i32 1}
!34 = !{ptr @__param_comp_sync, !35, !"__param_comp_sync", i1 false, i1 false}
!35 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 4013, i32 1}
!36 = !{ptr @__UNIQUE_ID_comp_synctype319, !35, !"__UNIQUE_ID_comp_synctype319", i1 false, i1 false}
!37 = !{ptr @__UNIQUE_ID_comp_sync320, !38, !"__UNIQUE_ID_comp_sync320", i1 false, i1 false}
!38 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 4014, i32 1}
!39 = !{ptr @__param_mode, !40, !"__param_mode", i1 false, i1 false}
!40 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 4015, i32 1}
!41 = !{ptr @__UNIQUE_ID_modetype321, !40, !"__UNIQUE_ID_modetype321", i1 false, i1 false}
!42 = !{ptr @__UNIQUE_ID_mode322, !43, !"__UNIQUE_ID_mode322", i1 false, i1 false}
!43 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 4016, i32 1}
!44 = !{ptr @__param_nomtrr, !45, !"__param_nomtrr", i1 false, i1 false}
!45 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 4017, i32 1}
!46 = !{ptr @__UNIQUE_ID_nomtrrtype323, !45, !"__UNIQUE_ID_nomtrrtype323", i1 false, i1 false}
!47 = !{ptr @__UNIQUE_ID_nomtrr324, !48, !"__UNIQUE_ID_nomtrr324", i1 false, i1 false}
!48 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 4018, i32 1}
!49 = !{ptr @noaccel, !50, !"noaccel", i1 false, i1 false}
!50 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 322, i32 13}
!51 = !{ptr @nomtrr, !52, !"nomtrr", i1 false, i1 false}
!52 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 323, i32 13}
!53 = !{ptr @vram, !54, !"vram", i1 false, i1 false}
!54 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 324, i32 12}
!55 = !{ptr @pll, !56, !"pll", i1 false, i1 false}
!56 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 325, i32 12}
!57 = !{ptr @mclk, !58, !"mclk", i1 false, i1 false}
!58 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 326, i32 12}
!59 = !{ptr @xclk, !60, !"xclk", i1 false, i1 false}
!60 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 327, i32 12}
!61 = !{ptr @mode, !62, !"mode", i1 false, i1 false}
!62 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 329, i32 14}
!63 = !{ptr @lt_lcd_regs, !64, !"lt_lcd_regs", i1 false, i1 false}
!64 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 137, i32 18}
!65 = distinct !{null, !66, !"registered_notifier", i1 false, i1 false}
!66 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 3957, i32 13}
!67 = distinct !{null, !68, !"atyfb_reboot_notifier", i1 false, i1 false}
!68 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 3941, i32 30}
!69 = !{ptr @.str, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 279, i32 8}
!71 = !{ptr @.str.1, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @reboot_lock, !70, !"reboot_lock", i1 false, i1 false}
!73 = distinct !{null, !74, !"reboot_info", i1 false, i1 false}
!74 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 280, i32 24}
!75 = !{ptr @.str.2, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 3827, i32 11}
!77 = !{ptr @atyfb_driver, !78, !"atyfb_driver", i1 false, i1 false}
!78 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 3826, i32 26}
!79 = !{ptr @atyfb_pci_tbl, !80, !"atyfb_pci_tbl", i1 false, i1 false}
!80 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 3770, i32 35}
!81 = !{ptr @.str.3, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 3541, i32 3}
!83 = !{ptr @.str.4, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.5, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @atyfb_pci_probe._entry, !82, !"_entry", i1 false, i1 false}
!86 = !{ptr @atyfb_pci_probe._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @atyfb_fix, !88, !"atyfb_fix", i1 false, i1 false}
!88 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 225, i32 39}
!89 = !{ptr @.str.6, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 3446, i32 3}
!91 = !{ptr @.str.7, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @atyfb_setup_generic._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @atyfb_setup_generic._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = distinct !{null, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 497, i32 12}
!96 = distinct !{null, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 505, i32 12}
!98 = distinct !{null, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 515, i32 11}
!100 = distinct !{null, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 523, i32 11}
!102 = distinct !{null, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 535, i32 11}
!104 = distinct !{null, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 543, i32 11}
!106 = !{ptr @.str.14, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 555, i32 2}
!108 = !{ptr @.str.15, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @correct_chipset._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @correct_chipset._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = distinct !{null, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 388, i32 23}
!113 = distinct !{null, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 389, i32 23}
!115 = distinct !{null, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 393, i32 23}
!117 = distinct !{null, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 394, i32 23}
!119 = distinct !{null, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 397, i32 23}
!121 = distinct !{null, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 399, i32 23}
!123 = distinct !{null, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 400, i32 23}
!125 = distinct !{null, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 402, i32 23}
!127 = distinct !{null, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 403, i32 23}
!129 = distinct !{null, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 405, i32 23}
!131 = distinct !{null, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 407, i32 23}
!133 = distinct !{null, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 409, i32 23}
!135 = distinct !{null, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 410, i32 23}
!137 = distinct !{null, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 411, i32 23}
!139 = distinct !{null, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 412, i32 23}
!141 = distinct !{null, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 414, i32 23}
!143 = distinct !{null, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 415, i32 23}
!145 = distinct !{null, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 416, i32 23}
!147 = distinct !{null, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 417, i32 23}
!149 = distinct !{null, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 418, i32 23}
!151 = distinct !{null, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 420, i32 23}
!153 = distinct !{null, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 421, i32 23}
!155 = distinct !{null, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 422, i32 23}
!157 = distinct !{null, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 423, i32 23}
!159 = distinct !{null, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 424, i32 23}
!161 = distinct !{null, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 426, i32 23}
!163 = distinct !{null, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 427, i32 23}
!165 = distinct !{null, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 428, i32 23}
!167 = distinct !{null, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 429, i32 23}
!169 = distinct !{null, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 430, i32 23}
!171 = distinct !{null, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 431, i32 23}
!173 = distinct !{null, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 433, i32 23}
!175 = distinct !{null, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 434, i32 23}
!177 = distinct !{null, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 435, i32 23}
!179 = distinct !{null, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 436, i32 23}
!181 = distinct !{null, !182, !"aty_chips", i1 false, i1 false}
!182 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 385, i32 3}
!183 = distinct !{null, !184, !"__key", i1 false, i1 false}
!184 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 2370, i32 2}
!185 = distinct !{null, !184, !"<string literal>", i1 false, i1 false}
!186 = distinct !{null, !187, !"__key", i1 false, i1 false}
!187 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 2371, i32 2}
!188 = distinct !{null, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.54, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 2408, i32 4}
!191 = !{ptr @.str.55, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @aty_init._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @aty_init._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.57, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 2423, i32 4}
!196 = !{ptr @aty_init._entry.56, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @aty_init._entry_ptr.58, !195, !"_entry_ptr", i1 false, i1 false}
!198 = distinct !{null, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 2472, i32 9}
!200 = distinct !{null, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 2488, i32 12}
!202 = !{ptr @.str.62, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 2591, i32 2}
!204 = !{ptr @aty_init._entry.61, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @aty_init._entry_ptr.63, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.65, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 2740, i32 3}
!208 = !{ptr @aty_init._entry.64, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @aty_init._entry_ptr.66, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.68, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 2762, i32 2}
!212 = !{ptr @aty_init._entry.67, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @aty_init._entry_ptr.69, !211, !"_entry_ptr", i1 false, i1 false}
!214 = distinct !{null, !211, !"<string literal>", i1 false, i1 false}
!215 = distinct !{null, !211, !"<string literal>", i1 false, i1 false}
!216 = distinct !{null, !217, !"aty_gx_ram", i1 false, i1 false}
!217 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 575, i32 14}
!218 = distinct !{null, !219, !"ram_dram", i1 false, i1 false}
!219 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 559, i32 13}
!220 = distinct !{null, !221, !"ram_vram", i1 false, i1 false}
!221 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 562, i32 13}
!222 = distinct !{null, !223, !"ram_resv", i1 false, i1 false}
!223 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 560, i32 13}
!224 = distinct !{null, !225, !"aty_xl_ram", i1 false, i1 false}
!225 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 586, i32 14}
!226 = distinct !{null, !227, !"ram_off", i1 false, i1 false}
!227 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 570, i32 13}
!228 = distinct !{null, !229, !"ram_edo", i1 false, i1 false}
!229 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 565, i32 13}
!230 = distinct !{null, !231, !"ram_sdram", i1 false, i1 false}
!231 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 566, i32 13}
!232 = distinct !{null, !233, !"ram_sgram", i1 false, i1 false}
!233 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 567, i32 13}
!234 = distinct !{null, !235, !"ram_sdram32", i1 false, i1 false}
!235 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 568, i32 13}
!236 = distinct !{null, !237, !"aty_ct_ram", i1 false, i1 false}
!237 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 582, i32 14}
!238 = distinct !{null, !239, !"ram_wram", i1 false, i1 false}
!239 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 569, i32 13}
!240 = distinct !{null, !241, !"ragepro_tbl", i1 false, i1 false}
!241 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 2301, i32 19}
!242 = distinct !{null, !243, !"ragexl_tbl", i1 false, i1 false}
!243 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 2304, i32 19}
!244 = !{ptr @atyfb_ops, !245, !"atyfb_ops", i1 false, i1 false}
!245 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 300, i32 22}
!246 = !{ptr @.str.72, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 1322, i32 3}
!248 = !{ptr @.str.73, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @atyfb_set_par._entry, !247, !"_entry", i1 false, i1 false}
!250 = !{ptr @atyfb_set_par._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.74, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 879, i32 3}
!253 = !{ptr @.str.75, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @aty_var_to_crtc._entry, !252, !"_entry", i1 false, i1 false}
!255 = !{ptr @aty_var_to_crtc._entry_ptr, !252, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.77, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 884, i32 3}
!258 = !{ptr @aty_var_to_crtc._entry.76, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @aty_var_to_crtc._entry_ptr.78, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.80, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 890, i32 3}
!262 = !{ptr @aty_var_to_crtc._entry.79, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @aty_var_to_crtc._entry_ptr.81, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.83, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 935, i32 6}
!266 = !{ptr @aty_var_to_crtc._entry.82, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @aty_var_to_crtc._entry_ptr.84, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.86, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 940, i32 6}
!270 = !{ptr @aty_var_to_crtc._entry.85, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @aty_var_to_crtc._entry_ptr.87, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.89, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 988, i32 2}
!274 = !{ptr @aty_var_to_crtc._entry.88, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @aty_var_to_crtc._entry_ptr.90, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.92, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 989, i32 2}
!278 = !{ptr @aty_var_to_crtc._entry.91, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @aty_var_to_crtc._entry_ptr.93, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.95, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 993, i32 2}
!282 = !{ptr @aty_var_to_crtc._entry.94, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @aty_var_to_crtc._entry_ptr.96, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.98, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 1008, i32 2}
!286 = !{ptr @aty_var_to_crtc._entry.97, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @aty_var_to_crtc._entry_ptr.99, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.101, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 1009, i32 2}
!290 = !{ptr @aty_var_to_crtc._entry.100, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @aty_var_to_crtc._entry_ptr.102, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.104, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 1013, i32 2}
!294 = !{ptr @aty_var_to_crtc._entry.103, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @aty_var_to_crtc._entry_ptr.105, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @aty_var_to_crtc.StretchLoops, !297, !"StretchLoops", i1 false, i1 false}
!297 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 1090, i32 24}
!298 = !{ptr @.str.106, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 1648, i32 4}
!300 = !{ptr @.str.107, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @aty_enable_irq._entry, !299, !"_entry", i1 false, i1 false}
!302 = !{ptr @aty_enable_irq._entry_ptr, !299, !"_entry_ptr", i1 false, i1 false}
!303 = distinct !{null, !304, !"backlight", i1 false, i1 false}
!304 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 330, i32 12}
!305 = distinct !{null, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 2259, i32 31}
!307 = !{ptr @.str.109, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 2268, i32 3}
!309 = !{ptr @.str.110, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @aty_bl_init._entry, !308, !"_entry", i1 false, i1 false}
!311 = !{ptr @aty_bl_init._entry_ptr, !308, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.112, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 2281, i32 2}
!314 = !{ptr @aty_bl_init._entry.111, !313, !"_entry", i1 false, i1 false}
!315 = !{ptr @aty_bl_init._entry_ptr.113, !313, !"_entry_ptr", i1 false, i1 false}
!316 = distinct !{null, !317, !"aty_bl_data", i1 false, i1 false}
!317 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 2243, i32 35}
!318 = distinct !{null, !319, !"defmode", i1 false, i1 false}
!319 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 294, i32 34}
!320 = distinct !{null, !321, !"default_var", i1 false, i1 false}
!321 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 286, i32 33}
!322 = !{ptr @.str.114, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 1551, i32 4}
!324 = !{ptr @atyfb_check_var._entry, !323, !"_entry", i1 false, i1 false}
!325 = !{ptr @atyfb_check_var._entry_ptr, !323, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.115, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 1262, i32 3}
!328 = !{ptr @.str.116, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @aty_crtc_to_var._entry, !327, !"_entry", i1 false, i1 false}
!330 = !{ptr @aty_crtc_to_var._entry_ptr, !327, !"_entry_ptr", i1 false, i1 false}
!331 = distinct !{null, !332, !"fb_list", i1 false, i1 false}
!332 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 2330, i32 24}
!333 = !{ptr @.str.117, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 2293, i32 2}
!335 = !{ptr @.str.118, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @aty_bl_exit._entry, !334, !"_entry", i1 false, i1 false}
!337 = !{ptr @aty_bl_exit._entry_ptr, !334, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @atyfb_pci_pm_ops, !339, !"atyfb_pci_pm_ops", i1 false, i1 false}
!339 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 2184, i32 32}
!340 = !{ptr @.str.119, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 3844, i32 38}
!342 = !{ptr @.str.120, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 3845, i32 26}
!344 = !{ptr @.str.121, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 3847, i32 33}
!346 = !{ptr @.str.122, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 3849, i32 33}
!348 = !{ptr @.str.123, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 3851, i32 31}
!350 = !{ptr @.str.124, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 3853, i32 31}
!352 = !{ptr @.str.125, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 3855, i32 31}
!354 = !{ptr @.str.126, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 3857, i32 31}
!356 = !{ptr @.str.127, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 3859, i32 31}
!358 = distinct !{null, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 3947, i32 12}
!360 = distinct !{null, !361, !"atyfb_reboot_ids", i1 false, i1 false}
!361 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 3945, i32 35}
!362 = !{ptr @__param_str_noaccel, !10, !"__param_str_noaccel", i1 false, i1 false}
!363 = !{ptr @__param_str_vram, !15, !"__param_str_vram", i1 false, i1 false}
!364 = !{ptr @__param_str_pll, !20, !"__param_str_pll", i1 false, i1 false}
!365 = !{ptr @__param_str_mclk, !25, !"__param_str_mclk", i1 false, i1 false}
!366 = !{ptr @__param_str_xclk, !30, !"__param_str_xclk", i1 false, i1 false}
!367 = !{ptr @__param_str_comp_sync, !35, !"__param_str_comp_sync", i1 false, i1 false}
!368 = !{ptr @comp_sync, !369, !"comp_sync", i1 false, i1 false}
!369 = !{!"../drivers/video/fbdev/aty/atyfb_base.c", i32 328, i32 12}
!370 = !{ptr @__param_str_mode, !40, !"__param_str_mode", i1 false, i1 false}
!371 = !{ptr @__param_str_nomtrr, !45, !"__param_str_nomtrr", i1 false, i1 false}
!372 = !{!"sp"}
!373 = !{i32 1, !"wchar_size", i32 2}
!374 = !{i32 1, !"min_enum_size", i32 4}
!375 = !{i32 8, !"branch-target-enforcement", i32 0}
!376 = !{i32 8, !"sign-return-address", i32 0}
!377 = !{i32 8, !"sign-return-address-all", i32 0}
!378 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!379 = !{i32 7, !"uwtable", i32 1}
!380 = !{i32 7, !"frame-pointer", i32 2}
!381 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!382 = !{i64 2156469320}
!383 = !{i64 6448171}
!384 = !{i64 6448589}
!385 = !{i64 2156468927}
!386 = !{i32 0, i32 33}
!387 = !{i64 2156470897}
!388 = !{i64 6447974}
!389 = !{i64 6448369}
!390 = !{i64 2156470504}
!391 = !{i64 4868335}
!392 = !{i64 4868532}
!393 = !{i64 2152353765}
!394 = !{i64 2156566134, i64 2156566414, i64 2156566748, i64 2156567082}
