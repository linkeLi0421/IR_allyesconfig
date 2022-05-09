; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/mcde/mcde_display.c_pt.bc'
source_filename = "../drivers/gpu/drm/mcde/mcde_display.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mcde_display_init\22, \22a\22\09"
module asm "\09.weak\09__crc_mcde_display_init\09\09\09\09"
module asm "\09.long\09__crc_mcde_display_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mcde_display_init:\09\09\09\09\09"
module asm "\09.asciz \09\22mcde_display_init\22\09\09\09\09\09"
module asm "__kstrtabns_mcde_display_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_simple_display_pipe_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mcde = type { %struct.drm_device, ptr, ptr, ptr, ptr, %struct.drm_simple_display_pipe, ptr, i8, i16, i32, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.88 = type { i32, ptr }
%struct.drm_simple_display_pipe = type { %struct.drm_crtc, %struct.drm_plane, %struct.drm_encoder, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.87 }
%union.anon.87 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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

@mcde_display_irq.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mcde_drm\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mcde_display_irq\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/mcde/mcde_display.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TE0 IRQ\0A\00", [23 x i8] zeroinitializer }, align 32
@mcde_display_irq.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"chnl A vblank IRQ\0A\00", [45 x i8] zeroinitializer }, align 32
@mcde_display_irq.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"chnl B vblank IRQ\0A\00", [45 x i8] zeroinitializer }, align 32
@mcde_display_irq.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"chnl C0 vblank IRQ\0A\00", [44 x i8] zeroinitializer }, align 32
@mcde_display_irq.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"chnl C1 vblank IRQ\0A\00", [44 x i8] zeroinitializer }, align 32
@mcde_display_irq.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"chnl C0 TE IRQ\0A\00", [16 x i8] zeroinitializer }, align 32
@mcde_display_irq.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"chnl C1 TE IRQ\0A\00", [16 x i8] zeroinitializer }, align 32
@mcde_display_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 136, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"some stray overlay IRQ %08x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mcde_display_irq._entry_ptr = internal global ptr @mcde_display_irq._entry, section ".printk_index", align 4
@mcde_display_irq._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 141, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"some stray channel error IRQ %08x\0A\00", [61 x i8] zeroinitializer }, align 32
@mcde_display_irq._entry_ptr.15 = internal global ptr @mcde_display_irq._entry.13, section ".printk_index", align 4
@mcde_display_init.formats = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 875713089, i32 875708993, i32 875713112, i32 875709016, i32 875710290, i32 875710274, i32 842093121, i32 842089025, i32 842093144, i32 842089048, i32 892424792, i32 892420696, i32 909199186, i32 909199170, i32 909202777], [36 x i8] zeroinitializer }, align 32
@mcde_display_funcs = internal global { %struct.drm_simple_display_pipe_funcs, [36 x i8] } { %struct.drm_simple_display_pipe_funcs { ptr null, ptr @mcde_display_enable, ptr @mcde_display_disable, ptr @mcde_display_check, ptr @mcde_display_update, ptr null, ptr null, ptr @mcde_display_enable_vblank, ptr @mcde_display_disable_vblank, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_mcde_display_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_mcde_display_init = external dso_local constant [0 x i8], align 1
@__ksymtab_mcde_display_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mcde_display_init to i32), ptr @__kstrtab_mcde_display_init, ptr @__kstrtabns_mcde_display_init }, section "___ksymtab_gpl+mcde_display_init", align 4
@mcde_display_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 1171, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"can't re-enable EPOD regulator\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mcde_display_enable\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mcde_display_enable._entry_ptr = internal global ptr @mcde_display_enable._entry, section ".printk_index", align 4
@mcde_display_enable._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.2, i32 1176, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"enable MCDE, %d x %d format %p4cc\0A\00", [61 x i8] zeroinitializer }, align 32
@mcde_display_enable._entry_ptr.21 = internal global ptr @mcde_display_enable._entry.19, section ".printk_index", align 4
@mcde_display_enable.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.22, i8 1, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Overlay line stride: %u bytes\0A\00", [33 x i8] zeroinitializer }, align 32
@mcde_display_enable._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.17, ptr @.str.2, i32 1232, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to set LCD clock rate %lu Hz\0A\00", [59 x i8] zeroinitializer }, align 32
@mcde_display_enable._entry_ptr.25 = internal global ptr @mcde_display_enable._entry.23, section ".printk_index", align 4
@mcde_display_enable._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.17, ptr @.str.2, i32 1235, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to enable FIFO A DPI clock\0A\00", [61 x i8] zeroinitializer }, align 32
@mcde_display_enable._entry_ptr.28 = internal global ptr @mcde_display_enable._entry.26, section ".printk_index", align 4
@mcde_display_enable._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.17, ptr @.str.2, i32 1239, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"LCD FIFO A clk rate %lu Hz\0A\00", [36 x i8] zeroinitializer }, align 32
@mcde_display_enable._entry_ptr.31 = internal global ptr @mcde_display_enable._entry.29, section ".printk_index", align 4
@mcde_display_enable.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.32, i8 1, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"started MCDE video FIFO flow\0A\00", [34 x i8] zeroinitializer }, align 32
@mcde_display_enable._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.17, ptr @.str.2, i32 1296, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MCDE display is enabled\0A\00", [39 x i8] zeroinitializer }, align 32
@mcde_display_enable._entry_ptr.35 = internal global ptr @mcde_display_enable._entry.33, section ".printk_index", align 4
@mcde_setup_dpi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 988, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"output on DPI LCD from channel A\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mcde_setup_dpi\00", [17 x i8] zeroinitializer }, align 32
@mcde_setup_dpi._entry_ptr = internal global ptr @mcde_setup_dpi._entry, section ".printk_index", align 4
@mcde_setup_dpi._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 991, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"HSW: %d, HFP: %d, HBP: %d, VSW: %d, VFP: %d, VBP: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@mcde_setup_dpi._entry_ptr.40 = internal global ptr @mcde_setup_dpi._entry.38, section ".printk_index", align 4
@mcde_setup_dsi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 1085, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"output in %s mode, format %dbpp\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mcde_setup_dsi\00", [17 x i8] zeroinitializer }, align 32
@mcde_setup_dsi._entry_ptr = internal global ptr @mcde_setup_dsi._entry, section ".printk_index", align 4
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VIDEO\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CMD\00", [28 x i8] zeroinitializer }, align 32
@mcde_setup_dsi._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.42, ptr @.str.2, i32 1089, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Overlay CPP: %d bytes, DSI formatter CPP %d bytes\0A\00", [45 x i8] zeroinitializer }, align 32
@mcde_setup_dsi._entry_ptr.47 = internal global ptr @mcde_setup_dsi._entry.45, section ".printk_index", align 4
@mcde_setup_dsi.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.48, i8 1, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"FIFO watermark after flooring: %d bytes\0A\00", [55 x i8] zeroinitializer }, align 32
@mcde_setup_dsi.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.49, i8 1, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Packet divisor: %d bytes\0A\00", [38 x i8] zeroinitializer }, align 32
@mcde_setup_dsi.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.50, i8 1, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"DSI packet size: %d * %d bytes per line\0A\00", [55 x i8] zeroinitializer }, align 32
@mcde_setup_dsi.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.51, i8 1, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Overlay frame size: %u bytes\0A\00", [34 x i8] zeroinitializer }, align 32
@mcde_setup_dsi.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.52, i8 1, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Formatter frame size: %u bytes\0A\00", [32 x i8] zeroinitializer }, align 32
@mcde_drain_pipe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 947, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Channel A FIFO not empty (handover)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mcde_drain_pipe\00", [16 x i8] zeroinitializer }, align 32
@mcde_drain_pipe._entry_ptr = internal global ptr @mcde_drain_pipe._entry, section ".printk_index", align 4
@mcde_disable_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 885, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cannot disable FIFO %c\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mcde_disable_fifo\00", [46 x i8] zeroinitializer }, align 32
@mcde_disable_fifo._entry_ptr = internal global ptr @mcde_disable_fifo._entry, section ".printk_index", align 4
@mcde_disable_fifo._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 905, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"FIFO timeout while clearing FIFO %c\0A\00", [59 x i8] zeroinitializer }, align 32
@mcde_disable_fifo._entry_ptr.59 = internal global ptr @mcde_disable_fifo._entry.57, section ".printk_index", align 4
@mcde_configure_extsrc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 324, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unknown pixel format 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mcde_configure_extsrc\00", [42 x i8] zeroinitializer }, align 32
@mcde_configure_extsrc._entry_ptr = internal global ptr @mcde_configure_extsrc._entry, section ".printk_index", align 4
@mcde_configure_overlay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.62, ptr @.str.2, i32 432, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mcde_configure_overlay\00", [41 x i8] zeroinitializer }, align 32
@mcde_configure_overlay._entry_ptr = internal global ptr @mcde_configure_overlay._entry, section ".printk_index", align 4
@mcde_configure_overlay.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.63, i8 0, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"pixel fetcher watermark level %d pixels\0A\00", [55 x i8] zeroinitializer }, align 32
@mcde_configure_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 571, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unknown flow mode %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mcde_configure_channel\00", [41 x i8] zeroinitializer }, align 32
@mcde_configure_channel._entry_ptr = internal global ptr @mcde_configure_channel._entry, section ".printk_index", align 4
@mcde_configure_channel._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.2, i32 611, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stripwidth: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@mcde_configure_channel._entry_ptr.68 = internal global ptr @mcde_configure_channel._entry.66, section ".printk_index", align 4
@mcde_configure_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 713, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"panel does not specify bus format, assume RGB888\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mcde_configure_fifo\00", [44 x i8] zeroinitializer }, align 32
@mcde_configure_fifo._entry_ptr = internal global ptr @mcde_configure_fifo._entry, section ".printk_index", align 4
@mcde_configure_fifo._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.2, i32 733, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unknown bus format, assume RGB888\0A\00", [61 x i8] zeroinitializer }, align 32
@mcde_configure_fifo._entry_ptr.73 = internal global ptr @mcde_configure_fifo._entry.71, section ".printk_index", align 4
@mcde_configure_dsi_formatter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 789, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"tried to configure a non-DSI formatter as DSI\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mcde_configure_dsi_formatter\00", [35 x i8] zeroinitializer }, align 32
@mcde_configure_dsi_formatter._entry_ptr = internal global ptr @mcde_configure_dsi_formatter._entry, section ".printk_index", align 4
@mcde_configure_dsi_formatter._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 811, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"we cannot handle the packed RGB666 format\0A\00", [53 x i8] zeroinitializer }, align 32
@mcde_configure_dsi_formatter._entry_ptr.78 = internal global ptr @mcde_configure_dsi_formatter._entry.76, section ".printk_index", align 4
@mcde_configure_dsi_formatter._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.2, i32 820, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unknown DSI format\0A\00", [44 x i8] zeroinitializer }, align 32
@mcde_configure_dsi_formatter._entry_ptr.81 = internal global ptr @mcde_configure_dsi_formatter._entry.79, section ".printk_index", align 4
@mcde_enable_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 857, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot enable FIFO %c\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mcde_enable_fifo\00", [47 x i8] zeroinitializer }, align 32
@mcde_enable_fifo._entry_ptr = internal global ptr @mcde_enable_fifo._entry, section ".printk_index", align 4
@mcde_display_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 1330, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"can't disable EPOD regulator\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mcde_display_disable\00", [43 x i8] zeroinitializer }, align 32
@mcde_display_disable._entry_ptr = internal global ptr @mcde_display_disable._entry, section ".printk_index", align 4
@mcde_display_disable._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.2, i32 1334, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MCDE display is disabled\0A\00", [38 x i8] zeroinitializer }, align 32
@mcde_display_disable._entry_ptr.88 = internal global ptr @mcde_display_disable._entry.86, section ".printk_index", align 4
@.str.89 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"FB not 32-bit aligned\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"can't handle pitches\0A\00", [42 x i8] zeroinitializer }, align 32
@mcde_display_update.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.2, ptr @.str.92, i8 1, i8 96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mcde_display_update\00", [44 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"arm vblank event\0A\00", [46 x i8] zeroinitializer }, align 32
@mcde_display_update.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.2, ptr @.str.93, i8 1, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"insert fake vblank event\0A\00", [38 x i8] zeroinitializer }, align 32
@mcde_display_update.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@mcde_display_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.91, ptr @.str.2, i32 1427, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"first update of display contents\0A\00", [62 x i8] zeroinitializer }, align 32
@mcde_display_update._entry_ptr = internal global ptr @mcde_display_update._entry, section ".printk_index", align 4
@mcde_display_update._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.91, ptr @.str.2, i32 1440, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ignored a display update\0A\00", [38 x i8] zeroinitializer }, align 32
@mcde_display_update._entry_ptr.97 = internal global ptr @mcde_display_update._entry.95, section ".printk_index", align 4
@mcde_start_flow.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.98, ptr @.str.2, ptr @.str.99, i8 1, i8 86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mcde_start_flow\00", [16 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"started MCDE FIFO flow\0A\00", [40 x i8] zeroinitializer }, align 32
@switch.table.mcde_display_enable = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 33554432, i32 67108864, i32 0, i32 67108864, i32 0, i32 0], [40 x i8] zeroinitializer }, align 32
@switch.table.mcde_setup_dsi = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 24, i32 24, i32 18, i32 16], [16 x i8] zeroinitializer }, align 32
@switch.table.mcde_setup_dsi.100 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 3, i32 2, i32 2], [16 x i8] zeroinitializer }, align 32
@switch.table.mcde_configure_overlay = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 128, i32 96, i32 48], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 32, i64 842089025, i64 842089048, i64 842093121, i64 842093144, i64 875708993, i64 875709016, i64 875710274, i64 875710290, i64 875713089, i64 875713112, i64 892420696, i64 892424792, i64 909199170, i64 909199186, i64 909202777]
@__sancov_gen_cov_switch_values.101 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.102 = internal global [15 x i64] [i64 13, i64 32, i64 842089025, i64 842093121, i64 875708993, i64 875709016, i64 875710274, i64 875710290, i64 875713089, i64 875713112, i64 892420696, i64 892424792, i64 909199170, i64 909199186, i64 909202777]
@__sancov_gen_cov_switch_values.103 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 103, i32 5 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 115, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 119, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 123, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 125, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 127, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 129, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 136, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 140, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1488, i32 19 }
@___asan_gen_.155 = private unnamed_addr constant [19 x i8] c"mcde_display_funcs\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1475, i32 45 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1171, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1175, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1191, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1231, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1235, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1238, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1288, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1296, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 988, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 990, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1082, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1088, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1127, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1129, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1137, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1139, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1143, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 947, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 884, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 903, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 323, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 431, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 459, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 570, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 611, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 713, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 733, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 789, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 810, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 820, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 856, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1330, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1334, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 171, i32 4 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 180, i32 4 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1410, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1413, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1427, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1440, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.405 = private constant [39 x i8] c"../drivers/gpu/drm/mcde/mcde_display.c\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1368, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant [33 x i8] c"switch.table.mcde_display_enable\00", align 1
@___asan_gen_.408 = private unnamed_addr constant [28 x i8] c"switch.table.mcde_setup_dsi\00", align 1
@___asan_gen_.409 = private unnamed_addr constant [32 x i8] c"switch.table.mcde_setup_dsi.100\00", align 1
@___asan_gen_.410 = private unnamed_addr constant [36 x i8] c"switch.table.mcde_configure_overlay\00", align 1
@llvm.compiler.used = appending global [135 x ptr] [ptr @__ksymtab_mcde_display_init, ptr @mcde_configure_channel._entry, ptr @mcde_configure_channel._entry.66, ptr @mcde_configure_channel._entry_ptr, ptr @mcde_configure_channel._entry_ptr.68, ptr @mcde_configure_dsi_formatter._entry, ptr @mcde_configure_dsi_formatter._entry.76, ptr @mcde_configure_dsi_formatter._entry.79, ptr @mcde_configure_dsi_formatter._entry_ptr, ptr @mcde_configure_dsi_formatter._entry_ptr.78, ptr @mcde_configure_dsi_formatter._entry_ptr.81, ptr @mcde_configure_extsrc._entry, ptr @mcde_configure_extsrc._entry_ptr, ptr @mcde_configure_fifo._entry, ptr @mcde_configure_fifo._entry.71, ptr @mcde_configure_fifo._entry_ptr, ptr @mcde_configure_fifo._entry_ptr.73, ptr @mcde_configure_overlay._entry, ptr @mcde_configure_overlay._entry_ptr, ptr @mcde_disable_fifo._entry, ptr @mcde_disable_fifo._entry.57, ptr @mcde_disable_fifo._entry_ptr, ptr @mcde_disable_fifo._entry_ptr.59, ptr @mcde_display_disable._entry, ptr @mcde_display_disable._entry.86, ptr @mcde_display_disable._entry_ptr, ptr @mcde_display_disable._entry_ptr.88, ptr @mcde_display_enable._entry, ptr @mcde_display_enable._entry.19, ptr @mcde_display_enable._entry.23, ptr @mcde_display_enable._entry.26, ptr @mcde_display_enable._entry.29, ptr @mcde_display_enable._entry.33, ptr @mcde_display_enable._entry_ptr, ptr @mcde_display_enable._entry_ptr.21, ptr @mcde_display_enable._entry_ptr.25, ptr @mcde_display_enable._entry_ptr.28, ptr @mcde_display_enable._entry_ptr.31, ptr @mcde_display_enable._entry_ptr.35, ptr @mcde_display_irq._entry, ptr @mcde_display_irq._entry.13, ptr @mcde_display_irq._entry_ptr, ptr @mcde_display_irq._entry_ptr.15, ptr @mcde_display_update._entry, ptr @mcde_display_update._entry.95, ptr @mcde_display_update._entry_ptr, ptr @mcde_display_update._entry_ptr.97, ptr @mcde_drain_pipe._entry, ptr @mcde_drain_pipe._entry_ptr, ptr @mcde_enable_fifo._entry, ptr @mcde_enable_fifo._entry_ptr, ptr @mcde_setup_dpi._entry, ptr @mcde_setup_dpi._entry.38, ptr @mcde_setup_dpi._entry_ptr, ptr @mcde_setup_dpi._entry_ptr.40, ptr @mcde_setup_dsi._entry, ptr @mcde_setup_dsi._entry.45, ptr @mcde_setup_dsi._entry_ptr, ptr @mcde_setup_dsi._entry_ptr.47, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @mcde_display_init.formats, ptr @mcde_display_funcs, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @switch.table.mcde_display_enable, ptr @switch.table.mcde_setup_dsi, ptr @switch.table.mcde_setup_dsi.100, ptr @switch.table.mcde_configure_overlay], section "llvm.metadata"
@0 = internal global [105 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_display_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_display_irq._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_display_init.formats to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_display_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_display_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_display_enable._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_display_enable._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_display_enable._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_display_enable._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_display_enable._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_setup_dpi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_setup_dpi._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_setup_dsi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_setup_dsi._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_drain_pipe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_disable_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_disable_fifo._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_configure_extsrc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_configure_overlay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_configure_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_configure_channel._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_configure_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_configure_fifo._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_configure_dsi_formatter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_configure_dsi_formatter._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_configure_dsi_formatter._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_enable_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_display_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_display_disable._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_display_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_display_update._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mcde_display_enable to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mcde_setup_dsi to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mcde_setup_dsi.100 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mcde_configure_overlay to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mcde_display_irq(ptr noundef %mcde) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 12
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 292
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !211
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !212
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 296
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #5, !srcloc !211
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !213
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr12 = getelementptr i8, ptr %9, i32 300
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #5, !srcloc !211
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !214
  %dpi_output = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 7
  %12 = ptrtoint ptr %dpi_output to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dpi_output, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end41_crit_edge

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

land.lhs.true:                                    ; preds = %entry
  %mdsi = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 6
  %14 = ptrtoint ptr %mdsi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mdsi, align 8
  %call16 = tail call zeroext i1 @mcde_dsi_irq(ptr noundef %15) #5
  br i1 %call16, label %if.then, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then:                                          ; preds = %land.lhs.true
  %flow_mode = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 9
  %16 = ptrtoint ptr %flow_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flow_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %if.then17, label %if.then.if.end41_crit_edge

if.then.if.end41_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then17:                                        ; preds = %if.then
  %flow_lock = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %flow_lock) #5
  %flow_active = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 10
  %18 = ptrtoint ptr %flow_active to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flow_active, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %flow_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp18 = icmp eq i32 %dec, 0
  br i1 %cmp18, label %do.body, label %if.then17.if.end38_crit_edge

