; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/nvidia/nv_setup.c_pt.bc'
source_filename = "../drivers/video/fbdev/nvidia/nv_setup.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvidia_par = type { %struct._riva_hw_state, %struct._riva_hw_state, %struct._riva_hw_state, ptr, %struct.vgastate, [16 x i32], ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.NVFBLayout, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, [3 x %struct.nvidia_i2c_chan], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._riva_hw_state = type { [21 x i8], [65 x i8], [9 x i8], [5 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vgastate = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.NVFBLayout = type { i32, i32, i32, i32 }
%struct.nvidia_i2c_chan = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_algo_bit_data }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.85, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.85 = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@NVCommonSetup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nvidiafb: EDID found from BUS1\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"NVCommonSetup\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/video/fbdev/nvidia/nv_setup.c\00", [58 x i8] zeroinitializer }, align 32
@NVCommonSetup._entry_ptr = internal global ptr @NVCommonSetup._entry, section ".printk_index", align 4
@NVCommonSetup._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"nvidiafb: HW is currently programmed for %s\0A\00", [51 x i8] zeroinitializer }, align 32
@NVCommonSetup._entry_ptr.5 = internal global ptr @NVCommonSetup._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TV\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DFP\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CRT\00", [28 x i8] zeroinitializer }, align 32
@NVCommonSetup._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"nvidiafb: Forcing display type to %s as specified\0A\00", [45 x i8] zeroinitializer }, align 32
@NVCommonSetup._entry_ptr.11 = internal global ptr @NVCommonSetup._entry.9, section ".printk_index", align 4
@NVCommonSetup._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@NVCommonSetup._entry_ptr.13 = internal global ptr @NVCommonSetup._entry.12, section ".printk_index", align 4
@NVCommonSetup._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nvidiafb: EDID found from BUS2\0A\00", [32 x i8] zeroinitializer }, align 32
@NVCommonSetup._entry_ptr.16 = internal global ptr @NVCommonSetup._entry.14, section ".printk_index", align 4
@NVCommonSetup._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"nvidiafb: CRTC 0 is currently programmed for DFP\0A\00", [46 x i8] zeroinitializer }, align 32
@NVCommonSetup._entry_ptr.19 = internal global ptr @NVCommonSetup._entry.17, section ".printk_index", align 4
@NVCommonSetup._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"nvidiafb: CRTC 1 is currently programmed for DFP\0A\00", [46 x i8] zeroinitializer }, align 32
@NVCommonSetup._entry_ptr.22 = internal global ptr @NVCommonSetup._entry.20, section ".printk_index", align 4
@NVCommonSetup._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"nvidiafb: CRTC %i appears to have a CRT attached\0A\00", [46 x i8] zeroinitializer }, align 32
@NVCommonSetup._entry_ptr.25 = internal global ptr @NVCommonSetup._entry.23, section ".printk_index", align 4
@NVCommonSetup._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@NVCommonSetup._entry_ptr.27 = internal global ptr @NVCommonSetup._entry.26, section ".printk_index", align 4
@NVCommonSetup._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.1, ptr @.str.2, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"nvidiafb: CRTC 0 is currently programmed for TV\0A\00", [47 x i8] zeroinitializer }, align 32
@NVCommonSetup._entry_ptr.30 = internal global ptr @NVCommonSetup._entry.28, section ".printk_index", align 4
@NVCommonSetup._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.1, ptr @.str.2, i32 534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"nvidiafb: CRTC 1 is currently programmed for TV\0A\00", [47 x i8] zeroinitializer }, align 32
@NVCommonSetup._entry_ptr.33 = internal global ptr @NVCommonSetup._entry.31, section ".printk_index", align 4
@NVCommonSetup._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.1, ptr @.str.2, i32 547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nvidiafb: Unable to detect display type...\0A\00", [52 x i8] zeroinitializer }, align 32
@NVCommonSetup._entry_ptr.36 = internal global ptr @NVCommonSetup._entry.34, section ".printk_index", align 4
@NVCommonSetup._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.1, ptr @.str.2, i32 550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"...On a laptop, assuming DFP\0A\00", [34 x i8] zeroinitializer }, align 32
@NVCommonSetup._entry_ptr.39 = internal global ptr @NVCommonSetup._entry.37, section ".printk_index", align 4
@NVCommonSetup._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.1, ptr @.str.2, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"...Using default of CRT\0A\00", [39 x i8] zeroinitializer }, align 32
@NVCommonSetup._entry_ptr.42 = internal global ptr @NVCommonSetup._entry.40, section ".printk_index", align 4
@NVCommonSetup._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@NVCommonSetup._entry_ptr.44 = internal global ptr @NVCommonSetup._entry.43, section ".printk_index", align 4
@NVCommonSetup._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.1, ptr @.str.2, i32 567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"nvidiafb: Unable to detect which CRTCNumber...\0A\00", [48 x i8] zeroinitializer }, align 32
@NVCommonSetup._entry_ptr.47 = internal global ptr @NVCommonSetup._entry.45, section ".printk_index", align 4
@NVCommonSetup._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.1, ptr @.str.2, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"...Defaulting to CRTCNumber %i\0A\00", [32 x i8] zeroinitializer }, align 32
@NVCommonSetup._entry_ptr.50 = internal global ptr @NVCommonSetup._entry.48, section ".printk_index", align 4
@NVCommonSetup._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.1, ptr @.str.2, i32 577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"nvidiafb: Forcing CRTCNumber %i as specified\0A\00", [50 x i8] zeroinitializer }, align 32
@NVCommonSetup._entry_ptr.53 = internal global ptr @NVCommonSetup._entry.51, section ".printk_index", align 4
@NVCommonSetup._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.1, ptr @.str.2, i32 618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nvidiafb: Using %s on CRTC %i\0A\00", [33 x i8] zeroinitializer }, align 32
@NVCommonSetup._entry_ptr.56 = internal global ptr @NVCommonSetup._entry.54, section ".printk_index", align 4
@NVCommonSetup._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.1, ptr @.str.2, i32 625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nvidiafb: Panel size is %i x %i\0A\00", [63 x i8] zeroinitializer }, align 32
@NVCommonSetup._entry_ptr.59 = internal global ptr @NVCommonSetup._entry.57, section ".printk_index", align 4
@NVCommonSetup._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.1, ptr @.str.2, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvidiafb: Panel is %s\0A\00", [41 x i8] zeroinitializer }, align 32
@NVCommonSetup._entry_ptr.62 = internal global ptr @NVCommonSetup._entry.60, section ".printk_index", align 4
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LVDS\00", [27 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TMDS\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@NVIsConnected._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nvidiafb: CRTC%i analog found\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"NVIsConnected\00", [18 x i8] zeroinitializer }, align 32
@NVIsConnected._entry_ptr = internal global ptr @NVIsConnected._entry, section ".printk_index", align 4
@NVIsConnected._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"nvidiafb: CRTC%i analog not found\0A\00", [61 x i8] zeroinitializer }, align 32
@NVIsConnected._entry_ptr.69 = internal global ptr @NVIsConnected._entry.67, section ".printk_index", align 4
@switch.table.NVCommonSetup = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 32768, i32 4096, i32 8192, i32 16384], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 12, i64 256, i64 336, i64 416, i64 512]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 12, i64 784, i64 832]
@__sancov_gen_cov_switch_values.71 = internal global [50 x i64] [i64 48, i64 16, i64 152, i64 153, i64 200, i64 204, i64 274, i64 324, i64 326, i64 327, i64 328, i64 352, i64 358, i64 361, i64 363, i64 364, i64 365, i64 372, i64 373, i64 374, i64 375, i64 377, i64 380, i64 381, i64 390, i64 391, i64 397, i64 471, i64 552, i64 646, i64 652, i64 790, i64 791, i64 794, i64 795, i64 796, i64 797, i64 798, i64 799, i64 804, i64 805, i64 808, i64 809, i64 812, i64 813, i64 839, i64 840, i64 841, i64 843, i64 844]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 16, i64 416, i64 496]
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 402, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 420, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 429, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 490, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 498, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 506, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 511, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 516, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 521, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 527, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 533, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 546, i32 5 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 549, i32 6 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 553, i32 6 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 558, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 566, i32 5 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 572, i32 5 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 576, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 616, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 625, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 639, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 169, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.224 = private constant [41 x i8] c"../drivers/video/fbdev/nvidia/nv_setup.c\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 171, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant [27 x i8] c"switch.table.NVCommonSetup\00", align 1
@llvm.compiler.used = appending global [75 x ptr] [ptr @NVCommonSetup._entry, ptr @NVCommonSetup._entry.12, ptr @NVCommonSetup._entry.14, ptr @NVCommonSetup._entry.17, ptr @NVCommonSetup._entry.20, ptr @NVCommonSetup._entry.23, ptr @NVCommonSetup._entry.26, ptr @NVCommonSetup._entry.28, ptr @NVCommonSetup._entry.3, ptr @NVCommonSetup._entry.31, ptr @NVCommonSetup._entry.34, ptr @NVCommonSetup._entry.37, ptr @NVCommonSetup._entry.40, ptr @NVCommonSetup._entry.43, ptr @NVCommonSetup._entry.45, ptr @NVCommonSetup._entry.48, ptr @NVCommonSetup._entry.51, ptr @NVCommonSetup._entry.54, ptr @NVCommonSetup._entry.57, ptr @NVCommonSetup._entry.60, ptr @NVCommonSetup._entry.9, ptr @NVCommonSetup._entry_ptr, ptr @NVCommonSetup._entry_ptr.11, ptr @NVCommonSetup._entry_ptr.13, ptr @NVCommonSetup._entry_ptr.16, ptr @NVCommonSetup._entry_ptr.19, ptr @NVCommonSetup._entry_ptr.22, ptr @NVCommonSetup._entry_ptr.25, ptr @NVCommonSetup._entry_ptr.27, ptr @NVCommonSetup._entry_ptr.30, ptr @NVCommonSetup._entry_ptr.33, ptr @NVCommonSetup._entry_ptr.36, ptr @NVCommonSetup._entry_ptr.39, ptr @NVCommonSetup._entry_ptr.42, ptr @NVCommonSetup._entry_ptr.44, ptr @NVCommonSetup._entry_ptr.47, ptr @NVCommonSetup._entry_ptr.5, ptr @NVCommonSetup._entry_ptr.50, ptr @NVCommonSetup._entry_ptr.53, ptr @NVCommonSetup._entry_ptr.56, ptr @NVCommonSetup._entry_ptr.59, ptr @NVCommonSetup._entry_ptr.62, ptr @NVIsConnected._entry, ptr @NVIsConnected._entry.67, ptr @NVIsConnected._entry_ptr, ptr @NVIsConnected._entry_ptr.69, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @switch.table.NVCommonSetup], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NVCommonSetup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NVCommonSetup._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NVCommonSetup._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NVCommonSetup._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NVCommonSetup._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NVCommonSetup._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NVCommonSetup._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NVCommonSetup._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NVCommonSetup._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NVCommonSetup._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NVCommonSetup._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NVCommonSetup._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NVCommonSetup._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NVCommonSetup._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NVCommonSetup._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NVCommonSetup._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NVCommonSetup._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NVCommonSetup._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NVCommonSetup._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NVCommonSetup._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NVCommonSetup._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NVIsConnected._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NVIsConnected._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.NVCommonSetup to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @NVWriteCrtc(ptr nocapture noundef readonly %par, i8 noundef zeroext %index, i8 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  %PCIO = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 71
  %0 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %PCIO, align 8
  %IOBase = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 21
  %2 = ptrtoint ptr %IOBase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %IOBase, align 8
  %add = add i32 %3, 4
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %index) #5, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %PCIO, align 8
  %6 = ptrtoint ptr %IOBase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %IOBase, align 8
  %add5 = add i32 %7, 5
  %add.ptr6 = getelementptr i8, ptr %5, i32 %add5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6, i8 %value) #5, !srcloc !107
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @NVReadCrtc(ptr nocapture noundef readonly %par, i8 noundef zeroext %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  tail call void @arm_heavy_mb() #5
  %PCIO = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 71
  %0 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %PCIO, align 8
  %IOBase = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 21
  %2 = ptrtoint ptr %IOBase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %IOBase, align 8
  %add = add i32 %3, 4
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %index) #5, !srcloc !107
  %4 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %PCIO, align 8
  %6 = ptrtoint ptr %IOBase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %IOBase, align 8
  %add3 = add i32 %7, 5
  %add.ptr4 = getelementptr i8, ptr %5, i32 %add3
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr4) #5, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  ret i8 %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @NVWriteGr(ptr nocapture noundef readonly %par, i8 noundef zeroext %index, i8 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  %PVIO = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 72
  %0 = ptrtoint ptr %PVIO to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %PVIO, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %index) #5, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %PVIO to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %PVIO, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 975
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 %value) #5, !srcloc !107
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @NVReadGr(ptr nocapture noundef readonly %par, i8 noundef zeroext %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  tail call void @arm_heavy_mb() #5
  %PVIO = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 72
  %0 = ptrtoint ptr %PVIO to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %PVIO, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 974
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %index) #5, !srcloc !107
  %2 = ptrtoint ptr %PVIO to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %PVIO, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 975
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #5, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  ret i8 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @NVWriteSeq(ptr nocapture noundef readonly %par, i8 noundef zeroext %index, i8 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  tail call void @arm_heavy_mb() #5
  %PVIO = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 72
  %0 = ptrtoint ptr %PVIO to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %PVIO, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %index) #5, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %PVIO to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %PVIO, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 %value) #5, !srcloc !107
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @NVReadSeq(ptr nocapture noundef readonly %par, i8 noundef zeroext %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  tail call void @arm_heavy_mb() #5
  %PVIO = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 72
  %0 = ptrtoint ptr %PVIO to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %PVIO, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %index) #5, !srcloc !107
  %2 = ptrtoint ptr %PVIO to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %PVIO, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 965
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #5, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !119
  ret i8 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @NVWriteAttr(ptr nocapture noundef readonly %par, i8 noundef zeroext %index, i8 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %PCIO = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 71
  %0 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %PCIO, align 8
  %IOBase = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 21
  %2 = ptrtoint ptr %IOBase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %IOBase, align 8
  %add = add i32 %3, 10
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  %paletteEnabled = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 51
  %5 = ptrtoint ptr %paletteEnabled to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %paletteEnabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %7 = and i8 %index, -33
  %masksel = select i1 %tobool.not, i8 32, i8 0
  %index.addr.0 = or i8 %masksel, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %PCIO, align 8
  %add.ptr6 = getelementptr i8, ptr %9, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6, i8 %index.addr.0) #5, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !122
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %PCIO, align 8
  %add.ptr10 = getelementptr i8, ptr %11, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10, i8 %value) #5, !srcloc !107
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @NVReadAttr(ptr nocapture noundef readonly %par, i8 noundef zeroext %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %PCIO = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 71
  %0 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %PCIO, align 8
  %IOBase = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 21
  %2 = ptrtoint ptr %IOBase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %IOBase, align 8
  %add = add i32 %3, 10
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %paletteEnabled = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 51
  %5 = ptrtoint ptr %paletteEnabled to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %paletteEnabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %7 = and i8 %index, -33
  %masksel = select i1 %tobool.not, i8 32, i8 0
  %index.addr.0 = or i8 %masksel, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %PCIO, align 8
  %add.ptr6 = getelementptr i8, ptr %9, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6, i8 %index.addr.0) #5, !srcloc !107
  %10 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %PCIO, align 8
  %add.ptr10 = getelementptr i8, ptr %11, i32 961
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr10) #5, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !125
  ret i8 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @NVWriteMiscOut(ptr nocapture noundef readonly %par, i8 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  tail call void @arm_heavy_mb() #5
  %PVIO = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 72
  %0 = ptrtoint ptr %PVIO to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %PVIO, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 962
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %value) #5, !srcloc !107
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @NVReadMiscOut(ptr nocapture noundef readonly %par) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %PVIO = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 72
  %0 = ptrtoint ptr %PVIO to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %PVIO, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 972
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !127
  ret i8 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @NVWriteDacMask(ptr nocapture noundef readonly %par, i8 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !128
  tail call void @arm_heavy_mb() #5
  %PDIO = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 74
  %0 = ptrtoint ptr %PDIO to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %PDIO, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 966
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %value) #5, !srcloc !107
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @NVWriteDacReadAddr(ptr nocapture noundef readonly %par, i8 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  tail call void @arm_heavy_mb() #5
  %PDIO = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 74
  %0 = ptrtoint ptr %PDIO to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %PDIO, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 967
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %value) #5, !srcloc !107
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @NVWriteDacWriteAddr(ptr nocapture noundef readonly %par, i8 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !130
  tail call void @arm_heavy_mb() #5
  %PDIO = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 74
  %0 = ptrtoint ptr %PDIO to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %PDIO, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 968
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %value) #5, !srcloc !107
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @NVWriteDacData(ptr nocapture noundef readonly %par, i8 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  tail call void @arm_heavy_mb() #5
  %PDIO = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 74
  %0 = ptrtoint ptr %PDIO to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %PDIO, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %value) #5, !srcloc !107
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @NVReadDacData(ptr nocapture noundef readonly %par) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %PDIO = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 74
  %0 = ptrtoint ptr %PDIO to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %PDIO, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 969
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  ret i8 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @NVCommonSetup(ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  %amt.i = alloca i32, align 4
  %amt15.i = alloca i32, align 4
  %edidA = alloca ptr, align 4
  %edidB = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %Chipset = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %Chipset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %Chipset, align 8
  %4 = trunc i32 %3 to i16
  %conv = and i16 %4, 4080
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %edidA) #5
  %5 = ptrtoint ptr %edidA to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %edidA, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %edidB) #5
  %6 = ptrtoint ptr %edidB to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %edidB, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 160) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i829 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 140) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i830 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 140) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool4.not = icmp eq ptr %call7.i.i829, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not
  %tobool6.not = icmp eq ptr %call7.i.i830, null
  %or.cond820 = select i1 %or.cond, i1 true, i1 %tobool6.not
  br i1 %or.cond820, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.end:                                           ; preds = %entry
  %REGS = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 57
  %10 = ptrtoint ptr %REGS to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %REGS, align 8
  %add.ptr = getelementptr i32, ptr %11, i32 1851392
  %PRAMIN = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 67
  %12 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr, ptr %PRAMIN, align 8
  %add.ptr8 = getelementptr i32, ptr %11, i32 1572864
  %PCRTC0 = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 58
  %13 = ptrtoint ptr %PCRTC0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr8, ptr %PCRTC0, align 4
  %add.ptr10 = getelementptr i32, ptr %11, i32 1703936
  %PRAMDAC0 = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 60
  %14 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr10, ptr %PRAMDAC0, align 4
  %add.ptr12 = getelementptr i32, ptr %11, i32 262144
  %PFB = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 61
  %15 = ptrtoint ptr %PFB to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr12, ptr %PFB, align 8
  %add.ptr14 = getelementptr i32, ptr %11, i32 2048
  %PFIFO = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 62
  %16 = ptrtoint ptr %PFIFO to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr14, ptr %PFIFO, align 4
  %add.ptr16 = getelementptr i32, ptr %11, i32 1048576
  %PGRAPH = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 63
  %17 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr16, ptr %PGRAPH, align 8
  %add.ptr18 = getelementptr i32, ptr %11, i32 263168
  %PEXTDEV = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 64
  %18 = ptrtoint ptr %PEXTDEV to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr18, ptr %PEXTDEV, align 4
  %add.ptr20 = getelementptr i32, ptr %11, i32 9216
  %PTIMER = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 65
  %19 = ptrtoint ptr %PTIMER to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr20, ptr %PTIMER, align 8
  %PMC = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 66
  %20 = ptrtoint ptr %PMC to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %11, ptr %PMC, align 4
  %add.ptr24 = getelementptr i32, ptr %11, i32 2097152
  %FIFO = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 68
  %21 = ptrtoint ptr %FIFO to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr24, ptr %FIFO, align 4
  %add.ptr26 = getelementptr i8, ptr %11, i32 6295552
  %PCIO0 = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 70
  %22 = ptrtoint ptr %PCIO0 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr26, ptr %PCIO0, align 4
  %add.ptr28 = getelementptr i8, ptr %11, i32 6819840
  %PDIO0 = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 73
  %23 = ptrtoint ptr %PDIO0 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr28, ptr %PDIO0, align 8
  %add.ptr30 = getelementptr i8, ptr %11, i32 786432
  %PVIO = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 72
  %24 = ptrtoint ptr %PVIO to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr30, ptr %PVIO, align 4
  %Architecture = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %Architecture to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %Architecture, align 8
  %.fr = freeze i32 %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %.fr)
  %cmp = icmp ult i32 %.fr, 16
  br i1 %cmp, label %if.end.land.end_crit_edge, label %switch.early.test

