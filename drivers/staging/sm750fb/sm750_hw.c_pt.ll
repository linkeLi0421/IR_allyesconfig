; ModuleID = '/llk/IR_all_yes/drivers/staging/sm750fb/sm750_hw.c_pt.bc'
source_filename = "../drivers/staging/sm750fb/sm750_hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.sm750_dev = type { i16, i8, ptr, [2 x ptr], %struct.lynx_accel, i32, i32, i32, %struct.anon.80, i32, i32, i32, i32, ptr, ptr, %struct.spinlock, %struct.init_status, i32, i32, i32, i32 }
%struct.lynx_accel = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.80 = type { i32 }
%struct.init_status = type { i16, i16, i16, i16, i16, i16 }
%struct.lynxfb_output = type { i32, i32, ptr, ptr, ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.mode_parameter = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lynxfb_crtc = type { ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i16, ptr, %struct.lynx_cursor }
%struct.lynx_cursor = type { i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.79, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.79 = type { ptr }

@hw_sm750_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 38, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016mmio phyAddr = %lx\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hw_sm750_map\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/staging/sm750fb/sm750_hw.c\00", [61 x i8] zeroinitializer }, align 32
@hw_sm750_map._entry_ptr = internal global ptr @hw_sm750_map._entry, section ".printk_index", align 4
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sm750fb\00", [24 x i8] zeroinitializer }, align 32
@hw_sm750_map._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Can not request PCI regions.\0A\00", [32 x i8] zeroinitializer }, align 32
@hw_sm750_map._entry_ptr.6 = internal global ptr @hw_sm750_map._entry.4, section ".printk_index", align 4
@hw_sm750_map._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\013mmio failed\0A\00", [17 x i8] zeroinitializer }, align 32
@hw_sm750_map._entry_ptr.9 = internal global ptr @hw_sm750_map._entry.7, section ".printk_index", align 4
@hw_sm750_map._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016mmio virtual addr = %p\0A\00", [38 x i8] zeroinitializer }, align 32
@hw_sm750_map._entry_ptr.12 = internal global ptr @hw_sm750_map._entry.10, section ".printk_index", align 4
@mmio750 = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@hw_sm750_map._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016video memory phyAddr = %lx, size = %u bytes\0A\00", [49 x i8] zeroinitializer }, align 32
@hw_sm750_map._entry_ptr.15 = internal global ptr @hw_sm750_map._entry.13, section ".printk_index", align 4
@hw_sm750_map._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013Map video memory failed\0A\00", [37 x i8] zeroinitializer }, align 32
@hw_sm750_map._entry_ptr.18 = internal global ptr @hw_sm750_map._entry.16, section ".printk_index", align 4
@hw_sm750_map._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016video memory vaddr = %p\0A\00", [37 x i8] zeroinitializer }, align 32
@hw_sm750_map._entry_ptr.21 = internal global ptr @hw_sm750_map._entry.19, section ".printk_index", align 4
@hw_sm750_inithw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016yes,CH7301 DVI chip found\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hw_sm750_inithw\00", [16 x i8] zeroinitializer }, align 32
@hw_sm750_inithw._entry_ptr = internal global ptr @hw_sm750_inithw._entry, section ".printk_index", align 4
@hw_sm750_inithw._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016okay,CH7301 DVI chip setup done\0A\00", [61 x i8] zeroinitializer }, align 32
@hw_sm750_inithw._entry_ptr.26 = internal global ptr @hw_sm750_inithw._entry.24, section ".printk_index", align 4
@hw_sm750_output_setMode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016primary channel\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hw_sm750_output_setMode\00", [40 x i8] zeroinitializer }, align 32
@hw_sm750_output_setMode._entry_ptr = internal global ptr @hw_sm750_output_setMode._entry, section ".printk_index", align 4
@hw_sm750_output_setMode._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016secondary channel\0A\00", [43 x i8] zeroinitializer }, align 32
@hw_sm750_output_setMode._entry_ptr.31 = internal global ptr @hw_sm750_output_setMode._entry.29, section ".printk_index", align 4
@hw_sm750_output_setMode._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016ddk setlogicdispout done\0A\00", [36 x i8] zeroinitializer }, align 32
@hw_sm750_output_setMode._entry_ptr.34 = internal global ptr @hw_sm750_output_setMode._entry.32, section ".printk_index", align 4
@hw_sm750_crtc_checkMode.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hw_sm750_crtc_checkMode\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"750le do not support 32bpp\0A\00", [36 x i8] zeroinitializer }, align 32
@hw_sm750_crtc_setMode.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hw_sm750_crtc_setMode\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Request pixel clock = %lu\0A\00", [37 x i8] zeroinitializer }, align 32
@hw_sm750_crtc_setMode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013Set mode timing failed\0A\00", [38 x i8] zeroinitializer }, align 32
@hw_sm750_crtc_setMode._entry_ptr = internal global ptr @hw_sm750_crtc_setMode._entry, section ".printk_index", align 4
@hw_sm750_setColReg.add = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 525312, i32 527360], [24 x i8] zeroinitializer }, align 32
@hw_sm750_setBLANK.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hw_sm750_setBLANK\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"flag = FB_BLANK_UNBLANK\0A\00", [39 x i8] zeroinitializer }, align 32
@hw_sm750_setBLANK.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.40, ptr @.str.2, ptr @.str.42, i8 0, i8 110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"flag = FB_BLANK_NORMAL\0A\00", [40 x i8] zeroinitializer }, align 32
@switch.table.hw_sm750le_setBLANK = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 -2147483648, i32 1073741824, i32 -1073741824], [44 x i8] zeroinitializer }, align 32
@switch.table.hw_sm750le_setBLANK.43 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1024, i32 1024, i32 1024, i32 1024], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.45 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 38, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 46, i32 36 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 48, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 56, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 60, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [8 x i8] c"mmio750\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 27, i32 15 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 77, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 84, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 88, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 168, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 172, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 197, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 204, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 220, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 238, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 307, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 310, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 378, i32 22 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 436, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.164 = private constant [38 x i8] c"../drivers/staging/sm750fb/sm750_hw.c\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 441, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [33 x i8] c"switch.table.hw_sm750le_setBLANK\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [36 x i8] c"switch.table.hw_sm750le_setBLANK.43\00", align 1
@llvm.compiler.used = appending global [55 x ptr] [ptr @hw_sm750_crtc_setMode._entry, ptr @hw_sm750_crtc_setMode._entry_ptr, ptr @hw_sm750_inithw._entry, ptr @hw_sm750_inithw._entry.24, ptr @hw_sm750_inithw._entry_ptr, ptr @hw_sm750_inithw._entry_ptr.26, ptr @hw_sm750_map._entry, ptr @hw_sm750_map._entry.10, ptr @hw_sm750_map._entry.13, ptr @hw_sm750_map._entry.16, ptr @hw_sm750_map._entry.19, ptr @hw_sm750_map._entry.4, ptr @hw_sm750_map._entry.7, ptr @hw_sm750_map._entry_ptr, ptr @hw_sm750_map._entry_ptr.12, ptr @hw_sm750_map._entry_ptr.15, ptr @hw_sm750_map._entry_ptr.18, ptr @hw_sm750_map._entry_ptr.21, ptr @hw_sm750_map._entry_ptr.6, ptr @hw_sm750_map._entry_ptr.9, ptr @hw_sm750_output_setMode._entry, ptr @hw_sm750_output_setMode._entry.29, ptr @hw_sm750_output_setMode._entry.32, ptr @hw_sm750_output_setMode._entry_ptr, ptr @hw_sm750_output_setMode._entry_ptr.31, ptr @hw_sm750_output_setMode._entry_ptr.34, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @mmio750, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @hw_sm750_setColReg.add, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @switch.table.hw_sm750le_setBLANK, ptr @switch.table.hw_sm750le_setBLANK.43], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_sm750_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_sm750_map._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_sm750_map._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_sm750_map._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmio750 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_sm750_map._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_sm750_map._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_sm750_map._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_sm750_inithw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_sm750_inithw._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_sm750_output_setMode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_sm750_output_setMode._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_sm750_output_setMode._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_sm750_crtc_setMode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_sm750_setColReg.add to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hw_sm750le_setBLANK to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hw_sm750le_setBLANK.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_sm750_map(ptr nocapture noundef %sm750_dev, ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 8
  %vidreg_start = getelementptr inbounds %struct.sm750_dev, ptr %sm750_dev, i32 0, i32 10
  %2 = ptrtoint ptr %vidreg_start to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %vidreg_start, align 4
  %vidreg_size = getelementptr inbounds %struct.sm750_dev, ptr %sm750_dev, i32 0, i32 12
  %3 = ptrtoint ptr %vidreg_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2097152, ptr %vidreg_size, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %1) #8
  %call2 = tail call i32 @pci_request_region(ptr noundef %pdev, i32 noundef 1, ptr noundef nonnull @.str.3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end5

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #8
  br label %exit

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %vidreg_start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vidreg_start, align 4
  %6 = ptrtoint ptr %vidreg_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vidreg_size, align 4
  %call10 = tail call ptr @ioremap(i32 noundef %5, i32 noundef %7) #5
  %pvReg = getelementptr inbounds %struct.sm750_dev, ptr %sm750_dev, i32 0, i32 13
  %8 = ptrtoint ptr %pvReg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call10, ptr %pvReg, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %do.end16, label %do.end21

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #8
  br label %exit

do.end21:                                         ; preds = %if.end
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %call10) #8
  %9 = ptrtoint ptr %pvReg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pvReg, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 1048576
  %accel = getelementptr inbounds %struct.sm750_dev, ptr %sm750_dev, i32 0, i32 4
  %11 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr, ptr %accel, align 4
  %add.ptr28 = getelementptr i8, ptr %10, i32 1114112
  %dpPortBase = getelementptr inbounds %struct.sm750_dev, ptr %sm750_dev, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %dpPortBase to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr28, ptr %dpPortBase, align 4
  store ptr %10, ptr @mmio750, align 4
  %13 = ptrtoint ptr %sm750_dev to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %sm750_dev, align 4
  %revid = getelementptr inbounds %struct.sm750_dev, ptr %sm750_dev, i32 0, i32 1
  %15 = ptrtoint ptr %revid to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %revid, align 2
  tail call void @sm750_set_chip_type(i16 noundef zeroext %14, i8 noundef zeroext %16) #5
  %17 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %resource, align 8
  %vidmem_start = getelementptr inbounds %struct.sm750_dev, ptr %sm750_dev, i32 0, i32 9
  %19 = ptrtoint ptr %vidmem_start to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %vidmem_start, align 4
  %call34 = tail call i32 @ddk750_get_vm_size() #5
  %vidmem_size = getelementptr inbounds %struct.sm750_dev, ptr %sm750_dev, i32 0, i32 11
  %20 = ptrtoint ptr %vidmem_size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call34, ptr %vidmem_size, align 4
  %21 = ptrtoint ptr %vidmem_start to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vidmem_start, align 4
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %22, i32 noundef %call34) #8
  %23 = ptrtoint ptr %vidmem_start to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vidmem_start, align 4
  %25 = ptrtoint ptr %vidmem_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vidmem_size, align 4
  %call44 = tail call ptr @ioremap_wc(i32 noundef %24, i32 noundef %26) #5
  %pvMem = getelementptr inbounds %struct.sm750_dev, ptr %sm750_dev, i32 0, i32 14
  %27 = ptrtoint ptr %pvMem to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call44, ptr %pvMem, align 4
  %tobool46.not = icmp eq ptr %call44, null
  br i1 %tobool46.not, label %do.end50, label %do.end56