if.then17.if.end38_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

do.body:                                          ; preds = %if.then17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_display_irq.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_display_irq, %if.then25)) #5
          to label %do.end [label %if.then25], !srcloc !216

if.then25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 1
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_display_irq.__UNIQUE_ID_ddebug319, ptr noundef %21, ptr noundef nonnull @.str.3) #5
  br label %do.end

do.end:                                           ; preds = %if.then25, %do.body
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %add.ptr29 = getelementptr i8, ptr %23, i32 2048
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #5, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !217
  %25 = and i32 %24, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !218
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %add.ptr37 = getelementptr i8, ptr %27, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %25) #5, !srcloc !219
  br label %if.end38

if.end38:                                         ; preds = %do.end, %if.then17.if.end38_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %flow_lock) #5
  br label %if.end41

if.end41:                                         ; preds = %if.end38, %if.then.if.end41_crit_edge, %land.lhs.true.if.end41_crit_edge, %entry.if.end41_crit_edge
  %and42 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end41.if.end62_crit_edge, label %do.body45

if.end41.if.end62_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

do.body45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_display_irq.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_display_irq, %if.then57)) #5
          to label %if.end62 [label %if.then57], !srcloc !216

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #7
  %dev58 = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 1
  %28 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev58, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_display_irq.__UNIQUE_ID_ddebug320, ptr noundef %29, ptr noundef nonnull @.str.4) #5
  br label %if.end62

if.end62:                                         ; preds = %if.then57, %do.body45, %if.end41.if.end62_crit_edge
  %30 = xor i1 %tobool43.not, true
  %and63 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end62.if.end83_crit_edge, label %do.body66

if.end62.if.end83_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83

do.body66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_display_irq.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_display_irq, %if.then78)) #5
          to label %if.end83 [label %if.then78], !srcloc !216

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #7
  %dev79 = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 1
  %31 = ptrtoint ptr %dev79 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev79, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_display_irq.__UNIQUE_ID_ddebug321, ptr noundef %32, ptr noundef nonnull @.str.5) #5
  br label %if.end83

if.end83:                                         ; preds = %if.then78, %do.body66, %if.end62.if.end83_crit_edge
  %vblank.1.off0 = phi i1 [ %30, %if.end62.if.end83_crit_edge ], [ true, %if.then78 ], [ true, %do.body66 ]
  %and84 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end83.if.end104_crit_edge, label %do.body87

if.end83.if.end104_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

do.body87:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_display_irq.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_display_irq, %if.then99)) #5
          to label %if.end104 [label %if.then99], !srcloc !216

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #7
  %dev100 = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 1
  %33 = ptrtoint ptr %dev100 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev100, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_display_irq.__UNIQUE_ID_ddebug322, ptr noundef %34, ptr noundef nonnull @.str.6) #5
  br label %if.end104

if.end104:                                        ; preds = %if.then99, %do.body87, %if.end83.if.end104_crit_edge
  %and105 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.end104.if.end125_crit_edge, label %do.body108

if.end104.if.end125_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end125

do.body108:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_display_irq.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_display_irq, %if.then120)) #5
          to label %if.end125 [label %if.then120], !srcloc !216

if.then120:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #7
  %dev121 = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 1
  %35 = ptrtoint ptr %dev121 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev121, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_display_irq.__UNIQUE_ID_ddebug323, ptr noundef %36, ptr noundef nonnull @.str.7) #5
  br label %if.end125

if.end125:                                        ; preds = %if.then120, %do.body108, %if.end104.if.end125_crit_edge
  %and126 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %if.end125.if.end146_crit_edge, label %do.body129

if.end125.if.end146_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end146

do.body129:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_display_irq.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_display_irq, %if.then141)) #5
          to label %if.end146 [label %if.then141], !srcloc !216