if.end.land.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

switch.early.test:                                ; preds = %if.end
  %trunc925 = trunc i16 %conv to i12
  %27 = zext i12 %trunc925 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i12 %trunc925, label %land.rhs [
    i12 416, label %switch.early.test.land.end_crit_edge
    i12 336, label %switch.early.test.land.end_crit_edge927
    i12 256, label %switch.early.test.land.end_crit_edge928
    i12 512, label %switch.early.test.land.end_crit_edge929
  ]

switch.early.test.land.end_crit_edge929:          ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

switch.early.test.land.end_crit_edge928:          ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

switch.early.test.land.end_crit_edge927:          ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

switch.early.test.land.end_crit_edge:             ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.rhs:                                         ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %switch.early.test.land.end_crit_edge, %switch.early.test.land.end_crit_edge927, %switch.early.test.land.end_crit_edge928, %switch.early.test.land.end_crit_edge929, %if.end.land.end_crit_edge
  %28 = phi i1 [ false, %switch.early.test.land.end_crit_edge ], [ true, %land.rhs ], [ false, %if.end.land.end_crit_edge ], [ false, %switch.early.test.land.end_crit_edge927 ], [ false, %switch.early.test.land.end_crit_edge928 ], [ false, %switch.early.test.land.end_crit_edge929 ]
  %land.ext = zext i1 %28 to i32
  %twoHeads = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 31
  %29 = ptrtoint ptr %twoHeads to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %land.ext, ptr %twoHeads, align 4
  %FpScale = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 16
  %30 = ptrtoint ptr %FpScale to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %FpScale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool46.not = icmp eq i32 %31, 0
  br i1 %tobool46.not, label %land.end.land.end54_crit_edge, label %land.lhs.true47

land.end.land.end54_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end54

land.lhs.true47:                                  ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %conv)
  %cmp52 = icmp ne i16 %conv, 272
  %spec.select = select i1 %28, i1 %cmp52, i1 false
  br label %land.end54