do.end50:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #7
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #8
  br label %exit

do.end56:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #7
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull %call44) #8
  br label %exit

exit:                                             ; preds = %do.end56, %do.end50, %do.end16, %do.end5
  %ret.0 = phi i32 [ %call2, %do.end5 ], [ 0, %do.end56 ], [ -14, %do.end50 ], [ -14, %do.end16 ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_region(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sm750_set_chip_type(i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ddk750_get_vm_size() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_sm750_inithw(ptr noundef %sm750_dev, ptr nocapture noundef readnone %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %initParm = getelementptr inbounds %struct.sm750_dev, ptr %sm750_dev, i32 0, i32 16
  %chip_clk = getelementptr inbounds %struct.sm750_dev, ptr %sm750_dev, i32 0, i32 16, i32 1
  %0 = ptrtoint ptr %chip_clk to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %chip_clk, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @sm750_get_chip_type() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp2 = icmp eq i32 %call, 3
  %conv4 = select i1 %cmp2, i16 333, i16 290
  %2 = ptrtoint ptr %chip_clk to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv4, ptr %chip_clk, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mem_clk = getelementptr inbounds %struct.sm750_dev, ptr %sm750_dev, i32 0, i32 16, i32 2
  %3 = ptrtoint ptr %mem_clk to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %mem_clk, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp7 = icmp eq i16 %4, 0
  br i1 %cmp7, label %if.then9, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %chip_clk to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %chip_clk, align 2
  %7 = ptrtoint ptr %mem_clk to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %mem_clk, align 2
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end.if.end12_crit_edge
  %master_clk = getelementptr inbounds %struct.sm750_dev, ptr %sm750_dev, i32 0, i32 16, i32 3
  %8 = ptrtoint ptr %master_clk to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %master_clk, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp14 = icmp eq i16 %9, 0
  br i1 %cmp14, label %if.then16, label %if.end12.if.end21_crit_edge

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %chip_clk to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %chip_clk, align 2
  %12 = udiv i16 %11, 3
  %13 = ptrtoint ptr %master_clk to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %master_clk, align 2
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end12.if.end21_crit_edge
  %call23 = tail call i32 @ddk750_init_hw(ptr noundef %initParm) #5
  %14 = ptrtoint ptr %sm750_dev to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sm750_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1816, i16 %15)
  %cmp25 = icmp eq i16 %15, 1816
  br i1 %cmp25, label %if.then27, label %if.end21.if.end29_crit_edge

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %16 = load ptr, ptr @mmio750, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %18 = or i32 %17, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %19 = load ptr, ptr @mmio750, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %18) #5, !srcloc !89
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end21.if.end29_crit_edge
  %call30 = tail call i32 @sm750_get_chip_type() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call30)
  %cmp31.not = icmp eq i32 %call30, 3
  br i1 %cmp31.not, label %if.else50, label %if.then33

if.then33:                                        ; preds = %if.end29
  %nocrt = getelementptr inbounds %struct.sm750_dev, ptr %sm750_dev, i32 0, i32 19
  %20 = ptrtoint ptr %nocrt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nocrt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  %22 = load ptr, ptr @mmio750, align 4
  %add.ptr.i91 = getelementptr i8, ptr %22, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i91) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  br i1 %tobool.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  %24 = or i32 %23, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %25 = load ptr, ptr @mmio750, align 4
  %add.ptr.i90 = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 %24) #5, !srcloc !89
  %26 = load ptr, ptr @mmio750, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %28 = and i32 %27, -193
  %29 = or i32 %28, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %30 = load ptr, ptr @mmio750, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %29) #5, !srcloc !89
  br label %if.end44