if.then141:                                       ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #7
  %dev142 = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 1
  %37 = ptrtoint ptr %dev142 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev142, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_display_irq.__UNIQUE_ID_ddebug324, ptr noundef %38, ptr noundef nonnull @.str.8) #5
  br label %if.end146

if.end146:                                        ; preds = %if.then141, %do.body129, %if.end125.if.end146_crit_edge
  %and147 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %if.end146.do.body168_crit_edge, label %do.body150

if.end146.do.body168_crit_edge:                   ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body168

do.body150:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_display_irq.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_display_irq, %if.then162)) #5
          to label %do.body168 [label %if.then162], !srcloc !216

if.then162:                                       ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #7
  %dev163 = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 1
  %39 = ptrtoint ptr %dev163 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev163, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_display_irq.__UNIQUE_ID_ddebug325, ptr noundef %40, ptr noundef nonnull @.str.9) #5
  br label %do.body168

do.body168:                                       ; preds = %if.then162, %do.body150, %if.end146.do.body168_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !220
  tail call void @arm_heavy_mb() #5
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 4
  %add.ptr172 = getelementptr i8, ptr %42, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr172, i32 %2) #5, !srcloc !219
  br i1 %vblank.1.off0, label %if.then174, label %do.body168.if.end176_crit_edge

do.body168.if.end176_crit_edge:                   ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end176

if.then174:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #7
  %pipe = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 5
  %call175 = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %pipe) #5
  br label %if.end176

if.end176:                                        ; preds = %if.then174, %do.body168.if.end176_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool177.not = icmp eq i32 %6, 0
  br i1 %tobool177.not, label %if.end176.do.body184_crit_edge, label %do.end181

if.end176.do.body184_crit_edge:                   ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body184

do.end181:                                        ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #7
  %dev182 = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 1
  %43 = ptrtoint ptr %dev182 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev182, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.10, i32 noundef %7) #8
  br label %do.body184

do.body184:                                       ; preds = %do.end181, %if.end176.do.body184_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !221
  tail call void @arm_heavy_mb() #5
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 4
  %add.ptr188 = getelementptr i8, ptr %46, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr188, i32 %6) #5, !srcloc !219
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool189.not = icmp eq i32 %10, 0
  br i1 %tobool189.not, label %do.body184.do.body196_crit_edge, label %do.end193

do.body184.do.body196_crit_edge:                  ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body196

do.end193:                                        ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #7
  %dev194 = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 1
  %47 = ptrtoint ptr %dev194 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev194, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.14, i32 noundef %11) #8
  br label %do.body196

do.body196:                                       ; preds = %do.end193, %do.body184.do.body196_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !222
  tail call void @arm_heavy_mb() #5
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs, align 4
  %add.ptr200 = getelementptr i8, ptr %50, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr200, i32 %10) #5, !srcloc !219
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mcde_dsi_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mcde_display_disable_irqs(ptr nocapture noundef readonly %mcde) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !223
  tail call void @arm_heavy_mb() #5
  %regs = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 12
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !224
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #5, !srcloc !219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !225
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr8 = getelementptr i8, ptr %5, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #5, !srcloc !219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr12 = getelementptr i8, ptr %7, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 -1) #5, !srcloc !219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr16 = getelementptr i8, ptr %9, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 -1) #5, !srcloc !219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !228
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr20 = getelementptr i8, ptr %11, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 -1) #5, !srcloc !219
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mcde_display_init(ptr noundef %drm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mcde_init_clock_divider(ptr noundef %drm) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pipe = getelementptr inbounds %struct.mcde, ptr %drm, i32 0, i32 5
  %connector = getelementptr inbounds %struct.mcde, ptr %drm, i32 0, i32 4
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call1 = tail call i32 @drm_simple_display_pipe_init(ptr noundef %drm, ptr noundef %pipe, ptr noundef nonnull @mcde_display_funcs, ptr noundef nonnull @mcde_display_init.formats, i32 noundef 15, ptr noundef null, ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcde_init_clock_divider(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_display_pipe_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcde_display_enable(ptr noundef %pipe, ptr nocapture noundef readonly %cstate, ptr nocapture noundef readnone %plane_state) #0 align 64 {
entry:
  %format = alloca i32, align 4
  %dsi_pkt_size = alloca i32, align 4
  %fifo_wtrmrk = alloca i32, align 4
  %dsi_formatter_frame = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %mode3 = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 8
  %state = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %pipe, i32 0, i32 1, i32 19
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %fb4 = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %fb4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %format) #5
  %format5 = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %format5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %format5, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %format, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dsi_pkt_size) #5
  %11 = ptrtoint ptr %dsi_pkt_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %dsi_pkt_size, align 4, !annotation !229
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fifo_wtrmrk) #5
  %12 = ptrtoint ptr %fifo_wtrmrk to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %fifo_wtrmrk, align 4, !annotation !229
  %13 = getelementptr inbounds %struct.drm_format_info, ptr %7, i32 0, i32 3
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 2
  %conv = zext i8 %15 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dsi_formatter_frame) #5
  %16 = ptrtoint ptr %dsi_formatter_frame to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %dsi_formatter_frame, align 4, !annotation !229
  %epod = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 19
  %17 = ptrtoint ptr %epod to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %epod, align 8
  %call = tail call i32 @regulator_enable(ptr noundef %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %dev12 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev12, align 4
  br i1 %tobool.not, label %do.end11, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.16) #8
  br label %cleanup132

do.end11:                                         ; preds = %entry
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 8, i32 1
  %21 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %hdisplay, align 4
  %conv13 = zext i16 %22 to i32
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 8, i32 6
  %23 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vdisplay, align 2
  %conv14 = zext i16 %24 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.20, i32 noundef %conv13, i32 noundef %conv14, ptr noundef nonnull %format) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !223
  call void @arm_heavy_mb() #5
  %regs.i = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 12
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 260
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !219
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !224
  call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %28, i32 264
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #5, !srcloc !219
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !225
  call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %30, i32 268
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 0) #5, !srcloc !219
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  call void @arm_heavy_mb() #5
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %32, i32 276
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 -1) #5, !srcloc !219
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  call void @arm_heavy_mb() #5
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %34, i32 280
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 -1) #5, !srcloc !219
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !228
  call void @arm_heavy_mb() #5
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %36, i32 284
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 -1) #5, !srcloc !219
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  call void @arm_heavy_mb() #5
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %add.ptr18 = getelementptr i8, ptr %38, i32 272
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 0) #5, !srcloc !219
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !231
  call void @arm_heavy_mb() #5
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 4
  %add.ptr23 = getelementptr i8, ptr %40, i32 288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 -1) #5, !srcloc !219
  %dpi_output = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 7
  %41 = ptrtoint ptr %dpi_output to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %dpi_output, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool24.not = icmp eq i8 %42, 0
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #7
  %bridge.i = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 3
  %43 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bridge.i, align 4
  %call.i = call ptr @drm_panel_bridge_connector(ptr noundef %44) #5
  %hsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 8, i32 3
  %45 = ptrtoint ptr %hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %hsync_end.i, align 4
  %conv.i = zext i16 %46 to i32
  %hsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 8, i32 2
  %47 = ptrtoint ptr %hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %hsync_start.i, align 2
  %conv1.i = zext i16 %48 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %49 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %hdisplay, align 4
  %conv4.i = zext i16 %50 to i32
  %sub5.i = sub nsw i32 %conv1.i, %conv4.i
  %htotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 8, i32 4
  %51 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %htotal.i, align 2
  %conv6.i = zext i16 %52 to i32
  %sub9.i = sub nsw i32 %conv6.i, %conv.i
  %vsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 8, i32 8
  %53 = ptrtoint ptr %vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %vsync_end.i, align 2
  %conv10.i = zext i16 %54 to i32
  %vsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 8, i32 7
  %55 = ptrtoint ptr %vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %vsync_start.i, align 4
  %conv11.i = zext i16 %56 to i32
  %sub12.i = sub nsw i32 %conv10.i, %conv11.i
  %57 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %vdisplay, align 2
  %conv15.i = zext i16 %58 to i32
  %sub16.i = sub nsw i32 %conv11.i, %conv15.i
  %vtotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 8, i32 9
  %59 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %vtotal.i, align 4
  %conv17.i = zext i16 %60 to i32
  %sub20.i = sub nsw i32 %conv17.i, %conv10.i
  %dev.i = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 1
  %61 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %62, ptr noundef nonnull @.str.36) #8
  %63 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.39, i32 noundef %sub.i, i32 noundef %sub5.i, i32 noundef %sub9.i, i32 noundef %sub12.i, i32 noundef %sub16.i, i32 noundef %sub20.i) #8
  %65 = ptrtoint ptr %fifo_wtrmrk to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 640, ptr %fifo_wtrmrk, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !232
  call void @arm_heavy_mb() #5
  %66 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i, align 4
  %add.ptr.i208 = getelementptr i8, ptr %67, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i208, i32 7342112) #5, !srcloc !219
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !233
  call void @arm_heavy_mb() #5
  %68 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i, align 4
  %add.ptr36.i = getelementptr i8, ptr %69, i32 2104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 0) #5, !srcloc !219
  %shl37.i = shl i32 %sub16.i, 16
  %or38.i = or i32 %shl37.i, %sub12.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !234
  call void @arm_heavy_mb() #5
  %70 = call i32 @llvm.bswap.i32(i32 %or38.i) #5
  %71 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs.i, align 4
  %add.ptr43.i = getelementptr i8, ptr %72, i32 2108
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i, i32 %70) #5, !srcloc !219
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !235
  call void @arm_heavy_mb() #5
  %73 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i, align 4
  %add.ptr48.i = getelementptr i8, ptr %74, i32 2132
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i, i32 %70) #5, !srcloc !219
  %shl50.i = shl i32 %sub20.i, 16
  %or51.i = or i32 %shl50.i, %sub20.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !236
  call void @arm_heavy_mb() #5
  %75 = call i32 @llvm.bswap.i32(i32 %or51.i) #5
  %76 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs.i, align 4
  %add.ptr56.i = getelementptr i8, ptr %77, i32 2116
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56.i, i32 %75) #5, !srcloc !219
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !237
  call void @arm_heavy_mb() #5
  %sub60.i = add nsw i32 %sub9.i, -1
  %78 = call i32 @llvm.bswap.i32(i32 %sub60.i) #5
  %79 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs.i, align 4
  %add.ptr62.i = getelementptr i8, ptr %80, i32 2124
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62.i, i32 %78) #5, !srcloc !219
  %sub63.i = add nsw i32 %sub.i, -1
  %sub65.i = shl i32 %sub5.i, 16
  %shl66.i = add i32 %sub65.i, -65536
  %or67.i = or i32 %shl66.i, %sub63.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !238
  call void @arm_heavy_mb() #5
  %81 = call i32 @llvm.bswap.i32(i32 %or67.i) #5
  %82 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs.i, align 4
  %add.ptr72.i = getelementptr i8, ptr %83, i32 2128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72.i, i32 %81) #5, !srcloc !219
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !239
  call void @arm_heavy_mb() #5
  %84 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs.i, align 4
  %add.ptr77.i = getelementptr i8, ptr %85, i32 2112
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77.i, i32 0) #5, !srcloc !219
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !240
  call void @arm_heavy_mb() #5
  %86 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs.i, align 4
  %add.ptr82.i = getelementptr i8, ptr %87, i32 2136
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i, i32 0) #5, !srcloc !219
  %flags.i = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 8, i32 11
  %88 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %flags.i, align 4
  %and.i = shl i32 %89, 20
  %90 = and i32 %and.i, 2097152
  %and85.i = shl i32 %89, 17
  %91 = and i32 %and85.i, 1048576
  %92 = or i32 %91, %90
  %bus_flags.i = getelementptr inbounds %struct.drm_connector, ptr %call.i, i32 0, i32 20, i32 8
  %93 = ptrtoint ptr %bus_flags.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %bus_flags.i, align 8
  %and90.i = shl i32 %94, 23
  %95 = and i32 %and90.i, 8388608
  %96 = or i32 %92, %95
  %and97.i = shl i32 %94, 19
  %97 = and i32 %and97.i, 4194304
  %98 = or i32 %96, %97
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !241
  call void @arm_heavy_mb() #5
  %99 = lshr exact i32 %98, 8
  %100 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs.i, align 4
  %add.ptr106.i = getelementptr i8, ptr %101, i32 2144
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106.i, i32 %99) #5, !srcloc !219
  br label %if.end26