land.end54:                                       ; preds = %land.lhs.true47, %land.end.land.end54_crit_edge
  %32 = phi i1 [ false, %land.end.land.end54_crit_edge ], [ %spec.select, %land.lhs.true47 ]
  %land.ext55 = zext i1 %32 to i32
  %fpScaler = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 33
  %33 = ptrtoint ptr %fpScaler to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %land.ext55, ptr %fpScaler, align 4
  %trunc926 = trunc i16 %conv to i12
  %34 = zext i12 %trunc926 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.70)
  switch i12 %trunc926, label %lor.rhs [
    i12 784, label %land.end54.lor.end_crit_edge
    i12 832, label %land.end54.lor.end_crit_edge930
  ]

land.end54.lor.end_crit_edge930:                  ; preds = %land.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

land.end54.lor.end_crit_edge:                     ; preds = %land.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.rhs:                                          ; preds = %land.end54
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %.fr)
  %cmp64 = icmp ugt i32 %.fr, 63
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.end54.lor.end_crit_edge, %land.end54.lor.end_crit_edge930
  %35 = phi i1 [ true, %land.end54.lor.end_crit_edge ], [ %cmp64, %lor.rhs ], [ true, %land.end54.lor.end_crit_edge930 ]
  %lor.ext = zext i1 %35 to i32
  %twoStagePLL = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 32
  %36 = ptrtoint ptr %twoStagePLL to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %lor.ext, ptr %twoStagePLL, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %.fr)
  %cmp67 = icmp ugt i32 %.fr, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %conv)
  %cmp71 = icmp ne i16 %conv, 256
  %spec.select824 = select i1 %cmp67, i1 %cmp71, i1 false
  %land.ext74 = zext i1 %spec.select824 to i32
  %WaitVSyncPossible = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 49
  %37 = ptrtoint ptr %WaitVSyncPossible to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %land.ext74, ptr %WaitVSyncPossible, align 4
  %38 = ptrtoint ptr %Chipset to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %Chipset, align 8
  %and76 = and i32 %39, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and76)
  %cmp77 = icmp ne i32 %and76, 32
  %conv78 = zext i1 %cmp77 to i32
  %BlendingPossible = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 50
  %40 = ptrtoint ptr %BlendingPossible to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv78, ptr %BlendingPossible, align 8
  %trunc = trunc i32 %39 to i16
  %41 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.71)
  switch i16 %trunc, label %lor.end.sw.epilog_crit_edge [
    i16 274, label %lor.end.sw.bb_crit_edge
    i16 372, label %lor.end.sw.bb_crit_edge931
    i16 373, label %lor.end.sw.bb_crit_edge932
    i16 374, label %lor.end.sw.bb_crit_edge933
    i16 375, label %lor.end.sw.bb_crit_edge934
    i16 377, label %lor.end.sw.bb_crit_edge935
    i16 380, label %lor.end.sw.bb_crit_edge936
    i16 381, label %lor.end.sw.bb_crit_edge937
    i16 390, label %lor.end.sw.bb_crit_edge938
    i16 391, label %lor.end.sw.bb_crit_edge939
    i16 397, label %lor.end.sw.bb_crit_edge940
    i16 471, label %lor.end.sw.bb_crit_edge941
    i16 552, label %lor.end.sw.bb_crit_edge942
    i16 646, label %lor.end.sw.bb_crit_edge943
    i16 652, label %lor.end.sw.bb_crit_edge944
    i16 790, label %lor.end.sw.bb_crit_edge945
    i16 791, label %lor.end.sw.bb_crit_edge946
    i16 794, label %lor.end.sw.bb_crit_edge947
    i16 795, label %lor.end.sw.bb_crit_edge948
    i16 796, label %lor.end.sw.bb_crit_edge949
    i16 797, label %lor.end.sw.bb_crit_edge950
    i16 798, label %lor.end.sw.bb_crit_edge951
    i16 799, label %lor.end.sw.bb_crit_edge952
    i16 804, label %lor.end.sw.bb_crit_edge953
    i16 805, label %lor.end.sw.bb_crit_edge954
    i16 808, label %lor.end.sw.bb_crit_edge955
    i16 809, label %lor.end.sw.bb_crit_edge956
    i16 812, label %lor.end.sw.bb_crit_edge957
    i16 813, label %lor.end.sw.bb_crit_edge958
    i16 839, label %lor.end.sw.bb_crit_edge959
    i16 840, label %lor.end.sw.bb_crit_edge960
    i16 841, label %lor.end.sw.bb_crit_edge961
    i16 843, label %lor.end.sw.bb_crit_edge962
    i16 844, label %lor.end.sw.bb_crit_edge963
    i16 352, label %lor.end.sw.bb_crit_edge964
    i16 358, label %lor.end.sw.bb_crit_edge965
    i16 361, label %lor.end.sw.bb_crit_edge966
    i16 363, label %lor.end.sw.bb_crit_edge967
    i16 364, label %lor.end.sw.bb_crit_edge968
    i16 365, label %lor.end.sw.bb_crit_edge969
    i16 200, label %lor.end.sw.bb_crit_edge970
    i16 204, label %lor.end.sw.bb_crit_edge971
    i16 324, label %lor.end.sw.bb_crit_edge972
    i16 326, label %lor.end.sw.bb_crit_edge973
    i16 327, label %lor.end.sw.bb_crit_edge974
    i16 328, label %lor.end.sw.bb_crit_edge975
    i16 152, label %lor.end.sw.bb_crit_edge976
    i16 153, label %lor.end.sw.bb_crit_edge977
  ]

lor.end.sw.bb_crit_edge977:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge976:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge975:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge974:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge973:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge972:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge971:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge970:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge969:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge968:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge967:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge966:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge965:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge964:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge963:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge962:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge961:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge960:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge959:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge958:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge957:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge956:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge955:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge954:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge953:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge952:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge951:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge950:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge949:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge948:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge947:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge946:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge945:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge944:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge943:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge942:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge941:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge940:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge939:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge938:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge937:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge936:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge935:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge934:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge933:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge932:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge931:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.bb_crit_edge:                          ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

lor.end.sw.epilog_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %lor.end.sw.bb_crit_edge, %lor.end.sw.bb_crit_edge931, %lor.end.sw.bb_crit_edge932, %lor.end.sw.bb_crit_edge933, %lor.end.sw.bb_crit_edge934, %lor.end.sw.bb_crit_edge935, %lor.end.sw.bb_crit_edge936, %lor.end.sw.bb_crit_edge937, %lor.end.sw.bb_crit_edge938, %lor.end.sw.bb_crit_edge939, %lor.end.sw.bb_crit_edge940, %lor.end.sw.bb_crit_edge941, %lor.end.sw.bb_crit_edge942, %lor.end.sw.bb_crit_edge943, %lor.end.sw.bb_crit_edge944, %lor.end.sw.bb_crit_edge945, %lor.end.sw.bb_crit_edge946, %lor.end.sw.bb_crit_edge947, %lor.end.sw.bb_crit_edge948, %lor.end.sw.bb_crit_edge949, %lor.end.sw.bb_crit_edge950, %lor.end.sw.bb_crit_edge951, %lor.end.sw.bb_crit_edge952, %lor.end.sw.bb_crit_edge953, %lor.end.sw.bb_crit_edge954, %lor.end.sw.bb_crit_edge955, %lor.end.sw.bb_crit_edge956, %lor.end.sw.bb_crit_edge957, %lor.end.sw.bb_crit_edge958, %lor.end.sw.bb_crit_edge959, %lor.end.sw.bb_crit_edge960, %lor.end.sw.bb_crit_edge961, %lor.end.sw.bb_crit_edge962, %lor.end.sw.bb_crit_edge963, %lor.end.sw.bb_crit_edge964, %lor.end.sw.bb_crit_edge965, %lor.end.sw.bb_crit_edge966, %lor.end.sw.bb_crit_edge967, %lor.end.sw.bb_crit_edge968, %lor.end.sw.bb_crit_edge969, %lor.end.sw.bb_crit_edge970, %lor.end.sw.bb_crit_edge971, %lor.end.sw.bb_crit_edge972, %lor.end.sw.bb_crit_edge973, %lor.end.sw.bb_crit_edge974, %lor.end.sw.bb_crit_edge975, %lor.end.sw.bb_crit_edge976, %lor.end.sw.bb_crit_edge977
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %lor.end.sw.epilog_crit_edge
  %tobool426.not = phi i1 [ true, %lor.end.sw.epilog_crit_edge ], [ false, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.fr)
  %cmp82 = icmp eq i32 %.fr, 4
  br i1 %cmp82, label %if.then84, label %if.else

if.then84:                                        ; preds = %sw.epilog
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #5, !srcloc !133
  %and.i = and i32 %42, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %43 = ptrtoint ptr %PFB to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %PFB, align 8
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #5
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #7
  %46 = lshr i32 %45, 1
  %mul5.i = and i32 %46, 30720
  %add.i = add nuw nsw i32 %mul5.i, 2048
  br label %nv4GetConfig.exit

if.else.i:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #7
  %and9.i = and i32 %45, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.NVCommonSetup, i32 0, i32 %and9.i
  %47 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %47)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %nv4GetConfig.exit

nv4GetConfig.exit:                                ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ %add.i, %if.then.i ], [ %switch.load, %if.else.i ]
  %RamAmountKBytes10.i = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 20
  %48 = ptrtoint ptr %RamAmountKBytes10.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.sink.i, ptr %RamAmountKBytes10.i, align 4
  %49 = ptrtoint ptr %PEXTDEV to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %PEXTDEV, align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #5, !srcloc !133
  %and19.i = and i32 %51, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %cond.i = select i1 %tobool20.not.i, i32 13500, i32 14318
  %CrystalFreqKHz.i = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 19
  %52 = ptrtoint ptr %CrystalFreqKHz.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %cond.i, ptr %CrystalFreqKHz.i, align 8
  %53 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %PRAMIN, align 8
  %arrayidx.i = getelementptr i32, ptr %54, i32 7680
  %CURSOR.i = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 69
  %55 = ptrtoint ptr %CURSOR.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %arrayidx.i, ptr %CURSOR.i, align 8
  %MinVClockFreqKHz.i = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 17
  %56 = ptrtoint ptr %MinVClockFreqKHz.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 12000, ptr %MinVClockFreqKHz.i, align 8
  br label %if.end85

if.else:                                          ; preds = %sw.epilog
  %and.i831 = and i32 %39, 4080
  %add.ptr.i = getelementptr i8, ptr %11, i32 4
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !133
  %and1.i = and i32 %57, 16777217
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i832 = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i832, label %if.then.i833, label %if.else.if.end.i_crit_edge

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i833:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %PMC, align 4
  %add.ptr3.i = getelementptr i8, ptr %59, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 16777217) #5, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  tail call void @arm_heavy_mb() #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i833, %if.else.if.end.i_crit_edge
  %pci_dev.i = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 6
  %60 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pci_dev.i, align 4
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bus.i, align 8
  %domain_nr.i.i = getelementptr inbounds %struct.pci_bus, ptr %63, i32 0, i32 16
  %64 = ptrtoint ptr %domain_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %domain_nr.i.i, align 8
  %call5.i = tail call ptr @pci_get_domain_bus_and_slot(i32 noundef %65, i32 noundef 0, i32 noundef 1) #5
  %66 = ptrtoint ptr %Chipset to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %Chipset, align 8
  %trunc.i = trunc i32 %67 to i16
  %68 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.72)
  switch i16 %trunc.i, label %if.else22.i [
    i16 416, label %if.then8.i
    i16 496, label %if.then14.i
  ]

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %amt.i) #5
  %69 = ptrtoint ptr %amt.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %amt.i, align 4, !annotation !136
  %call9.i = call i32 @pci_read_config_dword(ptr noundef %call5.i, i32 noundef 124, ptr noundef nonnull %amt.i) #5
  %70 = ptrtoint ptr %amt.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %amt.i, align 4
  %72 = shl i32 %71, 4
  %add.i834 = and i32 %72, 31744
  %mul.i = add nuw nsw i32 %add.i834, 1024
  %RamAmountKBytes.i = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 20
  %73 = ptrtoint ptr %RamAmountKBytes.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %mul.i, ptr %RamAmountKBytes.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %amt.i) #5
  br label %if.end29.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %amt15.i) #5
  %74 = ptrtoint ptr %amt15.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -1, ptr %amt15.i, align 4, !annotation !136
  %call16.i = call i32 @pci_read_config_dword(ptr noundef %call5.i, i32 noundef 132, ptr noundef nonnull %amt15.i) #5
  %75 = ptrtoint ptr %amt15.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %amt15.i, align 4
  %77 = shl i32 %76, 6
  %add19.i = and i32 %77, 130048
  %mul20.i = add nuw nsw i32 %add19.i, 1024
  %RamAmountKBytes21.i = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 20
  %78 = ptrtoint ptr %RamAmountKBytes21.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %mul20.i, ptr %RamAmountKBytes21.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %amt15.i) #5
  br label %if.end29.i

