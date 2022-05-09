; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/mcde/mcde_dsi.c_pt.bc'
source_filename = "../drivers/gpu/drm/mcde/mcde_dsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mipi_dsi_host_ops = type { ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
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
%struct.mcde_dsi = type { ptr, ptr, %struct.drm_bridge, ptr, ptr, %struct.mipi_dsi_host, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mipi_dsi_host = type { ptr, ptr, %struct.list_head }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mcde = type { %struct.drm_device, ptr, ptr, ptr, ptr, %struct.drm_simple_display_pipe, ptr, i8, i16, i32, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.87 = type { i32, ptr }
%struct.drm_simple_display_pipe = type { %struct.drm_crtc, %struct.drm_plane, %struct.drm_encoder, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.mipi_dsi_msg = type { i8, i8, i16, i32, ptr, i32, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@mcde_dsi_irq.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mcde_drm\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mcde_dsi_irq\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/mcde/mcde_dsi.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s called\0A\00", [21 x i8] zeroinitializer }, align 32
@mcde_dsi_irq.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 19, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DSI_DIRECT_CMD_STS_FLAG = %08x\0A\00", [32 x i8] zeroinitializer }, align 32
@mcde_dsi_irq.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"direct command write completed\0A\00", [32 x i8] zeroinitializer }, align 32
@mcde_dsi_irq.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"direct command TE received\0A\00", [36 x i8] zeroinitializer }, align 32
@mcde_dsi_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 87, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"direct command ACK ERR received\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mcde_dsi_irq._entry_ptr = internal global ptr @mcde_dsi_irq._entry, section ".printk_index", align 4
@mcde_dsi_irq._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 89, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"direct command read ERR received\0A\00", [62 x i8] zeroinitializer }, align 32
@mcde_dsi_irq._entry_ptr.12 = internal global ptr @mcde_dsi_irq._entry.10, section ".printk_index", align 4
@mcde_dsi_irq.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.13, i8 0, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DSI_CMD_MODE_STS_FLAG = %08x\0A\00", [34 x i8] zeroinitializer }, align 32
@mcde_dsi_irq.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.14, i8 0, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CMD mode no TE\0A\00", [16 x i8] zeroinitializer }, align 32
@mcde_dsi_irq.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.15, i8 0, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CMD mode TE miss\0A\00", [46 x i8] zeroinitializer }, align 32
@mcde_dsi_irq._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 103, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CMD mode SD1 underrun\0A\00", [41 x i8] zeroinitializer }, align 32
@mcde_dsi_irq._entry_ptr.18 = internal global ptr @mcde_dsi_irq._entry.16, section ".printk_index", align 4
@mcde_dsi_irq._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 105, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CMD mode SD2 underrun\0A\00", [41 x i8] zeroinitializer }, align 32
@mcde_dsi_irq._entry_ptr.21 = internal global ptr @mcde_dsi_irq._entry.19, section ".printk_index", align 4
@mcde_dsi_irq._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.1, ptr @.str.2, i32 107, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CMD mode unwanted RD\0A\00", [42 x i8] zeroinitializer }, align 32
@mcde_dsi_irq._entry_ptr.24 = internal global ptr @mcde_dsi_irq._entry.22, section ".printk_index", align 4
@mcde_dsi_irq.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.25, i8 0, i8 28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DSI_DIRECT_CMD_RD_STS_FLAG = %08x\0A\00", [61 x i8] zeroinitializer }, align 32
@mcde_dsi_irq.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.26, i8 0, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DSI_TG_STS_FLAG = %08x\0A\00", [40 x i8] zeroinitializer }, align 32
@mcde_dsi_irq.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.27, i8 0, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DSI_VID_MODE_STS_FLAG = %08x\0A\00", [34 x i8] zeroinitializer }, align 32
@mcde_dsi_irq.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.28, i8 0, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"VID mode VSG running\0A\00", [42 x i8] zeroinitializer }, align 32
@mcde_dsi_irq._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.1, ptr @.str.2, i32 126, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"VID mode missing data\0A\00", [41 x i8] zeroinitializer }, align 32
@mcde_dsi_irq._entry_ptr.31 = internal global ptr @mcde_dsi_irq._entry.29, section ".printk_index", align 4
@mcde_dsi_irq._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.1, ptr @.str.2, i32 128, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"VID mode missing HSYNC\0A\00", [40 x i8] zeroinitializer }, align 32
@mcde_dsi_irq._entry_ptr.34 = internal global ptr @mcde_dsi_irq._entry.32, section ".printk_index", align 4
@mcde_dsi_irq._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.1, ptr @.str.2, i32 130, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"VID mode missing VSYNC\0A\00", [40 x i8] zeroinitializer }, align 32
@mcde_dsi_irq._entry_ptr.37 = internal global ptr @mcde_dsi_irq._entry.35, section ".printk_index", align 4
@mcde_dsi_irq._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.1, ptr @.str.2, i32 132, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"VID mode less bytes than expected between two HSYNC\0A\00", [43 x i8] zeroinitializer }, align 32
@mcde_dsi_irq._entry_ptr.40 = internal global ptr @mcde_dsi_irq._entry.38, section ".printk_index", align 4
@mcde_dsi_irq._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.1, ptr @.str.2, i32 134, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"VID mode less lines than expected between two VSYNC\0A\00", [43 x i8] zeroinitializer }, align 32
@mcde_dsi_irq._entry_ptr.43 = internal global ptr @mcde_dsi_irq._entry.41, section ".printk_index", align 4
@mcde_dsi_irq._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.1, ptr @.str.2, i32 138, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"VID mode read/write error\0A\00", [37 x i8] zeroinitializer }, align 32
@mcde_dsi_irq._entry_ptr.46 = internal global ptr @mcde_dsi_irq._entry.44, section ".printk_index", align 4
@mcde_dsi_irq._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.1, ptr @.str.2, i32 140, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"VID mode received packets differ from expected size\0A\00", [43 x i8] zeroinitializer }, align 32
@mcde_dsi_irq._entry_ptr.49 = internal global ptr @mcde_dsi_irq._entry.47, section ".printk_index", align 4
@mcde_dsi_irq._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.1, ptr @.str.2, i32 142, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VID mode VSG in recovery mode\0A\00", [33 x i8] zeroinitializer }, align 32
@mcde_dsi_irq._entry_ptr.52 = internal global ptr @mcde_dsi_irq._entry.50, section ".printk_index", align 4
@mcde_dsi_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 881, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to set LP clock rate %lu Hz\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mcde_dsi_enable\00", [16 x i8] zeroinitializer }, align 32
@mcde_dsi_enable._entry_ptr = internal global ptr @mcde_dsi_enable._entry, section ".printk_index", align 4
@mcde_dsi_enable._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 887, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to set HS clock rate %lu Hz\0A\00", [60 x i8] zeroinitializer }, align 32
@mcde_dsi_enable._entry_ptr.57 = internal global ptr @mcde_dsi_enable._entry.55, section ".printk_index", align 4
@mcde_dsi_enable._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.2, i32 892, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable LP clock\0A\00", [37 x i8] zeroinitializer }, align 32
@mcde_dsi_enable._entry_ptr.60 = internal global ptr @mcde_dsi_enable._entry.58, section ".printk_index", align 4
@mcde_dsi_enable._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.54, ptr @.str.2, i32 895, ptr @.str.63, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DSI LP clock rate %lu Hz\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mcde_dsi_enable._entry_ptr.64 = internal global ptr @mcde_dsi_enable._entry.61, section ".printk_index", align 4
@mcde_dsi_enable._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.54, ptr @.str.2, i32 898, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable HS clock\0A\00", [37 x i8] zeroinitializer }, align 32
@mcde_dsi_enable._entry_ptr.67 = internal global ptr @mcde_dsi_enable._entry.65, section ".printk_index", align 4
@mcde_dsi_enable._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.54, ptr @.str.2, i32 901, ptr @.str.63, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DSI HS clock rate %lu Hz\0A\00", [38 x i8] zeroinitializer }, align 32
@mcde_dsi_enable._entry_ptr.70 = internal global ptr @mcde_dsi_enable._entry.68, section ".printk_index", align 4
@mcde_dsi_enable._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.54, ptr @.str.2, i32 955, ptr @.str.63, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"enabled MCDE DSI master\0A\00", [39 x i8] zeroinitializer }, align 32
@mcde_dsi_enable._entry_ptr.73 = internal global ptr @mcde_dsi_enable._entry.71, section ".printk_index", align 4
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mcde-dsi\00", [23 x i8] zeroinitializer }, align 32
@mcde_dsi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ste,mcde-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mcde_dsi_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mcde_dsi_probe, ptr @mcde_dsi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.74, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mcde_dsi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@mcde_dsi_start.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.76, i8 0, i8 -62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mcde_dsi_start\00", [17 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"UI value: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@mcde_dsi_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 832, ptr @.str.78, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DSI lanes did not start up\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mcde_dsi_start._entry_ptr = internal global ptr @mcde_dsi_start._entry, section ".printk_index", align 4
@mcde_dsi_start._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.2, i32 852, ptr @.str.63, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DSI link enabled\0A\00", [46 x i8] zeroinitializer }, align 32
@mcde_dsi_start._entry_ptr.81 = internal global ptr @mcde_dsi_start._entry.79, section ".printk_index", align 4
@mcde_dsi_setup_video_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 471, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unknown pixel mode\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mcde_dsi_setup_video_mode\00", [38 x i8] zeroinitializer }, align 32
@mcde_dsi_setup_video_mode._entry_ptr = internal global ptr @mcde_dsi_setup_video_mode._entry, section ".printk_index", align 4
@mcde_dsi_setup_video_mode._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.2, i32 547, ptr @.str.63, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hfp negative, set to 0\0A\00", [40 x i8] zeroinitializer }, align 32
@mcde_dsi_setup_video_mode._entry_ptr.86 = internal global ptr @mcde_dsi_setup_video_mode._entry.84, section ".printk_index", align 4
@mcde_dsi_setup_video_mode._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.83, ptr @.str.2, i32 551, ptr @.str.63, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hbp negative, set to 0\0A\00", [40 x i8] zeroinitializer }, align 32
@mcde_dsi_setup_video_mode._entry_ptr.89 = internal global ptr @mcde_dsi_setup_video_mode._entry.87, section ".printk_index", align 4
@mcde_dsi_setup_video_mode._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.83, ptr @.str.2, i32 555, ptr @.str.63, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hsa negative, set to 0\0A\00", [40 x i8] zeroinitializer }, align 32
@mcde_dsi_setup_video_mode._entry_ptr.92 = internal global ptr @mcde_dsi_setup_video_mode._entry.90, section ".printk_index", align 4
@mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.93, i8 0, i8 -117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"hfp: %u, hbp: %u, hsa: %u bytes\0A\00", [63 x i8] zeroinitializer }, align 32
@mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.94, i8 0, i8 -113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"RGB length, visible area on a line: %u bytes\0A\00", [50 x i8] zeroinitializer }, align 32
@mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.95, i8 0, i8 -111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"picoseconds between two pixels: %llu\0A\00", [58 x i8] zeroinitializer }, align 32
@mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.96, i8 0, i8 -106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"picoseconds per line: %llu\0A\00", [36 x i8] zeroinitializer }, align 32
@mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.97, i8 0, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"calculated bytes per line: %llu @ %d Hz with HS %lu Hz\0A\00", [40 x i8] zeroinitializer }, align 32
@mcde_dsi_setup_video_mode._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.83, ptr @.str.2, i32 635, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"blkline_pck too big %d bytes\0A\00", [34 x i8] zeroinitializer }, align 32
@mcde_dsi_setup_video_mode._entry_ptr.100 = internal global ptr @mcde_dsi_setup_video_mode._entry.98, section ".printk_index", align 4
@mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.101, i8 0, i8 -92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"line duration %u bytes\0A\00", [40 x i8] zeroinitializer }, align 32
@mcde_dsi_setup_video_mode._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.83, ptr @.str.2, i32 683, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"video block does not fit on line!\0A\00", [61 x i8] zeroinitializer }, align 32
@mcde_dsi_setup_video_mode._entry_ptr.104 = internal global ptr @mcde_dsi_setup_video_mode._entry.102, section ".printk_index", align 4
@mcde_dsi_setup_video_mode._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.83, ptr @.str.2, i32 686, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"calculated bytes per line: %llu @ %d Hz\0A\00", [55 x i8] zeroinitializer }, align 32
@mcde_dsi_setup_video_mode._entry_ptr.107 = internal global ptr @mcde_dsi_setup_video_mode._entry.105, section ".printk_index", align 4
@mcde_dsi_setup_video_mode._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.83, ptr @.str.2, i32 689, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"bytes per line (blkline_pck) %u bytes\0A\00", [57 x i8] zeroinitializer }, align 32
@mcde_dsi_setup_video_mode._entry_ptr.110 = internal global ptr @mcde_dsi_setup_video_mode._entry.108, section ".printk_index", align 4
@mcde_dsi_setup_video_mode._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.83, ptr @.str.2, i32 691, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"blkeol_pck becomes %d bytes\0A\00", [35 x i8] zeroinitializer }, align 32
@mcde_dsi_setup_video_mode._entry_ptr.113 = internal global ptr @mcde_dsi_setup_video_mode._entry.111, section ".printk_index", align 4
@mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.114, i8 0, i8 -83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"BLKEOL packet: %d bytes\0A\00", [39 x i8] zeroinitializer }, align 32
@mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.115, i8 0, i8 -75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"BLKEOL duration: %d clock cycles\0A\00", [62 x i8] zeroinitializer }, align 32
@mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.116, i8 0, i8 -70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"blkline pck: %d bytes\0A\00", [41 x i8] zeroinitializer }, align 32
@mcde_dsi_wait_for_video_mode_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.2, i32 1012, ptr @.str.78, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not get out of video mode\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mcde_dsi_wait_for_video_mode_stop\00", [62 x i8] zeroinitializer }, align 32
@mcde_dsi_wait_for_video_mode_stop._entry_ptr = internal global ptr @mcde_dsi_wait_for_video_mode_stop._entry, section ".printk_index", align 4
@mcde_dsi_wait_for_command_mode_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.2, i32 993, ptr @.str.78, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not get out of command mode\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mcde_dsi_wait_for_command_mode_stop\00", [60 x i8] zeroinitializer }, align 32
@mcde_dsi_wait_for_command_mode_stop._entry_ptr = internal global ptr @mcde_dsi_wait_for_command_mode_stop._entry, section ".printk_index", align 4
@.str.121 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stericsson,db8500-prcmu\00", [40 x i8] zeroinitializer }, align 32
@mcde_dsi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.2, i32 1185, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no PRCMU regmap\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mcde_dsi_probe\00", [17 x i8] zeroinitializer }, align 32
@mcde_dsi_probe._entry_ptr = internal global ptr @mcde_dsi_probe._entry, section ".printk_index", align 4
@mcde_dsi_probe._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.123, ptr @.str.2, i32 1194, ptr @.str.63, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HW revision 0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@mcde_dsi_probe._entry_ptr.126 = internal global ptr @mcde_dsi_probe._entry.124, section ".printk_index", align 4
@mcde_dsi_host_ops = internal constant { %struct.mipi_dsi_host_ops, [20 x i8] } { %struct.mipi_dsi_host_ops { ptr @mcde_dsi_host_attach, ptr @mcde_dsi_host_detach, ptr @mcde_dsi_host_transfer }, [20 x i8] zeroinitializer }, align 32
@mcde_dsi_probe._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.123, ptr @.str.2, i32 1201, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register DSI host: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@mcde_dsi_probe._entry_ptr.129 = internal global ptr @mcde_dsi_probe._entry.127, section ".printk_index", align 4
@mcde_dsi_probe._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.123, ptr @.str.2, i32 1204, ptr @.str.63, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"registered DSI host\0A\00", [43 x i8] zeroinitializer }, align 32
@mcde_dsi_probe._entry_ptr.132 = internal global ptr @mcde_dsi_probe._entry.130, section ".printk_index", align 4
@mcde_dsi_component_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @mcde_dsi_bind, ptr @mcde_dsi_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"dsi device params invalid, 1 or 2 lanes supported\0A\00", [45 x i8] zeroinitializer }, align 32
@mcde_dsi_host_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.2, i32 180, ptr @.str.63, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"attached DSI device with %d lanes\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mcde_dsi_host_attach\00", [43 x i8] zeroinitializer }, align 32
@mcde_dsi_host_attach._entry_ptr = internal global ptr @mcde_dsi_host_attach._entry, section ".printk_index", align 4
@mcde_dsi_host_attach._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.135, ptr @.str.2, i32 183, ptr @.str.63, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"format %08x, %dbpp\0A\00", [44 x i8] zeroinitializer }, align 32
@mcde_dsi_host_attach._entry_ptr.138 = internal global ptr @mcde_dsi_host_attach._entry.136, section ".printk_index", align 4
@mcde_dsi_host_attach._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.135, ptr @.str.2, i32 184, ptr @.str.63, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mode flags: %08lx\0A\00", [45 x i8] zeroinitializer }, align 32
@mcde_dsi_host_attach._entry_ptr.141 = internal global ptr @mcde_dsi_host_attach._entry.139, section ".printk_index", align 4
@mcde_dsi_host_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.2, i32 308, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"dunno how to write more than 16 bytes yet\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mcde_dsi_host_transfer\00", [41 x i8] zeroinitializer }, align 32
@mcde_dsi_host_transfer._entry_ptr = internal global ptr @mcde_dsi_host_transfer._entry, section ".printk_index", align 4
@mcde_dsi_host_transfer._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.143, ptr @.str.2, i32 313, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"dunno how to read more than 4 bytes yet\0A\00", [55 x i8] zeroinitializer }, align 32
@mcde_dsi_host_transfer._entry_ptr.146 = internal global ptr @mcde_dsi_host_transfer._entry.144, section ".printk_index", align 4
@mcde_dsi_host_transfer.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.143, ptr @.str.2, ptr @.str.147, i8 0, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.147 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"message to channel %d, write %zd bytes read %zd bytes\0A\00", [41 x i8] zeroinitializer }, align 32
@mcde_dsi_host_transfer._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.143, ptr @.str.2, i32 374, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gave up after %d retries\0A\00", [38 x i8] zeroinitializer }, align 32
@mcde_dsi_host_transfer._entry_ptr.150 = internal global ptr @mcde_dsi_host_transfer._entry.148, section ".printk_index", align 4
@mcde_dsi_execute_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.2, i32 236, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DSI read timeout!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mcde_dsi_execute_transfer\00", [38 x i8] zeroinitializer }, align 32
@mcde_dsi_execute_transfer._entry_ptr = internal global ptr @mcde_dsi_execute_transfer._entry, section ".printk_index", align 4
@mcde_dsi_execute_transfer._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.152, ptr @.str.2, i32 249, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSI write timeout!\0A\00", [44 x i8] zeroinitializer }, align 32
@mcde_dsi_execute_transfer._entry_ptr.155 = internal global ptr @mcde_dsi_execute_transfer._entry.153, section ".printk_index", align 4
@mcde_dsi_execute_transfer._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.152, ptr @.str.2, i32 256, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"read completed with error\0A\00", [37 x i8] zeroinitializer }, align 32
@mcde_dsi_execute_transfer._entry_ptr.158 = internal global ptr @mcde_dsi_execute_transfer._entry.156, section ".printk_index", align 4
@mcde_dsi_execute_transfer._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.152, ptr @.str.2, i32 263, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error during transmission: %04x\0A\00", [63 x i8] zeroinitializer }, align 32
@mcde_dsi_execute_transfer._entry_ptr.161 = internal global ptr @mcde_dsi_execute_transfer._entry.159, section ".printk_index", align 4
@mcde_dsi_execute_transfer._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.152, ptr @.str.2, i32 281, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"read error, requested %zd got %d\0A\00", [62 x i8] zeroinitializer }, align 32
@mcde_dsi_execute_transfer._entry_ptr.164 = internal global ptr @mcde_dsi_execute_transfer._entry.162, section ".printk_index", align 4
@mcde_dsi_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.166, ptr @.str.2, i32 1081, ptr @.str.63, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unused DSI interface\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mcde_dsi_bind\00", [18 x i8] zeroinitializer }, align 32
@mcde_dsi_bind._entry_ptr = internal global ptr @mcde_dsi_bind._entry, section ".printk_index", align 4
@.str.167 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"hs\00", [29 x i8] zeroinitializer }, align 32
@mcde_dsi_bind._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.166, ptr @.str.2, i32 1093, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unable to get HS clock\0A\00", [40 x i8] zeroinitializer }, align 32
@mcde_dsi_bind._entry_ptr.170 = internal global ptr @mcde_dsi_bind._entry.168, section ".printk_index", align 4
@.str.171 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"lp\00", [29 x i8] zeroinitializer }, align 32
@mcde_dsi_bind._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.166, ptr @.str.2, i32 1099, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unable to get LP clock\0A\00", [40 x i8] zeroinitializer }, align 32
@mcde_dsi_bind._entry_ptr.174 = internal global ptr @mcde_dsi_bind._entry.172, section ".printk_index", align 4
@mcde_dsi_bind._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.166, ptr @.str.2, i32 1108, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to find panel try bridge (%ld)\0A\00", [57 x i8] zeroinitializer }, align 32
@mcde_dsi_bind._entry_ptr.177 = internal global ptr @mcde_dsi_bind._entry.175, section ".printk_index", align 4
@mcde_dsi_bind._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.166, ptr @.str.2, i32 1113, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to find bridge\0A\00", [41 x i8] zeroinitializer }, align 32
@mcde_dsi_bind._entry_ptr.180 = internal global ptr @mcde_dsi_bind._entry.178, section ".printk_index", align 4
@mcde_dsi_bind._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.166, ptr @.str.2, i32 1122, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error adding panel bridge\0A\00", [37 x i8] zeroinitializer }, align 32
@mcde_dsi_bind._entry_ptr.183 = internal global ptr @mcde_dsi_bind._entry.181, section ".printk_index", align 4
@mcde_dsi_bind._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.166, ptr @.str.2, i32 1125, ptr @.str.63, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"connected to panel\0A\00", [44 x i8] zeroinitializer }, align 32
@mcde_dsi_bind._entry_ptr.186 = internal global ptr @mcde_dsi_bind._entry.184, section ".printk_index", align 4
@mcde_dsi_bind._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.166, ptr @.str.2, i32 1129, ptr @.str.63, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"connected to non-panel bridge (unsupported)\0A\00", [51 x i8] zeroinitializer }, align 32
@mcde_dsi_bind._entry_ptr.189 = internal global ptr @mcde_dsi_bind._entry.187, section ".printk_index", align 4
@mcde_dsi_bind._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.166, ptr @.str.2, i32 1132, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no panel or bridge\0A\00", [44 x i8] zeroinitializer }, align 32
@mcde_dsi_bind._entry_ptr.192 = internal global ptr @mcde_dsi_bind._entry.190, section ".printk_index", align 4
@mcde_dsi_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @mcde_dsi_bridge_attach, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mcde_dsi_bridge_mode_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mcde_dsi_bind._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.166, ptr @.str.2, i32 1146, ptr @.str.63, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"initialized MCDE DSI bridge\0A\00", [35 x i8] zeroinitializer }, align 32
@mcde_dsi_bind._entry_ptr.195 = internal global ptr @mcde_dsi_bind._entry.193, section ".printk_index", align 4
@mcde_dsi_bridge_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.197, ptr @.str.2, i32 1057, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"we need atomic updates\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mcde_dsi_bridge_attach\00", [41 x i8] zeroinitializer }, align 32
@mcde_dsi_bridge_attach._entry_ptr = internal global ptr @mcde_dsi_bridge_attach._entry, section ".printk_index", align 4
@mcde_dsi_bridge_mode_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.199, ptr @.str.2, i32 965, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no DSI device attached to encoder!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mcde_dsi_bridge_mode_set\00", [39 x i8] zeroinitializer }, align 32
@mcde_dsi_bridge_mode_set._entry_ptr = internal global ptr @mcde_dsi_bridge_mode_set._entry, section ".printk_index", align 4
@mcde_dsi_bridge_mode_set._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.199, ptr @.str.2, i32 974, ptr @.str.63, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"set DSI master to %dx%d %u Hz %s mode\0A\00", [57 x i8] zeroinitializer }, align 32
@mcde_dsi_bridge_mode_set._entry_ptr.202 = internal global ptr @mcde_dsi_bridge_mode_set._entry.200, section ".printk_index", align 4
@.str.203 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VIDEO\00", [26 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CMD\00", [28 x i8] zeroinitializer }, align 32
@switch.table.mcde_dsi_host_attach = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 24, i32 24, i32 18, i32 16], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.205 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.206 = internal global [6 x i64] [i64 4, i64 8, i64 4, i64 6, i64 20, i64 36]
@__sancov_gen_cov_switch_values.207 = internal global [6 x i64] [i64 4, i64 8, i64 4, i64 6, i64 20, i64 36]
@__sancov_gen_cov_switch_values.208 = internal global [6 x i64] [i64 4, i64 8, i64 4, i64 6, i64 20, i64 36]
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 75, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 79, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 81, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 84, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 87, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 89, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 95, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 98, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 101, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 103, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 105, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 107, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 112, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 117, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 122, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 124, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 126, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 128, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 130, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 132, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 134, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 138, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 140, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 142, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 880, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 886, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 892, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 894, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 898, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 900, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 955, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 1229, i32 21 }
@___asan_gen_.386 = private unnamed_addr constant [18 x i8] c"mcde_dsi_of_match\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 1220, i32 34 }
@___asan_gen_.389 = private unnamed_addr constant [16 x i8] c"mcde_dsi_driver\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 1227, i32 24 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 779, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 832, i32 4 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 852, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 471, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 547, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 551, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 555, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 558, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 572, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 581, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 600, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 608, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 634, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 656, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 683, i32 4 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 684, i32 4 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 687, i32 4 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 690, i32 4 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 694, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 723, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 746, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 1011, i32 4 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 992, i32 4 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 1183, i32 38 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 1185, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 1194, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant [18 x i8] c"mcde_dsi_host_ops\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 383, i32 39 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 1201, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 1204, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant [23 x i8] c"mcde_dsi_component_ops\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 1162, i32 35 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 176, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 180, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 182, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 184, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 307, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 312, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 317, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 374, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 236, i32 4 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 249, i32 4 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 256, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 262, i32 3 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 280, i32 4 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 1081, i32 3 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 1091, i32 32 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 1093, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 1097, i32 32 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 1099, i32 3 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 1107, i32 4 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 1113, i32 5 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 1122, i32 4 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 1125, i32 3 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 1129, i32 3 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 1132, i32 3 }
@___asan_gen_.695 = private unnamed_addr constant [22 x i8] c"mcde_dsi_bridge_funcs\00", align 1
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 1065, i32 38 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 1146, i32 2 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 1057, i32 3 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 965, i32 3 }
@___asan_gen_.722 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.731 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.732 = private constant [35 x i8] c"../drivers/gpu/drm/mcde/mcde_dsi.c\00", align 1
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.732, i32 971, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant [34 x i8] c"switch.table.mcde_dsi_host_attach\00", align 1
@llvm.compiler.used = appending global [237 x ptr] [ptr @mcde_dsi_bind._entry, ptr @mcde_dsi_bind._entry.168, ptr @mcde_dsi_bind._entry.172, ptr @mcde_dsi_bind._entry.175, ptr @mcde_dsi_bind._entry.178, ptr @mcde_dsi_bind._entry.181, ptr @mcde_dsi_bind._entry.184, ptr @mcde_dsi_bind._entry.187, ptr @mcde_dsi_bind._entry.190, ptr @mcde_dsi_bind._entry.193, ptr @mcde_dsi_bind._entry_ptr, ptr @mcde_dsi_bind._entry_ptr.170, ptr @mcde_dsi_bind._entry_ptr.174, ptr @mcde_dsi_bind._entry_ptr.177, ptr @mcde_dsi_bind._entry_ptr.180, ptr @mcde_dsi_bind._entry_ptr.183, ptr @mcde_dsi_bind._entry_ptr.186, ptr @mcde_dsi_bind._entry_ptr.189, ptr @mcde_dsi_bind._entry_ptr.192, ptr @mcde_dsi_bind._entry_ptr.195, ptr @mcde_dsi_bridge_attach._entry, ptr @mcde_dsi_bridge_attach._entry_ptr, ptr @mcde_dsi_bridge_mode_set._entry, ptr @mcde_dsi_bridge_mode_set._entry.200, ptr @mcde_dsi_bridge_mode_set._entry_ptr, ptr @mcde_dsi_bridge_mode_set._entry_ptr.202, ptr @mcde_dsi_enable._entry, ptr @mcde_dsi_enable._entry.55, ptr @mcde_dsi_enable._entry.58, ptr @mcde_dsi_enable._entry.61, ptr @mcde_dsi_enable._entry.65, ptr @mcde_dsi_enable._entry.68, ptr @mcde_dsi_enable._entry.71, ptr @mcde_dsi_enable._entry_ptr, ptr @mcde_dsi_enable._entry_ptr.57, ptr @mcde_dsi_enable._entry_ptr.60, ptr @mcde_dsi_enable._entry_ptr.64, ptr @mcde_dsi_enable._entry_ptr.67, ptr @mcde_dsi_enable._entry_ptr.70, ptr @mcde_dsi_enable._entry_ptr.73, ptr @mcde_dsi_execute_transfer._entry, ptr @mcde_dsi_execute_transfer._entry.153, ptr @mcde_dsi_execute_transfer._entry.156, ptr @mcde_dsi_execute_transfer._entry.159, ptr @mcde_dsi_execute_transfer._entry.162, ptr @mcde_dsi_execute_transfer._entry_ptr, ptr @mcde_dsi_execute_transfer._entry_ptr.155, ptr @mcde_dsi_execute_transfer._entry_ptr.158, ptr @mcde_dsi_execute_transfer._entry_ptr.161, ptr @mcde_dsi_execute_transfer._entry_ptr.164, ptr @mcde_dsi_host_attach._entry, ptr @mcde_dsi_host_attach._entry.136, ptr @mcde_dsi_host_attach._entry.139, ptr @mcde_dsi_host_attach._entry_ptr, ptr @mcde_dsi_host_attach._entry_ptr.138, ptr @mcde_dsi_host_attach._entry_ptr.141, ptr @mcde_dsi_host_transfer._entry, ptr @mcde_dsi_host_transfer._entry.144, ptr @mcde_dsi_host_transfer._entry.148, ptr @mcde_dsi_host_transfer._entry_ptr, ptr @mcde_dsi_host_transfer._entry_ptr.146, ptr @mcde_dsi_host_transfer._entry_ptr.150, ptr @mcde_dsi_irq._entry, ptr @mcde_dsi_irq._entry.10, ptr @mcde_dsi_irq._entry.16, ptr @mcde_dsi_irq._entry.19, ptr @mcde_dsi_irq._entry.22, ptr @mcde_dsi_irq._entry.29, ptr @mcde_dsi_irq._entry.32, ptr @mcde_dsi_irq._entry.35, ptr @mcde_dsi_irq._entry.38, ptr @mcde_dsi_irq._entry.41, ptr @mcde_dsi_irq._entry.44, ptr @mcde_dsi_irq._entry.47, ptr @mcde_dsi_irq._entry.50, ptr @mcde_dsi_irq._entry_ptr, ptr @mcde_dsi_irq._entry_ptr.12, ptr @mcde_dsi_irq._entry_ptr.18, ptr @mcde_dsi_irq._entry_ptr.21, ptr @mcde_dsi_irq._entry_ptr.24, ptr @mcde_dsi_irq._entry_ptr.31, ptr @mcde_dsi_irq._entry_ptr.34, ptr @mcde_dsi_irq._entry_ptr.37, ptr @mcde_dsi_irq._entry_ptr.40, ptr @mcde_dsi_irq._entry_ptr.43, ptr @mcde_dsi_irq._entry_ptr.46, ptr @mcde_dsi_irq._entry_ptr.49, ptr @mcde_dsi_irq._entry_ptr.52, ptr @mcde_dsi_probe._entry, ptr @mcde_dsi_probe._entry.124, ptr @mcde_dsi_probe._entry.127, ptr @mcde_dsi_probe._entry.130, ptr @mcde_dsi_probe._entry_ptr, ptr @mcde_dsi_probe._entry_ptr.126, ptr @mcde_dsi_probe._entry_ptr.129, ptr @mcde_dsi_probe._entry_ptr.132, ptr @mcde_dsi_setup_video_mode._entry, ptr @mcde_dsi_setup_video_mode._entry.102, ptr @mcde_dsi_setup_video_mode._entry.105, ptr @mcde_dsi_setup_video_mode._entry.108, ptr @mcde_dsi_setup_video_mode._entry.111, ptr @mcde_dsi_setup_video_mode._entry.84, ptr @mcde_dsi_setup_video_mode._entry.87, ptr @mcde_dsi_setup_video_mode._entry.90, ptr @mcde_dsi_setup_video_mode._entry.98, ptr @mcde_dsi_setup_video_mode._entry_ptr, ptr @mcde_dsi_setup_video_mode._entry_ptr.100, ptr @mcde_dsi_setup_video_mode._entry_ptr.104, ptr @mcde_dsi_setup_video_mode._entry_ptr.107, ptr @mcde_dsi_setup_video_mode._entry_ptr.110, ptr @mcde_dsi_setup_video_mode._entry_ptr.113, ptr @mcde_dsi_setup_video_mode._entry_ptr.86, ptr @mcde_dsi_setup_video_mode._entry_ptr.89, ptr @mcde_dsi_setup_video_mode._entry_ptr.92, ptr @mcde_dsi_start._entry, ptr @mcde_dsi_start._entry.79, ptr @mcde_dsi_start._entry_ptr, ptr @mcde_dsi_start._entry_ptr.81, ptr @mcde_dsi_wait_for_command_mode_stop._entry, ptr @mcde_dsi_wait_for_command_mode_stop._entry_ptr, ptr @mcde_dsi_wait_for_video_mode_stop._entry, ptr @mcde_dsi_wait_for_video_mode_stop._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @mcde_dsi_of_match, ptr @mcde_dsi_driver, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.125, ptr @mcde_dsi_host_ops, ptr @.str.128, ptr @.str.131, ptr @mcde_dsi_component_ops, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.140, ptr @.str.142, ptr @.str.143, ptr @.str.145, ptr @.str.147, ptr @.str.149, ptr @.str.151, ptr @.str.152, ptr @.str.154, ptr @.str.157, ptr @.str.160, ptr @.str.163, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.169, ptr @.str.171, ptr @.str.173, ptr @.str.176, ptr @.str.179, ptr @.str.182, ptr @.str.185, ptr @.str.188, ptr @.str.191, ptr @mcde_dsi_bridge_funcs, ptr @.str.194, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.201, ptr @.str.203, ptr @.str.204, ptr @switch.table.mcde_dsi_host_attach], section "llvm.metadata"
@0 = internal global [176 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_irq._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_irq._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_irq._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_irq._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_irq._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_irq._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_irq._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_irq._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_irq._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_irq._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_irq._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_irq._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_enable._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_enable._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_enable._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_enable._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_enable._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_enable._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_start._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_setup_video_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_setup_video_mode._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_setup_video_mode._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_setup_video_mode._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_setup_video_mode._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_setup_video_mode._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_setup_video_mode._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_setup_video_mode._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_setup_video_mode._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_wait_for_video_mode_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_wait_for_command_mode_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_probe._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_host_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_probe._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_probe._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_component_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_host_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_host_attach._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_host_attach._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_host_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_host_transfer._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_host_transfer._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_execute_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_execute_transfer._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_execute_transfer._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_execute_transfer._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_execute_transfer._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_bind._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_bind._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_bind._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_bind._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_bind._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_bind._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_bind._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_bind._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_bind._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_bridge_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_bridge_mode_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_dsi_bridge_mode_set._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mcde_dsi_host_attach to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mcde_dsi_irq(ptr nocapture noundef readonly %mdsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mdsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdsi, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -296
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_dsi_irq.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_dsi_irq, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !360

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_dsi_irq.__UNIQUE_ID_ddebug307, ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regs = getelementptr i8, ptr %1, i32 44
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 312
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !361
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !362
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not = icmp eq i32 %6, 0
  br i1 %tobool7.not, label %do.end.if.end26_crit_edge, label %do.body9

do.end.if.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

do.body9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_dsi_irq.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_dsi_irq, %if.then21)) #5
          to label %if.end26 [label %if.then21], !srcloc !360

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_dsi_irq.__UNIQUE_ID_ddebug308, ptr noundef %9, ptr noundef nonnull @.str.4, i32 noundef %7) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %do.body9, %do.end.if.end26_crit_edge
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %if.end26.if.end46_crit_edge, label %do.body29