if.else:                                          ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @mcde_setup_dsi(ptr noundef %1, ptr noundef %mode3, i32 noundef %conv, ptr noundef nonnull %fifo_wtrmrk, ptr noundef nonnull %dsi_formatter_frame, ptr noundef nonnull %dsi_pkt_size)
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then25
  %102 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %hdisplay, align 4
  %104 = zext i8 %15 to i16
  %conv29 = mul i16 %103, %104
  %stride = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 8
  %105 = ptrtoint ptr %stride to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv29, ptr %stride, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_display_enable.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_display_enable, %if.then36)) #5
          to label %do.end42 [label %if.then36], !srcloc !216

if.then36:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %106 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev12, align 4
  %108 = ptrtoint ptr %stride to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %stride, align 2
  %conv39 = sext i16 %109 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_display_enable.__UNIQUE_ID_ddebug336, ptr noundef %107, ptr noundef nonnull @.str.22, i32 noundef %conv39) #5
  br label %do.end42

do.end42:                                         ; preds = %if.then36, %if.end26
  %110 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regs.i, align 4
  %add.ptr.i210 = getelementptr i8, ptr %111, i32 2180
  %112 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i210) #5, !srcloc !211
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !242
  %113 = and i32 %112, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool.not.i = icmp eq i32 %113, 0
  br i1 %tobool.not.i, label %do.end.i, label %do.end42.mcde_drain_pipe.exit_crit_edge

do.end42.mcde_drain_pipe.exit_crit_edge:          ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %mcde_drain_pipe.exit

do.end.i:                                         ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i211 = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 1
  %114 = ptrtoint ptr %dev.i211 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev.i211, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.53) #8
  %flow_lock.i.i = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 11
  call void @_raw_spin_lock(ptr noundef %flow_lock.i.i) #5
  %116 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %117, i32 2048
  %118 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !211
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !243
  %119 = or i32 %118, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !244
  call void @arm_heavy_mb() #5
  %120 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regs.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %121, i32 2048
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i, i32 %119) #5, !srcloc !219
  %flow_active.i.i = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 10
  %122 = ptrtoint ptr %flow_active.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %flow_active.i.i, align 4
  %inc.i.i = add i32 %123, 1
  store i32 %inc.i.i, ptr %flow_active.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %flow_lock.i.i) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !245
  call void @arm_heavy_mb() #5
  %124 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regs.i, align 4
  %add.ptr12.i212 = getelementptr i8, ptr %125, i32 1548
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i212, i32 16777216) #5, !srcloc !219
  call fastcc void @mcde_disable_fifo(ptr noundef %1) #5
  br label %mcde_drain_pipe.exit

mcde_drain_pipe.exit:                             ; preds = %do.end.i, %do.end42.mcde_drain_pipe.exit_crit_edge
  %126 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %format, align 4
  %128 = zext i32 %127 to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values)
  switch i32 %127, label %do.end.i214 [
    i32 875713089, label %mcde_drain_pipe.exit.do.body49.i_crit_edge
    i32 875708993, label %sw.bb13.i
    i32 875713112, label %sw.bb16.i
    i32 875709016, label %sw.bb18.i
    i32 875710290, label %sw.bb21.i
    i32 875710274, label %sw.bb23.i
    i32 842093121, label %sw.bb26.i
    i32 842089025, label %sw.bb28.i
    i32 842093144, label %sw.bb31.i
    i32 842089048, label %sw.bb33.i
    i32 892424792, label %sw.bb36.i
    i32 892420696, label %sw.bb38.i
    i32 909199186, label %sw.bb41.i
    i32 909199170, label %sw.bb43.i
    i32 909202777, label %sw.bb46.i
  ]

mcde_drain_pipe.exit.do.body49.i_crit_edge:       ; preds = %mcde_drain_pipe.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body49.i

sw.bb13.i:                                        ; preds = %mcde_drain_pipe.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body49.i

sw.bb16.i:                                        ; preds = %mcde_drain_pipe.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body49.i

sw.bb18.i:                                        ; preds = %mcde_drain_pipe.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body49.i

sw.bb21.i:                                        ; preds = %mcde_drain_pipe.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body49.i

sw.bb23.i:                                        ; preds = %mcde_drain_pipe.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body49.i

sw.bb26.i:                                        ; preds = %mcde_drain_pipe.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body49.i

sw.bb28.i:                                        ; preds = %mcde_drain_pipe.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body49.i

sw.bb31.i:                                        ; preds = %mcde_drain_pipe.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body49.i

sw.bb33.i:                                        ; preds = %mcde_drain_pipe.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body49.i

sw.bb36.i:                                        ; preds = %mcde_drain_pipe.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body49.i

sw.bb38.i:                                        ; preds = %mcde_drain_pipe.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body49.i

sw.bb41.i:                                        ; preds = %mcde_drain_pipe.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body49.i

sw.bb43.i:                                        ; preds = %mcde_drain_pipe.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body49.i

sw.bb46.i:                                        ; preds = %mcde_drain_pipe.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body49.i

do.end.i214:                                      ; preds = %mcde_drain_pipe.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i213 = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 1
  %129 = ptrtoint ptr %dev.i213 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev.i213, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.60, i32 noundef %127) #8
  br label %mcde_configure_extsrc.exit

do.body49.i:                                      ; preds = %sw.bb46.i, %sw.bb43.i, %sw.bb41.i, %sw.bb38.i, %sw.bb36.i, %sw.bb33.i, %sw.bb31.i, %sw.bb28.i, %sw.bb26.i, %sw.bb23.i, %sw.bb21.i, %sw.bb18.i, %sw.bb16.i, %sw.bb13.i, %mcde_drain_pipe.exit.do.body49.i_crit_edge
  %val.0.i = phi i32 [ 2820, %sw.bb46.i ], [ 5892, %sw.bb43.i ], [ 1796, %sw.bb41.i ], [ 5636, %sw.bb38.i ], [ 1540, %sw.bb36.i ], [ 5124, %sw.bb33.i ], [ 1028, %sw.bb31.i ], [ 5380, %sw.bb28.i ], [ 1284, %sw.bb26.i ], [ 6148, %sw.bb23.i ], [ 2052, %sw.bb21.i ], [ 6404, %sw.bb18.i ], [ 2308, %sw.bb16.i ], [ 6660, %sw.bb13.i ], [ 2564, %mcde_drain_pipe.exit.do.body49.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !246
  call void @arm_heavy_mb() #5
  %131 = call i32 @llvm.bswap.i32(i32 %val.0.i) #5
  %132 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regs.i, align 4
  %add.ptr.i216 = getelementptr i8, ptr %133, i32 524
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i216, i32 %131) #5, !srcloc !219
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !247
  call void @arm_heavy_mb() #5
  %134 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regs.i, align 4
  %add.ptr57.i = getelementptr i8, ptr %135, i32 528
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57.i, i32 100663296) #5, !srcloc !219
  br label %mcde_configure_extsrc.exit

mcde_configure_extsrc.exit:                       ; preds = %do.body49.i, %do.end.i214
  %136 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %format, align 4
  call fastcc void @mcde_configure_overlay(ptr noundef %1, ptr noundef %mode3, i32 noundef %137, i32 noundef %conv)
  %flow_mode.i = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 9
  %138 = ptrtoint ptr %flow_mode.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %flow_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %139)
  %140 = icmp ult i32 %139, 6
  br i1 %140, label %switch.lookup, label %do.end.i218

do.end.i218:                                      ; preds = %mcde_configure_extsrc.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i217 = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 1
  %141 = ptrtoint ptr %dev.i217 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev.i217, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %142, ptr noundef nonnull @.str.64, i32 noundef %139) #8
  br label %mcde_configure_channel.exit

switch.lookup:                                    ; preds = %mcde_configure_extsrc.exit
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.mcde_display_enable, i32 0, i32 %139
  %143 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %143)
  %switch.load = load i32, ptr %switch.gep, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !248
  call void @arm_heavy_mb() #5
  %144 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %regs.i, align 4
  %add.ptr.i221 = getelementptr i8, ptr %145, i32 1544
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i221, i32 %switch.load) #5, !srcloc !219
  %146 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %hdisplay, align 4
  %conv.i223 = zext i16 %147 to i32
  %sub.i224 = add nsw i32 %conv.i223, -1
  %148 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %vdisplay, align 2
  %conv17.i226 = zext i16 %149 to i32
  %sub18.i = shl nuw i32 %conv17.i226, 16
  %shl19.i = add i32 %sub18.i, -65536
  %or20.i = or i32 %shl19.i, %sub.i224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !249
  call void @arm_heavy_mb() #5
  %150 = call i32 @llvm.bswap.i32(i32 %or20.i) #5
  %151 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regs.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %152, i32 1536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %150) #5, !srcloc !219
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !250
  call void @arm_heavy_mb() #5
  %153 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regs.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %154, i32 1540
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 16777472) #5, !srcloc !219
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !251
  call void @arm_heavy_mb() #5
  %155 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %regs.i, align 4
  %add.ptr35.i = getelementptr i8, ptr %156, i32 1552
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 0) #5, !srcloc !219
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !252
  call void @arm_heavy_mb() #5
  %157 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %regs.i, align 4
  %add.ptr41.i = getelementptr i8, ptr %158, i32 1556
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41.i, i32 0) #5, !srcloc !219
  %159 = ptrtoint ptr %dpi_output to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %dpi_output, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool.not.i227 = icmp eq i8 %160, 0
  br i1 %tobool.not.i227, label %switch.lookup.if.else73_crit_edge, label %if.then.i

switch.lookup.if.else73_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else73

if.then.i:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  %161 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %vdisplay, align 2
  %conv50.i = zext i16 %162 to i32
  %mul.i = shl nuw nsw i32 %conv50.i, 2
  %div.i = udiv i32 61440, %mul.i
  %dev54.i = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 1
  %163 = ptrtoint ptr %dev54.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev54.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %164, ptr noundef nonnull @.str.67, i32 noundef %div.i) #8
  %165 = xor i32 %div.i, -1
  %166 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %hdisplay, align 4
  %conv56.i = zext i16 %167 to i32
  %sub58.i = add nsw i32 %conv56.i, %165
  %shl66.i228 = shl i32 %sub58.i, 18
  %shl59.i = shl nsw i32 %sub58.i, 2
  %or61.i = or i32 %shl59.i, %shl66.i228
  %or67.i229 = or i32 %or61.i, 131074
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !253
  call void @arm_heavy_mb() #5
  %168 = call i32 @llvm.bswap.i32(i32 %or67.i229) #5
  %169 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %regs.i, align 4
  %add.ptr73.i = getelementptr i8, ptr %170, i32 2176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73.i, i32 %168) #5, !srcloc !219
  br label %mcde_configure_channel.exit

mcde_configure_channel.exit:                      ; preds = %if.then.i, %do.end.i218
  %171 = ptrtoint ptr %dpi_output to i32
  call void @__asan_load1_noabort(i32 %171)
  %.pr = load i8, ptr %dpi_output, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool45.not = icmp eq i8 %.pr, 0
  br i1 %tobool45.not, label %mcde_configure_channel.exit.if.else73_crit_edge, label %if.then46

mcde_configure_channel.exit.if.else73_crit_edge:  ; preds = %mcde_configure_channel.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else73

if.then46:                                        ; preds = %mcde_configure_channel.exit
  %172 = ptrtoint ptr %fifo_wtrmrk to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %fifo_wtrmrk, align 4
  call fastcc void @mcde_configure_fifo(ptr noundef %1, i32 noundef 6, i32 noundef %173)
  %fifoa_clk = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 16
  %174 = ptrtoint ptr %fifoa_clk to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %fifoa_clk, align 4
  %176 = ptrtoint ptr %mode3 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %mode3, align 4
  %mul47 = mul i32 %177, 1000
  %call48 = call i32 @clk_round_rate(ptr noundef %175, i32 noundef %mul47) #5
  %178 = ptrtoint ptr %fifoa_clk to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %fifoa_clk, align 4
  %call50 = call i32 @clk_set_rate(ptr noundef %179, i32 noundef %call48) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then46.if.end57_crit_edge, label %do.end55