if.else22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %79 = ptrtoint ptr %PFB to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %PFB, align 8
  %add.ptr23.i = getelementptr i8, ptr %80, i32 524
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #5, !srcloc !133
  %and25.i = lshr i32 %81, 10
  %shr26.i = and i32 %and25.i, 4193280
  %RamAmountKBytes27.i = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 20
  %82 = ptrtoint ptr %RamAmountKBytes27.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %shr26.i, ptr %RamAmountKBytes27.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else22.i, %if.then14.i, %if.then8.i
  call void @pci_dev_put(ptr noundef %call5.i) #5
  %83 = ptrtoint ptr %PEXTDEV to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %PEXTDEV, align 4
  %85 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #5, !srcloc !133
  %and32.i = and i32 %85, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  %cond.i837 = select i1 %tobool33.not.i, i32 13500, i32 14318
  %CrystalFreqKHz.i838 = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 19
  %86 = ptrtoint ptr %CrystalFreqKHz.i838 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %cond.i837, ptr %CrystalFreqKHz.i838, align 8
  %87 = ptrtoint ptr %twoHeads to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %twoHeads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool34.not.i = icmp eq i32 %88, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %and.i831)
  %cmp35.not.i = icmp eq i32 %and.i831, 272
  %or.cond.i = select i1 %tobool34.not.i, i1 true, i1 %cmp35.not.i
  br i1 %or.cond.i, label %if.end29.i.nv10GetConfig.exit_crit_edge, label %if.then36.i

if.end29.i.nv10GetConfig.exit_crit_edge:          ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv10GetConfig.exit

if.then36.i:                                      ; preds = %if.end29.i
  %89 = ptrtoint ptr %PEXTDEV to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %PEXTDEV, align 4
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #5, !srcloc !133
  %and40.i = and i32 %91, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %if.then36.i.nv10GetConfig.exit_crit_edge, label %if.then42.i

if.then36.i.nv10GetConfig.exit_crit_edge:         ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv10GetConfig.exit

if.then42.i:                                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #7
  %92 = ptrtoint ptr %CrystalFreqKHz.i838 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 27000, ptr %CrystalFreqKHz.i838, align 8
  br label %nv10GetConfig.exit

nv10GetConfig.exit:                               ; preds = %if.then42.i, %if.then36.i.nv10GetConfig.exit_crit_edge, %if.end29.i.nv10GetConfig.exit_crit_edge
  %CURSOR.i839 = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 69
  %93 = ptrtoint ptr %CURSOR.i839 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %CURSOR.i839, align 8
  %MinVClockFreqKHz.i840 = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 17
  %94 = ptrtoint ptr %MinVClockFreqKHz.i840 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 12000, ptr %MinVClockFreqKHz.i840, align 8
  %95 = ptrtoint ptr %twoStagePLL to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %twoStagePLL, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool46.not.i = icmp eq i32 %96, 0
  %cond47.i = select i1 %tobool46.not.i, i32 350000, i32 400000
  br label %if.end85

if.end85:                                         ; preds = %nv10GetConfig.exit, %nv4GetConfig.exit
  %cond47.i.sink = phi i32 [ %cond47.i, %nv10GetConfig.exit ], [ 350000, %nv4GetConfig.exit ]
  %MaxVClockFreqKHz.i841 = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 18
  %97 = ptrtoint ptr %MaxVClockFreqKHz.i841 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %cond47.i.sink, ptr %MaxVClockFreqKHz.i841, align 4
  %98 = ptrtoint ptr %PCIO0 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %PCIO0, align 4
  %100 = ptrtoint ptr %PCRTC0 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %PCRTC0, align 4
  %102 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %PRAMDAC0, align 4
  %104 = ptrtoint ptr %PDIO0 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %PDIO0, align 8
  %106 = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 71
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %99, ptr %106, align 8
  %108 = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 59
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %101, ptr %108, align 8
  %110 = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 75
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %103, ptr %110, align 8
  %112 = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 74
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %105, ptr %112, align 4
  call void @NVLockUnlock(ptr noundef %1, i32 noundef 0) #5
  %114 = ptrtoint ptr %PVIO to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %PVIO, align 4
  %add.ptr.i844 = getelementptr i8, ptr %115, i32 972
  %116 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i844) #5, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !127
  %117 = and i8 %116, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool89.not = icmp eq i8 %117, 0
  %cond = select i1 %tobool89.not, i32 944, i32 976
  %IOBase = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 21
  %118 = ptrtoint ptr %IOBase to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %cond, ptr %IOBase, align 8
  %Television90 = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 28
  %119 = ptrtoint ptr %Television90 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %Television90, align 8
  call void @nvidia_create_i2c_busses(ptr noundef %1) #5
  %120 = ptrtoint ptr %twoHeads to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %twoHeads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool92.not = icmp eq i32 %121, 0
  br i1 %tobool92.not, label %if.then93, label %if.else174

if.then93:                                        ; preds = %if.end85
  %CRTCnumber = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 29
  %122 = ptrtoint ptr %CRTCnumber to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %CRTCnumber, align 4
  %call94 = call i32 @nvidia_probe_i2c_connector(ptr noundef %info, i32 noundef 1, ptr noundef nonnull %edidA) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.then93.if.end98_crit_edge, label %if.then96

if.then93.if.end98_crit_edge:                     ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98

if.then96:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #7
  %call97 = call i32 @nvidia_probe_of_connector(ptr noundef %info, i32 noundef 1, ptr noundef nonnull %edidA) #5
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %if.then93.if.end98_crit_edge
  %123 = ptrtoint ptr %edidA to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %edidA, align 4
  %tobool99.not = icmp eq ptr %124, null
  br i1 %tobool99.not, label %if.end98.do.body116_crit_edge, label %land.lhs.true100

if.end98.do.body116_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body116

land.lhs.true100:                                 ; preds = %if.end98
  %call101 = call i32 @fb_parse_edid(ptr noundef nonnull %124, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %do.end, label %land.lhs.true100.do.body116_crit_edge

land.lhs.true100.do.body116_crit_edge:            ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body116

do.end:                                           ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #7
  %call104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  %125 = ptrtoint ptr %edidA to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %edidA, align 4
  call void @fb_edid_to_monspecs(ptr noundef %126, ptr noundef nonnull %call7.i.i829) #5
  %input = getelementptr inbounds %struct.fb_monspecs, ptr %call7.i.i829, i32 0, i32 15
  %127 = ptrtoint ptr %input to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %input, align 8
  %129 = and i16 %128, 1
  %130 = zext i16 %129 to i32
  %131 = ptrtoint ptr %Chipset to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %Chipset, align 8
  %and110 = and i32 %132, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %and110)
  %cmp111 = icmp ult i32 %and110, 33
  %spec.store.select = select i1 %cmp111, i32 0, i32 %130
  br label %if.end157

do.body116:                                       ; preds = %land.lhs.true100.do.body116_crit_edge, %if.end98.do.body116_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  call void @arm_heavy_mb() #5
  %133 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %106, align 8
  %add.ptr119 = getelementptr i8, ptr %134, i32 980
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr119, i8 40) #5, !srcloc !107
  %135 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %106, align 8
  %add.ptr121 = getelementptr i8, ptr %136, i32 981
  %137 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr121) #5, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %137)
  %tobool127.not = icmp sgt i8 %137, -1
  br i1 %tobool127.not, label %do.body116._crit_edge, label %do.body129

do.body116._crit_edge:                            ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #7
  br label %144

do.body129:                                       ; preds = %do.body116
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  call void @arm_heavy_mb() #5
  %138 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %106, align 8
  %add.ptr133 = getelementptr i8, ptr %139, i32 980
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr133, i8 51) #5, !srcloc !107
  %140 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %106, align 8
  %add.ptr137 = getelementptr i8, ptr %141, i32 981
  %142 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr137) #5, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  %143 = and i8 %142, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool143.not = icmp eq i8 %143, 0
  br i1 %tobool143.not, label %do.body129.do.end150_crit_edge, label %do.body129._crit_edge

do.body129._crit_edge:                            ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #7
  br label %144

do.body129.do.end150_crit_edge:                   ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end150

144:                                              ; preds = %do.body129._crit_edge, %do.body116._crit_edge
  %FlatPanel.0.ph = phi i32 [ 0, %do.body116._crit_edge ], [ 1, %do.body129._crit_edge ]
  br label %do.end150

do.end150:                                        ; preds = %144, %do.body129.do.end150_crit_edge
  %FlatPanel.0876 = phi i32 [ %FlatPanel.0.ph, %144 ], [ 1, %do.body129.do.end150_crit_edge ]
  %Television.1874 = phi i32 [ 0, %144 ], [ 1, %do.body129.do.end150_crit_edge ]
  %145 = phi ptr [ @.str.7, %144 ], [ @.str.6, %do.body129.do.end150_crit_edge ]
  %cond155 = select i1 %tobool127.not, ptr @.str.8, ptr %145
  %call156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %cond155) #9
  br label %if.end157

if.end157:                                        ; preds = %do.end150, %do.end
  %Television.2 = phi i32 [ %Television.1874, %do.end150 ], [ 0, %do.end ]
  %FlatPanel.1 = phi i32 [ %FlatPanel.0876, %do.end150 ], [ %spec.store.select, %do.end ]
  %monA.0 = phi ptr [ null, %do.end150 ], [ %call7.i.i829, %do.end ]
  %FlatPanel158 = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 26
  %146 = ptrtoint ptr %FlatPanel158 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %FlatPanel158, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %147)
  %cmp159 = icmp eq i32 %147, -1
  br i1 %cmp159, label %if.then161, label %do.end167

if.then161:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #7
  %148 = ptrtoint ptr %FlatPanel158 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %FlatPanel.1, ptr %FlatPanel158, align 8
  %149 = ptrtoint ptr %Television90 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %Television.2, ptr %Television90, align 8
  br label %do.end559

do.end167:                                        ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool170.not = icmp eq i32 %147, 0
  %cond171 = select i1 %tobool170.not, ptr @.str.8, ptr @.str.7
  %call172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull %cond171) #9
  br label %do.end559

if.else174:                                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %conv)
  %cmp177.not = icmp eq i16 %conv, 272
  br i1 %cmp177.not, label %if.else174.do.body200_crit_edge, label %if.then179

if.else174.do.body200_crit_edge:                  ; preds = %if.else174
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body200