if.else:                                          ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  %31 = and i32 %23, -4097
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %32 = load ptr, ptr @mmio750, align 4
  %add.ptr.i92 = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 %31) #5, !srcloc !89
  %33 = load ptr, ptr @mmio750, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %35 = and i32 %34, -193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %36 = load ptr, ptr @mmio750, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %35) #5, !srcloc !89
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then34
  %37 = load ptr, ptr @mmio750, align 4
  %add.ptr.i93 = getelementptr i8, ptr %37, i32 524288
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i93) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %39 = and i32 %38, -3073
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %pnltype = getelementptr inbounds %struct.sm750_dev, ptr %sm750_dev, i32 0, i32 17
  %41 = ptrtoint ptr %pnltype to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pnltype, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i32 %42, label %if.end44.sw.epilog_crit_edge [
    i32 2, label %sw.bb48
    i32 1, label %sw.bb
  ]

if.end44.sw.epilog_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %or47 = or i32 %40, 262144
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %or49 = or i32 %40, 524288
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb48, %sw.bb, %if.end44.sw.epilog_crit_edge
  %val.0 = phi i32 [ %40, %if.end44.sw.epilog_crit_edge ], [ %or47, %sw.bb ], [ %or49, %sw.bb48 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %44 = tail call i32 @llvm.bswap.i32(i32 %val.0) #5
  %45 = load ptr, ptr @mmio750, align 4
  %add.ptr.i94 = getelementptr i8, ptr %45, i32 524288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 %44) #5, !srcloc !89
  br label %if.end67

if.else50:                                        ; preds = %if.end29
  %call51 = tail call i32 @sm750_sw_i2c_init(i8 noundef zeroext 0, i8 noundef zeroext 1) #5
  %call52 = tail call zeroext i8 @sm750_sw_i2c_read_reg(i8 noundef zeroext -20, i8 noundef zeroext 74) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -107, i8 %call52)
  %cmp54 = icmp eq i8 %call52, -107
  br i1 %cmp54, label %do.end, label %if.else50.if.end67_crit_edge

if.else50.if.end67_crit_edge:                     ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

do.end:                                           ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #7
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #8
  %call58 = tail call i32 @sm750_sw_i2c_write_reg(i8 noundef zeroext -20, i8 noundef zeroext 29, i8 noundef zeroext 22) #5
  %call59 = tail call i32 @sm750_sw_i2c_write_reg(i8 noundef zeroext -20, i8 noundef zeroext 33, i8 noundef zeroext 9) #5
  %call60 = tail call i32 @sm750_sw_i2c_write_reg(i8 noundef zeroext -20, i8 noundef zeroext 73, i8 noundef zeroext -64) #5
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #8
  br label %if.end67

if.end67:                                         ; preds = %do.end, %if.else50.if.end67_crit_edge, %sw.epilog
  %accel_off = getelementptr inbounds %struct.sm750_dev, ptr %sm750_dev, i32 0, i32 5
  %46 = ptrtoint ptr %accel_off to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %accel_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool68.not = icmp eq i32 %47, 0
  br i1 %tobool68.not, label %if.then69, label %if.end67.if.end70_crit_edge

if.end67.if.end70_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