if.then46.if.end57_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

do.end55:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  %dev56 = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 1
  %180 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dev56, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %181, ptr noundef nonnull @.str.24, i32 noundef %call48) #8
  br label %if.end57

if.end57:                                         ; preds = %do.end55, %if.then46.if.end57_crit_edge
  %182 = ptrtoint ptr %fifoa_clk to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %fifoa_clk, align 4
  %call.i230 = call i32 @clk_prepare(ptr noundef %183) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i230)
  %tobool.not.i231 = icmp eq i32 %call.i230, 0
  br i1 %tobool.not.i231, label %if.end.i, label %if.end57.do.end64_crit_edge

if.end57.do.end64_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end64

if.end.i:                                         ; preds = %if.end57
  %call1.i = call i32 @clk_enable(ptr noundef %183) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.end69, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @clk_unprepare(ptr noundef %183) #5
  br label %do.end64

do.end64:                                         ; preds = %if.then3.i, %if.end57.do.end64_crit_edge
  %dev65 = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 1
  %184 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dev65, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %185, ptr noundef nonnull @.str.27) #8
  br label %cleanup132

do.end69:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev70 = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 1
  %186 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %dev70, align 4
  %188 = ptrtoint ptr %fifoa_clk to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %fifoa_clk, align 4
  %call72 = call i32 @clk_get_rate(ptr noundef %189) #5
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %187, ptr noundef nonnull @.str.30, i32 noundef %call72) #8
  br label %if.end74

if.else73:                                        ; preds = %mcde_configure_channel.exit.if.else73_crit_edge, %switch.lookup.if.else73_crit_edge
  %190 = ptrtoint ptr %fifo_wtrmrk to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %fifo_wtrmrk, align 4
  call fastcc void @mcde_configure_fifo(ptr noundef %1, i32 noundef 0, i32 noundef %191)
  %bridge = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 3
  %192 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %bridge, align 4
  call void @mcde_dsi_enable(ptr noundef %193) #5
  %194 = ptrtoint ptr %dsi_formatter_frame to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %dsi_formatter_frame, align 4
  %196 = ptrtoint ptr %dsi_pkt_size to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %dsi_pkt_size, align 4
  %mdsi.i = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 6
  %198 = ptrtoint ptr %mdsi.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %mdsi.i, align 8
  %mode_flags.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %199, i32 0, i32 6
  %200 = ptrtoint ptr %mode_flags.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %mode_flags.i, align 8
  %and.i233 = and i32 %201, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i233)
  %tobool.not.i234 = icmp eq i32 %and.i233, 0
  %val.0.i235 = select i1 %tobool.not.i234, i32 270336, i32 274432
  %format.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %199, i32 0, i32 5
  %202 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %format.i, align 4
  %204 = zext i32 %203 to i64
  call void @__sanitizer_cov_trace_switch(i64 %204, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %203, label %do.end19.i [
    i32 0, label %sw.bb4.i
    i32 1, label %sw.bb6.i236
    i32 2, label %do.end11.i
    i32 3, label %if.else73.do.body22.i_crit_edge
  ]

if.else73.do.body22.i_crit_edge:                  ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body22.i

sw.bb4.i:                                         ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #7
  %or5.i = or i32 %val.0.i235, 2097152
  br label %do.body22.i

sw.bb6.i236:                                      ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #7
  %or7.i = or i32 %val.0.i235, 1048576
  br label %do.body22.i

do.end11.i:                                       ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #7
  %dev12.i = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 1
  %205 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %dev12.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %206, ptr noundef nonnull @.str.77) #8
  %or13.i = or i32 %val.0.i235, 1048576
  br label %do.body22.i

do.end19.i:                                       ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #7
  %dev20.i = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 1
  %207 = ptrtoint ptr %dev20.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dev20.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %208, ptr noundef nonnull @.str.80) #8
  br label %if.end74

do.body22.i:                                      ; preds = %do.end11.i, %sw.bb6.i236, %sw.bb4.i, %if.else73.do.body22.i_crit_edge
  %val.1.i = phi i32 [ %or13.i, %do.end11.i ], [ %or7.i, %sw.bb6.i236 ], [ %or5.i, %sw.bb4.i ], [ %val.0.i235, %if.else73.do.body22.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !254
  call void @arm_heavy_mb() #5
  %209 = call i32 @llvm.bswap.i32(i32 %val.1.i) #5
  %210 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %regs.i, align 4
  %add.ptr.i238 = getelementptr i8, ptr %211, i32 3584
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i238, i32 %209) #5, !srcloc !219
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !255
  call void @arm_heavy_mb() #5
  %212 = call i32 @llvm.bswap.i32(i32 %195) #5
  %213 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %regs.i, align 4
  %add.ptr29.i = getelementptr i8, ptr %214, i32 3588
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 %212) #5, !srcloc !219
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !256
  call void @arm_heavy_mb() #5
  %215 = call i32 @llvm.bswap.i32(i32 %197) #5
  %216 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %regs.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %217, i32 3592
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 %215) #5, !srcloc !219
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !257
  call void @arm_heavy_mb() #5
  %218 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %regs.i, align 4
  %add.ptr39.i = getelementptr i8, ptr %219, i32 3596
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i, i32 0) #5, !srcloc !219
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !258
  call void @arm_heavy_mb() #5
  %220 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %regs.i, align 4
  %add.ptr45.i = getelementptr i8, ptr %221, i32 3600
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45.i, i32 1006644224) #5, !srcloc !219
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !259
  call void @arm_heavy_mb() #5
  %222 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %regs.i, align 4
  %add.ptr50.i = getelementptr i8, ptr %223, i32 3604
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.i, i32 0) #5, !srcloc !219
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !260
  call void @arm_heavy_mb() #5
  %224 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %regs.i, align 4
  %add.ptr55.i = getelementptr i8, ptr %225, i32 3608
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55.i, i32 0) #5, !srcloc !219
  br label %if.end74

if.end74:                                         ; preds = %do.body22.i, %do.end19.i, %do.end69
  %226 = ptrtoint ptr %flow_mode.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %flow_mode.i, align 8
  %.off = add i32 %227, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %sw.bb, label %if.end74.sw.epilog_crit_edge

if.end74.sw.epilog_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  %flags = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 8, i32 11
  %228 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %flags, align 4
  %and = and i32 %229, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !261
  call void @arm_heavy_mb() #5
  %230 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %regs.i, align 4
  %add.ptr83 = getelementptr i8, ptr %231, i32 3164
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 %and) #5, !srcloc !219
  %232 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %regs.i, align 4
  %add.ptr85 = getelementptr i8, ptr %233, i32 3072
  %234 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85) #5, !srcloc !211
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !262
  %235 = or i32 %234, -2147483648
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !263
  call void @arm_heavy_mb() #5
  %236 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %regs.i, align 4
  %add.ptr93 = getelementptr i8, ptr %237, i32 3072
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 %235) #5, !srcloc !219
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end74.sw.epilog_crit_edge
  call void @drm_crtc_vblank_on(ptr noundef %pipe) #5
  %238 = ptrtoint ptr %flow_mode.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %flow_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %cmp.not = icmp eq i32 %239, 0
  br i1 %cmp.not, label %sw.epilog.if.end114_crit_edge, label %if.then96

sw.epilog.if.end114_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end114

if.then96:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %flow_lock.i = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 11
  call void @_raw_spin_lock(ptr noundef %flow_lock.i) #5
  %240 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %regs.i, align 4
  %add.ptr.i240 = getelementptr i8, ptr %241, i32 2048
  %242 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i240) #5, !srcloc !211
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !243
  %243 = or i32 %242, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !244
  call void @arm_heavy_mb() #5
  %244 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %regs.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %245, i32 2048
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %243) #5, !srcloc !219
  %flow_active.i = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 10
  %246 = ptrtoint ptr %flow_active.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %flow_active.i, align 4
  %inc.i = add i32 %247, 1
  store i32 %inc.i, ptr %flow_active.i, align 4
  call void @_raw_spin_unlock(ptr noundef %flow_lock.i) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_display_enable.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_display_enable, %if.then109)) #5
          to label %if.end114 [label %if.then109], !srcloc !216

if.then109:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #7
  %dev110 = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 1
  %248 = ptrtoint ptr %dev110 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %dev110, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_display_enable.__UNIQUE_ID_ddebug337, ptr noundef %249, ptr noundef nonnull @.str.32) #5
  br label %if.end114

if.end114:                                        ; preds = %if.then109, %if.then96, %sw.epilog.if.end114_crit_edge
  %250 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %regs.i, align 4
  %252 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %251) #5, !srcloc !211
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !264
  %253 = or i32 %252, 192
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !265
  call void @arm_heavy_mb() #5
  %254 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %regs.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %255, i32 %253) #5, !srcloc !219
  %256 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %dev12, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %257, ptr noundef nonnull @.str.34) #8
  br label %cleanup132

cleanup132:                                       ; preds = %if.end114, %do.end64, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dsi_formatter_frame) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fifo_wtrmrk) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dsi_pkt_size) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %format) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcde_display_disable(ptr noundef %pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  tail call void @drm_crtc_vblank_off(ptr noundef %pipe) #5
  tail call fastcc void @mcde_disable_fifo(ptr noundef %1)
  %dpi_output = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dpi_output to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dpi_output, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %fifoa_clk = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %fifoa_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fifoa_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bridge = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bridge, align 4
  tail call void @mcde_dsi_disable(ptr noundef %7) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %state = getelementptr inbounds %struct.drm_crtc, ptr %pipe, i32 0, i32 22
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state, align 4
  %event2 = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %event2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %event2, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %if.then4

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %event2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %event2, align 4
  %13 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pipe, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #5
  tail call void @drm_crtc_send_vblank_event(ptr noundef %pipe, ptr noundef nonnull %11) #5
  %15 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pipe, align 8
  %event_lock9 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 28
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock9) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then4, %if.end.if.end10_crit_edge
  %epod = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 19
  %17 = ptrtoint ptr %epod to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %epod, align 8
  %call = tail call i32 @regulator_disable(ptr noundef %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %if.end10.if.end14_crit_edge, label %do.end

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %dev13 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.84) #8
  br label %if.end14

if.end14:                                         ; preds = %do.end, %if.end10.if.end14_crit_edge
  tail call void @usleep_range_state(i32 noundef 50000, i32 noundef 70000, i32 noundef 2) #5
  %dev18 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.87) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcde_display_check(ptr nocapture noundef readonly %pipe, ptr noundef %pstate, ptr nocapture noundef %cstate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %pipe, i32 0, i32 1, i32 19
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb, align 4
  %fb3 = getelementptr inbounds %struct.drm_plane_state, ptr %pstate, i32 0, i32 2
  %4 = ptrtoint ptr %fb3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup19_crit_edge, label %if.then

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup19

if.then:                                          ; preds = %entry
  %call = tail call i32 @drm_fb_cma_get_gem_addr(ptr noundef nonnull %5, ptr noundef %pstate, i32 noundef 0) #5
  %and = and i32 %call, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.89) #5
  br label %cleanup19

if.end:                                           ; preds = %if.then
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pitches, align 8
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %9 to i32
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %format, align 8
  %12 = getelementptr inbounds %struct.drm_format_info, ptr %11, i32 0, i32 3
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 2
  %conv7 = zext i8 %14 to i32
  %mul = mul nuw nsw i32 %conv7, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %mul)
  %cmp.not = icmp eq i32 %7, %mul
  br i1 %cmp.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.90) #5
  br label %cleanup19

if.end10:                                         ; preds = %if.end
  %tobool11.not = icmp eq ptr %3, null
  br i1 %tobool11.not, label %if.end10.cleanup19_crit_edge, label %land.lhs.true

if.end10.cleanup19_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup19

land.lhs.true:                                    ; preds = %if.end10
  %format12 = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %format12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %format12, align 8
  %cmp14.not = icmp eq ptr %16, %11
  br i1 %cmp14.not, label %land.lhs.true.cleanup19_crit_edge, label %if.then16