if.then179:                                       ; preds = %if.else174
  call void @__sanitizer_cov_trace_pc() #7
  %150 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr181 = getelementptr i8, ptr %151, i32 1324
  %152 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr181) #5, !srcloc !133
  %and183 = lshr i32 %152, 8
  %and183.lobit = and i32 %and183, 1
  %153 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr189 = getelementptr i8, ptr %154, i32 9516
  %155 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr189) #5, !srcloc !133
  %and191 = lshr i32 %155, 8
  %and191.lobit = and i32 %and191, 1
  %call196 = call fastcc i32 @NVIsConnected(ptr noundef %1, i32 noundef 0)
  %call197 = call fastcc i32 @NVIsConnected(ptr noundef %1, i32 noundef 1)
  br label %do.body200

do.body200:                                       ; preds = %if.then179, %if.else174.do.body200_crit_edge
  %analog_on_B.0 = phi i32 [ %call197, %if.then179 ], [ 0, %if.else174.do.body200_crit_edge ]
  %analog_on_A.0 = phi i32 [ %call196, %if.then179 ], [ 0, %if.else174.do.body200_crit_edge ]
  %outputBfromCRTC.1 = phi i32 [ %and191.lobit, %if.then179 ], [ 1, %if.else174.do.body200_crit_edge ]
  %outputAfromCRTC.1 = phi i32 [ %and183.lobit, %if.then179 ], [ 0, %if.else174.do.body200_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  call void @arm_heavy_mb() #5
  %156 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %106, align 8
  %add.ptr204 = getelementptr i8, ptr %157, i32 980
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr204, i8 68) #5, !srcloc !107
  %158 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %106, align 8
  %add.ptr208 = getelementptr i8, ptr %159, i32 981
  %160 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr208) #5, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  call void @arm_heavy_mb() #5
  %161 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %106, align 8
  %add.ptr216 = getelementptr i8, ptr %162, i32 981
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr216, i8 3) #5, !srcloc !107
  %163 = ptrtoint ptr %PCIO0 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %PCIO0, align 4
  %add.ptr.i846 = getelementptr i8, ptr %164, i32 8192
  %165 = ptrtoint ptr %PCRTC0 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %PCRTC0, align 4
  %add.ptr1.i = getelementptr i32, ptr %166, i32 2048
  %167 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr2.i = getelementptr i32, ptr %168, i32 2048
  %169 = ptrtoint ptr %PDIO0 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %PDIO0, align 8
  %add.ptr3.i847 = getelementptr i8, ptr %170, i32 8192
  %171 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %add.ptr.i846, ptr %106, align 8
  %172 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %add.ptr1.i, ptr %108, align 8
  %173 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %add.ptr2.i, ptr %110, align 8
  %174 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %add.ptr3.i847, ptr %112, align 4
  call void @NVLockUnlock(ptr noundef %1, i32 noundef 0) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  call void @arm_heavy_mb() #5
  %175 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %106, align 8
  %add.ptr221 = getelementptr i8, ptr %176, i32 980
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr221, i8 40) #5, !srcloc !107
  %177 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %106, align 8
  %add.ptr225 = getelementptr i8, ptr %178, i32 981
  %179 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr225) #5, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !145
  %180 = and i8 %179, -128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool232.not = icmp eq i8 %180, 0
  br i1 %tobool232.not, label %do.body200.do.body250_crit_edge, label %do.body234

do.body200.do.body250_crit_edge:                  ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body250

do.body234:                                       ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !146
  call void @arm_heavy_mb() #5
  %181 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %106, align 8
  %add.ptr238 = getelementptr i8, ptr %182, i32 980
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr238, i8 51) #5, !srcloc !107
  %183 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %106, align 8
  %add.ptr242 = getelementptr i8, ptr %184, i32 981
  %185 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr242) #5, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !147
  %186 = and i8 %185, 1
  %187 = xor i8 %186, 1
  %188 = zext i8 %187 to i32
  br label %do.body250

do.body250:                                       ; preds = %do.body234, %do.body200.do.body250_crit_edge
  %tvB.0 = phi i32 [ %188, %do.body234 ], [ 0, %do.body200.do.body250_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !148
  call void @arm_heavy_mb() #5
  %189 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %106, align 8
  %add.ptr254 = getelementptr i8, ptr %190, i32 980
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr254, i8 68) #5, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !149
  call void @arm_heavy_mb() #5
  %191 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %106, align 8
  %add.ptr259 = getelementptr i8, ptr %192, i32 981
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr259, i8 0) #5, !srcloc !107
  %193 = ptrtoint ptr %PCIO0 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %PCIO0, align 4
  %195 = ptrtoint ptr %PCRTC0 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %PCRTC0, align 4
  %197 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %PRAMDAC0, align 4
  %199 = ptrtoint ptr %PDIO0 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %PDIO0, align 8
  %201 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %194, ptr %106, align 8
  %202 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %196, ptr %108, align 8
  %203 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %198, ptr %110, align 8
  %204 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %200, ptr %112, align 4
  call void @NVLockUnlock(ptr noundef %1, i32 noundef 0) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  call void @arm_heavy_mb() #5
  %205 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %106, align 8
  %add.ptr264 = getelementptr i8, ptr %206, i32 980
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr264, i8 40) #5, !srcloc !107
  %207 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %106, align 8
  %add.ptr268 = getelementptr i8, ptr %208, i32 981
  %209 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr268) #5, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !151
  %210 = and i8 %209, -128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %210)
  %tobool275.not = icmp eq i8 %210, 0
  br i1 %tobool275.not, label %do.body250.if.end294_crit_edge, label %do.body277

do.body250.if.end294_crit_edge:                   ; preds = %do.body250
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end294

do.body277:                                       ; preds = %do.body250
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  call void @arm_heavy_mb() #5
  %211 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %106, align 8
  %add.ptr281 = getelementptr i8, ptr %212, i32 980
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr281, i8 51) #5, !srcloc !107
  %213 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %106, align 8
  %add.ptr285 = getelementptr i8, ptr %214, i32 981
  %215 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr285) #5, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !153
  %216 = and i8 %215, 1
  %217 = xor i8 %216, 1
  %218 = zext i8 %217 to i32
  br label %if.end294

if.end294:                                        ; preds = %do.body277, %do.body250.if.end294_crit_edge
  %tvA.0 = phi i32 [ %218, %do.body277 ], [ 0, %do.body250.if.end294_crit_edge ]
  %219 = ptrtoint ptr %PCRTC0 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %PCRTC0, align 4
  %add.ptr296 = getelementptr i8, ptr %220, i32 2144
  %221 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr296) #5, !srcloc !133
  %or = or i32 %221, 16
  %222 = ptrtoint ptr %PCRTC0 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %PCRTC0, align 4
  %add.ptr299 = getelementptr i8, ptr %223, i32 2144
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr299, i32 %or) #5, !srcloc !134
  %call300 = call i32 @nvidia_probe_i2c_connector(ptr noundef %info, i32 noundef 1, ptr noundef nonnull %edidA) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call300)
  %tobool301.not = icmp eq i32 %call300, 0
  br i1 %tobool301.not, label %if.end294.if.end304_crit_edge, label %if.then302

if.end294.if.end304_crit_edge:                    ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end304

if.then302:                                       ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #7
  %call303 = call i32 @nvidia_probe_of_connector(ptr noundef %info, i32 noundef 1, ptr noundef nonnull %edidA) #5
  br label %if.end304

if.end304:                                        ; preds = %if.then302, %if.end294.if.end304_crit_edge
  %224 = ptrtoint ptr %edidA to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %edidA, align 4
  %tobool305.not = icmp eq ptr %225, null
  br i1 %tobool305.not, label %if.end304.if.end315_crit_edge, label %land.lhs.true306

if.end304.if.end315_crit_edge:                    ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end315

land.lhs.true306:                                 ; preds = %if.end304
  %call307 = call i32 @fb_parse_edid(ptr noundef nonnull %225, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call307)
  %tobool308.not = icmp eq i32 %call307, 0
  br i1 %tobool308.not, label %do.end312, label %land.lhs.true306.if.end315_crit_edge

land.lhs.true306.if.end315_crit_edge:             ; preds = %land.lhs.true306
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end315

do.end312:                                        ; preds = %land.lhs.true306
  call void @__sanitizer_cov_trace_pc() #7
  %call314 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  %226 = ptrtoint ptr %edidA to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %edidA, align 4
  call void @fb_edid_to_monspecs(ptr noundef %227, ptr noundef nonnull %call7.i.i829) #5
  br label %if.end315

if.end315:                                        ; preds = %do.end312, %land.lhs.true306.if.end315_crit_edge, %if.end304.if.end315_crit_edge
  %monA.1 = phi ptr [ null, %land.lhs.true306.if.end315_crit_edge ], [ %call7.i.i829, %do.end312 ], [ null, %if.end304.if.end315_crit_edge ]
  %call316 = call i32 @nvidia_probe_i2c_connector(ptr noundef %info, i32 noundef 2, ptr noundef nonnull %edidB) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call316)
  %tobool317.not = icmp eq i32 %call316, 0
  br i1 %tobool317.not, label %if.end315.if.end320_crit_edge, label %if.then318

if.end315.if.end320_crit_edge:                    ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end320

if.then318:                                       ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #7
  %call319 = call i32 @nvidia_probe_of_connector(ptr noundef %info, i32 noundef 2, ptr noundef nonnull %edidB) #5
  br label %if.end320

if.end320:                                        ; preds = %if.then318, %if.end315.if.end320_crit_edge
  %228 = ptrtoint ptr %edidB to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %edidB, align 4
  %tobool321.not = icmp eq ptr %229, null
  br i1 %tobool321.not, label %if.end320.if.end331_crit_edge, label %land.lhs.true322

if.end320.if.end331_crit_edge:                    ; preds = %if.end320
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end331

land.lhs.true322:                                 ; preds = %if.end320
  %call323 = call i32 @fb_parse_edid(ptr noundef nonnull %229, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call323)
  %tobool324.not = icmp eq i32 %call323, 0
  br i1 %tobool324.not, label %do.end328, label %land.lhs.true322.if.end331_crit_edge

land.lhs.true322.if.end331_crit_edge:             ; preds = %land.lhs.true322
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end331

do.end328:                                        ; preds = %land.lhs.true322
  call void @__sanitizer_cov_trace_pc() #7
  %call330 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #9
  %230 = ptrtoint ptr %edidB to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %edidB, align 4
  call void @fb_edid_to_monspecs(ptr noundef %231, ptr noundef nonnull %call7.i.i830) #5
  br label %if.end331

if.end331:                                        ; preds = %do.end328, %land.lhs.true322.if.end331_crit_edge, %if.end320.if.end331_crit_edge
  %monB.0 = phi ptr [ null, %land.lhs.true322.if.end331_crit_edge ], [ %call7.i.i830, %do.end328 ], [ null, %if.end320.if.end331_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %210)
  %tobool333.not = icmp ne i8 %210, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tvA.0)
  %tobool335.not = icmp eq i32 %tvA.0, 0
  %or.cond826 = select i1 %tobool333.not, i1 %tobool335.not, i1 false
  br i1 %or.cond826, label %if.then336, label %if.else342

if.then336:                                       ; preds = %if.end331
  call void @__sanitizer_cov_trace_pc() #7
  %call341 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #9
  br label %if.end410

if.else342:                                       ; preds = %if.end331
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool344.not = icmp ne i8 %180, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tvB.0)
  %tobool346.not = icmp eq i32 %tvB.0, 0
  %or.cond827 = select i1 %tobool344.not, i1 %tobool346.not, i1 false
  br i1 %or.cond827, label %if.then347, label %if.else353