if.end26.if.end46_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

do.body29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_dsi_irq.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_dsi_irq, %if.then41)) #5
          to label %if.end46 [label %if.then41], !srcloc !360

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_dsi_irq.__UNIQUE_ID_ddebug309, ptr noundef %11, ptr noundef nonnull @.str.5) #5
  br label %if.end46

if.end46:                                         ; preds = %if.then41, %do.body29, %if.end26.if.end46_crit_edge
  %and47 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end46.if.end67_crit_edge, label %if.then49

if.end46.if.end67_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_dsi_irq.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_dsi_irq, %if.then62)) #5
          to label %if.end67 [label %if.then62], !srcloc !360

if.then62:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_dsi_irq.__UNIQUE_ID_ddebug310, ptr noundef %13, ptr noundef nonnull @.str.6) #5
  br label %if.end67

if.end67:                                         ; preds = %if.then62, %if.then49, %if.end46.if.end67_crit_edge
  %and68 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end67.if.end75_crit_edge, label %do.end73

if.end67.if.end75_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end75

do.end73:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.7) #8
  br label %if.end75

if.end75:                                         ; preds = %do.end73, %if.end67.if.end75_crit_edge
  %and76 = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end75.do.body84_crit_edge, label %do.end81

if.end75.do.body84_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body84

