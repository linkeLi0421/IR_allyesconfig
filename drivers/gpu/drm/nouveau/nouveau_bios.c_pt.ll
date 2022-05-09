; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nouveau_bios.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_bios.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.91, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.81 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.91 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.104, %struct.anon.105, %struct.anon.107, ptr, %struct.anon.108, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.109, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.115 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.104 = type { ptr, i32, i32, i8 }
%struct.anon.105 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.106] }
%struct.anon.106 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.107 = type { i64, i64 }
%struct.anon.108 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.100 }
%struct.anon.100 = type { ptr, i64 }
%struct.anon.109 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.110, %struct.anon.111, %struct.anon.112, %struct.anon.113 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.94, i8 }
%union.anon.94 = type { %struct.anon.98 }
%struct.anon.98 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.110 = type { i32 }
%struct.anon.111 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.112 = type { i16, i16 }
%struct.anon.113 = type { i16, i16, i16, %struct.anon.114, i16 }
%struct.anon.114 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.115 = type { ptr, %struct.mutex, i8 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.lvdstableheader = type { i8, i8, i8 }
%struct.nvbios_init = type { ptr, i32, ptr, i32, i32, i32, i8, i32, i32, i32, i32 }
%struct.anon.195 = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.168, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.168 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.bit_entry = type { i8, i8, i16, i16, ptr }
%struct.bit_table = type { i8, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.anon.197 = type { %struct.nvkm_object, ptr }
%struct.nvkm_bios = type { %struct.nvkm_subdev, i32, ptr, i32, i32, i32, i32, %struct.anon.191 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.191 = type { i8, i8, i8, i8, i8 }
%struct.anon.96 = type { %struct.sor_conf, i8, i8, i8 }

@call_lvds_script._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 239, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Calling LVDS script %d:\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"call_lvds_script\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/nouveau/nouveau_bios.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@call_lvds_script._entry_ptr = internal global ptr @call_lvds_script._entry, section ".printk_index", align 4
@nouveau_bios_parse_lvds_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 585, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: LVDS table revision not currently supported\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nouveau_bios_parse_lvds_table\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nouveau_bios_parse_lvds_table._entry_ptr = internal global ptr @nouveau_bios_parse_lvds_table._entry, section ".printk_index", align 4
@run_tmds_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 661, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Pixel clock comparison table not found\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"run_tmds_table\00", [17 x i8] zeroinitializer }, align 32
@run_tmds_table._entry_ptr = internal global ptr @run_tmds_table._entry, section ".printk_index", align 4
@run_tmds_table._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 668, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: TMDS output init script not found\0A\00", [57 x i8] zeroinitializer }, align 32
@run_tmds_table._entry_ptr.12 = internal global ptr @run_tmds_table._entry.10, section ".printk_index", align 4
@olddcb_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 1259, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: No DCB data found in VBIOS\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"olddcb_table\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@olddcb_table._entry_ptr = internal global ptr @olddcb_table._entry, section ".printk_index", align 4
@olddcb_table._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.2, i32 1264, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: DCB version 0x%02x unknown\0A\00", [32 x i8] zeroinitializer }, align 32
@olddcb_table._entry_ptr.18 = internal global ptr @olddcb_table._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DEV_REC\00", [24 x i8] zeroinitializer }, align 32
@olddcb_table._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.14, ptr @.str.2, i32 1296, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: No useful DCB data in VBIOS\0A\00", [63 x i8] zeroinitializer }, align 32
@olddcb_table._entry_ptr.22 = internal global ptr @olddcb_table._entry.20, section ".printk_index", align 4
@olddcb_table._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.14, ptr @.str.2, i32 1300, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: DCB header validation failed\0A\00", [62 x i8] zeroinitializer }, align 32
@olddcb_table._entry_ptr.25 = internal global ptr @olddcb_table._entry.23, section ".printk_index", align 4
@nouveau_bios_embedded_edid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 2010, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Found EDID in BIOS\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nouveau_bios_embedded_edid\00", [37 x i8] zeroinitializer }, align 32
@nouveau_bios_embedded_edid._entry_ptr = internal global ptr @nouveau_bios_embedded_edid._entry, section ".printk_index", align 4
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@nouveau_bios_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 2107, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: Adaptor not initialised, running VBIOS init tables.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nouveau_bios_init\00", [46 x i8] zeroinitializer }, align 32
@nouveau_bios_init._entry_ptr = internal global ptr @nouveau_bios_init._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@run_lvds_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.30, ptr @.str.2, i32 195, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"run_lvds_table\00", [17 x i8] zeroinitializer }, align 32
@run_lvds_table._entry_ptr = internal global ptr @run_lvds_table._entry, section ".printk_index", align 4
@run_lvds_table._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 202, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: LVDS output init script not found\0A\00", [57 x i8] zeroinitializer }, align 32
@run_lvds_table._entry_ptr.33 = internal global ptr @run_lvds_table._entry.31, section ".printk_index", align 4
@parse_lvds_manufacturer_table_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 278, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Pointer to LVDS manufacturer table invalid\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"parse_lvds_manufacturer_table_header\00", [59 x i8] zeroinitializer }, align 32
@parse_lvds_manufacturer_table_header._entry_ptr = internal global ptr @parse_lvds_manufacturer_table_header._entry, section ".printk_index", align 4
@parse_lvds_manufacturer_table_header._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 292, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: LVDS table header not understood\0A\00", [58 x i8] zeroinitializer }, align 32
@parse_lvds_manufacturer_table_header._entry_ptr.38 = internal global ptr @parse_lvds_manufacturer_table_header._entry.36, section ".printk_index", align 4
@parse_lvds_manufacturer_table_header._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 300, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@parse_lvds_manufacturer_table_header._entry_ptr.40 = internal global ptr @parse_lvds_manufacturer_table_header._entry.39, section ".printk_index", align 4
@parse_lvds_manufacturer_table_header._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.35, ptr @.str.2, i32 308, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: LVDS table revision %d.%d not currently supported\0A\00", [41 x i8] zeroinitializer }, align 32
@parse_lvds_manufacturer_table_header._entry_ptr.43 = internal global ptr @parse_lvds_manufacturer_table_header._entry.41, section ".printk_index", align 4
@run_digital_op_script._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 99, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: 0x%04X: Parsing digital output script table\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"run_digital_op_script\00", [42 x i8] zeroinitializer }, align 32
@run_digital_op_script._entry_ptr = internal global ptr @run_digital_op_script._entry, section ".printk_index", align 4
@load_nv17_hwsq_ucode_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 1931, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s: Too few entries in HW sequencer table for requested entry\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"load_nv17_hwsq_ucode_entry\00", [37 x i8] zeroinitializer }, align 32
@load_nv17_hwsq_ucode_entry._entry_ptr = internal global ptr @load_nv17_hwsq_ucode_entry._entry, section ".printk_index", align 4
@load_nv17_hwsq_ucode_entry._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 1938, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Unknown HW sequencer entry size\0A\00", [59 x i8] zeroinitializer }, align 32
@load_nv17_hwsq_ucode_entry._entry_ptr.50 = internal global ptr @load_nv17_hwsq_ucode_entry._entry.48, section ".printk_index", align 4
@load_nv17_hwsq_ucode_entry._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.2, i32 1942, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Loading NV17 power sequencing microcode\0A\00", [51 x i8] zeroinitializer }, align 32
@load_nv17_hwsq_ucode_entry._entry_ptr.53 = internal global ptr @load_nv17_hwsq_ucode_entry._entry.51, section ".printk_index", align 4
@NVInitVBIOS.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&legacy->lock\00", [18 x i8] zeroinitializer }, align 32
@parse_bit_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 1011, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: BIT table '%c' not found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"parse_bit_table\00", [16 x i8] zeroinitializer }, align 32
@parse_bit_table._entry_ptr = internal global ptr @parse_bit_table._entry, section ".printk_index", align 4
@parse_bit_i_tbl_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 803, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: BIT i table too short for needed information\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"parse_bit_i_tbl_entry\00", [42 x i8] zeroinitializer }, align 32
@parse_bit_i_tbl_entry._entry_ptr = internal global ptr @parse_bit_i_tbl_entry._entry, section ".printk_index", align 4
@parse_bit_i_tbl_entry._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 816, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s: BIT i table not long enough for DAC load detection comparison table\0A\00", [55 x i8] zeroinitializer }, align 32
@parse_bit_i_tbl_entry._entry_ptr.61 = internal global ptr @parse_bit_i_tbl_entry._entry.59, section ".printk_index", align 4
@parse_bit_i_tbl_entry._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.2, i32 837, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s: DAC load detection comparison table version %d.%d not known\0A\00", [63 x i8] zeroinitializer }, align 32
@parse_bit_i_tbl_entry._entry_ptr.64 = internal global ptr @parse_bit_i_tbl_entry._entry.62, section ".printk_index", align 4
@parse_bit_A_tbl_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 711, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Do not understand BIT A table\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"parse_bit_A_tbl_entry\00", [42 x i8] zeroinitializer }, align 32
@parse_bit_A_tbl_entry._entry_ptr = internal global ptr @parse_bit_A_tbl_entry._entry, section ".printk_index", align 4
@parse_bit_A_tbl_entry._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.2, i32 718, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Pointer to BIT loadval table invalid\0A\00", [54 x i8] zeroinitializer }, align 32
@parse_bit_A_tbl_entry._entry_ptr.69 = internal global ptr @parse_bit_A_tbl_entry._entry.67, section ".printk_index", align 4
@parse_bit_A_tbl_entry._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.66, ptr @.str.2, i32 726, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: BIT loadval table version %d.%d not supported\0A\00", [45 x i8] zeroinitializer }, align 32
@parse_bit_A_tbl_entry._entry_ptr.72 = internal global ptr @parse_bit_A_tbl_entry._entry.70, section ".printk_index", align 4
@parse_bit_A_tbl_entry._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.66, ptr @.str.2, i32 735, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Do not understand BIT loadval table\0A\00", [55 x i8] zeroinitializer }, align 32
@parse_bit_A_tbl_entry._entry_ptr.75 = internal global ptr @parse_bit_A_tbl_entry._entry.73, section ".printk_index", align 4
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@parse_bit_display_tbl_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 758, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Do not understand BIT display table\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"parse_bit_display_tbl_entry\00", [36 x i8] zeroinitializer }, align 32
@parse_bit_display_tbl_entry._entry_ptr = internal global ptr @parse_bit_display_tbl_entry._entry, section ".printk_index", align 4
@parse_bit_init_tbl_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 777, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Do not understand init table\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"parse_bit_init_tbl_entry\00", [39 x i8] zeroinitializer }, align 32
@parse_bit_init_tbl_entry._entry_ptr = internal global ptr @parse_bit_init_tbl_entry._entry, section ".printk_index", align 4
@parse_bit_lvds_tbl_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 859, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Do not understand BIT LVDS table\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"parse_bit_lvds_tbl_entry\00", [39 x i8] zeroinitializer }, align 32
@parse_bit_lvds_tbl_entry._entry_ptr = internal global ptr @parse_bit_lvds_tbl_entry._entry, section ".printk_index", align 4
@parse_bit_tmds_tbl_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 933, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Do not understand BIT TMDS table\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"parse_bit_tmds_tbl_entry\00", [39 x i8] zeroinitializer }, align 32
@parse_bit_tmds_tbl_entry._entry_ptr = internal global ptr @parse_bit_tmds_tbl_entry._entry, section ".printk_index", align 4
@parse_bit_tmds_tbl_entry._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.2, i32 939, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Pointer to TMDS table not found\0A\00", [59 x i8] zeroinitializer }, align 32
@parse_bit_tmds_tbl_entry._entry_ptr.86 = internal global ptr @parse_bit_tmds_tbl_entry._entry.84, section ".printk_index", align 4
@parse_bit_tmds_tbl_entry._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.83, ptr @.str.2, i32 944, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: TMDS table version %d.%d\0A\00", [34 x i8] zeroinitializer }, align 32
@parse_bit_tmds_tbl_entry._entry_ptr.89 = internal global ptr @parse_bit_tmds_tbl_entry._entry.87, section ".printk_index", align 4
@parse_bit_tmds_tbl_entry._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.83, ptr @.str.2, i32 957, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: TMDS table script pointers not stubbed\0A\00", [52 x i8] zeroinitializer }, align 32
@parse_bit_tmds_tbl_entry._entry_ptr.92 = internal global ptr @parse_bit_tmds_tbl_entry._entry.90, section ".printk_index", align 4
@parse_bmp_structure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 1102, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: BMP version %d.%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"parse_bmp_structure\00", [44 x i8] zeroinitializer }, align 32
@parse_bmp_structure._entry_ptr = internal global ptr @parse_bmp_structure._entry, section ".printk_index", align 4
@parse_bmp_structure._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.2, i32 1118, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: You have an unsupported BMP version. Please send in your bios\0A\00", [61 x i8] zeroinitializer }, align 32
@parse_bmp_structure._entry_ptr.97 = internal global ptr @parse_bmp_structure._entry.95, section ".printk_index", align 4
@parse_bmp_structure._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.94, ptr @.str.2, i32 1166, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Bad BMP checksum\0A\00", [42 x i8] zeroinitializer }, align 32
@parse_bmp_structure._entry_ptr.100 = internal global ptr @parse_bmp_structure._entry.98, section ".printk_index", align 4
@parse_dcb_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.2, i32 1884, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: DCB version %d.%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"parse_dcb_table\00", [16 x i8] zeroinitializer }, align 32
@parse_dcb_table._entry_ptr = internal global ptr @parse_dcb_table._entry, section ".printk_index", align 4
@parse_dcb_table._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.102, ptr @.str.2, i32 1902, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: DCB conn %02d: %04x\0A\00", [39 x i8] zeroinitializer }, align 32
@parse_dcb_table._entry_ptr.105 = internal global ptr @parse_dcb_table._entry.103, section ".printk_index", align 4
@parse_dcb_table._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.102, ptr @.str.2, i32 1905, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: DCB conn %02d: %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@parse_dcb_table._entry_ptr.108 = internal global ptr @parse_dcb_table._entry.106, section ".printk_index", align 4
@parse_dcb_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.2, i32 1798, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: DCB outp %02d: %08x %08x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"parse_dcb_entry\00", [16 x i8] zeroinitializer }, align 32
@parse_dcb_entry._entry_ptr = internal global ptr @parse_dcb_entry._entry, section ".printk_index", align 4
@parse_dcb20_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.2, i32 1459, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: Unknown LVDS configuration bits, please report\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"parse_dcb20_entry\00", [46 x i8] zeroinitializer }, align 32
@parse_dcb20_entry._entry_ptr = internal global ptr @parse_dcb20_entry._entry, section ".printk_index", align 4
@parse_dcb15_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.2, i32 1568, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Unknown DCB type %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"parse_dcb15_entry\00", [46 x i8] zeroinitializer }, align 32
@parse_dcb15_entry._entry_ptr = internal global ptr @parse_dcb15_entry._entry, section ".printk_index", align 4
@merge_like_dcb_entries._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.2, i32 1626, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Merging DCB entries %d and %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"merge_like_dcb_entries\00", [41 x i8] zeroinitializer }, align 32
@merge_like_dcb_entries._entry_ptr = internal global ptr @merge_like_dcb_entries._entry, section ".printk_index", align 4
@parse_fp_mode_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.2, i32 356, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Pointer to flat panel table invalid\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"parse_fp_mode_table\00", [44 x i8] zeroinitializer }, align 32
@parse_fp_mode_table._entry_ptr = internal global ptr @parse_fp_mode_table._entry, section ".printk_index", align 4
@parse_fp_mode_table._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.118, ptr @.str.2, i32 396, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: FP table revision %d.%d not currently supported\0A\00", [43 x i8] zeroinitializer }, align 32
@parse_fp_mode_table._entry_ptr.121 = internal global ptr @parse_fp_mode_table._entry.119, section ".printk_index", align 4
@parse_fp_mode_table._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.118, ptr @.str.2, i32 413, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Pointer to flat panel xlat table invalid\0A\00", [50 x i8] zeroinitializer }, align 32
@parse_fp_mode_table._entry_ptr.124 = internal global ptr @parse_fp_mode_table._entry.122, section ".printk_index", align 4
@parse_fp_mode_table._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.118, ptr @.str.2, i32 423, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Bad flat panel table index\0A\00", [32 x i8] zeroinitializer }, align 32
@parse_fp_mode_table._entry_ptr.127 = internal global ptr @parse_fp_mode_table._entry.125, section ".printk_index", align 4
@parse_fp_mode_table._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.118, ptr @.str.2, i32 445, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: BIOS FP mode: %dx%d (%dkHz pixel clock)\0A\00", [51 x i8] zeroinitializer }, align 32
@parse_fp_mode_table._entry_ptr.130 = internal global ptr @parse_fp_mode_table._entry.128, section ".printk_index", align 4
@switch.table.parse_dcb_entry = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 40, i32 131120, i32 40, i32 131088], [16 x i8] zeroinitializer }, align 32
@switch.table.parse_dcb_entry.131 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 33559296, i32 16843538, i32 16843536, i32 33694562], [16 x i8] zeroinitializer }, align 32
@switch.table.parse_dcb_entry.132 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 40, i32 131120, i32 40, i32 131088], [16 x i8] zeroinitializer }, align 32
@switch.table.parse_dcb_entry.133 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 33563392, i32 16843538, i32 67240720, i32 33690402], [16 x i8] zeroinitializer }, align 32
@switch.table.parse_dcb_entry.134 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 162000, i32 270000, i32 540000], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@__sancov_gen_cov_switch_values.135 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.136 = internal global [5 x i64] [i64 3, i64 8, i64 10, i64 48, i64 64]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 64]
@__sancov_gen_cov_switch_values.138 = internal global [5 x i64] [i64 3, i64 8, i64 10, i64 48, i64 64]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 8, i64 26, i64 32]
@__sancov_gen_cov_switch_values.140 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 4, i64 14, i64 15]
@__sancov_gen_cov_switch_values.143 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.144 = internal global [5 x i64] [i64 3, i64 8, i64 5, i64 16, i64 32]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 64]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 16]
@__sancov_gen_cov_switch_values.147 = internal global [7 x i64] [i64 5, i64 16, i64 513, i64 1037, i64 1057, i64 1557, i64 3235]
@__sancov_gen_cov_switch_values.148 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.149 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 6, i64 14]
@__sancov_gen_cov_switch_values.150 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 15]
@__sancov_gen_cov_switch_values.151 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.152 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 239, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 585, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 661, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 668, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 1259, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 1264, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 1276, i32 25 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 1296, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 1300, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 2010, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 2106, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 195, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 202, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 278, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 292, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 300, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 306, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 98, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 1930, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 1938, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 1942, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 2022, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 1011, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 803, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 815, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 836, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 711, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 718, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 725, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 735, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 758, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 777, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 859, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 933, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 939, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 943, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 957, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 1101, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 1117, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 1166, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 1884, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 1901, i32 5 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 1904, i32 5 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 1798, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 1458, i32 4 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 1568, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 1625, i32 5 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 356, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 394, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 413, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 423, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.540 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.541 = private constant [42 x i8] c"../drivers/gpu/drm/nouveau/nouveau_bios.c\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.541, i32 442, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant [29 x i8] c"switch.table.parse_dcb_entry\00", align 1
@___asan_gen_.544 = private unnamed_addr constant [33 x i8] c"switch.table.parse_dcb_entry.131\00", align 1
@___asan_gen_.545 = private unnamed_addr constant [33 x i8] c"switch.table.parse_dcb_entry.132\00", align 1
@___asan_gen_.546 = private unnamed_addr constant [33 x i8] c"switch.table.parse_dcb_entry.133\00", align 1
@___asan_gen_.547 = private unnamed_addr constant [33 x i8] c"switch.table.parse_dcb_entry.134\00", align 1
@llvm.compiler.used = appending global [185 x ptr] [ptr @call_lvds_script._entry, ptr @call_lvds_script._entry_ptr, ptr @load_nv17_hwsq_ucode_entry._entry, ptr @load_nv17_hwsq_ucode_entry._entry.48, ptr @load_nv17_hwsq_ucode_entry._entry.51, ptr @load_nv17_hwsq_ucode_entry._entry_ptr, ptr @load_nv17_hwsq_ucode_entry._entry_ptr.50, ptr @load_nv17_hwsq_ucode_entry._entry_ptr.53, ptr @merge_like_dcb_entries._entry, ptr @merge_like_dcb_entries._entry_ptr, ptr @nouveau_bios_embedded_edid._entry, ptr @nouveau_bios_embedded_edid._entry_ptr, ptr @nouveau_bios_init._entry, ptr @nouveau_bios_init._entry_ptr, ptr @nouveau_bios_parse_lvds_table._entry, ptr @nouveau_bios_parse_lvds_table._entry_ptr, ptr @olddcb_table._entry, ptr @olddcb_table._entry.16, ptr @olddcb_table._entry.20, ptr @olddcb_table._entry.23, ptr @olddcb_table._entry_ptr, ptr @olddcb_table._entry_ptr.18, ptr @olddcb_table._entry_ptr.22, ptr @olddcb_table._entry_ptr.25, ptr @parse_bit_A_tbl_entry._entry, ptr @parse_bit_A_tbl_entry._entry.67, ptr @parse_bit_A_tbl_entry._entry.70, ptr @parse_bit_A_tbl_entry._entry.73, ptr @parse_bit_A_tbl_entry._entry_ptr, ptr @parse_bit_A_tbl_entry._entry_ptr.69, ptr @parse_bit_A_tbl_entry._entry_ptr.72, ptr @parse_bit_A_tbl_entry._entry_ptr.75, ptr @parse_bit_display_tbl_entry._entry, ptr @parse_bit_display_tbl_entry._entry_ptr, ptr @parse_bit_i_tbl_entry._entry, ptr @parse_bit_i_tbl_entry._entry.59, ptr @parse_bit_i_tbl_entry._entry.62, ptr @parse_bit_i_tbl_entry._entry_ptr, ptr @parse_bit_i_tbl_entry._entry_ptr.61, ptr @parse_bit_i_tbl_entry._entry_ptr.64, ptr @parse_bit_init_tbl_entry._entry, ptr @parse_bit_init_tbl_entry._entry_ptr, ptr @parse_bit_lvds_tbl_entry._entry, ptr @parse_bit_lvds_tbl_entry._entry_ptr, ptr @parse_bit_table._entry, ptr @parse_bit_table._entry_ptr, ptr @parse_bit_tmds_tbl_entry._entry, ptr @parse_bit_tmds_tbl_entry._entry.84, ptr @parse_bit_tmds_tbl_entry._entry.87, ptr @parse_bit_tmds_tbl_entry._entry.90, ptr @parse_bit_tmds_tbl_entry._entry_ptr, ptr @parse_bit_tmds_tbl_entry._entry_ptr.86, ptr @parse_bit_tmds_tbl_entry._entry_ptr.89, ptr @parse_bit_tmds_tbl_entry._entry_ptr.92, ptr @parse_bmp_structure._entry, ptr @parse_bmp_structure._entry.95, ptr @parse_bmp_structure._entry.98, ptr @parse_bmp_structure._entry_ptr, ptr @parse_bmp_structure._entry_ptr.100, ptr @parse_bmp_structure._entry_ptr.97, ptr @parse_dcb15_entry._entry, ptr @parse_dcb15_entry._entry_ptr, ptr @parse_dcb20_entry._entry, ptr @parse_dcb20_entry._entry_ptr, ptr @parse_dcb_entry._entry, ptr @parse_dcb_entry._entry_ptr, ptr @parse_dcb_table._entry, ptr @parse_dcb_table._entry.103, ptr @parse_dcb_table._entry.106, ptr @parse_dcb_table._entry_ptr, ptr @parse_dcb_table._entry_ptr.105, ptr @parse_dcb_table._entry_ptr.108, ptr @parse_fp_mode_table._entry, ptr @parse_fp_mode_table._entry.119, ptr @parse_fp_mode_table._entry.122, ptr @parse_fp_mode_table._entry.125, ptr @parse_fp_mode_table._entry.128, ptr @parse_fp_mode_table._entry_ptr, ptr @parse_fp_mode_table._entry_ptr.121, ptr @parse_fp_mode_table._entry_ptr.124, ptr @parse_fp_mode_table._entry_ptr.127, ptr @parse_fp_mode_table._entry_ptr.130, ptr @parse_lvds_manufacturer_table_header._entry, ptr @parse_lvds_manufacturer_table_header._entry.36, ptr @parse_lvds_manufacturer_table_header._entry.39, ptr @parse_lvds_manufacturer_table_header._entry.41, ptr @parse_lvds_manufacturer_table_header._entry_ptr, ptr @parse_lvds_manufacturer_table_header._entry_ptr.38, ptr @parse_lvds_manufacturer_table_header._entry_ptr.40, ptr @parse_lvds_manufacturer_table_header._entry_ptr.43, ptr @run_digital_op_script._entry, ptr @run_digital_op_script._entry_ptr, ptr @run_lvds_table._entry, ptr @run_lvds_table._entry.31, ptr @run_lvds_table._entry_ptr, ptr @run_lvds_table._entry_ptr.33, ptr @run_tmds_table._entry, ptr @run_tmds_table._entry.10, ptr @run_tmds_table._entry_ptr, ptr @run_tmds_table._entry_ptr.12, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @NVInitVBIOS.__key, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.120, ptr @.str.123, ptr @.str.126, ptr @.str.129, ptr @switch.table.parse_dcb_entry, ptr @switch.table.parse_dcb_entry.131, ptr @switch.table.parse_dcb_entry.132, ptr @switch.table.parse_dcb_entry.133, ptr @switch.table.parse_dcb_entry.134], section "llvm.metadata"
@0 = internal global [135 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @call_lvds_script._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_bios_parse_lvds_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_tmds_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_tmds_table._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olddcb_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olddcb_table._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olddcb_table._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olddcb_table._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_bios_embedded_edid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_bios_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_lvds_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_lvds_table._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_lvds_manufacturer_table_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_lvds_manufacturer_table_header._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_lvds_manufacturer_table_header._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_lvds_manufacturer_table_header._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_digital_op_script._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_nv17_hwsq_ucode_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_nv17_hwsq_ucode_entry._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_nv17_hwsq_ucode_entry._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NVInitVBIOS.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_bit_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_bit_i_tbl_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_bit_i_tbl_entry._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_bit_i_tbl_entry._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_bit_A_tbl_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_bit_A_tbl_entry._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_bit_A_tbl_entry._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_bit_A_tbl_entry._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_bit_display_tbl_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_bit_init_tbl_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_bit_lvds_tbl_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_bit_tmds_tbl_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_bit_tmds_tbl_entry._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_bit_tmds_tbl_entry._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_bit_tmds_tbl_entry._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_bmp_structure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_bmp_structure._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_bmp_structure._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_dcb_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_dcb_table._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_dcb_table._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_dcb_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_dcb20_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_dcb15_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @merge_like_dcb_entries._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_fp_mode_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_fp_mode_table._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_fp_mode_table._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_fp_mode_table._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_fp_mode_table._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.parse_dcb_entry to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.parse_dcb_entry.131 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.parse_dcb_entry.132 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.parse_dcb_entry.133 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.parse_dcb_entry.134 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @call_lvds_script(ptr noundef %dev, ptr noundef %dcbent, i32 noundef %head, i32 noundef %script, i32 noundef %pxclk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %device1 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3
  %data = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %lvdsmanufacturerpointer = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 3
  %4 = ptrtoint ptr %lvdsmanufacturerpointer to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %lvdsmanufacturerpointer, align 4
  %idxprom = zext i16 %5 to i32
  %arrayidx = getelementptr i8, ptr %3, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %last_script_invoc = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 15
  %8 = ptrtoint ptr %last_script_invoc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_script_invoc, align 4
  %shl = shl i32 %script, 1
  %or = or i32 %shl, %head
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %or)
  %cmp = icmp eq i32 %9, %or
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false3:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %7)
  %cmp4 = icmp ugt i8 %7, 47
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %script)
  %cmp6 = icmp eq i32 %script, 1
  %or.cond136 = and i1 %cmp6, %cmp4
  br i1 %or.cond136, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %lvds_init_run = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 16
  %10 = ptrtoint ptr %lvds_init_run to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %lvds_init_run, align 4, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  br i1 %tobool9.not, label %if.then10, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %lvds_init_run to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %lvds_init_run, align 4
  %call13 = tail call i32 @call_lvds_script(ptr noundef %dev, ptr noundef %dcbent, i32 noundef %head, i32 noundef 1, i32 noundef %pxclk)
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end.if.end14_crit_edge
  %13 = zext i32 %script to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %script, label %if.end14.do.body_crit_edge [
    i32 5, label %land.lhs.true17
    i32 2, label %land.lhs.true26
  ]

if.end14.do.body_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.lhs.true17:                                  ; preds = %if.end14
  %reset_after_pclk_change = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 8
  %14 = ptrtoint ptr %reset_after_pclk_change to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reset_after_pclk_change, align 1, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool19.not = icmp eq i8 %15, 0
  br i1 %tobool19.not, label %land.lhs.true17.do.body_crit_edge, label %land.lhs.true17.do.body.sink.split_crit_edge

land.lhs.true17.do.body.sink.split_crit_edge:     ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.sink.split

land.lhs.true17.do.body_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.lhs.true26:                                  ; preds = %if.end14
  %power_off_for_reset = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 7
  %16 = ptrtoint ptr %power_off_for_reset to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %power_off_for_reset, align 4, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool28.not = icmp eq i8 %17, 0
  br i1 %tobool28.not, label %land.lhs.true26.do.body_crit_edge, label %land.lhs.true26.do.body.sink.split_crit_edge

land.lhs.true26.do.body.sink.split_crit_edge:     ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.sink.split

land.lhs.true26.do.body_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body.sink.split:                               ; preds = %land.lhs.true26.do.body.sink.split_crit_edge, %land.lhs.true17.do.body.sink.split_crit_edge
  %.sink = phi i32 [ 2, %land.lhs.true17.do.body.sink.split_crit_edge ], [ 6, %land.lhs.true26.do.body.sink.split_crit_edge ]
  %call22 = tail call i32 @call_lvds_script(ptr noundef %dev, ptr noundef %dcbent, i32 noundef %head, i32 noundef %.sink, i32 noundef %pxclk)
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %land.lhs.true26.do.body_crit_edge, %land.lhs.true17.do.body_crit_edge, %if.end14.do.body_crit_edge
  %drm35 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %drm35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %drm35, align 8
  %dev36 = getelementptr inbounds %struct.nouveau_drm, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev36, align 8
  %dev37 = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev37, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %script) #12
  %map = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 6
  %24 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map, align 8
  %tobool40.not = icmp eq ptr %25, null
  br i1 %tobool40.not, label %if.else, label %if.then43, !prof !246

if.then43:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %25, i32 6817060
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !248
  br label %if.end49

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call48 = tail call i32 @nvif_object_rd(ptr noundef %device1, i32 noundef 4, i64 noundef 6817060) #9
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then43
  %_data.0 = phi i32 [ %26, %if.then43 ], [ %call48, %if.else ]
  %and = and i32 %_data.0, 327680
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %7)
  %cmp52 = icmp ult i8 %7, 48
  br i1 %cmp52, label %if.then54, label %if.else56

if.then54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %call55 = tail call fastcc i32 @call_lvds_manufacturer_script(ptr noundef %dev, ptr noundef %dcbent, i32 noundef %head, i32 noundef %script)
  br label %if.end58

if.else56:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %call57 = tail call fastcc i32 @run_lvds_table(ptr noundef %dev, ptr noundef %dcbent, i32 noundef %head, i32 noundef %script, i32 noundef %pxclk)
  br label %if.end58

if.end58:                                         ; preds = %if.else56, %if.then54
  %ret.0 = phi i32 [ %call55, %if.then54 ], [ %call57, %if.else56 ]
  %27 = ptrtoint ptr %last_script_invoc to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or, ptr %last_script_invoc, align 4
  %28 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_private.i, align 4
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %29, i32 0, i32 2, i32 3, i32 0, i32 6
  %30 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %map.i, align 8
  %tobool2.not.i = icmp eq ptr %31, null
  br i1 %tobool2.not.i, label %if.else.i, label %if.then5.i, !prof !246

if.then5.i:                                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %31, i32 6817060
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !249
  br label %NVReadRAMDAC.exit

if.else.i:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %29, i32 0, i32 2, i32 3
  %call10.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i, i32 noundef 4, i64 noundef 6817060) #9
  br label %NVReadRAMDAC.exit

NVReadRAMDAC.exit:                                ; preds = %if.else.i, %if.then5.i
  %_data.0.i = phi i32 [ %32, %if.then5.i ], [ %call10.i, %if.else.i ]
  %and64 = and i32 %_data.0.i, -327681
  %or65 = or i32 %and64, %and
  %33 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_private.i, align 4
  %map.i138 = getelementptr inbounds %struct.nouveau_drm, ptr %34, i32 0, i32 2, i32 3, i32 0, i32 6
  %35 = ptrtoint ptr %map.i138 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map.i138, align 8
  %tobool2.not.i139 = icmp eq ptr %36, null
  br i1 %tobool2.not.i139, label %if.else.i142, label %do.body.i, !prof !246

do.body.i:                                        ; preds = %NVReadRAMDAC.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  tail call void @arm_heavy_mb() #9
  %37 = ptrtoint ptr %map.i138 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %map.i138, align 8
  %add.ptr.i140 = getelementptr i8, ptr %38, i32 6817060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140, i32 %or65) #9, !srcloc !251
  br label %NVWriteRAMDAC.exit

if.else.i142:                                     ; preds = %NVReadRAMDAC.exit
  call void @__sanitizer_cov_trace_pc() #11
  %device1.i141 = getelementptr inbounds %struct.nouveau_drm, ptr %34, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i141, i32 noundef 4, i64 noundef 6817060, i32 noundef %or65) #9
  br label %NVWriteRAMDAC.exit

NVWriteRAMDAC.exit:                               ; preds = %if.else.i142, %do.body.i
  %39 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %map, align 8
  %tobool69.not = icmp eq ptr %40, null
  br i1 %tobool69.not, label %if.else83, label %do.body77, !prof !246

do.body77:                                        ; preds = %NVWriteRAMDAC.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void @arm_heavy_mb() #9
  %41 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %map, align 8
  %add.ptr82 = getelementptr i8, ptr %42, i32 5512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 0) #9, !srcloc !251
  br label %cleanup

if.else83:                                        ; preds = %NVWriteRAMDAC.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nvif_object_wr(ptr noundef %device1, i32 noundef 4, i64 noundef 5512, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else83, %do.body77, %lor.lhs.false3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false3.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %if.else83 ], [ %ret.0, %do.body77 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @call_lvds_manufacturer_script(ptr noundef %dev, ptr noundef %dcbent, i32 noundef %head, i32 noundef %script) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %data = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %xlated_entry = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 6
  %4 = ptrtoint ptr %xlated_entry to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %xlated_entry, align 2
  %conv = zext i16 %5 to i32
  %add = add i32 %conv, %script
  %arrayidx = getelementptr i8, ptr %3, i32 %add
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %link_c_increment = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 10
  %8 = ptrtoint ptr %link_c_increment to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %link_c_increment, align 1, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or = getelementptr inbounds %struct.dcb_output, ptr %dcbent, i32 0, i32 9
  %10 = ptrtoint ptr %or to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %or, align 1
  %12 = lshr i8 %11, 2
  %13 = and i8 %12, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %14 = phi i8 [ 0, %entry.land.end_crit_edge ], [ %13, %land.rhs ]
  %add6 = add i8 %14, %7
  %init_script_tbls_ptr = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 18
  %15 = ptrtoint ptr %init_script_tbls_ptr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %init_script_tbls_ptr, align 2
  %conv9 = zext i16 %16 to i32
  %conv10 = zext i8 %add6 to i32
  %mul = shl nuw nsw i32 %conv10, 1
  %add11 = add nuw nsw i32 %mul, %conv9
  %arrayidx12 = getelementptr i8, ptr %3, i32 %add11
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %arrayidx12, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool16.not = icmp eq i16 %5, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add6)
  %tobool17.not = icmp eq i8 %add6, 0
  %or.cond = select i1 %tobool16.not, i1 true, i1 %tobool17.not
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool19.not = icmp eq i16 %18, 0
  %or.cond50 = select i1 %or.cond, i1 true, i1 %tobool19.not
  br i1 %or.cond50, label %land.end.cleanup_crit_edge, label %if.end

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.end
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #9
  %dual_link = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 9
  %20 = ptrtoint ptr %dual_link to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dual_link, align 2, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool21 = icmp ne i8 %21, 0
  tail call fastcc void @run_digital_op_script(ptr noundef %dev, i16 noundef zeroext %19, ptr noundef %dcbent, i32 noundef %head, i1 noundef zeroext %tobool21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %script)
  %cmp = icmp eq i32 %script, 6
  br i1 %cmp, label %if.then23, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then23:                                        ; preds = %if.end
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %24 = ptrtoint ptr %xlated_entry to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %xlated_entry, align 2
  %conv27 = zext i16 %25 to i32
  %add28 = add nuw nsw i32 %conv27, 7
  %arrayidx29 = getelementptr i8, ptr %23, i32 %add28
  %26 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %arrayidx29, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool32.not51 = icmp eq i16 %27, 0
  br i1 %tobool32.not51, label %if.then23.cleanup_crit_edge, label %while.body.preheader

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.preheader:                             ; preds = %if.then23
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #9
  %conv31 = zext i16 %28 to i32
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %__ms.052 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %conv31, %while.body.preheader ]
  %dec = add i32 %__ms.052, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #9
  %tobool32.not = icmp eq i32 %dec, 0
  br i1 %tobool32.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then23.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @run_lvds_table(ptr noundef %dev, ptr noundef %dcbent, i32 noundef %head, i32 noundef %script, i32 noundef %pxclk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %or = getelementptr inbounds %struct.dcb_output, ptr %dcbent, i32 0, i32 9
  %2 = ptrtoint ptr %or to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %or, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp = icmp eq i8 %3, 4
  %4 = zext i32 %script to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %script, label %entry.do.body81_crit_edge [
    i32 1, label %entry.cleanup_crit_edge
    i32 3, label %entry.sw.bb2_crit_edge
    i32 5, label %entry.sw.bb2_crit_edge142
    i32 4, label %entry.sw.bb6_crit_edge
    i32 6, label %entry.sw.bb6_crit_edge143
    i32 2, label %sw.bb16
  ]

entry.sw.bb6_crit_edge143:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

entry.sw.bb2_crit_edge142:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.do.body81_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body81

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge142
  %data = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %lvdsmanufacturerpointer = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 3
  %7 = ptrtoint ptr %lvdsmanufacturerpointer to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %lvdsmanufacturerpointer, align 4
  %conv3 = zext i16 %8 to i32
  %add = select i1 %cmp, i32 9, i32 7
  %add4 = add nuw nsw i32 %add, %conv3
  %arrayidx = getelementptr i8, ptr %6, i32 %add4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge143
  %data7 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 4
  %9 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data7, align 4
  %lvdsmanufacturerpointer9 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 3
  %11 = ptrtoint ptr %lvdsmanufacturerpointer9 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %lvdsmanufacturerpointer9, align 4
  %conv10 = zext i16 %12 to i32
  %add11 = select i1 %cmp, i32 13, i32 11
  %add13 = add nuw nsw i32 %add11, %conv10
  %arrayidx14 = getelementptr i8, ptr %10, i32 %add13
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %lvdsmanufacturerpointer18 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 3
  %13 = ptrtoint ptr %lvdsmanufacturerpointer18 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %lvdsmanufacturerpointer18, align 4
  %spec.select.v = select i1 %cmp, i16 23, i16 15
  %spec.select = add i16 %14, %spec.select.v
  %use_straps_for_mode = getelementptr inbounds %struct.dcb_output, ptr %dcbent, i32 0, i32 13, i32 0, i32 1
  %15 = ptrtoint ptr %use_straps_for_mode to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %use_straps_for_mode, align 4, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  %dual_link = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 9
  %17 = ptrtoint ptr %dual_link to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dual_link, align 2, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool31.not = icmp eq i8 %18, 0
  %add34 = add i16 %spec.select, 4
  %spec.select132 = select i1 %tobool31.not, i16 %spec.select, i16 %add34
  %if_is_24bit = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 11
  %19 = ptrtoint ptr %if_is_24bit to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %if_is_24bit, align 4, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool38.not = icmp eq i8 %20, 0
  %add41 = add i16 %spec.select132, 2
  %spec.select133 = select i1 %tobool38.not, i16 %spec.select132, i16 %add41
  br label %if.end65

if.else:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  %cond48 = select i1 %cmp, i32 4, i32 1
  %dual_link50 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 9
  %21 = ptrtoint ptr %dual_link50 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dual_link50, align 2, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool51.not = icmp eq i8 %22, 0
  %add54 = add i16 %spec.select, 4
  %clktable.2 = select i1 %tobool51.not, i16 %spec.select, i16 %add54
  %not.tobool51.not = xor i1 %tobool51.not, true
  %shl = zext i1 %not.tobool51.not to i32
  %cmpval_24bit.0 = shl nuw nsw i32 %cond48, %shl
  %strapless_is_24bit = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 13
  %23 = ptrtoint ptr %strapless_is_24bit to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %strapless_is_24bit, align 4
  %conv58 = zext i8 %24 to i32
  %and = and i32 %cmpval_24bit.0, %conv58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool59.not = icmp eq i32 %and, 0
  %add62 = add i16 %clktable.2, 2
  %clktable.3 = select i1 %tobool59.not, i16 %clktable.2, i16 %add62
  br label %if.end65

if.end65:                                         ; preds = %if.else, %if.then29
  %clktable.4 = phi i16 [ %clktable.3, %if.else ], [ %spec.select133, %if.then29 ]
  %data66 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 4
  %25 = ptrtoint ptr %data66 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data66, align 4
  %idxprom = zext i16 %clktable.4 to i32
  %arrayidx67 = getelementptr i8, ptr %26, i32 %idxprom
  %27 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %arrayidx67, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool69.not = icmp eq i16 %28, 0
  br i1 %tobool69.not, label %do.body, label %if.end77

do.body:                                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %drm72 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %drm72 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %drm72, align 8
  %dev73 = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev73, align 8
  %dev74 = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev74, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.8, ptr noundef %name) #12
  br label %cleanup

if.end77:                                         ; preds = %if.end65
  %35 = tail call i16 @llvm.bswap.i16(i16 %28) #9
  %major_version.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 12
  %36 = ptrtoint ptr %major_version.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %major_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %37)
  %cmp.i = icmp ult i8 %37, 5
  %..i = select i1 %cmp.i, i32 3, i32 4
  %38 = ptrtoint ptr %data66 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data66, align 4
  %conv2.i = zext i16 %35 to i32
  br label %do.body.i

do.body.i:                                        ; preds = %if.end35.i.do.body.i_crit_edge, %if.end77
  %i.0.i = phi i32 [ 0, %if.end77 ], [ %inc.i, %if.end35.i.do.body.i_crit_edge ]
  %mul.i = mul i32 %i.0.i, %..i
  %add.i = add i32 %mul.i, %conv2.i
  %arrayidx.i = getelementptr i8, ptr %39, i32 %add.i
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %arrayidx.i, align 1
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #9
  %conv3.i = zext i16 %42 to i32
  %mul4.i = mul nuw nsw i32 %conv3.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %mul4.i, i32 %pxclk)
  %cmp5.not.i = icmp sgt i32 %mul4.i, %pxclk
  br i1 %cmp5.not.i, label %if.end35.i, label %if.then7.i

if.then7.i:                                       ; preds = %do.body.i
  %add17.i = add i32 %add.i, 2
  %arrayidx18.i = getelementptr i8, ptr %39, i32 %add17.i
  br i1 %cmp.i, label %if.then12.i, label %if.then7.i.sw.epilog_crit_edge

if.then7.i.sw.epilog_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then12.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx18.i, align 1
  %init_script_tbls_ptr.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 18
  %45 = ptrtoint ptr %init_script_tbls_ptr.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %init_script_tbls_ptr.i, align 2
  %conv20.i = zext i16 %46 to i32
  %conv21.i = zext i8 %44 to i32
  %mul22.i = shl nuw nsw i32 %conv21.i, 1
  %add23.i = add nuw nsw i32 %mul22.i, %conv20.i
  %arrayidx24.i = getelementptr i8, ptr %39, i32 %add23.i
  br label %sw.epilog

if.end35.i:                                       ; preds = %do.body.i
  %inc.i = add i32 %i.0.i, 1
  %tobool.not.i = icmp eq i16 %41, 0
  br i1 %tobool.not.i, label %if.end35.i.do.body81_crit_edge, label %if.end35.i.do.body.i_crit_edge

if.end35.i.do.body.i_crit_edge:                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.end35.i.do.body81_crit_edge:                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body81

sw.epilog:                                        ; preds = %if.then12.i, %if.then7.i.sw.epilog_crit_edge, %sw.bb6, %sw.bb2
  %arrayidx24.sink.i.sink = phi ptr [ %arrayidx14, %sw.bb6 ], [ %arrayidx, %sw.bb2 ], [ %arrayidx24.i, %if.then12.i ], [ %arrayidx18.i, %if.then7.i.sw.epilog_crit_edge ]
  %47 = ptrtoint ptr %arrayidx24.sink.i.sink to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %arrayidx24.sink.i.sink, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool79.not = icmp eq i16 %48, 0
  br i1 %tobool79.not, label %sw.epilog.do.body81_crit_edge, label %if.end94

sw.epilog.do.body81_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body81

do.body81:                                        ; preds = %sw.epilog.do.body81_crit_edge, %if.end35.i.do.body81_crit_edge, %entry.do.body81_crit_edge
  %drm87 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %drm87 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %drm87, align 8
  %dev88 = getelementptr inbounds %struct.nouveau_drm, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev88, align 8
  %dev89 = getelementptr inbounds %struct.drm_device, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %dev89 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev89, align 4
  %name90 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.32, ptr noundef %name90) #12
  br label %cleanup

if.end94:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %55 = tail call i16 @llvm.bswap.i16(i16 %48) #9
  %dual_link96 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 9
  %56 = ptrtoint ptr %dual_link96 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %dual_link96, align 2, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool97 = icmp ne i8 %57, 0
  tail call fastcc void @run_digital_op_script(ptr noundef %dev, i16 noundef zeroext %55, ptr noundef %dcbent, i32 noundef %head, i1 noundef zeroext %tobool97)
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %do.body81, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end94 ], [ -2, %do.body81 ], [ -2, %do.body ], [ -38, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nouveau_bios_fp_mode(ptr nocapture noundef readonly %dev, ptr noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %mode_ptr = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 5
  %2 = ptrtoint ptr %mode_ptr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mode_ptr, align 4
  %tobool.not = icmp eq ptr %mode, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %idxprom = zext i16 %3 to i32
  %arrayidx = getelementptr i8, ptr %5, i32 %idxprom
  %6 = call ptr @memset(ptr %mode, i32 0, i32 112)
  %arrayidx4 = getelementptr i8, ptr %arrayidx, i32 7
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %arrayidx4, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #9
  %conv = zext i16 %9 to i32
  %mul = mul nuw nsw i32 %conv, 10
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %mode, align 4
  %arrayidx6 = getelementptr i8, ptr %arrayidx, i32 11
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %arrayidx6, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #9
  %add = add i16 %13, 1
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %14 = ptrtoint ptr %hdisplay to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %add, ptr %hdisplay, align 4
  %arrayidx10 = getelementptr i8, ptr %arrayidx, i32 17
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %arrayidx10, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #9
  %add13 = add i16 %17, 1
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %18 = ptrtoint ptr %hsync_start to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %add13, ptr %hsync_start, align 2
  %arrayidx15 = getelementptr i8, ptr %arrayidx, i32 19
  %19 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %arrayidx15, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #9
  %add18 = add i16 %21, 1
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %22 = ptrtoint ptr %hsync_end to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %add18, ptr %hsync_end, align 4
  %arrayidx20 = getelementptr i8, ptr %arrayidx, i32 21
  %23 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %arrayidx20, align 1
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #9
  %add23 = add i16 %25, 1
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %26 = ptrtoint ptr %htotal to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %add23, ptr %htotal, align 2
  %arrayidx25 = getelementptr i8, ptr %arrayidx, i32 25
  %27 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %arrayidx25, align 1
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #9
  %add28 = add i16 %29, 1
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %30 = ptrtoint ptr %vdisplay to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %add28, ptr %vdisplay, align 2
  %arrayidx30 = getelementptr i8, ptr %arrayidx, i32 31
  %31 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %arrayidx30, align 1
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #9
  %add33 = add i16 %33, 1
  %vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 7
  %34 = ptrtoint ptr %vsync_start to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %add33, ptr %vsync_start, align 4
  %arrayidx35 = getelementptr i8, ptr %arrayidx, i32 33
  %35 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %arrayidx35, align 1
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #9
  %add38 = add i16 %37, 1
  %vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 8
  %38 = ptrtoint ptr %vsync_end to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %add38, ptr %vsync_end, align 2
  %arrayidx40 = getelementptr i8, ptr %arrayidx, i32 35
  %39 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %arrayidx40, align 1
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #9
  %add43 = add i16 %41, 1
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %42 = ptrtoint ptr %vtotal to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %add43, ptr %vtotal, align 4
  %arrayidx45 = getelementptr i8, ptr %arrayidx, i32 37
  %43 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx45, align 1
  %45 = and i8 %44, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool47.not = icmp eq i8 %45, 0
  %cond = select i1 %tobool47.not, i32 2, i32 1
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %cond, ptr %flags, align 4
  %47 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx45, align 1
  %49 = and i8 %48, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool51.not = icmp eq i8 %49, 0
  %cond52 = select i1 %tobool51.not, i32 8, i32 4
  %or54 = or i32 %cond52, %cond
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or54, ptr %flags, align 4
  %status = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 32
  %51 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %status, align 4
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 28
  %52 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 72, ptr %type, align 2
  tail call void @drm_mode_set_name(ptr noundef nonnull %mode) #9
  %53 = ptrtoint ptr %mode_ptr to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %mode_ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0.in = phi i16 [ %54, %if.end ], [ %3, %entry.cleanup_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval.0.in)
  %retval.0 = icmp ne i16 %retval.0.in, 0
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_bios_parse_lvds_table(ptr nocapture noundef readonly %dev, i32 noundef %pxclk, ptr nocapture noundef writeonly %dl, ptr nocapture noundef writeonly %if_is_24bit) local_unnamed_addr #0 align 64 {
entry:
  %lth = alloca %struct.lvdstableheader, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %vbios = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18
  %call1 = tail call fastcc i32 @get_fp_strap(ptr noundef %dev, ptr noundef %vbios)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %lth) #9
  %2 = ptrtoint ptr %lth to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %lth, align 1, !annotation !253
  %3 = getelementptr inbounds %struct.lvdstableheader, ptr %lth, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !253
  %5 = getelementptr inbounds %struct.lvdstableheader, ptr %lth, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !253
  %chip_version2 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 5
  %7 = ptrtoint ptr %chip_version2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %chip_version2, align 4
  %call3 = call fastcc i32 @parse_lvds_manufacturer_table_header(ptr noundef %dev, ptr noundef %vbios, ptr noundef nonnull %lth)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %lth to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %lth, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.136)
  switch i8 %10, label %do.body [
    i8 10, label %sw.bb
    i8 48, label %if.end.sw.epilog_crit_edge
    i8 64, label %if.end.sw.epilog_crit_edge228
  ]

if.end.sw.epilog_crit_edge228:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %data = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 4
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %fpxlatemanufacturertableptr = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 4
  %14 = ptrtoint ptr %fpxlatemanufacturertableptr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %fpxlatemanufacturertableptr, align 2
  %conv5 = zext i16 %15 to i32
  %add = add i32 %call1, %conv5
  %arrayidx = getelementptr i8, ptr %13, i32 %add
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pxclk)
  %tobool7.not = icmp eq i32 %pxclk, 0
  br i1 %tobool7.not, label %sw.bb.sw.epilog.thread_crit_edge, label %if.end9

sw.bb.sw.epilog.thread_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread

if.end9:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %8)
  %cmp = icmp ult i8 %8, 37
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %lvds_single_a_script_ptr = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 26, i32 4
  %18 = ptrtoint ptr %lvds_single_a_script_ptr to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %lvds_single_a_script_ptr, align 2
  %20 = shl i16 %19, 1
  %21 = and i16 %20, 2
  %22 = zext i16 %21 to i32
  %duallink_transition_clk = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 12
  %23 = ptrtoint ptr %duallink_transition_clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %duallink_transition_clk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %pxclk)
  %cmp15.not = icmp sle i32 %24, %pxclk
  %inc = zext i1 %cmp15.not to i32
  %spec.select = or i32 %22, %inc
  br label %sw.epilog.thread

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %8)
  %cmp19 = icmp ult i8 %8, 48
  br i1 %cmp19, label %if.else.sw.epilog.thread_crit_edge, label %if.else22

if.else.sw.epilog.thread_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread

if.else22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %duallink_transition_clk24 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 12
  %25 = ptrtoint ptr %duallink_transition_clk24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %duallink_transition_clk24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %pxclk)
  %cmp25.not = icmp sgt i32 %26, %pxclk
  %spec.store.select = select i1 %cmp25.not, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 139999, i32 %pxclk)
  %cmp29 = icmp sgt i32 %pxclk, 139999
  %spec.store.select157 = select i1 %cmp29, i32 3, i32 %spec.store.select
  br label %sw.epilog.thread

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %drm37 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %drm37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %drm37, align 8
  %dev38 = getelementptr inbounds %struct.nouveau_drm, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev38, align 8
  %dev39 = getelementptr inbounds %struct.drm_device, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev39, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.5, ptr noundef %name) #12
  br label %cleanup

sw.epilog.thread:                                 ; preds = %if.else22, %if.else.sw.epilog.thread_crit_edge, %if.then11, %sw.bb.sw.epilog.thread_crit_edge
  %lvdsmanufacturerindex.0.ph = phi i32 [ 0, %if.else.sw.epilog.thread_crit_edge ], [ %spec.select, %if.then11 ], [ %conv6, %sw.bb.sw.epilog.thread_crit_edge ], [ %spec.store.select157, %if.else22 ]
  %lvdsmanufacturerpointer217 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 3
  %33 = ptrtoint ptr %lvdsmanufacturerpointer217 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %lvdsmanufacturerpointer217, align 4
  %conv43218 = zext i16 %34 to i32
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %3, align 1
  %conv44219 = zext i8 %36 to i32
  %add45220 = add nuw nsw i32 %conv44219, %conv43218
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %5, align 1
  %conv46221 = zext i8 %38 to i32
  %mul222 = mul nsw i32 %lvdsmanufacturerindex.0.ph, %conv46221
  %add47223 = add nsw i32 %add45220, %mul222
  %conv48224 = trunc i32 %add47223 to i16
  %xlated_entry225 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 6
  %39 = ptrtoint ptr %xlated_entry225 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv48224, ptr %xlated_entry225, align 2
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  %idxprom = and i32 %add47223, 65535
  %arrayidx54 = getelementptr i8, ptr %41, i32 %idxprom
  %42 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx54, align 1
  %44 = and i8 %43, 1
  %power_off_for_reset = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 7
  %45 = ptrtoint ptr %power_off_for_reset to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %power_off_for_reset, align 4
  %46 = load i8, ptr %arrayidx54, align 1
  %reset_after_pclk_change = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 8
  %47 = lshr i8 %46, 1
  %.lobit212 = and i8 %47, 1
  %48 = ptrtoint ptr %reset_after_pclk_change to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %.lobit212, ptr %reset_after_pclk_change, align 1
  %49 = load i8, ptr %arrayidx54, align 1
  %dual_link = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 9
  %50 = lshr i8 %49, 2
  %.lobit213 = and i8 %50, 1
  %51 = ptrtoint ptr %dual_link to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %.lobit213, ptr %dual_link, align 2
  %52 = load i8, ptr %arrayidx54, align 1
  %link_c_increment = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 10
  %53 = lshr i8 %52, 3
  %.lobit214 = and i8 %53, 1
  %54 = ptrtoint ptr %link_c_increment to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %.lobit214, ptr %link_c_increment, align 1
  %55 = load i8, ptr %arrayidx54, align 1
  %56 = lshr i8 %55, 4
  %.lobit215 = and i8 %56, 1
  %57 = ptrtoint ptr %if_is_24bit to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %.lobit215, ptr %if_is_24bit, align 1
  br label %sw.epilog131

sw.epilog:                                        ; preds = %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge228
  %lvdsmanufacturerpointer = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 3
  %58 = ptrtoint ptr %lvdsmanufacturerpointer to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %lvdsmanufacturerpointer, align 4
  %conv43 = zext i16 %59 to i32
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %3, align 1
  %conv44 = zext i8 %61 to i32
  %add45 = add nuw nsw i32 %conv44, %conv43
  %62 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %5, align 1
  %conv46 = zext i8 %63 to i32
  %mul = mul i32 %call1, %conv46
  %add47 = add i32 %add45, %mul
  %conv48 = trunc i32 %add47 to i16
  %xlated_entry = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 6
  %64 = ptrtoint ptr %xlated_entry to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv48, ptr %xlated_entry, align 2
  %65 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.137)
  switch i8 %10, label %sw.epilog.sw.epilog131_crit_edge [
    i8 64, label %sw.epilog.sw.bb90_crit_edge
    i8 48, label %sw.epilog.sw.bb90_crit_edge229
  ]

sw.epilog.sw.bb90_crit_edge229:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb90

sw.epilog.sw.bb90_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb90

sw.epilog.sw.epilog131_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog131

sw.bb90:                                          ; preds = %sw.epilog.sw.bb90_crit_edge, %sw.epilog.sw.bb90_crit_edge229
  %power_off_for_reset92 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 7
  %66 = ptrtoint ptr %power_off_for_reset92 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %power_off_for_reset92, align 4
  %reset_after_pclk_change94 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 8
  %67 = ptrtoint ptr %reset_after_pclk_change94 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %reset_after_pclk_change94, align 1
  %data95 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 4
  %68 = ptrtoint ptr %data95 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data95, align 4
  %idxprom96 = and i32 %add47, 65535
  %arrayidx97 = getelementptr i8, ptr %69, i32 %idxprom96
  %70 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx97, align 1
  %72 = and i8 %71, 1
  %dual_link102 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 9
  %73 = ptrtoint ptr %dual_link102 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %dual_link102, align 2
  %74 = load i8, ptr %arrayidx97, align 1
  %if_is_24bit111 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 11
  %75 = lshr i8 %74, 1
  %.lobit = and i8 %75, 1
  %76 = ptrtoint ptr %if_is_24bit111 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %.lobit, ptr %if_is_24bit111, align 4
  %add117 = add nuw nsw i32 %conv43, 4
  %arrayidx118 = getelementptr i8, ptr %69, i32 %add117
  %77 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx118, align 1
  %strapless_is_24bit = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 13
  %79 = ptrtoint ptr %strapless_is_24bit to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %strapless_is_24bit, align 4
  %add124 = add nuw nsw i32 %conv43, 5
  %arrayidx125 = getelementptr i8, ptr %69, i32 %add124
  %80 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %81 = load i16, ptr %arrayidx125, align 1
  %82 = tail call i16 @llvm.bswap.i16(i16 %81) #9
  %conv127 = zext i16 %82 to i32
  %mul128 = mul nuw nsw i32 %conv127, 10
  %duallink_transition_clk130 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 12
  %83 = ptrtoint ptr %duallink_transition_clk130 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %mul128, ptr %duallink_transition_clk130, align 4
  br label %sw.epilog131

sw.epilog131:                                     ; preds = %sw.bb90, %sw.epilog.sw.epilog131_crit_edge, %sw.epilog.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pxclk)
  %tobool132.not = icmp ne i32 %pxclk, 0
  %84 = add i8 %8, -41
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %84)
  %85 = icmp ult i8 %84, -4
  %or.cond = select i1 %tobool132.not, i1 %85, i1 false
  br i1 %or.cond, label %if.then137, label %sw.epilog131.if.end145_crit_edge

sw.epilog131.if.end145_crit_edge:                 ; preds = %sw.epilog131
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end145

if.then137:                                       ; preds = %sw.epilog131
  call void @__sanitizer_cov_trace_pc() #11
  %duallink_transition_clk139 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 12
  %86 = ptrtoint ptr %duallink_transition_clk139 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %duallink_transition_clk139, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %pxclk)
  %cmp140 = icmp sle i32 %87, %pxclk
  %dual_link143 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 9
  %frombool144 = zext i1 %cmp140 to i8
  %88 = ptrtoint ptr %dual_link143 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %frombool144, ptr %dual_link143, align 2
  br label %if.end145

if.end145:                                        ; preds = %if.then137, %sw.epilog131.if.end145_crit_edge
  %dual_link147 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 9
  %89 = ptrtoint ptr %dual_link147 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %dual_link147, align 2, !range !245
  %91 = ptrtoint ptr %dl to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %dl, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end145, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -38, %do.body ], [ 0, %if.end145 ], [ %call3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %lth) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_fp_strap(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %bios) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %device1 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3
  %major_version = getelementptr inbounds %struct.nvbios, ptr %bios, i32 0, i32 12
  %2 = ptrtoint ptr %major_version to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %major_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp = icmp ult i8 %3, 5
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.nvbios, ptr %bios, i32 0, i32 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 72
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = and i8 %7, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %map.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 6
  %9 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !246

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 87) #9, !srcloc !255
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nvif_object_wr(ptr noundef %device1, i32 noundef 1, i64 noundef 6296532, i32 noundef 87) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %11 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map.i.i, align 8
  %tobool12.not.i.i = icmp eq ptr %12, null
  br i1 %tobool12.not.i.i, label %if.else25.i.i, label %if.then19.i.i, !prof !246

if.then19.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr24.i.i = getelementptr i8, ptr %12, i32 6296533
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i.i, i8 15) #9, !srcloc !255
  br label %NVWriteVgaCrtc.exit.i

if.else25.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nvif_object_wr(ptr noundef %device1, i32 noundef 1, i64 noundef 6296533, i32 noundef 15) #9
  br label %NVWriteVgaCrtc.exit.i

NVWriteVgaCrtc.exit.i:                            ; preds = %if.else25.i.i, %if.then19.i.i
  %13 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_private.i, align 4
  %device1.i2.i = getelementptr inbounds %struct.nouveau_drm, ptr %14, i32 0, i32 2, i32 3
  %map.i3.i = getelementptr inbounds %struct.nouveau_drm, ptr %14, i32 0, i32 2, i32 3, i32 0, i32 6
  %15 = ptrtoint ptr %map.i3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map.i3.i, align 8
  %tobool.not.i4.i = icmp eq ptr %16, null
  br i1 %tobool.not.i4.i, label %if.else.i7.i, label %if.then.i6.i, !prof !246

if.then.i6.i:                                     ; preds = %NVWriteVgaCrtc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i5.i = getelementptr i8, ptr %16, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i5.i, i8 88) #9, !srcloc !255
  br label %if.end.i9.i

if.else.i7.i:                                     ; preds = %NVWriteVgaCrtc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nvif_object_wr(ptr noundef %device1.i2.i, i32 noundef 1, i64 noundef 6296532, i32 noundef 88) #9
  br label %if.end.i9.i

if.end.i9.i:                                      ; preds = %if.else.i7.i, %if.then.i6.i
  %17 = ptrtoint ptr %map.i3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map.i3.i, align 8
  %tobool12.not.i8.i = icmp eq ptr %18, null
  br i1 %tobool12.not.i8.i, label %if.else27.i.i, label %if.then19.i11.i, !prof !246

if.then19.i11.i:                                  ; preds = %if.end.i9.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr24.i10.i = getelementptr i8, ptr %18, i32 6296533
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i10.i) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  %conv26.i.i = zext i8 %19 to i32
  br label %NVReadVgaCrtc5758.exit

if.else27.i.i:                                    ; preds = %if.end.i9.i
  call void @__sanitizer_cov_trace_pc() #11
  %call31.i.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i2.i, i32 noundef 1, i64 noundef 6296533) #9
  br label %NVReadVgaCrtc5758.exit

NVReadVgaCrtc5758.exit:                           ; preds = %if.else27.i.i, %if.then19.i11.i
  %_data.0.i.i = phi i32 [ %conv26.i.i, %if.then19.i11.i ], [ %call31.i.i, %if.else27.i.i ]
  %conv5 = and i32 %_data.0.i.i, 255
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %family = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 1, i32 4
  %20 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %21)
  %cmp10 = icmp ugt i8 %21, 8
  br i1 %cmp10, label %if.then12, label %if.else25

if.then12:                                        ; preds = %if.end
  %map = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 6
  %22 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map, align 8
  %tobool13.not = icmp eq ptr %23, null
  br i1 %tobool13.not, label %if.else, label %if.then16, !prof !246

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %23, i32 6144
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  br label %cleanup

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = tail call i32 @nvif_object_rd(ptr noundef %device1, i32 noundef 4, i64 noundef 6144) #9
  br label %cleanup

if.else25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %21)
  %cmp31 = icmp ugt i8 %21, 5
  %map37 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 6
  %25 = ptrtoint ptr %map37 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %map37, align 8
  %tobool39.not = icmp eq ptr %26, null
  br i1 %cmp31, label %if.then33, label %if.else58

if.then33:                                        ; preds = %if.else25
  br i1 %tobool39.not, label %if.else53, label %if.then46, !prof !246

if.then46:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr50 = getelementptr i8, ptr %26, i32 1052672
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  br label %if.end55

if.else53:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  %call54 = tail call i32 @nvif_object_rd(ptr noundef %device1, i32 noundef 4, i64 noundef 1052672) #9
  br label %if.end55

if.end55:                                         ; preds = %if.else53, %if.then46
  %_data36.0 = phi i32 [ %27, %if.then46 ], [ %call54, %if.else53 ]
  %shr = lshr i32 %_data36.0, 24
  br label %cleanup

if.else58:                                        ; preds = %if.else25
  br i1 %tobool39.not, label %if.else78, label %if.then71, !prof !246

if.then71:                                        ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr75 = getelementptr i8, ptr %26, i32 1052672
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr75) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !260
  br label %if.end80

if.else78:                                        ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #11
  %call79 = tail call i32 @nvif_object_rd(ptr noundef %device1, i32 noundef 4, i64 noundef 1052672) #9
  br label %if.end80

if.end80:                                         ; preds = %if.else78, %if.then71
  %_data61.0 = phi i32 [ %28, %if.then71 ], [ %call79, %if.else78 ]
  %shr82 = lshr i32 %_data61.0, 16
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.end55, %if.else, %if.then16, %NVReadVgaCrtc5758.exit
  %retval.0.in = phi i32 [ %conv5, %NVReadVgaCrtc5758.exit ], [ %shr, %if.end55 ], [ %shr82, %if.end80 ], [ %24, %if.then16 ], [ %call21, %if.else ]
  %retval.0 = and i32 %retval.0.in, 15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_lvds_manufacturer_table_header(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %bios, ptr nocapture noundef writeonly %lth) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %2 = call ptr @memset(ptr %lth, i32 0, i32 3)
  %lvdsmanufacturerpointer = getelementptr inbounds %struct.nvbios, ptr %bios, i32 0, i32 24, i32 3
  %3 = ptrtoint ptr %lvdsmanufacturerpointer to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %lvdsmanufacturerpointer, align 4
  %conv = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp = icmp eq i16 %4, 0
  br i1 %cmp, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %drm3 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %drm3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drm3, align 8
  %dev4 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev4, align 8
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev5, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.34, ptr noundef %name) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.nvbios, ptr %bios, i32 0, i32 4
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %12, i32 %conv
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.138)
  switch i8 %14, label %do.body78 [
    i8 10, label %if.end.sw.epilog_crit_edge
    i8 48, label %sw.bb16
    i8 64, label %sw.bb47
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  %add21 = add nuw nsw i32 %conv, 1
  %arrayidx22 = getelementptr i8, ptr %12, i32 %add21
  %16 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %17)
  %cmp24 = icmp ult i8 %17, 31
  br i1 %cmp24, label %do.body27, label %sw.bb16.sw.epilog_crit_edge

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body27:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  %drm33 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %drm33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %drm33, align 8
  %dev34 = getelementptr inbounds %struct.nouveau_drm, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev34, align 8
  %dev35 = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev35, align 4
  %name36 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.37, ptr noundef %name36) #12
  br label %cleanup

sw.bb47:                                          ; preds = %if.end
  %add52 = add nuw nsw i32 %conv, 1
  %arrayidx53 = getelementptr i8, ptr %12, i32 %add52
  %24 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx53, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %25)
  %cmp55 = icmp ult i8 %25, 7
  br i1 %cmp55, label %do.body58, label %sw.bb47.sw.epilog_crit_edge

sw.bb47.sw.epilog_crit_edge:                      ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body58:                                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #11
  %drm64 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %drm64 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %drm64, align 8
  %dev65 = getelementptr inbounds %struct.nouveau_drm, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev65, align 8
  %dev66 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev66, align 4
  %name67 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.37, ptr noundef %name67) #12
  br label %cleanup

do.body78:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv10 = zext i8 %14 to i32
  %drm84 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %drm84 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %drm84, align 8
  %dev85 = getelementptr inbounds %struct.nouveau_drm, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %dev85 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev85, align 8
  %dev86 = getelementptr inbounds %struct.drm_device, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev86, align 4
  %name87 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  %38 = lshr i32 %conv10, 4
  %and = and i32 %conv10, 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.42, ptr noundef %name87, i32 noundef %38, i32 noundef %and) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb47.sw.epilog_crit_edge, %sw.bb16.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %.sink = phi i32 [ 1, %if.end.sw.epilog_crit_edge ], [ 2, %sw.bb16.sw.epilog_crit_edge ], [ 2, %sw.bb47.sw.epilog_crit_edge ]
  %headerlen.0 = phi i8 [ 2, %if.end.sw.epilog_crit_edge ], [ %17, %sw.bb16.sw.epilog_crit_edge ], [ %25, %sw.bb47.sw.epilog_crit_edge ]
  %add76 = add nuw nsw i32 %.sink, %conv
  %arrayidx77 = getelementptr i8, ptr %12, i32 %add76
  %39 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %39)
  %recordlen.0 = load i8, ptr %arrayidx77, align 1
  %40 = ptrtoint ptr %lth to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %14, ptr %lth, align 1
  %headerlen94 = getelementptr inbounds %struct.lvdstableheader, ptr %lth, i32 0, i32 1
  %41 = ptrtoint ptr %headerlen94 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %headerlen.0, ptr %headerlen94, align 1
  %recordlen95 = getelementptr inbounds %struct.lvdstableheader, ptr %lth, i32 0, i32 2
  %42 = ptrtoint ptr %recordlen95 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %recordlen.0, ptr %recordlen95, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.body78, %do.body58, %do.body27, %do.body
  %retval.0 = phi i32 [ -22, %do.body ], [ -38, %do.body78 ], [ -22, %do.body58 ], [ 0, %sw.epilog ], [ -22, %do.body27 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @run_tmds_table(ptr noundef %dev, ptr noundef %dcbent, i32 noundef %head, i32 noundef %pxclk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %device1 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3
  %chip_version = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 5
  %2 = ptrtoint ptr %chip_version to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_version, align 4
  %.fr = freeze i8 %3
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %.fr)
  %cmp = icmp ult i8 %.fr, 23
  br i1 %cmp, label %entry.if.end_crit_edge, label %switch.early.test

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

switch.early.test:                                ; preds = %entry
  %4 = zext i8 %.fr to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.139)
  switch i8 %.fr, label %land.lhs.true8 [
    i8 32, label %switch.early.test.if.end_crit_edge
    i8 26, label %switch.early.test.if.end_crit_edge103
  ]

switch.early.test.if.end_crit_edge103:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

switch.early.test.if.end_crit_edge:               ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true8:                                   ; preds = %switch.early.test
  %location = getelementptr inbounds %struct.dcb_output, ptr %dcbent, i32 0, i32 8
  %5 = ptrtoint ptr %location to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %location, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp10.not = icmp eq i8 %6, 0
  br i1 %cmp10.not, label %land.lhs.true8.if.end_crit_edge, label %land.lhs.true8.cleanup_crit_edge

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %switch.early.test.if.end_crit_edge, %switch.early.test.if.end_crit_edge103, %entry.if.end_crit_edge
  %or = getelementptr inbounds %struct.dcb_output, ptr %dcbent, i32 0, i32 9
  %7 = ptrtoint ptr %or to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %or, align 1
  %9 = tail call i8 @llvm.cttz.i8(i8 %8, i1 true), !range !261
  %narrow = add nuw nsw i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %iszero = icmp eq i8 %8, 0
  %narrow84 = select i1 %iszero, i8 0, i8 %narrow
  %ffs = zext i8 %narrow84 to i32
  %10 = zext i32 %ffs to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %ffs, label %if.end.do.body_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %if.end.sw.bb13_crit_edge
    i32 3, label %if.end.sw.bb13_crit_edge104
  ]

if.end.sw.bb13_crit_edge104:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb13

if.end.sw.bb13_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb13

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %tmds = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 25
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end.sw.bb13_crit_edge, %if.end.sw.bb13_crit_edge104
  %output1_script_ptr = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 25, i32 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb
  %clktable.0.in = phi ptr [ %output1_script_ptr, %sw.bb13 ], [ %tmds, %sw.bb ]
  %11 = ptrtoint ptr %clktable.0.in to i32
  call void @__asan_load2_noabort(i32 %11)
  %clktable.0 = load i16, ptr %clktable.0.in, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %clktable.0)
  %tobool.not = icmp eq i16 %clktable.0, 0
  br i1 %tobool.not, label %sw.epilog.do.body_crit_edge, label %if.end23

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %sw.epilog.do.body_crit_edge, %if.end.do.body_crit_edge
  %drm18 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %drm18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %drm18, align 8
  %dev19 = getelementptr inbounds %struct.nouveau_drm, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev19, align 8
  %dev20 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev20, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.8, ptr noundef %name) #12
  br label %cleanup

if.end23:                                         ; preds = %sw.epilog
  %major_version.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 12
  %18 = ptrtoint ptr %major_version.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %major_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %19)
  %cmp.i = icmp ult i8 %19, 5
  %..i = select i1 %cmp.i, i32 3, i32 4
  %data.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 4
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %conv2.i = zext i16 %clktable.0 to i32
  br label %do.body.i

do.body.i:                                        ; preds = %if.end35.i.do.body.i_crit_edge, %if.end23
  %i.0.i = phi i32 [ 0, %if.end23 ], [ %inc.i, %if.end35.i.do.body.i_crit_edge ]
  %mul.i = mul i32 %i.0.i, %..i
  %add.i = add i32 %mul.i, %conv2.i
  %arrayidx.i = getelementptr i8, ptr %21, i32 %add.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %arrayidx.i, align 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #9
  %conv3.i = zext i16 %24 to i32
  %mul4.i = mul nuw nsw i32 %conv3.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %mul4.i, i32 %pxclk)
  %cmp5.not.i = icmp sgt i32 %mul4.i, %pxclk
  br i1 %cmp5.not.i, label %if.end35.i, label %if.then7.i

if.then7.i:                                       ; preds = %do.body.i
  %add17.i = add i32 %add.i, 2
  %arrayidx18.i = getelementptr i8, ptr %21, i32 %add17.i
  br i1 %cmp.i, label %if.then12.i, label %if.then7.i.clkcmptable.exit_crit_edge

if.then7.i.clkcmptable.exit_crit_edge:            ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clkcmptable.exit

if.then12.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx18.i, align 1
  %init_script_tbls_ptr.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 18
  %27 = ptrtoint ptr %init_script_tbls_ptr.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %init_script_tbls_ptr.i, align 2
  %conv20.i = zext i16 %28 to i32
  %conv21.i = zext i8 %26 to i32
  %mul22.i = shl nuw nsw i32 %conv21.i, 1
  %add23.i = add nuw nsw i32 %mul22.i, %conv20.i
  %arrayidx24.i = getelementptr i8, ptr %21, i32 %add23.i
  br label %clkcmptable.exit

if.end35.i:                                       ; preds = %do.body.i
  %inc.i = add i32 %i.0.i, 1
  %tobool.not.i = icmp eq i16 %23, 0
  br i1 %tobool.not.i, label %if.end35.i.do.body27_crit_edge, label %if.end35.i.do.body.i_crit_edge

if.end35.i.do.body.i_crit_edge:                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.end35.i.do.body27_crit_edge:                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27

clkcmptable.exit:                                 ; preds = %if.then12.i, %if.then7.i.clkcmptable.exit_crit_edge
  %arrayidx24.sink.i = phi ptr [ %arrayidx24.i, %if.then12.i ], [ %arrayidx18.i, %if.then7.i.clkcmptable.exit_crit_edge ]
  %29 = ptrtoint ptr %arrayidx24.sink.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %arrayidx24.sink.i, align 1
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool25.not = icmp eq i16 %30, 0
  br i1 %tobool25.not, label %clkcmptable.exit.do.body27_crit_edge, label %if.end40

clkcmptable.exit.do.body27_crit_edge:             ; preds = %clkcmptable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27

do.body27:                                        ; preds = %clkcmptable.exit.do.body27_crit_edge, %if.end35.i.do.body27_crit_edge
  %drm33 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %drm33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %drm33, align 8
  %dev34 = getelementptr inbounds %struct.nouveau_drm, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev34, align 8
  %dev35 = getelementptr inbounds %struct.drm_device, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev35, align 4
  %name36 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.11, ptr noundef %name36) #12
  br label %cleanup

if.end40:                                         ; preds = %clkcmptable.exit
  %map = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 6
  %38 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %map, align 8
  %tobool41.not = icmp eq ptr %39, null
  br i1 %tobool41.not, label %if.else, label %if.then44, !prof !246

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %39, i32 6817060
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  br label %if.end50

if.else:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %call49 = tail call i32 @nvif_object_rd(ptr noundef %device1, i32 noundef 4, i64 noundef 6817060) #9
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then44
  %_data.0 = phi i32 [ %40, %if.then44 ], [ %call49, %if.else ]
  %and = and i32 %_data.0, 327680
  call void @__sanitizer_cov_trace_const_cmp4(i32 164999, i32 %pxclk)
  %cmp52 = icmp sgt i32 %pxclk, 164999
  tail call fastcc void @run_digital_op_script(ptr noundef %dev, i16 noundef zeroext %31, ptr noundef %dcbent, i32 noundef %head, i1 noundef zeroext %cmp52)
  %41 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_private.i, align 4
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %42, i32 0, i32 2, i32 3, i32 0, i32 6
  %43 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %map.i, align 8
  %tobool2.not.i = icmp eq ptr %44, null
  br i1 %tobool2.not.i, label %if.else.i, label %if.then5.i, !prof !246

if.then5.i:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %44, i32 6817060
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !249
  br label %NVReadRAMDAC.exit

if.else.i:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %42, i32 0, i32 2, i32 3
  %call10.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i, i32 noundef 4, i64 noundef 6817060) #9
  br label %NVReadRAMDAC.exit

NVReadRAMDAC.exit:                                ; preds = %if.else.i, %if.then5.i
  %_data.0.i = phi i32 [ %45, %if.then5.i ], [ %call10.i, %if.else.i ]
  %and55 = and i32 %_data.0.i, -327681
  %or56 = or i32 %and55, %and
  %46 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_private.i, align 4
  %map.i87 = getelementptr inbounds %struct.nouveau_drm, ptr %47, i32 0, i32 2, i32 3, i32 0, i32 6
  %48 = ptrtoint ptr %map.i87 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %map.i87, align 8
  %tobool2.not.i88 = icmp eq ptr %49, null
  br i1 %tobool2.not.i88, label %if.else.i92, label %do.body.i90, !prof !246

do.body.i90:                                      ; preds = %NVReadRAMDAC.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  tail call void @arm_heavy_mb() #9
  %50 = ptrtoint ptr %map.i87 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %map.i87, align 8
  %add.ptr.i89 = getelementptr i8, ptr %51, i32 6817060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 %or56) #9, !srcloc !251
  br label %cleanup

if.else.i92:                                      ; preds = %NVReadRAMDAC.exit
  call void @__sanitizer_cov_trace_pc() #11
  %device1.i91 = getelementptr inbounds %struct.nouveau_drm, ptr %47, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i91, i32 noundef 4, i64 noundef 6817060, i32 noundef %or56) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else.i92, %do.body.i90, %do.body27, %do.body, %land.lhs.true8.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %do.body27 ], [ -22, %do.body ], [ 0, %land.lhs.true8.cleanup_crit_edge ], [ 0, %do.body.i90 ], [ 0, %if.else.i92 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @run_digital_op_script(ptr noundef %dev, i16 noundef zeroext %scriptptr, ptr noundef %dcbent, i32 noundef %head, i1 noundef zeroext %dl) unnamed_addr #0 align 64 {
entry:
  %init.i = alloca %struct.nvbios_init, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %drm2 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %drm2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drm2, align 8
  %dev3 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3, align 8
  %dev4 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev4, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  %conv = zext i16 %scriptptr to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.44, ptr noundef %name, i32 noundef %conv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %head)
  %tobool.not = icmp eq i32 %head, 0
  %conv7 = select i1 %tobool.not, i8 0, i8 3
  %8 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_private.i, align 4
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 3
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 3, i32 0, i32 6
  %10 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !246

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %11, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 68) #9, !srcloc !255
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 1, i64 noundef 6296532, i32 noundef 68) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %12 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map.i, align 8
  %tobool12.not.i = icmp eq ptr %13, null
  br i1 %tobool12.not.i, label %if.else25.i, label %if.then19.i, !prof !246

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr24.i = getelementptr i8, ptr %13, i32 6296533
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i, i8 %conv7) #9, !srcloc !255
  br label %NVWriteVgaCrtc.exit

if.else25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv29.i = zext i8 %conv7 to i32
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 1, i64 noundef 6296533, i32 noundef %conv29.i) #9
  br label %NVWriteVgaCrtc.exit

NVWriteVgaCrtc.exit:                              ; preds = %if.else25.i, %if.then19.i
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %init.i) #9
  %14 = getelementptr inbounds i8, ptr %init.i, i32 24
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 33554431, ptr %14, align 4, !annotation !253
  %16 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_private.i, align 4
  %priv.i = getelementptr inbounds %struct.nouveau_drm, ptr %17, i32 0, i32 2, i32 3, i32 0, i32 5
  %18 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv.i, align 4
  %device1.i18 = getelementptr inbounds %struct.anon.195, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %device1.i18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device1.i18, align 8
  %bios.i = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 21
  %22 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bios.i, align 8
  %24 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %init.i, align 4
  %offset.i = getelementptr inbounds %struct.nvbios_init, ptr %init.i, i32 0, i32 1
  %25 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv, ptr %offset.i, align 4
  %outp3.i = getelementptr inbounds %struct.nvbios_init, ptr %init.i, i32 0, i32 2
  %or.i = getelementptr inbounds %struct.nvbios_init, ptr %init.i, i32 0, i32 3
  %26 = ptrtoint ptr %or.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %or.i, align 4
  %link.i = getelementptr inbounds %struct.nvbios_init, ptr %init.i, i32 0, i32 4
  %27 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %link.i, align 4
  %head.i = getelementptr inbounds %struct.nvbios_init, ptr %init.i, i32 0, i32 5
  %nested.i = getelementptr inbounds %struct.nvbios_init, ptr %init.i, i32 0, i32 7
  %28 = call ptr @memset(ptr %nested.i, i32 0, i32 16)
  %29 = ptrtoint ptr %outp3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dcbent, ptr %outp3.i, align 4
  %30 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %head, ptr %head.i, align 4
  %call7.i = call i32 @nvbios_exec(ptr noundef nonnull %init.i) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %init.i) #9
  call void @nv04_dfp_bind_head(ptr noundef %dev, ptr noundef %dcbent, i32 noundef %head, i1 noundef zeroext %dl) #9
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bit_table(ptr nocapture noundef readonly %dev, i8 noundef zeroext %id, ptr nocapture noundef writeonly %bit) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %type = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %offset = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 2
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %offset, align 4
  %conv = zext i16 %7 to i32
  %add = add nuw nsw i32 %conv, 10
  %arrayidx = getelementptr i8, ptr %5, i32 %add
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not64 = icmp eq i8 %9, 0
  br i1 %tobool.not64, label %if.end.cleanup_crit_edge, label %while.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end
  %add5 = add nuw nsw i32 %conv, 12
  %arrayidx6 = getelementptr i8, ptr %5, i32 %add5
  %add37 = add nuw nsw i32 %conv, 9
  %arrayidx38 = getelementptr i8, ptr %5, i32 %add37
  br label %while.body

while.body:                                       ; preds = %if.end33.while.body_crit_edge, %while.body.lr.ph
  %dec66.in = phi i8 [ %9, %while.body.lr.ph ], [ %dec66, %if.end33.while.body_crit_edge ]
  %entry1.065 = phi ptr [ %arrayidx6, %while.body.lr.ph ], [ %add.ptr, %if.end33.while.body_crit_edge ]
  %10 = ptrtoint ptr %entry1.065 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %entry1.065, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %id)
  %cmp10 = icmp eq i8 %11, %id
  br i1 %cmp10, label %if.then12, label %if.end33

if.then12:                                        ; preds = %while.body
  %12 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %id, ptr %bit, align 4
  %arrayidx15 = getelementptr i8, ptr %entry1.065, i32 1
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx15, align 1
  %version = getelementptr inbounds %struct.bit_entry, ptr %bit, i32 0, i32 1
  %15 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %version, align 1
  %arrayidx16 = getelementptr i8, ptr %entry1.065, i32 2
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %arrayidx16, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #9
  %length = getelementptr inbounds %struct.bit_entry, ptr %bit, i32 0, i32 2
  %19 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %length, align 2
  %arrayidx18 = getelementptr i8, ptr %entry1.065, i32 4
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %arrayidx18, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #9
  %offset20 = getelementptr inbounds %struct.bit_entry, ptr %bit, i32 0, i32 3
  %23 = ptrtoint ptr %offset20 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %offset20, align 4
  %24 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %arrayidx18, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool26.not = icmp eq i16 %25, 0
  br i1 %tobool26.not, label %if.then12.cond.end_crit_edge, label %cond.true

if.then12.cond.end_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #9
  %27 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_private.i, align 4
  %data28 = getelementptr inbounds %struct.nouveau_drm, ptr %28, i32 0, i32 18, i32 4
  %29 = ptrtoint ptr %data28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data28, align 4
  %idxprom = zext i16 %26 to i32
  %arrayidx31 = getelementptr i8, ptr %30, i32 %idxprom
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then12.cond.end_crit_edge
  %cond = phi ptr [ %arrayidx31, %cond.true ], [ null, %if.then12.cond.end_crit_edge ]
  %data32 = getelementptr inbounds %struct.bit_entry, ptr %bit, i32 0, i32 4
  %31 = ptrtoint ptr %data32 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %cond, ptr %data32, align 4
  br label %cleanup

if.end33:                                         ; preds = %while.body
  %dec66 = add i8 %dec66.in, -1
  %32 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %33 to i32
  %add.ptr = getelementptr i8, ptr %entry1.065, i32 %conv39
  %tobool.not = icmp eq i8 %dec66, 0
  br i1 %tobool.not, label %if.end33.cleanup_crit_edge, label %if.end33.while.body_crit_edge

if.end33.while.body_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end33.cleanup_crit_edge, %cond.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end ], [ -19, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ -2, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @olddcb_table(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %family = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 1, i32 4
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp ugt i8 %3, 1
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 54
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.then.do.body_crit_edge, label %if.end

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end:                                           ; preds = %if.then
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #9
  %idxprom = zext i16 %8 to i32
  %arrayidx12 = getelementptr i8, ptr %5, i32 %idxprom
  %tobool13.not = icmp eq ptr %arrayidx12, null
  br i1 %tobool13.not, label %if.end.do.body_crit_edge, label %if.end22

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  %drm17 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %drm17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drm17, align 8
  %dev18 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev18, align 8
  %dev19 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev19, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.13, ptr noundef %name) #12
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %16)
  %cmp25 = icmp ugt i8 %16, 65
  br i1 %cmp25, label %do.body28, label %if.else

do.body28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %conv24 = zext i8 %16 to i32
  %drm34 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %drm34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %drm34, align 8
  %dev35 = getelementptr inbounds %struct.nouveau_drm, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev35, align 8
  %dev36 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev36, align 4
  %name37 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.17, ptr noundef %name37, i32 noundef %conv24) #12
  br label %cleanup

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %16)
  %cmp45 = icmp ugt i8 %16, 47
  br i1 %cmp45, label %if.then47, label %if.else54

if.then47:                                        ; preds = %if.else
  %arrayidx48 = getelementptr i8, ptr %arrayidx12, i32 6
  %23 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %arrayidx48, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -876749746, i32 %24)
  %cmp50 = icmp eq i32 %24, -876749746
  br i1 %cmp50, label %if.then47.cleanup_crit_edge, label %if.then47.do.body95_crit_edge

if.then47.do.body95_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body95

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else54:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %16)
  %cmp57 = icmp ugt i8 %16, 31
  br i1 %cmp57, label %if.then59, label %if.else66

if.then59:                                        ; preds = %if.else54
  %arrayidx60 = getelementptr i8, ptr %arrayidx12, i32 4
  %25 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %arrayidx60, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -876749746, i32 %26)
  %cmp62 = icmp eq i32 %26, -876749746
  br i1 %cmp62, label %if.then59.cleanup_crit_edge, label %if.then59.do.body95_crit_edge

if.then59.do.body95_crit_edge:                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body95

if.then59.cleanup_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else66:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %16)
  %cmp69 = icmp ugt i8 %16, 20
  br i1 %cmp69, label %if.then71, label %do.body78

if.then71:                                        ; preds = %if.else66
  %arrayidx72 = getelementptr i8, ptr %arrayidx12, i32 -7
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(7) %arrayidx72, ptr noundef nonnull dereferenceable(7) @.str.19, i32 7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool74.not = icmp eq i32 %bcmp, 0
  br i1 %tobool74.not, label %if.then71.cleanup_crit_edge, label %if.then71.do.body95_crit_edge

if.then71.do.body95_crit_edge:                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body95

if.then71.cleanup_crit_edge:                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body78:                                        ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #11
  %drm84 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %drm84 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %drm84, align 8
  %dev85 = getelementptr inbounds %struct.nouveau_drm, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %dev85 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev85, align 8
  %dev86 = getelementptr inbounds %struct.drm_device, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev86, align 4
  %name87 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.21, ptr noundef %name87) #12
  br label %cleanup

do.body95:                                        ; preds = %if.then71.do.body95_crit_edge, %if.then59.do.body95_crit_edge, %if.then47.do.body95_crit_edge
  %drm101 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %drm101 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %drm101, align 8
  %dev102 = getelementptr inbounds %struct.nouveau_drm, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %dev102 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev102, align 8
  %dev103 = getelementptr inbounds %struct.drm_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dev103 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev103, align 4
  %name104 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.24, ptr noundef %name104) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body95, %do.body78, %if.then71.cleanup_crit_edge, %if.then59.cleanup_crit_edge, %if.then47.cleanup_crit_edge, %do.body28, %do.body
  %retval.0 = phi ptr [ null, %do.body28 ], [ null, %do.body95 ], [ null, %do.body78 ], [ null, %do.body ], [ %arrayidx12, %if.then47.cleanup_crit_edge ], [ %arrayidx12, %if.then59.cleanup_crit_edge ], [ %arrayidx12, %if.then71.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @olddcb_outp(ptr nocapture noundef readonly %dev, i8 noundef zeroext %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @olddcb_table(ptr noundef %dev)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup84_crit_edge, label %land.lhs.true

entry.cleanup84_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup84

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %call, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %1)
  %cmp = icmp ugt i8 %1, 47
  br i1 %cmp, label %if.then, label %land.lhs.true15.critedge

if.then:                                          ; preds = %land.lhs.true
  %arrayidx3 = getelementptr i8, ptr %call, i32 2
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %idx)
  %cmp5 = icmp ugt i8 %3, %idx
  br i1 %cmp5, label %if.then7, label %if.then.cleanup84_crit_edge

if.then.cleanup84_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup84

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %conv2 = zext i8 %idx to i32
  %arrayidx8 = getelementptr i8, ptr %call, i32 1
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %5 to i32
  %add.ptr = getelementptr i8, ptr %call, i32 %conv9
  %arrayidx11 = getelementptr i8, ptr %call, i32 3
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %7 to i32
  %mul = mul nuw nsw i32 %conv12, %conv2
  %add.ptr13 = getelementptr i8, ptr %add.ptr, i32 %mul
  br label %cleanup84

land.lhs.true15.critedge:                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %1)
  %cmp18 = icmp ugt i8 %1, 31
  br i1 %cmp18, label %if.then20, label %land.lhs.true42.critedge

if.then20:                                        ; preds = %land.lhs.true15.critedge
  %arrayidx22 = getelementptr i8, ptr %call, i32 2
  %8 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %arrayidx22, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool25.not = icmp eq i16 %9, 0
  br i1 %tobool25.not, label %if.then20.cond.end_crit_edge, label %cond.true

if.then20.cond.end_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #9
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %11 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_private.i, align 4
  %data = getelementptr inbounds %struct.nouveau_drm, ptr %12, i32 0, i32 18, i32 4
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %idxprom = zext i16 %10 to i32
  %arrayidx28 = getelementptr i8, ptr %14, i32 %idxprom
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then20.cond.end_crit_edge
  %cond = phi ptr [ %arrayidx28, %cond.true ], [ null, %if.then20.cond.end_crit_edge ]
  %add.ptr29 = getelementptr i8, ptr %call, i32 8
  %conv30 = zext i8 %idx to i32
  %mul31 = shl nuw nsw i32 %conv30, 3
  %add.ptr32 = getelementptr i8, ptr %add.ptr29, i32 %mul31
  %tobool33.not = icmp ne ptr %cond, null
  %cmp35 = icmp ult ptr %add.ptr32, %cond
  %or.cond = select i1 %tobool33.not, i1 %cmp35, i1 false
  %spec.select = select i1 %or.cond, ptr %add.ptr32, ptr null
  br label %cleanup84

land.lhs.true42.critedge:                         ; preds = %land.lhs.true15.critedge
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %1)
  %cmp45 = icmp ugt i8 %1, 20
  br i1 %cmp45, label %if.then47, label %land.lhs.true42.critedge.cleanup84_crit_edge

land.lhs.true42.critedge.cleanup84_crit_edge:     ; preds = %land.lhs.true42.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup84

if.then47:                                        ; preds = %land.lhs.true42.critedge
  %arrayidx52 = getelementptr i8, ptr %call, i32 2
  %15 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %arrayidx52, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool55.not = icmp eq i16 %16, 0
  br i1 %tobool55.not, label %if.then47.cond.end64_crit_edge, label %cond.true56

if.then47.cond.end64_crit_edge:                   ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end64

cond.true56:                                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #9
  %dev_private.i116 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %18 = ptrtoint ptr %dev_private.i116 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_private.i116, align 4
  %data58 = getelementptr inbounds %struct.nouveau_drm, ptr %19, i32 0, i32 18, i32 4
  %20 = ptrtoint ptr %data58 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data58, align 4
  %idxprom61 = zext i16 %17 to i32
  %arrayidx62 = getelementptr i8, ptr %21, i32 %idxprom61
  br label %cond.end64

cond.end64:                                       ; preds = %cond.true56, %if.then47.cond.end64_crit_edge
  %cond65 = phi ptr [ %arrayidx62, %cond.true56 ], [ null, %if.then47.cond.end64_crit_edge ]
  %add.ptr67 = getelementptr i8, ptr %call, i32 4
  %conv68 = zext i8 %idx to i32
  %mul69 = mul nuw nsw i32 %conv68, 10
  %add.ptr70 = getelementptr i8, ptr %add.ptr67, i32 %mul69
  %tobool71.not = icmp ne ptr %cond65, null
  %cmp73 = icmp ult ptr %add.ptr70, %cond65
  %or.cond113 = select i1 %tobool71.not, i1 %cmp73, i1 false
  %spec.select115 = select i1 %or.cond113, ptr %add.ptr70, ptr null
  br label %cleanup84

cleanup84:                                        ; preds = %cond.end64, %land.lhs.true42.critedge.cleanup84_crit_edge, %cond.end, %if.then7, %if.then.cleanup84_crit_edge, %entry.cleanup84_crit_edge
  %retval.2 = phi ptr [ %add.ptr13, %if.then7 ], [ null, %entry.cleanup84_crit_edge ], [ null, %land.lhs.true42.critedge.cleanup84_crit_edge ], [ null, %if.then.cleanup84_crit_edge ], [ %spec.select, %cond.end ], [ %spec.select115, %cond.end64 ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @olddcb_outp_foreach(ptr noundef %dev, ptr noundef %data, ptr nocapture noundef readonly %exec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i54 = tail call ptr @olddcb_table(ptr noundef %dev) #9
  %tobool.not.i55 = icmp eq ptr %call.i54, null
  br i1 %tobool.not.i55, label %entry.cleanup_crit_edge, label %land.lhs.true.i.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i.lr.ph:                            ; preds = %entry
  %dev_private.i116.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %while.cond.backedge.land.lhs.true.i_crit_edge, %land.lhs.true.i.lr.ph
  %call.i58 = phi ptr [ %call.i54, %land.lhs.true.i.lr.ph ], [ %call.i, %while.cond.backedge.land.lhs.true.i_crit_edge ]
  %conv57 = phi i8 [ 0, %land.lhs.true.i.lr.ph ], [ %conv, %while.cond.backedge.land.lhs.true.i_crit_edge ]
  %inc56 = phi i32 [ 0, %land.lhs.true.i.lr.ph ], [ %inc, %while.cond.backedge.land.lhs.true.i_crit_edge ]
  %0 = ptrtoint ptr %call.i58 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %call.i58, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %1)
  %cmp.i = icmp ugt i8 %1, 47
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true15.critedge.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %arrayidx3.i = getelementptr i8, ptr %call.i58, i32 2
  %2 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %conv57)
  %cmp5.i = icmp ugt i8 %3, %conv57
  br i1 %cmp5.i, label %if.then7.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv2.i = and i32 %inc56, 255
  %arrayidx8.i = getelementptr i8, ptr %call.i58, i32 1
  %4 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %call.i58, i32 %conv9.i
  %arrayidx11.i = getelementptr i8, ptr %call.i58, i32 3
  %6 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %7 to i32
  %mul.i = mul nuw nsw i32 %conv2.i, %conv12.i
  %add.ptr13.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  br label %olddcb_outp.exit

land.lhs.true15.critedge.i:                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %1)
  %cmp18.i = icmp ugt i8 %1, 31
  br i1 %cmp18.i, label %if.then20.i, label %land.lhs.true42.critedge.i

if.then20.i:                                      ; preds = %land.lhs.true15.critedge.i
  %arrayidx22.i = getelementptr i8, ptr %call.i58, i32 2
  %8 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %arrayidx22.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool25.not.i = icmp eq i16 %9, 0
  br i1 %tobool25.not.i, label %if.then20.i.cleanup_crit_edge, label %cond.end.i

if.then20.i.cleanup_crit_edge:                    ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.end.i:                                       ; preds = %if.then20.i
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #9
  %11 = ptrtoint ptr %dev_private.i116.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_private.i116.i, align 4
  %data.i = getelementptr inbounds %struct.nouveau_drm, ptr %12, i32 0, i32 18, i32 4
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %idxprom.i = zext i16 %10 to i32
  %arrayidx28.i = getelementptr i8, ptr %14, i32 %idxprom.i
  %add.ptr29.i = getelementptr i8, ptr %call.i58, i32 8
  %conv30.i = shl i32 %inc56, 3
  %mul31.i = and i32 %conv30.i, 2040
  %add.ptr32.i = getelementptr i8, ptr %add.ptr29.i, i32 %mul31.i
  %tobool33.not.i = icmp ne ptr %arrayidx28.i, null
  %cmp35.i = icmp ult ptr %add.ptr32.i, %arrayidx28.i
  %or.cond.i = select i1 %tobool33.not.i, i1 %cmp35.i, i1 false
  br i1 %or.cond.i, label %cond.end.i.olddcb_outp.exit_crit_edge, label %cond.end.i.cleanup_crit_edge

cond.end.i.cleanup_crit_edge:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.end.i.olddcb_outp.exit_crit_edge:            ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %olddcb_outp.exit

land.lhs.true42.critedge.i:                       ; preds = %land.lhs.true15.critedge.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %1)
  %cmp45.i = icmp ugt i8 %1, 20
  br i1 %cmp45.i, label %if.then47.i, label %land.lhs.true42.critedge.i.cleanup_crit_edge

land.lhs.true42.critedge.i.cleanup_crit_edge:     ; preds = %land.lhs.true42.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then47.i:                                      ; preds = %land.lhs.true42.critedge.i
  %arrayidx52.i = getelementptr i8, ptr %call.i58, i32 2
  %15 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %arrayidx52.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool55.not.i = icmp eq i16 %16, 0
  br i1 %tobool55.not.i, label %if.then47.i.cleanup_crit_edge, label %cond.end64.i

if.then47.i.cleanup_crit_edge:                    ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.end64.i:                                     ; preds = %if.then47.i
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #9
  %18 = ptrtoint ptr %dev_private.i116.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_private.i116.i, align 4
  %data58.i = getelementptr inbounds %struct.nouveau_drm, ptr %19, i32 0, i32 18, i32 4
  %20 = ptrtoint ptr %data58.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data58.i, align 4
  %idxprom61.i = zext i16 %17 to i32
  %arrayidx62.i = getelementptr i8, ptr %21, i32 %idxprom61.i
  %add.ptr67.i = getelementptr i8, ptr %call.i58, i32 4
  %conv68.i = and i32 %inc56, 255
  %mul69.i = mul nuw nsw i32 %conv68.i, 10
  %add.ptr70.i = getelementptr i8, ptr %add.ptr67.i, i32 %mul69.i
  %tobool71.not.i = icmp ne ptr %arrayidx62.i, null
  %cmp73.i = icmp ult ptr %add.ptr70.i, %arrayidx62.i
  %or.cond113.i = select i1 %tobool71.not.i, i1 %cmp73.i, i1 false
  br i1 %or.cond113.i, label %cond.end64.i.olddcb_outp.exit_crit_edge, label %cond.end64.i.cleanup_crit_edge

cond.end64.i.cleanup_crit_edge:                   ; preds = %cond.end64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.end64.i.olddcb_outp.exit_crit_edge:          ; preds = %cond.end64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %olddcb_outp.exit

olddcb_outp.exit:                                 ; preds = %cond.end64.i.olddcb_outp.exit_crit_edge, %cond.end.i.olddcb_outp.exit_crit_edge, %if.then7.i
  %retval.2.i = phi ptr [ %add.ptr13.i, %if.then7.i ], [ %add.ptr32.i, %cond.end.i.olddcb_outp.exit_crit_edge ], [ %add.ptr70.i, %cond.end64.i.olddcb_outp.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.2.i, null
  br i1 %tobool.not, label %olddcb_outp.exit.cleanup_crit_edge, label %while.body

olddcb_outp.exit.cleanup_crit_edge:               ; preds = %olddcb_outp.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %olddcb_outp.exit
  %22 = ptrtoint ptr %retval.2.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %retval.2.i, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #9
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %24, label %if.end8 [
    i32 0, label %while.body.cleanup_crit_edge
    i32 -1, label %while.body.cleanup_crit_edge71
  ]

while.body.cleanup_crit_edge71:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %while.body
  %26 = ptrtoint ptr %retval.2.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %retval.2.i, align 1
  %trunc = trunc i8 %27 to i4
  %28 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.142)
  switch i4 %trunc, label %if.end21 [
    i4 -1, label %if.end8.while.cond.backedge_crit_edge
    i4 -2, label %if.end8.cleanup_crit_edge
  ]

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.while.cond.backedge_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end21:                                         ; preds = %if.end8
  %call22 = tail call i32 %exec(ptr noundef %dev, ptr noundef %data, i32 noundef %inc56, ptr noundef nonnull %retval.2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end21.while.cond.backedge_crit_edge, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21.while.cond.backedge_crit_edge:           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end21.while.cond.backedge_crit_edge, %if.end8.while.cond.backedge_crit_edge
  %inc = add i32 %inc56, 1
  %conv = trunc i32 %inc to i8
  %call.i = tail call ptr @olddcb_table(ptr noundef %dev) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.land.lhs.true.i_crit_edge

while.cond.backedge.land.lhs.true.i_crit_edge:    ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %while.cond.backedge.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.body.cleanup_crit_edge71, %olddcb_outp.exit.cleanup_crit_edge, %cond.end64.i.cleanup_crit_edge, %if.then47.i.cleanup_crit_edge, %land.lhs.true42.critedge.i.cleanup_crit_edge, %cond.end.i.cleanup_crit_edge, %if.then20.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge71 ], [ 0, %if.then47.i.cleanup_crit_edge ], [ 0, %if.then20.i.cleanup_crit_edge ], [ 0, %cond.end64.i.cleanup_crit_edge ], [ 0, %cond.end.i.cleanup_crit_edge ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %land.lhs.true42.critedge.i.cleanup_crit_edge ], [ 0, %while.cond.backedge.cleanup_crit_edge ], [ 0, %olddcb_outp.exit.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @olddcb_conntab(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @olddcb_table(ptr noundef %dev)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup28_crit_edge, label %land.lhs.true

entry.cleanup28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup28

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %call, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %1)
  %cmp = icmp ugt i8 %1, 47
  br i1 %cmp, label %land.lhs.true2, label %land.lhs.true.cleanup28_crit_edge

land.lhs.true.cleanup28_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup28

land.lhs.true2:                                   ; preds = %land.lhs.true
  %arrayidx3 = getelementptr i8, ptr %call, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %3)
  %cmp5 = icmp ugt i8 %3, 21
  br i1 %cmp5, label %if.then, label %land.lhs.true2.cleanup28_crit_edge

land.lhs.true2.cleanup28_crit_edge:               ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup28

if.then:                                          ; preds = %land.lhs.true2
  %arrayidx8 = getelementptr i8, ptr %call, i32 20
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool11.not = icmp eq i16 %5, 0
  br i1 %tobool11.not, label %if.then.if.end27.critedge_crit_edge, label %cond.end

if.then.if.end27.critedge_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.critedge

cond.end:                                         ; preds = %if.then
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #9
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %7 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_private.i, align 4
  %data = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 18, i32 4
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %idxprom = zext i16 %6 to i32
  %arrayidx14 = getelementptr i8, ptr %10, i32 %idxprom
  %tobool15.not = icmp eq ptr %arrayidx14, null
  br i1 %tobool15.not, label %cond.end.if.end27.critedge_crit_edge, label %land.lhs.true16

cond.end.if.end27.critedge_crit_edge:             ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.critedge

land.lhs.true16:                                  ; preds = %cond.end
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx14, align 1
  %13 = add i8 %12, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %13)
  %14 = icmp ult i8 %13, 17
  br i1 %14, label %land.lhs.true16.cleanup28_crit_edge, label %land.lhs.true16.if.end27.critedge_crit_edge

land.lhs.true16.if.end27.critedge_crit_edge:      ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.critedge

land.lhs.true16.cleanup28_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup28

if.end27.critedge:                                ; preds = %land.lhs.true16.if.end27.critedge_crit_edge, %cond.end.if.end27.critedge_crit_edge, %if.then.if.end27.critedge_crit_edge
  br label %cleanup28

cleanup28:                                        ; preds = %if.end27.critedge, %land.lhs.true16.cleanup28_crit_edge, %land.lhs.true2.cleanup28_crit_edge, %land.lhs.true.cleanup28_crit_edge, %entry.cleanup28_crit_edge
  %retval.1 = phi ptr [ %arrayidx14, %land.lhs.true16.cleanup28_crit_edge ], [ null, %if.end27.critedge ], [ null, %land.lhs.true2.cleanup28_crit_edge ], [ null, %land.lhs.true.cleanup28_crit_edge ], [ null, %entry.cleanup28_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @olddcb_conn(ptr nocapture noundef readonly %dev, i8 noundef zeroext %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @olddcb_table(ptr noundef %dev) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %land.lhs.true.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %call.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %1)
  %cmp.i = icmp ugt i8 %1, 47
  br i1 %cmp.i, label %land.lhs.true2.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %arrayidx3.i = getelementptr i8, ptr %call.i, i32 1
  %2 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %3)
  %cmp5.i = icmp ugt i8 %3, 21
  br i1 %cmp5.i, label %if.then.i, label %land.lhs.true2.i.cleanup_crit_edge

land.lhs.true2.i.cleanup_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true2.i
  %arrayidx8.i = getelementptr i8, ptr %call.i, i32 20
  %4 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %arrayidx8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool11.not.i = icmp eq i16 %5, 0
  br i1 %tobool11.not.i, label %if.then.i.cleanup_crit_edge, label %cond.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.end.i:                                       ; preds = %if.then.i
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #9
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %7 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_private.i.i, align 4
  %data.i = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 18, i32 4
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %idxprom.i = zext i16 %6 to i32
  %arrayidx14.i = getelementptr i8, ptr %10, i32 %idxprom.i
  %tobool15.not.i = icmp eq ptr %arrayidx14.i, null
  br i1 %tobool15.not.i, label %cond.end.i.cleanup_crit_edge, label %land.lhs.true16.i

cond.end.i.cleanup_crit_edge:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true16.i:                                ; preds = %cond.end.i
  %11 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx14.i, align 1
  %13 = add i8 %12, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %13)
  %14 = icmp ult i8 %13, 17
  br i1 %14, label %land.lhs.true, label %land.lhs.true16.i.cleanup_crit_edge

land.lhs.true16.i.cleanup_crit_edge:              ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %land.lhs.true16.i
  %arrayidx = getelementptr i8, ptr %arrayidx14.i, i32 2
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %idx)
  %cmp = icmp ugt i8 %16, %idx
  br i1 %cmp, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %idx to i32
  %arrayidx3 = getelementptr i8, ptr %arrayidx14.i, i32 1
  %17 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %18 to i32
  %add.ptr = getelementptr i8, ptr %arrayidx14.i, i32 %conv4
  %arrayidx6 = getelementptr i8, ptr %arrayidx14.i, i32 3
  %19 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %20 to i32
  %mul = mul nuw nsw i32 %conv7, %conv
  %add.ptr8 = getelementptr i8, ptr %add.ptr, i32 %mul
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %land.lhs.true16.i.cleanup_crit_edge, %cond.end.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %land.lhs.true2.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr8, %if.then ], [ null, %land.lhs.true.cleanup_crit_edge ], [ null, %land.lhs.true2.i.cleanup_crit_edge ], [ null, %land.lhs.true.i.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %land.lhs.true16.i.cleanup_crit_edge ], [ null, %cond.end.i.cleanup_crit_edge ], [ null, %if.then.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nouveau_bios_embedded_edid(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %edid = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 14
  %2 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edid, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %while.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %data = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  br label %while.body

while.body:                                       ; preds = %if.end15.while.body_crit_edge, %while.cond.preheader
  %searchlen.061 = phi i32 [ 65536, %while.cond.preheader ], [ %sub, %if.end15.while.body_crit_edge ]
  %offset.060 = phi i16 [ 0, %while.cond.preheader ], [ %inc, %if.end15.while.body_crit_edge ]
  %idxprom = zext i16 %offset.060 to i32
  %arrayidx = getelementptr i8, ptr %5, i32 %idxprom
  %sub.i = add i32 %searchlen.061, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.not30.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.not30.i, label %while.body.cleanup_crit_edge, label %while.body.for.cond1.preheader.i_crit_edge

while.body.for.cond1.preheader.i_crit_edge:       ; preds = %while.body
  br label %for.cond1.preheader.i

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond1.preheader.i:                            ; preds = %for.inc13.i.for.cond1.preheader.i_crit_edge, %while.body.for.cond1.preheader.i_crit_edge
  %i.031.i = phi i32 [ %inc14.i, %for.inc13.i.for.cond1.preheader.i_crit_edge ], [ 0, %while.body.for.cond1.preheader.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %arrayidx, i32 %i.031.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp6.not.i = icmp eq i8 %7, 0
  br i1 %cmp6.not.i, label %for.inc.i, label %for.cond1.preheader.i.for.inc13.i_crit_edge

for.cond1.preheader.i.for.inc13.i_crit_edge:      ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc13.i

for.inc.i:                                        ; preds = %for.cond1.preheader.i
  %add.i.1 = add i32 %i.031.i, 1
  %arrayidx.i.1 = getelementptr i8, ptr %arrayidx, i32 %add.i.1
  %8 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp6.not.i.1 = icmp eq i8 %9, -1
  br i1 %cmp6.not.i.1, label %for.inc.i.1, label %for.inc.i.for.inc13.i_crit_edge

for.inc.i.for.inc13.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc13.i

for.inc.i.1:                                      ; preds = %for.inc.i
  %add.i.2 = add i32 %i.031.i, 2
  %arrayidx.i.2 = getelementptr i8, ptr %arrayidx, i32 %add.i.2
  %10 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp6.not.i.2 = icmp eq i8 %11, -1
  br i1 %cmp6.not.i.2, label %for.inc.i.2, label %for.inc.i.1.for.inc13.i_crit_edge

for.inc.i.1.for.inc13.i_crit_edge:                ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc13.i

for.inc.i.2:                                      ; preds = %for.inc.i.1
  %add.i.3 = add i32 %i.031.i, 3
  %arrayidx.i.3 = getelementptr i8, ptr %arrayidx, i32 %add.i.3
  %12 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp6.not.i.3 = icmp eq i8 %13, -1
  br i1 %cmp6.not.i.3, label %for.inc.i.3, label %for.inc.i.2.for.inc13.i_crit_edge

for.inc.i.2.for.inc13.i_crit_edge:                ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc13.i

for.inc.i.3:                                      ; preds = %for.inc.i.2
  %add.i.4 = add i32 %i.031.i, 4
  %arrayidx.i.4 = getelementptr i8, ptr %arrayidx, i32 %add.i.4
  %14 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp6.not.i.4 = icmp eq i8 %15, -1
  br i1 %cmp6.not.i.4, label %for.inc.i.4, label %for.inc.i.3.for.inc13.i_crit_edge

for.inc.i.3.for.inc13.i_crit_edge:                ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc13.i

for.inc.i.4:                                      ; preds = %for.inc.i.3
  %add.i.5 = add i32 %i.031.i, 5
  %arrayidx.i.5 = getelementptr i8, ptr %arrayidx, i32 %add.i.5
  %16 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp6.not.i.5 = icmp eq i8 %17, -1
  br i1 %cmp6.not.i.5, label %for.inc.i.5, label %for.inc.i.4.for.inc13.i_crit_edge

for.inc.i.4.for.inc13.i_crit_edge:                ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc13.i

for.inc.i.5:                                      ; preds = %for.inc.i.4
  %add.i.6 = add i32 %i.031.i, 6
  %arrayidx.i.6 = getelementptr i8, ptr %arrayidx, i32 %add.i.6
  %18 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp6.not.i.6 = icmp eq i8 %19, -1
  br i1 %cmp6.not.i.6, label %for.inc.i.6, label %for.inc.i.5.for.inc13.i_crit_edge

for.inc.i.5.for.inc13.i_crit_edge:                ; preds = %for.inc.i.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc13.i

for.inc.i.6:                                      ; preds = %for.inc.i.5
  %add.i.7 = add i32 %i.031.i, 7
  %arrayidx.i.7 = getelementptr i8, ptr %arrayidx, i32 %add.i.7
  %20 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp6.not.i.7 = icmp eq i8 %21, 0
  br i1 %cmp6.not.i.7, label %findstr.exit, label %for.inc.i.6.for.inc13.i_crit_edge

for.inc.i.6.for.inc13.i_crit_edge:                ; preds = %for.inc.i.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc13.i

for.inc13.i:                                      ; preds = %for.inc.i.6.for.inc13.i_crit_edge, %for.inc.i.5.for.inc13.i_crit_edge, %for.inc.i.4.for.inc13.i_crit_edge, %for.inc.i.3.for.inc13.i_crit_edge, %for.inc.i.2.for.inc13.i_crit_edge, %for.inc.i.1.for.inc13.i_crit_edge, %for.inc.i.for.inc13.i_crit_edge, %for.cond1.preheader.i.for.inc13.i_crit_edge
  %inc14.i = add i32 %i.031.i, 1
  %cmp.not.i = icmp sgt i32 %inc14.i, %sub.i
  br i1 %cmp.not.i, label %for.inc13.i.cleanup_crit_edge, label %for.inc13.i.for.cond1.preheader.i_crit_edge

for.inc13.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond1.preheader.i

for.inc13.i.cleanup_crit_edge:                    ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

findstr.exit:                                     ; preds = %for.inc.i.6
  %conv11.i = trunc i32 %i.031.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv11.i)
  %tobool5.not = icmp eq i16 %conv11.i, 0
  br i1 %tobool5.not, label %findstr.exit.cleanup_crit_edge, label %if.end7

findstr.exit.cleanup_crit_edge:                   ; preds = %findstr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %findstr.exit
  %add = add i16 %offset.060, %conv11.i
  %idxprom11 = zext i16 %add to i32
  %arrayidx12 = getelementptr i8, ptr %5, i32 %idxprom11
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end7
  %sum.09.i = phi i8 [ %add.i48, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end7 ]
  %i.08.i = phi i32 [ %inc.i49, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end7 ]
  %arrayidx.i47 = getelementptr i8, ptr %arrayidx12, i32 %i.08.i
  %22 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i47, align 1
  %add.i48 = add i8 %23, %sum.09.i
  %inc.i49 = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i50 = icmp eq i32 %inc.i49, 128
  br i1 %exitcond.not.i50, label %nv_cksum.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

nv_cksum.exit:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add.i48)
  %phi.cmp.i.not = icmp eq i8 %add.i48, 0
  br i1 %phi.cmp.i.not, label %nv_cksum.exit.do.body_crit_edge, label %if.end15

nv_cksum.exit.do.body_crit_edge:                  ; preds = %nv_cksum.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end15:                                         ; preds = %nv_cksum.exit
  %sub = sub i32 %searchlen.061, %idxprom11
  %inc = add i16 %add, 1
  %tobool3.not = icmp eq i32 %sub, 0
  br i1 %tobool3.not, label %if.end15.do.body_crit_edge, label %if.end15.while.body_crit_edge

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end15.do.body_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = zext i16 %inc to i32
  br label %do.body

do.body:                                          ; preds = %if.end15.do.body_crit_edge, %nv_cksum.exit.do.body_crit_edge
  %idxprom24.pre-phi = phi i32 [ %.pre, %if.end15.do.body_crit_edge ], [ %idxprom11, %nv_cksum.exit.do.body_crit_edge ]
  %drm18 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %drm18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %drm18, align 8
  %dev19 = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev19, align 8
  %dev20 = getelementptr inbounds %struct.drm_device, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev20, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull @.str.26, ptr noundef %name) #12
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %arrayidx25 = getelementptr i8, ptr %31, i32 %idxprom24.pre-phi
  %32 = ptrtoint ptr %edid to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx25, ptr %edid, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %findstr.exit.cleanup_crit_edge, %for.inc13.i.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx25, %do.body ], [ %3, %entry.cleanup_crit_edge ], [ null, %for.inc13.i.cleanup_crit_edge ], [ null, %findstr.exit.cleanup_crit_edge ], [ null, %while.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_run_vbios_init(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %state = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 23
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state, align 4
  %major_version = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 12
  %3 = ptrtoint ptr %major_version to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %major_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %4)
  %cmp = icmp ult i8 %4, 5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 4
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %length.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 3
  %7 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length.i, align 4
  %sub.i.i = add i32 %8, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.not30.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.not30.i.i, label %if.then.if.end_crit_edge, label %if.then.for.cond1.preheader.i.i_crit_edge

if.then.for.cond1.preheader.i.i_crit_edge:        ; preds = %if.then
  br label %for.cond1.preheader.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.cond1.preheader.i.i:                          ; preds = %for.inc13.i.i.for.cond1.preheader.i.i_crit_edge, %if.then.for.cond1.preheader.i.i_crit_edge
  %i.031.i.i = phi i32 [ %add.i.1.i, %for.inc13.i.i.for.cond1.preheader.i.i_crit_edge ], [ 0, %if.then.for.cond1.preheader.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %6, i32 %i.031.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 72, i8 %10)
  %cmp6.not.i.i = icmp eq i8 %10, 72
  %add.i.1.i = add i32 %i.031.i.i, 1
  br i1 %cmp6.not.i.i, label %for.inc.i.i, label %for.cond1.preheader.i.i.for.inc13.i.i_crit_edge

for.cond1.preheader.i.i.for.inc13.i.i_crit_edge:  ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc13.i.i

for.inc.i.i:                                      ; preds = %for.cond1.preheader.i.i
  %arrayidx.i.1.i = getelementptr i8, ptr %6, i32 %add.i.1.i
  %11 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 87, i8 %12)
  %cmp6.not.i.1.i = icmp eq i8 %12, 87
  br i1 %cmp6.not.i.1.i, label %for.inc.i.1.i, label %for.inc.i.i.for.inc13.i.i_crit_edge

for.inc.i.i.for.inc13.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc13.i.i

for.inc.i.1.i:                                    ; preds = %for.inc.i.i
  %add.i.2.i = add i32 %i.031.i.i, 2
  %arrayidx.i.2.i = getelementptr i8, ptr %6, i32 %add.i.2.i
  %13 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 83, i8 %14)
  %cmp6.not.i.2.i = icmp eq i8 %14, 83
  br i1 %cmp6.not.i.2.i, label %for.inc.i.2.i, label %for.inc.i.1.i.for.inc13.i.i_crit_edge

for.inc.i.1.i.for.inc13.i.i_crit_edge:            ; preds = %for.inc.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc13.i.i

for.inc.i.2.i:                                    ; preds = %for.inc.i.1.i
  %add.i.3.i = add i32 %i.031.i.i, 3
  %arrayidx.i.3.i = getelementptr i8, ptr %6, i32 %add.i.3.i
  %15 = ptrtoint ptr %arrayidx.i.3.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 81, i8 %16)
  %cmp6.not.i.3.i = icmp eq i8 %16, 81
  br i1 %cmp6.not.i.3.i, label %findstr.exit.i, label %for.inc.i.2.i.for.inc13.i.i_crit_edge

for.inc.i.2.i.for.inc13.i.i_crit_edge:            ; preds = %for.inc.i.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc13.i.i

for.inc13.i.i:                                    ; preds = %for.inc.i.2.i.for.inc13.i.i_crit_edge, %for.inc.i.1.i.for.inc13.i.i_crit_edge, %for.inc.i.i.for.inc13.i.i_crit_edge, %for.cond1.preheader.i.i.for.inc13.i.i_crit_edge
  %cmp.not.i.i = icmp sgt i32 %add.i.1.i, %sub.i.i
  br i1 %cmp.not.i.i, label %for.inc13.i.i.if.end_crit_edge, label %for.inc13.i.i.for.cond1.preheader.i.i_crit_edge

for.inc13.i.i.for.cond1.preheader.i.i_crit_edge:  ; preds = %for.inc13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond1.preheader.i.i

for.inc13.i.i.if.end_crit_edge:                   ; preds = %for.inc13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

findstr.exit.i:                                   ; preds = %for.inc.i.2.i
  %conv11.i.i = trunc i32 %i.031.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv11.i.i)
  %tobool.not.i = icmp eq i16 %conv11.i.i, 0
  br i1 %tobool.not.i, label %findstr.exit.i.if.end_crit_edge, label %if.end.i

findstr.exit.i.if.end_crit_edge:                  ; preds = %findstr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %findstr.exit.i
  %add.i = add i32 %i.031.i.i, 4
  %17 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_private.i, align 4
  %device2.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %18, i32 0, i32 2, i32 3
  %idxprom.i.i = and i32 %add.i, 65535
  %arrayidx.i1.i = getelementptr i8, ptr %6, i32 %idxprom.i.i
  %19 = ptrtoint ptr %arrayidx.i1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp.i.i = icmp eq i8 %20, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end.i.i

do.body.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %drm6.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %18, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %drm6.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %drm6.i.i, align 8
  %dev7.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %dev7.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev7.i.i, align 8
  %dev8.i.i = getelementptr inbounds %struct.drm_device, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %dev8.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev8.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %18, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.46, ptr noundef %name.i.i) #12
  br label %if.end

if.end.i.i:                                       ; preds = %if.end.i
  %add.i2.i = add nuw nsw i32 %idxprom.i.i, 1
  %arrayidx13.i.i = getelementptr i8, ptr %6, i32 %add.i2.i
  %27 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx13.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %28)
  %cmp15.not.i.i = icmp eq i8 %28, 36
  %drm38.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %18, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %drm38.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %drm38.i.i, align 8
  %dev39.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %dev39.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev39.i.i, align 8
  %dev40.i.i = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %dev40.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev40.i.i, align 4
  %name41.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %18, i32 0, i32 2, i32 12
  br i1 %cmp15.not.i.i, label %do.body32.i.i, label %do.body18.i.i

do.body18.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.49, ptr noundef %name41.i.i) #12
  br label %if.end

do.body32.i.i:                                    ; preds = %if.end.i.i
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.52, ptr noundef %name41.i.i) #12
  %add46.i.i = add i16 %conv11.i.i, 6
  %map.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %18, i32 0, i32 2, i32 3, i32 0, i32 6
  %35 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.body53.i.i, !prof !246

do.body53.i.i:                                    ; preds = %do.body32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void @arm_heavy_mb() #9
  %37 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i, align 4
  %idxprom57.i.i = zext i16 %add46.i.i to i32
  %arrayidx58.i.i = getelementptr i8, ptr %38, i32 %idxprom57.i.i
  %39 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %arrayidx58.i.i, align 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #9
  %42 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %map.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 4868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %41) #9, !srcloc !251
  br label %if.end66.i.i

if.else.i.i:                                      ; preds = %do.body32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i, align 4
  %idxprom63.i.i = zext i16 %add46.i.i to i32
  %arrayidx64.i.i = getelementptr i8, ptr %45, i32 %idxprom63.i.i
  %46 = ptrtoint ptr %arrayidx64.i.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %arrayidx64.i.i, align 1
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #9
  tail call void @nvif_object_wr(ptr noundef %device2.i.i, i32 noundef 4, i64 noundef 4868, i32 noundef %48) #9
  br label %if.end66.i.i

if.end66.i.i:                                     ; preds = %if.else.i.i, %do.body53.i.i
  %conv87.pre-phi.i.i = phi i32 [ %idxprom63.i.i, %if.else.i.i ], [ %idxprom57.i.i, %do.body53.i.i ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end105.i.i.for.body.i.i_crit_edge, %if.end66.i.i
  %i.01.i.i = phi i32 [ 0, %if.end66.i.i ], [ %add106.pre-phi.i.i, %if.end105.i.i.for.body.i.i_crit_edge ]
  %49 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %map.i.i, align 8
  %tobool75.not.i.i = icmp eq ptr %50, null
  br i1 %tobool75.not.i.i, label %if.else96.i.i, label %do.body83.i.i, !prof !246

do.body83.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %51 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i, align 4
  %add88.i.i = add nuw nsw i32 %i.01.i.i, 4
  %add89.i.i = add nuw nsw i32 %add88.i.i, %conv87.pre-phi.i.i
  %arrayidx90.i.i = getelementptr i8, ptr %52, i32 %add89.i.i
  %53 = ptrtoint ptr %arrayidx90.i.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %arrayidx90.i.i, align 1
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #9
  %56 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %map.i.i, align 8
  %add94.i.i = add nuw nsw i32 %i.01.i.i, 5120
  %add.ptr95.i.i = getelementptr i8, ptr %57, i32 %add94.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95.i.i, i32 %55) #9, !srcloc !251
  br label %if.end105.i.i

if.else96.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add97.i.i = add nuw nsw i32 %i.01.i.i, 5120
  %conv98.i.i = zext i32 %add97.i.i to i64
  %58 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i, align 4
  %add101.i.i = add nuw nsw i32 %i.01.i.i, 4
  %add102.i.i = add nuw nsw i32 %add101.i.i, %conv87.pre-phi.i.i
  %arrayidx103.i.i = getelementptr i8, ptr %59, i32 %add102.i.i
  %60 = ptrtoint ptr %arrayidx103.i.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %arrayidx103.i.i, align 1
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #9
  tail call void @nvif_object_wr(ptr noundef %device2.i.i, i32 noundef 4, i64 noundef %conv98.i.i, i32 noundef %62) #9
  br label %if.end105.i.i

if.end105.i.i:                                    ; preds = %if.else96.i.i, %do.body83.i.i
  %add106.pre-phi.i.i = phi i32 [ %add101.i.i, %if.else96.i.i ], [ %add88.i.i, %do.body83.i.i ]
  %cmp70.i.i = icmp ult i32 %i.01.i.i, 28
  br i1 %cmp70.i.i, label %if.end105.i.i.for.body.i.i_crit_edge, label %for.end.i3.i

if.end105.i.i.for.body.i.i_crit_edge:             ; preds = %if.end105.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i3.i:                                     ; preds = %if.end105.i.i
  %63 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %map.i.i, align 8
  %tobool110.not.i.i = icmp eq ptr %64, null
  br i1 %tobool110.not.i.i, label %if.else164.i.i, label %do.body118.i.i, !prof !246

do.body118.i.i:                                   ; preds = %for.end.i3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  %65 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %map.i.i, align 8
  %tobool124.not.i.i = icmp eq ptr %66, null
  br i1 %tobool124.not.i.i, label %if.else137.i.i, label %if.then131.i.i, !prof !246

if.then131.i.i:                                   ; preds = %do.body118.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr134.i.i = getelementptr i8, ptr %66, i32 4248
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr134.i.i) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  br label %if.end139.i.i

if.else137.i.i:                                   ; preds = %do.body118.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call138.i.i = tail call i32 @nvif_object_rd(ptr noundef %device2.i.i, i32 noundef 4, i64 noundef 4248) #9
  br label %if.end139.i.i

if.end139.i.i:                                    ; preds = %if.else137.i.i, %if.then131.i.i
  %_data.0.i.i = phi i32 [ %67, %if.then131.i.i ], [ %call138.i.i, %if.else137.i.i ]
  %or.i.i = or i32 %_data.0.i.i, 24
  %68 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %map.i.i, align 8
  %add.ptr143.i.i = getelementptr i8, ptr %69, i32 4248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr143.i.i, i32 %or.i.i) #9, !srcloc !251
  br label %if.end

if.else164.i.i:                                   ; preds = %for.end.i3.i
  call void @__sanitizer_cov_trace_pc() #11
  %call165.i.i = tail call i32 @nvif_object_rd(ptr noundef %device2.i.i, i32 noundef 4, i64 noundef 4248) #9
  %or168.i.i = or i32 %call165.i.i, 24
  tail call void @nvif_object_wr(ptr noundef %device2.i.i, i32 noundef 4, i64 noundef 4248, i32 noundef %or168.i.i) #9
  br label %if.end

if.end:                                           ; preds = %if.else164.i.i, %if.end139.i.i, %do.body18.i.i, %do.body.i.i, %findstr.exit.i.if.end_crit_edge, %for.inc13.i.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %execute = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 11
  %70 = ptrtoint ptr %execute to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %execute, align 4, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not = icmp eq i8 %71, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %last_script_invoc = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 15
  %72 = ptrtoint ptr %last_script_invoc to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %last_script_invoc, align 4
  %lvds_init_run = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 16
  %73 = ptrtoint ptr %lvds_init_run to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %lvds_init_run, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_bios_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %lth.i = alloca %struct.lvdstableheader, align 1
  %map.i.i = alloca [16 x i8], align 1
  %.compoundliteral.i.i = alloca %struct.bit_table, align 4
  %.compoundliteral3.i.i = alloca %struct.bit_table, align 4
  %.compoundliteral8.i.i = alloca %struct.bit_table, align 4
  %.compoundliteral12.i.i = alloca %struct.bit_table, align 4
  %.compoundliteral19.i.i = alloca %struct.bit_table, align 4
  %.compoundliteral23.i.i = alloca %struct.bit_table, align 4
  %.compoundliteral27.i.i = alloca %struct.bit_table, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %vbios = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %bus = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 8
  %cmp = icmp eq ptr %5, @pci_bus_type
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 5
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 4
  %device1.i = getelementptr inbounds %struct.anon.197, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device1.i, align 8
  %bios2.i = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 21
  %10 = ptrtoint ptr %bios2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bios2.i, align 8
  %12 = call ptr @memset(ptr %vbios, i32 0, i32 816)
  %lock.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @NVInitVBIOS.__key, i16 noundef signext 3) #9
  %13 = ptrtoint ptr %vbios to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %vbios, align 4
  %data.i = getelementptr inbounds %struct.nvkm_bios, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %data5.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 4
  %16 = ptrtoint ptr %data5.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %data5.i, align 4
  %size.i = getelementptr inbounds %struct.nvkm_bios, ptr %11, i32 0, i32 1
  %17 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size.i, align 4
  %length.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 3
  %19 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %length.i, align 4
  %version.i = getelementptr inbounds %struct.nvkm_bios, ptr %11, i32 0, i32 7
  %20 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %version.i, align 4
  %major_version.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 12
  %22 = ptrtoint ptr %major_version.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %major_version.i, align 1
  %chip.i = getelementptr inbounds %struct.nvkm_bios, ptr %11, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %chip.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %chip.i, align 1
  %chip_version.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 5
  %25 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %chip_version.i, align 4
  %bit_offset.i = getelementptr inbounds %struct.nvkm_bios, ptr %11, i32 0, i32 6
  %26 = ptrtoint ptr %bit_offset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bit_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %type.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 1
  %28 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %type.i, align 4
  %29 = ptrtoint ptr %bit_offset.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bit_offset.i, align 4
  %conv.i = trunc i32 %30 to i16
  %offset.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 2
  %31 = ptrtoint ptr %offset.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i, ptr %offset.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.compoundliteral.i.i) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.compoundliteral3.i.i) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.compoundliteral8.i.i) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.compoundliteral12.i.i) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.compoundliteral19.i.i) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.compoundliteral23.i.i) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.compoundliteral27.i.i) #9
  %32 = ptrtoint ptr %.compoundliteral.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 105, ptr %.compoundliteral.i.i, align 4
  %parse_fn.i.i = getelementptr inbounds %struct.bit_table, ptr %.compoundliteral.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %parse_fn.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @parse_bit_i_tbl_entry, ptr %parse_fn.i.i, align 4
  %call.i.i = call fastcc i32 @parse_bit_table(ptr noundef %vbios, ptr noundef nonnull %.compoundliteral.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.NVInitVBIOS.exit.thread126_crit_edge

if.then.i.NVInitVBIOS.exit.thread126_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %NVInitVBIOS.exit.thread126

if.end.i.i:                                       ; preds = %if.then.i
  %34 = ptrtoint ptr %major_version.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %major_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %35)
  %cmp.i.i = icmp ugt i8 %35, 95
  br i1 %cmp.i.i, label %if.then2.i.i, label %if.end.i.i.if.end7.i.i_crit_edge

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %.compoundliteral3.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 65, ptr %.compoundliteral3.i.i, align 4
  %parse_fn5.i.i = getelementptr inbounds %struct.bit_table, ptr %.compoundliteral3.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %parse_fn5.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @parse_bit_A_tbl_entry, ptr %parse_fn5.i.i, align 4
  %38 = call fastcc i32 @parse_bit_table(ptr noundef %vbios, ptr noundef nonnull %.compoundliteral3.i.i) #9
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then2.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  %39 = ptrtoint ptr %.compoundliteral8.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 68, ptr %.compoundliteral8.i.i, align 4
  %parse_fn10.i.i = getelementptr inbounds %struct.bit_table, ptr %.compoundliteral8.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %parse_fn10.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @parse_bit_display_tbl_entry, ptr %parse_fn10.i.i, align 4
  %41 = call fastcc i32 @parse_bit_table(ptr noundef %vbios, ptr noundef nonnull %.compoundliteral8.i.i) #9
  %42 = ptrtoint ptr %.compoundliteral12.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 73, ptr %.compoundliteral12.i.i, align 4
  %parse_fn14.i.i = getelementptr inbounds %struct.bit_table, ptr %.compoundliteral12.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %parse_fn14.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @parse_bit_init_tbl_entry, ptr %parse_fn14.i.i, align 4
  %call15.i.i = call fastcc i32 @parse_bit_table(ptr noundef %vbios, ptr noundef nonnull %.compoundliteral12.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %NVInitVBIOS.exit, label %if.end7.i.i.NVInitVBIOS.exit.thread126_crit_edge

if.end7.i.i.NVInitVBIOS.exit.thread126_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %NVInitVBIOS.exit.thread126

if.else.i:                                        ; preds = %if.end
  %bmp_offset.i = getelementptr inbounds %struct.nvkm_bios, ptr %11, i32 0, i32 5
  %44 = ptrtoint ptr %bmp_offset.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bmp_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool13.not.i = icmp eq i32 %45, 0
  br i1 %tobool13.not.i, label %if.else.i.cleanup_crit_edge, label %if.then14.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14.i:                                      ; preds = %if.else.i
  %type15.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 1
  %46 = ptrtoint ptr %type15.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %type15.i, align 4
  %47 = ptrtoint ptr %bmp_offset.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bmp_offset.i, align 4
  %conv17.i = trunc i32 %48 to i16
  %offset18.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 2
  %49 = ptrtoint ptr %offset18.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv17.i, ptr %offset18.i, align 4
  %conv20.i = and i32 %48, 65535
  %50 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_private.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %15, i32 %conv20.i
  %digital_min_front_porch.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 8
  %52 = ptrtoint ptr %digital_min_front_porch.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 75, ptr %digital_min_front_porch.i.i, align 4
  %fmaxvco.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 15
  %53 = ptrtoint ptr %fmaxvco.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 256000, ptr %fmaxvco.i.i, align 4
  %fminvco.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 16
  %54 = ptrtoint ptr %fminvco.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 128000, ptr %fminvco.i.i, align 4
  %fp.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24
  %duallink_transition_clk.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 12
  %55 = ptrtoint ptr %duallink_transition_clk.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 90000, ptr %duallink_transition_clk.i.i, align 4
  %arrayidx1.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 5
  %56 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx1.i.i, align 1
  %arrayidx2.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 6
  %58 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx2.i.i, align 1
  %drm4.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %51, i32 0, i32 2, i32 1
  %60 = ptrtoint ptr %drm4.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %drm4.i.i, align 8
  %dev5.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %dev5.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev5.i.i, align 8
  %dev6.i.i = getelementptr inbounds %struct.drm_device, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %dev6.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev6.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %51, i32 0, i32 2, i32 12
  %conv.i.i = zext i8 %57 to i32
  %conv7.i.i = zext i8 %59 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %65, ptr noundef nonnull @.str.93, ptr noundef %name.i.i, i32 noundef %conv.i.i, i32 noundef %conv7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %57)
  %cmp.i51.i = icmp ult i8 %57, 5
  br i1 %cmp.i51.i, label %if.then.i.i, label %lor.lhs.false.i.i

if.then.i.i:                                      ; preds = %if.then14.i
  %66 = ptrtoint ptr %data5.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data5.i, align 4
  %arrayidx13.i.i = getelementptr i8, ptr %67, i32 54
  %68 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %arrayidx13.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %59)
  %cmp18.not.not.i.i = icmp eq i8 %59, 1
  br i1 %cmp18.not.not.i.i, label %if.end37.i.i, label %if.then.i.i.do.body24.i.i_crit_edge

if.then.i.i.do.body24.i.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body24.i.i

lor.lhs.false.i.i:                                ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %57)
  %cmp21.old.not.i.i = icmp eq i8 %57, 5
  br i1 %cmp21.old.not.i.i, label %lor.lhs.false60.i.i, label %lor.lhs.false.i.i.do.body24.i.i_crit_edge

lor.lhs.false.i.i.do.body24.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %lor.lhs.false.i.i.do.body24.i.i_crit_edge, %if.then.i.i.do.body24.i.i_crit_edge
  %69 = ptrtoint ptr %drm4.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %drm4.i.i, align 8
  %dev31.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %dev31.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev31.i.i, align 8
  %dev32.i.i = getelementptr inbounds %struct.drm_device, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %dev32.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev32.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.96, ptr noundef %name.i.i) #12
  br label %cleanup

if.end37.i.i:                                     ; preds = %if.then.i.i
  %75 = zext i8 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.143)
  switch i8 %57, label %if.else65.thread.i.i [
    i8 0, label %if.end37.i.i.if.end4_crit_edge
    i8 1, label %if.end37.i.i.if.end106.i.i_crit_edge
    i8 2, label %if.end37.i.i.if.end106.i.i_crit_edge138
    i8 3, label %if.end37.i.i.if.end106.i.i_crit_edge139
    i8 4, label %if.end37.i.i.if.then64.i.i_crit_edge
  ]

if.end37.i.i.if.then64.i.i_crit_edge:             ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then64.i.i

if.end37.i.i.if.end106.i.i_crit_edge139:          ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106.i.i

if.end37.i.i.if.end106.i.i_crit_edge138:          ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106.i.i

if.end37.i.i.if.end106.i.i_crit_edge:             ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106.i.i

if.end37.i.i.if.end4_crit_edge:                   ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.else65.thread.i.i:                             ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106.i.i

lor.lhs.false60.i.i:                              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp62.i.i = icmp eq i8 %59, 0
  br i1 %cmp62.i.i, label %lor.lhs.false60.i.i.if.then64.i.i_crit_edge, label %if.else65.i.i

lor.lhs.false60.i.i.if.then64.i.i_crit_edge:      ; preds = %lor.lhs.false60.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then64.i.i

if.then64.i.i:                                    ; preds = %lor.lhs.false60.i.i.if.then64.i.i_crit_edge, %if.end37.i.i.if.then64.i.i_crit_edge
  br label %if.end106.i.i

if.else65.i.i:                                    ; preds = %lor.lhs.false60.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %59)
  %cmp67.i.i = icmp ult i8 %59, 6
  br i1 %cmp67.i.i, label %if.else65.i.i.if.end106.i.i_crit_edge, label %if.else70.i.i

if.else65.i.i.if.end106.i.i_crit_edge:            ; preds = %if.else65.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106.i.i

if.else70.i.i:                                    ; preds = %if.else65.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %59)
  %cmp72.i.i = icmp ult i8 %59, 16
  br i1 %cmp72.i.i, label %if.else70.i.i.if.end106.i.i_crit_edge, label %if.else75.i.i

if.else70.i.i.if.end106.i.i_crit_edge:            ; preds = %if.else70.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106.i.i

if.else75.i.i:                                    ; preds = %if.else70.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %59)
  %cmp77.i.i = icmp eq i8 %59, 16
  br i1 %cmp77.i.i, label %if.else75.i.i.if.end106.i.i_crit_edge, label %if.else80.i.i

if.else75.i.i.if.end106.i.i_crit_edge:            ; preds = %if.else75.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106.i.i

if.else80.i.i:                                    ; preds = %if.else75.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %59)
  %cmp82.i.i = icmp ugt i8 %59, 19
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %59)
  %cmp92.i.i = icmp ugt i8 %59, 38
  br label %if.end106.i.i

if.end106.i.i:                                    ; preds = %if.else80.i.i, %if.else75.i.i.if.end106.i.i_crit_edge, %if.else70.i.i.if.end106.i.i_crit_edge, %if.else65.i.i.if.end106.i.i_crit_edge, %if.then64.i.i, %if.else65.thread.i.i, %if.end37.i.i.if.end106.i.i_crit_edge, %if.end37.i.i.if.end106.i.i_crit_edge138, %if.end37.i.i.if.end106.i.i_crit_edge139
  %cmp159.i.i = phi i1 [ true, %if.then64.i.i ], [ false, %if.end37.i.i.if.end106.i.i_crit_edge ], [ false, %if.end37.i.i.if.end106.i.i_crit_edge138 ], [ false, %if.end37.i.i.if.end106.i.i_crit_edge139 ], [ true, %if.else65.i.i.if.end106.i.i_crit_edge ], [ true, %if.else70.i.i.if.end106.i.i_crit_edge ], [ true, %if.else75.i.i.if.end106.i.i_crit_edge ], [ true, %if.else65.thread.i.i ], [ true, %if.else80.i.i ]
  %cmp182.i.i = phi i1 [ false, %if.then64.i.i ], [ false, %if.end37.i.i.if.end106.i.i_crit_edge ], [ false, %if.end37.i.i.if.end106.i.i_crit_edge138 ], [ false, %if.end37.i.i.if.end106.i.i_crit_edge139 ], [ false, %if.else65.i.i.if.end106.i.i_crit_edge ], [ true, %if.else70.i.i.if.end106.i.i_crit_edge ], [ true, %if.else75.i.i.if.end106.i.i_crit_edge ], [ false, %if.else65.thread.i.i ], [ true, %if.else80.i.i ]
  %cmp193.i.i = phi i1 [ false, %if.then64.i.i ], [ false, %if.end37.i.i.if.end106.i.i_crit_edge ], [ false, %if.end37.i.i.if.end106.i.i_crit_edge138 ], [ false, %if.end37.i.i.if.end106.i.i_crit_edge139 ], [ false, %if.else65.i.i.if.end106.i.i_crit_edge ], [ false, %if.else70.i.i.if.end106.i.i_crit_edge ], [ true, %if.else75.i.i.if.end106.i.i_crit_edge ], [ false, %if.else65.thread.i.i ], [ true, %if.else80.i.i ]
  %cmp200.i.i = phi i1 [ false, %if.then64.i.i ], [ false, %if.end37.i.i.if.end106.i.i_crit_edge ], [ false, %if.end37.i.i.if.end106.i.i_crit_edge138 ], [ false, %if.end37.i.i.if.end106.i.i_crit_edge139 ], [ false, %if.else65.i.i.if.end106.i.i_crit_edge ], [ false, %if.else70.i.i.if.end106.i.i_crit_edge ], [ false, %if.else75.i.i.if.end106.i.i_crit_edge ], [ false, %if.else65.thread.i.i ], [ true, %if.else80.i.i ]
  %cmp225.i.i = phi i1 [ false, %if.then64.i.i ], [ false, %if.end37.i.i.if.end106.i.i_crit_edge ], [ false, %if.end37.i.i.if.end106.i.i_crit_edge138 ], [ false, %if.end37.i.i.if.end106.i.i_crit_edge139 ], [ false, %if.else65.i.i.if.end106.i.i_crit_edge ], [ false, %if.else70.i.i.if.end106.i.i_crit_edge ], [ false, %if.else75.i.i.if.end106.i.i_crit_edge ], [ false, %if.else65.thread.i.i ], [ %cmp82.i.i, %if.else80.i.i ]
  %cmp236.i.i = phi i1 [ false, %if.then64.i.i ], [ false, %if.end37.i.i.if.end106.i.i_crit_edge ], [ false, %if.end37.i.i.if.end106.i.i_crit_edge138 ], [ false, %if.end37.i.i.if.end106.i.i_crit_edge139 ], [ false, %if.else65.i.i.if.end106.i.i_crit_edge ], [ false, %if.else70.i.i.if.end106.i.i_crit_edge ], [ false, %if.else75.i.i.if.end106.i.i_crit_edge ], [ false, %if.else65.thread.i.i ], [ %cmp92.i.i, %if.else80.i.i ]
  %76 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx.i.1.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 1
  %78 = ptrtoint ptr %arrayidx.i.1.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.i.1.i.i, align 1
  %add.i.1.i.i = add i8 %77, %79
  %arrayidx.i.2.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 2
  %80 = ptrtoint ptr %arrayidx.i.2.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.i.2.i.i, align 1
  %add.i.2.i.i = add i8 %81, %add.i.1.i.i
  %arrayidx.i.3.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 3
  %82 = ptrtoint ptr %arrayidx.i.3.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx.i.3.i.i, align 1
  %add.i.3.i.i = add i8 %83, %add.i.2.i.i
  %arrayidx.i.4.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 4
  %84 = ptrtoint ptr %arrayidx.i.4.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.i.4.i.i, align 1
  %add.i.4.i.i = add i8 %85, %add.i.3.i.i
  %86 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx1.i.i, align 1
  %add.i.5.i.i = add i8 %87, %add.i.4.i.i
  %88 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx2.i.i, align 1
  %add.i.6.i.i = add i8 %89, %add.i.5.i.i
  %arrayidx.i.7.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 7
  %90 = ptrtoint ptr %arrayidx.i.7.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.i.7.i.i, align 1
  %add.i.7.i.i = sub i8 0, %add.i.6.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %91, i8 %add.i.7.i.i)
  %phi.cmp.i.not.i.i = icmp eq i8 %91, %add.i.7.i.i
  br i1 %phi.cmp.i.not.i.i, label %if.end122.i.i, label %do.body109.i.i

do.body109.i.i:                                   ; preds = %if.end106.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %drm4.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %drm4.i.i, align 8
  %dev116.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %dev116.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev116.i.i, align 8
  %dev117.i.i = getelementptr inbounds %struct.drm_device, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %dev117.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev117.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.99, ptr noundef %name.i.i) #12
  br label %cleanup

if.end122.i.i:                                    ; preds = %if.end106.i.i
  %arrayidx123.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 9
  %98 = ptrtoint ptr %arrayidx123.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx123.i.i, align 1
  %feature_byte.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 13
  %100 = ptrtoint ptr %feature_byte.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %feature_byte.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %59)
  %cmp129.i.i = icmp ult i8 %59, 16
  %or.cond336.i.i = select i1 %cmp.i51.i, i1 true, i1 %cmp129.i.i
  br i1 %or.cond336.i.i, label %if.then131.i.i, label %if.end122.i.i.if.end132.i.i_crit_edge

if.end122.i.i.if.end132.i.i_crit_edge:            ; preds = %if.end122.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132.i.i

if.then131.i.i:                                   ; preds = %if.end122.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %old_style_init.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 17
  %101 = ptrtoint ptr %old_style_init.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %old_style_init.i.i, align 4
  br label %if.end132.i.i

if.end132.i.i:                                    ; preds = %if.then131.i.i, %if.end122.i.i.if.end132.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %57)
  %cmp134.i.i = icmp ult i8 %57, 2
  %spec.select.i.i = select i1 %cmp134.i.i, i32 14, i32 18
  %arrayidx140.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 %spec.select.i.i
  %102 = ptrtoint ptr %arrayidx140.i.i to i32
  call void @__asan_loadN_noabort(i32 %102, i32 2)
  %103 = load i16, ptr %arrayidx140.i.i, align 1
  %104 = tail call i16 @llvm.bswap.i16(i16 %103) #9
  %init_script_tbls_ptr.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 18
  %105 = ptrtoint ptr %init_script_tbls_ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %104, ptr %init_script_tbls_ptr.i.i, align 2
  %add.i.i = add nuw nsw i32 %spec.select.i.i, 2
  %arrayidx143.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 %add.i.i
  %106 = ptrtoint ptr %arrayidx143.i.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 2)
  %107 = load i16, ptr %arrayidx143.i.i, align 1
  %108 = tail call i16 @llvm.bswap.i16(i16 %107) #9
  %extra_init_script_tbl_ptr.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 19
  %109 = ptrtoint ptr %extra_init_script_tbl_ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %108, ptr %extra_init_script_tbl_ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %57)
  %cmp146.i.i = icmp ugt i8 %57, 2
  br i1 %cmp146.i.i, label %if.then148.i.i, label %if.end132.i.i.if.end157.i.i_crit_edge

if.end132.i.i.if.end157.i.i_crit_edge:            ; preds = %if.end132.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end157.i.i

if.then148.i.i:                                   ; preds = %if.end132.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx149.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 24
  %110 = ptrtoint ptr %arrayidx149.i.i to i32
  call void @__asan_loadN_noabort(i32 %110, i32 2)
  %111 = load i16, ptr %arrayidx149.i.i, align 1
  %112 = tail call i16 @llvm.bswap.i16(i16 %111) #9
  %legacy.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 26
  %113 = ptrtoint ptr %legacy.i.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %112, ptr %legacy.i.i, align 4
  %arrayidx151.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 26
  %114 = ptrtoint ptr %arrayidx151.i.i to i32
  call void @__asan_loadN_noabort(i32 %114, i32 2)
  %115 = load i16, ptr %arrayidx151.i.i, align 1
  %116 = tail call i16 @llvm.bswap.i16(i16 %115) #9
  %sdr_seq_tbl_ptr.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 26, i32 1
  %117 = ptrtoint ptr %sdr_seq_tbl_ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %116, ptr %sdr_seq_tbl_ptr.i.i, align 2
  %arrayidx154.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 28
  %118 = ptrtoint ptr %arrayidx154.i.i to i32
  call void @__asan_loadN_noabort(i32 %118, i32 2)
  %119 = load i16, ptr %arrayidx154.i.i, align 1
  %120 = tail call i16 @llvm.bswap.i16(i16 %119) #9
  %ddr_seq_tbl_ptr.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 26, i32 2
  %121 = ptrtoint ptr %ddr_seq_tbl_ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %120, ptr %ddr_seq_tbl_ptr.i.i, align 4
  br label %if.end157.i.i

if.end157.i.i:                                    ; preds = %if.then148.i.i, %if.end132.i.i.if.end157.i.i_crit_edge
  %add162.i.i = add i32 %48, 54
  %phi.cast.i.i = and i32 %add162.i.i, 65535
  %legacy_i2c_offset.0.i.i = select i1 %cmp159.i.i, i32 %phi.cast.i.i, i32 72
  %122 = ptrtoint ptr %data5.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %data5.i, align 4
  %arrayidx167.i.i = getelementptr i8, ptr %123, i32 %legacy_i2c_offset.0.i.i
  %124 = ptrtoint ptr %arrayidx167.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx167.i.i, align 1
  %i2c_indices.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 26, i32 3
  %126 = ptrtoint ptr %i2c_indices.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %i2c_indices.i.i, align 2
  %add171.i.i = add nuw nsw i32 %legacy_i2c_offset.0.i.i, 1
  %arrayidx172.i.i = getelementptr i8, ptr %123, i32 %add171.i.i
  %127 = ptrtoint ptr %arrayidx172.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx172.i.i, align 1
  %tv.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 26, i32 3, i32 1
  %129 = ptrtoint ptr %tv.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %tv.i.i, align 1
  %add177.i.i = add nuw nsw i32 %legacy_i2c_offset.0.i.i, 2
  %arrayidx178.i.i = getelementptr i8, ptr %123, i32 %add177.i.i
  %130 = ptrtoint ptr %arrayidx178.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx178.i.i, align 1
  %panel.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 26, i32 3, i32 2
  %132 = ptrtoint ptr %panel.i.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %panel.i.i, align 2
  br i1 %cmp182.i.i, label %if.then184.i.i, label %if.end157.i.i.if.end191.i.i_crit_edge

if.end157.i.i.if.end191.i.i_crit_edge:            ; preds = %if.end157.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end191.i.i

if.then184.i.i:                                   ; preds = %if.end157.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx185.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 67
  %133 = ptrtoint ptr %arrayidx185.i.i to i32
  call void @__asan_loadN_noabort(i32 %133, i32 4)
  %134 = load i32, ptr %arrayidx185.i.i, align 1
  %135 = tail call i32 @llvm.bswap.i32(i32 %134) #9
  %136 = ptrtoint ptr %fmaxvco.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %fmaxvco.i.i, align 4
  %arrayidx188.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 71
  %137 = ptrtoint ptr %arrayidx188.i.i to i32
  call void @__asan_loadN_noabort(i32 %137, i32 4)
  %138 = load i32, ptr %arrayidx188.i.i, align 1
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #9
  %140 = ptrtoint ptr %fminvco.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %fminvco.i.i, align 4
  br label %if.end191.i.i

if.end191.i.i:                                    ; preds = %if.then184.i.i, %if.end157.i.i.if.end191.i.i_crit_edge
  br i1 %cmp193.i.i, label %if.then195.i.i, label %if.end191.i.i.if.end198.i.i_crit_edge

if.end191.i.i.if.end198.i.i_crit_edge:            ; preds = %if.end191.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end198.i.i

if.then195.i.i:                                   ; preds = %if.end191.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv197.i.i = add i32 %48, 75
  %idxprom.i.i.i = and i32 %conv197.i.i, 65535
  %arrayidx.i337.i.i = getelementptr i8, ptr %123, i32 %idxprom.i.i.i
  %141 = ptrtoint ptr %arrayidx.i337.i.i to i32
  call void @__asan_loadN_noabort(i32 %141, i32 2)
  %142 = load i16, ptr %arrayidx.i337.i.i, align 1
  %143 = tail call i16 @llvm.bswap.i16(i16 %142) #9
  %144 = ptrtoint ptr %init_script_tbls_ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %143, ptr %init_script_tbls_ptr.i.i, align 2
  br label %if.end198.i.i

if.end198.i.i:                                    ; preds = %if.then195.i.i, %if.end191.i.i.if.end198.i.i_crit_edge
  br i1 %cmp200.i.i, label %if.then202.i.i, label %if.end198.i.i.if.end223.i.i_crit_edge

if.end198.i.i.if.end223.i.i_crit_edge:            ; preds = %if.end198.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end223.i.i

if.then202.i.i:                                   ; preds = %if.end198.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx203.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 89
  %145 = ptrtoint ptr %arrayidx203.i.i to i32
  call void @__asan_loadN_noabort(i32 %145, i32 2)
  %146 = load i16, ptr %arrayidx203.i.i, align 1
  %147 = tail call i16 @llvm.bswap.i16(i16 %146) #9
  %tmds.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 25
  %148 = ptrtoint ptr %tmds.i.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %147, ptr %tmds.i.i, align 4
  %arrayidx205.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 91
  %149 = ptrtoint ptr %arrayidx205.i.i to i32
  call void @__asan_loadN_noabort(i32 %149, i32 2)
  %150 = load i16, ptr %arrayidx205.i.i, align 1
  %151 = tail call i16 @llvm.bswap.i16(i16 %150) #9
  %output1_script_ptr.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 25, i32 1
  %152 = ptrtoint ptr %output1_script_ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %151, ptr %output1_script_ptr.i.i, align 2
  %arrayidx208.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 95
  %153 = ptrtoint ptr %arrayidx208.i.i to i32
  call void @__asan_loadN_noabort(i32 %153, i32 2)
  %154 = load i16, ptr %arrayidx208.i.i, align 1
  %155 = tail call i16 @llvm.bswap.i16(i16 %154) #9
  %lvds_single_a_script_ptr.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 26, i32 4
  %156 = ptrtoint ptr %lvds_single_a_script_ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %155, ptr %lvds_single_a_script_ptr.i.i, align 2
  %arrayidx216.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 105
  %157 = ptrtoint ptr %arrayidx216.i.i to i32
  call void @__asan_loadN_noabort(i32 %157, i32 2)
  %158 = load i16, ptr %arrayidx216.i.i, align 1
  %159 = tail call i16 @llvm.bswap.i16(i16 %158) #9
  %160 = ptrtoint ptr %fp.i.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %159, ptr %fp.i.i, align 4
  %arrayidx219.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 107
  %161 = ptrtoint ptr %arrayidx219.i.i to i32
  call void @__asan_loadN_noabort(i32 %161, i32 2)
  %162 = load i16, ptr %arrayidx219.i.i, align 1
  %163 = tail call i16 @llvm.bswap.i16(i16 %162) #9
  %fpxlatetableptr.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 1
  %164 = ptrtoint ptr %fpxlatetableptr.i.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %163, ptr %fpxlatetableptr.i.i, align 2
  %xlatwidth.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 2
  %165 = ptrtoint ptr %xlatwidth.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 1, ptr %xlatwidth.i.i, align 4
  br label %if.end223.i.i

if.end223.i.i:                                    ; preds = %if.then202.i.i, %if.end198.i.i.if.end223.i.i_crit_edge
  br i1 %cmp225.i.i, label %if.then227.i.i, label %if.end223.i.i.if.end234.i.i_crit_edge

if.end223.i.i.if.end234.i.i_crit_edge:            ; preds = %if.end223.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end234.i.i

if.then227.i.i:                                   ; preds = %if.end223.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx228.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 117
  %166 = ptrtoint ptr %arrayidx228.i.i to i32
  call void @__asan_loadN_noabort(i32 %166, i32 2)
  %167 = load i16, ptr %arrayidx228.i.i, align 1
  %168 = tail call i16 @llvm.bswap.i16(i16 %167) #9
  %lvdsmanufacturerpointer.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 3
  %169 = ptrtoint ptr %lvdsmanufacturerpointer.i.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %168, ptr %lvdsmanufacturerpointer.i.i, align 4
  %arrayidx231.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 119
  %170 = ptrtoint ptr %arrayidx231.i.i to i32
  call void @__asan_loadN_noabort(i32 %170, i32 2)
  %171 = load i16, ptr %arrayidx231.i.i, align 1
  %172 = tail call i16 @llvm.bswap.i16(i16 %171) #9
  %fpxlatemanufacturertableptr.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 4
  %173 = ptrtoint ptr %fpxlatemanufacturertableptr.i.i to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 %172, ptr %fpxlatemanufacturertableptr.i.i, align 2
  br label %if.end234.i.i

if.end234.i.i:                                    ; preds = %if.then227.i.i, %if.end223.i.i.if.end234.i.i_crit_edge
  br i1 %cmp236.i.i, label %if.then238.i.i, label %if.end234.i.i.if.end4_crit_edge

if.end234.i.i.if.end4_crit_edge:                  ; preds = %if.end234.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then238.i.i:                                   ; preds = %if.end234.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx239.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 156
  %174 = ptrtoint ptr %arrayidx239.i.i to i32
  call void @__asan_loadN_noabort(i32 %174, i32 2)
  %175 = load i16, ptr %arrayidx239.i.i, align 1
  %176 = tail call i16 @llvm.bswap.i16(i16 %175) #9
  %conv241.i.i = zext i16 %176 to i32
  %mul.i.i = mul nuw nsw i32 %conv241.i.i, 10
  %177 = ptrtoint ptr %duallink_transition_clk.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %mul.i.i, ptr %duallink_transition_clk.i.i, align 4
  br label %if.end4

NVInitVBIOS.exit.thread126:                       ; preds = %if.end7.i.i.NVInitVBIOS.exit.thread126_crit_edge, %if.then.i.NVInitVBIOS.exit.thread126_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.compoundliteral.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.compoundliteral3.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.compoundliteral8.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.compoundliteral12.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.compoundliteral19.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.compoundliteral23.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.compoundliteral27.i.i) #9
  br label %cleanup

NVInitVBIOS.exit:                                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %178 = ptrtoint ptr %.compoundliteral19.i.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 77, ptr %.compoundliteral19.i.i, align 4
  %parse_fn21.i.i = getelementptr inbounds %struct.bit_table, ptr %.compoundliteral19.i.i, i32 0, i32 1
  %179 = ptrtoint ptr %parse_fn21.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr @parse_bit_M_tbl_entry, ptr %parse_fn21.i.i, align 4
  %180 = call fastcc i32 @parse_bit_table(ptr noundef %vbios, ptr noundef nonnull %.compoundliteral19.i.i) #9
  %181 = ptrtoint ptr %.compoundliteral23.i.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 76, ptr %.compoundliteral23.i.i, align 4
  %parse_fn25.i.i = getelementptr inbounds %struct.bit_table, ptr %.compoundliteral23.i.i, i32 0, i32 1
  %182 = ptrtoint ptr %parse_fn25.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr @parse_bit_lvds_tbl_entry, ptr %parse_fn25.i.i, align 4
  %183 = call fastcc i32 @parse_bit_table(ptr noundef %vbios, ptr noundef nonnull %.compoundliteral23.i.i) #9
  %184 = ptrtoint ptr %.compoundliteral27.i.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 84, ptr %.compoundliteral27.i.i, align 4
  %parse_fn29.i.i = getelementptr inbounds %struct.bit_table, ptr %.compoundliteral27.i.i, i32 0, i32 1
  %185 = ptrtoint ptr %parse_fn29.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr @parse_bit_tmds_tbl_entry, ptr %parse_fn29.i.i, align 4
  %186 = call fastcc i32 @parse_bit_table(ptr noundef %vbios, ptr noundef nonnull %.compoundliteral27.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.compoundliteral.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.compoundliteral3.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.compoundliteral8.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.compoundliteral12.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.compoundliteral19.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.compoundliteral23.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.compoundliteral27.i.i) #9
  br label %if.end4

if.end4:                                          ; preds = %NVInitVBIOS.exit, %if.then238.i.i, %if.end234.i.i.if.end4_crit_edge, %if.end37.i.i.if.end4_crit_edge
  %187 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dev_private.i, align 4
  %call2.i = tail call ptr @olddcb_table(ptr noundef %dev) #9
  %tobool.not.i68 = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i68, label %if.then.i70, label %do.body.i

if.then.i70:                                      ; preds = %if.end4
  %type.i69 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 1
  %189 = ptrtoint ptr %type.i69 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %type.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %cmp.i = icmp eq i32 %190, 0
  br i1 %cmp.i, label %if.then3.i, label %if.then.i70.cleanup_crit_edge

if.then.i70.cleanup_crit_edge:                    ; preds = %if.then.i70
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i:                                       ; preds = %if.then.i70
  %191 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dev_private.i, align 4
  %193 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dev1, align 4
  %device.i.i.i = getelementptr i8, ptr %194, i32 -102
  %195 = ptrtoint ptr %device.i.i.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %device.i.i.i, align 2
  %197 = and i16 %196, 4080
  %family.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %192, i32 0, i32 2, i32 3, i32 1, i32 4
  %198 = ptrtoint ptr %family.i.i.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %family.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %199)
  %cmp.i.i.i = icmp ugt i8 %199, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %197)
  %cmp5.not.i.i.i = icmp ne i16 %197, 256
  %or.cond.i.i.i = select i1 %cmp.i.i.i, i1 %cmp5.not.i.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %197)
  %cmp8.not.i.i.i = icmp ne i16 %197, 336
  %or.cond21.i.i.i = select i1 %or.cond.i.i.i, i1 %cmp8.not.i.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %197)
  %cmp11.not.i.i.i = icmp ne i16 %197, 416
  %or.cond22.i.i.i = select i1 %or.cond21.i.i.i, i1 %cmp11.not.i.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %197)
  %cmp14.not.i.i.i = icmp ne i16 %197, 512
  %or.cond23.i.i.i = select i1 %or.cond22.i.i.i, i1 %cmp14.not.i.i.i, i1 false
  %i2c_indices.i.i71 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 26, i32 3
  %200 = ptrtoint ptr %i2c_indices.i.i71 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %i2c_indices.i.i71, align 2
  %entries.i.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 1
  %202 = ptrtoint ptr %entries.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %entries.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %203
  %204 = call ptr @memset(ptr %arrayidx.i.i.i.i, i32 0, i32 40)
  %205 = load i32, ptr %entries.i.i.i.i, align 4
  %inc.i.i.i.i = add i32 %205, 1
  store i32 %inc.i.i.i.i, ptr %entries.i.i.i.i, align 4
  %206 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %arrayidx.i.i.i.i, align 4
  %type2.i.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %203, i32 3
  %207 = ptrtoint ptr %type2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 0, ptr %type2.i.i.i, align 4
  %i2c_index.i.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %203, i32 4
  %208 = ptrtoint ptr %i2c_index.i.i.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %201, ptr %i2c_index.i.i.i, align 4
  %heads4.i.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %203, i32 5
  %209 = ptrtoint ptr %heads4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 1, ptr %heads4.i.i.i, align 1
  %or7.i.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %203, i32 9
  %210 = ptrtoint ptr %or7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 1, ptr %or7.i.i.i, align 1
  %tv.i.i72 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 26, i32 3, i32 1
  %211 = ptrtoint ptr %tv.i.i72 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %tv.i.i72, align 1
  %conv4.i.i = zext i8 %212 to i32
  %call5.i.i = tail call i32 @nv04_tv_identify(ptr noundef %dev, i32 noundef %conv4.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i.i)
  %cmp.i.i73 = icmp sgt i32 %call5.i.i, -1
  br i1 %cmp.i.i73, label %if.then.i.i74, label %if.else.i.i

if.then.i.i74:                                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  %213 = ptrtoint ptr %tv.i.i72 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %tv.i.i72, align 1
  %215 = ptrtoint ptr %entries.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %entries.i.i.i.i, align 4
  %arrayidx.i.i31.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %216
  %217 = call ptr @memset(ptr %arrayidx.i.i31.i.i, i32 0, i32 40)
  %218 = load i32, ptr %entries.i.i.i.i, align 4
  %inc.i.i32.i.i = add i32 %218, 1
  store i32 %inc.i.i32.i.i, ptr %entries.i.i.i.i, align 4
  %219 = ptrtoint ptr %arrayidx.i.i31.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %218, ptr %arrayidx.i.i31.i.i, align 4
  br label %if.end19.sink.split.i.i

if.else.i.i:                                      ; preds = %if.then3.i
  %tmds.i.i75 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 25
  %220 = ptrtoint ptr %tmds.i.i75 to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %tmds.i.i75, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %221)
  %tobool.not.i.i76 = icmp eq i16 %221, 0
  br i1 %tobool.not.i.i76, label %lor.lhs.false.i.i78, label %if.else.i.i.if.then15.i.i_crit_edge

if.else.i.i.if.then15.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i.i

lor.lhs.false.i.i78:                              ; preds = %if.else.i.i
  %output1_script_ptr.i.i77 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 25, i32 1
  %222 = ptrtoint ptr %output1_script_ptr.i.i77 to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %output1_script_ptr.i.i77, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %223)
  %tobool14.not.i.i = icmp eq i16 %223, 0
  br i1 %tobool14.not.i.i, label %lor.lhs.false.i.i78.if.end7_crit_edge, label %lor.lhs.false.i.i78.if.then15.i.i_crit_edge

lor.lhs.false.i.i78.if.then15.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i.i

lor.lhs.false.i.i78.if.end7_crit_edge:            ; preds = %lor.lhs.false.i.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then15.i.i:                                    ; preds = %lor.lhs.false.i.i78.if.then15.i.i_crit_edge, %if.else.i.i.if.then15.i.i_crit_edge
  %panel.i.i79 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 26, i32 3, i32 2
  %224 = ptrtoint ptr %panel.i.i79 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %panel.i.i79, align 2
  %226 = ptrtoint ptr %entries.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %entries.i.i.i.i, align 4
  %arrayidx.i.i38.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %227
  %228 = call ptr @memset(ptr %arrayidx.i.i38.i.i, i32 0, i32 40)
  %229 = load i32, ptr %entries.i.i.i.i, align 4
  %inc.i.i39.i.i = add i32 %229, 1
  store i32 %inc.i.i39.i.i, ptr %entries.i.i.i.i, align 4
  %230 = ptrtoint ptr %arrayidx.i.i38.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %229, ptr %arrayidx.i.i38.i.i, align 4
  br label %if.end19.sink.split.i.i

if.end19.sink.split.i.i:                          ; preds = %if.then15.i.i, %if.then.i.i74
  %.sink52.i.i = phi i32 [ %227, %if.then15.i.i ], [ %216, %if.then.i.i74 ]
  %.sink51.i.i = phi i32 [ 2, %if.then15.i.i ], [ 1, %if.then.i.i74 ]
  %.sink49.i.i = phi i8 [ %225, %if.then15.i.i ], [ %214, %if.then.i.i74 ]
  %.sink.i.i = phi i8 [ 1, %if.then15.i.i ], [ 0, %if.then.i.i74 ]
  %type2.i40.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %.sink52.i.i, i32 3
  %231 = ptrtoint ptr %type2.i40.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %.sink51.i.i, ptr %type2.i40.i.i, align 4
  %i2c_index.i41.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %.sink52.i.i, i32 4
  %232 = ptrtoint ptr %i2c_index.i41.i.i to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %.sink49.i.i, ptr %i2c_index.i41.i.i, align 4
  %conv3.i42.i.i = select i1 %or.cond23.i.i.i, i8 3, i8 1
  %heads4.i43.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %.sink52.i.i, i32 5
  %233 = ptrtoint ptr %heads4.i43.i.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %conv3.i42.i.i, ptr %heads4.i43.i.i, align 1
  %location.i44.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %.sink52.i.i, i32 8
  %234 = ptrtoint ptr %location.i44.i.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 1, ptr %location.i44.i.i, align 4
  %or7.i45.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %.sink52.i.i, i32 9
  %235 = ptrtoint ptr %or7.i45.i.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %.sink.i.i, ptr %or7.i45.i.i, align 1
  br label %if.end7

do.body.i:                                        ; preds = %if.end4
  %dcb1.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22
  %drm6.i = getelementptr inbounds %struct.nouveau_drm, ptr %188, i32 0, i32 2, i32 1
  %236 = ptrtoint ptr %drm6.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %drm6.i, align 8
  %dev7.i = getelementptr inbounds %struct.nouveau_drm, ptr %237, i32 0, i32 3
  %238 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %dev7.i, align 8
  %dev8.i = getelementptr inbounds %struct.drm_device, ptr %239, i32 0, i32 2
  %240 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %dev8.i, align 4
  %name.i = getelementptr inbounds %struct.nouveau_drm, ptr %188, i32 0, i32 2, i32 12
  %242 = ptrtoint ptr %call2.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %call2.i, align 1
  %conv.i80 = zext i8 %243 to i32
  %244 = lshr i32 %conv.i80, 4
  %and.i = and i32 %conv.i80, 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %241, ptr noundef nonnull @.str.101, ptr noundef %name.i, i32 noundef %244, i32 noundef %and.i) #12
  %245 = ptrtoint ptr %call2.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %call2.i, align 1
  %247 = ptrtoint ptr %dcb1.i to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %246, ptr %dcb1.i, align 4
  %call14.i = tail call i32 @olddcb_outp_foreach(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @parse_dcb_entry) #9
  %248 = ptrtoint ptr %dcb1.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %dcb1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %249)
  %cmp17.i = icmp ult i8 %249, 33
  br i1 %cmp17.i, label %if.then19.i, label %do.body.i.if.end20.i_crit_edge

do.body.i.if.end20.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.then19.i:                                      ; preds = %do.body.i
  %entries.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 1
  %250 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %entries.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %251)
  %cmp114.i.i = icmp sgt i32 %251, 0
  br i1 %cmp114.i.i, label %for.body.lr.ph.i.i, label %if.then19.i.merge_like_dcb_entries.exit.i_crit_edge

if.then19.i.merge_like_dcb_entries.exit.i_crit_edge: ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %merge_like_dcb_entries.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then19.i
  %252 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %dev_private.i, align 4
  %drm31.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %253, i32 0, i32 2, i32 1
  %name.i.i81 = getelementptr inbounds %struct.nouveau_drm, ptr %253, i32 0, i32 2, i32 12
  br label %for.body.i.i

for.cond.loopexit.i.i:                            ; preds = %cleanup.i.i.for.cond.loopexit.i.i_crit_edge, %for.body.i.i.for.cond.loopexit.i.i_crit_edge
  %254 = phi i32 [ %256, %for.body.i.i.for.cond.loopexit.i.i_crit_edge ], [ %285, %cleanup.i.i.for.cond.loopexit.i.i_crit_edge ]
  %cmp.i95.i = icmp slt i32 %add.i.i82, %254
  br i1 %cmp.i95.i, label %for.cond.loopexit.i.i.for.body.i.i_crit_edge, label %for.cond46.preheader.i.i

for.cond.loopexit.i.i.for.body.i.i_crit_edge:     ; preds = %for.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.cond46.preheader.i.i:                         ; preds = %for.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %254)
  %cmp48116.i.i = icmp sgt i32 %254, 0
  br i1 %cmp48116.i.i, label %for.cond46.preheader.i.i.for.body50.i.i_crit_edge, label %for.cond46.preheader.i.i.merge_like_dcb_entries.exit.i_crit_edge

for.cond46.preheader.i.i.merge_like_dcb_entries.exit.i_crit_edge: ; preds = %for.cond46.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %merge_like_dcb_entries.exit.i

for.cond46.preheader.i.i.for.body50.i.i_crit_edge: ; preds = %for.cond46.preheader.i.i
  br label %for.body50.i.i

for.body.i.i:                                     ; preds = %for.cond.loopexit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0115.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add.i.i82, %for.cond.loopexit.i.i.for.body.i.i_crit_edge ]
  %add.i.i82 = add nuw nsw i32 %i.0115.i.i, 1
  %255 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %entries.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i82, i32 %256)
  %cmp4111.i.i = icmp slt i32 %add.i.i82, %256
  br i1 %cmp4111.i.i, label %for.body5.lr.ph.i.i, label %for.body.i.i.for.cond.loopexit.i.i_crit_edge

for.body.i.i.for.cond.loopexit.i.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit.i.i

for.body5.lr.ph.i.i:                              ; preds = %for.body.i.i
  %i2c_index9.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %i.0115.i.i, i32 4
  %type14.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %i.0115.i.i, i32 3
  %location19.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %i.0115.i.i, i32 8
  %or25.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %i.0115.i.i, i32 9
  %heads37.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %i.0115.i.i, i32 5
  br label %for.body5.i.i

for.body5.i.i:                                    ; preds = %cleanup.i.i.for.body5.i.i_crit_edge, %for.body5.lr.ph.i.i
  %j.0112.i.i = phi i32 [ %add.i.i82, %for.body5.lr.ph.i.i ], [ %inc.i.i, %cleanup.i.i.for.body5.i.i_crit_edge ]
  %type.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %j.0112.i.i, i32 3
  %257 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %258)
  %cmp8.i.i = icmp eq i32 %258, 100
  br i1 %cmp8.i.i, label %for.body5.i.i.cleanup.i.i_crit_edge, label %if.end.i.i83

for.body5.i.i.cleanup.i.i_crit_edge:              ; preds = %for.body5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

if.end.i.i83:                                     ; preds = %for.body5.i.i
  %i2c_index.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %j.0112.i.i, i32 4
  %259 = ptrtoint ptr %i2c_index.i.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %i2c_index.i.i, align 4
  %261 = ptrtoint ptr %i2c_index9.i.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %i2c_index9.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %260, i8 %262)
  %cmp11.i.i = icmp eq i8 %260, %262
  br i1 %cmp11.i.i, label %land.lhs.true.i.i, label %if.end.i.i83.cleanup.i.i_crit_edge

if.end.i.i83.cleanup.i.i_crit_edge:               ; preds = %if.end.i.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i83
  %263 = ptrtoint ptr %type14.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %type14.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %258, i32 %264)
  %cmp15.i.i = icmp eq i32 %258, %264
  br i1 %cmp15.i.i, label %land.lhs.true17.i.i, label %land.lhs.true.i.i.cleanup.i.i_crit_edge

land.lhs.true.i.i.cleanup.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

land.lhs.true17.i.i:                              ; preds = %land.lhs.true.i.i
  %location.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %j.0112.i.i, i32 8
  %265 = ptrtoint ptr %location.i.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %location.i.i, align 4
  %267 = ptrtoint ptr %location19.i.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %location19.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %266, i8 %268)
  %cmp21.i.i = icmp eq i8 %266, %268
  br i1 %cmp21.i.i, label %land.lhs.true23.i.i, label %land.lhs.true17.i.i.cleanup.i.i_crit_edge

land.lhs.true17.i.i.cleanup.i.i_crit_edge:        ; preds = %land.lhs.true17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

land.lhs.true23.i.i:                              ; preds = %land.lhs.true17.i.i
  %or.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %j.0112.i.i, i32 9
  %269 = ptrtoint ptr %or.i.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %or.i.i, align 1
  %271 = ptrtoint ptr %or25.i.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %or25.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %270, i8 %272)
  %cmp27.i.i = icmp eq i8 %270, %272
  br i1 %cmp27.i.i, label %do.body.i.i, label %land.lhs.true23.i.i.cleanup.i.i_crit_edge

land.lhs.true23.i.i.cleanup.i.i_crit_edge:        ; preds = %land.lhs.true23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

do.body.i.i:                                      ; preds = %land.lhs.true23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %273 = ptrtoint ptr %drm31.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %drm31.i.i, align 8
  %dev32.i.i84 = getelementptr inbounds %struct.nouveau_drm, ptr %274, i32 0, i32 3
  %275 = ptrtoint ptr %dev32.i.i84 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %dev32.i.i84, align 8
  %dev33.i.i = getelementptr inbounds %struct.drm_device, ptr %276, i32 0, i32 2
  %277 = ptrtoint ptr %dev33.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %dev33.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %278, ptr noundef nonnull @.str.115, ptr noundef %name.i.i81, i32 noundef %i.0115.i.i, i32 noundef %j.0112.i.i) #12
  %heads.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %j.0112.i.i, i32 5
  %279 = ptrtoint ptr %heads.i.i to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %heads.i.i, align 1
  %281 = ptrtoint ptr %heads37.i.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %heads37.i.i, align 1
  %or39110.i.i = or i8 %282, %280
  store i8 %or39110.i.i, ptr %heads37.i.i, align 1
  %283 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 100, ptr %type.i.i, align 4
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %do.body.i.i, %land.lhs.true23.i.i.cleanup.i.i_crit_edge, %land.lhs.true17.i.i.cleanup.i.i_crit_edge, %land.lhs.true.i.i.cleanup.i.i_crit_edge, %if.end.i.i83.cleanup.i.i_crit_edge, %for.body5.i.i.cleanup.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %j.0112.i.i, 1
  %284 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %entries.i.i, align 4
  %cmp4.i.i = icmp slt i32 %inc.i.i, %285
  br i1 %cmp4.i.i, label %cleanup.i.i.for.body5.i.i_crit_edge, label %cleanup.i.i.for.cond.loopexit.i.i_crit_edge

cleanup.i.i.for.cond.loopexit.i.i_crit_edge:      ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit.i.i

cleanup.i.i.for.body5.i.i_crit_edge:              ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5.i.i

for.body50.i.i:                                   ; preds = %for.inc69.i.i.for.body50.i.i_crit_edge, %for.cond46.preheader.i.i.for.body50.i.i_crit_edge
  %newentries.0118.i.i = phi i32 [ %newentries.1.i.i, %for.inc69.i.i.for.body50.i.i_crit_edge ], [ 0, %for.cond46.preheader.i.i.for.body50.i.i_crit_edge ]
  %i.1117.i.i = phi i32 [ %inc70.i.i, %for.inc69.i.i.for.body50.i.i_crit_edge ], [ 0, %for.cond46.preheader.i.i.for.body50.i.i_crit_edge ]
  %arrayidx52.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %i.1117.i.i
  %type53.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %i.1117.i.i, i32 3
  %286 = ptrtoint ptr %type53.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %type53.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %287)
  %cmp54.i.i = icmp eq i32 %287, 100
  br i1 %cmp54.i.i, label %for.body50.i.i.for.inc69.i.i_crit_edge, label %if.end57.i.i

for.body50.i.i.for.inc69.i.i_crit_edge:           ; preds = %for.body50.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc69.i.i

if.end57.i.i:                                     ; preds = %for.body50.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %newentries.0118.i.i, i32 %i.1117.i.i)
  %cmp58.not.i.i = icmp eq i32 %newentries.0118.i.i, %i.1117.i.i
  br i1 %cmp58.not.i.i, label %if.end57.i.i.if.end67.i.i_crit_edge, label %if.then60.i.i

if.end57.i.i.if.end67.i.i_crit_edge:              ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i.i

if.then60.i.i:                                    ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx62.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %newentries.0118.i.i
  %288 = call ptr @memcpy(ptr %arrayidx62.i.i, ptr %arrayidx52.i.i, i32 40)
  %289 = ptrtoint ptr %arrayidx62.i.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %newentries.0118.i.i, ptr %arrayidx62.i.i, align 4
  br label %if.end67.i.i

if.end67.i.i:                                     ; preds = %if.then60.i.i, %if.end57.i.i.if.end67.i.i_crit_edge
  %inc68.i.i = add i32 %newentries.0118.i.i, 1
  br label %for.inc69.i.i

for.inc69.i.i:                                    ; preds = %if.end67.i.i, %for.body50.i.i.for.inc69.i.i_crit_edge
  %newentries.1.i.i = phi i32 [ %newentries.0118.i.i, %for.body50.i.i.for.inc69.i.i_crit_edge ], [ %inc68.i.i, %if.end67.i.i ]
  %inc70.i.i = add nuw nsw i32 %i.1117.i.i, 1
  %290 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %entries.i.i, align 4
  %cmp48.i.i = icmp slt i32 %inc70.i.i, %291
  br i1 %cmp48.i.i, label %for.inc69.i.i.for.body50.i.i_crit_edge, label %for.inc69.i.i.merge_like_dcb_entries.exit.i_crit_edge

for.inc69.i.i.merge_like_dcb_entries.exit.i_crit_edge: ; preds = %for.inc69.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %merge_like_dcb_entries.exit.i

for.inc69.i.i.for.body50.i.i_crit_edge:           ; preds = %for.inc69.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body50.i.i

merge_like_dcb_entries.exit.i:                    ; preds = %for.inc69.i.i.merge_like_dcb_entries.exit.i_crit_edge, %for.cond46.preheader.i.i.merge_like_dcb_entries.exit.i_crit_edge, %if.then19.i.merge_like_dcb_entries.exit.i_crit_edge
  %newentries.0.lcssa.i.i = phi i32 [ 0, %for.cond46.preheader.i.i.merge_like_dcb_entries.exit.i_crit_edge ], [ 0, %if.then19.i.merge_like_dcb_entries.exit.i_crit_edge ], [ %newentries.1.i.i, %for.inc69.i.i.merge_like_dcb_entries.exit.i_crit_edge ]
  %292 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %newentries.0.lcssa.i.i, ptr %entries.i.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %merge_like_dcb_entries.exit.i, %do.body.i.if.end20.i_crit_edge
  %call.i.i138.i = tail call ptr @olddcb_table(ptr noundef %dev) #9
  %tobool.not.i.i139.i = icmp eq ptr %call.i.i138.i, null
  br i1 %tobool.not.i.i139.i, label %if.end20.i.while.end.i_crit_edge, label %if.end20.i.land.lhs.true.i.i.i_crit_edge

if.end20.i.land.lhs.true.i.i.i_crit_edge:         ; preds = %if.end20.i
  br label %land.lhs.true.i.i.i

if.end20.i.while.end.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

land.lhs.true.i.i.i:                              ; preds = %if.end67.i.land.lhs.true.i.i.i_crit_edge, %if.end20.i.land.lhs.true.i.i.i_crit_edge
  %call.i.i142.i = phi ptr [ %call.i.i.i, %if.end67.i.land.lhs.true.i.i.i_crit_edge ], [ %call.i.i138.i, %if.end20.i.land.lhs.true.i.i.i_crit_edge ]
  %conv21141.i = phi i8 [ %conv21.i, %if.end67.i.land.lhs.true.i.i.i_crit_edge ], [ 0, %if.end20.i.land.lhs.true.i.i.i_crit_edge ]
  %inc140.i = phi i32 [ %inc.i, %if.end67.i.land.lhs.true.i.i.i_crit_edge ], [ 0, %if.end20.i.land.lhs.true.i.i.i_crit_edge ]
  %293 = ptrtoint ptr %call.i.i142.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %call.i.i142.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %294)
  %cmp.i.i96.i = icmp ugt i8 %294, 47
  br i1 %cmp.i.i96.i, label %land.lhs.true2.i.i.i, label %land.lhs.true.i.i.i.while.end.i_crit_edge

land.lhs.true.i.i.i.while.end.i_crit_edge:        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %arrayidx3.i.i.i = getelementptr i8, ptr %call.i.i142.i, i32 1
  %295 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %arrayidx3.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %296)
  %cmp5.i.i.i = icmp ugt i8 %296, 21
  br i1 %cmp5.i.i.i, label %if.then.i.i.i, label %land.lhs.true2.i.i.i.while.end.i_crit_edge

land.lhs.true2.i.i.i.while.end.i_crit_edge:       ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  %arrayidx8.i.i.i = getelementptr i8, ptr %call.i.i142.i, i32 20
  %297 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %297, i32 2)
  %298 = load i16, ptr %arrayidx8.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %298)
  %tobool11.not.i.i.i = icmp eq i16 %298, 0
  br i1 %tobool11.not.i.i.i, label %if.then.i.i.i.while.end.i_crit_edge, label %cond.end.i.i.i

if.then.i.i.i.while.end.i_crit_edge:              ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

cond.end.i.i.i:                                   ; preds = %if.then.i.i.i
  %299 = tail call i16 @llvm.bswap.i16(i16 %298) #9
  %300 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %dev_private.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %301, i32 0, i32 18, i32 4
  %302 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %data.i.i.i, align 4
  %idxprom.i.i.i85 = zext i16 %299 to i32
  %arrayidx14.i.i.i = getelementptr i8, ptr %303, i32 %idxprom.i.i.i85
  %tobool15.not.i.i.i = icmp eq ptr %arrayidx14.i.i.i, null
  br i1 %tobool15.not.i.i.i, label %cond.end.i.i.i.while.end.i_crit_edge, label %land.lhs.true16.i.i.i

cond.end.i.i.i.while.end.i_crit_edge:             ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

land.lhs.true16.i.i.i:                            ; preds = %cond.end.i.i.i
  %304 = ptrtoint ptr %arrayidx14.i.i.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %arrayidx14.i.i.i, align 1
  %306 = add i8 %305, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %306)
  %307 = icmp ult i8 %306, 17
  br i1 %307, label %land.lhs.true.i99.i, label %land.lhs.true16.i.i.i.while.end.i_crit_edge

land.lhs.true16.i.i.i.while.end.i_crit_edge:      ; preds = %land.lhs.true16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

land.lhs.true.i99.i:                              ; preds = %land.lhs.true16.i.i.i
  %arrayidx.i.i86 = getelementptr i8, ptr %arrayidx14.i.i.i, i32 2
  %308 = ptrtoint ptr %arrayidx.i.i86 to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %arrayidx.i.i86, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %309, i8 %conv21141.i)
  %cmp.i98.i = icmp ugt i8 %309, %conv21141.i
  br i1 %cmp.i98.i, label %olddcb_conn.exit.i, label %land.lhs.true.i99.i.while.end.i_crit_edge

land.lhs.true.i99.i.while.end.i_crit_edge:        ; preds = %land.lhs.true.i99.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

olddcb_conn.exit.i:                               ; preds = %land.lhs.true.i99.i
  %conv.i.i87 = and i32 %inc140.i, 255
  %arrayidx3.i.i = getelementptr i8, ptr %arrayidx14.i.i.i, i32 1
  %310 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %arrayidx3.i.i, align 1
  %conv4.i100.i = zext i8 %311 to i32
  %add.ptr.i.i = getelementptr i8, ptr %arrayidx14.i.i.i, i32 %conv4.i100.i
  %arrayidx6.i.i = getelementptr i8, ptr %arrayidx14.i.i.i, i32 3
  %312 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %arrayidx6.i.i, align 1
  %conv7.i.i88 = zext i8 %313 to i32
  %mul.i.i89 = mul nuw nsw i32 %conv.i.i87, %conv7.i.i88
  %add.ptr8.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i89
  %tobool23.not.i = icmp eq ptr %add.ptr8.i.i, null
  br i1 %tobool23.not.i, label %olddcb_conn.exit.i.while.end.i_crit_edge, label %while.body.i

olddcb_conn.exit.i.while.end.i_crit_edge:         ; preds = %olddcb_conn.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i:                                     ; preds = %olddcb_conn.exit.i
  %314 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %add.ptr8.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %315)
  %cmp26.not.i = icmp eq i8 %315, -1
  br i1 %cmp26.not.i, label %while.body.i.if.end67.i_crit_edge, label %if.then28.i

while.body.i.if.end67.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i

if.then28.i:                                      ; preds = %while.body.i
  %call.i.i90 = tail call ptr @olddcb_table(ptr noundef %dev) #9
  %tobool.not.i103.i = icmp eq ptr %call.i.i90, null
  br i1 %tobool.not.i103.i, label %if.then28.i.olddcb_conntab.exit.i_crit_edge, label %land.lhs.true.i105.i

if.then28.i.olddcb_conntab.exit.i_crit_edge:      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %olddcb_conntab.exit.i

land.lhs.true.i105.i:                             ; preds = %if.then28.i
  %316 = ptrtoint ptr %call.i.i90 to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %call.i.i90, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %317)
  %cmp.i104.i = icmp ugt i8 %317, 47
  br i1 %cmp.i104.i, label %land.lhs.true2.i.i, label %land.lhs.true.i105.i.olddcb_conntab.exit.i_crit_edge

land.lhs.true.i105.i.olddcb_conntab.exit.i_crit_edge: ; preds = %land.lhs.true.i105.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %olddcb_conntab.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i105.i
  %arrayidx3.i106.i = getelementptr i8, ptr %call.i.i90, i32 1
  %318 = ptrtoint ptr %arrayidx3.i106.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %arrayidx3.i106.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %319)
  %cmp5.i.i = icmp ugt i8 %319, 21
  br i1 %cmp5.i.i, label %if.then.i107.i, label %land.lhs.true2.i.i.olddcb_conntab.exit.i_crit_edge

land.lhs.true2.i.i.olddcb_conntab.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %olddcb_conntab.exit.i

if.then.i107.i:                                   ; preds = %land.lhs.true2.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %call.i.i90, i32 20
  %320 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_loadN_noabort(i32 %320, i32 2)
  %321 = load i16, ptr %arrayidx8.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %321)
  %tobool11.not.i.i = icmp eq i16 %321, 0
  br i1 %tobool11.not.i.i, label %if.then.i107.i.if.end27.critedge.i.i_crit_edge, label %cond.end.i.i

if.then.i107.i.if.end27.critedge.i.i_crit_edge:   ; preds = %if.then.i107.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.critedge.i.i

cond.end.i.i:                                     ; preds = %if.then.i107.i
  %322 = tail call i16 @llvm.bswap.i16(i16 %321) #9
  %323 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %dev_private.i, align 4
  %data.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %324, i32 0, i32 18, i32 4
  %325 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %data.i.i, align 4
  %idxprom.i.i = zext i16 %322 to i32
  %arrayidx14.i.i = getelementptr i8, ptr %326, i32 %idxprom.i.i
  %tobool15.not.i.i = icmp eq ptr %arrayidx14.i.i, null
  br i1 %tobool15.not.i.i, label %cond.end.i.i.if.end27.critedge.i.i_crit_edge, label %land.lhs.true16.i.i

cond.end.i.i.if.end27.critedge.i.i_crit_edge:     ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.critedge.i.i

land.lhs.true16.i.i:                              ; preds = %cond.end.i.i
  %327 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %arrayidx14.i.i, align 1
  %329 = add i8 %328, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %329)
  %330 = icmp ult i8 %329, 17
  br i1 %330, label %land.lhs.true16.i.i.olddcb_conntab.exit.i_crit_edge, label %land.lhs.true16.i.i.if.end27.critedge.i.i_crit_edge

land.lhs.true16.i.i.if.end27.critedge.i.i_crit_edge: ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.critedge.i.i

land.lhs.true16.i.i.olddcb_conntab.exit.i_crit_edge: ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %olddcb_conntab.exit.i

if.end27.critedge.i.i:                            ; preds = %land.lhs.true16.i.i.if.end27.critedge.i.i_crit_edge, %cond.end.i.i.if.end27.critedge.i.i_crit_edge, %if.then.i107.i.if.end27.critedge.i.i_crit_edge
  br label %olddcb_conntab.exit.i

olddcb_conntab.exit.i:                            ; preds = %if.end27.critedge.i.i, %land.lhs.true16.i.i.olddcb_conntab.exit.i_crit_edge, %land.lhs.true2.i.i.olddcb_conntab.exit.i_crit_edge, %land.lhs.true.i105.i.olddcb_conntab.exit.i_crit_edge, %if.then28.i.olddcb_conntab.exit.i_crit_edge
  %retval.1.i.i = phi ptr [ %arrayidx14.i.i, %land.lhs.true16.i.i.olddcb_conntab.exit.i_crit_edge ], [ null, %if.end27.critedge.i.i ], [ null, %land.lhs.true2.i.i.olddcb_conntab.exit.i_crit_edge ], [ null, %land.lhs.true.i105.i.olddcb_conntab.exit.i_crit_edge ], [ null, %if.then28.i.olddcb_conntab.exit.i_crit_edge ]
  %arrayidx30.i = getelementptr i8, ptr %retval.1.i.i, i32 3
  %331 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %arrayidx30.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %332)
  %cmp32.i = icmp ult i8 %332, 4
  %333 = ptrtoint ptr %drm6.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %drm6.i, align 8
  %dev42.i = getelementptr inbounds %struct.nouveau_drm, ptr %334, i32 0, i32 3
  %335 = ptrtoint ptr %dev42.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %dev42.i, align 8
  %dev43.i = getelementptr inbounds %struct.drm_device, ptr %336, i32 0, i32 2
  %337 = ptrtoint ptr %dev43.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %dev43.i, align 4
  br i1 %cmp32.i, label %do.body35.i, label %do.body51.i

do.body35.i:                                      ; preds = %olddcb_conntab.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %339 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_loadN_noabort(i32 %339, i32 2)
  %340 = load i16, ptr %add.ptr8.i.i, align 1
  %341 = tail call i16 @llvm.bswap.i16(i16 %340) #9
  %conv48.i = zext i16 %341 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %338, ptr noundef nonnull @.str.104, ptr noundef %name.i, i32 noundef %inc140.i, i32 noundef %conv48.i) #12
  br label %if.end67.i

do.body51.i:                                      ; preds = %olddcb_conntab.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %342 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_loadN_noabort(i32 %342, i32 4)
  %343 = load i32, ptr %add.ptr8.i.i, align 1
  %344 = tail call i32 @llvm.bswap.i32(i32 %343) #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %338, ptr noundef nonnull @.str.107, ptr noundef %name.i, i32 noundef %inc140.i, i32 noundef %344) #12
  br label %if.end67.i

if.end67.i:                                       ; preds = %do.body51.i, %do.body35.i, %while.body.i.if.end67.i_crit_edge
  %inc.i = add i32 %inc140.i, 1
  %conv21.i = trunc i32 %inc.i to i8
  %call.i.i.i = tail call ptr @olddcb_table(ptr noundef %dev) #9
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end67.i.while.end.i_crit_edge, label %if.end67.i.land.lhs.true.i.i.i_crit_edge

if.end67.i.land.lhs.true.i.i.i_crit_edge:         ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i.i

if.end67.i.while.end.i_crit_edge:                 ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %if.end67.i.while.end.i_crit_edge, %olddcb_conn.exit.i.while.end.i_crit_edge, %land.lhs.true.i99.i.while.end.i_crit_edge, %land.lhs.true16.i.i.i.while.end.i_crit_edge, %cond.end.i.i.i.while.end.i_crit_edge, %if.then.i.i.i.while.end.i_crit_edge, %land.lhs.true2.i.i.i.while.end.i_crit_edge, %land.lhs.true.i.i.i.while.end.i_crit_edge, %if.end20.i.while.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i.i) #9
  %345 = call ptr @memset(ptr %map.i.i, i32 0, i32 16)
  %346 = ptrtoint ptr %vbios to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %vbios, align 4
  %dev1.i.i109.i = getelementptr inbounds %struct.drm_device, ptr %347, i32 0, i32 2
  %348 = ptrtoint ptr %dev1.i.i109.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %dev1.i.i109.i, align 4
  %device2.i.i.i = getelementptr i8, ptr %349, i32 -102
  %350 = ptrtoint ptr %device2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %350)
  %351 = load i16, ptr %device2.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 914, i16 %351)
  %cmp.i.i110.i = icmp eq i16 %351, 914
  br i1 %cmp.i.i110.i, label %land.lhs.true.i.i112.i, label %while.end.i.for.cond.preheader.i.i_crit_edge

while.end.i.for.cond.preheader.i.i_crit_edge:     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.i.i

land.lhs.true.i.i112.i:                           ; preds = %while.end.i
  %subsystem_vendor.i.i.i = getelementptr i8, ptr %349, i32 -100
  %352 = ptrtoint ptr %subsystem_vendor.i.i.i to i32
  call void @__asan_load2_noabort(i32 %352)
  %353 = load i16, ptr %subsystem_vendor.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4221, i16 %353)
  %cmp5.i.i111.i = icmp eq i16 %353, 4221
  br i1 %cmp5.i.i111.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i112.i.for.cond.preheader.i.i_crit_edge

land.lhs.true.i.i112.i.for.cond.preheader.i.i_crit_edge: ; preds = %land.lhs.true.i.i112.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i112.i
  %subsystem_device.i.i.i = getelementptr i8, ptr %349, i32 -98
  %354 = ptrtoint ptr %subsystem_device.i.i.i to i32
  call void @__asan_load2_noabort(i32 %354)
  %355 = load i16, ptr %subsystem_device.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8354, i16 %355)
  %cmp8.i.i.i = icmp eq i16 %355, 8354
  br i1 %cmp8.i.i.i, label %land.rhs.i.i.i.if.end3.i.i_crit_edge, label %land.rhs.i.i.i.for.cond.preheader.i.i_crit_edge

land.rhs.i.i.i.for.cond.preheader.i.i_crit_edge:  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.i.i

land.rhs.i.i.i.if.end3.i.i_crit_edge:             ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i.i

for.cond.preheader.i.i:                           ; preds = %land.rhs.i.i.i.for.cond.preheader.i.i_crit_edge, %land.lhs.true.i.i112.i.for.cond.preheader.i.i_crit_edge, %while.end.i.for.cond.preheader.i.i_crit_edge
  %entries.i113.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 1
  %356 = ptrtoint ptr %entries.i113.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %entries.i113.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %357)
  %cmp75.i.i = icmp sgt i32 %357, 0
  br i1 %cmp75.i.i, label %for.cond.preheader.i.i.for.body.i116.i_crit_edge, label %for.cond.preheader.i.i.if.end3.i.i_crit_edge

for.cond.preheader.i.i.if.end3.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i.i

for.cond.preheader.i.i.for.body.i116.i_crit_edge: ; preds = %for.cond.preheader.i.i
  br label %for.body.i116.i

for.cond.i.i:                                     ; preds = %for.body.i116.i
  %inc.i114.i = add nuw nsw i32 %i.076.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i114.i, %357
  br i1 %exitcond.not.i.i, label %for.cond.i.i.if.end3.i.i_crit_edge, label %for.cond.i.i.for.body.i116.i_crit_edge

for.cond.i.i.for.body.i116.i_crit_edge:           ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i116.i

for.cond.i.i.if.end3.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i.i

for.body.i116.i:                                  ; preds = %for.cond.i.i.for.body.i116.i_crit_edge, %for.cond.preheader.i.i.for.body.i116.i_crit_edge
  %i.076.i.i = phi i32 [ %inc.i114.i, %for.cond.i.i.for.body.i116.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i116.i_crit_edge ]
  %connector.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %i.076.i.i, i32 6
  %358 = ptrtoint ptr %connector.i.i to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %connector.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %359)
  %tobool.not.i115.i = icmp eq i8 %359, 0
  br i1 %tobool.not.i115.i, label %for.cond.i.i, label %for.body.i116.i.dcb_fake_connectors.exit.i_crit_edge

for.body.i116.i.dcb_fake_connectors.exit.i_crit_edge: ; preds = %for.body.i116.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dcb_fake_connectors.exit.i

if.end3.i.i:                                      ; preds = %for.cond.i.i.if.end3.i.i_crit_edge, %for.cond.preheader.i.i.if.end3.i.i_crit_edge, %land.rhs.i.i.i.if.end3.i.i_crit_edge
  %entries5.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 1
  %360 = ptrtoint ptr %entries5.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %entries5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %361)
  %cmp677.i.i = icmp sgt i32 %361, 0
  br i1 %cmp677.i.i, label %if.end3.i.i.for.body7.i.i_crit_edge, label %if.end3.i.i.dcb_fake_connectors.exit.i_crit_edge

if.end3.i.i.dcb_fake_connectors.exit.i_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dcb_fake_connectors.exit.i

if.end3.i.i.for.body7.i.i_crit_edge:              ; preds = %if.end3.i.i
  br label %for.body7.i.i

for.body7.i.i:                                    ; preds = %if.end33.i.i.for.body7.i.i_crit_edge, %if.end3.i.i.for.body7.i.i_crit_edge
  %idx.080.i.i = phi i32 [ %idx.2.i.i, %if.end33.i.i.for.body7.i.i_crit_edge ], [ 0, %if.end3.i.i.for.body7.i.i_crit_edge ]
  %i.178.i.i = phi i32 [ %inc35.i.i, %if.end33.i.i.for.body7.i.i_crit_edge ], [ 0, %if.end3.i.i.for.body7.i.i_crit_edge ]
  %i2c_index.i117.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %i.178.i.i, i32 4
  %362 = ptrtoint ptr %i2c_index.i117.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %i2c_index.i117.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %363)
  %cmp10.i.i = icmp eq i8 %363, 15
  br i1 %cmp10.i.i, label %if.then12.i.i, label %if.else.i119.i

if.then12.i.i:                                    ; preds = %for.body7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc13.i.i = add i32 %idx.080.i.i, 1
  %conv14.i.i = trunc i32 %idx.080.i.i to i8
  br label %if.end33.i.i

if.else.i119.i:                                   ; preds = %for.body7.i.i
  %conv.i118.i = zext i8 %363 to i32
  %arrayidx18.i.i = getelementptr [16 x i8], ptr %map.i.i, i32 0, i32 %conv.i118.i
  %364 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %arrayidx18.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %365)
  %tobool19.not.i.i = icmp eq i8 %365, 0
  br i1 %tobool19.not.i.i, label %if.then20.i.i, label %if.else.i119.i.if.end25.i.i_crit_edge

if.else.i119.i.if.end25.i.i_crit_edge:            ; preds = %if.else.i119.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i.i

if.then20.i.i:                                    ; preds = %if.else.i119.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc21.i.i = add i32 %idx.080.i.i, 1
  %conv22.i.i = trunc i32 %inc21.i.i to i8
  %366 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store1_noabort(i32 %366)
  store i8 %conv22.i.i, ptr %arrayidx18.i.i, align 1
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.then20.i.i, %if.else.i119.i.if.end25.i.i_crit_edge
  %idx.1.i.i = phi i32 [ %idx.080.i.i, %if.else.i119.i.if.end25.i.i_crit_edge ], [ %inc21.i.i, %if.then20.i.i ]
  %367 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %arrayidx18.i.i, align 1
  %sub.i.i = add i8 %368, -1
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.end25.i.i, %if.then12.i.i
  %sub.sink.i.i = phi i8 [ %sub.i.i, %if.end25.i.i ], [ %conv14.i.i, %if.then12.i.i ]
  %idx.2.i.i = phi i32 [ %idx.1.i.i, %if.end25.i.i ], [ %inc13.i.i, %if.then12.i.i ]
  %connector32.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %i.178.i.i, i32 6
  %369 = ptrtoint ptr %connector32.i.i to i32
  call void @__asan_store1_noabort(i32 %369)
  store i8 %sub.sink.i.i, ptr %connector32.i.i, align 2
  %inc35.i.i = add nuw nsw i32 %i.178.i.i, 1
  %370 = ptrtoint ptr %entries5.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %entries5.i.i, align 4
  %cmp6.i.i = icmp slt i32 %inc35.i.i, %371
  br i1 %cmp6.i.i, label %if.end33.i.i.for.body7.i.i_crit_edge, label %for.end36.i.i

if.end33.i.i.for.body7.i.i_crit_edge:             ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body7.i.i

for.end36.i.i:                                    ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.178.i.i)
  %phi.cmp.not.i.i = icmp eq i32 %i.178.i.i, 0
  br i1 %phi.cmp.not.i.i, label %for.end36.i.i.dcb_fake_connectors.exit.i_crit_edge, label %if.then39.i.i

for.end36.i.i.dcb_fake_connectors.exit.i_crit_edge: ; preds = %for.end36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dcb_fake_connectors.exit.i

if.then39.i.i:                                    ; preds = %for.end36.i.i
  %call.i.i120.i = tail call ptr @olddcb_table(ptr noundef %347) #9
  %tobool.not.i.i121.i = icmp eq ptr %call.i.i120.i, null
  br i1 %tobool.not.i.i121.i, label %if.then39.i.i.dcb_fake_connectors.exit.i_crit_edge, label %land.lhs.true.i71.i.i

if.then39.i.i.dcb_fake_connectors.exit.i_crit_edge: ; preds = %if.then39.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dcb_fake_connectors.exit.i

land.lhs.true.i71.i.i:                            ; preds = %if.then39.i.i
  %372 = ptrtoint ptr %call.i.i120.i to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %call.i.i120.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %373)
  %cmp.i70.i.i = icmp ugt i8 %373, 47
  br i1 %cmp.i70.i.i, label %land.lhs.true2.i.i123.i, label %land.lhs.true.i71.i.i.dcb_fake_connectors.exit.i_crit_edge

land.lhs.true.i71.i.i.dcb_fake_connectors.exit.i_crit_edge: ; preds = %land.lhs.true.i71.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dcb_fake_connectors.exit.i

land.lhs.true2.i.i123.i:                          ; preds = %land.lhs.true.i71.i.i
  %arrayidx3.i.i122.i = getelementptr i8, ptr %call.i.i120.i, i32 1
  %374 = ptrtoint ptr %arrayidx3.i.i122.i to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %arrayidx3.i.i122.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %375)
  %cmp5.i72.i.i = icmp ugt i8 %375, 21
  br i1 %cmp5.i72.i.i, label %if.then.i.i126.i, label %land.lhs.true2.i.i123.i.dcb_fake_connectors.exit.i_crit_edge

land.lhs.true2.i.i123.i.dcb_fake_connectors.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i123.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dcb_fake_connectors.exit.i

if.then.i.i126.i:                                 ; preds = %land.lhs.true2.i.i123.i
  %arrayidx8.i.i124.i = getelementptr i8, ptr %call.i.i120.i, i32 20
  %376 = ptrtoint ptr %arrayidx8.i.i124.i to i32
  call void @__asan_loadN_noabort(i32 %376, i32 2)
  %377 = load i16, ptr %arrayidx8.i.i124.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %377)
  %tobool11.not.i.i125.i = icmp eq i16 %377, 0
  br i1 %tobool11.not.i.i125.i, label %if.then.i.i126.i.dcb_fake_connectors.exit.i_crit_edge, label %cond.end.i.i132.i

if.then.i.i126.i.dcb_fake_connectors.exit.i_crit_edge: ; preds = %if.then.i.i126.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dcb_fake_connectors.exit.i

cond.end.i.i132.i:                                ; preds = %if.then.i.i126.i
  %378 = tail call i16 @llvm.bswap.i16(i16 %377) #9
  %dev_private.i.i.i127.i = getelementptr inbounds %struct.drm_device, ptr %347, i32 0, i32 5
  %379 = ptrtoint ptr %dev_private.i.i.i127.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %dev_private.i.i.i127.i, align 4
  %data.i.i128.i = getelementptr inbounds %struct.nouveau_drm, ptr %380, i32 0, i32 18, i32 4
  %381 = ptrtoint ptr %data.i.i128.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %data.i.i128.i, align 4
  %idxprom.i.i129.i = zext i16 %378 to i32
  %arrayidx14.i.i130.i = getelementptr i8, ptr %382, i32 %idxprom.i.i129.i
  %tobool15.not.i.i131.i = icmp eq ptr %arrayidx14.i.i130.i, null
  br i1 %tobool15.not.i.i131.i, label %cond.end.i.i132.i.dcb_fake_connectors.exit.i_crit_edge, label %land.lhs.true16.i.i133.i

cond.end.i.i132.i.dcb_fake_connectors.exit.i_crit_edge: ; preds = %cond.end.i.i132.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dcb_fake_connectors.exit.i

land.lhs.true16.i.i133.i:                         ; preds = %cond.end.i.i132.i
  %383 = ptrtoint ptr %arrayidx14.i.i130.i to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %arrayidx14.i.i130.i, align 1
  %385 = add i8 %384, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %385)
  %386 = icmp ult i8 %385, 17
  br i1 %386, label %if.then43.i.i, label %land.lhs.true16.i.i133.i.dcb_fake_connectors.exit.i_crit_edge

land.lhs.true16.i.i133.i.dcb_fake_connectors.exit.i_crit_edge: ; preds = %land.lhs.true16.i.i133.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dcb_fake_connectors.exit.i

if.then43.i.i:                                    ; preds = %land.lhs.true16.i.i133.i
  call void @__sanitizer_cov_trace_pc() #11
  %387 = ptrtoint ptr %arrayidx14.i.i130.i to i32
  call void @__asan_store1_noabort(i32 %387)
  store i8 0, ptr %arrayidx14.i.i130.i, align 1
  br label %dcb_fake_connectors.exit.i

dcb_fake_connectors.exit.i:                       ; preds = %if.then43.i.i, %land.lhs.true16.i.i133.i.dcb_fake_connectors.exit.i_crit_edge, %cond.end.i.i132.i.dcb_fake_connectors.exit.i_crit_edge, %if.then.i.i126.i.dcb_fake_connectors.exit.i_crit_edge, %land.lhs.true2.i.i123.i.dcb_fake_connectors.exit.i_crit_edge, %land.lhs.true.i71.i.i.dcb_fake_connectors.exit.i_crit_edge, %if.then39.i.i.dcb_fake_connectors.exit.i_crit_edge, %for.end36.i.i.dcb_fake_connectors.exit.i_crit_edge, %if.end3.i.i.dcb_fake_connectors.exit.i_crit_edge, %for.body.i116.i.dcb_fake_connectors.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i.i) #9
  br label %if.end7

if.end7:                                          ; preds = %dcb_fake_connectors.exit.i, %if.end19.sink.split.i.i, %lor.lhs.false.i.i78.if.end7_crit_edge
  %388 = ptrtoint ptr %major_version.i to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %major_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %389)
  %tobool8.not = icmp eq i8 %389, 0
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %execute = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 11
  %390 = ptrtoint ptr %execute to i32
  call void @__asan_store1_noabort(i32 %390)
  store i8 0, ptr %execute, align 4
  %391 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %dev_private.i, align 4
  %family.i = getelementptr inbounds %struct.nouveau_drm, ptr %392, i32 0, i32 2, i32 3, i32 1, i32 4
  %393 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %393)
  %394 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %394)
  %cmp.i93 = icmp ugt i8 %394, 5
  br i1 %cmp.i93, label %if.end10.if.end20_crit_edge, label %if.end.i

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end.i:                                         ; preds = %if.end10
  %device1.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %392, i32 0, i32 2, i32 3
  %map.i.i94 = getelementptr inbounds %struct.nouveau_drm, ptr %392, i32 0, i32 2, i32 3, i32 0, i32 6
  %395 = ptrtoint ptr %map.i.i94 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %map.i.i94, align 8
  %tobool.not.i.i95 = icmp eq ptr %396, null
  br i1 %tobool.not.i.i95, label %if.else.i.i98, label %if.then.i.i97, !prof !246

if.then.i.i97:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i96 = getelementptr i8, ptr %396, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i96, i8 6) #9, !srcloc !255
  br label %if.end.i.i99

if.else.i.i98:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nvif_object_wr(ptr noundef %device1.i.i, i32 noundef 1, i64 noundef 6296532, i32 noundef 6) #9
  br label %if.end.i.i99

if.end.i.i99:                                     ; preds = %if.else.i.i98, %if.then.i.i97
  %397 = ptrtoint ptr %map.i.i94 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %map.i.i94, align 8
  %tobool12.not.i.i = icmp eq ptr %398, null
  br i1 %tobool12.not.i.i, label %if.else27.i.i, label %if.then19.i.i, !prof !246

if.then19.i.i:                                    ; preds = %if.end.i.i99
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr24.i.i = getelementptr i8, ptr %398, i32 6296533
  %399 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i.i) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  %conv26.i.i = zext i8 %399 to i32
  br label %NVReadVgaCrtc.exit.i

if.else27.i.i:                                    ; preds = %if.end.i.i99
  call void @__sanitizer_cov_trace_pc() #11
  %call31.i.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i.i, i32 noundef 1, i64 noundef 6296533) #9
  br label %NVReadVgaCrtc.exit.i

NVReadVgaCrtc.exit.i:                             ; preds = %if.else27.i.i, %if.then19.i.i
  %_data.0.i.i = phi i32 [ %conv26.i.i, %if.then19.i.i ], [ %call31.i.i, %if.else27.i.i ]
  %conv3.i = and i32 %_data.0.i.i, 255
  %400 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %dev_private.i, align 4
  %device1.i34.i = getelementptr inbounds %struct.nouveau_drm, ptr %401, i32 0, i32 2, i32 3
  %map.i35.i = getelementptr inbounds %struct.nouveau_drm, ptr %401, i32 0, i32 2, i32 3, i32 0, i32 6
  %402 = ptrtoint ptr %map.i35.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %map.i35.i, align 8
  %tobool.not.i36.i = icmp eq ptr %403, null
  br i1 %tobool.not.i36.i, label %if.else.i39.i, label %if.then.i38.i, !prof !246

if.then.i38.i:                                    ; preds = %NVReadVgaCrtc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i37.i = getelementptr i8, ptr %403, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i37.i, i8 7) #9, !srcloc !255
  br label %if.end.i41.i

if.else.i39.i:                                    ; preds = %NVReadVgaCrtc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nvif_object_wr(ptr noundef %device1.i34.i, i32 noundef 1, i64 noundef 6296532, i32 noundef 7) #9
  br label %if.end.i41.i

if.end.i41.i:                                     ; preds = %if.else.i39.i, %if.then.i38.i
  %404 = ptrtoint ptr %map.i35.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %map.i35.i, align 8
  %tobool12.not.i40.i = icmp eq ptr %405, null
  br i1 %tobool12.not.i40.i, label %if.else27.i46.i, label %if.then19.i44.i, !prof !246

if.then19.i44.i:                                  ; preds = %if.end.i41.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr24.i42.i = getelementptr i8, ptr %405, i32 6296533
  %406 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i42.i) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  %conv26.i43.i = zext i8 %406 to i32
  br label %NVReadVgaCrtc.exit49.i

if.else27.i46.i:                                  ; preds = %if.end.i41.i
  call void @__sanitizer_cov_trace_pc() #11
  %call31.i45.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i34.i, i32 noundef 1, i64 noundef 6296533) #9
  br label %NVReadVgaCrtc.exit49.i

NVReadVgaCrtc.exit49.i:                           ; preds = %if.else27.i46.i, %if.then19.i44.i
  %_data.0.i47.i = phi i32 [ %conv26.i43.i, %if.then19.i44.i ], [ %call31.i45.i, %if.else27.i46.i ]
  %407 = shl i32 %_data.0.i47.i, 8
  %shl.i = and i32 %407, 256
  %or.i = or i32 %shl.i, %conv3.i
  %408 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %dev_private.i, align 4
  %device1.i51.i = getelementptr inbounds %struct.nouveau_drm, ptr %409, i32 0, i32 2, i32 3
  %map.i52.i = getelementptr inbounds %struct.nouveau_drm, ptr %409, i32 0, i32 2, i32 3, i32 0, i32 6
  %410 = ptrtoint ptr %map.i52.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %map.i52.i, align 8
  %tobool.not.i53.i = icmp eq ptr %411, null
  br i1 %tobool.not.i53.i, label %if.else.i56.i, label %if.then.i55.i, !prof !246

if.then.i55.i:                                    ; preds = %NVReadVgaCrtc.exit49.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i54.i = getelementptr i8, ptr %411, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i54.i, i8 7) #9, !srcloc !255
  br label %if.end.i58.i

if.else.i56.i:                                    ; preds = %NVReadVgaCrtc.exit49.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nvif_object_wr(ptr noundef %device1.i51.i, i32 noundef 1, i64 noundef 6296532, i32 noundef 7) #9
  br label %if.end.i58.i

if.end.i58.i:                                     ; preds = %if.else.i56.i, %if.then.i55.i
  %412 = ptrtoint ptr %map.i52.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %map.i52.i, align 8
  %tobool12.not.i57.i = icmp eq ptr %413, null
  br i1 %tobool12.not.i57.i, label %if.else27.i63.i, label %if.then19.i61.i, !prof !246

if.then19.i61.i:                                  ; preds = %if.end.i58.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr24.i59.i = getelementptr i8, ptr %413, i32 6296533
  %414 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i59.i) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  %conv26.i60.i = zext i8 %414 to i32
  br label %NVReadVgaCrtc.exit66.i

if.else27.i63.i:                                  ; preds = %if.end.i58.i
  call void @__sanitizer_cov_trace_pc() #11
  %call31.i62.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i51.i, i32 noundef 1, i64 noundef 6296533) #9
  br label %NVReadVgaCrtc.exit66.i

NVReadVgaCrtc.exit66.i:                           ; preds = %if.else27.i63.i, %if.then19.i61.i
  %_data.0.i64.i = phi i32 [ %conv26.i60.i, %if.then19.i61.i ], [ %call31.i62.i, %if.else27.i63.i ]
  %415 = shl i32 %_data.0.i64.i, 4
  %shl9.i = and i32 %415, 512
  %or10.i = or i32 %or.i, %shl9.i
  %416 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %dev_private.i, align 4
  %device1.i68.i = getelementptr inbounds %struct.nouveau_drm, ptr %417, i32 0, i32 2, i32 3
  %map.i69.i = getelementptr inbounds %struct.nouveau_drm, ptr %417, i32 0, i32 2, i32 3, i32 0, i32 6
  %418 = ptrtoint ptr %map.i69.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %map.i69.i, align 8
  %tobool.not.i70.i = icmp eq ptr %419, null
  br i1 %tobool.not.i70.i, label %if.else.i73.i, label %if.then.i72.i, !prof !246

if.then.i72.i:                                    ; preds = %NVReadVgaCrtc.exit66.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i71.i = getelementptr i8, ptr %419, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i71.i, i8 37) #9, !srcloc !255
  br label %if.end.i75.i

if.else.i73.i:                                    ; preds = %NVReadVgaCrtc.exit66.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nvif_object_wr(ptr noundef %device1.i68.i, i32 noundef 1, i64 noundef 6296532, i32 noundef 37) #9
  br label %if.end.i75.i

if.end.i75.i:                                     ; preds = %if.else.i73.i, %if.then.i72.i
  %420 = ptrtoint ptr %map.i69.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %map.i69.i, align 8
  %tobool12.not.i74.i = icmp eq ptr %421, null
  br i1 %tobool12.not.i74.i, label %if.else27.i80.i, label %if.then19.i78.i, !prof !246

if.then19.i78.i:                                  ; preds = %if.end.i75.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr24.i76.i = getelementptr i8, ptr %421, i32 6296533
  %422 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i76.i) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  %conv26.i77.i = zext i8 %422 to i32
  br label %NVReadVgaCrtc.exit83.i

if.else27.i80.i:                                  ; preds = %if.end.i75.i
  call void @__sanitizer_cov_trace_pc() #11
  %call31.i79.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i68.i, i32 noundef 1, i64 noundef 6296533) #9
  br label %NVReadVgaCrtc.exit83.i

NVReadVgaCrtc.exit83.i:                           ; preds = %if.else27.i80.i, %if.then19.i78.i
  %_data.0.i81.i = phi i32 [ %conv26.i77.i, %if.then19.i78.i ], [ %call31.i79.i, %if.else27.i80.i ]
  %423 = shl i32 %_data.0.i81.i, 10
  %shl14.i = and i32 %423, 1024
  %or15.i = or i32 %or10.i, %shl14.i
  %424 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %dev_private.i, align 4
  %device1.i85.i = getelementptr inbounds %struct.nouveau_drm, ptr %425, i32 0, i32 2, i32 3
  %map.i86.i = getelementptr inbounds %struct.nouveau_drm, ptr %425, i32 0, i32 2, i32 3, i32 0, i32 6
  %426 = ptrtoint ptr %map.i86.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %map.i86.i, align 8
  %tobool.not.i87.i = icmp eq ptr %427, null
  br i1 %tobool.not.i87.i, label %if.else.i90.i, label %if.then.i89.i, !prof !246

if.then.i89.i:                                    ; preds = %NVReadVgaCrtc.exit83.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i88.i = getelementptr i8, ptr %427, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i88.i, i8 65) #9, !srcloc !255
  br label %if.end.i92.i

if.else.i90.i:                                    ; preds = %NVReadVgaCrtc.exit83.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nvif_object_wr(ptr noundef %device1.i85.i, i32 noundef 1, i64 noundef 6296532, i32 noundef 65) #9
  br label %if.end.i92.i

if.end.i92.i:                                     ; preds = %if.else.i90.i, %if.then.i89.i
  %428 = ptrtoint ptr %map.i86.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %map.i86.i, align 8
  %tobool12.not.i91.i = icmp eq ptr %429, null
  br i1 %tobool12.not.i91.i, label %if.else27.i97.i, label %if.then19.i95.i, !prof !246

if.then19.i95.i:                                  ; preds = %if.end.i92.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr24.i93.i = getelementptr i8, ptr %429, i32 6296533
  %430 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i93.i) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  %conv26.i94.i = zext i8 %430 to i32
  br label %nouveau_bios_posted.exit

if.else27.i97.i:                                  ; preds = %if.end.i92.i
  call void @__sanitizer_cov_trace_pc() #11
  %call31.i96.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i85.i, i32 noundef 1, i64 noundef 6296533) #9
  br label %nouveau_bios_posted.exit

nouveau_bios_posted.exit:                         ; preds = %if.else27.i97.i, %if.then19.i95.i
  %_data.0.i98.i = phi i32 [ %conv26.i94.i, %if.then19.i95.i ], [ %call31.i96.i, %if.else27.i97.i ]
  %431 = shl i32 %_data.0.i98.i, 11
  %shl19.i = and i32 %431, 2048
  %or20.i = or i32 %or15.i, %shl19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or20.i)
  %cmp21.i.not = icmp eq i32 %or20.i, 0
  br i1 %cmp21.i.not, label %do.body, label %nouveau_bios_posted.exit.if.end20_crit_edge

nouveau_bios_posted.exit.if.end20_crit_edge:      ; preds = %nouveau_bios_posted.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

do.body:                                          ; preds = %nouveau_bios_posted.exit
  call void @__sanitizer_cov_trace_pc() #11
  %drm14 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %432 = ptrtoint ptr %drm14 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %drm14, align 8
  %dev15 = getelementptr inbounds %struct.nouveau_drm, ptr %433, i32 0, i32 3
  %434 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %dev15, align 8
  %dev16 = getelementptr inbounds %struct.drm_device, ptr %435, i32 0, i32 2
  %436 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %dev16, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %437, ptr noundef nonnull @.str.28, ptr noundef %name) #12
  %438 = ptrtoint ptr %execute to i32
  call void @__asan_store1_noabort(i32 %438)
  store i8 1, ptr %execute, align 4
  br label %if.end20

if.end20:                                         ; preds = %do.body, %nouveau_bios_posted.exit.if.end20_crit_edge, %if.end10.if.end20_crit_edge
  %call21 = tail call i32 @nouveau_run_vbios_init(ptr noundef %dev)
  %439 = ptrtoint ptr %major_version.i to i32
  call void @__asan_load1_noabort(i32 %439)
  %440 = load i8, ptr %major_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %440)
  %cmp26 = icmp ult i8 %440, 5
  br i1 %cmp26, label %if.then28, label %if.end20.if.end32_crit_edge

if.end20.if.end32_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then28:                                        ; preds = %if.end20
  %441 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %dev_private.i, align 4
  %device1.i102 = getelementptr inbounds %struct.nouveau_drm, ptr %442, i32 0, i32 2, i32 3
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %442, i32 0, i32 2, i32 3, i32 0, i32 6
  %443 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %map.i, align 8
  %tobool.not.i103 = icmp eq ptr %444, null
  br i1 %tobool.not.i103, label %if.else.i105, label %if.then.i104, !prof !246

if.then.i104:                                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %444, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 75) #9, !srcloc !255
  br label %if.end.i107

if.else.i105:                                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nvif_object_wr(ptr noundef %device1.i102, i32 noundef 1, i64 noundef 6296532, i32 noundef 75) #9
  br label %if.end.i107

if.end.i107:                                      ; preds = %if.else.i105, %if.then.i104
  %445 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %map.i, align 8
  %tobool12.not.i106 = icmp eq ptr %446, null
  br i1 %tobool12.not.i106, label %if.else27.i, label %if.then19.i108, !prof !246

if.then19.i108:                                   ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr24.i = getelementptr i8, ptr %446, i32 6296533
  %447 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i) #9, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  %conv26.i = zext i8 %447 to i32
  br label %NVReadVgaCrtc.exit

if.else27.i:                                      ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #11
  %call31.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i102, i32 noundef 1, i64 noundef 6296533) #9
  br label %NVReadVgaCrtc.exit

NVReadVgaCrtc.exit:                               ; preds = %if.else27.i, %if.then19.i108
  %_data.0.i = phi i32 [ %conv26.i, %if.then19.i108 ], [ %call31.i, %if.else27.i ]
  %conv34.i = trunc i32 %_data.0.i to i8
  %is_mobile = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 14
  %448 = lshr i8 %conv34.i, 6
  %.lobit = and i8 %448, 1
  %449 = ptrtoint ptr %is_mobile to i32
  call void @__asan_store1_noabort(i32 %449)
  store i8 %.lobit, ptr %is_mobile, align 1
  br label %if.end32

if.end32:                                         ; preds = %NVReadVgaCrtc.exit, %if.end20.if.end32_crit_edge
  %is_mobile33 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 14
  %450 = ptrtoint ptr %is_mobile33 to i32
  call void @__asan_load1_noabort(i32 %450)
  %451 = load i8, ptr %is_mobile33, align 1, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %451)
  %tobool34.not = icmp eq i8 %451, 0
  br i1 %tobool34.not, label %lor.lhs.false, label %if.end32.if.then40_crit_edge

if.end32.if.then40_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

lor.lhs.false:                                    ; preds = %if.end32
  %452 = ptrtoint ptr %major_version.i to i32
  call void @__asan_load1_noabort(i32 %452)
  %453 = load i8, ptr %major_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %453)
  %cmp38 = icmp ugt i8 %453, 4
  br i1 %cmp38, label %lor.lhs.false.if.then40_crit_edge, label %lor.lhs.false.if.end42_crit_edge

lor.lhs.false.if.end42_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

lor.lhs.false.if.then40_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

if.then40:                                        ; preds = %lor.lhs.false.if.then40_crit_edge, %if.end32.if.then40_crit_edge
  %454 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %dev_private.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %lth.i) #9
  %456 = ptrtoint ptr %lth.i to i32
  call void @__asan_store1_noabort(i32 %456)
  store i8 -1, ptr %lth.i, align 1, !annotation !253
  %457 = getelementptr inbounds %struct.lvdstableheader, ptr %lth.i, i32 0, i32 1
  %458 = ptrtoint ptr %457 to i32
  call void @__asan_store1_noabort(i32 %458)
  store i8 -1, ptr %457, align 1, !annotation !253
  %459 = getelementptr inbounds %struct.lvdstableheader, ptr %lth.i, i32 0, i32 2
  %460 = ptrtoint ptr %459 to i32
  call void @__asan_store1_noabort(i32 %460)
  store i8 -1, ptr %459, align 1, !annotation !253
  %fp.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24
  %461 = ptrtoint ptr %fp.i to i32
  call void @__asan_load2_noabort(i32 %461)
  %462 = load i16, ptr %fp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %462)
  %cmp.i110 = icmp eq i16 %462, 0
  br i1 %cmp.i110, label %do.body.i111, label %if.end13.i

do.body.i111:                                     ; preds = %if.then40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %463 = load i32, ptr @__drm_debug, align 4
  %and.i.i = and i32 %463, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %do.body.i111.do.end12.i_crit_edge, label %do.body4.i

do.body.i111.do.end12.i_crit_edge:                ; preds = %do.body.i111
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12.i

do.body4.i:                                       ; preds = %do.body.i111
  call void @__sanitizer_cov_trace_pc() #11
  %drm6.i112 = getelementptr inbounds %struct.nouveau_drm, ptr %455, i32 0, i32 2, i32 1
  %464 = ptrtoint ptr %drm6.i112 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %drm6.i112, align 8
  %dev7.i113 = getelementptr inbounds %struct.nouveau_drm, ptr %465, i32 0, i32 3
  %466 = ptrtoint ptr %dev7.i113 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %dev7.i113, align 8
  %dev8.i114 = getelementptr inbounds %struct.drm_device, ptr %467, i32 0, i32 2
  %468 = ptrtoint ptr %dev8.i114 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %dev8.i114, align 4
  %name.i115 = getelementptr inbounds %struct.nouveau_drm, ptr %455, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %469, ptr noundef nonnull @.str.117, ptr noundef %name.i115) #12
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.body4.i, %do.body.i111.do.end12.i_crit_edge
  %digital_min_front_porch.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 8
  %470 = ptrtoint ptr %digital_min_front_porch.i to i32
  call void @__asan_store1_noabort(i32 %470)
  store i8 75, ptr %digital_min_front_porch.i, align 4
  br label %parse_fp_mode_table.exit

if.end13.i:                                       ; preds = %if.then40
  %conv.i116 = zext i16 %462 to i32
  %471 = ptrtoint ptr %data5.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %data5.i, align 4
  %arrayidx.i = getelementptr i8, ptr %472, i32 %conv.i116
  %473 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %473)
  %474 = load i8, ptr %arrayidx.i, align 1
  %475 = zext i8 %474 to i64
  call void @__sanitizer_cov_trace_switch(i64 %475, ptr @__sancov_gen_cov_switch_values.144)
  switch i8 %474, label %do.body25.i [
    i8 5, label %if.end13.i.sw.epilog.i_crit_edge
    i8 16, label %sw.bb18.i
    i8 32, label %sw.bb19.i
  ]

if.end13.i.sw.epilog.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb18.i:                                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb19.i:                                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx20.i = getelementptr i8, ptr %arrayidx.i, i32 1
  %476 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %476)
  %477 = load i8, ptr %arrayidx20.i, align 1
  %arrayidx21.i = getelementptr i8, ptr %arrayidx.i, i32 2
  %478 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %478)
  %479 = load i8, ptr %arrayidx21.i, align 1
  %arrayidx22.i = getelementptr i8, ptr %arrayidx.i, i32 3
  %480 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %480)
  %481 = load i8, ptr %arrayidx22.i, align 1
  %arrayidx23.i = getelementptr i8, ptr %arrayidx.i, i32 4
  %482 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %482)
  %483 = load i8, ptr %arrayidx23.i, align 1
  %digital_min_front_porch24.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 8
  %484 = ptrtoint ptr %digital_min_front_porch24.i to i32
  call void @__asan_store1_noabort(i32 %484)
  store i8 %483, ptr %digital_min_front_porch24.i, align 4
  %phi.cast.i = zext i8 %481 to i32
  %phi.cast1.i = zext i8 %477 to i32
  %phi.cast2.i = zext i8 %479 to i32
  br label %sw.epilog.i

do.body25.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv17.i118 = zext i8 %474 to i32
  %drm31.i = getelementptr inbounds %struct.nouveau_drm, ptr %455, i32 0, i32 2, i32 1
  %485 = ptrtoint ptr %drm31.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %drm31.i, align 8
  %dev32.i = getelementptr inbounds %struct.nouveau_drm, ptr %486, i32 0, i32 3
  %487 = ptrtoint ptr %dev32.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %dev32.i, align 8
  %dev33.i = getelementptr inbounds %struct.drm_device, ptr %488, i32 0, i32 2
  %489 = ptrtoint ptr %dev33.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %dev33.i, align 4
  %name34.i = getelementptr inbounds %struct.nouveau_drm, ptr %455, i32 0, i32 2, i32 12
  %491 = lshr i32 %conv17.i118, 4
  %and.i119 = and i32 %conv17.i118, 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %490, ptr noundef nonnull @.str.120, ptr noundef %name34.i, i32 noundef %491, i32 noundef %and.i119) #12
  br label %parse_fp_mode_table.exit

sw.epilog.i:                                      ; preds = %sw.bb19.i, %sw.bb18.i, %if.end13.i.sw.epilog.i_crit_edge
  %recordlen.0.i = phi i32 [ %phi.cast2.i, %sw.bb19.i ], [ 44, %sw.bb18.i ], [ 42, %if.end13.i.sw.epilog.i_crit_edge ]
  %fpentries.0.i = phi i32 [ %phi.cast.i, %sw.bb19.i ], [ 15, %sw.bb18.i ], [ 15, %if.end13.i.sw.epilog.i_crit_edge ]
  %ofs.0.i = phi i32 [ -7, %sw.bb19.i ], [ 0, %sw.bb18.i ], [ -1, %if.end13.i.sw.epilog.i_crit_edge ]
  %headerlen.0.i = phi i32 [ %phi.cast1.i, %sw.bb19.i ], [ 0, %sw.bb18.i ], [ 0, %if.end13.i.sw.epilog.i_crit_edge ]
  %492 = ptrtoint ptr %is_mobile33 to i32
  call void @__asan_load1_noabort(i32 %492)
  %493 = load i8, ptr %is_mobile33, align 1, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %493)
  %tobool.not.i120 = icmp eq i8 %493, 0
  br i1 %tobool.not.i120, label %sw.epilog.i.parse_fp_mode_table.exit_crit_edge, label %if.end41.i

sw.epilog.i.parse_fp_mode_table.exit_crit_edge:   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %parse_fp_mode_table.exit

if.end41.i:                                       ; preds = %sw.epilog.i
  %call42.i = call fastcc i32 @parse_lvds_manufacturer_table_header(ptr noundef %dev, ptr noundef %vbios, ptr noundef nonnull %lth.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.end45.i, label %if.end41.i.parse_fp_mode_table.exit_crit_edge

if.end41.i.parse_fp_mode_table.exit_crit_edge:    ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %parse_fp_mode_table.exit

if.end45.i:                                       ; preds = %if.end41.i
  %494 = ptrtoint ptr %lth.i to i32
  call void @__asan_load1_noabort(i32 %494)
  %495 = load i8, ptr %lth.i, align 1
  %496 = zext i8 %495 to i64
  call void @__sanitizer_cov_trace_switch(i64 %496, ptr @__sancov_gen_cov_switch_values.145)
  switch i8 %495, label %if.end45.i.if.end64.i_crit_edge [
    i8 48, label %if.end45.i.if.then53.i_crit_edge
    i8 64, label %if.end45.i.if.then53.i_crit_edge140
  ]

if.end45.i.if.then53.i_crit_edge140:              ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53.i

if.end45.i.if.then53.i_crit_edge:                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53.i

if.end45.i.if.end64.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64.i

if.then53.i:                                      ; preds = %if.end45.i.if.then53.i_crit_edge, %if.end45.i.if.then53.i_crit_edge140
  %lvdsmanufacturerpointer.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 3
  %497 = ptrtoint ptr %lvdsmanufacturerpointer.i to i32
  call void @__asan_load2_noabort(i32 %497)
  %498 = load i16, ptr %lvdsmanufacturerpointer.i, align 4
  %499 = ptrtoint ptr %457 to i32
  call void @__asan_load1_noabort(i32 %499)
  %500 = load i8, ptr %457, align 1
  %conv57.i = zext i8 %500 to i16
  %add.i = add i16 %498, 1
  %add58.i = add i16 %add.i, %conv57.i
  %fpxlatetableptr.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 1
  %501 = ptrtoint ptr %fpxlatetableptr.i to i32
  call void @__asan_store2_noabort(i32 %501)
  store i16 %add58.i, ptr %fpxlatetableptr.i, align 2
  %502 = ptrtoint ptr %459 to i32
  call void @__asan_load1_noabort(i32 %502)
  %503 = load i8, ptr %459, align 1
  %conv62.i = zext i8 %503 to i32
  %xlatwidth.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 2
  %504 = ptrtoint ptr %xlatwidth.i to i32
  call void @__asan_store4_noabort(i32 %504)
  store i32 %conv62.i, ptr %xlatwidth.i, align 4
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then53.i, %if.end45.i.if.end64.i_crit_edge
  %fpxlatetableptr66.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 1
  %505 = ptrtoint ptr %fpxlatetableptr66.i to i32
  call void @__asan_load2_noabort(i32 %505)
  %506 = load i16, ptr %fpxlatetableptr66.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %506)
  %cmp68.i = icmp eq i16 %506, 0
  br i1 %cmp68.i, label %do.body71.i, label %if.end84.i

do.body71.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #11
  %drm77.i = getelementptr inbounds %struct.nouveau_drm, ptr %455, i32 0, i32 2, i32 1
  %507 = ptrtoint ptr %drm77.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %drm77.i, align 8
  %dev78.i = getelementptr inbounds %struct.nouveau_drm, ptr %508, i32 0, i32 3
  %509 = ptrtoint ptr %dev78.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %dev78.i, align 8
  %dev79.i = getelementptr inbounds %struct.drm_device, ptr %510, i32 0, i32 2
  %511 = ptrtoint ptr %dev79.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %dev79.i, align 4
  %name80.i = getelementptr inbounds %struct.nouveau_drm, ptr %455, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %512, ptr noundef nonnull @.str.123, ptr noundef %name80.i) #12
  br label %parse_fp_mode_table.exit

if.end84.i:                                       ; preds = %if.end64.i
  %call85.i = tail call fastcc i32 @get_fp_strap(ptr noundef %dev, ptr noundef %vbios) #9
  %513 = ptrtoint ptr %data5.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %data5.i, align 4
  %515 = ptrtoint ptr %fpxlatetableptr66.i to i32
  call void @__asan_load2_noabort(i32 %515)
  %516 = load i16, ptr %fpxlatetableptr66.i, align 2
  %conv89.i = zext i16 %516 to i32
  %xlatwidth91.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 2
  %517 = ptrtoint ptr %xlatwidth91.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %xlatwidth91.i, align 4
  %mul.i = mul i32 %518, %call85.i
  %add92.i = add i32 %mul.i, %conv89.i
  %arrayidx93.i = getelementptr i8, ptr %514, i32 %add92.i
  %519 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_load1_noabort(i32 %519)
  %520 = load i8, ptr %arrayidx93.i, align 1
  %conv94.i = zext i8 %520 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %fpentries.0.i, i32 %conv94.i)
  %cmp96.i = icmp ult i32 %fpentries.0.i, %conv94.i
  br i1 %cmp96.i, label %do.body99.i, label %if.end112.i

do.body99.i:                                      ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #11
  %drm105.i = getelementptr inbounds %struct.nouveau_drm, ptr %455, i32 0, i32 2, i32 1
  %521 = ptrtoint ptr %drm105.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %drm105.i, align 8
  %dev106.i = getelementptr inbounds %struct.nouveau_drm, ptr %522, i32 0, i32 3
  %523 = ptrtoint ptr %dev106.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %dev106.i, align 8
  %dev107.i = getelementptr inbounds %struct.drm_device, ptr %524, i32 0, i32 2
  %525 = ptrtoint ptr %dev107.i to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %dev107.i, align 4
  %name108.i = getelementptr inbounds %struct.nouveau_drm, ptr %455, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %526, ptr noundef nonnull @.str.126, ptr noundef %name108.i) #12
  br label %parse_fp_mode_table.exit

if.end112.i:                                      ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %495)
  %cmp115.i = icmp ugt i8 %495, 16
  br i1 %cmp115.i, label %if.then117.i, label %if.end112.i.if.end123.i_crit_edge

if.end112.i.if.end123.i_crit_edge:                ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123.i

if.then117.i:                                     ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call85.i)
  %cmp118.not.i = icmp ne i32 %call85.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %520)
  %cmp121.i = icmp ne i8 %520, 15
  %spec.select.i = select i1 %cmp118.not.i, i1 true, i1 %cmp121.i
  %fp_no_ddc.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 9
  %frombool.i = zext i1 %spec.select.i to i8
  %527 = ptrtoint ptr %fp_no_ddc.i to i32
  call void @__asan_store1_noabort(i32 %527)
  store i8 %frombool.i, ptr %fp_no_ddc.i, align 1
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.then117.i, %if.end112.i.if.end123.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call85.i)
  %cmp124.i = icmp eq i32 %call85.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %520)
  %cmp128.i = icmp eq i8 %520, 15
  %or.cond.i = select i1 %cmp124.i, i1 true, i1 %cmp128.i
  br i1 %or.cond.i, label %if.end123.i.parse_fp_mode_table.exit_crit_edge, label %if.end131.i

if.end123.i.parse_fp_mode_table.exit_crit_edge:   ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %parse_fp_mode_table.exit

if.end131.i:                                      ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #11
  %528 = ptrtoint ptr %fp.i to i32
  call void @__asan_load2_noabort(i32 %528)
  %529 = load i16, ptr %fp.i, align 4
  %conv134.i = zext i16 %529 to i32
  %mul139.i = mul nuw nsw i32 %recordlen.0.i, %conv94.i
  %add136.i = add nsw i32 %headerlen.0.i, %ofs.0.i
  %add140.i = add nsw i32 %add136.i, %mul139.i
  %add141.i = add nsw i32 %add140.i, %conv134.i
  %conv142.i = trunc i32 %add141.i to i16
  %mode_ptr.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 24, i32 5
  %530 = ptrtoint ptr %mode_ptr.i to i32
  call void @__asan_store2_noabort(i32 %530)
  store i16 %conv142.i, ptr %mode_ptr.i, align 4
  %drm150.i = getelementptr inbounds %struct.nouveau_drm, ptr %455, i32 0, i32 2, i32 1
  %531 = ptrtoint ptr %drm150.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %drm150.i, align 8
  %dev151.i = getelementptr inbounds %struct.nouveau_drm, ptr %532, i32 0, i32 3
  %533 = ptrtoint ptr %dev151.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %dev151.i, align 8
  %dev152.i = getelementptr inbounds %struct.drm_device, ptr %534, i32 0, i32 2
  %535 = ptrtoint ptr %dev152.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %dev152.i, align 4
  %name153.i = getelementptr inbounds %struct.nouveau_drm, ptr %455, i32 0, i32 2, i32 12
  %conv158.i = and i32 %add141.i, 65535
  %add159.i = add nuw nsw i32 %conv158.i, 11
  %arrayidx160.i = getelementptr i8, ptr %514, i32 %add159.i
  %537 = ptrtoint ptr %arrayidx160.i to i32
  call void @__asan_loadN_noabort(i32 %537, i32 2)
  %538 = load i16, ptr %arrayidx160.i, align 1
  %539 = tail call i16 @llvm.bswap.i16(i16 %538) #9
  %conv162.i = zext i16 %539 to i32
  %add163.i = add nuw nsw i32 %conv162.i, 1
  %add168.i = add nuw nsw i32 %conv158.i, 25
  %arrayidx169.i = getelementptr i8, ptr %514, i32 %add168.i
  %540 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_loadN_noabort(i32 %540, i32 2)
  %541 = load i16, ptr %arrayidx169.i, align 1
  %542 = tail call i16 @llvm.bswap.i16(i16 %541) #9
  %conv171.i = zext i16 %542 to i32
  %add172.i = add nuw nsw i32 %conv171.i, 1
  %add177.i = add nuw nsw i32 %conv158.i, 7
  %arrayidx178.i = getelementptr i8, ptr %514, i32 %add177.i
  %543 = ptrtoint ptr %arrayidx178.i to i32
  call void @__asan_loadN_noabort(i32 %543, i32 2)
  %544 = load i16, ptr %arrayidx178.i, align 1
  %545 = tail call i16 @llvm.bswap.i16(i16 %544) #9
  %conv180.i = zext i16 %545 to i32
  %mul181.i = mul nuw nsw i32 %conv180.i, 10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %536, ptr noundef nonnull @.str.129, ptr noundef %name153.i, i32 noundef %add163.i, i32 noundef %add172.i, i32 noundef %mul181.i) #12
  br label %parse_fp_mode_table.exit

parse_fp_mode_table.exit:                         ; preds = %if.end131.i, %if.end123.i.parse_fp_mode_table.exit_crit_edge, %do.body99.i, %do.body71.i, %if.end41.i.parse_fp_mode_table.exit_crit_edge, %sw.epilog.i.parse_fp_mode_table.exit_crit_edge, %do.body25.i, %do.end12.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %lth.i) #9
  br label %if.end42

if.end42:                                         ; preds = %parse_fp_mode_table.exit, %lor.lhs.false.if.end42_crit_edge
  %546 = ptrtoint ptr %execute to i32
  call void @__asan_store1_noabort(i32 %546)
  store i8 1, ptr %execute, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end7.cleanup_crit_edge, %if.then.i70.cleanup_crit_edge, %NVInitVBIOS.exit.thread126, %do.body109.i.i, %do.body24.i.i, %if.else.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end42 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ -19, %NVInitVBIOS.exit.thread126 ], [ -22, %if.then.i70.cleanup_crit_edge ], [ -19, %if.else.i.cleanup_crit_edge ], [ -19, %do.body24.i.i ], [ -19, %do.body109.i.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nouveau_bios_takedown(ptr nocapture noundef %dev) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_dfp_bind_head(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_exec(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_bit_table(ptr noundef %bios, ptr nocapture noundef readonly %table) unnamed_addr #0 align 64 {
entry:
  %bitentry = alloca %struct.bit_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bios, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bitentry) #9
  %4 = getelementptr inbounds i8, ptr %bitentry, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4
  %6 = ptrtoint ptr %table to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %table, align 4
  %type.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 18, i32 1
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 1
  br i1 %cmp.not.i, label %if.end.i, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.i:                                         ; preds = %entry
  %data.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 18, i32 4
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %offset.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 18, i32 2
  %12 = ptrtoint ptr %offset.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %offset.i, align 4
  %conv.i = zext i16 %13 to i32
  %add.i = add nuw nsw i32 %conv.i, 10
  %arrayidx.i = getelementptr i8, ptr %11, i32 %add.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not64.i = icmp eq i8 %15, 0
  br i1 %tobool.not64.i, label %if.end.i.do.body_crit_edge, label %while.body.lr.ph.i

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

while.body.lr.ph.i:                               ; preds = %if.end.i
  %add5.i = add nuw nsw i32 %conv.i, 12
  %arrayidx6.i = getelementptr i8, ptr %11, i32 %add5.i
  %add37.i = add nuw nsw i32 %conv.i, 9
  %arrayidx38.i = getelementptr i8, ptr %11, i32 %add37.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end33.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec66.in.i = phi i8 [ %15, %while.body.lr.ph.i ], [ %dec66.i, %if.end33.i.while.body.i_crit_edge ]
  %entry1.065.i = phi ptr [ %arrayidx6.i, %while.body.lr.ph.i ], [ %add.ptr.i, %if.end33.i.while.body.i_crit_edge ]
  %16 = ptrtoint ptr %entry1.065.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %entry1.065.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %7)
  %cmp10.i = icmp eq i8 %17, %7
  br i1 %cmp10.i, label %if.then12.i, label %if.end33.i

if.then12.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %bitentry to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %7, ptr %bitentry, align 4
  %arrayidx15.i = getelementptr i8, ptr %entry1.065.i, i32 1
  %19 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx15.i, align 1
  %version.i = getelementptr inbounds %struct.bit_entry, ptr %bitentry, i32 0, i32 1
  %21 = ptrtoint ptr %version.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %version.i, align 1
  %arrayidx16.i = getelementptr i8, ptr %entry1.065.i, i32 2
  %22 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %arrayidx16.i, align 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #9
  %length.i = getelementptr inbounds %struct.bit_entry, ptr %bitentry, i32 0, i32 2
  %25 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %length.i, align 2
  %arrayidx18.i = getelementptr i8, ptr %entry1.065.i, i32 4
  %26 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %arrayidx18.i, align 1
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #9
  %offset20.i = getelementptr inbounds %struct.bit_entry, ptr %bitentry, i32 0, i32 3
  %29 = ptrtoint ptr %offset20.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %offset20.i, align 4
  %30 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %arrayidx18.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool26.not.i = icmp eq i16 %31, 0
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #9
  %idxprom.i = zext i16 %32 to i32
  %arrayidx31.i = getelementptr i8, ptr %11, i32 %idxprom.i
  %cond.i = select i1 %tobool26.not.i, ptr null, ptr %arrayidx31.i
  %data32.i = getelementptr inbounds %struct.bit_entry, ptr %bitentry, i32 0, i32 4
  %33 = ptrtoint ptr %data32.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %cond.i, ptr %data32.i, align 4
  %parse_fn = getelementptr inbounds %struct.bit_table, ptr %table, i32 0, i32 1
  %34 = ptrtoint ptr %parse_fn to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parse_fn, align 4
  %call3 = call i32 %35(ptr noundef %1, ptr noundef %bios, ptr noundef nonnull %bitentry) #9
  br label %cleanup

if.end33.i:                                       ; preds = %while.body.i
  %dec66.i = add i8 %dec66.in.i, -1
  %36 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx38.i, align 1
  %conv39.i = zext i8 %37 to i32
  %add.ptr.i = getelementptr i8, ptr %entry1.065.i, i32 %conv39.i
  %tobool.not.i = icmp eq i8 %dec66.i, 0
  br i1 %tobool.not.i, label %if.end33.i.do.body_crit_edge, label %if.end33.i.while.body.i_crit_edge

if.end33.i.while.body.i_crit_edge:                ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end33.i.do.body_crit_edge:                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %if.end33.i.do.body_crit_edge, %if.end.i.do.body_crit_edge, %entry.do.body_crit_edge
  %drm5 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %drm5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %drm5, align 8
  %dev6 = getelementptr inbounds %struct.nouveau_drm, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev6, align 8
  %dev7 = getelementptr inbounds %struct.drm_device, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev7, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %43, ptr noundef nonnull @.str.55, ptr noundef %name, i32 noundef %conv) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then12.i
  %retval.0 = phi i32 [ %call3, %if.then12.i ], [ -38, %do.body ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bitentry) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parse_bit_i_tbl_entry(ptr nocapture noundef readonly %dev, ptr nocapture noundef %bios, ptr nocapture noundef readonly %bitentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %length = getelementptr inbounds %struct.bit_entry, ptr %bitentry, i32 0, i32 2
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %length, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %3)
  %cmp = icmp ult i16 %3, 6
  br i1 %cmp, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %drm3 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %drm3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drm3, align 8
  %dev4 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev4, align 8
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev5, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.57, ptr noundef %name) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.nvbios, ptr %bios, i32 0, i32 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %offset = getelementptr inbounds %struct.bit_entry, ptr %bitentry, i32 0, i32 3
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %offset, align 4
  %conv8 = zext i16 %13 to i32
  %add = add nuw nsw i32 %conv8, 5
  %arrayidx = getelementptr i8, ptr %11, i32 %add
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %feature_byte = getelementptr inbounds %struct.nvbios, ptr %bios, i32 0, i32 13
  %16 = ptrtoint ptr %feature_byte to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %feature_byte, align 2
  %is_mobile = getelementptr inbounds %struct.nvbios, ptr %bios, i32 0, i32 14
  %17 = lshr i8 %15, 4
  %.lobit = and i8 %17, 1
  %18 = ptrtoint ptr %is_mobile to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.lobit, ptr %is_mobile, align 1
  %19 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %length, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %20)
  %cmp13 = icmp ult i16 %20, 15
  br i1 %cmp13, label %do.body16, label %if.end29

do.body16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %drm22 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %drm22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %drm22, align 8
  %dev23 = getelementptr inbounds %struct.nouveau_drm, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev23, align 8
  %dev24 = getelementptr inbounds %struct.drm_device, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev24, align 4
  %name25 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.60, ptr noundef %name25) #12
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %27 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %offset, align 4
  %conv32 = zext i16 %28 to i32
  %add33 = add nuw nsw i32 %conv32, 13
  %arrayidx34 = getelementptr i8, ptr %11, i32 %add33
  %29 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %arrayidx34, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool36.not = icmp eq i16 %30, 0
  br i1 %tobool36.not, label %if.end29.cleanup_crit_edge, label %if.end38

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38:                                         ; preds = %if.end29
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #9
  %idxprom = zext i16 %31 to i32
  %arrayidx40 = getelementptr i8, ptr %11, i32 %idxprom
  %32 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx40, align 1
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.146)
  switch i8 %33, label %do.body52 [
    i8 0, label %if.end38.if.end68_crit_edge
    i8 16, label %if.end38.if.end68_crit_edge111
  ]

if.end38.if.end68_crit_edge111:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.end38.if.end68_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

do.body52:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %conv45 = zext i8 %33 to i32
  %drm58 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %drm58 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %drm58, align 8
  %dev59 = getelementptr inbounds %struct.nouveau_drm, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev59, align 8
  %dev60 = getelementptr inbounds %struct.drm_device, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev60, align 4
  %name61 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  %41 = lshr i32 %conv45, 4
  %and65 = and i32 %conv45, 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %40, ptr noundef nonnull @.str.63, ptr noundef %name61, i32 noundef %41, i32 noundef %and65) #12
  br label %cleanup

if.end68:                                         ; preds = %if.end38.if.end68_crit_edge, %if.end38.if.end68_crit_edge111
  %add43 = add nuw nsw i32 %idxprom, 1
  %arrayidx44 = getelementptr i8, ptr %11, i32 %add43
  %42 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx44, align 1
  %conv71 = zext i8 %43 to i32
  %add72 = add nuw nsw i32 %conv71, %idxprom
  %arrayidx73 = getelementptr i8, ptr %11, i32 %add72
  %44 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %arrayidx73, align 1
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #9
  %dactestval = getelementptr inbounds %struct.nvbios, ptr %bios, i32 0, i32 6
  %47 = ptrtoint ptr %dactestval to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %dactestval, align 4
  %add79 = add nuw nsw i32 %add72, 4
  %arrayidx80 = getelementptr i8, ptr %11, i32 %add79
  %48 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %arrayidx80, align 1
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #9
  %tvdactestval = getelementptr inbounds %struct.nvbios, ptr %bios, i32 0, i32 7
  %51 = ptrtoint ptr %tvdactestval to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %tvdactestval, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %do.body52, %if.end29.cleanup_crit_edge, %do.body16, %do.body
  %retval.0 = phi i32 [ -22, %do.body ], [ -22, %do.body16 ], [ -38, %do.body52 ], [ 0, %if.end68 ], [ 0, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parse_bit_A_tbl_entry(ptr nocapture noundef readonly %dev, ptr nocapture noundef %bios, ptr nocapture noundef readonly %bitentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %length = getelementptr inbounds %struct.bit_entry, ptr %bitentry, i32 0, i32 2
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %length, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %3)
  %cmp.not = icmp eq i16 %3, 3
  br i1 %cmp.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %drm3 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %drm3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drm3, align 8
  %dev4 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev4, align 8
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev5, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.65, ptr noundef %name) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.nvbios, ptr %bios, i32 0, i32 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %offset = getelementptr inbounds %struct.bit_entry, ptr %bitentry, i32 0, i32 3
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %offset, align 4
  %idxprom = zext i16 %13 to i32
  %arrayidx = getelementptr i8, ptr %11, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %arrayidx, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #9
  %conv9 = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp10 = icmp eq i16 %15, 0
  br i1 %cmp10, label %do.body13, label %if.end32

do.body13:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %17 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body13.cleanup_crit_edge, label %do.body16

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body16:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  %drm22 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %drm22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %drm22, align 8
  %dev23 = getelementptr inbounds %struct.nouveau_drm, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev23, align 8
  %dev24 = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev24, align 4
  %name25 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.68, ptr noundef %name25) #12
  br label %cleanup

if.end32:                                         ; preds = %if.end
  %arrayidx35 = getelementptr i8, ptr %11, i32 %conv9
  %24 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %25)
  %cmp37.not = icmp eq i8 %25, 16
  br i1 %cmp37.not, label %if.end55, label %do.body40

do.body40:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %conv36 = zext i8 %25 to i32
  %drm46 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %drm46 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %drm46, align 8
  %dev47 = getelementptr inbounds %struct.nouveau_drm, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev47, align 8
  %dev48 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev48, align 4
  %name49 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  %32 = lshr i32 %conv36, 4
  %and = and i32 %conv36, 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.71, ptr noundef %name49, i32 noundef %32, i32 noundef %and) #12
  br label %cleanup

if.end55:                                         ; preds = %if.end32
  %add = add nuw nsw i32 %conv9, 1
  %arrayidx58 = getelementptr i8, ptr %11, i32 %add
  %33 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx58, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %34)
  %cmp68.not = icmp eq i8 %34, 4
  br i1 %cmp68.not, label %lor.lhs.false, label %if.end55.do.body78_crit_edge

if.end55.do.body78_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body78

lor.lhs.false:                                    ; preds = %if.end55
  %add65 = add nuw nsw i32 %conv9, 3
  %arrayidx66 = getelementptr i8, ptr %11, i32 %add65
  %35 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx66, align 1
  %add61 = add nuw nsw i32 %conv9, 2
  %arrayidx62 = getelementptr i8, ptr %11, i32 %add61
  %37 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx62, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %38)
  %cmp71.not = icmp eq i8 %38, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %36)
  %cmp75.not = icmp eq i8 %36, 2
  %or.cond = select i1 %cmp71.not, i1 %cmp75.not, i1 false
  br i1 %or.cond, label %if.end91, label %lor.lhs.false.do.body78_crit_edge

lor.lhs.false.do.body78_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body78

do.body78:                                        ; preds = %lor.lhs.false.do.body78_crit_edge, %if.end55.do.body78_crit_edge
  %drm84 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %drm84 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %drm84, align 8
  %dev85 = getelementptr inbounds %struct.nouveau_drm, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %dev85 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev85, align 8
  %dev86 = getelementptr inbounds %struct.drm_device, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev86, align 4
  %name87 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.74, ptr noundef %name87) #12
  br label %cleanup

if.end91:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %add95 = add nuw nsw i32 %conv9, 4
  %arrayidx96 = getelementptr i8, ptr %11, i32 %add95
  %45 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %arrayidx96, align 1
  %47 = and i32 %46, -16580608
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %dactestval = getelementptr inbounds %struct.nvbios, ptr %bios, i32 0, i32 6
  %49 = ptrtoint ptr %dactestval to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %dactestval, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %do.body78, %do.body40, %do.body16, %do.body13.cleanup_crit_edge, %do.body
  %retval.0 = phi i32 [ -22, %do.body ], [ -38, %do.body40 ], [ -22, %do.body78 ], [ 0, %if.end91 ], [ -22, %do.body16 ], [ -22, %do.body13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parse_bit_display_tbl_entry(ptr nocapture noundef readonly %dev, ptr nocapture noundef %bios, ptr nocapture noundef readonly %bitentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.bit_entry, ptr %bitentry, i32 0, i32 2
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %length, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %1)
  %cmp.not = icmp eq i16 %1, 4
  br i1 %cmp.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %drm3 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %drm3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drm3, align 8
  %dev4 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev4, align 8
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev5, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.76, ptr noundef %name) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.nvbios, ptr %bios, i32 0, i32 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %offset = getelementptr inbounds %struct.bit_entry, ptr %bitentry, i32 0, i32 3
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %offset, align 4
  %conv8 = zext i16 %13 to i32
  %add = add nuw nsw i32 %conv8, 2
  %arrayidx = getelementptr i8, ptr %11, i32 %add
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %arrayidx, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #9
  %fp = getelementptr inbounds %struct.nvbios, ptr %bios, i32 0, i32 24
  %17 = ptrtoint ptr %fp to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %fp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.body
  %retval.0 = phi i32 [ -22, %do.body ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parse_bit_init_tbl_entry(ptr nocapture noundef readonly %dev, ptr nocapture noundef %bios, ptr nocapture noundef readonly %bitentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.bit_entry, ptr %bitentry, i32 0, i32 2
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %length, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %1)
  %cmp = icmp ult i16 %1, 14
  br i1 %cmp, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %drm3 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %drm3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drm3, align 8
  %dev4 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev4, align 8
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev5, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.78, ptr noundef %name) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %offset = getelementptr inbounds %struct.bit_entry, ptr %bitentry, i32 0, i32 3
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %offset, align 4
  %data.i = getelementptr inbounds %struct.nvbios, ptr %bios, i32 0, i32 4
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %idxprom.i = zext i16 %11 to i32
  %arrayidx.i = getelementptr i8, ptr %13, i32 %idxprom.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %arrayidx.i, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #9
  %init_script_tbls_ptr.i = getelementptr inbounds %struct.nvbios, ptr %bios, i32 0, i32 18
  %17 = ptrtoint ptr %init_script_tbls_ptr.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %init_script_tbls_ptr.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.body
  %retval.0 = phi i32 [ -22, %do.body ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @parse_bit_M_tbl_entry(ptr nocapture noundef readnone %dev, ptr nocapture noundef %bios, ptr nocapture noundef readonly %bitentry) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.bit_entry, ptr %bitentry, i32 0, i32 2
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %length, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %1)
  %cmp = icmp ult i16 %1, 5
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %version = getelementptr inbounds %struct.bit_entry, ptr %bitentry, i32 0, i32 1
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp3 = icmp ult i8 %3, 2
  %data = getelementptr inbounds %struct.nvbios, ptr %bios, i32 0, i32 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %offset = getelementptr inbounds %struct.bit_entry, ptr %bitentry, i32 0, i32 3
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %offset, align 4
  %conv6 = zext i16 %7 to i32
  %add = add nuw nsw i32 %conv6, 2
  %add.sink = select i1 %cmp3, i32 %add, i32 %conv6
  %.sink = select i1 %cmp3, i32 3, i32 1
  %arrayidx = getelementptr i8, ptr %5, i32 %add.sink
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %ram_restrict_group_count = getelementptr inbounds %struct.nvbios, ptr %bios, i32 0, i32 21
  %10 = ptrtoint ptr %ram_restrict_group_count to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %ram_restrict_group_count, align 4
  %11 = load i16, ptr %offset, align 4
  %conv9 = zext i16 %11 to i32
  %add10 = add nuw nsw i32 %.sink, %conv9
  %arrayidx11 = getelementptr i8, ptr %5, i32 %add10
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %arrayidx11, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #9
  %ram_restrict_tbl_ptr = getelementptr inbounds %struct.nvbios, ptr %bios, i32 0, i32 20
  %15 = ptrtoint ptr %ram_restrict_tbl_ptr to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %ram_restrict_tbl_ptr, align 2
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parse_bit_lvds_tbl_entry(ptr nocapture noundef readonly %dev, ptr nocapture noundef %bios, ptr nocapture noundef readonly %bitentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.bit_entry, ptr %bitentry, i32 0, i32 2
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %length, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cmp.not = icmp eq i16 %1, 2
  br i1 %cmp.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %drm3 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %drm3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drm3, align 8
  %dev4 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev4, align 8
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev5, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.80, ptr noundef %name) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.nvbios, ptr %bios, i32 0, i32 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %offset = getelementptr inbounds %struct.bit_entry, ptr %bitentry, i32 0, i32 3
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %offset, align 4
  %idxprom = zext i16 %13 to i32
  %arrayidx = getelementptr i8, ptr %11, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %arrayidx, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #9
  %lvdsmanufacturerpointer = getelementptr inbounds %struct.nvbios, ptr %bios, i32 0, i32 24, i32 3
  %17 = ptrtoint ptr %lvdsmanufacturerpointer to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %lvdsmanufacturerpointer, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.body
  %retval.0 = phi i32 [ -22, %do.body ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parse_bit_tmds_tbl_entry(ptr nocapture noundef readonly %dev, ptr nocapture noundef %bios, ptr nocapture noundef readonly %bitentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %length = getelementptr inbounds %struct.bit_entry, ptr %bitentry, i32 0, i32 2
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %length, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %3)
  %cmp.not = icmp eq i16 %3, 2
  br i1 %cmp.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %drm3 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %drm3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drm3, align 8
  %dev4 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev4, align 8
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev5, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.82, ptr noundef %name) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.nvbios, ptr %bios, i32 0, i32 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %offset = getelementptr inbounds %struct.bit_entry, ptr %bitentry, i32 0, i32 3
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %offset, align 4
  %idxprom = zext i16 %13 to i32
  %arrayidx = getelementptr i8, ptr %11, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not = icmp eq i16 %15, 0
  br i1 %tobool.not, label %do.body10, label %do.body24

do.body10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %drm16 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %drm16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %drm16, align 8
  %dev17 = getelementptr inbounds %struct.nouveau_drm, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev17, align 8
  %dev18 = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev18, align 4
  %name19 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.85, ptr noundef %name19) #12
  br label %cleanup

do.body24:                                        ; preds = %if.end
  %22 = tail call i16 @llvm.bswap.i16(i16 %15) #9
  %drm30 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %drm30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %drm30, align 8
  %dev31 = getelementptr inbounds %struct.nouveau_drm, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev31, align 8
  %dev32 = getelementptr inbounds %struct.drm_device, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev32, align 4
  %name33 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  %idxprom36 = zext i16 %22 to i32
  %arrayidx37 = getelementptr i8, ptr %11, i32 %idxprom36
  %29 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %30 to i32
  %31 = lshr i32 %conv38, 4
  %and = and i32 %conv38, 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.88, ptr noundef %name33, i32 noundef %31, i32 noundef %and) #12
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %arrayidx47 = getelementptr i8, ptr %33, i32 %idxprom36
  %34 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %35)
  %cmp49.not = icmp eq i8 %35, 17
  br i1 %cmp49.not, label %if.end52, label %do.body24.cleanup_crit_edge

do.body24.cleanup_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end52:                                         ; preds = %do.body24
  %add = add nuw nsw i32 %idxprom36, 7
  %arrayidx55 = getelementptr i8, ptr %33, i32 %add
  %36 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %arrayidx55, align 1
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #9
  %idxprom63 = zext i16 %38 to i32
  %arrayidx64 = getelementptr i8, ptr %33, i32 %idxprom63
  %39 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx64, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 113, i8 %40)
  %cmp66.not = icmp eq i8 %40, 113
  br i1 %cmp66.not, label %lor.lhs.false, label %if.end52.do.body75_crit_edge

if.end52.do.body75_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body75

lor.lhs.false:                                    ; preds = %if.end52
  %add59 = add nuw nsw i32 %idxprom36, 9
  %arrayidx60 = getelementptr i8, ptr %33, i32 %add59
  %41 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %arrayidx60, align 1
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #9
  %idxprom69 = zext i16 %43 to i32
  %arrayidx70 = getelementptr i8, ptr %33, i32 %idxprom69
  %44 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx70, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 113, i8 %45)
  %cmp72.not = icmp eq i8 %45, 113
  br i1 %cmp72.not, label %lor.lhs.false.if.end88_crit_edge, label %lor.lhs.false.do.body75_crit_edge

lor.lhs.false.do.body75_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body75

lor.lhs.false.if.end88_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

do.body75:                                        ; preds = %lor.lhs.false.do.body75_crit_edge, %if.end52.do.body75_crit_edge
  %46 = ptrtoint ptr %drm30 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %drm30, align 8
  %dev82 = getelementptr inbounds %struct.nouveau_drm, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev82, align 8
  %dev83 = getelementptr inbounds %struct.drm_device, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev83, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.91, ptr noundef %name33) #12
  br label %if.end88

if.end88:                                         ; preds = %do.body75, %lor.lhs.false.if.end88_crit_edge
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data, align 4
  %add91 = add nuw nsw i32 %idxprom36, 11
  %arrayidx92 = getelementptr i8, ptr %53, i32 %add91
  %54 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %arrayidx92, align 1
  %56 = tail call i16 @llvm.bswap.i16(i16 %55) #9
  %tmds = getelementptr inbounds %struct.nvbios, ptr %bios, i32 0, i32 25
  %57 = ptrtoint ptr %tmds to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %tmds, align 4
  %add96 = add nuw nsw i32 %idxprom36, 13
  %arrayidx97 = getelementptr i8, ptr %53, i32 %add96
  %58 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %arrayidx97, align 1
  %60 = tail call i16 @llvm.bswap.i16(i16 %59) #9
  %output1_script_ptr = getelementptr inbounds %struct.nvbios, ptr %bios, i32 0, i32 25, i32 1
  %61 = ptrtoint ptr %output1_script_ptr to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %output1_script_ptr, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %do.body24.cleanup_crit_edge, %do.body10, %do.body
  %retval.0 = phi i32 [ -22, %do.body ], [ 0, %if.end88 ], [ -22, %do.body10 ], [ -38, %do.body24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parse_dcb_entry(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, i32 noundef %idx, ptr nocapture noundef readonly %outp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %dcb1 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22
  %2 = ptrtoint ptr %dcb1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dcb1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %3)
  %cmp = icmp ugt i8 %3, 31
  %. = select i1 %cmp, i32 4, i32 6
  %arrayidx4 = getelementptr i8, ptr %outp, i32 %.
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %arrayidx4, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  %7 = ptrtoint ptr %outp to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %outp, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  %dev1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %10 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1.i.i, align 4
  %device2.i.i = getelementptr i8, ptr %11, i32 -102
  %12 = ptrtoint ptr %device2.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %device2.i.i, align 2
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.147)
  switch i16 %13, label %entry.if.then_crit_edge [
    i16 1037, label %land.lhs.true.i.i
    i16 513, label %land.lhs.true.i122.i
    i16 3235, label %land.lhs.true.i135.i
    i16 1557, label %land.lhs.true.i148.i
    i16 1057, label %land.lhs.true.i161.i
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true.i.i:                                ; preds = %entry
  %subsystem_vendor.i.i = getelementptr i8, ptr %11, i32 -100
  %15 = ptrtoint ptr %subsystem_vendor.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %subsystem_vendor.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4136, i16 %16)
  %cmp5.i.i = icmp eq i16 %16, 4136
  br i1 %cmp5.i.i, label %nv_match_device.exit.i, label %land.lhs.true.i.i.if.then_crit_edge

land.lhs.true.i.i.if.then_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

nv_match_device.exit.i:                           ; preds = %land.lhs.true.i.i
  %subsystem_device.i.i = getelementptr i8, ptr %11, i32 -98
  %17 = ptrtoint ptr %subsystem_device.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %subsystem_device.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 411, i16 %18)
  %cmp8.i.i = icmp eq i16 %18, 411
  call void @__sanitizer_cov_trace_const_cmp4(i32 308478466, i32 %8)
  %cmp.i = icmp eq i32 %8, 308478466
  %or.cond = select i1 %cmp8.i.i, i1 %cmp.i, i1 false
  br i1 %or.cond, label %land.lhs.true.i, label %nv_match_device.exit.i.if.then_crit_edge

nv_match_device.exit.i.if.then_crit_edge:         ; preds = %nv_match_device.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true.i:                                  ; preds = %nv_match_device.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %5)
  %cmp3.i = icmp eq i32 %5, 536870912
  br i1 %cmp3.i, label %land.lhs.true.i.cleanup35_crit_edge, label %land.lhs.true.i.if.then_crit_edge

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true.i.cleanup35_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup35

land.lhs.true.i122.i:                             ; preds = %entry
  %subsystem_vendor.i119.i = getelementptr i8, ptr %11, i32 -100
  %19 = ptrtoint ptr %subsystem_vendor.i119.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %subsystem_vendor.i119.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5218, i16 %20)
  %cmp5.i121.i = icmp eq i16 %20, 5218
  br i1 %cmp5.i121.i, label %nv_match_device.exit127.i, label %land.lhs.true.i122.i.if.then_crit_edge

land.lhs.true.i122.i.if.then_crit_edge:           ; preds = %land.lhs.true.i122.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

nv_match_device.exit127.i:                        ; preds = %land.lhs.true.i122.i
  %subsystem_device.i123.i = getelementptr i8, ptr %11, i32 -98
  %21 = ptrtoint ptr %subsystem_device.i123.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %subsystem_device.i123.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30639, i16 %22)
  %cmp8.i125.i = icmp eq i16 %22, -30639
  call void @__sanitizer_cov_trace_const_cmp4(i32 340787442, i32 %8)
  %cmp8.i = icmp eq i32 %8, 340787442
  %or.cond116 = select i1 %cmp8.i125.i, i1 %cmp8.i, i1 false
  br i1 %or.cond116, label %land.lhs.true9.i, label %nv_match_device.exit127.i.if.then_crit_edge

nv_match_device.exit127.i.if.then_crit_edge:      ; preds = %nv_match_device.exit127.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true9.i:                                 ; preds = %nv_match_device.exit127.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp10.i = icmp eq i32 %5, -1
  br i1 %cmp10.i, label %if.then11.i, label %land.lhs.true9.i.if.then_crit_edge

land.lhs.true9.i.if.then_crit_edge:               ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then11.i:                                      ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  %entries.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 1
  %23 = ptrtoint ptr %entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %entries.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %24
  %25 = call ptr @memset(ptr %arrayidx.i.i.i, i32 0, i32 40)
  %26 = load i32, ptr %entries.i.i.i, align 4
  %inc.i.i.i = add i32 %26, 1
  store i32 %inc.i.i.i, ptr %entries.i.i.i, align 4
  %27 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx.i.i.i, align 4
  %type2.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %24, i32 3
  %28 = ptrtoint ptr %type2.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %type2.i.i, align 4
  %i2c_index.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %24, i32 4
  %29 = ptrtoint ptr %i2c_index.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %i2c_index.i.i, align 4
  %heads4.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %24, i32 5
  %30 = ptrtoint ptr %heads4.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %heads4.i.i, align 1
  %location.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %24, i32 8
  %31 = ptrtoint ptr %location.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %location.i.i, align 4
  %or7.i.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %24, i32 9
  %32 = ptrtoint ptr %or7.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %or7.i.i, align 1
  br label %cleanup35

land.lhs.true.i135.i:                             ; preds = %entry
  %subsystem_vendor.i132.i = getelementptr i8, ptr %11, i32 -100
  %33 = ptrtoint ptr %subsystem_vendor.i132.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %subsystem_vendor.i132.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5762, i16 %34)
  %cmp5.i134.i = icmp eq i16 %34, 5762
  br i1 %cmp5.i134.i, label %nv_match_device.exit140.i, label %land.lhs.true.i135.i.if.then_crit_edge

land.lhs.true.i135.i.if.then_crit_edge:           ; preds = %land.lhs.true.i135.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

nv_match_device.exit140.i:                        ; preds = %land.lhs.true.i135.i
  %subsystem_device.i136.i = getelementptr i8, ptr %11, i32 -98
  %35 = ptrtoint ptr %subsystem_device.i136.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %subsystem_device.i136.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12291, i16 %36)
  %cmp8.i138.i = icmp eq i16 %36, 12291
  br i1 %cmp8.i138.i, label %if.then15.i, label %nv_match_device.exit140.i.if.then_crit_edge

nv_match_device.exit140.i.if.then_crit_edge:      ; preds = %nv_match_device.exit140.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then15.i:                                      ; preds = %nv_match_device.exit140.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %idx)
  %37 = icmp ult i32 %idx, 4
  br i1 %37, label %switch.lookup, label %if.then15.i.if.then_crit_edge

if.then15.i.if.then_crit_edge:                    ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true.i148.i:                             ; preds = %entry
  %subsystem_vendor.i145.i = getelementptr i8, ptr %11, i32 -100
  %38 = ptrtoint ptr %subsystem_vendor.i145.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %subsystem_vendor.i145.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5762, i16 %39)
  %cmp5.i147.i = icmp eq i16 %39, 5762
  br i1 %cmp5.i147.i, label %nv_match_device.exit153.i, label %land.lhs.true.i148.i.if.then_crit_edge

land.lhs.true.i148.i.if.then_crit_edge:           ; preds = %land.lhs.true.i148.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

nv_match_device.exit153.i:                        ; preds = %land.lhs.true.i148.i
  %subsystem_device.i149.i = getelementptr i8, ptr %11, i32 -98
  %40 = ptrtoint ptr %subsystem_device.i149.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %subsystem_device.i149.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 9733, i16 %41)
  %cmp8.i151.i = icmp eq i16 %41, 9733
  br i1 %cmp8.i151.i, label %if.then33.i, label %nv_match_device.exit153.i.if.then_crit_edge

nv_match_device.exit153.i.if.then_crit_edge:      ; preds = %nv_match_device.exit153.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then33.i:                                      ; preds = %nv_match_device.exit153.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %idx)
  %42 = icmp ult i32 %idx, 4
  br i1 %42, label %switch.lookup121, label %if.then33.i.if.then_crit_edge

if.then33.i.if.then_crit_edge:                    ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true.i161.i:                             ; preds = %entry
  %subsystem_vendor.i158.i = getelementptr i8, ptr %11, i32 -100
  %43 = ptrtoint ptr %subsystem_vendor.i158.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %subsystem_vendor.i158.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 14402, i16 %44)
  %cmp5.i160.i = icmp eq i16 %44, 14402
  br i1 %cmp5.i160.i, label %nv_match_device.exit166.i, label %land.lhs.true.i161.i.if.then_crit_edge

land.lhs.true.i161.i.if.then_crit_edge:           ; preds = %land.lhs.true.i161.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

nv_match_device.exit166.i:                        ; preds = %land.lhs.true.i161.i
  %subsystem_device.i162.i = getelementptr i8, ptr %11, i32 -98
  %45 = ptrtoint ptr %subsystem_device.i162.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %subsystem_device.i162.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -14445, i16 %46)
  %cmp8.i164.i = icmp eq i16 %46, -14445
  br i1 %cmp8.i164.i, label %if.then52.i, label %nv_match_device.exit166.i.if.then_crit_edge

nv_match_device.exit166.i.if.then_crit_edge:      ; preds = %nv_match_device.exit166.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then52.i:                                      ; preds = %nv_match_device.exit166.i
  %47 = zext i32 %idx to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %idx, label %if.then52.i.if.then_crit_edge [
    i32 0, label %land.lhs.true54.i
    i32 1, label %land.lhs.true59.i
    i32 2, label %land.lhs.true64.i
  ]

if.then52.i.if.then_crit_edge:                    ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true54.i:                                ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 196610, i32 %8)
  %cmp55.i = icmp eq i32 %8, 196610
  %spec.select = select i1 %cmp55.i, i32 33624832, i32 %9
  br label %if.then

land.lhs.true59.i:                                ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 269680900, i32 %8)
  %cmp60.i = icmp eq i32 %8, 269680900
  %spec.select117 = select i1 %cmp60.i, i32 67109648, i32 %9
  br label %if.then

land.lhs.true64.i:                                ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 303235330, i32 %8)
  %cmp65.i = icmp eq i32 %8, 303235330
  %spec.select118 = select i1 %cmp65.i, i32 33555218, i32 %9
  br label %if.then

switch.lookup:                                    ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.parse_dcb_entry, i32 0, i32 %idx
  %48 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %48)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep119 = getelementptr inbounds [4 x i32], ptr @switch.table.parse_dcb_entry.131, i32 0, i32 %idx
  %49 = ptrtoint ptr %switch.gep119 to i32
  call void @__asan_load4_noabort(i32 %49)
  %switch.load120 = load i32, ptr %switch.gep119, align 4
  br label %if.then

switch.lookup121:                                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep122 = getelementptr inbounds [4 x i32], ptr @switch.table.parse_dcb_entry.132, i32 0, i32 %idx
  %50 = ptrtoint ptr %switch.gep122 to i32
  call void @__asan_load4_noabort(i32 %50)
  %switch.load123 = load i32, ptr %switch.gep122, align 4
  %switch.gep124 = getelementptr inbounds [4 x i32], ptr @switch.table.parse_dcb_entry.133, i32 0, i32 %idx
  %51 = ptrtoint ptr %switch.gep124 to i32
  call void @__asan_load4_noabort(i32 %51)
  %switch.load125 = load i32, ptr %switch.gep124, align 4
  br label %if.then

if.then:                                          ; preds = %switch.lookup121, %switch.lookup, %land.lhs.true64.i, %land.lhs.true59.i, %land.lhs.true54.i, %if.then52.i.if.then_crit_edge, %nv_match_device.exit166.i.if.then_crit_edge, %land.lhs.true.i161.i.if.then_crit_edge, %if.then33.i.if.then_crit_edge, %nv_match_device.exit153.i.if.then_crit_edge, %land.lhs.true.i148.i.if.then_crit_edge, %if.then15.i.if.then_crit_edge, %nv_match_device.exit140.i.if.then_crit_edge, %land.lhs.true.i135.i.if.then_crit_edge, %land.lhs.true9.i.if.then_crit_edge, %nv_match_device.exit127.i.if.then_crit_edge, %land.lhs.true.i122.i.if.then_crit_edge, %land.lhs.true.i.if.then_crit_edge, %nv_match_device.exit.i.if.then_crit_edge, %land.lhs.true.i.i.if.then_crit_edge, %entry.if.then_crit_edge
  %conf.2.ph = phi i32 [ %6, %land.lhs.true.i161.i.if.then_crit_edge ], [ %6, %nv_match_device.exit166.i.if.then_crit_edge ], [ %6, %if.then52.i.if.then_crit_edge ], [ %6, %land.lhs.true.i148.i.if.then_crit_edge ], [ %6, %nv_match_device.exit153.i.if.then_crit_edge ], [ %6, %nv_match_device.exit140.i.if.then_crit_edge ], [ %6, %land.lhs.true.i135.i.if.then_crit_edge ], [ %6, %land.lhs.true9.i.if.then_crit_edge ], [ %6, %nv_match_device.exit127.i.if.then_crit_edge ], [ %6, %land.lhs.true.i122.i.if.then_crit_edge ], [ %6, %land.lhs.true.i.if.then_crit_edge ], [ %6, %nv_match_device.exit.i.if.then_crit_edge ], [ %6, %land.lhs.true.i.i.if.then_crit_edge ], [ %6, %entry.if.then_crit_edge ], [ %6, %land.lhs.true54.i ], [ %6, %land.lhs.true59.i ], [ %6, %land.lhs.true64.i ], [ %switch.load, %switch.lookup ], [ 0, %if.then15.i.if.then_crit_edge ], [ %switch.load123, %switch.lookup121 ], [ 0, %if.then33.i.if.then_crit_edge ]
  %conn.2.ph = phi i32 [ %9, %land.lhs.true.i161.i.if.then_crit_edge ], [ %9, %nv_match_device.exit166.i.if.then_crit_edge ], [ %9, %if.then52.i.if.then_crit_edge ], [ %9, %land.lhs.true.i148.i.if.then_crit_edge ], [ %9, %nv_match_device.exit153.i.if.then_crit_edge ], [ %9, %nv_match_device.exit140.i.if.then_crit_edge ], [ %9, %land.lhs.true.i135.i.if.then_crit_edge ], [ -234860524, %land.lhs.true9.i.if.then_crit_edge ], [ %9, %nv_match_device.exit127.i.if.then_crit_edge ], [ %9, %land.lhs.true.i122.i.if.then_crit_edge ], [ 33710866, %land.lhs.true.i.if.then_crit_edge ], [ %9, %nv_match_device.exit.i.if.then_crit_edge ], [ %9, %land.lhs.true.i.i.if.then_crit_edge ], [ %9, %entry.if.then_crit_edge ], [ %spec.select, %land.lhs.true54.i ], [ %spec.select117, %land.lhs.true59.i ], [ %spec.select118, %land.lhs.true64.i ], [ %switch.load120, %switch.lookup ], [ 14, %if.then15.i.if.then_crit_edge ], [ %switch.load125, %switch.lookup121 ], [ 14, %if.then33.i.if.then_crit_edge ]
  %entries.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 1
  %52 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %entries.i, align 4
  %arrayidx.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53
  %54 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 40)
  %55 = load i32, ptr %entries.i, align 4
  %inc.i = add i32 %55, 1
  store i32 %inc.i, ptr %entries.i, align 4
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %arrayidx.i, align 4
  %drm12 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %57 = ptrtoint ptr %drm12 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %drm12, align 8
  %dev13 = getelementptr inbounds %struct.nouveau_drm, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev13, align 8
  %dev14 = getelementptr inbounds %struct.drm_device, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev14, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %62, ptr noundef nonnull @.str.109, ptr noundef %name, i32 noundef %idx, i32 noundef %conn.2.ph, i32 noundef %conf.2.ph) #12
  %63 = ptrtoint ptr %dcb1 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %dcb1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %64)
  %cmp19 = icmp ugt i8 %64, 31
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then
  %65 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev_private.i, align 4
  %and.i = and i32 %conn.2.ph, 15
  %type.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 3
  %67 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %and.i, ptr %type.i, align 4
  %68 = trunc i32 %conn.2.ph to i8
  %69 = lshr i8 %68, 4
  %i2c_index.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 4
  %70 = ptrtoint ptr %i2c_index.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %i2c_index.i, align 4
  %shr3.i = lshr i32 %conn.2.ph, 8
  %71 = trunc i32 %shr3.i to i8
  %conv5.i = and i8 %71, 15
  %heads.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 5
  %72 = ptrtoint ptr %heads.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv5.i, ptr %heads.i, align 1
  %shr6.i = lshr i32 %conn.2.ph, 12
  %73 = trunc i32 %shr6.i to i8
  %conv8.i = and i8 %73, 15
  %connector.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 6
  %74 = ptrtoint ptr %connector.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv8.i, ptr %connector.i, align 2
  %shr9.i = lshr i32 %conn.2.ph, 16
  %75 = trunc i32 %shr9.i to i8
  %conv11.i = and i8 %75, 15
  %bus.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 7
  %76 = ptrtoint ptr %bus.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv11.i, ptr %bus.i, align 1
  %shr12.i = lshr i32 %conn.2.ph, 20
  %77 = trunc i32 %shr12.i to i8
  %conv14.i = and i8 %77, 3
  %location.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 8
  %78 = ptrtoint ptr %location.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv14.i, ptr %location.i, align 4
  %shr15.i = lshr i32 %conn.2.ph, 24
  %79 = trunc i32 %shr15.i to i8
  %conv17.i = and i8 %79, 15
  %or.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 9
  %80 = ptrtoint ptr %or.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv17.i, ptr %or.i, align 1
  %81 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %and.i, label %if.then21.sw.epilog145.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 3, label %sw.bb24.i
    i32 1, label %sw.bb69.i
    i32 6, label %sw.bb80.i
    i32 2, label %sw.bb107.i
    i32 14, label %sw.bb143.i
  ]

if.then21.sw.epilog145.i_crit_edge:               ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog145.i

sw.bb.i:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %dcb1 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %dcb1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %83)
  %cmp.i60 = icmp ult i8 %83, 48
  %and21.i = and i32 %conf.2.ph, 65535
  %mul.i = mul nuw nsw i32 %and21.i, 10
  %and22.i = and i32 %conf.2.ph, 255
  %mul23.i = mul nuw nsw i32 %and22.i, 10000
  %cond.i = select i1 %cmp.i60, i32 %mul.i, i32 %mul23.i
  %84 = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 13
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %cond.i, ptr %84, align 4
  br label %sw.epilog145.i

sw.bb24.i:                                        ; preds = %if.then21
  %and25.i = and i32 %conf.2.ph, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool.not.i, label %sw.bb24.i.if.end.i_crit_edge, label %if.then.i61

sw.bb24.i.if.end.i_crit_edge:                     ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i61:                                      ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #11
  %use_straps_for_mode.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 13, i32 0, i32 1
  %86 = ptrtoint ptr %use_straps_for_mode.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %use_straps_for_mode.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i61, %sw.bb24.i.if.end.i_crit_edge
  %87 = ptrtoint ptr %dcb1 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %dcb1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %88)
  %cmp28.i = icmp ult i8 %88, 34
  br i1 %cmp28.i, label %if.then30.i, label %if.else.i

if.then30.i:                                      ; preds = %if.end.i
  %use_straps_for_mode31.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 13, i32 0, i32 1
  %89 = ptrtoint ptr %use_straps_for_mode31.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %use_straps_for_mode31.i, align 4
  %90 = and i32 %conf.2.ph, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %if.then30.i.if.end52.i_crit_edge, label %if.then36.i

if.then30.i.if.end52.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.i

if.then36.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #11
  %92 = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 13
  %use_power_scripts.i = getelementptr inbounds %struct.anon.96, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %use_power_scripts.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %use_power_scripts.i, align 2
  br label %if.end52.i

if.else.i:                                        ; preds = %if.end.i
  %and38.i = and i32 %conf.2.ph, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %if.else.i.if.end41.i_crit_edge, label %if.then40.i

if.else.i.if.end41.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41.i

if.then40.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %94 = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 13
  %use_acpi_for_edid.i = getelementptr inbounds %struct.anon.96, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %use_acpi_for_edid.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %use_acpi_for_edid.i, align 1
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then40.i, %if.else.i.if.end41.i_crit_edge
  %and42.i = and i32 %conf.2.ph, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %if.end41.i.if.end46.i_crit_edge, label %if.then44.i62

if.end41.i.if.end46.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.then44.i62:                                    ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  %96 = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 13
  %use_power_scripts45.i = getelementptr inbounds %struct.anon.96, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %use_power_scripts45.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 1, ptr %use_power_scripts45.i, align 2
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then44.i62, %if.end41.i.if.end46.i_crit_edge
  %and47.i = lshr i32 %conf.2.ph, 4
  %shr48.i = and i32 %and47.i, 3
  %98 = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 13
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %shr48.i, ptr %98, align 4
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.end46.i, %if.then36.i, %if.then30.i.if.end52.i_crit_edge
  %link.0.i = phi i32 [ 0, %if.then36.i ], [ %shr48.i, %if.end46.i ], [ 0, %if.then30.i.if.end52.i_crit_edge ]
  %mask.0.i = phi i32 [ -14, %if.then36.i ], [ -8, %if.end46.i ], [ -14, %if.then30.i.if.end52.i_crit_edge ]
  %and53.i = and i32 %mask.0.i, %conf.2.ph
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.not.i, label %if.end52.i.sw.epilog145.i_crit_edge, label %if.then55.i

if.end52.i.sw.epilog145.i_crit_edge:              ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog145.i

if.then55.i:                                      ; preds = %if.end52.i
  %100 = ptrtoint ptr %dcb1 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %dcb1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %101)
  %cmp58.i = icmp ugt i8 %101, 63
  br i1 %cmp58.i, label %if.then55.i.if.else159.i_crit_edge, label %do.body.i

if.then55.i.if.else159.i_crit_edge:               ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else159.i

do.body.i:                                        ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #11
  %drm63.i = getelementptr inbounds %struct.nouveau_drm, ptr %66, i32 0, i32 2, i32 1
  %102 = ptrtoint ptr %drm63.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %drm63.i, align 8
  %dev64.i = getelementptr inbounds %struct.nouveau_drm, ptr %103, i32 0, i32 3
  %104 = ptrtoint ptr %dev64.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev64.i, align 8
  %dev65.i = getelementptr inbounds %struct.drm_device, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %dev65.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev65.i, align 4
  %name.i = getelementptr inbounds %struct.nouveau_drm, ptr %66, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.111, ptr noundef %name.i) #12
  br label %sw.epilog145.i

sw.bb69.i:                                        ; preds = %if.then21
  %108 = ptrtoint ptr %dcb1 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %dcb1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %109)
  %cmp72.i = icmp ugt i8 %109, 47
  %110 = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 13
  br i1 %cmp72.i, label %if.then74.i, label %if.else77.i

if.then74.i:                                      ; preds = %sw.bb69.i
  call void @__sanitizer_cov_trace_pc() #11
  %111 = trunc i32 %conf.2.ph to i8
  %112 = lshr i8 %111, 7
  %113 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %110, align 4
  br label %sw.epilog145.i

if.else77.i:                                      ; preds = %sw.bb69.i
  call void @__sanitizer_cov_trace_pc() #11
  %114 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %110, align 4
  br label %sw.epilog145.i

sw.bb80.i:                                        ; preds = %if.then21
  %and81.i = lshr i32 %conf.2.ph, 4
  %shr82.i = and i32 %and81.i, 3
  %115 = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 13
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %shr82.i, ptr %115, align 4
  %and85.i = lshr i32 %conf.2.ph, 8
  %conv87.i = trunc i32 %and85.i to i8
  %extdev.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 12
  %117 = ptrtoint ptr %extdev.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv87.i, ptr %extdev.i, align 4
  %and88.i = lshr i32 %conf.2.ph, 21
  %shr89.i = and i32 %and88.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr89.i)
  %118 = icmp ult i32 %shr89.i, 3
  br i1 %118, label %switch.lookup126, label %sw.bb80.i.sw.epilog.i_crit_edge

sw.bb80.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb80.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

switch.lookup126:                                 ; preds = %sw.bb80.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep127 = getelementptr inbounds [3 x i32], ptr @switch.table.parse_dcb_entry.134, i32 0, i32 %shr89.i
  %119 = ptrtoint ptr %switch.gep127 to i32
  call void @__asan_load4_noabort(i32 %119)
  %switch.load128 = load i32, ptr %switch.gep127, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup126, %sw.bb80.i.sw.epilog.i_crit_edge
  %.sink.i63 = phi i32 [ %switch.load128, %switch.lookup126 ], [ 810000, %sw.bb80.i.sw.epilog.i_crit_edge ]
  %link_bw96.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 13, i32 0, i32 2
  %120 = ptrtoint ptr %link_bw96.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %.sink.i63, ptr %link_bw96.i, align 4
  %and97.i = lshr i32 %conf.2.ph, 24
  %shr98.i = and i32 %and97.i, 15
  %121 = zext i32 %shr98.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %shr98.i, label %sw.default102.i [
    i32 15, label %sw.epilog.i.sw.bb99.i_crit_edge
    i32 4, label %sw.epilog.i.sw.bb99.i_crit_edge129
    i32 3, label %sw.epilog.i.sw.bb100.i_crit_edge
    i32 2, label %sw.epilog.i.sw.bb100.i_crit_edge130
  ]

sw.epilog.i.sw.bb100.i_crit_edge130:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb100.i

sw.epilog.i.sw.bb100.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb100.i

sw.epilog.i.sw.bb99.i_crit_edge129:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb99.i

sw.epilog.i.sw.bb99.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb99.i

sw.bb99.i:                                        ; preds = %sw.epilog.i.sw.bb99.i_crit_edge, %sw.epilog.i.sw.bb99.i_crit_edge129
  %link_nr.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 13, i32 0, i32 1
  %122 = ptrtoint ptr %link_nr.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 4, ptr %link_nr.i, align 4
  br label %sw.epilog145.i

sw.bb100.i:                                       ; preds = %sw.epilog.i.sw.bb100.i_crit_edge, %sw.epilog.i.sw.bb100.i_crit_edge130
  %link_nr101.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 13, i32 0, i32 1
  %123 = ptrtoint ptr %link_nr101.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 2, ptr %link_nr101.i, align 4
  br label %sw.epilog145.i

sw.default102.i:                                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %link_nr103.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 13, i32 0, i32 1
  %124 = ptrtoint ptr %link_nr103.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 1, ptr %link_nr103.i, align 4
  br label %sw.epilog145.i

sw.bb107.i:                                       ; preds = %if.then21
  %125 = ptrtoint ptr %dcb1 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %dcb1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %126)
  %cmp110.i = icmp ugt i8 %126, 63
  br i1 %cmp110.i, label %if.then112.i, label %if.else123.i

if.then112.i:                                     ; preds = %sw.bb107.i
  call void @__sanitizer_cov_trace_pc() #11
  %and113.i = lshr i32 %conf.2.ph, 4
  %shr114.i = and i32 %and113.i, 3
  %127 = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 13
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %shr114.i, ptr %127, align 4
  %and117.i = lshr i32 %conf.2.ph, 8
  %conv119.i = trunc i32 %and117.i to i8
  %extdev120.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 12
  %129 = ptrtoint ptr %extdev120.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv119.i, ptr %extdev120.i, align 4
  br label %sw.epilog145.i

if.else123.i:                                     ; preds = %sw.bb107.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %126)
  %cmp126.i = icmp ugt i8 %126, 47
  br i1 %cmp126.i, label %if.then128.i, label %if.else131.i

if.then128.i:                                     ; preds = %if.else123.i
  call void @__sanitizer_cov_trace_pc() #11
  %and129.i = lshr i32 %conf.2.ph, 8
  %shr130.i = and i32 %and129.i, 7
  %slave_addr.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 13, i32 0, i32 1
  %130 = ptrtoint ptr %slave_addr.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %shr130.i, ptr %slave_addr.i, align 4
  br label %sw.epilog145.i

if.else131.i:                                     ; preds = %if.else123.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %126)
  %cmp134.i = icmp ugt i8 %126, 33
  br i1 %cmp134.i, label %if.then136.i, label %if.else131.i.sw.epilog145.i_crit_edge

if.else131.i.sw.epilog145.i_crit_edge:            ; preds = %if.else131.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog145.i

if.then136.i:                                     ; preds = %if.else131.i
  call void @__sanitizer_cov_trace_pc() #11
  %and137.i = lshr i32 %conf.2.ph, 4
  %shr138.i = and i32 %and137.i, 7
  %slave_addr139.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 13, i32 0, i32 1
  %131 = ptrtoint ptr %slave_addr139.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %shr138.i, ptr %slave_addr139.i, align 4
  br label %sw.epilog145.i

sw.bb143.i:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %132 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %entries.i, align 4
  %dec.i = add i32 %133, -1
  store i32 %dec.i, ptr %entries.i, align 4
  br label %cleanup35

sw.epilog145.i:                                   ; preds = %if.then136.i, %if.else131.i.sw.epilog145.i_crit_edge, %if.then128.i, %if.then112.i, %sw.default102.i, %sw.bb100.i, %sw.bb99.i, %if.else77.i, %if.then74.i, %do.body.i, %if.end52.i.sw.epilog145.i_crit_edge, %sw.bb.i, %if.then21.sw.epilog145.i_crit_edge
  %link.1.ph.i = phi i32 [ %shr82.i, %sw.bb99.i ], [ %shr82.i, %sw.bb100.i ], [ %shr82.i, %sw.default102.i ], [ %link.0.i, %do.body.i ], [ %link.0.i, %if.end52.i.sw.epilog145.i_crit_edge ], [ 0, %sw.bb.i ], [ 0, %if.else77.i ], [ 0, %if.then74.i ], [ 0, %if.else131.i.sw.epilog145.i_crit_edge ], [ 0, %if.then136.i ], [ 0, %if.then128.i ], [ %shr114.i, %if.then112.i ], [ 0, %if.then21.sw.epilog145.i_crit_edge ]
  %134 = ptrtoint ptr %dcb1 to i32
  call void @__asan_load1_noabort(i32 %134)
  %.pr.i = load i8, ptr %dcb1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %.pr.i)
  %cmp148.i = icmp ult i8 %.pr.i, 64
  br i1 %cmp148.i, label %if.then150.i, label %sw.epilog145.i.if.else159.i_crit_edge

sw.epilog145.i.if.else159.i_crit_edge:            ; preds = %sw.epilog145.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else159.i

if.then150.i:                                     ; preds = %sw.epilog145.i
  call void @__sanitizer_cov_trace_pc() #11
  %135 = ptrtoint ptr %or.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %or.i, align 1
  %conv152.i = zext i8 %136 to i32
  %137 = tail call i32 @llvm.cttz.i32(i32 %conv152.i, i1 true) #9, !range !267
  %mul153.i = shl i32 3, %137
  call void @__sanitizer_cov_trace_cmp4(i32 %mul153.i, i32 %conv152.i)
  %cmp156.i = icmp eq i32 %mul153.i, %conv152.i
  br label %if.end165.i

if.else159.i:                                     ; preds = %sw.epilog145.i.if.else159.i_crit_edge, %if.then55.i.if.else159.i_crit_edge
  %link.1272.i = phi i32 [ %link.1.ph.i, %sw.epilog145.i.if.else159.i_crit_edge ], [ %link.0.i, %if.then55.i.if.else159.i_crit_edge ]
  %138 = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 13
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %140)
  %cmp161.i = icmp eq i32 %140, 3
  br label %if.end165.i

if.end165.i:                                      ; preds = %if.else159.i, %if.then150.i
  %cmp161.sink.i = phi i1 [ %cmp161.i, %if.else159.i ], [ %cmp156.i, %if.then150.i ]
  %link.1271.i = phi i32 [ %link.1272.i, %if.else159.i ], [ %link.1.ph.i, %if.then150.i ]
  %duallink_possible163.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 11
  %frombool164.i = zext i1 %cmp161.sink.i to i8
  %141 = ptrtoint ptr %duallink_possible163.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %frombool164.i, ptr %duallink_possible163.i, align 1
  %and166.i = and i32 %conf.2.ph, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166.i)
  %tobool167.not.i = icmp eq i32 %and166.i, 0
  br i1 %tobool167.not.i, label %if.end165.i.if.end169.i_crit_edge, label %if.then168.i

if.end165.i.if.end169.i_crit_edge:                ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end169.i

if.then168.i:                                     ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_upper_default.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 14
  %142 = ptrtoint ptr %i2c_upper_default.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 1, ptr %i2c_upper_default.i, align 4
  br label %if.end169.i

if.end169.i:                                      ; preds = %if.then168.i, %if.end165.i.if.end169.i_crit_edge
  %extdev170.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 12
  %143 = ptrtoint ptr %extdev170.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %extdev170.i, align 4
  %conv171.i = zext i8 %144 to i32
  %shl172.i = shl nuw nsw i32 %conv171.i, 8
  %145 = ptrtoint ptr %location.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %location.i, align 4
  %conv174.i = zext i8 %146 to i32
  %shl175.i = shl nuw nsw i32 %conv174.i, 4
  %147 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %type.i, align 4
  %or176.i = or i32 %148, %shl172.i
  %or178.i = or i32 %or176.i, %shl175.i
  %conv179.i = trunc i32 %or178.i to i16
  %hasht.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 1
  %149 = ptrtoint ptr %hasht.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %conv179.i, ptr %hasht.i, align 4
  %150 = ptrtoint ptr %heads.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %heads.i, align 1
  %conv181.i = zext i8 %151 to i32
  %shl182.i = shl nuw nsw i32 %conv181.i, 8
  %shl183.i = shl nuw nsw i32 %link.1271.i, 6
  %or184.i = or i32 %shl182.i, %shl183.i
  %152 = ptrtoint ptr %or.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %or.i, align 1
  %conv186.i = zext i8 %153 to i32
  %or187.i = or i32 %or184.i, %conv186.i
  %conv188.i = trunc i32 %or187.i to i16
  %hashm.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 2
  %154 = ptrtoint ptr %hashm.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %conv188.i, ptr %hashm.i, align 2
  br label %if.end26

if.else:                                          ; preds = %if.then
  %and.i66 = and i32 %conn.2.ph, 15
  %155 = zext i32 %and.i66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %155, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %and.i66, label %do.body.i74 [
    i32 0, label %sw.bb.i68
    i32 1, label %sw.bb2.i
    i32 2, label %if.else.sw.bb4.i_crit_edge
    i32 4, label %if.else.sw.bb4.i_crit_edge131
    i32 3, label %sw.bb8.i
  ]

if.else.sw.bb4.i_crit_edge131:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4.i

if.else.sw.bb4.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4.i

sw.bb.i68:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %type.i67 = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 3
  %156 = ptrtoint ptr %type.i67 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 0, ptr %type.i67, align 4
  br label %sw.epilog.i82

sw.bb2.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %type3.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 3
  %157 = ptrtoint ptr %type3.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 1, ptr %type3.i, align 4
  br label %sw.epilog.i82

sw.bb4.i:                                         ; preds = %if.else.sw.bb4.i_crit_edge, %if.else.sw.bb4.i_crit_edge131
  %and5.i = and i32 %conn.2.ph, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool.not.i69 = icmp eq i32 %and5.i, 0
  %type7.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 3
  br i1 %tobool.not.i69, label %if.else.i71, label %if.then.i70

if.then.i70:                                      ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #11
  %158 = ptrtoint ptr %type7.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 3, ptr %type7.i, align 4
  br label %sw.epilog.i82

if.else.i71:                                      ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #11
  %159 = ptrtoint ptr %type7.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 2, ptr %type7.i, align 4
  br label %sw.epilog.i82

sw.bb8.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %type9.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 3
  %160 = ptrtoint ptr %type9.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 3, ptr %type9.i, align 4
  br label %sw.epilog.i82

do.body.i74:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %161 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev_private.i, align 4
  %drm11.i = getelementptr inbounds %struct.nouveau_drm, ptr %162, i32 0, i32 2, i32 1
  %163 = ptrtoint ptr %drm11.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %drm11.i, align 8
  %dev12.i = getelementptr inbounds %struct.nouveau_drm, ptr %164, i32 0, i32 3
  %165 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev12.i, align 8
  %dev13.i = getelementptr inbounds %struct.drm_device, ptr %166, i32 0, i32 2
  %167 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev13.i, align 4
  %name.i73 = getelementptr inbounds %struct.nouveau_drm, ptr %162, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %168, ptr noundef nonnull @.str.113, ptr noundef %name.i73, i32 noundef %and.i66) #12
  br label %cleanup35

sw.epilog.i82:                                    ; preds = %sw.bb8.i, %if.else.i71, %if.then.i70, %sw.bb2.i, %sw.bb.i68
  %and17.i = lshr i32 %conn.2.ph, 14
  %169 = trunc i32 %and17.i to i8
  %conv.i = and i8 %169, 15
  %i2c_index.i75 = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 4
  %170 = ptrtoint ptr %i2c_index.i75 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %conv.i, ptr %i2c_index.i75, align 4
  %and18.i = lshr i32 %conn.2.ph, 18
  %171 = trunc i32 %and18.i to i8
  %172 = and i8 %171, 7
  %conv20.i = add nuw nsw i8 %172, 1
  %heads.i76 = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 5
  %173 = ptrtoint ptr %heads.i76 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %conv20.i, ptr %heads.i76, align 1
  %or.i77 = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 9
  %174 = ptrtoint ptr %or.i77 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %conv20.i, ptr %or.i77, align 1
  %and22.i78 = lshr i32 %conn.2.ph, 21
  %175 = trunc i32 %and22.i78 to i8
  %conv24.i = and i8 %175, 15
  %location.i79 = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 8
  %176 = ptrtoint ptr %location.i79 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %conv24.i, ptr %location.i79, align 4
  %and25.i80 = lshr i32 %conn.2.ph, 25
  %177 = trunc i32 %and25.i80 to i8
  %conv27.i = and i8 %177, 7
  %bus.i81 = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 7
  %178 = ptrtoint ptr %bus.i81 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %conv27.i, ptr %bus.i81, align 1
  %duallink_possible.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 11
  %179 = ptrtoint ptr %duallink_possible.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 0, ptr %duallink_possible.i, align 1
  %type28.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 3
  %180 = ptrtoint ptr %type28.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %type28.i, align 4
  %182 = zext i32 %181 to i64
  call void @__sanitizer_cov_trace_switch(i64 %182, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %181, label %sw.epilog.i82.if.end26_crit_edge [
    i32 0, label %sw.bb29.i
    i32 1, label %sw.bb31.i
    i32 3, label %sw.bb32.i
  ]

sw.epilog.i82.if.end26_crit_edge:                 ; preds = %sw.epilog.i82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

sw.bb29.i:                                        ; preds = %sw.epilog.i82
  call void @__sanitizer_cov_trace_pc() #11
  %and30.i = and i32 %conf.2.ph, 65535
  %mul.i83 = mul nuw nsw i32 %and30.i, 10
  %183 = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 13
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %mul.i83, ptr %183, align 4
  br label %if.end26

sw.bb31.i:                                        ; preds = %sw.epilog.i82
  call void @__sanitizer_cov_trace_pc() #11
  %185 = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 13
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 0, ptr %185, align 4
  br label %if.end26

sw.bb32.i:                                        ; preds = %sw.epilog.i82
  %187 = and i32 %conn.2.ph, 16128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %187)
  %cmp.not.i = icmp eq i32 %187, 4096
  br i1 %cmp.not.i, label %sw.bb32.i.if.end37.i_crit_edge, label %if.then36.i85

sw.bb32.i.if.end37.i_crit_edge:                   ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i

if.then36.i85:                                    ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #11
  %use_straps_for_mode.i84 = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 13, i32 0, i32 1
  %188 = ptrtoint ptr %use_straps_for_mode.i84 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 1, ptr %use_straps_for_mode.i84, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then36.i85, %sw.bb32.i.if.end37.i_crit_edge
  %189 = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 13
  %use_power_scripts.i86 = getelementptr inbounds %struct.anon.96, ptr %189, i32 0, i32 3
  %190 = ptrtoint ptr %use_power_scripts.i86 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 1, ptr %use_power_scripts.i86, align 2
  br label %if.end26

if.end26:                                         ; preds = %if.end37.i, %sw.bb31.i, %sw.bb29.i, %sw.epilog.i82.if.end26_crit_edge, %if.end169.i
  %type = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 3
  %191 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %192)
  %cmp27 = icmp eq i32 %192, 1
  br i1 %cmp27, label %land.lhs.true, label %if.end26.cleanup35_crit_edge

if.end26.cleanup35_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup35

land.lhs.true:                                    ; preds = %if.end26
  %location = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 8
  %193 = ptrtoint ptr %location to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %location, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %cmp30 = icmp eq i8 %194, 0
  br i1 %cmp30, label %if.then32, label %land.lhs.true.cleanup35_crit_edge

land.lhs.true.cleanup35_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup35

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_index = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 18, i32 22, i32 2, i32 %53, i32 4
  %195 = ptrtoint ptr %i2c_index to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 15, ptr %i2c_index, align 4
  br label %cleanup35

cleanup35:                                        ; preds = %if.then32, %land.lhs.true.cleanup35_crit_edge, %if.end26.cleanup35_crit_edge, %do.body.i74, %sw.bb143.i, %if.then11.i, %land.lhs.true.i.cleanup35_crit_edge
  %retval.1 = phi i32 [ 0, %if.then32 ], [ 0, %if.end26.cleanup35_crit_edge ], [ 0, %land.lhs.true.cleanup35_crit_edge ], [ 0, %land.lhs.true.i.cleanup35_crit_edge ], [ 0, %if.then11.i ], [ 1, %do.body.i74 ], [ 1, %sw.bb143.i ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_tv_identify(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 135)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 135)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !28, !29, !31, !32, !33, !35, !37, !38, !39, !41, !42, !43, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !104, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !200, !202, !203, !204, !205, !207, !208, !209, !210, !212, !213, !214, !215, !217, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235}
!llvm.module.flags = !{!236, !237, !238, !239, !240, !241, !242, !243}
!llvm.ident = !{!244}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 239, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @call_lvds_script._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @call_lvds_script._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 585, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @nouveau_bios_parse_lvds_table._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @nouveau_bios_parse_lvds_table._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 661, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @run_tmds_table._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @run_tmds_table._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 668, i32 3}
!21 = !{ptr @run_tmds_table._entry.10, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @run_tmds_table._entry_ptr.12, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 1259, i32 3}
!25 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @olddcb_table._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @olddcb_table._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 1264, i32 3}
!31 = !{ptr @olddcb_table._entry.16, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @olddcb_table._entry_ptr.18, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 1276, i32 25}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 1296, i32 3}
!37 = !{ptr @olddcb_table._entry.20, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @olddcb_table._entry_ptr.22, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 1300, i32 2}
!41 = !{ptr @olddcb_table._entry.23, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @olddcb_table._entry_ptr.25, !40, !"_entry_ptr", i1 false, i1 false}
!43 = distinct !{null, !44, !"edid_sig", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 1988, i32 23}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 2010, i32 2}
!47 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @nouveau_bios_embedded_edid._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @nouveau_bios_embedded_edid._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 2106, i32 3}
!52 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @nouveau_bios_init._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @nouveau_bios_init._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 195, i32 4}
!57 = !{ptr @run_lvds_table._entry, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @run_lvds_table._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 202, i32 3}
!61 = !{ptr @run_lvds_table._entry.31, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @run_lvds_table._entry_ptr.33, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 278, i32 3}
!65 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @parse_lvds_manufacturer_table_header._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @parse_lvds_manufacturer_table_header._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 292, i32 4}
!70 = !{ptr @parse_lvds_manufacturer_table_header._entry.36, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @parse_lvds_manufacturer_table_header._entry_ptr.38, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @parse_lvds_manufacturer_table_header._entry.39, !73, !"_entry", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 300, i32 4}
!74 = !{ptr @parse_lvds_manufacturer_table_header._entry_ptr.40, !73, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 306, i32 3}
!77 = !{ptr @parse_lvds_manufacturer_table_header._entry.41, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @parse_lvds_manufacturer_table_header._entry_ptr.43, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 98, i32 2}
!81 = !{ptr @.str.45, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @run_digital_op_script._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @run_digital_op_script._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = distinct !{null, !85, !"hwsq_signature", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 1972, i32 23}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 1930, i32 3}
!88 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @load_nv17_hwsq_ucode_entry._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @load_nv17_hwsq_ucode_entry._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 1938, i32 3}
!93 = !{ptr @load_nv17_hwsq_ucode_entry._entry.48, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @load_nv17_hwsq_ucode_entry._entry_ptr.50, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.52, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 1942, i32 2}
!97 = !{ptr @load_nv17_hwsq_ucode_entry._entry.51, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @load_nv17_hwsq_ucode_entry._entry_ptr.53, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @NVInitVBIOS.__key, !100, !"__key", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 2022, i32 2}
!101 = !{ptr @.str.54, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 1011, i32 2}
!104 = !{ptr @.str.56, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @parse_bit_table._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @parse_bit_table._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 803, i32 3}
!109 = !{ptr @.str.58, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @parse_bit_i_tbl_entry._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @parse_bit_i_tbl_entry._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.60, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 815, i32 3}
!114 = !{ptr @parse_bit_i_tbl_entry._entry.59, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @parse_bit_i_tbl_entry._entry_ptr.61, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.63, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 836, i32 3}
!118 = !{ptr @parse_bit_i_tbl_entry._entry.62, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @parse_bit_i_tbl_entry._entry_ptr.64, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.65, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 711, i32 3}
!122 = !{ptr @.str.66, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @parse_bit_A_tbl_entry._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @parse_bit_A_tbl_entry._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.68, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 718, i32 3}
!127 = !{ptr @parse_bit_A_tbl_entry._entry.67, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @parse_bit_A_tbl_entry._entry_ptr.69, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.71, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 725, i32 3}
!131 = !{ptr @parse_bit_A_tbl_entry._entry.70, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @parse_bit_A_tbl_entry._entry_ptr.72, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.74, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 735, i32 3}
!135 = !{ptr @parse_bit_A_tbl_entry._entry.73, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @parse_bit_A_tbl_entry._entry_ptr.75, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.76, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 758, i32 3}
!139 = !{ptr @.str.77, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @parse_bit_display_tbl_entry._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @parse_bit_display_tbl_entry._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.78, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 777, i32 3}
!144 = !{ptr @.str.79, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @parse_bit_init_tbl_entry._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @parse_bit_init_tbl_entry._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.80, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 859, i32 3}
!149 = !{ptr @.str.81, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @parse_bit_lvds_tbl_entry._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @parse_bit_lvds_tbl_entry._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.82, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 933, i32 3}
!154 = !{ptr @.str.83, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @parse_bit_tmds_tbl_entry._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @parse_bit_tmds_tbl_entry._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.85, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 939, i32 3}
!159 = !{ptr @parse_bit_tmds_tbl_entry._entry.84, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @parse_bit_tmds_tbl_entry._entry_ptr.86, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.88, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 943, i32 2}
!163 = !{ptr @parse_bit_tmds_tbl_entry._entry.87, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @parse_bit_tmds_tbl_entry._entry_ptr.89, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.91, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 957, i32 3}
!167 = !{ptr @parse_bit_tmds_tbl_entry._entry.90, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @parse_bit_tmds_tbl_entry._entry_ptr.92, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.93, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 1101, i32 2}
!171 = !{ptr @.str.94, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @parse_bmp_structure._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @parse_bmp_structure._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.96, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 1117, i32 3}
!176 = !{ptr @parse_bmp_structure._entry.95, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @parse_bmp_structure._entry_ptr.97, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.99, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 1166, i32 3}
!180 = !{ptr @parse_bmp_structure._entry.98, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @parse_bmp_structure._entry_ptr.100, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.101, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 1884, i32 2}
!184 = !{ptr @.str.102, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @parse_dcb_table._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @parse_dcb_table._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.104, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 1901, i32 5}
!189 = !{ptr @parse_dcb_table._entry.103, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @parse_dcb_table._entry_ptr.105, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.107, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 1904, i32 5}
!193 = !{ptr @parse_dcb_table._entry.106, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @parse_dcb_table._entry_ptr.108, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.109, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 1798, i32 3}
!197 = !{ptr @.str.110, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @parse_dcb_entry._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @parse_dcb_entry._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.111, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 1458, i32 4}
!202 = !{ptr @.str.112, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @parse_dcb20_entry._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @parse_dcb20_entry._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.113, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 1568, i32 3}
!207 = !{ptr @.str.114, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @parse_dcb15_entry._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @parse_dcb15_entry._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.115, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 1625, i32 5}
!212 = !{ptr @.str.116, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @merge_like_dcb_entries._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @merge_like_dcb_entries._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.117, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 356, i32 3}
!217 = !{ptr @.str.118, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @parse_fp_mode_table._entry, !216, !"_entry", i1 false, i1 false}
!219 = !{ptr @parse_fp_mode_table._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.120, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 394, i32 3}
!222 = !{ptr @parse_fp_mode_table._entry.119, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @parse_fp_mode_table._entry_ptr.121, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.123, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 413, i32 3}
!226 = !{ptr @parse_fp_mode_table._entry.122, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @parse_fp_mode_table._entry_ptr.124, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.126, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 423, i32 3}
!230 = !{ptr @parse_fp_mode_table._entry.125, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @parse_fp_mode_table._entry_ptr.127, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.129, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/nouveau/nouveau_bios.c", i32 442, i32 2}
!234 = !{ptr @parse_fp_mode_table._entry.128, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @parse_fp_mode_table._entry_ptr.130, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{i32 1, !"wchar_size", i32 2}
!237 = !{i32 1, !"min_enum_size", i32 4}
!238 = !{i32 8, !"branch-target-enforcement", i32 0}
!239 = !{i32 8, !"sign-return-address", i32 0}
!240 = !{i32 8, !"sign-return-address-all", i32 0}
!241 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!242 = !{i32 7, !"uwtable", i32 1}
!243 = !{i32 7, !"frame-pointer", i32 2}
!244 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!245 = !{i8 0, i8 2}
!246 = !{!"branch_weights", i32 1, i32 2000}
!247 = !{i64 5446855}
!248 = !{i64 2157857862}
!249 = !{i64 2157351679}
!250 = !{i64 2157352740}
!251 = !{i64 5446437}
!252 = !{i64 2157858796}
!253 = !{!"auto-init"}
!254 = !{i64 2152987585}
!255 = !{i64 5446240}
!256 = !{i64 5446635}
!257 = !{i64 2152985980}
!258 = !{i64 2157869023}
!259 = !{i64 2157870149}
!260 = !{i64 2157871270}
!261 = !{i8 0, i8 9}
!262 = !{i64 2157895795}
!263 = !{i64 2157971893}
!264 = !{i64 2157973241}
!265 = !{i64 2157977682}
!266 = !{i64 2157978176}
!267 = !{i32 0, i32 33}