if.then69:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @hw_sm750_initAccel(ptr noundef %sm750_dev)
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end67.if.end70_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm750_get_chip_type() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ddk750_init_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm750_sw_i2c_init(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sm750_sw_i2c_read_reg(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm750_sw_i2c_write_reg(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hw_sm750_initAccel(ptr noundef %sm750_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sm750_enable_2d_engine(i32 noundef 1) #5
  %call = tail call i32 @sm750_get_chip_type() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp = icmp eq i32 %call, 3
  %0 = load ptr, ptr @mmio750, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %0, i32 1048660
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %2 = or i32 %1, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %3 = load ptr, ptr @mmio750, align 4
  %add.ptr.i16 = getelementptr i8, ptr %3, i32 1048660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %2) #5, !srcloc !89
  %4 = load ptr, ptr @mmio750, align 4
  %add.ptr.i17 = getelementptr i8, ptr %4, i32 1048660
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %6 = and i32 %5, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %7 = load ptr, ptr @mmio750, align 4
  %add.ptr.i18 = getelementptr i8, ptr %7, i32 1048660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %6) #5, !srcloc !89
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %9 = or i32 %8, 2097152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %10 = load ptr, ptr @mmio750, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #5, !srcloc !89
  %11 = load ptr, ptr @mmio750, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %13 = and i32 %12, -2097153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %14 = load ptr, ptr @mmio750, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %13) #5, !srcloc !89
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %accel = getelementptr inbounds %struct.sm750_dev, ptr %sm750_dev, i32 0, i32 4
  %de_init = getelementptr inbounds %struct.sm750_dev, ptr %sm750_dev, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %de_init to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %de_init, align 4
  tail call void %16(ptr noundef %accel) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_sm750_output_setMode(ptr nocapture noundef readonly %output, ptr nocapture noundef readnone %var, ptr nocapture noundef readnone %fix) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %channel1 = getelementptr inbounds %struct.lynxfb_output, ptr %output, i32 0, i32 2
  %0 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %call = tail call i32 @sm750_get_chip_type() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp.not = icmp eq i32 %call, 3
  br i1 %cmp.not, label %if.else30, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %do.end, label %do.end14

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #8
  %paths = getelementptr inbounds %struct.lynxfb_output, ptr %output, i32 0, i32 1
  %4 = ptrtoint ptr %paths to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %paths, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 13828176
  %and7 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %or10 = or i32 %spec.select, 110886928
  %spec.select49 = select i1 %tobool8.not, i32 %spec.select, i32 %or10
  br label %if.end29

do.end14:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #8
  %paths17 = getelementptr inbounds %struct.lynxfb_output, ptr %output, i32 0, i32 1
  %6 = ptrtoint ptr %paths17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %paths17, align 4
  %and18 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %spec.select48 = select i1 %tobool19.not, i32 0, i32 14876770
  %and24 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %or27 = or i32 %spec.select48, 111935528
  %spec.select50 = select i1 %tobool25.not, i32 %spec.select48, i32 %or27
  br label %if.end29

if.end29:                                         ; preds = %do.end14, %do.end
  %disp_set.2 = phi i32 [ %spec.select49, %do.end ], [ %spec.select50, %do.end14 ]
  tail call void @ddk750_set_logical_disp_out(i32 noundef %disp_set.2) #5
  br label %do.end36

if.else30:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = load ptr, ptr @mmio750, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 524936
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %10 = or i32 %9, 251658240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %11 = load ptr, ptr @mmio750, align 4
  %add.ptr.i51 = getelementptr i8, ptr %11, i32 524936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %10) #5, !srcloc !89
  br label %do.end36

do.end36:                                         ; preds = %if.else30, %if.end29
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ddk750_set_logical_disp_out(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_sm750_crtc_checkMode(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %var) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %0 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bits_per_pixel, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 8, label %entry.sw.epilog_crit_edge
    i32 16, label %entry.sw.epilog_crit_edge10
    i32 32, label %sw.bb1
  ]

entry.sw.epilog_crit_edge10:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %dev = getelementptr i8, ptr %crtc, i32 92
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %revid = getelementptr inbounds %struct.sm750_dev, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %revid to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %revid, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %6)
  %cmp = icmp eq i8 %6, -2
  br i1 %cmp, label %do.body, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hw_sm750_crtc_checkMode.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hw_sm750_crtc_checkMode, %if.then6)) #5
          to label %cleanup [label %if.then6], !srcloc !90

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hw_sm750_crtc_checkMode.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.36) #5
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then6, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %if.then6 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_sm750_crtc_setMode(ptr nocapture noundef readonly %crtc, ptr noundef readonly %var, ptr nocapture noundef readonly %fix) local_unnamed_addr #0 align 64 {
entry:
  %modparm = alloca %struct.mode_parameter, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %modparm) #5
  %0 = getelementptr inbounds i8, ptr %modparm, i32 44
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 -1, ptr %0, align 4, !annotation !91
  %dev = getelementptr i8, ptr %crtc, i32 92
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %accel_off = getelementptr inbounds %struct.sm750_dev, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %accel_off to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %accel_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.else174.i_crit_edge

entry.if.else174.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else174.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %6 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %switch.selectcmp = icmp eq i32 %7, 16
  %switch.select = select i1 %switch.selectcmp, i32 1, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %switch.selectcmp168 = icmp eq i32 %7, 8
  %switch.select169 = select i1 %switch.selectcmp168, i32 0, i32 %switch.select
  %accel = getelementptr inbounds %struct.sm750_dev, ptr %3, i32 0, i32 4
  tail call void @sm750_hw_set2dformat(ptr noundef %accel, i32 noundef %switch.select169) #5
  br label %if.else174.i