land.lhs.true.cleanup19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup19

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %mode_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 3
  %17 = ptrtoint ptr %mode_changed to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %mode_changed, align 2
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %mode_changed, align 2
  br label %cleanup19

cleanup19:                                        ; preds = %if.then16, %land.lhs.true.cleanup19_crit_edge, %if.end10.cleanup19_crit_edge, %if.then9, %if.then5, %entry.cleanup19_crit_edge
  %retval.1 = phi i32 [ -22, %if.then9 ], [ -22, %if.then5 ], [ 0, %if.then16 ], [ 0, %land.lhs.true.cleanup19_crit_edge ], [ 0, %if.end10.cleanup19_crit_edge ], [ 0, %entry.cleanup19_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcde_display_update(ptr noundef %pipe, ptr nocapture noundef readnone %old_pstate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %state = getelementptr inbounds %struct.drm_crtc, ptr %pipe, i32 0, i32 22
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %event2 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %event2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %event2, align 4
  %state4 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %pipe, i32 0, i32 1, i32 19
  %6 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state4, align 4
  %fb5 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %fb5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb5, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end39_crit_edge, label %if.then

entry.if.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %event2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %event2, align 4
  %11 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pipe, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #5
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state, align 4
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %active, align 1, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool10.not = icmp eq i8 %16, 0
  br i1 %tobool10.not, label %if.then.do.body19_crit_edge, label %land.lhs.true

if.then.do.body19_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body19

land.lhs.true:                                    ; preds = %if.then
  %call = tail call i32 @drm_crtc_vblank_get(ptr noundef %pipe) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %do.body, label %land.lhs.true.do.body19_crit_edge

land.lhs.true.do.body19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body19

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_display_update.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_display_update, %if.then17)) #5
          to label %do.end [label %if.then17], !srcloc !216

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev18 = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_display_update.__UNIQUE_ID_ddebug339, ptr noundef %18, ptr noundef nonnull @.str.92) #5
  br label %do.end

do.end:                                           ; preds = %if.then17, %do.body
  tail call void @drm_crtc_arm_vblank_event(ptr noundef %pipe, ptr noundef nonnull %5) #5
  br label %if.end36

do.body19:                                        ; preds = %land.lhs.true.do.body19_crit_edge, %if.then.do.body19_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_display_update.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_display_update, %if.then31)) #5
          to label %do.end35 [label %if.then31], !srcloc !216

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  %dev32 = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev32, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_display_update.__UNIQUE_ID_ddebug340, ptr noundef %20, ptr noundef nonnull @.str.93) #5
  br label %do.end35

do.end35:                                         ; preds = %if.then31, %do.body19
  tail call void @drm_crtc_send_vblank_event(ptr noundef %pipe, ptr noundef nonnull %5) #5
  br label %if.end36

if.end36:                                         ; preds = %do.end35, %do.end
  %21 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pipe, align 8
  %event_lock38 = getelementptr inbounds %struct.drm_device, ptr %22, i32 0, i32 28
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock38) #5
  br label %if.end39

if.end39:                                         ; preds = %if.end36, %entry.if.end39_crit_edge
  %tobool40.not = icmp eq ptr %9, null
  br i1 %tobool40.not, label %do.end59, label %if.then41

if.then41:                                        ; preds = %if.end39
  %call42 = tail call i32 @drm_fb_cma_get_gem_addr(ptr noundef nonnull %9, ptr noundef %7, i32 noundef 0) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !266
  tail call void @arm_heavy_mb() #5
  %23 = tail call i32 @llvm.bswap.i32(i32 %call42) #5
  %regs.i = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 12
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %23) #5, !srcloc !219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !267
  tail call void @arm_heavy_mb() #5
  %stride.i = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %stride.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %stride.i, align 2
  %conv.i = sext i16 %27 to i32
  %add.i = add i32 %call42, %conv.i
  %28 = tail call i32 @llvm.bswap.i32(i32 %add.i) #5
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %30, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %28) #5, !srcloc !219
  %.b82 = load i1, ptr @mcde_display_update.__print_once, align 1
  br i1 %.b82, label %if.then41.do.end52_crit_edge, label %if.then45

if.then41.do.end52_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end52

if.then45:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mcde_display_update.__print_once, align 1
  %dev49 = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev49, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.94) #8
  br label %do.end52

do.end52:                                         ; preds = %if.then45, %if.then41.do.end52_crit_edge
  %flow_active = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 10
  %33 = ptrtoint ptr %flow_active to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flow_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp53 = icmp eq i32 %34, 0
  br i1 %cmp53, label %if.then54, label %do.end52.if.end61_crit_edge

do.end52.if.end61_crit_edge:                      ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.then54:                                        ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @mcde_start_flow(ptr noundef %1)
  br label %if.end61

do.end59:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  %dev60 = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev60, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.96) #8
  br label %if.end61

if.end61:                                         ; preds = %do.end59, %if.then54, %do.end52.if.end61_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcde_display_enable_vblank(ptr nocapture noundef readonly %pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !268
  tail call void @arm_heavy_mb() #5
  %regs = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 1056964608) #5, !srcloc !219
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcde_display_disable_vblank(ptr nocapture noundef readonly %pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !269
  tail call void @arm_heavy_mb() #5
  %regs = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 0) #5, !srcloc !219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !270
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr7 = getelementptr i8, ptr %5, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 -1) #5, !srcloc !219
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mcde_setup_dsi(ptr nocapture noundef readonly %mcde, ptr nocapture noundef readonly %mode, i32 noundef %cpp, ptr nocapture noundef writeonly %fifo_wtrmrk_lvl, ptr nocapture noundef writeonly %dsi_formatter_frame, ptr nocapture noundef writeonly %dsi_pkt_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %0 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %1 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %2 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vdisplay, align 2
  %conv1 = zext i16 %3 to i32
  %dev = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %mdsi = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 6
  %6 = ptrtoint ptr %mdsi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdsi, align 8
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode_flags, align 8
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.44, ptr @.str.43
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %switch.lookup, label %entry.mipi_dsi_pixel_format_to_bpp.exit_crit_edge

entry.mipi_dsi_pixel_format_to_bpp.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mipi_dsi_pixel_format_to_bpp.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.mcde_setup_dsi, i32 0, i32 %11
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mipi_dsi_pixel_format_to_bpp.exit

mipi_dsi_pixel_format_to_bpp.exit:                ; preds = %switch.lookup, %entry.mipi_dsi_pixel_format_to_bpp.exit_crit_edge
  %retval.0.i180 = phi i32 [ %switch.load, %switch.lookup ], [ -22, %entry.mipi_dsi_pixel_format_to_bpp.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.41, ptr noundef nonnull %cond, i32 noundef %retval.0.i180) #8
  %14 = ptrtoint ptr %mdsi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mdsi, align 8
  %format4 = getelementptr inbounds %struct.mipi_dsi_device, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %format4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %format4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %18 = icmp ult i32 %17, 4
  br i1 %18, label %switch.lookup196, label %mipi_dsi_pixel_format_to_bpp.exit.mipi_dsi_pixel_format_to_bpp.exit185_crit_edge

mipi_dsi_pixel_format_to_bpp.exit.mipi_dsi_pixel_format_to_bpp.exit185_crit_edge: ; preds = %mipi_dsi_pixel_format_to_bpp.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %mipi_dsi_pixel_format_to_bpp.exit185

switch.lookup196:                                 ; preds = %mipi_dsi_pixel_format_to_bpp.exit
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep197 = getelementptr inbounds [4 x i32], ptr @switch.table.mcde_setup_dsi.100, i32 0, i32 %17
  %19 = ptrtoint ptr %switch.gep197 to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load198 = load i32, ptr %switch.gep197, align 4
  br label %mipi_dsi_pixel_format_to_bpp.exit185

mipi_dsi_pixel_format_to_bpp.exit185:             ; preds = %switch.lookup196, %mipi_dsi_pixel_format_to_bpp.exit.mipi_dsi_pixel_format_to_bpp.exit185_crit_edge
  %retval.0.i184 = phi i32 [ %switch.load198, %switch.lookup196 ], [ -2, %mipi_dsi_pixel_format_to_bpp.exit.mipi_dsi_pixel_format_to_bpp.exit185_crit_edge ]
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.46, i32 noundef %cpp, i32 noundef %retval.0.i184) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !271
  tail call void @arm_heavy_mb() #5
  %regs = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 12
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 7347032) #5, !srcloc !219
  %24 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %hdisplay, align 4
  %26 = ptrtoint ptr %mdsi to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mdsi, align 8
  %mode_flags20 = getelementptr inbounds %struct.mipi_dsi_device, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %mode_flags20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mode_flags20, align 8
  %and21 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else, label %if.then

if.then:                                          ; preds = %mipi_dsi_pixel_format_to_bpp.exit185
  call void @__sanitizer_cov_trace_pc() #7
  %30 = tail call i16 @llvm.umin.i16(i16 %25, i16 128)
  br label %do.body35

if.else:                                          ; preds = %mipi_dsi_pixel_format_to_bpp.exit185
  %31 = tail call i16 @llvm.umin.i16(i16 %25, i16 48)
  call void @__sanitizer_cov_trace_const_cmp2(i16 641, i16 %25)
  %cmp4.i = icmp ult i16 %25, 641
  br i1 %cmp4.i, label %if.else.do.body35_crit_edge, label %for.inc.i

if.else.do.body35_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body35

for.inc.i:                                        ; preds = %if.else
  %32 = and i16 %25, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp2.1.i = icmp eq i16 %32, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 1282, i16 %25)
  %cmp4.1.i = icmp ult i16 %25, 1282
  %or.cond.i = and i1 %cmp4.1.i, %cmp2.1.i
  br i1 %or.cond.i, label %for.inc.i.do.body35_crit_edge, label %for.inc.1.i

for.inc.i.do.body35_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body35

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %rem.23.i193 = urem i16 %25, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem.23.i193)
  %cmp2.2.i = icmp eq i16 %rem.23.i193, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 1923, i16 %25)
  %cmp4.2.i = icmp ult i16 %25, 1923
  %or.cond4.i = and i1 %cmp4.2.i, %cmp2.2.i
  %spec.select.i = select i1 %or.cond4.i, i32 3, i32 1
  br label %do.body35

do.body35:                                        ; preds = %for.inc.1.i, %for.inc.i.do.body35_crit_edge, %if.else.do.body35_crit_edge, %if.then
  %pkt_div.0 = phi i32 [ 1, %if.then ], [ 1, %if.else.do.body35_crit_edge ], [ 2, %for.inc.i.do.body35_crit_edge ], [ %spec.select.i, %for.inc.1.i ]
  %fifo_wtrmrk.0.in = phi i16 [ %30, %if.then ], [ %31, %if.else.do.body35_crit_edge ], [ %31, %for.inc.i.do.body35_crit_edge ], [ %31, %for.inc.1.i ]
  %fifo_wtrmrk.0 = zext i16 %fifo_wtrmrk.0.in to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_setup_dsi.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_setup_dsi, %if.then41)) #5
          to label %do.body46 [label %if.then41], !srcloc !216

if.then41:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_setup_dsi.__UNIQUE_ID_ddebug331, ptr noundef %34, ptr noundef nonnull @.str.48, i32 noundef %fifo_wtrmrk.0) #5
  br label %do.body46

do.body46:                                        ; preds = %if.then41, %do.body35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_setup_dsi.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_setup_dsi, %if.then58)) #5
          to label %do.end62 [label %if.then58], !srcloc !216

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_setup_dsi.__UNIQUE_ID_ddebug332, ptr noundef %36, ptr noundef nonnull @.str.49, i32 noundef %pkt_div.0) #5
  br label %do.end62

do.end62:                                         ; preds = %if.then58, %do.body46
  %mul = mul nsw i32 %retval.0.i184, %conv
  %div63 = udiv i32 %mul, %pkt_div.0
  %37 = ptrtoint ptr %mdsi to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mdsi, align 8
  %mode_flags65 = getelementptr inbounds %struct.mipi_dsi_device, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %mode_flags65 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mode_flags65, align 8
  %and66 = and i32 %40, 1
  %41 = xor i32 %and66, 1
  %spec.select = add i32 %41, %div63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_setup_dsi.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_setup_dsi, %if.then82)) #5
          to label %do.body87 [label %if.then82], !srcloc !216