if.then347:                                       ; preds = %if.else342
  call void @__sanitizer_cov_trace_pc() #7
  %call352 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #9
  br label %if.end410

if.else353:                                       ; preds = %if.else342
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %analog_on_A.0)
  %tobool354.not = icmp eq i32 %analog_on_A.0, 0
  br i1 %tobool354.not, label %if.else362, label %if.then355

if.then355:                                       ; preds = %if.else353
  call void @__sanitizer_cov_trace_pc() #7
  %call361 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %outputAfromCRTC.1) #9
  br label %if.end410

if.else362:                                       ; preds = %if.else353
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %analog_on_B.0)
  %tobool363.not = icmp eq i32 %analog_on_B.0, 0
  br i1 %tobool363.not, label %if.else371, label %if.then364

if.then364:                                       ; preds = %if.else362
  call void @__sanitizer_cov_trace_pc() #7
  %call370 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %outputBfromCRTC.1) #9
  br label %if.end410

if.else371:                                       ; preds = %if.else362
  br i1 %tobool275.not, label %if.else379, label %if.then373

if.then373:                                       ; preds = %if.else371
  call void @__sanitizer_cov_trace_pc() #7
  %call378 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #9
  br label %if.end410

if.else379:                                       ; preds = %if.else371
  br i1 %tobool232.not, label %if.else387, label %if.then381

if.then381:                                       ; preds = %if.else379
  call void @__sanitizer_cov_trace_pc() #7
  %call386 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #9
  br label %if.end410

if.else387:                                       ; preds = %if.else379
  %tobool388.not = icmp eq ptr %monA.1, null
  br i1 %tobool388.not, label %if.else395, label %if.then389

if.then389:                                       ; preds = %if.else387
  call void @__sanitizer_cov_trace_pc() #7
  %input390 = getelementptr inbounds %struct.fb_monspecs, ptr %monA.1, i32 0, i32 15
  %232 = ptrtoint ptr %input390 to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %input390, align 8
  %234 = and i16 %233, 1
  br label %if.end410

if.else395:                                       ; preds = %if.else387
  %tobool396.not = icmp eq ptr %monB.0, null
  br i1 %tobool396.not, label %if.end410.thread, label %if.then397

if.then397:                                       ; preds = %if.else395
  call void @__sanitizer_cov_trace_pc() #7
  %input398 = getelementptr inbounds %struct.fb_monspecs, ptr %monB.0, i32 0, i32 15
  %235 = ptrtoint ptr %input398 to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %input398, align 8
  %237 = and i16 %236, 1
  br label %if.end410

if.end410:                                        ; preds = %if.then397, %if.then389, %if.then381, %if.then373, %if.then364, %if.then355, %if.then347, %if.then336
  %CRTCnumber175.0 = phi i32 [ %outputAfromCRTC.1, %if.then355 ], [ %outputBfromCRTC.1, %if.then364 ], [ 0, %if.then373 ], [ 1, %if.then381 ], [ -1, %if.then389 ], [ -1, %if.then397 ], [ 1, %if.then347 ], [ 0, %if.then336 ]
  %Television.3 = phi i32 [ 0, %if.then355 ], [ 0, %if.then364 ], [ 1, %if.then373 ], [ 1, %if.then381 ], [ 0, %if.then389 ], [ 0, %if.then397 ], [ 0, %if.then347 ], [ 0, %if.then336 ]
  %FlatPanel.2.shrunk = phi i16 [ 0, %if.then355 ], [ 0, %if.then364 ], [ 1, %if.then373 ], [ 1, %if.then381 ], [ %234, %if.then389 ], [ %237, %if.then397 ], [ 1, %if.then347 ], [ 1, %if.then336 ]
  %FlatPanel411 = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 26
  %238 = ptrtoint ptr %FlatPanel411 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %FlatPanel411, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %239)
  %cmp412 = icmp eq i32 %239, -1
  br i1 %cmp412, label %if.then417, label %if.end410.do.end446_crit_edge

if.end410.do.end446_crit_edge:                    ; preds = %if.end410
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end446

if.end410.thread:                                 ; preds = %if.else395
  %FlatPanel411881 = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 26
  %240 = ptrtoint ptr %FlatPanel411881 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %FlatPanel411881, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %241)
  %cmp412882 = icmp eq i32 %241, -1
  br i1 %cmp412882, label %do.end423, label %if.end410.thread.do.end446_crit_edge

if.end410.thread.do.end446_crit_edge:             ; preds = %if.end410.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end446

if.then417:                                       ; preds = %if.end410
  call void @__sanitizer_cov_trace_pc() #7
  %FlatPanel.2 = zext i16 %FlatPanel.2.shrunk to i32
  %242 = ptrtoint ptr %FlatPanel411 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %FlatPanel.2, ptr %FlatPanel411, align 8
  %243 = ptrtoint ptr %Television90 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %Television.3, ptr %Television90, align 8
  br label %if.end452

do.end423:                                        ; preds = %if.end410.thread
  %call425 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #9
  br i1 %tobool426.not, label %do.end437, label %do.end430

do.end430:                                        ; preds = %do.end423
  call void @__sanitizer_cov_trace_pc() #7
  %call432 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #9
  %244 = ptrtoint ptr %FlatPanel411881 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 1, ptr %FlatPanel411881, align 8
  br label %if.end452

do.end437:                                        ; preds = %do.end423
  call void @__sanitizer_cov_trace_pc() #7
  %call439 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #9
  %245 = ptrtoint ptr %FlatPanel411881 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 0, ptr %FlatPanel411881, align 8
  br label %if.end452

do.end446:                                        ; preds = %if.end410.thread.do.end446_crit_edge, %if.end410.do.end446_crit_edge
  %246 = phi i32 [ %241, %if.end410.thread.do.end446_crit_edge ], [ %239, %if.end410.do.end446_crit_edge ]
  %FlatPanel411890 = phi ptr [ %FlatPanel411881, %if.end410.thread.do.end446_crit_edge ], [ %FlatPanel411, %if.end410.do.end446_crit_edge ]
  %CRTCnumber175.0884 = phi i32 [ -1, %if.end410.thread.do.end446_crit_edge ], [ %CRTCnumber175.0, %if.end410.do.end446_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %246)
  %tobool449.not = icmp eq i32 %246, 0
  %cond450 = select i1 %tobool449.not, ptr @.str.8, ptr @.str.7
  %call451 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull %cond450) #9
  br label %if.end452

if.end452:                                        ; preds = %do.end446, %do.end437, %do.end430, %if.then417
  %FlatPanel411889 = phi ptr [ %FlatPanel411, %if.then417 ], [ %FlatPanel411881, %do.end437 ], [ %FlatPanel411881, %do.end430 ], [ %FlatPanel411890, %do.end446 ]
  %CRTCnumber175.0883 = phi i32 [ %CRTCnumber175.0, %if.then417 ], [ -1, %do.end437 ], [ -1, %do.end430 ], [ %CRTCnumber175.0884, %do.end446 ]
  %CRTCnumber453 = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 29
  %247 = ptrtoint ptr %CRTCnumber453 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %CRTCnumber453, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %248)
  %cmp454 = icmp eq i32 %248, -1
  br i1 %cmp454, label %if.then456, label %do.end484

if.then456:                                       ; preds = %if.end452
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %CRTCnumber175.0883)
  %cmp457.not = icmp eq i32 %CRTCnumber175.0883, -1
  br i1 %cmp457.not, label %do.end464, label %if.then459

if.then459:                                       ; preds = %if.then456
  call void @__sanitizer_cov_trace_pc() #7
  %249 = ptrtoint ptr %CRTCnumber453 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %CRTCnumber175.0883, ptr %CRTCnumber453, align 4
  br label %if.end488

do.end464:                                        ; preds = %if.then456
  call void @__sanitizer_cov_trace_pc() #7
  %call466 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #9
  %250 = ptrtoint ptr %FlatPanel411889 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %FlatPanel411889, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %251)
  %tobool468.not = icmp ne i32 %251, 0
  %.828 = zext i1 %tobool468.not to i32
  %252 = ptrtoint ptr %CRTCnumber453 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %.828, ptr %CRTCnumber453, align 4
  %call479 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %.828) #9
  br label %if.end488

do.end484:                                        ; preds = %if.end452
  call void @__sanitizer_cov_trace_pc() #7
  %call487 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %248) #9
  br label %if.end488

if.end488:                                        ; preds = %do.end484, %do.end464, %if.then459
  %tobool489.not = icmp eq ptr %monA.1, null
  br i1 %tobool489.not, label %if.end488.if.end513_crit_edge, label %if.then490

if.end488.if.end513_crit_edge:                    ; preds = %if.end488
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end513

if.then490:                                       ; preds = %if.end488
  %input491 = getelementptr inbounds %struct.fb_monspecs, ptr %monA.1, i32 0, i32 15
  %253 = ptrtoint ptr %input491 to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %input491, align 8
  %255 = and i16 %254, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %255)
  %tobool494.not = icmp eq i16 %255, 0
  %256 = ptrtoint ptr %FlatPanel411889 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %FlatPanel411889, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %tobool505.not = icmp eq i32 %257, 0
  br i1 %tobool494.not, label %land.lhs.true503, label %land.lhs.true495

land.lhs.true495:                                 ; preds = %if.then490
  br i1 %tobool505.not, label %land.lhs.true495.if.else510_crit_edge, label %land.lhs.true495.if.then506_crit_edge

land.lhs.true495.if.then506_crit_edge:            ; preds = %land.lhs.true495
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then506

land.lhs.true495.if.else510_crit_edge:            ; preds = %land.lhs.true495
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else510

land.lhs.true503:                                 ; preds = %if.then490
  br i1 %tobool505.not, label %land.lhs.true503.if.then506_crit_edge, label %land.lhs.true503.if.else510_crit_edge

land.lhs.true503.if.else510_crit_edge:            ; preds = %land.lhs.true503
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else510

land.lhs.true503.if.then506_crit_edge:            ; preds = %land.lhs.true503
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then506

if.then506:                                       ; preds = %land.lhs.true503.if.then506_crit_edge, %land.lhs.true495.if.then506_crit_edge
  %tobool507.not = icmp eq ptr %monB.0, null
  br i1 %tobool507.not, label %if.then506.if.end535_crit_edge, label %if.then506.if.end535.sink.split_crit_edge

if.then506.if.end535.sink.split_crit_edge:        ; preds = %if.then506
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end535.sink.split

if.then506.if.end535_crit_edge:                   ; preds = %if.then506
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end535

if.else510:                                       ; preds = %land.lhs.true503.if.else510_crit_edge, %land.lhs.true495.if.else510_crit_edge
  %modedb511 = getelementptr inbounds %struct.fb_monspecs, ptr %monA.1, i32 0, i32 1
  %258 = ptrtoint ptr %modedb511 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %modedb511, align 8
  call void @fb_destroy_modedb(ptr noundef %259) #5
  br label %if.end513

if.end513:                                        ; preds = %if.else510, %if.end488.if.end513_crit_edge
  %tobool514.not = icmp eq ptr %monB.0, null
  br i1 %tobool514.not, label %if.end513.if.end535_crit_edge, label %if.then515

if.end513.if.end535_crit_edge:                    ; preds = %if.end513
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end535

if.then515:                                       ; preds = %if.end513
  %input516 = getelementptr inbounds %struct.fb_monspecs, ptr %monB.0, i32 0, i32 15
  %260 = ptrtoint ptr %input516 to i32
  call void @__asan_load2_noabort(i32 %260)
  %261 = load i16, ptr %input516, align 8
  %262 = and i16 %261, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %262)
  %tobool519.not = icmp eq i16 %262, 0
  %263 = ptrtoint ptr %FlatPanel411889 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %FlatPanel411889, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %264)
  %tobool530.not = icmp eq i32 %264, 0
  br i1 %tobool519.not, label %land.lhs.true528, label %land.lhs.true520