do.end81:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.11) #8
  br label %do.body84

do.body84:                                        ; preds = %do.end81, %if.end75.do.body84_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !363
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr88 = getelementptr i8, ptr %19, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 %6) #5, !srcloc !364
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr92 = getelementptr i8, ptr %21, i32 308
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr92) #5, !srcloc !361
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !365
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool96.not = icmp eq i32 %22, 0
  br i1 %tobool96.not, label %do.body84.if.end115_crit_edge, label %do.body98

do.body84.if.end115_crit_edge:                    ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115

do.body98:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_dsi_irq.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_dsi_irq, %if.then110)) #5
          to label %if.end115 [label %if.then110], !srcloc !360

if.then110:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_dsi_irq.__UNIQUE_ID_ddebug311, ptr noundef %25, ptr noundef nonnull @.str.13, i32 noundef %23) #5
  br label %if.end115

if.end115:                                        ; preds = %if.then110, %do.body98, %do.body84.if.end115_crit_edge
  %and116 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.end115.if.end136_crit_edge, label %do.body119

if.end115.if.end136_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end136

do.body119:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_dsi_irq.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_dsi_irq, %if.then131)) #5
          to label %if.end136 [label %if.then131], !srcloc !360

if.then131:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_dsi_irq.__UNIQUE_ID_ddebug312, ptr noundef %27, ptr noundef nonnull @.str.14) #5
  br label %if.end136

if.end136:                                        ; preds = %if.then131, %do.body119, %if.end115.if.end136_crit_edge
  %and137 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.end136.if.end157_crit_edge, label %do.body140

if.end136.if.end157_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end157

do.body140:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_dsi_irq.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_dsi_irq, %if.then152)) #5
          to label %if.end157 [label %if.then152], !srcloc !360

if.then152:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_dsi_irq.__UNIQUE_ID_ddebug313, ptr noundef %29, ptr noundef nonnull @.str.15) #5
  br label %if.end157

if.end157:                                        ; preds = %if.then152, %do.body140, %if.end136.if.end157_crit_edge
  %and158 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %if.end157.if.end165_crit_edge, label %do.end163

if.end157.if.end165_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end165

do.end163:                                        ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.17) #8
  br label %if.end165

if.end165:                                        ; preds = %do.end163, %if.end157.if.end165_crit_edge
  %and166 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %if.end165.if.end173_crit_edge, label %do.end171

if.end165.if.end173_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end173

do.end171:                                        ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.20) #8
  br label %if.end173

if.end173:                                        ; preds = %do.end171, %if.end165.if.end173_crit_edge
  %and174 = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %if.end173.do.body182_crit_edge, label %do.end179

if.end173.do.body182_crit_edge:                   ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body182

do.end179:                                        ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.23) #8
  br label %do.body182

do.body182:                                       ; preds = %do.end179, %if.end173.do.body182_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !366
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %add.ptr186 = getelementptr i8, ptr %37, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr186, i32 %22) #5, !srcloc !364
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 4
  %add.ptr190 = getelementptr i8, ptr %39, i32 316
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr190) #5, !srcloc !361
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !367
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool194.not = icmp eq i32 %40, 0
  br i1 %tobool194.not, label %do.body182.do.body214_crit_edge, label %do.body196

do.body182.do.body214_crit_edge:                  ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body214

do.body196:                                       ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_dsi_irq.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_dsi_irq, %if.then208)) #5
          to label %do.body214 [label %if.then208], !srcloc !360

if.then208:                                       ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_dsi_irq.__UNIQUE_ID_ddebug314, ptr noundef %43, ptr noundef nonnull @.str.25, i32 noundef %41) #5
  br label %do.body214

do.body214:                                       ; preds = %if.then208, %do.body196, %do.body182.do.body214_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !368
  tail call void @arm_heavy_mb() #5
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  %add.ptr218 = getelementptr i8, ptr %45, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr218, i32 %40) #5, !srcloc !364
  %46 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs, align 4
  %add.ptr222 = getelementptr i8, ptr %47, i32 324
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr222) #5, !srcloc !361
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !369
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool226.not = icmp eq i32 %48, 0
  br i1 %tobool226.not, label %do.body214.do.body246_crit_edge, label %do.body228

do.body214.do.body246_crit_edge:                  ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body246

do.body228:                                       ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_dsi_irq.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_dsi_irq, %if.then240)) #5
          to label %do.body246 [label %if.then240], !srcloc !360

if.then240:                                       ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_dsi_irq.__UNIQUE_ID_ddebug315, ptr noundef %51, ptr noundef nonnull @.str.26, i32 noundef %49) #5
  br label %do.body246

do.body246:                                       ; preds = %if.then240, %do.body228, %do.body214.do.body246_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !370
  tail call void @arm_heavy_mb() #5
  %52 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs, align 4
  %add.ptr250 = getelementptr i8, ptr %53, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr250, i32 %48) #5, !srcloc !364
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 4
  %add.ptr254 = getelementptr i8, ptr %55, i32 320
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr254) #5, !srcloc !361
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !371
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool258.not = icmp eq i32 %56, 0
  br i1 %tobool258.not, label %do.body246.if.end277_crit_edge, label %do.body260

do.body246.if.end277_crit_edge:                   ; preds = %do.body246
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end277

do.body260:                                       ; preds = %do.body246
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_dsi_irq.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_dsi_irq, %if.then272)) #5
          to label %if.end277 [label %if.then272], !srcloc !360

if.then272:                                       ; preds = %do.body260
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_dsi_irq.__UNIQUE_ID_ddebug316, ptr noundef %59, ptr noundef nonnull @.str.27, i32 noundef %57) #5
  br label %if.end277

if.end277:                                        ; preds = %if.then272, %do.body260, %do.body246.if.end277_crit_edge
  %and278 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and278)
  %tobool279.not = icmp eq i32 %and278, 0
  br i1 %tobool279.not, label %if.end277.if.end298_crit_edge, label %do.body281

if.end277.if.end298_crit_edge:                    ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end298

do.body281:                                       ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_dsi_irq.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_dsi_irq, %if.then293)) #5
          to label %if.end298 [label %if.then293], !srcloc !360

if.then293:                                       ; preds = %do.body281
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_dsi_irq.__UNIQUE_ID_ddebug317, ptr noundef %61, ptr noundef nonnull @.str.28) #5
  br label %if.end298

if.end298:                                        ; preds = %if.then293, %do.body281, %if.end277.if.end298_crit_edge
  %and299 = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and299)
  %tobool300.not = icmp eq i32 %and299, 0
  br i1 %tobool300.not, label %if.end298.if.end306_crit_edge, label %do.end304

if.end298.if.end306_crit_edge:                    ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end306

do.end304:                                        ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.30) #8
  br label %if.end306

if.end306:                                        ; preds = %do.end304, %if.end298.if.end306_crit_edge
  %and307 = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and307)
  %tobool308.not = icmp eq i32 %and307, 0
  br i1 %tobool308.not, label %if.end306.if.end314_crit_edge, label %do.end312

if.end306.if.end314_crit_edge:                    ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end314

do.end312:                                        ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.33) #8
  br label %if.end314

if.end314:                                        ; preds = %do.end312, %if.end306.if.end314_crit_edge
  %and315 = and i32 %57, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and315)
  %tobool316.not = icmp eq i32 %and315, 0
  br i1 %tobool316.not, label %if.end314.if.end322_crit_edge, label %do.end320

if.end314.if.end322_crit_edge:                    ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end322

do.end320:                                        ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.36) #8
  br label %if.end322

if.end322:                                        ; preds = %do.end320, %if.end314.if.end322_crit_edge
  %and323 = and i32 %57, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and323)
  %tobool324.not = icmp eq i32 %and323, 0
  br i1 %tobool324.not, label %if.end322.if.end330_crit_edge, label %do.end328

if.end322.if.end330_crit_edge:                    ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end330

do.end328:                                        ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.39) #8
  br label %if.end330

if.end330:                                        ; preds = %do.end328, %if.end322.if.end330_crit_edge
  %and331 = and i32 %57, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and331)
  %tobool332.not = icmp eq i32 %and331, 0
  br i1 %tobool332.not, label %if.end330.if.end338_crit_edge, label %do.end336

if.end330.if.end338_crit_edge:                    ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end338

do.end336:                                        ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.42) #8
  br label %if.end338

if.end338:                                        ; preds = %do.end336, %if.end330.if.end338_crit_edge
  %and339 = and i32 %57, 448
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and339)
  %tobool340.not = icmp eq i32 %and339, 0
  br i1 %tobool340.not, label %if.end338.if.end346_crit_edge, label %do.end344

if.end338.if.end346_crit_edge:                    ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end346

do.end344:                                        ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.45) #8
  br label %if.end346

if.end346:                                        ; preds = %do.end344, %if.end338.if.end346_crit_edge
  %and347 = and i32 %57, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and347)
  %tobool348.not = icmp eq i32 %and347, 0
  br i1 %tobool348.not, label %if.end346.if.end354_crit_edge, label %do.end352

if.end346.if.end354_crit_edge:                    ; preds = %if.end346
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end354

do.end352:                                        ; preds = %if.end346
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.48) #8
  br label %if.end354

if.end354:                                        ; preds = %do.end352, %if.end346.if.end354_crit_edge
  %and355 = and i32 %57, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and355)
  %tobool356.not = icmp eq i32 %and355, 0
  br i1 %tobool356.not, label %if.end354.do.body363_crit_edge, label %do.end360

if.end354.do.body363_crit_edge:                   ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body363

do.end360:                                        ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.51) #8
  br label %do.body363

do.body363:                                       ; preds = %do.end360, %if.end354.do.body363_crit_edge
  %78 = xor i1 %tobool48.not, true
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !372
  tail call void @arm_heavy_mb() #5
  %79 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs, align 4
  %add.ptr367 = getelementptr i8, ptr %80, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr367, i32 %56) #5, !srcloc !364
  ret i1 %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mcde_dsi_te_request(ptr nocapture noundef readonly %mdsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mdsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdsi, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !373
  tail call void @arm_heavy_mb() #5
  %regs = getelementptr i8, ptr %1, i32 44
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 68362752) #5, !srcloc !364
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !374
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr8 = getelementptr i8, ptr %5, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 -1610612736) #5, !srcloc !364
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr10 = getelementptr i8, ptr %7, i32 248
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #5, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !375
  %9 = or i32 %8, -1610612736
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !376
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr19 = getelementptr i8, ptr %11, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %9) #5, !srcloc !364
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !377
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr24 = getelementptr i8, ptr %13, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 50331648) #5, !srcloc !364
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr28 = getelementptr i8, ptr %15, i32 244
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #5, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !378
  %17 = or i32 %16, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !379
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr38 = getelementptr i8, ptr %19, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %17) #5, !srcloc !364
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !380
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr43 = getelementptr i8, ptr %21, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 16777216) #5, !srcloc !364
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mcde_dsi_enable(ptr nocapture noundef %bridge) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -8
  %mdsi = getelementptr i8, ptr %bridge, i32 304
  %0 = ptrtoint ptr %mdsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdsi, align 4
  %lp_rate = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %lp_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lp_rate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %. = select i1 %tobool.not, i32 19200000, i32 %3
  %hs_rate = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %hs_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hs_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  %hs_freq.0 = select i1 %tobool4.not, i32 420160000, i32 %5
  %lp_clk = getelementptr i8, ptr %bridge, i32 316
  %6 = ptrtoint ptr %lp_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lp_clk, align 4
  %call10 = tail call i32 @clk_round_rate(ptr noundef %7, i32 noundef %.) #5
  %lp_freq11 = getelementptr i8, ptr %bridge, i32 324
  %8 = ptrtoint ptr %lp_freq11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call10, ptr %lp_freq11, align 4
  %9 = ptrtoint ptr %lp_clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lp_clk, align 4
  %call14 = tail call i32 @clk_set_rate(ptr noundef %10, i32 noundef %call10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %entry.if.end18_crit_edge, label %do.end

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 4
  %13 = ptrtoint ptr %lp_freq11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lp_freq11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.53, i32 noundef %14) #8
  br label %if.end18

if.end18:                                         ; preds = %do.end, %entry.if.end18_crit_edge
  %hs_clk = getelementptr i8, ptr %bridge, i32 312
  %15 = ptrtoint ptr %hs_clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hs_clk, align 4
  %call19 = tail call i32 @clk_round_rate(ptr noundef %16, i32 noundef %hs_freq.0) #5
  %hs_freq20 = getelementptr i8, ptr %bridge, i32 320
  %17 = ptrtoint ptr %hs_freq20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call19, ptr %hs_freq20, align 4
  %18 = ptrtoint ptr %hs_clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hs_clk, align 4
  %call23 = tail call i32 @clk_set_rate(ptr noundef %19, i32 noundef %call19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end18.if.end31_crit_edge, label %do.end28

if.end18.if.end31_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

do.end28:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  %22 = ptrtoint ptr %hs_freq20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hs_freq20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.56, i32 noundef %23) #8
  br label %if.end31

if.end31:                                         ; preds = %do.end28, %if.end18.if.end31_crit_edge
  %24 = ptrtoint ptr %lp_clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lp_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %25) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end31.do.end38_crit_edge

if.end31.do.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end38

if.end.i:                                         ; preds = %if.end31
  %call1.i = tail call i32 @clk_enable(ptr noundef %25) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.end43, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %25) #5
  br label %do.end38

do.end38:                                         ; preds = %if.then3.i, %if.end31.do.end38_crit_edge
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.59) #8
  br label %if.end46

do.end43:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 4
  %30 = ptrtoint ptr %lp_freq11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lp_freq11, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull @.str.62, i32 noundef %31) #8
  br label %if.end46

if.end46:                                         ; preds = %do.end43, %do.end38
  %32 = ptrtoint ptr %hs_clk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hs_clk, align 4
  %call.i197 = tail call i32 @clk_prepare(ptr noundef %33) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i197)
  %tobool.not.i198 = icmp eq i32 %call.i197, 0
  br i1 %tobool.not.i198, label %if.end.i201, label %if.end46.do.end53_crit_edge

if.end46.do.end53_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end53

if.end.i201:                                      ; preds = %if.end46
  %call1.i199 = tail call i32 @clk_enable(ptr noundef %33) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i199)
  %tobool2.not.i200 = icmp eq i32 %call1.i199, 0
  br i1 %tobool2.not.i200, label %do.end58, label %if.then3.i202

if.then3.i202:                                    ; preds = %if.end.i201
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %33) #5
  br label %do.end53

do.end53:                                         ; preds = %if.then3.i202, %if.end46.do.end53_crit_edge
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.66) #8
  br label %if.end61

do.end58:                                         ; preds = %if.end.i201
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 4
  %38 = ptrtoint ptr %hs_freq20 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hs_freq20, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.69, i32 noundef %39) #8
  br label %if.end61

if.end61:                                         ; preds = %do.end58, %do.end53
  %prcmu = getelementptr i8, ptr %bridge, i32 336
  %40 = ptrtoint ptr %prcmu to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prcmu, align 4
  %call.i205 = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 804, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #5
  %42 = ptrtoint ptr %prcmu to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prcmu, align 4
  %call.i206 = tail call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 804, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  tail call fastcc void @mcde_dsi_start(ptr noundef %add.ptr.i)
  %44 = ptrtoint ptr %mdsi to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mdsi, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mode_flags, align 8
  %and = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool66.not = icmp eq i32 %and, 0
  br i1 %tobool66.not, label %if.else115, label %if.then67

if.then67:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  %mode = getelementptr i8, ptr %bridge, i32 308
  %48 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mode, align 4
  tail call fastcc void @mcde_dsi_setup_video_mode(ptr noundef %add.ptr.i, ptr noundef %49)
  %regs = getelementptr i8, ptr %bridge, i32 332
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %51, i32 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !381
  %53 = or i32 %52, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !382
  tail call void @arm_heavy_mb() #5
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 4
  %add.ptr74 = getelementptr i8, ptr %55, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 %53) #5, !srcloc !364
  %56 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs, align 4
  %add.ptr78 = getelementptr i8, ptr %57, i32 80
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78) #5, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !383
  %59 = and i32 %58, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !384
  tail call void @arm_heavy_mb() #5
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 4
  %add.ptr87 = getelementptr i8, ptr %61, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 %59) #5, !srcloc !364
  %62 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs, align 4
  %add.ptr91 = getelementptr i8, ptr %63, i32 256
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr91) #5, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !385
  %65 = or i32 %64, 167772160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !386
  tail call void @arm_heavy_mb() #5
  %66 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs, align 4
  %add.ptr101 = getelementptr i8, ptr %67, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101, i32 %65) #5, !srcloc !364
  %68 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs, align 4
  %add.ptr105 = getelementptr i8, ptr %69, i32 4
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105) #5, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !387
  %71 = or i32 %70, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !388
  tail call void @arm_heavy_mb() #5
  %72 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs, align 4
  %add.ptr114 = getelementptr i8, ptr %73, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114, i32 %71) #5, !srcloc !364
  br label %do.end139

if.else115:                                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  %regs118 = getelementptr i8, ptr %bridge, i32 332
  %74 = ptrtoint ptr %regs118 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs118, align 4
  %add.ptr119 = getelementptr i8, ptr %75, i32 80
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr119) #5, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !389
  %77 = ptrtoint ptr %mdsi to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mdsi, align 4
  %mode_flags124 = getelementptr inbounds %struct.mipi_dsi_device, ptr %78, i32 0, i32 6
  %79 = ptrtoint ptr %mode_flags124 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mode_flags124, align 8
  %and125 = lshr i32 %80, 7
  %81 = and i32 %and125, 16
  %82 = and i32 %76, -50331649
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  %and130 = or i32 %81, %83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !390
  tail call void @arm_heavy_mb() #5
  %84 = tail call i32 @llvm.bswap.i32(i32 %and130)
  %85 = ptrtoint ptr %regs118 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs118, align 4
  %add.ptr135 = getelementptr i8, ptr %86, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr135, i32 %84) #5, !srcloc !364
  br label %do.end139

do.end139:                                        ; preds = %if.else115, %if.then67
  %87 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %88, ptr noundef nonnull @.str.72) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mcde_dsi_start(ptr nocapture noundef readonly %d) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !391
  tail call void @arm_heavy_mb() #5
  %regs = getelementptr inbounds %struct.mcde_dsi, ptr %d, i32 0, i32 13
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #5, !srcloc !364
  %mdsi = getelementptr inbounds %struct.mcde_dsi, ptr %d, i32 0, i32 6
  %2 = ptrtoint ptr %mdsi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdsi, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode_flags, align 8
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 4993, i32 897
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !392
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %6) #5, !srcloc !364
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !393
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr10 = getelementptr i8, ptr %10, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 65283) #5, !srcloc !364
  %hs_clk = getelementptr inbounds %struct.mcde_dsi, ptr %d, i32 0, i32 8
  %11 = ptrtoint ptr %hs_clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hs_clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %12) #5
  %div = udiv i32 %call, 1000000
  %div11.rhs.trunc = trunc i32 %div to i16
  %div11161 = udiv i16 4000, %div11.rhs.trunc
  %div11.zext = zext i16 %div11161 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_dsi_start.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_dsi_start, %if.then17)) #5
          to label %do.end20 [label %if.then17], !srcloc !360