if.then82:                                        ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_setup_dsi.__UNIQUE_ID_ddebug333, ptr noundef %43, ptr noundef nonnull @.str.50, i32 noundef %spec.select, i32 noundef %pkt_div.0) #5
  br label %do.body87

do.body87:                                        ; preds = %if.then82, %do.end62
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_setup_dsi.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_setup_dsi, %if.then99)) #5
          to label %do.end109 [label %if.then99], !srcloc !216

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  %46 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %hdisplay, align 4
  %conv102 = zext i16 %47 to i32
  %48 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %vdisplay, align 2
  %conv104 = zext i16 %49 to i32
  %mul105 = mul i32 %conv102, %cpp
  %mul106 = mul i32 %mul105, %conv104
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_setup_dsi.__UNIQUE_ID_ddebug334, ptr noundef %45, ptr noundef nonnull @.str.51, i32 noundef %mul106) #5
  br label %do.end109

do.end109:                                        ; preds = %if.then99, %do.body87
  %mul110 = mul nuw nsw i32 %pkt_div.0, %conv1
  %mul111 = mul i32 %mul110, %spec.select
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_setup_dsi.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_setup_dsi, %if.then124)) #5
          to label %do.end128 [label %if.then124], !srcloc !216

if.then124:                                       ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_setup_dsi.__UNIQUE_ID_ddebug335, ptr noundef %51, ptr noundef nonnull @.str.52, i32 noundef %mul111) #5
  br label %do.end128

do.end128:                                        ; preds = %if.then124, %do.end109
  %52 = ptrtoint ptr %fifo_wtrmrk_lvl to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %fifo_wtrmrk.0, ptr %fifo_wtrmrk_lvl, align 4
  %53 = ptrtoint ptr %dsi_pkt_size to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %spec.select, ptr %dsi_pkt_size, align 4
  %54 = ptrtoint ptr %dsi_formatter_frame to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %mul111, ptr %dsi_formatter_frame, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mcde_configure_overlay(ptr nocapture noundef readonly %mcde, ptr nocapture noundef readonly %mode, i32 noundef %format, i32 noundef %cpp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %0 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %1 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %2 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vdisplay, align 2
  %conv6 = zext i16 %3 to i32
  %shl7 = shl nuw i32 %conv6, 16
  %or = or i32 %shl7, %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !272
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %regs = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 12
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #5, !srcloc !219
  %7 = zext i32 %format to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %format, label %do.end16 [
    i32 875713089, label %entry.sw.epilog17_crit_edge
    i32 875708993, label %entry.sw.epilog17_crit_edge2
    i32 842093121, label %entry.sw.epilog17_crit_edge3
    i32 842089025, label %entry.sw.epilog17_crit_edge4
    i32 892424792, label %entry.sw.epilog17_crit_edge5
    i32 892420696, label %entry.sw.epilog17_crit_edge6
    i32 875713112, label %entry.sw.bb12_crit_edge
    i32 875709016, label %entry.sw.bb12_crit_edge7
    i32 875710290, label %entry.sw.bb12_crit_edge8
    i32 875710274, label %entry.sw.bb12_crit_edge9
    i32 909199186, label %entry.sw.bb12_crit_edge10
    i32 909199170, label %entry.sw.bb12_crit_edge11
    i32 909202777, label %entry.sw.bb12_crit_edge12
  ]

entry.sw.bb12_crit_edge12:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb12

entry.sw.bb12_crit_edge11:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb12

entry.sw.bb12_crit_edge10:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb12

entry.sw.bb12_crit_edge9:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb12

entry.sw.bb12_crit_edge8:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb12

entry.sw.bb12_crit_edge7:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb12

entry.sw.bb12_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb12

entry.sw.epilog17_crit_edge6:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog17

entry.sw.epilog17_crit_edge5:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog17

entry.sw.epilog17_crit_edge4:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog17

entry.sw.epilog17_crit_edge3:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog17

entry.sw.epilog17_crit_edge2:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog17

entry.sw.epilog17_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog17

sw.bb12:                                          ; preds = %entry.sw.bb12_crit_edge, %entry.sw.bb12_crit_edge7, %entry.sw.bb12_crit_edge8, %entry.sw.bb12_crit_edge9, %entry.sw.bb12_crit_edge10, %entry.sw.bb12_crit_edge11, %entry.sw.bb12_crit_edge12
  br label %sw.epilog17

do.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.60, i32 noundef %format) #8
  br label %sw.epilog17

sw.epilog17:                                      ; preds = %do.end16, %sw.bb12, %entry.sw.epilog17_crit_edge, %entry.sw.epilog17_crit_edge2, %entry.sw.epilog17_crit_edge3, %entry.sw.epilog17_crit_edge4, %entry.sw.epilog17_crit_edge5, %entry.sw.epilog17_crit_edge6
  %val.0 = phi i32 [ 510, %do.end16 ], [ 1022, %sw.bb12 ], [ 510, %entry.sw.epilog17_crit_edge ], [ 510, %entry.sw.epilog17_crit_edge2 ], [ 510, %entry.sw.epilog17_crit_edge3 ], [ 510, %entry.sw.epilog17_crit_edge4 ], [ 510, %entry.sw.epilog17_crit_edge5 ], [ 510, %entry.sw.epilog17_crit_edge6 ]
  %switch.tableidx = add i32 %cpp, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 3
  br i1 %10, label %switch.lookup, label %sw.epilog17.do.body23_crit_edge

sw.epilog17.do.body23_crit_edge:                  ; preds = %sw.epilog17
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body23

switch.lookup:                                    ; preds = %sw.epilog17
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.mcde_configure_overlay, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %do.body23

do.body23:                                        ; preds = %switch.lookup, %sw.epilog17.do.body23_crit_edge
  %pixel_fetcher_watermark.0 = phi i32 [ %switch.load, %switch.lookup ], [ 48, %sw.epilog17.do.body23_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_configure_overlay.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_configure_overlay, %if.then)) #5
          to label %do.end28 [label %if.then], !srcloc !216

if.then:                                          ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  %dev26 = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 1
  %12 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_configure_overlay.__UNIQUE_ID_ddebug326, ptr noundef %13, ptr noundef nonnull @.str.63, i32 noundef %pixel_fetcher_watermark.0) #5
  br label %do.end28

do.end28:                                         ; preds = %if.then, %do.body23
  %shl29 = shl nuw nsw i32 %pixel_fetcher_watermark.0, 16
  %or30 = or i32 %shl29, %val.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !273
  tail call void @arm_heavy_mb() #5
  %14 = tail call i32 @llvm.bswap.i32(i32 %or30)
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %add.ptr35 = getelementptr i8, ptr %16, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %14) #5, !srcloc !219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !274
  tail call void @arm_heavy_mb() #5
  %stride = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 8
  %17 = ptrtoint ptr %stride to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %stride, align 2
  %conv39 = sext i16 %18 to i32
  %19 = tail call i32 @llvm.bswap.i32(i32 %conv39)
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr41 = getelementptr i8, ptr %21, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %19) #5, !srcloc !219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !275
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %add.ptr46 = getelementptr i8, ptr %23, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 0) #5, !srcloc !219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !276
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %add.ptr55 = getelementptr i8, ptr %25, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 16789555) #5, !srcloc !219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !277
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %add.ptr61 = getelementptr i8, ptr %27, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 0) #5, !srcloc !219
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mcde_configure_fifo(ptr noundef %mcde, i32 noundef %fmt, i32 noundef %fifo_wtrmrk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %fmt to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %fmt, label %entry.do.body_crit_edge [
    i32 0, label %sw.bb2
    i32 1, label %sw.bb4
    i32 2, label %sw.bb7
    i32 3, label %sw.bb10
    i32 4, label %sw.bb13
    i32 5, label %sw.bb16
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %fifo_wtrmrk, 2097152
  br label %do.body

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or6 = or i32 %fifo_wtrmrk, 2162688
  br label %do.body

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or9 = or i32 %fifo_wtrmrk, 2228224
  br label %do.body

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or12 = or i32 %fifo_wtrmrk, 2293760
  br label %do.body

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or15 = or i32 %fifo_wtrmrk, 2359296
  br label %do.body

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or18 = or i32 %fifo_wtrmrk, 2424832
  br label %do.body

do.body:                                          ; preds = %sw.bb16, %sw.bb13, %sw.bb10, %sw.bb7, %sw.bb4, %sw.bb2, %entry.do.body_crit_edge
  %val.0 = phi i32 [ %or18, %sw.bb16 ], [ %or15, %sw.bb13 ], [ %or12, %sw.bb10 ], [ %or9, %sw.bb7 ], [ %or6, %sw.bb4 ], [ %or, %sw.bb2 ], [ %fifo_wtrmrk, %entry.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !278
  tail call void @arm_heavy_mb() #5
  %1 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %regs = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 12
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 2180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #5, !srcloc !219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !279
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr30 = getelementptr i8, ptr %5, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 67174144) #5, !srcloc !219
  %fifo_crx1_lock = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %fifo_crx1_lock) #5
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr32 = getelementptr i8, ptr %7, i32 2052
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #5, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !280
  %dpi_output = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 7
  %9 = ptrtoint ptr %dpi_output to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dpi_output, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %do.body.do.body56_crit_edge, label %if.then

do.body.do.body56_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body56

if.then:                                          ; preds = %do.body
  %bridge = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 3
  %11 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bridge, align 4
  %call34 = tail call ptr @drm_panel_bridge_connector(ptr noundef %12) #5
  %num_bus_formats = getelementptr inbounds %struct.drm_connector, ptr %call34, i32 0, i32 20, i32 7
  %13 = ptrtoint ptr %num_bus_formats to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_bus_formats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool35.not = icmp eq i32 %14, 0
  br i1 %tobool35.not, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 1
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.69) #8
  br label %do.body56

if.end:                                           ; preds = %if.then
  %bus_formats = getelementptr inbounds %struct.drm_connector, ptr %call34, i32 0, i32 20, i32 6
  %17 = ptrtoint ptr %bus_formats to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus_formats, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4106, i32 %20)
  %phi.cmp = icmp eq i32 %20, 4106
  br i1 %phi.cmp, label %if.end.do.body56_crit_edge, label %do.end47

if.end.do.body56_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body56

do.end47:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev48 = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 1
  %21 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev48, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.72) #8
  br label %do.body56

do.body56:                                        ; preds = %do.end47, %if.end.do.body56_crit_edge, %if.end.thread, %do.body.do.body56_crit_edge
  %.sink4 = phi i32 [ -503439361, %if.end.thread ], [ -503439361, %if.end.do.body56_crit_edge ], [ -503439361, %do.end47 ], [ -7169, %do.body.do.body56_crit_edge ]
  %.sink = phi i32 [ 302055424, %if.end.thread ], [ 302055424, %if.end.do.body56_crit_edge ], [ 302055424, %do.end47 ], [ 5120, %do.body.do.body56_crit_edge ]
  %23 = tail call i32 @llvm.bswap.i32(i32 %8)
  %and413 = and i32 %23, %.sink4
  %val.1 = or i32 %and413, %.sink
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !281
  tail call void @arm_heavy_mb() #5
  %24 = tail call i32 @llvm.bswap.i32(i32 %val.1)
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %add.ptr60 = getelementptr i8, ptr %26, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %24) #5, !srcloc !219
  tail call void @_raw_spin_unlock(ptr noundef %fifo_crx1_lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcde_dsi_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_panel_bridge_connector(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mcde_disable_fifo(ptr noundef %mcde) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flow_lock = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %flow_lock) #5
  %regs = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 12
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2048
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !282
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !283
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr7 = getelementptr i8, ptr %5, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %3) #5, !srcloc !219
  %flow_active = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 10
  %6 = ptrtoint ptr %flow_active to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %flow_active, align 4
  tail call void @_raw_spin_unlock(ptr noundef %flow_lock) #5
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %timeout.0 = phi i32 [ 100, %entry ], [ %dec, %while.body.while.cond_crit_edge ]
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr12 = getelementptr i8, ptr %8, i32 2048
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #5, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !284
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool17.not = icmp eq i32 %10, 0
  br i1 %tobool17.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body:                                       ; preds = %while.cond
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #5
  %dec = add nsw i32 %timeout.0, -1
  %tobool18.not = icmp eq i32 %dec, 0
  br i1 %tobool18.not, label %do.end22, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