if.else174.i:                                     ; preds = %if.then, %entry.if.else174.i_crit_edge
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %8 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixclock, align 4
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 1000000000000) #9, !srcloc !92
  %asmresult1.i.i = extractvalue { i64, i64 } %10, 1
  %extract.t183 = trunc i64 %asmresult1.i.i to i32
  %pixel_clock = getelementptr inbounds %struct.mode_parameter, ptr %modparm, i32 0, i32 10
  %11 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %extract.t183, ptr %pixel_clock, align 4
  %sync = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 24
  %12 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sync, align 4
  %and = and i32 %13, 1
  %14 = xor i32 %and, 1
  %vertical_sync_polarity = getelementptr inbounds %struct.mode_parameter, ptr %modparm, i32 0, i32 9
  %15 = ptrtoint ptr %vertical_sync_polarity to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %vertical_sync_polarity, align 4
  %and5 = lshr i32 %13, 1
  %and5.lobit = and i32 %and5, 1
  %16 = xor i32 %and5.lobit, 1
  %horizontal_sync_polarity = getelementptr inbounds %struct.mode_parameter, ptr %modparm, i32 0, i32 4
  %17 = ptrtoint ptr %horizontal_sync_polarity to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %horizontal_sync_polarity, align 4
  %and9 = lshr i32 %13, 3
  %and9.lobit = and i32 %and9, 1
  %18 = xor i32 %and9.lobit, 1
  %clock_phase_polarity = getelementptr inbounds %struct.mode_parameter, ptr %modparm, i32 0, i32 13
  %19 = ptrtoint ptr %clock_phase_polarity to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %clock_phase_polarity, align 4
  %20 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %var, align 4
  %horizontal_display_end = getelementptr inbounds %struct.mode_parameter, ptr %modparm, i32 0, i32 1
  %22 = ptrtoint ptr %horizontal_display_end to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %horizontal_display_end, align 4
  %hsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %23 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hsync_len, align 4
  %horizontal_sync_width = getelementptr inbounds %struct.mode_parameter, ptr %modparm, i32 0, i32 3
  %25 = ptrtoint ptr %horizontal_sync_width to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %horizontal_sync_width, align 4
  %right_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %26 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %right_margin, align 4
  %add = add i32 %27, %21
  %horizontal_sync_start = getelementptr inbounds %struct.mode_parameter, ptr %modparm, i32 0, i32 2
  %28 = ptrtoint ptr %horizontal_sync_start to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add, ptr %horizontal_sync_start, align 4
  %left_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %29 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %left_margin, align 4
  %add16 = add i32 %add, %24
  %add18 = add i32 %add16, %30
  %31 = ptrtoint ptr %modparm to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add18, ptr %modparm, align 4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %32 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %yres, align 4
  %vertical_display_end = getelementptr inbounds %struct.mode_parameter, ptr %modparm, i32 0, i32 6
  %34 = ptrtoint ptr %vertical_display_end to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %vertical_display_end, align 4
  %vsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %35 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vsync_len, align 4
  %vertical_sync_height = getelementptr inbounds %struct.mode_parameter, ptr %modparm, i32 0, i32 8
  %37 = ptrtoint ptr %vertical_sync_height to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %vertical_sync_height, align 4
  %lower_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %38 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lower_margin, align 4
  %add20 = add i32 %39, %33
  %vertical_sync_start = getelementptr inbounds %struct.mode_parameter, ptr %modparm, i32 0, i32 7
  %40 = ptrtoint ptr %vertical_sync_start to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add20, ptr %vertical_sync_start, align 4
  %upper_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %41 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %upper_margin, align 4
  %add24 = add i32 %add20, %36
  %add26 = add i32 %add24, %42
  %vertical_total = getelementptr inbounds %struct.mode_parameter, ptr %modparm, i32 0, i32 5
  %43 = ptrtoint ptr %vertical_total to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add26, ptr %vertical_total, align 4
  %channel = getelementptr inbounds %struct.lynxfb_crtc, ptr %crtc, i32 0, i32 4
  %44 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp.not = icmp eq i32 %45, 1
  %. = select i1 %cmp.not, i32 2, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hw_sm750_crtc_setMode.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hw_sm750_crtc_setMode, %if.then34)) #5
          to label %do.end [label %if.then34], !srcloc !90

if.then34:                                        ; preds = %if.else174.i
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pixel_clock, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hw_sm750_crtc_setMode.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.38, i32 noundef %47) #5
  br label %do.end

do.end:                                           ; preds = %if.then34, %if.else174.i
  %call37 = call i32 @ddk750_setModeTiming(ptr noundef nonnull %modparm, i32 noundef %.) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end45, label %do.end42

do.end42:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #8
  br label %exit