if.then17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_dsi_start.__UNIQUE_ID_ddebug328, ptr noundef %14, ptr noundef nonnull @.str.76, i32 noundef %div11.zext) #5
  br label %do.end20

do.end20:                                         ; preds = %if.then17, %entry
  %shl = shl nuw nsw i32 %div11.zext, 6
  %and21 = and i32 %shl, 4032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !394
  tail call void @arm_heavy_mb() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %and21)
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr26 = getelementptr i8, ptr %17, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %15) #5, !srcloc !364
  %18 = ptrtoint ptr %mdsi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdsi, align 4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lanes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp = icmp eq i32 %21, 2
  %spec.select158 = select i1 %cmp, i32 961, i32 960
  %mode_flags32 = getelementptr inbounds %struct.mipi_dsi_device, ptr %19, i32 0, i32 6
  %22 = ptrtoint ptr %mode_flags32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mode_flags32, align 8
  %and33 = lshr i32 %23, 8
  %24 = and i32 %and33, 4
  %25 = or i32 %24, %spec.select158
  %or38 = xor i32 %25, 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !395
  tail call void @arm_heavy_mb() #5
  %26 = tail call i32 @llvm.bswap.i32(i32 %or38)
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %add.ptr43 = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %26) #5, !srcloc !364
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !396
  tail call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  %add.ptr48 = getelementptr i8, ptr %30, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 16908288) #5, !srcloc !364
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !397
  tail call void @arm_heavy_mb() #5
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  %add.ptr53 = getelementptr i8, ptr %32, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 1048576) #5, !srcloc !364
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !398
  tail call void @arm_heavy_mb() #5
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %add.ptr58 = getelementptr i8, ptr %34, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 -1) #5, !srcloc !364
  %35 = ptrtoint ptr %mdsi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mdsi, align 4
  %lanes60 = getelementptr inbounds %struct.mipi_dsi_device, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %lanes60 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %lanes60, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp61 = icmp eq i32 %38, 2
  %val.3 = select i1 %cmp61, i32 569, i32 537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !399
  tail call void @arm_heavy_mb() #5
  %39 = tail call i32 @llvm.bswap.i32(i32 %val.3)
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %add.ptr69 = getelementptr i8, ptr %41, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 %39) #5, !srcloc !364
  %42 = ptrtoint ptr %mdsi to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mdsi, align 4
  %lanes71 = getelementptr inbounds %struct.mipi_dsi_device, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %lanes71 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %lanes71, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp72 = icmp eq i32 %45, 2
  %val.4 = select i1 %cmp72, i32 15, i32 7
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %do.end20
  %i.0 = phi i32 [ 0, %do.end20 ], [ %inc, %while.body.while.cond_crit_edge ]
  %46 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs, align 4
  %add.ptr77 = getelementptr i8, ptr %47, i32 36
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77) #5, !srcloc !361
  %49 = lshr i32 %48, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !400
  %and81 = and i32 %49, %val.4
  call void @__sanitizer_cov_trace_cmp4(i32 %and81, i32 %val.4)
  %cmp82.not = icmp eq i32 %and81, %val.4
  br i1 %cmp82.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #5
  %inc = add nuw nsw i32 %i.0, 1
  %cmp83 = icmp eq i32 %i.0, 100
  br i1 %cmp83, label %do.end87, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

do.end87:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %d, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.77) #8
  br label %cleanup

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs, align 4
  %add.ptr93 = getelementptr i8, ptr %53, i32 80
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93) #5, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !401
  %55 = ptrtoint ptr %mdsi to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mdsi, align 4
  %mode_flags98 = getelementptr inbounds %struct.mipi_dsi_device, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %mode_flags98 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mode_flags98, align 8
  %and99 = lshr i32 %58, 7
  %59 = and i32 %and99, 16
  %60 = and i32 %54, -50331649
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  %and104 = or i32 %59, %61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !402
  tail call void @arm_heavy_mb() #5
  %62 = tail call i32 @llvm.bswap.i32(i32 %and104)
  %63 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs, align 4
  %add.ptr109 = getelementptr i8, ptr %64, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 %62) #5, !srcloc !364
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #5
  %65 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %d, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %66, ptr noundef nonnull @.str.80) #8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end87
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mcde_dsi_setup_video_mode(ptr nocapture noundef readonly %d, ptr noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdsi = getelementptr inbounds %struct.mcde_dsi, ptr %d, i32 0, i32 6
  %0 = ptrtoint ptr %mdsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdsi, align 4
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %sw.epilog.i [
    i32 0, label %entry.mipi_dsi_pixel_format_to_bpp.exit_crit_edge
    i32 1, label %entry.mipi_dsi_pixel_format_to_bpp.exit_crit_edge1650
    i32 2, label %mipi_dsi_pixel_format_to_bpp.exit.thread1608
    i32 3, label %mipi_dsi_pixel_format_to_bpp.exit.thread
  ]

entry.mipi_dsi_pixel_format_to_bpp.exit_crit_edge1650: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mipi_dsi_pixel_format_to_bpp.exit

entry.mipi_dsi_pixel_format_to_bpp.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mipi_dsi_pixel_format_to_bpp.exit

mipi_dsi_pixel_format_to_bpp.exit.thread1608:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mode_flags1611 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %mode_flags1611 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode_flags1611, align 8
  %and1612 = shl i32 %6, 13
  %7 = and i32 %and1612, 16384
  %and41615 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41615)
  %tobool5.not1616 = icmp eq i32 %and41615, 0
  %or81617 = or i32 %7, 98304
  %val.11618 = select i1 %tobool5.not1616, i32 %7, i32 %or81617
  %or16 = or i32 %val.11618, 6016
  br label %sw.epilog

mipi_dsi_pixel_format_to_bpp.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mode_flags1597 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %mode_flags1597 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode_flags1597, align 8
  %and1598 = shl i32 %9, 13
  %10 = and i32 %and1598, 16384
  %and41601 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41601)
  %tobool5.not1602 = icmp eq i32 %and41601, 0
  %or81603 = or i32 %10, 98304
  %val.11604 = select i1 %tobool5.not1602, i32 %10, i32 %or81603
  %or12 = or i32 %val.11604, 896
  br label %sw.epilog

sw.epilog.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mipi_dsi_pixel_format_to_bpp.exit

mipi_dsi_pixel_format_to_bpp.exit:                ; preds = %sw.epilog.i, %entry.mipi_dsi_pixel_format_to_bpp.exit_crit_edge, %entry.mipi_dsi_pixel_format_to_bpp.exit_crit_edge1650
  %retval.0.i1575 = phi i32 [ -2, %sw.epilog.i ], [ 3, %entry.mipi_dsi_pixel_format_to_bpp.exit_crit_edge ], [ 3, %entry.mipi_dsi_pixel_format_to_bpp.exit_crit_edge1650 ]
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode_flags, align 8
  %and = shl i32 %12, 13
  %13 = and i32 %and, 16384
  %and4 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %or8 = or i32 %13, 98304
  %val.1 = select i1 %tobool5.not, i32 %13, i32 %or8
  %14 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.205)
  switch i32 %3, label %do.end [
    i32 0, label %sw.bb20
    i32 1, label %sw.bb17
  ]

sw.bb17:                                          ; preds = %mipi_dsi_pixel_format_to_bpp.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or19 = or i32 %val.1, 11136
  br label %sw.epilog

sw.bb20:                                          ; preds = %mipi_dsi_pixel_format_to_bpp.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or22 = or i32 %val.1, 16256
  br label %sw.epilog

do.end:                                           ; preds = %mipi_dsi_pixel_format_to_bpp.exit
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.82) #8
  br label %cleanup1137

sw.epilog:                                        ; preds = %sw.bb20, %sw.bb17, %mipi_dsi_pixel_format_to_bpp.exit.thread, %mipi_dsi_pixel_format_to_bpp.exit.thread1608
  %div1605 = phi i32 [ %retval.0.i1575, %sw.bb20 ], [ %retval.0.i1575, %sw.bb17 ], [ 2, %mipi_dsi_pixel_format_to_bpp.exit.thread1608 ], [ 2, %mipi_dsi_pixel_format_to_bpp.exit.thread ]
  %val.2 = phi i32 [ %or22, %sw.bb20 ], [ %or19, %sw.bb17 ], [ %or16, %mipi_dsi_pixel_format_to_bpp.exit.thread1608 ], [ %or12, %mipi_dsi_pixel_format_to_bpp.exit.thread ]
  %or25 = or i32 %val.2, 3407872
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !403
  tail call void @arm_heavy_mb() #5
  %17 = tail call i32 @llvm.bswap.i32(i32 %or25)
  %regs = getelementptr inbounds %struct.mcde_dsi, ptr %d, i32 0, i32 13
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %17) #5, !srcloc !364
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %20 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vdisplay, align 2
  %conv29 = zext i16 %21 to i32
  %shl = shl i32 %conv29, 20
  %vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 7
  %22 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vsync_start, align 4
  %conv30 = zext i16 %23 to i32
  %sub = sub nsw i32 %conv30, %conv29
  %shl33 = shl nsw i32 %sub, 12
  %or34 = or i32 %shl33, %shl
  %vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 8
  %24 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vsync_end, align 2
  %conv35 = zext i16 %25 to i32
  %sub38 = sub nsw i32 %conv35, %conv30
  %or40 = or i32 %or34, %sub38
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %26 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vtotal, align 4
  %conv41 = zext i16 %27 to i32
  %sub44 = sub nsw i32 %conv41, %conv35
  %shl45 = shl nsw i32 %sub44, 6
  %or46 = or i32 %or40, %shl45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !404
  tail call void @arm_heavy_mb() #5
  %28 = tail call i32 @llvm.bswap.i32(i32 %or46)
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  %add.ptr51 = getelementptr i8, ptr %30, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %28) #5, !srcloc !364
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %31 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %hsync_start, align 2
  %conv52 = zext i16 %32 to i32
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %33 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %hdisplay, align 4
  %conv53 = zext i16 %34 to i32
  %sub54 = sub nsw i32 %conv52, %conv53
  %conv55 = and i32 %div1605, 255
  %mul = mul nsw i32 %sub54, %conv55
  %sub57 = add nsw i32 %mul, -8
  %35 = ptrtoint ptr %mdsi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mdsi, align 4
  %mode_flags59 = getelementptr inbounds %struct.mipi_dsi_device, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %mode_flags59 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mode_flags59, align 8
  %and60 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  %htotal80 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %39 = ptrtoint ptr %htotal80 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %htotal80, align 2
  %conv81 = zext i16 %40 to i32
  br i1 %tobool61.not, label %if.else, label %if.then62

if.then62:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %41 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %hsync_end, align 4
  %conv64 = zext i16 %42 to i32
  %sub65 = sub nsw i32 %conv81, %conv64
  %mul67 = mul nsw i32 %sub65, %conv55
  %sub69 = add nsw i32 %mul67, -10
  %sub74 = sub nsw i32 %conv64, %conv52
  %mul76 = mul nsw i32 %sub74, %conv55
  %sub79 = add nsw i32 %mul76, -14
  br label %if.end90

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %sub84 = sub nsw i32 %conv81, %conv52
  %mul86 = mul nsw i32 %sub84, %conv55
  %sub89 = add nsw i32 %mul86, -14
  br label %if.end90

if.end90:                                         ; preds = %if.else, %if.then62
  %hsa.0 = phi i32 [ %sub79, %if.then62 ], [ 0, %if.else ]
  %hbp.0 = phi i32 [ %sub69, %if.then62 ], [ %sub89, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %mul)
  %cmp = icmp slt i32 %mul, 8
  br i1 %cmp, label %do.end95, label %if.end90.if.end97_crit_edge

if.end90.if.end97_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

do.end95:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %d, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.85) #8
  br label %if.end97

if.end97:                                         ; preds = %do.end95, %if.end90.if.end97_crit_edge
  %hfp.0 = phi i32 [ 0, %do.end95 ], [ %sub57, %if.end90.if.end97_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hbp.0)
  %cmp98 = icmp slt i32 %hbp.0, 0
  br i1 %cmp98, label %do.end103, label %if.end97.if.end105_crit_edge

if.end97.if.end105_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end105

do.end103:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %d, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %46, ptr noundef nonnull @.str.88) #8
  br label %if.end105

if.end105:                                        ; preds = %do.end103, %if.end97.if.end105_crit_edge
  %hbp.1 = phi i32 [ 0, %do.end103 ], [ %hbp.0, %if.end97.if.end105_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hsa.0)
  %cmp106 = icmp slt i32 %hsa.0, 0
  br i1 %cmp106, label %do.end111, label %if.end105.do.body114_crit_edge

if.end105.do.body114_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body114

do.end111:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %d, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.91) #8
  br label %do.body114

do.body114:                                       ; preds = %do.end111, %if.end105.do.body114_crit_edge
  %hsa.1 = phi i32 [ 0, %do.end111 ], [ %hsa.0, %if.end105.do.body114_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_dsi_setup_video_mode, %if.then119)) #5
          to label %do.end123 [label %if.then119], !srcloc !360

if.then119:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %d, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug319, ptr noundef %50, ptr noundef nonnull @.str.93, i32 noundef %hfp.0, i32 noundef %hbp.1, i32 noundef %hsa.1) #5
  br label %do.end123

do.end123:                                        ; preds = %if.then119, %do.body114
  %shl125 = shl i32 %hbp.1, 10
  %shl127 = shl i32 %hfp.0, 20
  %or126 = or i32 %shl125, %shl127
  %or128 = or i32 %or126, %hsa.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !405
  tail call void @arm_heavy_mb() #5
  %51 = tail call i32 @llvm.bswap.i32(i32 %or128)
  %52 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs, align 4
  %add.ptr133 = getelementptr i8, ptr %53, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr133, i32 %51) #5, !srcloc !364
  %54 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %hdisplay, align 4
  %conv135 = zext i16 %55 to i32
  %mul137 = mul nuw nsw i32 %conv55, %conv135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !406
  tail call void @arm_heavy_mb() #5
  %56 = tail call i32 @llvm.bswap.i32(i32 %mul137)
  %57 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs, align 4
  %add.ptr142 = getelementptr i8, ptr %58, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr142, i32 %56) #5, !srcloc !364
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_dsi_setup_video_mode, %if.then155)) #5
          to label %if.else358 [label %if.then155], !srcloc !360

if.then155:                                       ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %d, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug320, ptr noundef %60, ptr noundef nonnull @.str.94, i32 noundef %mul137) #5
  br label %if.else358

if.else358:                                       ; preds = %if.then155, %do.end123
  %61 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mode, align 4
  %mul160 = mul i32 %62, 1000
  %conv161 = sext i32 %mul160 to i64
  %sub162 = add nsw i64 %conv161, 999999999999
  %63 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul160, i64 %sub162) #9, !srcloc !407
  %asmresult1.i = extractvalue { i64, i64 } %63, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_dsi_setup_video_mode, %if.then377)) #5
          to label %do.end381 [label %if.then377], !srcloc !360

if.then377:                                       ; preds = %if.else358
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %d, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug321, ptr noundef %65, ptr noundef nonnull @.str.95, i64 noundef %asmresult1.i) #5
  br label %do.end381

do.end381:                                        ; preds = %if.then377, %if.else358
  %htotal382 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %66 = ptrtoint ptr %htotal382 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %htotal382, align 2
  %conv383 = zext i16 %67 to i64
  %mul384 = mul i64 %asmresult1.i, %conv383
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_dsi_setup_video_mode, %if.then397)) #5
          to label %if.end849 [label %if.then397], !srcloc !360

if.then397:                                       ; preds = %do.end381
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %d, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug322, ptr noundef %69, ptr noundef nonnull @.str.96, i64 noundef %mul384) #5
  br label %if.end849

if.end849:                                        ; preds = %if.then397, %do.end381
  %70 = ptrtoint ptr %mdsi to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mdsi, align 4
  %hs_rate = getelementptr inbounds %struct.mipi_dsi_device, ptr %71, i32 0, i32 7
  %72 = ptrtoint ptr %hs_rate to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %hs_rate, align 4
  %div4031542 = lshr i32 %73, 3
  %conv404 = zext i32 %div4031542 to i64
  %mul405 = mul i64 %mul384, %conv404
  %74 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul405) #9, !srcloc !408
  %75 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul405, i64 %74, i32 0) #9, !srcloc !409
  %asmresult10.i1581 = extractvalue { i64, i32 } %75, 0
  %div6021543 = lshr i64 %asmresult10.i1581, 18
  %76 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %div6021543) #9, !srcloc !408
  %77 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %div6021543, i64 %76, i32 0) #9, !srcloc !409
  %asmresult10.i1588 = extractvalue { i64, i32 } %77, 0
  %div8251544 = lshr i64 %asmresult10.i1588, 18
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %71, i32 0, i32 4
  %78 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %lanes, align 8
  %conv853 = zext i32 %79 to i64
  %mul854 = mul i64 %div8251544, %conv853
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_dsi_setup_video_mode, %if.then867)) #5
          to label %do.end874 [label %if.then867], !srcloc !360

if.then867:                                       ; preds = %if.end849
  call void @__sanitizer_cov_trace_pc() #7
  %80 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %d, align 4
  %call869 = tail call i32 @drm_mode_vrefresh(ptr noundef %mode) #5
  %82 = ptrtoint ptr %mdsi to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mdsi, align 4
  %hs_rate871 = getelementptr inbounds %struct.mipi_dsi_device, ptr %83, i32 0, i32 7
  %84 = ptrtoint ptr %hs_rate871 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %hs_rate871, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug323, ptr noundef %81, ptr noundef nonnull @.str.97, i64 noundef %mul854, i32 noundef %call869, i32 noundef %85) #5
  br label %do.end874

do.end874:                                        ; preds = %if.then867, %if.end849
  %86 = ptrtoint ptr %mdsi to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mdsi, align 4
  %mode_flags876 = getelementptr inbounds %struct.mipi_dsi_device, ptr %87, i32 0, i32 6
  %88 = ptrtoint ptr %mode_flags876 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mode_flags876, align 8
  %and877 = and i32 %89, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and877)
  %tobool878.not = icmp eq i32 %and877, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %90 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs, align 4
  br i1 %tobool878.not, label %do.body901, label %do.body880