land.lhs.true520:                                 ; preds = %if.then515
  br i1 %tobool530.not, label %land.lhs.true520.if.end535.sink.split_crit_edge, label %land.lhs.true520.if.end535_crit_edge

land.lhs.true520.if.end535_crit_edge:             ; preds = %land.lhs.true520
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end535

land.lhs.true520.if.end535.sink.split_crit_edge:  ; preds = %land.lhs.true520
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end535.sink.split

land.lhs.true528:                                 ; preds = %if.then515
  br i1 %tobool530.not, label %land.lhs.true528.if.end535_crit_edge, label %land.lhs.true528.if.end535.sink.split_crit_edge

land.lhs.true528.if.end535.sink.split_crit_edge:  ; preds = %land.lhs.true528
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end535.sink.split

land.lhs.true528.if.end535_crit_edge:             ; preds = %land.lhs.true528
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end535

if.end535.sink.split:                             ; preds = %land.lhs.true528.if.end535.sink.split_crit_edge, %land.lhs.true520.if.end535.sink.split_crit_edge, %if.then506.if.end535.sink.split_crit_edge
  %monA.3.ph = phi ptr [ %monA.1, %if.then506.if.end535.sink.split_crit_edge ], [ null, %land.lhs.true528.if.end535.sink.split_crit_edge ], [ null, %land.lhs.true520.if.end535.sink.split_crit_edge ]
  %modedb = getelementptr inbounds %struct.fb_monspecs, ptr %monB.0, i32 0, i32 1
  %265 = ptrtoint ptr %modedb to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %modedb, align 8
  call void @fb_destroy_modedb(ptr noundef %266) #5
  br label %if.end535

if.end535:                                        ; preds = %if.end535.sink.split, %land.lhs.true528.if.end535_crit_edge, %land.lhs.true520.if.end535_crit_edge, %if.end513.if.end535_crit_edge, %if.then506.if.end535_crit_edge
  %monA.3 = phi ptr [ null, %if.end513.if.end535_crit_edge ], [ %monB.0, %land.lhs.true528.if.end535_crit_edge ], [ %monB.0, %land.lhs.true520.if.end535_crit_edge ], [ %monA.1, %if.then506.if.end535_crit_edge ], [ %monA.3.ph, %if.end535.sink.split ]
  br i1 %cmp177.not, label %if.then539, label %if.end535.if.end542_crit_edge

if.end535.if.end542_crit_edge:                    ; preds = %if.end535
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end542

if.then539:                                       ; preds = %if.end535
  call void @__sanitizer_cov_trace_pc() #7
  %267 = ptrtoint ptr %CRTCnumber453 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %CRTCnumber453, align 4
  %269 = trunc i32 %268 to i8
  %conv541 = mul i8 %269, 3
  br label %if.end542

if.end542:                                        ; preds = %if.then539, %if.end535.if.end542_crit_edge
  %cr44.0 = phi i8 [ %conv541, %if.then539 ], [ %160, %if.end535.if.end542_crit_edge ]
  %270 = ptrtoint ptr %PCRTC0 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %PCRTC0, align 4
  %add.ptr544 = getelementptr i8, ptr %271, i32 2144
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr544, i32 %221) #5, !srcloc !134
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !154
  call void @arm_heavy_mb() #5
  %272 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %106, align 8
  %add.ptr549 = getelementptr i8, ptr %273, i32 980
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr549, i8 68) #5, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !155
  call void @arm_heavy_mb() #5
  %274 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %106, align 8
  %add.ptr554 = getelementptr i8, ptr %275, i32 981
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr554, i8 %cr44.0) #5, !srcloc !107
  %276 = ptrtoint ptr %CRTCnumber453 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %CRTCnumber453, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %277)
  %tobool.not.i856 = icmp eq i32 %277, 0
  %278 = ptrtoint ptr %PCIO0 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %PCIO0, align 4
  br i1 %tobool.not.i856, label %if.else.i869, label %if.then.i865

if.then.i865:                                     ; preds = %if.end542
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i858 = getelementptr i8, ptr %279, i32 8192
  %280 = ptrtoint ptr %PCRTC0 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %PCRTC0, align 4
  %add.ptr1.i860 = getelementptr i32, ptr %281, i32 2048
  %282 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr2.i862 = getelementptr i32, ptr %283, i32 2048
  %284 = ptrtoint ptr %PDIO0 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %PDIO0, align 8
  %add.ptr3.i864 = getelementptr i8, ptr %285, i32 8192
  br label %NVSelectHeadRegisters.exit

if.else.i869:                                     ; preds = %if.end542
  call void @__sanitizer_cov_trace_pc() #7
  %286 = ptrtoint ptr %PCRTC0 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %PCRTC0, align 4
  %288 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %PRAMDAC0, align 4
  %290 = ptrtoint ptr %PDIO0 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %PDIO0, align 8
  br label %NVSelectHeadRegisters.exit

NVSelectHeadRegisters.exit:                       ; preds = %if.else.i869, %if.then.i865
  %add.ptr.sink.i = phi ptr [ %279, %if.else.i869 ], [ %add.ptr.i858, %if.then.i865 ]
  %add.ptr1.sink.i = phi ptr [ %287, %if.else.i869 ], [ %add.ptr1.i860, %if.then.i865 ]
  %add.ptr2.sink.i = phi ptr [ %289, %if.else.i869 ], [ %add.ptr2.i862, %if.then.i865 ]
  %add.ptr3.sink.i = phi ptr [ %291, %if.else.i869 ], [ %add.ptr3.i864, %if.then.i865 ]
  %292 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr %add.ptr.sink.i, ptr %106, align 8
  %293 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr %add.ptr1.sink.i, ptr %108, align 8
  %294 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr %add.ptr2.sink.i, ptr %110, align 8
  %295 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr %add.ptr3.sink.i, ptr %112, align 4
  br label %do.end559

do.end559:                                        ; preds = %NVSelectHeadRegisters.exit, %do.end167, %if.then161
  %monA.4 = phi ptr [ %monA.3, %NVSelectHeadRegisters.exit ], [ %monA.0, %if.then161 ], [ %monA.0, %do.end167 ]
  %FlatPanel561 = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 26
  %296 = ptrtoint ptr %FlatPanel561 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %FlatPanel561, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %297)
  %tobool562.not = icmp eq i32 %297, 0
  br i1 %tobool562.not, label %do.end559.cond.end568_crit_edge, label %cond.true563

do.end559.cond.end568_crit_edge:                  ; preds = %do.end559
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end568

cond.true563:                                     ; preds = %do.end559
  call void @__sanitizer_cov_trace_pc() #7
  %298 = ptrtoint ptr %Television90 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %Television90, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %tobool565.not = icmp eq i32 %299, 0
  %cond566 = select i1 %tobool565.not, ptr @.str.7, ptr @.str.6
  br label %cond.end568

cond.end568:                                      ; preds = %cond.true563, %do.end559.cond.end568_crit_edge
  %cond569 = phi ptr [ %cond566, %cond.true563 ], [ @.str.8, %do.end559.cond.end568_crit_edge ]
  %CRTCnumber570 = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 29
  %300 = ptrtoint ptr %CRTCnumber570 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %CRTCnumber570, align 4
  %call571 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull %cond569, i32 noundef %301) #9
  %302 = ptrtoint ptr %FlatPanel561 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %FlatPanel561, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %303)
  %tobool573.not = icmp eq i32 %303, 0
  br i1 %tobool573.not, label %cond.end568.if.end595_crit_edge, label %land.lhs.true574

cond.end568.if.end595_crit_edge:                  ; preds = %cond.end568
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end595

land.lhs.true574:                                 ; preds = %cond.end568
  %304 = ptrtoint ptr %Television90 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %Television90, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %305)
  %tobool576.not = icmp eq i32 %305, 0
  br i1 %tobool576.not, label %if.then577, label %land.lhs.true574.if.end595_crit_edge

land.lhs.true574.if.end595_crit_edge:             ; preds = %land.lhs.true574
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end595

if.then577:                                       ; preds = %land.lhs.true574
  call void @__sanitizer_cov_trace_pc() #7
  %306 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %110, align 8
  %add.ptr578 = getelementptr i8, ptr %307, i32 2080
  %308 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr578) #5, !srcloc !133
  %add = add i32 %308, 1
  %fpWidth = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 34
  %309 = ptrtoint ptr %fpWidth to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %add, ptr %fpWidth, align 8
  %310 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %110, align 8
  %add.ptr581 = getelementptr i8, ptr %311, i32 2048
  %312 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr581) #5, !srcloc !133
  %add583 = add i32 %312, 1
  %fpHeight = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 35
  %313 = ptrtoint ptr %fpHeight to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %add583, ptr %fpHeight, align 4
  %314 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %110, align 8
  %add.ptr585 = getelementptr i8, ptr %315, i32 2120
  %316 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr585) #5, !srcloc !133
  %and587 = and i32 %316, 805306419
  %fpSyncs = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 42
  %317 = ptrtoint ptr %fpSyncs to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 %and587, ptr %fpSyncs, align 8
  %318 = ptrtoint ptr %fpWidth to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %fpWidth, align 8
  %320 = ptrtoint ptr %fpHeight to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %fpHeight, align 4
  %call594 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %319, i32 noundef %321) #9
  br label %if.end595

if.end595:                                        ; preds = %if.then577, %land.lhs.true574.if.end595_crit_edge, %cond.end568.if.end595_crit_edge
  %tobool596.not = icmp eq ptr %monA.4, null
  br i1 %tobool596.not, label %if.end595.if.end598_crit_edge, label %if.then597

if.end595.if.end598_crit_edge:                    ; preds = %if.end595
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end598

if.then597:                                       ; preds = %if.end595
  call void @__sanitizer_cov_trace_pc() #7
  %monspecs = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8
  %322 = call ptr @memcpy(ptr %monspecs, ptr %monA.4, i32 140)
  br label %if.end598

if.end598:                                        ; preds = %if.then597, %if.end595.if.end598_crit_edge
  %323 = ptrtoint ptr %FlatPanel561 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %FlatPanel561, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %324)
  %tobool600.not = icmp eq i32 %324, 0
  br i1 %tobool600.not, label %if.end605.thread916, label %lor.lhs.false601

if.end605.thread916:                              ; preds = %if.end598
  call void @__sanitizer_cov_trace_pc() #7
  %FPDither918 = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 27
  %325 = ptrtoint ptr %FPDither918 to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 0, ptr %FPDither918, align 4
  %LVDS919 = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 38
  %326 = ptrtoint ptr %LVDS919 to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 0, ptr %LVDS919, align 8
  br label %if.end630

lor.lhs.false601:                                 ; preds = %if.end598
  %327 = ptrtoint ptr %twoHeads to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %twoHeads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %328)
  %tobool603.not = icmp eq i32 %328, 0
  br i1 %tobool603.not, label %land.lhs.true608, label %land.lhs.true608.thread

land.lhs.true608.thread:                          ; preds = %lor.lhs.false601
  call void @__sanitizer_cov_trace_pc() #7
  %LVDS912 = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 38
  %329 = ptrtoint ptr %LVDS912 to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 0, ptr %LVDS912, align 8
  br label %if.then611