if.end45:                                         ; preds = %do.end
  %48 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp47.not = icmp eq i32 %49, 1
  %o_screen83 = getelementptr inbounds %struct.lynxfb_crtc, ptr %crtc, i32 0, i32 3
  %50 = ptrtoint ptr %o_screen83 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %o_screen83, align 4
  br i1 %cmp47.not, label %if.else82, label %if.then48

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %and49 = and i32 %51, 33554431
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  call void @arm_heavy_mb() #5
  %52 = call i32 @llvm.bswap.i32(i32 %and49) #5
  %53 = load ptr, ptr @mmio750, align 4
  %add.ptr.i = getelementptr i8, ptr %53, i32 524300
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %52) #5, !srcloc !89
  %54 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %var, align 4
  %bits_per_pixel51 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %56 = ptrtoint ptr %bits_per_pixel51 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bits_per_pixel51, align 4
  %shr = lshr i32 %57, 3
  %mul = mul i32 %shr, %55
  %line_pad = getelementptr inbounds %struct.lynxfb_crtc, ptr %crtc, i32 0, i32 6
  %58 = ptrtoint ptr %line_pad to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %line_pad, align 4
  %conv = zext i16 %59 to i32
  %sub = add nuw nsw i32 %conv, 16383
  %add52 = add i32 %sub, %mul
  %neg = sub nsw i32 0, %conv
  %and56 = and i32 %add52, %neg
  %shl = shl i32 %and56, 16
  %and57 = and i32 %shl, 1073676288
  %line_length = getelementptr inbounds %struct.fb_fix_screeninfo, ptr %fix, i32 0, i32 9
  %60 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %line_length, align 4
  %and58 = and i32 %61, 16383
  %or = or i32 %and57, %and58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  call void @arm_heavy_mb() #5
  %62 = call i32 @llvm.bswap.i32(i32 %or) #5
  %63 = load ptr, ptr @mmio750, align 4
  %add.ptr.i170 = getelementptr i8, ptr %63, i32 524304
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170, i32 %62) #5, !srcloc !89
  %64 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %var, align 4
  %sub60 = shl i32 %65, 16
  %shl61 = add i32 %sub60, 268369920
  %and62 = and i32 %shl61, 268369920
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %66 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %xoffset, align 4
  %and63 = and i32 %67, 4095
  %or64 = or i32 %and62, %and63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  call void @arm_heavy_mb() #5
  %68 = call i32 @llvm.bswap.i32(i32 %or64) #5
  %69 = load ptr, ptr @mmio750, align 4
  %add.ptr.i171 = getelementptr i8, ptr %69, i32 524308
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171, i32 %68) #5, !srcloc !89
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %70 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %yres_virtual, align 4
  %sub65 = shl i32 %71, 16
  %shl66 = add i32 %sub65, 268369920
  %and67 = and i32 %shl66, 268369920
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %72 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %yoffset, align 4
  %and68 = and i32 %73, 4095
  %or69 = or i32 %and67, %and68
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  call void @arm_heavy_mb() #5
  %74 = call i32 @llvm.bswap.i32(i32 %or69) #5
  %75 = load ptr, ptr @mmio750, align 4
  %add.ptr.i172 = getelementptr i8, ptr %75, i32 524312
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172, i32 %74) #5, !srcloc !89
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  call void @arm_heavy_mb() #5
  %76 = load ptr, ptr @mmio750, align 4
  %add.ptr.i173 = getelementptr i8, ptr %76, i32 524316
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i173, i32 0) #5, !srcloc !89
  %77 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %yres, align 4
  %sub71 = shl i32 %78, 16
  %shl72 = add i32 %sub71, 134152192
  %and73 = and i32 %shl72, 134152192
  %79 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %var, align 4
  %sub75 = add i32 %80, 2047
  %and76 = and i32 %sub75, 2047
  %or77 = or i32 %and73, %and76
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  call void @arm_heavy_mb() #5
  %81 = call i32 @llvm.bswap.i32(i32 %or77) #5
  %82 = load ptr, ptr @mmio750, align 4
  %add.ptr.i174 = getelementptr i8, ptr %82, i32 524320
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i174, i32 %81) #5, !srcloc !89
  %83 = load ptr, ptr @mmio750, align 4
  %add.ptr.i175 = getelementptr i8, ptr %83, i32 524288
  %84 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i175) #5, !srcloc !86
  %85 = call i32 @llvm.bswap.i32(i32 %84) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %86 = ptrtoint ptr %bits_per_pixel51 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bits_per_pixel51, align 4
  %shr80 = lshr i32 %87, 4
  %or81 = or i32 %shr80, %85
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  call void @arm_heavy_mb() #5
  %88 = call i32 @llvm.bswap.i32(i32 %or81) #5
  %89 = load ptr, ptr @mmio750, align 4
  %add.ptr.i176 = getelementptr i8, ptr %89, i32 524288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i176, i32 %88) #5, !srcloc !89
  br label %exit

if.else82:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  call void @arm_heavy_mb() #5
  %90 = call i32 @llvm.bswap.i32(i32 %51) #5
  %91 = load ptr, ptr @mmio750, align 4
  %add.ptr.i177 = getelementptr i8, ptr %91, i32 524804
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177, i32 %90) #5, !srcloc !89
  %92 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %var, align 4
  %bits_per_pixel85 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %94 = ptrtoint ptr %bits_per_pixel85 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %bits_per_pixel85, align 4
  %shr86 = lshr i32 %95, 3
  %mul87 = mul i32 %shr86, %93
  %line_pad88 = getelementptr inbounds %struct.lynxfb_crtc, ptr %crtc, i32 0, i32 6
  %96 = ptrtoint ptr %line_pad88 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %line_pad88, align 4
  %conv89 = zext i16 %97 to i32
  %sub90 = add nuw nsw i32 %conv89, 16383
  %add91 = add i32 %sub90, %mul87
  %neg95 = sub nsw i32 0, %conv89
  %and96 = and i32 %add91, %neg95
  %shl97 = shl i32 %and96, 16
  %and98 = and i32 %shl97, 1073676288
  %line_length99 = getelementptr inbounds %struct.fb_fix_screeninfo, ptr %fix, i32 0, i32 9
  %98 = ptrtoint ptr %line_length99 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %line_length99, align 4
  %and100 = and i32 %99, 16383
  %or101 = or i32 %and98, %and100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  call void @arm_heavy_mb() #5
  %100 = call i32 @llvm.bswap.i32(i32 %or101) #5
  %101 = load ptr, ptr @mmio750, align 4
  %add.ptr.i178 = getelementptr i8, ptr %101, i32 524808
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178, i32 %100) #5, !srcloc !89
  %102 = load ptr, ptr @mmio750, align 4
  %add.ptr.i179 = getelementptr i8, ptr %102, i32 524800
  %103 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i179) #5, !srcloc !86
  %104 = call i32 @llvm.bswap.i32(i32 %103) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %105 = ptrtoint ptr %bits_per_pixel85 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %bits_per_pixel85, align 4
  %shr104 = lshr i32 %106, 4
  %and105 = and i32 %shr104, 3
  %or106 = or i32 %and105, %104
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  call void @arm_heavy_mb() #5
  %107 = call i32 @llvm.bswap.i32(i32 %or106) #5
  %108 = load ptr, ptr @mmio750, align 4
  %add.ptr.i180 = getelementptr i8, ptr %108, i32 524800
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180, i32 %107) #5, !srcloc !89
  br label %exit