do.body880:                                       ; preds = %do.end874
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr884 = getelementptr i8, ptr %91, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr884, i32 0) #5, !srcloc !364
  %hsync_end885 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %92 = ptrtoint ptr %hsync_end885 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %hsync_end885, align 4
  %conv886 = zext i16 %93 to i32
  %94 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %hsync_start, align 2
  %conv888 = zext i16 %95 to i32
  %96 = trunc i64 %mul854 to i32
  %sub889.neg = add i32 %96, -6
  %97 = sub i32 %sub889.neg, %conv886
  %conv893 = add i32 %97, %conv888
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !410
  tail call void @arm_heavy_mb() #5
  %98 = tail call i32 @llvm.bswap.i32(i32 %conv893)
  %99 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs, align 4
  %add.ptr899 = getelementptr i8, ptr %100, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr899, i32 %98) #5, !srcloc !364
  br label %if.end924

do.body901:                                       ; preds = %do.end874
  %add.ptr905 = getelementptr i8, ptr %91, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr905, i32 0) #5, !srcloc !364
  %101 = trunc i64 %mul854 to i32
  %conv908 = add i32 %101, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %conv908)
  %cmp909 = icmp ugt i32 %conv908, 8191
  br i1 %cmp909, label %do.end914, label %do.body901.if.end916_crit_edge

do.body901.if.end916_crit_edge:                   ; preds = %do.body901
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end916

do.end914:                                        ; preds = %do.body901
  call void @__sanitizer_cov_trace_pc() #7
  %102 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %d, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.99, i32 noundef %conv908) #8
  br label %if.end916

if.end916:                                        ; preds = %do.end914, %do.body901.if.end916_crit_edge
  %and918 = and i32 %conv908, 8191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  tail call void @arm_heavy_mb() #5
  %104 = tail call i32 @llvm.bswap.i32(i32 %and918)
  %105 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs, align 4
  %add.ptr923 = getelementptr i8, ptr %106, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr923, i32 %104) #5, !srcloc !364
  br label %if.end924

if.end924:                                        ; preds = %if.end916, %do.body880
  %blkline_pck.0 = phi i32 [ %conv893, %do.body880 ], [ %conv908, %if.end916 ]
  %add925 = add i32 %blkline_pck.0, 6
  %107 = ptrtoint ptr %mdsi to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mdsi, align 4
  %lanes927 = getelementptr inbounds %struct.mipi_dsi_device, ptr %108, i32 0, i32 4
  %109 = ptrtoint ptr %lanes927 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %lanes927, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %110)
  %cmp928 = icmp ne i32 %110, 2
  %and931 = and i32 %hsa.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and931)
  %tobool932.not = icmp eq i32 %and931, 0
  %or.cond = select i1 %cmp928, i1 true, i1 %tobool932.not
  %and934 = and i32 %hfp.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and934)
  %tobool935.not = icmp eq i32 %and934, 0
  %or.cond1549 = select i1 %or.cond, i1 true, i1 %tobool935.not
  br i1 %or.cond1549, label %if.end924.if.end942_crit_edge, label %land.lhs.true936

if.end924.if.end942_crit_edge:                    ; preds = %if.end924
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end942

land.lhs.true936:                                 ; preds = %if.end924
  call void @__sanitizer_cov_trace_pc() #7
  %mode_flags938 = getelementptr inbounds %struct.mipi_dsi_device, ptr %108, i32 0, i32 6
  %111 = ptrtoint ptr %mode_flags938 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %mode_flags938, align 8
  %and939 = and i32 %112, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and939)
  %tobool940.not = icmp eq i32 %and939, 0
  %dec = add i32 %blkline_pck.0, 5
  %spec.select1550 = select i1 %tobool940.not, i32 %add925, i32 %dec
  br label %if.end942

if.end942:                                        ; preds = %land.lhs.true936, %if.end924.if.end942_crit_edge
  %line_duration.0 = phi i32 [ %add925, %if.end924.if.end942_crit_edge ], [ %spec.select1550, %land.lhs.true936 ]
  %div9461545 = lshr i32 %110, 1
  %add947 = add i32 %line_duration.0, %div9461545
  %div948 = udiv i32 %add947, %110
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_dsi_setup_video_mode, %if.then961)) #5
          to label %do.end965 [label %if.then961], !srcloc !360

if.then961:                                       ; preds = %if.end942
  call void @__sanitizer_cov_trace_pc() #7
  %113 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %d, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug324, ptr noundef %114, ptr noundef nonnull @.str.101, i32 noundef %div948) #5
  br label %do.end965

do.end965:                                        ; preds = %if.then961, %if.end942
  %or967 = or i32 %div948, 393216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !412
  tail call void @arm_heavy_mb() #5
  %115 = tail call i32 @llvm.bswap.i32(i32 %or967)
  %116 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regs, align 4
  %add.ptr972 = getelementptr i8, ptr %117, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr972, i32 %115) #5, !srcloc !364
  %118 = ptrtoint ptr %mdsi to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mdsi, align 4
  %mode_flags974 = getelementptr inbounds %struct.mipi_dsi_device, ptr %119, i32 0, i32 6
  %120 = ptrtoint ptr %mode_flags974 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %mode_flags974, align 8
  %and975 = and i32 %121, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and975)
  %tobool976.not = icmp eq i32 %and975, 0
  br i1 %tobool976.not, label %do.end965.if.end1102_crit_edge, label %if.then977

do.end965.if.end1102_crit_edge:                   ; preds = %do.end965
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1102

if.then977:                                       ; preds = %do.end965
  %122 = ptrtoint ptr %htotal382 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %htotal382, align 2
  %conv979 = zext i16 %123 to i32
  %mul981 = mul nuw nsw i32 %conv55, %conv979
  %124 = trunc i64 %mul854 to i32
  %125 = sub i32 %124, %mul981
  %conv985 = add i32 %125, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv985)
  %cmp986 = icmp slt i32 %conv985, 0
  br i1 %cmp986, label %do.end991, label %do.body1007

do.end991:                                        ; preds = %if.then977
  call void @__sanitizer_cov_trace_pc() #7
  %126 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %d, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.103) #8
  %128 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %d, align 4
  %call997 = tail call i32 @drm_mode_vrefresh(ptr noundef %mode) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %129, ptr noundef nonnull @.str.106, i64 noundef %mul854, i32 noundef %call997) #8
  %130 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %d, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.109, i32 noundef %blkline_pck.0) #8
  %132 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %d, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.112, i32 noundef %conv985) #8
  br label %cleanup1137

do.body1007:                                      ; preds = %if.then977
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_dsi_setup_video_mode, %if.then1019)) #5
          to label %do.end1023 [label %if.then1019], !srcloc !360

if.then1019:                                      ; preds = %do.body1007
  call void @__sanitizer_cov_trace_pc() #7
  %134 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %d, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug325, ptr noundef %135, ptr noundef nonnull @.str.114, i32 noundef %conv985) #5
  br label %do.end1023

do.end1023:                                       ; preds = %if.then1019, %do.body1007
  %136 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs, align 4
  %add.ptr1025 = getelementptr i8, ptr %137, i32 160
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1025) #5, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !413
  %139 = and i32 %138, -14745348
  %140 = tail call i32 @llvm.bswap.i32(i32 %139)
  %shl1030 = shl i32 %conv985, 13
  %or1031 = or i32 %140, %shl1030
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !414
  tail call void @arm_heavy_mb() #5
  %141 = tail call i32 @llvm.bswap.i32(i32 %or1031)
  %142 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %regs, align 4
  %add.ptr1036 = getelementptr i8, ptr %143, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1036, i32 %141) #5, !srcloc !364
  %and1038 = and i32 %conv985, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !415
  tail call void @arm_heavy_mb() #5
  %144 = tail call i32 @llvm.bswap.i32(i32 %and1038)
  %145 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %regs, align 4
  %add.ptr1043 = getelementptr i8, ptr %146, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1043, i32 %144) #5, !srcloc !364
  %147 = ptrtoint ptr %mdsi to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %mdsi, align 4
  %lanes1048 = getelementptr inbounds %struct.mipi_dsi_device, ptr %148, i32 0, i32 4
  %149 = ptrtoint ptr %lanes1048 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %lanes1048, align 8
  %div10501546 = lshr i32 %150, 1
  %add1051 = add i32 %div10501546, %125
  %div1052 = udiv i32 %add1051, %150
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_dsi_setup_video_mode, %if.then1065)) #5
          to label %do.end1069 [label %if.then1065], !srcloc !360

if.then1065:                                      ; preds = %do.end1023
  call void @__sanitizer_cov_trace_pc() #7
  %151 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %d, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug326, ptr noundef %152, ptr noundef nonnull @.str.115, i32 noundef %div1052) #5
  br label %do.end1069

do.end1069:                                       ; preds = %if.then1065, %do.end1023
  %153 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regs, align 4
  %add.ptr1073 = getelementptr i8, ptr %154, i32 168
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1073) #5, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !416
  %156 = and i32 %155, 15794175
  %157 = tail call i32 @llvm.bswap.i32(i32 %156)
  %or1079 = or i32 %157, %div1052
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !417
  tail call void @arm_heavy_mb() #5
  %158 = tail call i32 @llvm.bswap.i32(i32 %or1079)
  %159 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %regs, align 4
  %add.ptr1084 = getelementptr i8, ptr %160, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1084, i32 %158) #5, !srcloc !364
  %161 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %regs, align 4
  %add.ptr1088 = getelementptr i8, ptr %162, i32 192
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1088) #5, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !418
  %164 = and i32 %163, 65535
  %165 = tail call i32 @llvm.bswap.i32(i32 %164)
  %sub1093 = add i32 %125, -12
  %or1095 = or i32 %165, %sub1093
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !419
  tail call void @arm_heavy_mb() #5
  %166 = tail call i32 @llvm.bswap.i32(i32 %or1095)
  %167 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %regs, align 4
  %add.ptr1100 = getelementptr i8, ptr %168, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1100, i32 %166) #5, !srcloc !364
  br label %if.end1102

if.end1102:                                       ; preds = %do.end1069, %do.end965.if.end1102_crit_edge
  %169 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %regs, align 4
  %add.ptr1106 = getelementptr i8, ptr %170, i32 196
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1106) #5, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !420
  %172 = and i32 %171, -65536
  %173 = tail call i32 @llvm.bswap.i32(i32 %172)
  %sub1111 = add i32 %blkline_pck.0, -6
  %shl1112 = shl i32 %sub1111, 16
  %or1113 = or i32 %173, %shl1112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !421
  tail call void @arm_heavy_mb() #5
  %174 = tail call i32 @llvm.bswap.i32(i32 %or1113)
  %175 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %regs, align 4
  %add.ptr1118 = getelementptr i8, ptr %176, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1118, i32 %174) #5, !srcloc !364
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_dsi_setup_video_mode, %if.then1131)) #5
          to label %cleanup1137 [label %if.then1131], !srcloc !360

if.then1131:                                      ; preds = %if.end1102
  call void @__sanitizer_cov_trace_pc() #7
  %177 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %d, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug327, ptr noundef %178, ptr noundef nonnull @.str.116, i32 noundef %sub1111) #5
  br label %cleanup1137

cleanup1137:                                      ; preds = %if.then1131, %if.end1102, %do.end991, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mcde_dsi_disable(ptr nocapture noundef readonly %bridge) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -8
  %mdsi = getelementptr i8, ptr %bridge, i32 304
  %0 = ptrtoint ptr %mdsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdsi, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode_flags, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %regs.i20 = getelementptr i8, ptr %bridge, i32 332
  br i1 %tobool.not, label %entry.while.cond.i24_crit_edge, label %if.then

entry.while.cond.i24_crit_edge:                   ; preds = %entry
  br label %while.cond.i24

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %regs.i20 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i20, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !422
  %7 = and i32 %6, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !423
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %regs.i20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i20, align 4
  %add.ptr5 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %7) #5, !srcloc !364
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.then
  %i.0.i = phi i32 [ 0, %if.then ], [ %inc.i, %while.body.i.while.cond.i_crit_edge ]
  %10 = ptrtoint ptr %regs.i20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i20, align 4
  %add.ptr.i19 = getelementptr i8, ptr %11, i32 188
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #5, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !424
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 0
  br i1 %cmp.not.i, label %while.cond.i.do.body6_crit_edge, label %while.body.i

while.cond.i.do.body6_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6

while.body.i:                                     ; preds = %while.cond.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %inc.i = add nuw nsw i32 %i.0.i, 1
  %cmp2.i = icmp eq i32 %i.0.i, 100
  br i1 %cmp2.i, label %while.body.i.do.body6.sink.split_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

while.body.i.do.body6.sink.split_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6.sink.split

while.cond.i24:                                   ; preds = %while.body.i27.while.cond.i24_crit_edge, %entry.while.cond.i24_crit_edge
  %i.0.i21 = phi i32 [ %inc.i25, %while.body.i27.while.cond.i24_crit_edge ], [ 0, %entry.while.cond.i24_crit_edge ]
  %14 = ptrtoint ptr %regs.i20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i20, align 4
  %add.ptr.i22 = getelementptr i8, ptr %15, i32 84
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #5, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !425
  %17 = and i32 %16, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not.i23 = icmp eq i32 %17, 0
  br i1 %cmp.not.i23, label %while.cond.i24.do.body6_crit_edge, label %while.body.i27

while.cond.i24.do.body6_crit_edge:                ; preds = %while.cond.i24
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6

while.body.i27:                                   ; preds = %while.cond.i24
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %inc.i25 = add nuw nsw i32 %i.0.i21, 1
  %cmp2.i26 = icmp eq i32 %i.0.i21, 100
  br i1 %cmp2.i26, label %while.body.i27.do.body6.sink.split_crit_edge, label %while.body.i27.while.cond.i24_crit_edge

while.body.i27.while.cond.i24_crit_edge:          ; preds = %while.body.i27
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i24

while.body.i27.do.body6.sink.split_crit_edge:     ; preds = %while.body.i27
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6.sink.split

do.body6.sink.split:                              ; preds = %while.body.i27.do.body6.sink.split_crit_edge, %while.body.i.do.body6.sink.split_crit_edge
  %.str.119.sink = phi ptr [ @.str.119, %while.body.i27.do.body6.sink.split_crit_edge ], [ @.str.117, %while.body.i.do.body6.sink.split_crit_edge ]
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull %.str.119.sink) #8
  br label %do.body6

do.body6:                                         ; preds = %do.body6.sink.split, %while.cond.i24.do.body6_crit_edge, %while.cond.i.do.body6_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !426
  tail call void @arm_heavy_mb() #5
  %regs9 = getelementptr i8, ptr %bridge, i32 332
  %20 = ptrtoint ptr %regs9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs9, align 4
  %add.ptr10 = getelementptr i8, ptr %21, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #5, !srcloc !364
  %hs_clk = getelementptr i8, ptr %bridge, i32 312
  %22 = ptrtoint ptr %hs_clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hs_clk, align 4
  tail call void @clk_disable(ptr noundef %23) #5
  tail call void @clk_unprepare(ptr noundef %23) #5
  %lp_clk = getelementptr i8, ptr %bridge, i32 316
  %24 = ptrtoint ptr %lp_clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lp_clk, align 4
  tail call void @clk_disable(ptr noundef %25) #5
  tail call void @clk_unprepare(ptr noundef %25) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcde_dsi_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 348, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.121) #5
  %prcmu = getelementptr inbounds %struct.mcde_dsi, ptr %call.i, i32 0, i32 14
  %2 = ptrtoint ptr %prcmu to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %prcmu, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.122) #8
  %3 = ptrtoint ptr %prcmu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prcmu, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %regs = getelementptr inbounds %struct.mcde_dsi, ptr %call.i, i32 0, i32 13
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %regs, align 4
  %cmp.i63 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %add.ptr = getelementptr i8, ptr %call10, i32 4080
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !361
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !427
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.125, i32 noundef %9) #8
  %dsi_host = getelementptr inbounds %struct.mcde_dsi, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %dsi_host to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev1, ptr %dsi_host, align 4
  %ops = getelementptr inbounds %struct.mcde_dsi, ptr %call.i, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mcde_dsi_host_ops, ptr %ops, align 4
  %call24 = tail call i32 @mipi_dsi_host_register(ptr noundef %dsi_host) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %do.end28, label %do.end32

do.end28:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.128, i32 noundef %call24) #8
  br label %cleanup

do.end32:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.131) #8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call33 = tail call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @mcde_dsi_component_ops) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %do.end28, %if.then13, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %do.end ], [ %7, %if.then13 ], [ %call24, %do.end28 ], [ %call33, %do.end32 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcde_dsi_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @mcde_dsi_component_ops) #5
  %dsi_host = getelementptr inbounds %struct.mcde_dsi, ptr %1, i32 0, i32 5
  tail call void @mipi_dsi_host_unregister(ptr noundef %dsi_host) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_host_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcde_dsi_host_attach(ptr nocapture noundef %host, ptr noundef %mdsi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %host, i32 -296
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %mdsi, i32 0, i32 4
  %0 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lanes, align 8
  %2 = add i32 %1, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %2)
  %3 = icmp ult i32 %2, -2
  br i1 %3, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.133) #5
  br label %cleanup

do.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.134, i32 noundef %1) #8
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %mdsi, i32 0, i32 5
  %8 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %switch.lookup, label %do.end.mipi_dsi_pixel_format_to_bpp.exit_crit_edge

do.end.mipi_dsi_pixel_format_to_bpp.exit_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %mipi_dsi_pixel_format_to_bpp.exit

switch.lookup:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.mcde_dsi_host_attach, i32 0, i32 %9
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mipi_dsi_pixel_format_to_bpp.exit

mipi_dsi_pixel_format_to_bpp.exit:                ; preds = %switch.lookup, %do.end.mipi_dsi_pixel_format_to_bpp.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ -22, %do.end.mipi_dsi_pixel_format_to_bpp.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.137, i32 noundef %9, i32 noundef %retval.0.i) #8
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %mdsi, i32 0, i32 6
  %14 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode_flags, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.140, i32 noundef %15) #8
  %mdsi14 = getelementptr i8, ptr %host, i32 16
  %16 = ptrtoint ptr %mdsi14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %mdsi, ptr %mdsi14, align 4
  %mcde = getelementptr i8, ptr %host, i32 -292
  %17 = ptrtoint ptr %mcde to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mcde, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %mipi_dsi_pixel_format_to_bpp.exit.cleanup_crit_edge, label %if.then15