do.end22:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev23 = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 1
  %11 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.58, i32 noundef 65) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %while.cond.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcde_dsi_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_cma_get_gem_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_arm_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mcde_start_flow(ptr noundef %mcde) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flow_mode = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 9
  %0 = ptrtoint ptr %flow_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flow_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mdsi = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 6
  %2 = ptrtoint ptr %mdsi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdsi, align 8
  tail call void @mcde_dsi_te_request(ptr noundef %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flow_lock.i = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %flow_lock.i) #5
  %regs.i = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 12
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 2048
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !243
  %7 = or i32 %6, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !244
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %9, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %7) #5, !srcloc !219
  %flow_active.i = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 10
  %10 = ptrtoint ptr %flow_active.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flow_active.i, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %flow_active.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %flow_lock.i) #5
  %12 = ptrtoint ptr %flow_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flow_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp2 = icmp eq i32 %13, 0
  br i1 %cmp2, label %do.body, label %if.end.do.body5_crit_edge

if.end.do.body5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body5

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !285
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 1548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #5, !srcloc !219
  tail call fastcc void @mcde_disable_fifo(ptr noundef %mcde)
  br label %do.body5

do.body5:                                         ; preds = %do.body, %if.end.do.body5_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_start_flow.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_start_flow, %if.then8)) #5
          to label %do.end10 [label %if.then8], !srcloc !216

if.then8:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 1
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_start_flow.__UNIQUE_ID_ddebug338, ptr noundef %17, ptr noundef nonnull @.str.99) #5
  br label %do.end10

do.end10:                                         ; preds = %if.then8, %do.body5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcde_dsi_te_request(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #2

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !38, !40, !42, !43, !44, !45, !46, !48, !49, !50, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !87, !88, !90, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !169, !171, !172, !173, !174, !176, !177, !178, !180, !182, !184, !185, !186, !188, !189, !191, !192, !193, !194, !196, !197, !198, !200, !201}
!llvm.module.flags = !{!202, !203, !204, !205, !206, !207, !208, !209}
!llvm.ident = !{!210}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 103, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mcde_display_irq.__UNIQUE_ID_ddebug319, !1, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 115, i32 3}
!8 = !{ptr @mcde_display_irq.__UNIQUE_ID_ddebug320, !7, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 119, i32 3}
!11 = !{ptr @mcde_display_irq.__UNIQUE_ID_ddebug321, !10, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 123, i32 3}
!14 = !{ptr @mcde_display_irq.__UNIQUE_ID_ddebug322, !13, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 125, i32 3}
!17 = !{ptr @mcde_display_irq.__UNIQUE_ID_ddebug323, !16, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 127, i32 3}
!20 = !{ptr @mcde_display_irq.__UNIQUE_ID_ddebug324, !19, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 129, i32 3}
!23 = !{ptr @mcde_display_irq.__UNIQUE_ID_ddebug325, !22, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 136, i32 3}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mcde_display_irq._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @mcde_display_irq._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 140, i32 3}
!32 = !{ptr @mcde_display_irq._entry.13, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mcde_display_irq._entry_ptr.15, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @mcde_display_init.formats, !35, !"formats", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 1488, i32 19}
!36 = !{ptr @__ksymtab_mcde_display_init, !37, !"__ksymtab_mcde_display_init", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 1521, i32 1}
!38 = !{ptr @mcde_display_funcs, !39, !"mcde_display_funcs", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 1475, i32 45}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 1171, i32 3}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @mcde_display_enable._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @mcde_display_enable._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 1175, i32 2}
!48 = !{ptr @mcde_display_enable._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @mcde_display_enable._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 1191, i32 2}
!52 = !{ptr @mcde_display_enable.__UNIQUE_ID_ddebug336, !51, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 1231, i32 4}
!55 = !{ptr @mcde_display_enable._entry.23, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @mcde_display_enable._entry_ptr.25, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 1235, i32 4}
!59 = !{ptr @mcde_display_enable._entry.26, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @mcde_display_enable._entry_ptr.28, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 1238, i32 3}
!63 = !{ptr @mcde_display_enable._entry.29, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @mcde_display_enable._entry_ptr.31, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 1288, i32 3}
!67 = !{ptr @mcde_display_enable.__UNIQUE_ID_ddebug337, !66, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 1296, i32 2}
!70 = !{ptr @mcde_display_enable._entry.33, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @mcde_display_enable._entry_ptr.35, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 988, i32 2}
!74 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @mcde_setup_dpi._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @mcde_setup_dpi._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 990, i32 2}
!79 = !{ptr @mcde_setup_dpi._entry.38, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @mcde_setup_dpi._entry_ptr.40, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 1082, i32 2}
!83 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @mcde_setup_dsi._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @mcde_setup_dsi._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 1088, i32 2}
!90 = !{ptr @mcde_setup_dsi._entry.45, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @mcde_setup_dsi._entry_ptr.47, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 1127, i32 2}
!94 = !{ptr @mcde_setup_dsi.__UNIQUE_ID_ddebug331, !93, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!95 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 1129, i32 2}
!97 = !{ptr @mcde_setup_dsi.__UNIQUE_ID_ddebug332, !96, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 1137, i32 2}
!100 = !{ptr @mcde_setup_dsi.__UNIQUE_ID_ddebug333, !99, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 1139, i32 2}
!103 = !{ptr @mcde_setup_dsi.__UNIQUE_ID_ddebug334, !102, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 1143, i32 2}
!106 = !{ptr @mcde_setup_dsi.__UNIQUE_ID_ddebug335, !105, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 947, i32 3}
!109 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @mcde_drain_pipe._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @mcde_drain_pipe._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 884, i32 3}
!114 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @mcde_disable_fifo._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @mcde_disable_fifo._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 903, i32 4}
!119 = !{ptr @mcde_disable_fifo._entry.57, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @mcde_disable_fifo._entry_ptr.59, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 323, i32 3}
!123 = !{ptr @.str.61, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @mcde_configure_extsrc._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @mcde_configure_extsrc._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 431, i32 3}
!128 = !{ptr @mcde_configure_overlay._entry, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @mcde_configure_overlay._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 459, i32 2}
!132 = !{ptr @mcde_configure_overlay.__UNIQUE_ID_ddebug326, !131, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!133 = !{ptr @.str.64, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 570, i32 3}
!135 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @mcde_configure_channel._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @mcde_configure_channel._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 611, i32 3}
!140 = !{ptr @mcde_configure_channel._entry.66, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @mcde_configure_channel._entry_ptr.68, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.69, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 713, i32 4}
!144 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @mcde_configure_fifo._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @mcde_configure_fifo._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.72, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 733, i32 4}
!149 = !{ptr @mcde_configure_fifo._entry.71, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @mcde_configure_fifo._entry_ptr.73, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.74, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 789, i32 3}
!153 = !{ptr @.str.75, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @mcde_configure_dsi_formatter._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @mcde_configure_dsi_formatter._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 810, i32 3}
!158 = !{ptr @mcde_configure_dsi_formatter._entry.76, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @mcde_configure_dsi_formatter._entry_ptr.78, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.80, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 820, i32 3}
!162 = !{ptr @mcde_configure_dsi_formatter._entry.79, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @mcde_configure_dsi_formatter._entry_ptr.81, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.82, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 856, i32 3}
!166 = !{ptr @.str.83, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @mcde_enable_fifo._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @mcde_enable_fifo._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.84, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 1330, i32 3}
!171 = !{ptr @.str.85, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @mcde_display_disable._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @mcde_display_disable._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.87, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 1334, i32 2}
!176 = !{ptr @mcde_display_disable._entry.86, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @mcde_display_disable._entry_ptr.88, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.89, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 171, i32 4}
!180 = !{ptr @.str.90, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 180, i32 4}
!182 = !{ptr @.str.91, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 1410, i32 4}
!184 = !{ptr @.str.92, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @mcde_display_update.__UNIQUE_ID_ddebug339, !183, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!186 = !{ptr @.str.93, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 1413, i32 4}
!188 = !{ptr @mcde_display_update.__UNIQUE_ID_ddebug340, !187, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!189 = distinct !{null, !190, !"__print_once", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 1427, i32 3}
!191 = !{ptr @.str.94, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @mcde_display_update._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @mcde_display_update._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.96, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 1440, i32 3}
!196 = !{ptr @mcde_display_update._entry.95, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @mcde_display_update._entry_ptr.97, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.98, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/mcde/mcde_display.c", i32 1368, i32 2}
!200 = !{ptr @.str.99, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @mcde_start_flow.__UNIQUE_ID_ddebug338, !199, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!202 = !{i32 1, !"wchar_size", i32 2}
!203 = !{i32 1, !"min_enum_size", i32 4}
!204 = !{i32 8, !"branch-target-enforcement", i32 0}
!205 = !{i32 8, !"sign-return-address", i32 0}
!206 = !{i32 8, !"sign-return-address-all", i32 0}
!207 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!208 = !{i32 7, !"uwtable", i32 1}
!209 = !{i32 7, !"frame-pointer", i32 2}
!210 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!211 = !{i64 3138612}
!212 = !{i64 2156905893}
!213 = !{i64 2156906414}
!214 = !{i64 2156906935}
!215 = !{i8 0, i8 2}
!216 = !{i64 2148761065, i64 2148761070, i64 2148761083, i64 2148761127, i64 2148761161, i64 2148761182}
!217 = !{i64 2156909580}
!218 = !{i64 2156909893}
!219 = !{i64 3138194}
!220 = !{i64 2156924047}
!221 = !{i64 2156926131}
!222 = !{i64 2156928275}
!223 = !{i64 2156928697}
!224 = !{i64 2156929101}
!225 = !{i64 2156929505}
!226 = !{i64 2156929918}
!227 = !{i64 2156930358}
!228 = !{i64 2156930798}
!229 = !{!"auto-init"}
!230 = !{i64 2157012864}
!231 = !{i64 2157013277}
!232 = !{i64 2156980411}
!233 = !{i64 2156980821}
!234 = !{i64 2156981232}
!235 = !{i64 2156981644}
!236 = !{i64 2156982061}
!237 = !{i64 2156982479}
!238 = !{i64 2156982914}
!239 = !{i64 2156983324}
!240 = !{i64 2156983728}
!241 = !{i64 2156984484}
!242 = !{i64 2156974089}
!243 = !{i64 2156968180}
!244 = !{i64 2156968474}
!245 = !{i64 2156976212}
!246 = !{i64 2156935845}
!247 = !{i64 2156936316}
!248 = !{i64 2156947395}
!249 = !{i64 2156947789}
!250 = !{i64 2156948344}
!251 = !{i64 2156948732}
!252 = !{i64 2156949115}
!253 = !{i64 2156951473}
!254 = !{i64 2156963499}
!255 = !{i64 2156963902}
!256 = !{i64 2156964332}
!257 = !{i64 2156964733}
!258 = !{i64 2156965121}
!259 = !{i64 2156965510}
!260 = !{i64 2156965895}
!261 = !{i64 2157021315}
!262 = !{i64 2157022017}
!263 = !{i64 2157022330}
!264 = !{i64 2157025346}
!265 = !{i64 2157025745}
!266 = !{i64 2157035041}
!267 = !{i64 2157035512}
!268 = !{i64 2157046998}
!269 = !{i64 2157048532}
!270 = !{i64 2157048945}
!271 = !{i64 2156988810}
!272 = !{i64 2156937108}
!273 = !{i64 2156943450}
!274 = !{i64 2156943850}
!275 = !{i64 2156944265}
!276 = !{i64 2156944745}
!277 = !{i64 2156945135}
!278 = !{i64 2156952428}
!279 = !{i64 2156952901}
!280 = !{i64 2156953557}
!281 = !{i64 2156957380}
!282 = !{i64 2156970770}
!283 = !{i64 2156971064}
!284 = !{i64 2156971715}
!285 = !{i64 2157032286}