exit:                                             ; preds = %if.else82, %if.then48, %do.end42
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %modparm) #5
  ret i32 %call37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sm750_hw_set2dformat(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ddk750_setModeTiming(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_sm750_setColReg(ptr nocapture noundef readonly %crtc, i16 noundef zeroext %index, i16 noundef zeroext %red, i16 noundef zeroext %green, i16 noundef zeroext %blue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.lynxfb_crtc, ptr %crtc, i32 0, i32 4
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr [2 x i32], ptr @hw_sm750_setColReg.add, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %conv = zext i16 %index to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add i32 %3, %mul
  %conv1 = zext i16 %red to i32
  %shl = shl nuw i32 %conv1, 16
  %conv2 = zext i16 %green to i32
  %shl3 = shl nuw nsw i32 %conv2, 8
  %or = or i32 %shl3, %shl
  %conv4 = zext i16 %blue to i32
  %or5 = or i32 %or, %conv4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %or5) #5
  %5 = load ptr, ptr @mmio750, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #5, !srcloc !89
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_sm750le_setBLANK(ptr nocapture noundef readonly %output, i32 noundef %blank) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %blank)
  %0 = icmp ult i32 %blank, 5
  br i1 %0, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %paths = getelementptr inbounds %struct.lynxfb_output, ptr %output, i32 0, i32 1
  %1 = ptrtoint ptr %paths to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %paths, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %switch.lookup.cleanup_crit_edge, label %if.then

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep14 = getelementptr inbounds [5 x i32], ptr @switch.table.hw_sm750le_setBLANK.43, i32 0, i32 %blank
  %3 = ptrtoint ptr %switch.gep14 to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load15 = load i32, ptr %switch.gep14, align 4
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.hw_sm750le_setBLANK, i32 0, i32 %blank
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %5 = load ptr, ptr @mmio750, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 524800
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %7 = and i32 %6, -193
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %or = or i32 %8, %switch.load
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %9 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %10 = load ptr, ptr @mmio750, align 4
  %add.ptr.i11 = getelementptr i8, ptr %10, i32 524800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %9) #5, !srcloc !89
  %11 = load ptr, ptr @mmio750, align 4
  %add.ptr.i12 = getelementptr i8, ptr %11, i32 524800
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %13 = and i32 %12, -262145
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %or8 = or i32 %14, %switch.load15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %or8) #5
  %16 = load ptr, ptr @mmio750, align 4
  %add.ptr.i13 = getelementptr i8, ptr %16, i32 524800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %15) #5, !srcloc !89
  br label %cleanup

cleanup:                                          ; preds = %if.then, %switch.lookup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then ], [ 0, %switch.lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_sm750_setBLANK(ptr nocapture noundef readonly %output, i32 noundef %blank) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %blank to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %blank, label %entry.sw.epilog_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body4
    i32 2, label %sw.bb20
    i32 3, label %sw.bb21
    i32 4, label %sw.bb22
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hw_sm750_setBLANK.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hw_sm750_setBLANK, %if.then)) #5
          to label %sw.epilog [label %if.then], !srcloc !90

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hw_sm750_setBLANK.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.41) #5
  br label %sw.epilog

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hw_sm750_setBLANK.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hw_sm750_setBLANK, %if.then16)) #5
          to label %sw.epilog [label %if.then16], !srcloc !90

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hw_sm750_setBLANK.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.42) #5
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb22, %sw.bb21, %sw.bb20, %if.then16, %do.body4, %if.then, %do.body, %entry.sw.epilog_crit_edge
  %crtdb.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 1024, %sw.bb22 ], [ 1024, %sw.bb21 ], [ 1024, %sw.bb20 ], [ 0, %if.then ], [ 1024, %if.then16 ], [ 0, %do.body ], [ 1024, %do.body4 ]
  %pps.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb22 ], [ 0, %sw.bb21 ], [ 0, %sw.bb20 ], [ 33554432, %if.then ], [ 0, %if.then16 ], [ 33554432, %do.body ], [ 0, %do.body4 ]
  %dpms.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ -1073741824, %sw.bb22 ], [ 1073741824, %sw.bb21 ], [ -2147483648, %sw.bb20 ], [ 0, %if.then ], [ 0, %if.then16 ], [ 0, %do.body ], [ 0, %do.body4 ]
  %paths = getelementptr inbounds %struct.lynxfb_output, ptr %output, i32 0, i32 1
  %1 = ptrtoint ptr %paths to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %paths, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %sw.epilog.if.end30_crit_edge, label %if.then24