mipi_dsi_pixel_format_to_bpp.exit.cleanup_crit_edge: ; preds = %mipi_dsi_pixel_format_to_bpp.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then15:                                        ; preds = %mipi_dsi_pixel_format_to_bpp.exit
  call void @__sanitizer_cov_trace_pc() #7
  %mdsi1.i = getelementptr inbounds %struct.mcde, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %mdsi1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %mdsi, ptr %mdsi1.i, align 8
  %20 = ptrtoint ptr %mdsi14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mdsi14, align 4
  %mode_flags.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %mode_flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mode_flags.i, align 8
  %and.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %24 = ptrtoint ptr %mcde to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mcde, align 4
  %flow_mode5.i = getelementptr inbounds %struct.mcde, ptr %25, i32 0, i32 9
  %..i = select i1 %tobool.not.i, i32 1, i32 4
  %26 = ptrtoint ptr %flow_mode5.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %..i, ptr %flow_mode5.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %mipi_dsi_pixel_format_to_bpp.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.then15 ], [ 0, %mipi_dsi_pixel_format_to_bpp.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mcde_dsi_host_detach(ptr nocapture noundef %host, ptr nocapture noundef readnone %mdsi) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdsi1 = getelementptr i8, ptr %host, i32 16
  %0 = ptrtoint ptr %mdsi1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %mdsi1, align 4
  %mcde = getelementptr i8, ptr %host, i32 -292
  %1 = ptrtoint ptr %mcde to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mcde, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mdsi3 = getelementptr inbounds %struct.mcde, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %mdsi3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %mdsi3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcde_dsi_host_transfer(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %host, i32 -296
  %tx_buf = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 4
  %0 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_buf, align 4
  %tx_len = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 3
  %2 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_len, align 4
  %rx_len = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 5
  %4 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp = icmp ugt i32 %3, 16
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.142) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp1 = icmp ugt i32 %5, 4
  br i1 %cmp1, label %do.end5, label %do.body8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.145) #8
  br label %cleanup

do.body8:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcde_dsi_host_transfer.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcde_dsi_host_transfer, %if.then12)) #5
          to label %do.end16 [label %if.then12], !srcloc !360

if.then12:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %msg, align 4
  %conv = zext i8 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcde_dsi_host_transfer.__UNIQUE_ID_ddebug318, ptr noundef %11, ptr noundef nonnull @.str.147, i32 noundef %conv, i32 noundef %3, i32 noundef %5) #5
  br label %do.end16

do.end16:                                         ; preds = %if.then12, %do.body8
  %type = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 1
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %type, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.206)
  switch i8 %15, label %if.else [
    i8 4, label %do.end16.if.end35_crit_edge
    i8 20, label %do.end16.if.end35_crit_edge290
    i8 36, label %do.end16.if.end35_crit_edge291
    i8 6, label %do.end16.if.end35_crit_edge292
  ]

do.end16.if.end35_crit_edge292:                   ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

do.end16.if.end35_crit_edge291:                   ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

do.end16.if.end35_crit_edge290:                   ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

do.end16.if.end35_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.else:                                          ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.end35:                                         ; preds = %if.else, %do.end16.if.end35_crit_edge, %do.end16.if.end35_crit_edge290, %do.end16.if.end35_crit_edge291, %do.end16.if.end35_crit_edge292
  %val.0 = phi i32 [ 0, %if.else ], [ 1, %do.end16.if.end35_crit_edge ], [ 1, %do.end16.if.end35_crit_edge290 ], [ 1, %do.end16.if.end35_crit_edge291 ], [ 1, %do.end16.if.end35_crit_edge292 ]
  %call37 = tail call zeroext i1 @mipi_dsi_packet_format_is_long(i8 noundef zeroext %15) #5
  %or = or i32 %val.0, 8
  %spec.select = select i1 %call37, i32 %or, i32 %val.0
  %shl = shl nuw nsw i32 %3, 16
  %or41 = or i32 %spec.select, %shl
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %type, align 1
  %conv44 = zext i8 %18 to i32
  %shl45 = shl nuw nsw i32 %conv44, 8
  %or42 = or i32 %shl45, %or41
  %or46 = or i32 %or42, 2097152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !428
  tail call void @arm_heavy_mb() #5
  %19 = tail call i32 @llvm.bswap.i32(i32 %or46)
  %regs = getelementptr i8, ptr %host, i32 44
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %19) #5, !srcloc !364
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp50.not = icmp eq i32 %3, 0
  br i1 %cmp50.not, label %if.end35.do.body61_crit_edge, label %for.body.preheader

if.end35.do.body61_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body61

for.body.preheader:                               ; preds = %if.end35
  %22 = add nsw i32 %3, -1
  %umin = call i32 @llvm.umin.i32(i32 %22, i32 3)
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %1, align 1
  %conv57 = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %umin)
  %exitcond.not = icmp eq i32 %umin, 0
  br i1 %exitcond.not, label %for.body.preheader.do.body61_crit_edge, label %for.body.1

for.body.preheader.do.body61_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body61

for.body.1:                                       ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr i8, ptr %1, i32 1
  %25 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.1, align 1
  %conv57.1 = zext i8 %26 to i32
  %shl58.1 = shl nuw nsw i32 %conv57.1, 8
  %or59.1 = or i32 %shl58.1, %conv57
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %umin)
  %exitcond.not.1 = icmp eq i32 %umin, 1
  br i1 %exitcond.not.1, label %for.body.1.do.body61_crit_edge, label %for.body.2

for.body.1.do.body61_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body61

for.body.2:                                       ; preds = %for.body.1
  %arrayidx.2 = getelementptr i8, ptr %1, i32 2
  %27 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.2, align 1
  %conv57.2 = zext i8 %28 to i32
  %shl58.2 = shl nuw nsw i32 %conv57.2, 16
  %or59.2 = or i32 %shl58.2, %or59.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %umin)
  %exitcond.not.2 = icmp eq i32 %umin, 2
  br i1 %exitcond.not.2, label %for.body.2.do.body61_crit_edge, label %for.body.3

for.body.2.do.body61_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body61

for.body.3:                                       ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.3 = getelementptr i8, ptr %1, i32 3
  %29 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.3, align 1
  %conv57.3 = zext i8 %30 to i32
  %shl58.3 = shl nuw i32 %conv57.3, 24
  %or59.3 = or i32 %shl58.3, %or59.2
  br label %do.body61

do.body61:                                        ; preds = %for.body.3, %for.body.2.do.body61_crit_edge, %for.body.1.do.body61_crit_edge, %for.body.preheader.do.body61_crit_edge, %if.end35.do.body61_crit_edge
  %val.3 = phi i32 [ %or46, %if.end35.do.body61_crit_edge ], [ %conv57, %for.body.preheader.do.body61_crit_edge ], [ %or59.1, %for.body.1.do.body61_crit_edge ], [ %or59.2, %for.body.2.do.body61_crit_edge ], [ %or59.3, %for.body.3 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !429
  tail call void @arm_heavy_mb() #5
  %31 = tail call i32 @llvm.bswap.i32(i32 %val.3)
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %add.ptr65 = getelementptr i8, ptr %33, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %31) #5, !srcloc !364
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp66 = icmp ugt i32 %3, 4
  br i1 %cmp66, label %for.body76, label %do.body61.if.end145_crit_edge

do.body61.if.end145_crit_edge:                    ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end145

for.body76:                                       ; preds = %do.body61
  %34 = add i32 %3, -4
  %arrayidx78 = getelementptr i8, ptr %1, i32 4
  %35 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx78, align 1
  %conv79 = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %exitcond280.1.not = icmp eq i32 %34, 1
  br i1 %exitcond280.1.not, label %for.body76.if.end91_crit_edge, label %for.body76.1

for.body76.if.end91_crit_edge:                    ; preds = %for.body76
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91

for.body76.1:                                     ; preds = %for.body76
  %arrayidx78.1 = getelementptr i8, ptr %1, i32 5
  %37 = ptrtoint ptr %arrayidx78.1 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx78.1, align 1
  %conv79.1 = zext i8 %38 to i32
  %shl81.1 = shl nuw nsw i32 %conv79.1, 8
  %or82.1 = or i32 %shl81.1, %conv79
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %exitcond280.2.not = icmp eq i32 %34, 2
  br i1 %exitcond280.2.not, label %for.body76.1.if.end91_crit_edge, label %for.body76.2

for.body76.1.if.end91_crit_edge:                  ; preds = %for.body76.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91

for.body76.2:                                     ; preds = %for.body76.1
  %arrayidx78.2 = getelementptr i8, ptr %1, i32 6
  %39 = ptrtoint ptr %arrayidx78.2 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx78.2, align 1
  %conv79.2 = zext i8 %40 to i32
  %shl81.2 = shl nuw nsw i32 %conv79.2, 16
  %or82.2 = or i32 %shl81.2, %or82.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %exitcond280.3.not = icmp eq i32 %34, 3
  br i1 %exitcond280.3.not, label %for.body76.2.if.end91_crit_edge, label %for.body76.3

for.body76.2.if.end91_crit_edge:                  ; preds = %for.body76.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91

for.body76.3:                                     ; preds = %for.body76.2
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx78.3 = getelementptr i8, ptr %1, i32 7
  %41 = ptrtoint ptr %arrayidx78.3 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx78.3, align 1
  %conv79.3 = zext i8 %42 to i32
  %shl81.3 = shl nuw i32 %conv79.3, 24
  %or82.3 = or i32 %shl81.3, %or82.2
  br label %if.end91

if.end91:                                         ; preds = %for.body76.3, %for.body76.2.if.end91_crit_edge, %for.body76.1.if.end91_crit_edge, %for.body76.if.end91_crit_edge
  %val.4.lcssa = phi i32 [ %conv79, %for.body76.if.end91_crit_edge ], [ %or82.1, %for.body76.1.if.end91_crit_edge ], [ %or82.2, %for.body76.2.if.end91_crit_edge ], [ %or82.3, %for.body76.3 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !430
  tail call void @arm_heavy_mb() #5
  %43 = tail call i32 @llvm.bswap.i32(i32 %val.4.lcssa)
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  %add.ptr90 = getelementptr i8, ptr %45, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 %43) #5, !srcloc !364
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp92 = icmp ugt i32 %3, 8
  br i1 %cmp92, label %for.body103, label %if.end91.if.end145_crit_edge

if.end91.if.end145_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end145

for.body103:                                      ; preds = %if.end91
  %46 = add i32 %3, -8
  %arrayidx105 = getelementptr i8, ptr %1, i32 8
  %47 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx105, align 1
  %conv106 = zext i8 %48 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %exitcond282.1.not = icmp eq i32 %46, 1
  br i1 %exitcond282.1.not, label %for.body103.if.end118_crit_edge, label %for.body103.1

for.body103.if.end118_crit_edge:                  ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end118

for.body103.1:                                    ; preds = %for.body103
  %arrayidx105.1 = getelementptr i8, ptr %1, i32 9
  %49 = ptrtoint ptr %arrayidx105.1 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx105.1, align 1
  %conv106.1 = zext i8 %50 to i32
  %shl108.1 = shl nuw nsw i32 %conv106.1, 8
  %or109.1 = or i32 %shl108.1, %conv106
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %exitcond282.2.not = icmp eq i32 %46, 2
  br i1 %exitcond282.2.not, label %for.body103.1.if.end118_crit_edge, label %for.body103.2

for.body103.1.if.end118_crit_edge:                ; preds = %for.body103.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end118

for.body103.2:                                    ; preds = %for.body103.1
  %arrayidx105.2 = getelementptr i8, ptr %1, i32 10
  %51 = ptrtoint ptr %arrayidx105.2 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx105.2, align 1
  %conv106.2 = zext i8 %52 to i32
  %shl108.2 = shl nuw nsw i32 %conv106.2, 16
  %or109.2 = or i32 %shl108.2, %or109.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %46)
  %exitcond282.3.not = icmp eq i32 %46, 3
  br i1 %exitcond282.3.not, label %for.body103.2.if.end118_crit_edge, label %for.body103.3

for.body103.2.if.end118_crit_edge:                ; preds = %for.body103.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end118

for.body103.3:                                    ; preds = %for.body103.2
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx105.3 = getelementptr i8, ptr %1, i32 11
  %53 = ptrtoint ptr %arrayidx105.3 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx105.3, align 1
  %conv106.3 = zext i8 %54 to i32
  %shl108.3 = shl nuw i32 %conv106.3, 24
  %or109.3 = or i32 %shl108.3, %or109.2
  br label %if.end118

if.end118:                                        ; preds = %for.body103.3, %for.body103.2.if.end118_crit_edge, %for.body103.1.if.end118_crit_edge, %for.body103.if.end118_crit_edge
  %val.5.lcssa = phi i32 [ %conv106, %for.body103.if.end118_crit_edge ], [ %or109.1, %for.body103.1.if.end118_crit_edge ], [ %or109.2, %for.body103.2.if.end118_crit_edge ], [ %or109.3, %for.body103.3 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !431
  tail call void @arm_heavy_mb() #5
  %55 = tail call i32 @llvm.bswap.i32(i32 %val.5.lcssa)
  %56 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs, align 4
  %add.ptr117 = getelementptr i8, ptr %57, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 %55) #5, !srcloc !364
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %cmp119 = icmp ugt i32 %3, 12
  br i1 %cmp119, label %for.body130, label %if.end118.if.end145_crit_edge

if.end118.if.end145_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end145

for.body130:                                      ; preds = %if.end118
  %58 = add i32 %3, -12
  %arrayidx132 = getelementptr i8, ptr %1, i32 12
  %59 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx132, align 1
  %conv133 = zext i8 %60 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %exitcond284.1.not = icmp eq i32 %58, 1
  br i1 %exitcond284.1.not, label %for.body130.do.body140_crit_edge, label %for.body130.1

for.body130.do.body140_crit_edge:                 ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body140

for.body130.1:                                    ; preds = %for.body130
  %arrayidx132.1 = getelementptr i8, ptr %1, i32 13
  %61 = ptrtoint ptr %arrayidx132.1 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx132.1, align 1
  %conv133.1 = zext i8 %62 to i32
  %shl135.1 = shl nuw nsw i32 %conv133.1, 8
  %or136.1 = or i32 %shl135.1, %conv133
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %exitcond284.2.not = icmp eq i32 %58, 2
  br i1 %exitcond284.2.not, label %for.body130.1.do.body140_crit_edge, label %for.body130.2

for.body130.1.do.body140_crit_edge:               ; preds = %for.body130.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body140

for.body130.2:                                    ; preds = %for.body130.1
  %arrayidx132.2 = getelementptr i8, ptr %1, i32 14
  %63 = ptrtoint ptr %arrayidx132.2 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx132.2, align 1
  %conv133.2 = zext i8 %64 to i32
  %shl135.2 = shl nuw nsw i32 %conv133.2, 16
  %or136.2 = or i32 %shl135.2, %or136.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %58)
  %exitcond284.3.not = icmp eq i32 %58, 3
  br i1 %exitcond284.3.not, label %for.body130.2.do.body140_crit_edge, label %for.body130.3

for.body130.2.do.body140_crit_edge:               ; preds = %for.body130.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body140

for.body130.3:                                    ; preds = %for.body130.2
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx132.3 = getelementptr i8, ptr %1, i32 15
  %65 = ptrtoint ptr %arrayidx132.3 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx132.3, align 1
  %conv133.3 = zext i8 %66 to i32
  %shl135.3 = shl nuw i32 %conv133.3, 24
  %or136.3 = or i32 %shl135.3, %or136.2
  br label %do.body140

do.body140:                                       ; preds = %for.body130.3, %for.body130.2.do.body140_crit_edge, %for.body130.1.do.body140_crit_edge, %for.body130.do.body140_crit_edge
  %val.6.lcssa = phi i32 [ %conv133, %for.body130.do.body140_crit_edge ], [ %or136.1, %for.body130.1.do.body140_crit_edge ], [ %or136.2, %for.body130.2.do.body140_crit_edge ], [ %or136.3, %for.body130.3 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !432
  tail call void @arm_heavy_mb() #5
  %67 = tail call i32 @llvm.bswap.i32(i32 %val.6.lcssa)
  %68 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs, align 4
  %add.ptr144 = getelementptr i8, ptr %69, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr144, i32 %67) #5, !srcloc !364
  br label %if.end145

if.end145:                                        ; preds = %do.body140, %if.end118.if.end145_crit_edge, %if.end91.if.end145_crit_edge, %do.body61.if.end145_crit_edge
  %rx_buf.i = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %if.end152.while.body_crit_edge, %if.end145
  %retries.0278 = phi i32 [ 0, %if.end145 ], [ %inc153, %if.end152.while.body_crit_edge ]
  %70 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx_len, align 4
  %72 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rx_len, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !433
  tail call void @arm_heavy_mb() #5
  %74 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs, align 4
  %add.ptr.i254 = getelementptr i8, ptr %75, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i254, i32 -1) #5, !srcloc !364
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !434
  tail call void @arm_heavy_mb() #5
  %76 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs, align 4
  %add.ptr5.i = getelementptr i8, ptr %77, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 -1) #5, !srcloc !364
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !435
  tail call void @arm_heavy_mb() #5
  %78 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs, align 4
  %add.ptr10.i = getelementptr i8, ptr %79, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 16777216) #5, !srcloc !364
  %80 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %type, align 1
  %82 = zext i8 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.207)
  switch i8 %81, label %while.cond35.preheader.i [
    i8 4, label %while.body.if.then.i_crit_edge
    i8 20, label %while.body.if.then.i_crit_edge293
    i8 36, label %while.body.if.then.i_crit_edge294
    i8 6, label %while.body.if.then.i_crit_edge295
  ]

while.body.if.then.i_crit_edge295:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

while.body.if.then.i_crit_edge294:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

while.body.if.then.i_crit_edge293:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

while.body.if.then.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

while.cond35.preheader.i:                         ; preds = %while.body
  %83 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs, align 4
  %add.ptr39194.i = getelementptr i8, ptr %84, i32 104
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39194.i) #5, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !436
  %86 = and i32 %85, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool44.not195.i = icmp eq i32 %86, 0
  br i1 %tobool44.not195.i, label %while.cond35.preheader.i.land.rhs45.i_crit_edge, label %while.cond35.preheader.i.if.end58.i_crit_edge

while.cond35.preheader.i.if.end58.i_crit_edge:    ; preds = %while.cond35.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58.i

while.cond35.preheader.i.land.rhs45.i_crit_edge:  ; preds = %while.cond35.preheader.i
  br label %land.rhs45.i

if.then.i:                                        ; preds = %while.body.if.then.i_crit_edge, %while.body.if.then.i_crit_edge293, %while.body.if.then.i_crit_edge294, %while.body.if.then.i_crit_edge295
  %87 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs, align 4
  %add.ptr27191.i = getelementptr i8, ptr %88, i32 104
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27191.i) #5, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !437
  %90 = and i32 %89, 134479872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not192.i = icmp eq i32 %90, 0
  br i1 %tobool.not192.i, label %if.then.i.land.rhs.i_crit_edge, label %if.then.i.if.end58.i_crit_edge

if.then.i.if.end58.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58.i

if.then.i.land.rhs.i_crit_edge:                   ; preds = %if.then.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.then.i.land.rhs.i_crit_edge
  %loop_counter.0193.i = phi i32 [ %dec.i, %while.body.i.land.rhs.i_crit_edge ], [ 100000, %if.then.i.land.rhs.i_crit_edge ]
  %dec.i = add nsw i32 %loop_counter.0193.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool29.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool29.not.i, label %do.end34.critedge.i, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 15, i32 noundef 2) #5
  %91 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs, align 4
  %add.ptr27.i = getelementptr i8, ptr %92, i32 104
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #5, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !437
  %94 = and i32 %93, 134479872
  %tobool.not.i = icmp eq i32 %94, 0
  br i1 %tobool.not.i, label %while.body.i.land.rhs.i_crit_edge, label %while.body.i.if.end58.i_crit_edge