land.lhs.true608:                                 ; preds = %lor.lhs.false601
  %FPDither = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 27
  %330 = ptrtoint ptr %FPDither to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 0, ptr %FPDither, align 4
  %LVDS = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 38
  %331 = ptrtoint ptr %LVDS to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 0, ptr %LVDS, align 8
  %332 = ptrtoint ptr %twoHeads to i32
  call void @__asan_load4_noabort(i32 %332)
  %.pr921 = load i32, ptr %twoHeads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr921)
  %tobool610.not = icmp eq i32 %.pr921, 0
  br i1 %tobool610.not, label %land.lhs.true608.if.end630_crit_edge, label %land.lhs.true608.if.then611_crit_edge

land.lhs.true608.if.then611_crit_edge:            ; preds = %land.lhs.true608
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then611

land.lhs.true608.if.end630_crit_edge:             ; preds = %land.lhs.true608
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end630

if.then611:                                       ; preds = %land.lhs.true608.if.then611_crit_edge, %land.lhs.true608.thread
  %LVDS914924 = phi ptr [ %LVDS912, %land.lhs.true608.thread ], [ %LVDS, %land.lhs.true608.if.then611_crit_edge ]
  %333 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr613 = getelementptr i8, ptr %334, i32 2224
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr613, i32 65540) #5, !srcloc !134
  %335 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr615 = getelementptr i8, ptr %336, i32 2228
  %337 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr615) #5, !srcloc !133
  %and617 = and i32 %337, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and617)
  %tobool618.not = icmp eq i32 %and617, 0
  br i1 %tobool618.not, label %if.then611.do.end624_crit_edge, label %if.then619

if.then611.do.end624_crit_edge:                   ; preds = %if.then611
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end624

if.then619:                                       ; preds = %if.then611
  call void @__sanitizer_cov_trace_pc() #7
  %338 = ptrtoint ptr %LVDS914924 to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 1, ptr %LVDS914924, align 8
  br label %do.end624

do.end624:                                        ; preds = %if.then619, %if.then611.do.end624_crit_edge
  %339 = ptrtoint ptr %LVDS914924 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %LVDS914924, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %340)
  %tobool627.not = icmp eq i32 %340, 0
  %cond628 = select i1 %tobool627.not, ptr @.str.64, ptr @.str.63
  %call629 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull %cond628) #9
  br label %if.end630

if.end630:                                        ; preds = %do.end624, %land.lhs.true608.if.end630_crit_edge, %if.end605.thread916
  %341 = ptrtoint ptr %edidA to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %edidA, align 4
  call void @kfree(ptr noundef %342) #5
  %343 = ptrtoint ptr %edidB to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %edidB, align 4
  call void @kfree(ptr noundef %344) #5
  br label %done

done:                                             ; preds = %if.end630, %entry.done_crit_edge
  %err.0 = phi i32 [ 0, %if.end630 ], [ -12, %entry.done_crit_edge ]
  call void @kfree(ptr noundef %call7.i.i) #5
  call void @kfree(ptr noundef %call7.i.i829) #5
  call void @kfree(ptr noundef %call7.i.i830) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %edidB) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %edidA) #5
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @NVLockUnlock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvidia_create_i2c_busses(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvidia_probe_i2c_connector(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvidia_probe_of_connector(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_parse_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_edid_to_monspecs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @NVIsConnected(ptr nocapture noundef readonly %par, i32 noundef %output) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %PRAMDAC0 = getelementptr inbounds %struct.nvidia_par, ptr %par, i32 0, i32 60
  %0 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %PRAMDAC0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %output)
  %tobool.not = icmp eq i32 %output, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %1, i32 1544
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !133
  %add.ptr1 = getelementptr i32, ptr %1, i32 2048
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dac0_reg608.0 = phi i32 [ %2, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %PRAMDAC.0 = phi ptr [ %add.ptr1, %if.then ], [ %1, %entry.if.end_crit_edge ]
  %add.ptr2 = getelementptr i8, ptr %PRAMDAC.0, i32 1324
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #5, !srcloc !133
  %add.ptr4 = getelementptr i8, ptr %PRAMDAC.0, i32 1544
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #5, !srcloc !133
  %and = and i32 %4, -65537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %and) #5, !srcloc !134
  %and7 = and i32 %3, 65262
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %and7) #5, !srcloc !134
  tail call void @msleep(i32 noundef 1) #5
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #5, !srcloc !133
  %or = or i32 %5, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %or) #5, !srcloc !134
  %6 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr13 = getelementptr i8, ptr %7, i32 1552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 -1811611328) #5, !srcloc !134
  %8 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr15 = getelementptr i8, ptr %9, i32 1544
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #5, !srcloc !133
  %or17 = or i32 %10, 4096
  %11 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr19 = getelementptr i8, ptr %12, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %or17) #5, !srcloc !134
  tail call void @msleep(i32 noundef 1) #5
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #5, !srcloc !133
  %and22 = and i32 %13, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %.str.68..str.65 = select i1 %tobool23.not, ptr @.str.68, ptr @.str.65
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.68..str.65, i32 noundef %output) #9
  br i1 %tobool.not, label %if.end.if.end37_crit_edge, label %if.then34

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then34:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr36 = getelementptr i8, ptr %15, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %dac0_reg608.0) #5, !srcloc !134
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end.if.end37_crit_edge
  %not.tobool23.not = xor i1 %tobool23.not, true
  %cond = zext i1 %not.tobool23.not to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %3) #5, !srcloc !134
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %4) #5, !srcloc !134
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_destroy_modedb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_domain_bus_and_slot(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !13, !15, !16, !17, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/nvidia/nv_setup.c", i32 402, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @NVCommonSetup._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @NVCommonSetup._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/nvidia/nv_setup.c", i32 420, i32 4}
!8 = !{ptr @NVCommonSetup._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @NVCommonSetup._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !7, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/nvidia/nv_setup.c", i32 429, i32 4}
!15 = !{ptr @NVCommonSetup._entry.9, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @NVCommonSetup._entry_ptr.11, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @NVCommonSetup._entry.12, !18, !"_entry", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/nvidia/nv_setup.c", i32 490, i32 4}
!19 = !{ptr @NVCommonSetup._entry_ptr.13, !18, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/video/fbdev/nvidia/nv_setup.c", i32 498, i32 4}
!22 = !{ptr @NVCommonSetup._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @NVCommonSetup._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.18, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/video/fbdev/nvidia/nv_setup.c", i32 506, i32 4}
!26 = !{ptr @NVCommonSetup._entry.17, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @NVCommonSetup._entry_ptr.19, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.21, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/video/fbdev/nvidia/nv_setup.c", i32 511, i32 4}
!30 = !{ptr @NVCommonSetup._entry.20, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @NVCommonSetup._entry_ptr.22, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.24, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/video/fbdev/nvidia/nv_setup.c", i32 516, i32 4}
!34 = !{ptr @NVCommonSetup._entry.23, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @NVCommonSetup._entry_ptr.25, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @NVCommonSetup._entry.26, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../drivers/video/fbdev/nvidia/nv_setup.c", i32 521, i32 4}
!38 = !{ptr @NVCommonSetup._entry_ptr.27, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.29, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/video/fbdev/nvidia/nv_setup.c", i32 527, i32 4}
!41 = !{ptr @NVCommonSetup._entry.28, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @NVCommonSetup._entry_ptr.30, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.32, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/video/fbdev/nvidia/nv_setup.c", i32 533, i32 4}
!45 = !{ptr @NVCommonSetup._entry.31, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @NVCommonSetup._entry_ptr.33, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.35, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/video/fbdev/nvidia/nv_setup.c", i32 546, i32 5}
!49 = !{ptr @NVCommonSetup._entry.34, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @NVCommonSetup._entry_ptr.36, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.38, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/video/fbdev/nvidia/nv_setup.c", i32 549, i32 6}
!53 = !{ptr @NVCommonSetup._entry.37, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @NVCommonSetup._entry_ptr.39, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.41, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/video/fbdev/nvidia/nv_setup.c", i32 553, i32 6}
!57 = !{ptr @NVCommonSetup._entry.40, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @NVCommonSetup._entry_ptr.42, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @NVCommonSetup._entry.43, !60, !"_entry", i1 false, i1 false}
!60 = !{!"../drivers/video/fbdev/nvidia/nv_setup.c", i32 558, i32 4}
!61 = !{ptr @NVCommonSetup._entry_ptr.44, !60, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.46, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/video/fbdev/nvidia/nv_setup.c", i32 566, i32 5}
!64 = !{ptr @NVCommonSetup._entry.45, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @NVCommonSetup._entry_ptr.47, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.49, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/video/fbdev/nvidia/nv_setup.c", i32 572, i32 5}
!68 = !{ptr @NVCommonSetup._entry.48, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @NVCommonSetup._entry_ptr.50, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.52, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/video/fbdev/nvidia/nv_setup.c", i32 576, i32 4}
!72 = !{ptr @NVCommonSetup._entry.51, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @NVCommonSetup._entry_ptr.53, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.55, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/video/fbdev/nvidia/nv_setup.c", i32 616, i32 2}
!76 = !{ptr @NVCommonSetup._entry.54, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @NVCommonSetup._entry_ptr.56, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.58, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/video/fbdev/nvidia/nv_setup.c", i32 625, i32 3}
!80 = !{ptr @NVCommonSetup._entry.57, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @NVCommonSetup._entry_ptr.59, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.61, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/video/fbdev/nvidia/nv_setup.c", i32 639, i32 3}
!84 = !{ptr @NVCommonSetup._entry.60, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @NVCommonSetup._entry_ptr.62, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.63, !83, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.64, !83, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.65, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/video/fbdev/nvidia/nv_setup.c", i32 169, i32 3}
!90 = !{ptr @.str.66, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @NVIsConnected._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @NVIsConnected._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.68, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/video/fbdev/nvidia/nv_setup.c", i32 171, i32 3}
!95 = !{ptr @NVIsConnected._entry.67, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @NVIsConnected._entry_ptr.69, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i64 2156245381}
!107 = !{i64 715489}
!108 = !{i64 2156245810}
!109 = !{i64 2156246239}
!110 = !{i64 715884}
!111 = !{i64 2156246705}
!112 = !{i64 2156247018}
!113 = !{i64 2156247414}
!114 = !{i64 2156247810}
!115 = !{i64 2156248230}
!116 = !{i64 2156248543}
!117 = !{i64 2156248939}
!118 = !{i64 2156249335}
!119 = !{i64 2156249755}
!120 = !{i64 2156250125}
!121 = !{i64 2156250438}
!122 = !{i64 2156250834}
!123 = !{i64 2156251287}
!124 = !{i64 2156251600}
!125 = !{i64 2156252020}
!126 = !{i64 2156252333}
!127 = !{i64 2156252753}
!128 = !{i64 2156253066}
!129 = !{i64 2156253462}
!130 = !{i64 2156253858}
!131 = !{i64 2156254254}
!132 = !{i64 2156254674}
!133 = !{i64 716104}
!134 = !{i64 715686}
!135 = !{i64 2156259312}
!136 = !{!"auto-init"}
!137 = !{i64 2156261846}
!138 = !{i64 2156262263}
!139 = !{i64 2156262570}
!140 = !{i64 2156262987}
!141 = !{i64 2156266606}
!142 = !{i64 2156267023}
!143 = !{i64 2156267324}
!144 = !{i64 2156267711}
!145 = !{i64 2156268128}
!146 = !{i64 2156268435}
!147 = !{i64 2156268852}
!148 = !{i64 2156269159}
!149 = !{i64 2156269543}
!150 = !{i64 2156269930}
!151 = !{i64 2156270347}
!152 = !{i64 2156270654}
!153 = !{i64 2156271071}
!154 = !{i64 2156294157}
!155 = !{i64 2156294547}