sw.epilog.if.end30_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then24:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %3 = load ptr, ptr @mmio750, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %5 = and i32 %4, -193
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %or = or i32 %6, %dpms.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %7 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %8 = load ptr, ptr @mmio750, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #5, !srcloc !89
  %9 = load ptr, ptr @mmio750, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 524800
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %11 = and i32 %10, -262145
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %or29 = or i32 %12, %crtdb.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %13 = tail call i32 @llvm.bswap.i32(i32 %or29) #5
  %14 = load ptr, ptr @mmio750, align 4
  %add.ptr.i47 = getelementptr i8, ptr %14, i32 524800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 %13) #5, !srcloc !89
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %sw.epilog.if.end30_crit_edge
  %15 = ptrtoint ptr %paths to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %paths, align 4
  %and32 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end30.if.end39_crit_edge, label %if.then34

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %17 = load ptr, ptr @mmio750, align 4
  %add.ptr.i48 = getelementptr i8, ptr %17, i32 524288
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %19 = and i32 %18, -3
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %or38 = or i32 %20, %pps.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %21 = tail call i32 @llvm.bswap.i32(i32 %or38) #5
  %22 = load ptr, ptr @mmio750, align 4
  %add.ptr.i49 = getelementptr i8, ptr %22, i32 524288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %21) #5, !srcloc !89
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %if.end30.if.end39_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sm750_enable_2d_engine(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_sm750le_deWait() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %i.0 = phi i32 [ 268435456, %entry ], [ %dec, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0)
  %tobool.not = icmp eq i32 %i.0, 0
  br i1 %tobool.not, label %while.cond.cleanup1_crit_edge, label %while.body

while.cond.cleanup1_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup1

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %i.0, -1
  %0 = load ptr, ptr @mmio750, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 1048664
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %2 = and i32 %1, 234881024
  %cmp = icmp eq i32 %2, 167772160
  br i1 %cmp, label %while.body.cleanup1_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

while.body.cleanup1_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup1

cleanup1:                                         ; preds = %while.body.cleanup1_crit_edge, %while.cond.cleanup1_crit_edge
  %retval.2 = phi i32 [ 0, %while.body.cleanup1_crit_edge ], [ -1, %while.cond.cleanup1_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_sm750_deWait() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %i.0 = phi i32 [ 268435456, %entry ], [ %dec, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0)
  %tobool.not = icmp eq i32 %i.0, 0
  br i1 %tobool.not, label %while.cond.cleanup1_crit_edge, label %while.body

while.cond.cleanup1_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup1

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %i.0, -1
  %0 = load ptr, ptr @mmio750, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %2 = and i32 %1, 57344
  %cmp = icmp eq i32 %2, 40960
  br i1 %cmp, label %while.body.cleanup1_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

while.body.cleanup1_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup1

cleanup1:                                         ; preds = %while.body.cleanup1_crit_edge, %while.cond.cleanup1_crit_edge
  %retval.2 = phi i32 [ 0, %while.body.cleanup1_crit_edge ], [ -1, %while.cond.cleanup1_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_sm750_pan_display(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %0 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xoffset, align 4
  %2 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %var, align 4
  %add = add i32 %3, %1
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %4 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp = icmp ugt i32 %add, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %6 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %yoffset, align 4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %8 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %yres, align 4
  %add1 = add i32 %9, %7
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %10 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1, i32 %11)
  %cmp2 = icmp ugt i32 %add1, %11
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %12 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %line_length, align 4
  %mul = mul i32 %13, %7
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %14 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bits_per_pixel, align 4
  %mul5 = mul i32 %15, %1
  %shr = lshr i32 %mul5, 3
  %o_screen = getelementptr inbounds %struct.lynxfb_crtc, ptr %crtc, i32 0, i32 3
  %16 = ptrtoint ptr %o_screen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %o_screen, align 4
  %add6 = add i32 %17, %mul
  %add7 = add i32 %add6, %shr
  %channel = getelementptr inbounds %struct.lynxfb_crtc, ptr %crtc, i32 0, i32 4
  %18 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp8 = icmp eq i32 %19, 0
  %20 = load ptr, ptr @mmio750, align 4
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %20, i32 524300
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !86
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %and = and i32 %add7, 33554431
  %or = or i32 %22, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %23 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %24 = load ptr, ptr @mmio750, align 4
  %add.ptr.i25 = getelementptr i8, ptr %24, i32 524300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %23) #5, !srcloc !89
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i26 = getelementptr i8, ptr %20, i32 524804
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #5, !srcloc !86
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %and11 = and i32 %add7, 67108863
  %or12 = or i32 %26, %and11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %27 = tail call i32 @llvm.bswap.i32(i32 %or12) #5
  %28 = load ptr, ptr @mmio750, align 4
  %add.ptr.i27 = getelementptr i8, ptr %28, i32 524804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %27) #5, !srcloc !89
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then9, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !70, !71, !72, !74, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/sm750fb/sm750_hw.c", i32 38, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @hw_sm750_map._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @hw_sm750_map._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/sm750fb/sm750_hw.c", i32 46, i32 36}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/sm750fb/sm750_hw.c", i32 48, i32 3}
!10 = !{ptr @hw_sm750_map._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @hw_sm750_map._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/sm750fb/sm750_hw.c", i32 56, i32 3}
!14 = !{ptr @hw_sm750_map._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @hw_sm750_map._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/sm750fb/sm750_hw.c", i32 60, i32 3}
!18 = !{ptr @hw_sm750_map._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @hw_sm750_map._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/sm750fb/sm750_hw.c", i32 77, i32 2}
!22 = !{ptr @hw_sm750_map._entry.13, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @hw_sm750_map._entry_ptr.15, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/sm750fb/sm750_hw.c", i32 84, i32 3}
!26 = !{ptr @hw_sm750_map._entry.16, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @hw_sm750_map._entry_ptr.18, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.20, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/sm750fb/sm750_hw.c", i32 88, i32 3}
!30 = !{ptr @hw_sm750_map._entry.19, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @hw_sm750_map._entry_ptr.21, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.22, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/sm750fb/sm750_hw.c", i32 168, i32 4}
!34 = !{ptr @.str.23, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @hw_sm750_inithw._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @hw_sm750_inithw._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.25, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/sm750fb/sm750_hw.c", i32 172, i32 4}
!39 = !{ptr @hw_sm750_inithw._entry.24, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @hw_sm750_inithw._entry_ptr.26, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.27, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/sm750fb/sm750_hw.c", i32 197, i32 4}
!43 = !{ptr @.str.28, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @hw_sm750_output_setMode._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @hw_sm750_output_setMode._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.30, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/sm750fb/sm750_hw.c", i32 204, i32 4}
!48 = !{ptr @hw_sm750_output_setMode._entry.29, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @hw_sm750_output_setMode._entry_ptr.31, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.33, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/sm750fb/sm750_hw.c", i32 220, i32 2}
!52 = !{ptr @hw_sm750_output_setMode._entry.32, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @hw_sm750_output_setMode._entry_ptr.34, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.35, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/sm750fb/sm750_hw.c", i32 238, i32 4}
!56 = !{ptr @.str.36, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @hw_sm750_crtc_checkMode.__UNIQUE_ID_ddebug305, !55, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!58 = !{ptr @.str.37, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/sm750fb/sm750_hw.c", i32 307, i32 2}
!60 = !{ptr @.str.38, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @hw_sm750_crtc_setMode.__UNIQUE_ID_ddebug306, !59, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!62 = !{ptr @.str.39, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/staging/sm750fb/sm750_hw.c", i32 310, i32 3}
!64 = !{ptr @hw_sm750_crtc_setMode._entry, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @hw_sm750_crtc_setMode._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @hw_sm750_setColReg.add, !67, !"add", i1 false, i1 false}
!67 = !{!"../drivers/staging/sm750fb/sm750_hw.c", i32 378, i32 22}
!68 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/sm750fb/sm750_hw.c", i32 436, i32 3}
!70 = !{ptr @.str.41, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @hw_sm750_setBLANK.__UNIQUE_ID_ddebug307, !69, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!72 = !{ptr @.str.42, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/sm750fb/sm750_hw.c", i32 441, i32 3}
!74 = !{ptr @hw_sm750_setBLANK.__UNIQUE_ID_ddebug308, !73, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!75 = !{ptr @mmio750, !76, !"mmio750", i1 false, i1 false}
!76 = !{!"../drivers/staging/sm750fb/sm750_hw.c", i32 27, i32 15}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i64 6225718}
!87 = !{i64 2156324897}
!88 = !{i64 2156325278}
!89 = !{i64 6225300}
!90 = !{i64 2148965743, i64 2148965748, i64 2148965761, i64 2148965805, i64 2148965839, i64 2148965860}
!91 = !{!"auto-init"}
!92 = !{i64 2148198790, i64 2148199070, i64 2148199404, i64 2148199738}