while.body.i.if.end58.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58.i

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

do.end34.critedge.i:                              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  %95 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.151) #8
  br label %if.end152

land.rhs45.i:                                     ; preds = %while.body49.i.land.rhs45.i_crit_edge, %while.cond35.preheader.i.land.rhs45.i_crit_edge
  %loop_counter.2196.i = phi i32 [ %dec46.i, %while.body49.i.land.rhs45.i_crit_edge ], [ 100000, %while.cond35.preheader.i.land.rhs45.i_crit_edge ]
  %dec46.i = add nsw i32 %loop_counter.2196.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec46.i)
  %tobool47.not.i = icmp eq i32 %dec46.i, 0
  br i1 %tobool47.not.i, label %do.end55.critedge.i, label %while.body49.i

while.body49.i:                                   ; preds = %land.rhs45.i
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 15, i32 noundef 2) #5
  %97 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs, align 4
  %add.ptr39.i = getelementptr i8, ptr %98, i32 104
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i) #5, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !436
  %100 = and i32 %99, 33554432
  %tobool44.not.i = icmp eq i32 %100, 0
  br i1 %tobool44.not.i, label %while.body49.i.land.rhs45.i_crit_edge, label %while.body49.i.if.end58.i_crit_edge

while.body49.i.if.end58.i_crit_edge:              ; preds = %while.body49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58.i

while.body49.i.land.rhs45.i_crit_edge:            ; preds = %while.body49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs45.i

do.end55.critedge.i:                              ; preds = %land.rhs45.i
  call void @__sanitizer_cov_trace_pc() #7
  %101 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.154) #8
  br label %if.end152

if.end58.i:                                       ; preds = %while.body49.i.if.end58.i_crit_edge, %while.body.i.if.end58.i_crit_edge, %if.then.i.if.end58.i_crit_edge, %while.cond35.preheader.i.if.end58.i_crit_edge
  %103 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regs, align 4
  %add.ptr62.i = getelementptr i8, ptr %104, i32 104
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62.i) #5, !srcloc !361
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !438
  %and66.i = and i32 %106, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i)
  %tobool67.not.i = icmp eq i32 %and66.i, 0
  br i1 %tobool67.not.i, label %if.end78.i, label %do.end71.i

do.end71.i:                                       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #7
  %107 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.157) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !439
  tail call void @arm_heavy_mb() #5
  %109 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regs, align 4
  %add.ptr77.i = getelementptr i8, ptr %110, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77.i, i32 16777216) #5, !srcloc !364
  br label %if.end152

if.end78.i:                                       ; preds = %if.end58.i
  %and79.i = and i32 %106, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  br i1 %tobool80.not.i, label %if.end86.i, label %if.then81.i

if.then81.i:                                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #7
  %shr.i = lshr i32 %106, 16
  %111 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.160, i32 noundef %shr.i) #8
  br label %if.end152

if.end86.i:                                       ; preds = %if.end78.i
  %113 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %type, align 1
  %115 = zext i8 %114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.208)
  switch i8 %114, label %if.end86.i.mcde_dsi_execute_transfer.exit_crit_edge [
    i8 4, label %if.end86.i.if.else107.i_crit_edge
    i8 20, label %if.end86.i.if.else107.i_crit_edge296
    i8 36, label %if.end86.i.if.else107.i_crit_edge297
    i8 6, label %if.end86.i.if.else107.i_crit_edge298
  ]

if.end86.i.if.else107.i_crit_edge298:             ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else107.i

if.end86.i.if.else107.i_crit_edge297:             ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else107.i

if.end86.i.if.else107.i_crit_edge296:             ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else107.i

if.end86.i.if.else107.i_crit_edge:                ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else107.i

if.end86.i.mcde_dsi_execute_transfer.exit_crit_edge: ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mcde_dsi_execute_transfer.exit

if.else107.i:                                     ; preds = %if.end86.i.if.else107.i_crit_edge, %if.end86.i.if.else107.i_crit_edge296, %if.end86.i.if.else107.i_crit_edge297, %if.end86.i.if.else107.i_crit_edge298
  %116 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %rx_buf.i, align 4
  %118 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs, align 4
  %add.ptr111.i = getelementptr i8, ptr %119, i32 132
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr111.i) #5, !srcloc !361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !440
  %121 = and i32 %120, -65536
  %122 = tail call i32 @llvm.bswap.i32(i32 %121) #5
  %123 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regs, align 4
  %add.ptr119.i = getelementptr i8, ptr %124, i32 128
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr119.i) #5, !srcloc !361
  %126 = tail call i32 @llvm.bswap.i32(i32 %125) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !441
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %73)
  %cmp123.i = icmp ult i32 %122, %73
  br i1 %cmp123.i, label %cleanup.thread.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.else107.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp134197.not.i = icmp eq i32 %73, 0
  br i1 %cmp134197.not.i, label %for.cond.preheader.i.mcde_dsi_execute_transfer.exit_crit_edge, label %for.body.preheader.i

for.cond.preheader.i.mcde_dsi_execute_transfer.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mcde_dsi_execute_transfer.exit

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %127 = add i32 %73, -1
  %umin.i = tail call i32 @llvm.umin.i32(i32 %127, i32 3) #5
  %conv139.i = trunc i32 %126 to i8
  %128 = ptrtoint ptr %117 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv139.i, ptr %117, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %umin.i)
  %exitcond.not.i = icmp eq i32 %umin.i, 0
  br i1 %exitcond.not.i, label %for.body.preheader.i.mcde_dsi_execute_transfer.exit_crit_edge, label %for.body.i.1

for.body.preheader.i.mcde_dsi_execute_transfer.exit_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mcde_dsi_execute_transfer.exit

cleanup.thread.i:                                 ; preds = %if.else107.i
  call void @__sanitizer_cov_trace_pc() #7
  %129 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.163, i32 noundef %73, i32 noundef %122) #8
  br label %if.end152

for.body.i.1:                                     ; preds = %for.body.preheader.i
  %shr137.i.1 = lshr i32 %126, 8
  %conv139.i.1 = trunc i32 %shr137.i.1 to i8
  %arrayidx.i.1 = getelementptr i8, ptr %117, i32 1
  %131 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %conv139.i.1, ptr %arrayidx.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %umin.i)
  %exitcond.not.i.1 = icmp eq i32 %umin.i, 1
  br i1 %exitcond.not.i.1, label %for.body.i.1.mcde_dsi_execute_transfer.exit_crit_edge, label %for.body.i.2

for.body.i.1.mcde_dsi_execute_transfer.exit_crit_edge: ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %mcde_dsi_execute_transfer.exit

for.body.i.2:                                     ; preds = %for.body.i.1
  %shr137.i.2 = lshr i32 %126, 16
  %conv139.i.2 = trunc i32 %shr137.i.2 to i8
  %arrayidx.i.2 = getelementptr i8, ptr %117, i32 2
  %132 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %conv139.i.2, ptr %arrayidx.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %umin.i)
  %exitcond.not.i.2 = icmp eq i32 %umin.i, 2
  br i1 %exitcond.not.i.2, label %for.body.i.2.mcde_dsi_execute_transfer.exit_crit_edge, label %for.body.i.3

for.body.i.2.mcde_dsi_execute_transfer.exit_crit_edge: ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %mcde_dsi_execute_transfer.exit

for.body.i.3:                                     ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #7
  %shr137.i.3 = lshr i32 %126, 24
  %conv139.i.3 = trunc i32 %shr137.i.3 to i8
  %arrayidx.i.3 = getelementptr i8, ptr %117, i32 3
  %133 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv139.i.3, ptr %arrayidx.i.3, align 1
  br label %mcde_dsi_execute_transfer.exit

mcde_dsi_execute_transfer.exit:                   ; preds = %for.body.i.3, %for.body.i.2.mcde_dsi_execute_transfer.exit_crit_edge, %for.body.i.1.mcde_dsi_execute_transfer.exit_crit_edge, %for.body.preheader.i.mcde_dsi_execute_transfer.exit_crit_edge, %for.cond.preheader.i.mcde_dsi_execute_transfer.exit_crit_edge, %if.end86.i.mcde_dsi_execute_transfer.exit_crit_edge
  %retval.1.i = phi i32 [ %71, %if.end86.i.mcde_dsi_execute_transfer.exit_crit_edge ], [ %122, %for.cond.preheader.i.mcde_dsi_execute_transfer.exit_crit_edge ], [ %122, %for.body.i.3 ], [ %122, %for.body.i.2.mcde_dsi_execute_transfer.exit_crit_edge ], [ %122, %for.body.i.1.mcde_dsi_execute_transfer.exit_crit_edge ], [ %122, %for.body.preheader.i.mcde_dsi_execute_transfer.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.1.i)
  %cmp149 = icmp sgt i32 %retval.1.i, -1
  br i1 %cmp149, label %mcde_dsi_execute_transfer.exit.do.body163_crit_edge, label %mcde_dsi_execute_transfer.exit.if.end152_crit_edge

mcde_dsi_execute_transfer.exit.if.end152_crit_edge: ; preds = %mcde_dsi_execute_transfer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end152

mcde_dsi_execute_transfer.exit.do.body163_crit_edge: ; preds = %mcde_dsi_execute_transfer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body163

if.end152:                                        ; preds = %mcde_dsi_execute_transfer.exit.if.end152_crit_edge, %cleanup.thread.i, %if.then81.i, %do.end71.i, %do.end55.critedge.i, %do.end34.critedge.i
  %retval.1.i260 = phi i32 [ %retval.1.i, %mcde_dsi_execute_transfer.exit.if.end152_crit_edge ], [ -5, %cleanup.thread.i ], [ -62, %do.end55.critedge.i ], [ -62, %do.end34.critedge.i ], [ -5, %if.then81.i ], [ -5, %do.end71.i ]
  %inc153 = add nuw nsw i32 %retries.0278, 1
  %exitcond286.not = icmp eq i32 %inc153, 3
  br i1 %exitcond286.not, label %do.end160, label %if.end152.while.body_crit_edge

if.end152.while.body_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

do.end160:                                        ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #7
  %134 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.149, i32 noundef 3) #8
  br label %do.body163

do.body163:                                       ; preds = %do.end160, %mcde_dsi_execute_transfer.exit.do.body163_crit_edge
  %ret.1265 = phi i32 [ %retval.1.i260, %do.end160 ], [ %retval.1.i, %mcde_dsi_execute_transfer.exit.do.body163_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !442
  tail call void @arm_heavy_mb() #5
  %136 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs, align 4
  %add.ptr167 = getelementptr i8, ptr %137, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr167, i32 -1) #5, !srcloc !364
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !443
  tail call void @arm_heavy_mb() #5
  %138 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regs, align 4
  %add.ptr172 = getelementptr i8, ptr %139, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr172, i32 -1) #5, !srcloc !364
  br label %cleanup

cleanup:                                          ; preds = %do.body163, %do.end5, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end5 ], [ %ret.1265, %do.body163 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mipi_dsi_packet_format_is_long(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcde_dsi_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_get_next_available_child(ptr noundef %3, ptr noundef null) #5
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %entry.do.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_available_child(ptr noundef %3, ptr noundef nonnull %child.06.i) #5
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_available_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

of_get_available_child_count.exit:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool.not = icmp eq i32 %inc.i, 0
  br i1 %tobool.not, label %of_get_available_child_count.exit.do.end_crit_edge, label %if.end

of_get_available_child_count.exit.do.end_crit_edge: ; preds = %of_get_available_child_count.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %of_get_available_child_count.exit.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.165) #8
  %unused = getelementptr inbounds %struct.mcde_dsi, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %unused to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %unused, align 4
  br label %cleanup

if.end:                                           ; preds = %of_get_available_child_count.exit
  %mcde2 = getelementptr inbounds %struct.mcde_dsi, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %mcde2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %data, ptr %mcde2, align 4
  %mdsi = getelementptr inbounds %struct.mcde_dsi, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %mdsi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdsi, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %mdsi1.i = getelementptr inbounds %struct.mcde, ptr %data, i32 0, i32 6
  %8 = ptrtoint ptr %mdsi1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %mdsi1.i, align 8
  %9 = ptrtoint ptr %mdsi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdsi, align 4
  %mode_flags.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %mode_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode_flags.i, align 8
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %13 = ptrtoint ptr %mcde2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mcde2, align 4
  %flow_mode5.i = getelementptr inbounds %struct.mcde, ptr %14, i32 0, i32 9
  %..i = select i1 %tobool.not.i, i32 1, i32 4
  %15 = ptrtoint ptr %flow_mode5.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %..i, ptr %flow_mode5.i, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %call6 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.167) #5
  %hs_clk = getelementptr inbounds %struct.mcde_dsi, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %hs_clk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call6, ptr %hs_clk, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end12, label %if.end15

do.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.169) #8
  %17 = ptrtoint ptr %hs_clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hs_clk, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end5
  %call16 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.171) #5
  %lp_clk = getelementptr inbounds %struct.mcde_dsi, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %lp_clk to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call16, ptr %lp_clk, align 4
  %cmp.i127 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.173) #8
  %21 = ptrtoint ptr %lp_clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lp_clk, align 4
  %23 = ptrtoint ptr %22 to i32
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %24 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node, align 8
  %call27 = tail call ptr @of_get_next_available_child(ptr noundef %25, ptr noundef null) #5
  %cmp.not134 = icmp eq ptr %call27, null
  br i1 %cmp.not134, label %if.end25.do.end67_crit_edge, label %if.end25.for.body_crit_edge

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  br label %for.body

if.end25.do.end67_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end25.for.body_crit_edge
  %bridge.0137 = phi ptr [ %bridge.1, %for.inc.for.body_crit_edge ], [ null, %if.end25.for.body_crit_edge ]
  %child.0135 = phi ptr [ %call44, %for.inc.for.body_crit_edge ], [ %call27, %if.end25.for.body_crit_edge ]
  %call28 = tail call ptr @of_drm_find_panel(ptr noundef nonnull %child.0135) #5
  %cmp.i128 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128, label %do.end33, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end33:                                         ; preds = %for.body
  %26 = ptrtoint ptr %call28 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.176, i32 noundef %26) #8
  %call35 = tail call ptr @of_drm_find_bridge(ptr noundef nonnull %child.0135) #5
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %do.end40, label %do.end33.for.inc_crit_edge

do.end33.for.inc_crit_edge:                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end40:                                         ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.179) #8
  br label %cleanup

for.inc:                                          ; preds = %do.end33.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %panel.1 = phi ptr [ null, %do.end33.for.inc_crit_edge ], [ %call28, %for.body.for.inc_crit_edge ]
  %bridge.1 = phi ptr [ %call35, %do.end33.for.inc_crit_edge ], [ %bridge.0137, %for.body.for.inc_crit_edge ]
  %27 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %of_node, align 8
  %call44 = tail call ptr @of_get_next_available_child(ptr noundef %28, ptr noundef nonnull %child.0135) #5
  %cmp.not = icmp eq ptr %call44, null
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool45.not = icmp eq ptr %panel.1, null
  br i1 %tobool45.not, label %if.else, label %if.then46

if.then46:                                        ; preds = %for.end
  %call47 = tail call ptr @drm_panel_bridge_add_typed(ptr noundef nonnull %panel.1, i32 noundef 16) #5
  %cmp.i129 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i129, label %do.end52, label %do.end57

do.end52:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.182) #8
  %29 = ptrtoint ptr %call47 to i32
  br label %cleanup

do.end57:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.185) #8
  %panel58 = getelementptr inbounds %struct.mcde_dsi, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %panel58 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %panel.1, ptr %panel58, align 4
  %bridge_out = getelementptr inbounds %struct.mcde_dsi, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %bridge_out to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call47, ptr %bridge_out, align 4
  %bridge69 = getelementptr inbounds %struct.mcde_dsi, ptr %1, i32 0, i32 2
  %funcs = getelementptr inbounds %struct.mcde_dsi, ptr %1, i32 0, i32 2, i32 7
  %32 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @mcde_dsi_bridge_funcs, ptr %funcs, align 4
  %33 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %of_node, align 8
  %of_node72 = getelementptr inbounds %struct.mcde_dsi, ptr %1, i32 0, i32 2, i32 4
  %35 = ptrtoint ptr %of_node72 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %of_node72, align 4
  tail call void @drm_bridge_add(ptr noundef %bridge69) #5
  %bridge75 = getelementptr inbounds %struct.mcde, ptr %data, i32 0, i32 3
  %36 = ptrtoint ptr %bridge75 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %bridge69, ptr %bridge75, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.194) #8
  br label %cleanup

if.else:                                          ; preds = %for.end
  %tobool59.not = icmp eq ptr %bridge.1, null
  br i1 %tobool59.not, label %if.else.do.end67_crit_edge, label %do.end63

if.else.do.end67_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

do.end63:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.188) #8
  br label %cleanup

do.end67:                                         ; preds = %if.else.do.end67_crit_edge, %if.end25.do.end67_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.191) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end67, %do.end63, %do.end57, %do.end52, %do.end40, %do.end22, %do.end12, %do.end
  %retval.0 = phi i32 [ %19, %do.end12 ], [ %23, %do.end22 ], [ -22, %do.end40 ], [ %29, %do.end52 ], [ 0, %do.end57 ], [ -19, %do.end63 ], [ -19, %do.end67 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcde_dsi_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %panel = getelementptr inbounds %struct.mcde_dsi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bridge_out = getelementptr inbounds %struct.mcde_dsi, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %bridge_out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bridge_out, align 4
  tail call void @drm_panel_bridge_remove(ptr noundef %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %prcmu = getelementptr inbounds %struct.mcde_dsi, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %prcmu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prcmu, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 804, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_panel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_bridge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_panel_bridge_add_typed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcde_dsi_bridge_attach(ptr noundef %bridge, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %5, 16
  %and2.i.i = and i32 %and.i.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %cmp.i.i.not = icmp eq i32 %and2.i.i, 0
  br i1 %cmp.i.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -8
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.196) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %10 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %encoder, align 4
  %bridge_out = getelementptr i8, ptr %bridge, i32 284
  %12 = ptrtoint ptr %bridge_out to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bridge_out, align 4
  %call3 = tail call i32 @drm_bridge_attach(ptr noundef %11, ptr noundef %13, ptr noundef %bridge, i32 noundef %flags) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ -524, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcde_dsi_bridge_mode_set(ptr nocapture noundef %bridge, ptr noundef %mode, ptr nocapture noundef readnone %adj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -8
  %mdsi = getelementptr i8, ptr %bridge, i32 304
  %0 = ptrtoint ptr %mdsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdsi, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.198) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mode1 = getelementptr i8, ptr %bridge, i32 308
  %4 = ptrtoint ptr %mode1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mode, ptr %mode1, align 4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %7 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %8 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %9 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vdisplay, align 2
  %conv6 = zext i16 %10 to i32
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode, align 4
  %mul = mul i32 %12, 1000
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode_flags, align 8
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool8.not, ptr @.str.204, ptr @.str.203
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.201, i32 noundef %conv, i32 noundef %conv6, i32 noundef %mul, ptr noundef nonnull %cond) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_host_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 176)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 176)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !124, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !173, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !197, !198, !200, !201, !203, !204, !205, !206, !208, !209, !210, !211, !213, !215, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !234, !236, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !252, !254, !255, !256, !258, !259, !261, !262, !263, !265, !266, !267, !268, !270, !271, !272, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !288, !289, !290, !291, !293, !295, !296, !297, !299, !301, !302, !303, !305, !306, !307, !309, !310, !311, !313, !314, !315, !317, !318, !319, !321, !322, !323, !325, !326, !327, !329, !330, !331, !333, !335, !336, !337, !338, !340, !341, !342, !343, !345, !346, !347, !348, !349}
!llvm.module.flags = !{!351, !352, !353, !354, !355, !356, !357, !358}
!llvm.ident = !{!359}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 75, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mcde_dsi_irq.__UNIQUE_ID_ddebug307, !1, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 79, i32 3}
!8 = !{ptr @mcde_dsi_irq.__UNIQUE_ID_ddebug308, !7, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 81, i32 3}
!11 = !{ptr @mcde_dsi_irq.__UNIQUE_ID_ddebug309, !10, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 84, i32 3}
!14 = !{ptr @mcde_dsi_irq.__UNIQUE_ID_ddebug310, !13, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 87, i32 3}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mcde_dsi_irq._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @mcde_dsi_irq._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 89, i32 3}
!23 = !{ptr @mcde_dsi_irq._entry.10, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @mcde_dsi_irq._entry_ptr.12, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 95, i32 3}
!27 = !{ptr @mcde_dsi_irq.__UNIQUE_ID_ddebug311, !26, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 98, i32 3}
!30 = !{ptr @mcde_dsi_irq.__UNIQUE_ID_ddebug312, !29, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 101, i32 3}
!33 = !{ptr @mcde_dsi_irq.__UNIQUE_ID_ddebug313, !32, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 103, i32 3}
!36 = !{ptr @mcde_dsi_irq._entry.16, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mcde_dsi_irq._entry_ptr.18, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 105, i32 3}
!40 = !{ptr @mcde_dsi_irq._entry.19, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @mcde_dsi_irq._entry_ptr.21, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 107, i32 3}
!44 = !{ptr @mcde_dsi_irq._entry.22, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @mcde_dsi_irq._entry_ptr.24, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 112, i32 3}
!48 = !{ptr @mcde_dsi_irq.__UNIQUE_ID_ddebug314, !47, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 117, i32 3}
!51 = !{ptr @mcde_dsi_irq.__UNIQUE_ID_ddebug315, !50, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 122, i32 3}
!54 = !{ptr @mcde_dsi_irq.__UNIQUE_ID_ddebug316, !53, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 124, i32 3}
!57 = !{ptr @mcde_dsi_irq.__UNIQUE_ID_ddebug317, !56, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 126, i32 3}
!60 = !{ptr @mcde_dsi_irq._entry.29, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @mcde_dsi_irq._entry_ptr.31, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 128, i32 3}
!64 = !{ptr @mcde_dsi_irq._entry.32, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @mcde_dsi_irq._entry_ptr.34, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 130, i32 3}
!68 = !{ptr @mcde_dsi_irq._entry.35, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @mcde_dsi_irq._entry_ptr.37, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 132, i32 3}
!72 = !{ptr @mcde_dsi_irq._entry.38, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @mcde_dsi_irq._entry_ptr.40, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.42, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 134, i32 3}
!76 = !{ptr @mcde_dsi_irq._entry.41, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @mcde_dsi_irq._entry_ptr.43, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.45, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 138, i32 3}
!80 = !{ptr @mcde_dsi_irq._entry.44, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @mcde_dsi_irq._entry_ptr.46, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.48, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 140, i32 3}
!84 = !{ptr @mcde_dsi_irq._entry.47, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @mcde_dsi_irq._entry_ptr.49, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.51, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 142, i32 3}
!88 = !{ptr @mcde_dsi_irq._entry.50, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @mcde_dsi_irq._entry_ptr.52, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.53, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 880, i32 3}
!92 = !{ptr @.str.54, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @mcde_dsi_enable._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @mcde_dsi_enable._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.56, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 886, i32 3}
!97 = !{ptr @mcde_dsi_enable._entry.55, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @mcde_dsi_enable._entry_ptr.57, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.59, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 892, i32 3}
!101 = !{ptr @mcde_dsi_enable._entry.58, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @mcde_dsi_enable._entry_ptr.60, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.62, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 894, i32 3}
!105 = !{ptr @.str.63, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @mcde_dsi_enable._entry.61, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @mcde_dsi_enable._entry_ptr.64, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.66, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 898, i32 3}
!110 = !{ptr @mcde_dsi_enable._entry.65, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @mcde_dsi_enable._entry_ptr.67, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.69, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 900, i32 3}
!114 = !{ptr @mcde_dsi_enable._entry.68, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @mcde_dsi_enable._entry_ptr.70, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.72, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 955, i32 2}
!118 = !{ptr @mcde_dsi_enable._entry.71, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @mcde_dsi_enable._entry_ptr.73, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.74, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 1229, i32 21}
!122 = !{ptr @mcde_dsi_driver, !123, !"mcde_dsi_driver", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 1227, i32 24}
!124 = !{ptr @.str.75, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 779, i32 2}
!126 = !{ptr @.str.76, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @mcde_dsi_start.__UNIQUE_ID_ddebug328, !125, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!128 = !{ptr @.str.77, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 832, i32 4}
!130 = !{ptr @.str.78, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @mcde_dsi_start._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @mcde_dsi_start._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.80, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 852, i32 2}
!135 = !{ptr @mcde_dsi_start._entry.79, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @mcde_dsi_start._entry_ptr.81, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.82, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 471, i32 3}
!139 = !{ptr @.str.83, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @mcde_dsi_setup_video_mode._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @mcde_dsi_setup_video_mode._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.85, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 547, i32 3}
!144 = !{ptr @mcde_dsi_setup_video_mode._entry.84, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @mcde_dsi_setup_video_mode._entry_ptr.86, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.88, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 551, i32 3}
!148 = !{ptr @mcde_dsi_setup_video_mode._entry.87, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @mcde_dsi_setup_video_mode._entry_ptr.89, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.91, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 555, i32 3}
!152 = !{ptr @mcde_dsi_setup_video_mode._entry.90, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @mcde_dsi_setup_video_mode._entry_ptr.92, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.93, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 558, i32 2}
!156 = !{ptr @mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug319, !155, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!157 = !{ptr @.str.94, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 572, i32 2}
!159 = !{ptr @mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug320, !158, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!160 = !{ptr @.str.95, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 581, i32 2}
!162 = !{ptr @mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug321, !161, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!163 = !{ptr @.str.96, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 600, i32 2}
!165 = !{ptr @mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug322, !164, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!166 = !{ptr @.str.97, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 608, i32 2}
!168 = !{ptr @mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug323, !167, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!169 = !{ptr @.str.99, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 634, i32 4}
!171 = !{ptr @mcde_dsi_setup_video_mode._entry.98, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @mcde_dsi_setup_video_mode._entry_ptr.100, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.101, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 656, i32 2}
!175 = !{ptr @mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug324, !174, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!176 = !{ptr @.str.103, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 683, i32 4}
!178 = !{ptr @mcde_dsi_setup_video_mode._entry.102, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @mcde_dsi_setup_video_mode._entry_ptr.104, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.106, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 684, i32 4}
!182 = !{ptr @mcde_dsi_setup_video_mode._entry.105, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @mcde_dsi_setup_video_mode._entry_ptr.107, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.109, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 687, i32 4}
!186 = !{ptr @mcde_dsi_setup_video_mode._entry.108, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @mcde_dsi_setup_video_mode._entry_ptr.110, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.112, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 690, i32 4}
!190 = !{ptr @mcde_dsi_setup_video_mode._entry.111, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @mcde_dsi_setup_video_mode._entry_ptr.113, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.114, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 694, i32 3}
!194 = !{ptr @mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug325, !193, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!195 = !{ptr @.str.115, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 723, i32 3}
!197 = !{ptr @mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug326, !196, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!198 = !{ptr @.str.116, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 746, i32 2}
!200 = !{ptr @mcde_dsi_setup_video_mode.__UNIQUE_ID_ddebug327, !199, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!201 = !{ptr @.str.117, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 1011, i32 4}
!203 = !{ptr @.str.118, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @mcde_dsi_wait_for_video_mode_stop._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @mcde_dsi_wait_for_video_mode_stop._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.119, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 992, i32 4}
!208 = !{ptr @.str.120, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @mcde_dsi_wait_for_command_mode_stop._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @mcde_dsi_wait_for_command_mode_stop._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.121, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 1183, i32 38}
!213 = !{ptr @.str.122, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 1185, i32 3}
!215 = !{ptr @.str.123, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @mcde_dsi_probe._entry, !214, !"_entry", i1 false, i1 false}
!217 = !{ptr @mcde_dsi_probe._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.125, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 1194, i32 2}
!220 = !{ptr @mcde_dsi_probe._entry.124, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @mcde_dsi_probe._entry_ptr.126, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.128, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 1201, i32 3}
!224 = !{ptr @mcde_dsi_probe._entry.127, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @mcde_dsi_probe._entry_ptr.129, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.131, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 1204, i32 2}
!228 = !{ptr @mcde_dsi_probe._entry.130, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @mcde_dsi_probe._entry_ptr.132, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @mcde_dsi_host_ops, !231, !"mcde_dsi_host_ops", i1 false, i1 false}
!231 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 383, i32 39}
!232 = !{ptr @.str.133, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 176, i32 3}
!234 = !{ptr @.str.134, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 180, i32 2}
!236 = !{ptr @.str.135, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @mcde_dsi_host_attach._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @mcde_dsi_host_attach._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.137, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 182, i32 2}
!241 = !{ptr @mcde_dsi_host_attach._entry.136, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @mcde_dsi_host_attach._entry_ptr.138, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.140, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 184, i32 2}
!245 = !{ptr @mcde_dsi_host_attach._entry.139, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @mcde_dsi_host_attach._entry_ptr.141, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.142, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 307, i32 3}
!249 = !{ptr @.str.143, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @mcde_dsi_host_transfer._entry, !248, !"_entry", i1 false, i1 false}
!251 = !{ptr @mcde_dsi_host_transfer._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.145, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 312, i32 3}
!254 = !{ptr @mcde_dsi_host_transfer._entry.144, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @mcde_dsi_host_transfer._entry_ptr.146, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.147, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 317, i32 2}
!258 = !{ptr @mcde_dsi_host_transfer.__UNIQUE_ID_ddebug318, !257, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!259 = !{ptr @.str.149, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 374, i32 3}
!261 = !{ptr @mcde_dsi_host_transfer._entry.148, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @mcde_dsi_host_transfer._entry_ptr.150, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.151, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 236, i32 4}
!265 = !{ptr @.str.152, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @mcde_dsi_execute_transfer._entry, !264, !"_entry", i1 false, i1 false}
!267 = !{ptr @mcde_dsi_execute_transfer._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.154, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 249, i32 4}
!270 = !{ptr @mcde_dsi_execute_transfer._entry.153, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @mcde_dsi_execute_transfer._entry_ptr.155, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.157, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 256, i32 3}
!274 = !{ptr @mcde_dsi_execute_transfer._entry.156, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @mcde_dsi_execute_transfer._entry_ptr.158, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.160, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 262, i32 3}
!278 = !{ptr @mcde_dsi_execute_transfer._entry.159, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @mcde_dsi_execute_transfer._entry_ptr.161, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.163, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 280, i32 4}
!282 = !{ptr @mcde_dsi_execute_transfer._entry.162, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @mcde_dsi_execute_transfer._entry_ptr.164, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @mcde_dsi_component_ops, !285, !"mcde_dsi_component_ops", i1 false, i1 false}
!285 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 1162, i32 35}
!286 = !{ptr @.str.165, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 1081, i32 3}
!288 = !{ptr @.str.166, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @mcde_dsi_bind._entry, !287, !"_entry", i1 false, i1 false}
!290 = !{ptr @mcde_dsi_bind._entry_ptr, !287, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.167, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 1091, i32 32}
!293 = !{ptr @.str.169, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 1093, i32 3}
!295 = !{ptr @mcde_dsi_bind._entry.168, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @mcde_dsi_bind._entry_ptr.170, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.171, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 1097, i32 32}
!299 = !{ptr @.str.173, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 1099, i32 3}
!301 = !{ptr @mcde_dsi_bind._entry.172, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @mcde_dsi_bind._entry_ptr.174, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.176, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 1107, i32 4}
!305 = !{ptr @mcde_dsi_bind._entry.175, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @mcde_dsi_bind._entry_ptr.177, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.179, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 1113, i32 5}
!309 = !{ptr @mcde_dsi_bind._entry.178, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @mcde_dsi_bind._entry_ptr.180, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.182, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 1122, i32 4}
!313 = !{ptr @mcde_dsi_bind._entry.181, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @mcde_dsi_bind._entry_ptr.183, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.185, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 1125, i32 3}
!317 = !{ptr @mcde_dsi_bind._entry.184, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @mcde_dsi_bind._entry_ptr.186, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.188, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 1129, i32 3}
!321 = !{ptr @mcde_dsi_bind._entry.187, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @mcde_dsi_bind._entry_ptr.189, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.191, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 1132, i32 3}
!325 = !{ptr @mcde_dsi_bind._entry.190, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @mcde_dsi_bind._entry_ptr.192, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.194, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 1146, i32 2}
!329 = !{ptr @mcde_dsi_bind._entry.193, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @mcde_dsi_bind._entry_ptr.195, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @mcde_dsi_bridge_funcs, !332, !"mcde_dsi_bridge_funcs", i1 false, i1 false}
!332 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 1065, i32 38}
!333 = !{ptr @.str.196, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 1057, i32 3}
!335 = !{ptr @.str.197, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @mcde_dsi_bridge_attach._entry, !334, !"_entry", i1 false, i1 false}
!337 = !{ptr @mcde_dsi_bridge_attach._entry_ptr, !334, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.198, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 965, i32 3}
!340 = !{ptr @.str.199, !339, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @mcde_dsi_bridge_mode_set._entry, !339, !"_entry", i1 false, i1 false}
!342 = !{ptr @mcde_dsi_bridge_mode_set._entry_ptr, !339, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.201, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 971, i32 2}
!345 = !{ptr @mcde_dsi_bridge_mode_set._entry.200, !344, !"_entry", i1 false, i1 false}
!346 = !{ptr @mcde_dsi_bridge_mode_set._entry_ptr.202, !344, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.203, !344, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @.str.204, !344, !"<string literal>", i1 false, i1 false}
!349 = !{ptr @mcde_dsi_of_match, !350, !"mcde_dsi_of_match", i1 false, i1 false}
!350 = !{!"../drivers/gpu/drm/mcde/mcde_dsi.c", i32 1220, i32 34}
!351 = !{i32 1, !"wchar_size", i32 2}
!352 = !{i32 1, !"min_enum_size", i32 4}
!353 = !{i32 8, !"branch-target-enforcement", i32 0}
!354 = !{i32 8, !"sign-return-address", i32 0}
!355 = !{i32 8, !"sign-return-address-all", i32 0}
!356 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!357 = !{i32 7, !"uwtable", i32 1}
!358 = !{i32 7, !"frame-pointer", i32 2}
!359 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!360 = !{i64 2148757149, i64 2148757154, i64 2148757167, i64 2148757211, i64 2148757245, i64 2148757266}
!361 = !{i64 3109502}
!362 = !{i64 2156821395}
!363 = !{i64 2156832230}
!364 = !{i64 3109084}
!365 = !{i64 2156832917}
!366 = !{i64 2156844967}
!367 = !{i64 2156845654}
!368 = !{i64 2156848244}
!369 = !{i64 2156848931}
!370 = !{i64 2156855483}
!371 = !{i64 2156856170}
!372 = !{i64 2156875436}
!373 = !{i64 2156905282}
!374 = !{i64 2156905906}
!375 = !{i64 2156906755}
!376 = !{i64 2156907147}
!377 = !{i64 2156907771}
!378 = !{i64 2156908620}
!379 = !{i64 2156909012}
!380 = !{i64 2156909416}
!381 = !{i64 2156994848}
!382 = !{i64 2156995158}
!383 = !{i64 2156995845}
!384 = !{i64 2156996155}
!385 = !{i64 2156996842}
!386 = !{i64 2156997234}
!387 = !{i64 2156997921}
!388 = !{i64 2156998231}
!389 = !{i64 2156998918}
!390 = !{i64 2156999323}
!391 = !{i64 2156971728}
!392 = !{i64 2156972622}
!393 = !{i64 2156973031}
!394 = !{i64 2156975623}
!395 = !{i64 2156976525}
!396 = !{i64 2156976935}
!397 = !{i64 2156977450}
!398 = !{i64 2156977938}
!399 = !{i64 2156978754}
!400 = !{i64 2156979769}
!401 = !{i64 2156981911}
!402 = !{i64 2156982316}
!403 = !{i64 2156912308}
!404 = !{i64 2156912724}
!405 = !{i64 2156920386}
!406 = !{i64 2156920792}
!407 = !{i64 2148665868, i64 2148666148, i64 2148666482, i64 2148666816}
!408 = !{i64 1180037, i64 1180064}
!409 = !{i64 1180732, i64 1180759, i64 1180792, i64 1180813, i64 1180840, i64 1180866}
!410 = !{i64 2156947215}
!411 = !{i64 2156949701}
!412 = !{i64 2156952850}
!413 = !{i64 2156962819}
!414 = !{i64 2156963061}
!415 = !{i64 2156963480}
!416 = !{i64 2156966924}
!417 = !{i64 2156967165}
!418 = !{i64 2156967852}
!419 = !{i64 2156968093}
!420 = !{i64 2156968780}
!421 = !{i64 2156969022}
!422 = !{i64 2157009996}
!423 = !{i64 2157010306}
!424 = !{i64 2157007726}
!425 = !{i64 2157005439}
!426 = !{i64 2157010710}
!427 = !{i64 2157032358}
!428 = !{i64 2156900729}
!429 = !{i64 2156901135}
!430 = !{i64 2156901541}
!431 = !{i64 2156901947}
!432 = !{i64 2156902353}
!433 = !{i64 2156881012}
!434 = !{i64 2156881414}
!435 = !{i64 2156881815}
!436 = !{i64 2156884955}
!437 = !{i64 2156882731}
!438 = !{i64 2156887104}
!439 = !{i64 2156889032}
!440 = !{i64 2156891717}
!441 = !{i64 2156892237}
!442 = !{i64 2156904383}
!443 = !{i64 2156904785}
