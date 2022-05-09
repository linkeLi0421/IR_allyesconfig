; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dw_mipi_dsi_set_slave\22, \22a\22\09"
module asm "\09.weak\09__crc_dw_mipi_dsi_set_slave\09\09\09\09"
module asm "\09.long\09__crc_dw_mipi_dsi_set_slave\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_mipi_dsi_set_slave:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_mipi_dsi_set_slave\22\09\09\09\09\09"
module asm "__kstrtabns_dw_mipi_dsi_set_slave:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dw_mipi_dsi_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_dw_mipi_dsi_probe\09\09\09\09"
module asm "\09.long\09__crc_dw_mipi_dsi_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_mipi_dsi_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_mipi_dsi_probe\22\09\09\09\09\09"
module asm "__kstrtabns_dw_mipi_dsi_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dw_mipi_dsi_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_dw_mipi_dsi_remove\09\09\09\09"
module asm "\09.long\09__crc_dw_mipi_dsi_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_mipi_dsi_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_mipi_dsi_remove\22\09\09\09\09\09"
module asm "__kstrtabns_dw_mipi_dsi_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dw_mipi_dsi_bind\22, \22a\22\09"
module asm "\09.weak\09__crc_dw_mipi_dsi_bind\09\09\09\09"
module asm "\09.long\09__crc_dw_mipi_dsi_bind\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_mipi_dsi_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_mipi_dsi_bind\22\09\09\09\09\09"
module asm "__kstrtabns_dw_mipi_dsi_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dw_mipi_dsi_unbind\22, \22a\22\09"
module asm "\09.weak\09__crc_dw_mipi_dsi_unbind\09\09\09\09"
module asm "\09.long\09__crc_dw_mipi_dsi_unbind\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_mipi_dsi_unbind:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_mipi_dsi_unbind\22\09\09\09\09\09"
module asm "__kstrtabns_dw_mipi_dsi_unbind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mipi_dsi_host_ops = type { ptr, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_mipi_dsi = type { %struct.drm_bridge, %struct.mipi_dsi_host, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.91, ptr, ptr, ptr }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mipi_dsi_host = type { ptr, ptr, %struct.list_head }
%struct.anon.91 = type { i8, i8, i8 }
%struct.debugfs_entries = type { ptr, ptr, i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dw_mipi_dsi_plat_data = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.dw_mipi_dsi_phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.dw_mipi_dsi_host_ops = type { ptr, ptr }
%struct.mipi_dsi_packet = type { i32, [4 x i8], i32, ptr }
%struct.mipi_dsi_msg = type { i8, i8, i16, i32, ptr, i32, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.dw_mipi_dsi_dphy_timing = type { i16, i16, i16, i16 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }

@__kstrtab_dw_mipi_dsi_set_slave = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_mipi_dsi_set_slave = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_mipi_dsi_set_slave = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_mipi_dsi_set_slave to i32), ptr @__kstrtab_dw_mipi_dsi_set_slave, ptr @__kstrtabns_dw_mipi_dsi_set_slave }, section "___ksymtab_gpl+dw_mipi_dsi_set_slave", align 4
@__kstrtab_dw_mipi_dsi_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_mipi_dsi_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_mipi_dsi_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_mipi_dsi_probe to i32), ptr @__kstrtab_dw_mipi_dsi_probe, ptr @__kstrtabns_dw_mipi_dsi_probe }, section "___ksymtab_gpl+dw_mipi_dsi_probe", align 4
@__kstrtab_dw_mipi_dsi_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_mipi_dsi_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_mipi_dsi_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_mipi_dsi_remove to i32), ptr @__kstrtab_dw_mipi_dsi_remove, ptr @__kstrtabns_dw_mipi_dsi_remove }, section "___ksymtab_gpl+dw_mipi_dsi_remove", align 4
@__kstrtab_dw_mipi_dsi_bind = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_mipi_dsi_bind = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_mipi_dsi_bind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_mipi_dsi_bind to i32), ptr @__kstrtab_dw_mipi_dsi_bind, ptr @__kstrtabns_dw_mipi_dsi_bind }, section "___ksymtab_gpl+dw_mipi_dsi_bind", align 4
@__kstrtab_dw_mipi_dsi_unbind = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_mipi_dsi_unbind = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_mipi_dsi_unbind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_mipi_dsi_unbind to i32), ptr @__kstrtab_dw_mipi_dsi_unbind, ptr @__kstrtabns_dw_mipi_dsi_unbind }, section "___ksymtab_gpl+dw_mipi_dsi_unbind", align 4
@__UNIQUE_ID_author308 = internal constant [52 x i8] c"dw_mipi_dsi.author=Chris Zhong <zyw@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author309 = internal constant [58 x i8] c"dw_mipi_dsi.author=Philippe Cornu <philippe.cornu@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description310 = internal constant [59 x i8] c"dw_mipi_dsi.description=DW MIPI DSI host controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file311 = internal constant [61 x i8] c"dw_mipi_dsi.file=drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi\00", section ".modinfo", align 1
@__UNIQUE_ID_license312 = internal constant [24 x i8] c"dw_mipi_dsi.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias313 = internal constant [39 x i8] c"dw_mipi_dsi.alias=platform:dw-mipi-dsi\00", section ".modinfo", align 1
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Phy not properly configured\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@__dw_mipi_dsi_probe._entry = internal constant %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1162, ptr @.str.5, ptr @.str.6 }, align 1
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to get pclk: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__dw_mipi_dsi_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__dw_mipi_dsi_probe._entry_ptr = internal global ptr @__dw_mipi_dsi_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"apb\00", [28 x i8] zeroinitializer }, align 32
@__dw_mipi_dsi_probe._entry.8 = internal constant %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1175, ptr @.str.5, ptr @.str.6 }, align 1
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to get reset control: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@__dw_mipi_dsi_probe._entry_ptr.10 = internal global ptr @__dw_mipi_dsi_probe._entry.8, section ".printk_index", align 4
@__dw_mipi_dsi_probe._entry.11 = internal constant %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1183, ptr @.str.5, ptr @.str.6 }, align 1
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Failed to enable pclk\0A\00", [37 x i8] zeroinitializer }, align 32
@__dw_mipi_dsi_probe._entry_ptr.13 = internal global ptr @__dw_mipi_dsi_probe._entry.11, section ".printk_index", align 4
@dw_mipi_dsi_host_ops = internal constant { %struct.mipi_dsi_host_ops, [20 x i8] } { %struct.mipi_dsi_host_ops { ptr @dw_mipi_dsi_host_attach, ptr @dw_mipi_dsi_host_detach, ptr @dw_mipi_dsi_host_transfer }, [20 x i8] zeroinitializer }, align 32
@__dw_mipi_dsi_probe._entry.14 = internal constant %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 1201, ptr @.str.5, ptr @.str.6 }, align 1
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to register MIPI host: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@__dw_mipi_dsi_probe._entry_ptr.16 = internal global ptr @__dw_mipi_dsi_probe._entry.14, section ".printk_index", align 4
@dw_mipi_dsi_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @dw_mipi_dsi_bridge_attach, ptr null, ptr @dw_mipi_dsi_bridge_mode_valid, ptr null, ptr null, ptr @dw_mipi_dsi_bridge_post_disable, ptr @dw_mipi_dsi_bridge_mode_set, ptr null, ptr @dw_mipi_dsi_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@dw_mipi_dsi_debugfs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 1108, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to create debugfs root\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dw_mipi_dsi_debugfs_init\00", [39 x i8] zeroinitializer }, align 32
@dw_mipi_dsi_debugfs_init._entry_ptr = internal global ptr @dw_mipi_dsi_debugfs_init._entry, section ".printk_index", align 4
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vpg\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vpg_horizontal\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vpg_ber_pattern\00", [16 x i8] zeroinitializer }, align 32
@fops_x32 = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_x32_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@dw_mipi_dsi_host_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 348, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"the number of data lanes(%u) is too many\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dw_mipi_dsi_host_attach\00", [40 x i8] zeroinitializer }, align 32
@dw_mipi_dsi_host_attach._entry_ptr = internal global ptr @dw_mipi_dsi_host_attach._entry, section ".printk_index", align 4
@dw_mipi_dsi_host_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 530, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create packet: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dw_mipi_dsi_host_transfer\00", [38 x i8] zeroinitializer }, align 32
@dw_mipi_dsi_host_transfer._entry_ptr = internal global ptr @dw_mipi_dsi_host_transfer._entry, section ".printk_index", align 4
@dw_mipi_dsi_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 477, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to get available write payload FIFO\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dw_mipi_dsi_write\00", [46 x i8] zeroinitializer }, align 32
@dw_mipi_dsi_write._entry_ptr = internal global ptr @dw_mipi_dsi_write._entry, section ".printk_index", align 4
@dw_mipi_dsi_gen_pkt_hdr_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 433, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to get available command FIFO\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dw_mipi_dsi_gen_pkt_hdr_write\00", [34 x i8] zeroinitializer }, align 32
@dw_mipi_dsi_gen_pkt_hdr_write._entry_ptr = internal global ptr @dw_mipi_dsi_gen_pkt_hdr_write._entry, section ".printk_index", align 4
@dw_mipi_dsi_gen_pkt_hdr_write._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.4, i32 444, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to write command FIFO\0A\00", [34 x i8] zeroinitializer }, align 32
@dw_mipi_dsi_gen_pkt_hdr_write._entry_ptr.33 = internal global ptr @dw_mipi_dsi_gen_pkt_hdr_write._entry.31, section ".printk_index", align 4
@dw_mipi_dsi_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 499, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Timeout during read operation\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dw_mipi_dsi_read\00", [47 x i8] zeroinitializer }, align 32
@dw_mipi_dsi_read._entry_ptr = internal global ptr @dw_mipi_dsi_read._entry, section ".printk_index", align 4
@dw_mipi_dsi_read._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.4, i32 509, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Read payload FIFO is empty\0A\00", [36 x i8] zeroinitializer }, align 32
@dw_mipi_dsi_read._entry_ptr.38 = internal global ptr @dw_mipi_dsi_read._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Parent encoder object not found\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Phy get_lane_mbps() failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Phy init() failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Phy get_esc_clk_rate() failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* Retrieving phy timings failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to wait phy lock state\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to wait phy clk lane stop state\0A\00", [56 x i8] zeroinitializer }, align 32
@switch.table.dw_mipi_dsi_mode_set = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 5, i32 260, i32 3], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 1146, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 1159, i32 32 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 1162, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 1170, i32 59 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 1175, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 1183, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant [21 x i8] c"dw_mipi_dsi_host_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 559, i32 39 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 1201, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [25 x i8] c"dw_mipi_dsi_bridge_funcs\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 1034, i32 38 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 1108, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 1088, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 1089, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 1090, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [9 x i8] c"fops_x32\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 1081, i32 1 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 347, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 530, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 476, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 433, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 444, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 499, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 509, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 1012, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 937, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 957, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 638, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 796, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 857, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.185 = private constant [49 x i8] c"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 863, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [34 x i8] c"switch.table.dw_mipi_dsi_mode_set\00", align 1
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_alias313, ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_file311, ptr @__UNIQUE_ID_license312, ptr @__dw_mipi_dsi_probe._entry, ptr @__dw_mipi_dsi_probe._entry.11, ptr @__dw_mipi_dsi_probe._entry.14, ptr @__dw_mipi_dsi_probe._entry.8, ptr @__dw_mipi_dsi_probe._entry_ptr, ptr @__dw_mipi_dsi_probe._entry_ptr.10, ptr @__dw_mipi_dsi_probe._entry_ptr.13, ptr @__dw_mipi_dsi_probe._entry_ptr.16, ptr @__ksymtab_dw_mipi_dsi_bind, ptr @__ksymtab_dw_mipi_dsi_probe, ptr @__ksymtab_dw_mipi_dsi_remove, ptr @__ksymtab_dw_mipi_dsi_set_slave, ptr @__ksymtab_dw_mipi_dsi_unbind, ptr @dw_mipi_dsi_debugfs_init._entry, ptr @dw_mipi_dsi_debugfs_init._entry_ptr, ptr @dw_mipi_dsi_gen_pkt_hdr_write._entry, ptr @dw_mipi_dsi_gen_pkt_hdr_write._entry.31, ptr @dw_mipi_dsi_gen_pkt_hdr_write._entry_ptr, ptr @dw_mipi_dsi_gen_pkt_hdr_write._entry_ptr.33, ptr @dw_mipi_dsi_host_attach._entry, ptr @dw_mipi_dsi_host_attach._entry_ptr, ptr @dw_mipi_dsi_host_transfer._entry, ptr @dw_mipi_dsi_host_transfer._entry_ptr, ptr @dw_mipi_dsi_read._entry, ptr @dw_mipi_dsi_read._entry.36, ptr @dw_mipi_dsi_read._entry_ptr, ptr @dw_mipi_dsi_read._entry_ptr.38, ptr @dw_mipi_dsi_write._entry, ptr @dw_mipi_dsi_write._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @dw_mipi_dsi_host_ops, ptr @.str.15, ptr @dw_mipi_dsi_bridge_funcs, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @fops_x32, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @switch.table.dw_mipi_dsi_mode_set], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mipi_dsi_host_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mipi_dsi_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mipi_dsi_debugfs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_x32 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mipi_dsi_host_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mipi_dsi_host_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mipi_dsi_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mipi_dsi_gen_pkt_hdr_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mipi_dsi_gen_pkt_hdr_write._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mipi_dsi_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mipi_dsi_read._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dw_mipi_dsi_mode_set to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dw_mipi_dsi_set_slave(ptr noundef %dsi, ptr noundef %slave) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %slave1 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 16
  %0 = ptrtoint ptr %slave1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %slave, ptr %slave1, align 4
  %master = getelementptr inbounds %struct.dw_mipi_dsi, ptr %slave, i32 0, i32 15
  %1 = ptrtoint ptr %master to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dsi, ptr %master, align 4
  %lanes = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 9
  %2 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lanes, align 4
  %4 = load ptr, ptr %slave1, align 4
  %lanes4 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %lanes4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %3, ptr %lanes4, align 4
  %channel = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 8
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel, align 4
  %8 = load ptr, ptr %slave1, align 4
  %channel6 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %channel6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %channel6, align 4
  %format = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 10
  %10 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %format, align 4
  %12 = load ptr, ptr %slave1, align 4
  %format8 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %format8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %format8, align 4
  %mode_flags = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 11
  %14 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode_flags, align 4
  %16 = load ptr, ptr %slave1, align 4
  %mode_flags10 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %mode_flags10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %mode_flags10, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dw_mipi_dsi_probe(ptr noundef %pdev, ptr noundef %plat_data) #1 align 64 {
entry:
  %debugfs.i.i.i = alloca [3 x %struct.debugfs_entries], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef 360, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.__dw_mipi_dsi_probe.exit_crit_edge, label %if.end.i

entry.__dw_mipi_dsi_probe.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__dw_mipi_dsi_probe.exit

if.end.i:                                         ; preds = %entry
  %dev3.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %call.i.i, i32 0, i32 3
  %0 = ptrtoint ptr %dev3.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1.i, ptr %dev3.i, align 4
  %plat_data4.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %call.i.i, i32 0, i32 17
  %1 = ptrtoint ptr %plat_data4.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %plat_data, ptr %plat_data4.i, align 4
  %phy_ops.i = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %plat_data, i32 0, i32 3
  %2 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_ops.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool5.not.i = icmp eq ptr %5, null
  br i1 %tobool5.not.i, label %if.end.i.if.then11.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then11.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %get_lane_mbps.i = getelementptr inbounds %struct.dw_mipi_dsi_phy_ops, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %get_lane_mbps.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_lane_mbps.i, align 4
  %tobool7.not.i = icmp eq ptr %7, null
  br i1 %tobool7.not.i, label %lor.lhs.false.i.if.then11.i_crit_edge, label %lor.lhs.false8.i

lor.lhs.false.i.if.then11.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i
  %get_timing.i = getelementptr inbounds %struct.dw_mipi_dsi_phy_ops, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %get_timing.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_timing.i, align 4
  %tobool10.not.i = icmp eq ptr %9, null
  br i1 %tobool10.not.i, label %lor.lhs.false8.i.if.then11.i_crit_edge, label %if.end13.i

lor.lhs.false8.i.if.then11.i_crit_edge:           ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i

if.then11.i:                                      ; preds = %lor.lhs.false8.i.if.then11.i_crit_edge, %lor.lhs.false.i.if.then11.i_crit_edge, %if.end.i.if.then11.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #7
  br label %__dw_mipi_dsi_probe.exit

if.end13.i:                                       ; preds = %lor.lhs.false8.i
  %10 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %plat_data, align 4
  %tobool14.not.i = icmp eq ptr %11, null
  br i1 %tobool14.not.i, label %if.then15.i, label %if.else.i

if.then15.i:                                      ; preds = %if.end13.i
  %call16.i = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %base17.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %call.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %base17.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call16.i, ptr %base17.i, align 4
  %cmp.i.i = icmp ugt ptr %call16.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then15.i.__dw_mipi_dsi_probe.exit_crit_edge, label %if.then15.i.if.end25.i_crit_edge

if.then15.i.if.end25.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

if.then15.i.__dw_mipi_dsi_probe.exit_crit_edge:   ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__dw_mipi_dsi_probe.exit

if.else.i:                                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %base24.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %call.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %base24.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %base24.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else.i, %if.then15.i.if.end25.i_crit_edge
  %call26.i = tail call ptr @devm_clk_get(ptr noundef %dev1.i, ptr noundef nonnull @.str.1) #7
  %pclk.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %call.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %pclk.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call26.i, ptr %pclk.i, align 4
  %cmp.i129.i = icmp ugt ptr %call26.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i129.i, label %if.then29.i, label %if.end33.i

if.then29.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call26.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.2, i32 noundef %15) #10
  br label %__dw_mipi_dsi_probe.exit

if.end33.i:                                       ; preds = %if.end25.i
  %call.i130.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1.i, ptr noundef nonnull @.str.7, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #7
  %cmp.i131.i = icmp ugt ptr %call.i130.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i131.i, label %if.then36.i, label %if.end44.i

if.then36.i:                                      ; preds = %if.end33.i
  %cmp.not.i = icmp eq ptr %call.i130.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not.i, label %if.then36.i.__dw_mipi_dsi_probe.exit_crit_edge, label %do.end41.i

if.then36.i.__dw_mipi_dsi_probe.exit_crit_edge:   ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__dw_mipi_dsi_probe.exit

do.end41.i:                                       ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %call.i130.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.9, i32 noundef %16) #10
  br label %__dw_mipi_dsi_probe.exit

if.end44.i:                                       ; preds = %if.end33.i
  %tobool45.not.i = icmp eq ptr %call.i130.i, null
  br i1 %tobool45.not.i, label %if.end44.i.if.end59.i_crit_edge, label %if.then46.i

if.end44.i.if.end59.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.i

if.then46.i:                                      ; preds = %if.end44.i
  %17 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pclk.i, align 4
  %call.i132.i = tail call i32 @clk_prepare(ptr noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132.i)
  %tobool.not.i.i = icmp eq i32 %call.i132.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then46.i.do.end53.i_crit_edge

if.then46.i.do.end53.i_crit_edge:                 ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end53.i

if.end.i.i:                                       ; preds = %if.then46.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end55.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %18) #7
  br label %do.end53.i

do.end53.i:                                       ; preds = %if.then3.i.i, %if.then46.i.do.end53.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i132.i, %if.then46.i.do.end53.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3) #10
  %19 = inttoptr i32 %retval.0.i.ph.i to ptr
  br label %__dw_mipi_dsi_probe.exit

if.end55.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call56.i = tail call i32 @reset_control_assert(ptr noundef nonnull %call.i130.i) #7
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  %call57.i = tail call i32 @reset_control_deassert(ptr noundef nonnull %call.i130.i) #7
  %20 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pclk.i, align 4
  tail call void @clk_disable(ptr noundef %21) #7
  tail call void @clk_unprepare(ptr noundef %21) #7
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.end55.i, %if.end44.i.if.end59.i_crit_edge
  %22 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev3.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end59.i.dev_name.exit.i.i_crit_edge

if.end59.i.dev_name.exit.i.i_crit_edge:           ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.end59.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %27, %if.end.i.i.i ], [ %25, %if.end59.i.dev_name.exit.i.i_crit_edge ]
  %call1.i133.i = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i.i.i, ptr noundef null) #7
  %debugfs.i.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %call.i.i, i32 0, i32 12
  %28 = ptrtoint ptr %debugfs.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call1.i133.i, ptr %debugfs.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call1.i133.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %do.end.i.i, label %if.end.i134.i

do.end.i.i:                                       ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev3.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.17) #10
  br label %dw_mipi_dsi_debugfs_init.exit.i

if.end.i134.i:                                    ; preds = %dev_name.exit.i.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %debugfs.i.i.i) #7
  %31 = ptrtoint ptr %debugfs.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.19, ptr %debugfs.i.i.i, align 4
  %reg.i.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs.i.i.i, i32 0, i32 1
  %vpg_defs.i.i.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %call.i.i, i32 0, i32 14
  %32 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %vpg_defs.i.i.i, ptr %reg.i.i.i, align 4
  %mask.i.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs.i.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %mask.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 65536, ptr %mask.i.i.i, align 4
  %dsi1.i.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs.i.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %dsi1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i.i, ptr %dsi1.i.i.i, align 4
  %arrayinit.element.i.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs.i.i.i, i32 1
  %35 = ptrtoint ptr %arrayinit.element.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.20, ptr %arrayinit.element.i.i.i, align 4
  %reg3.i.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs.i.i.i, i32 1, i32 1
  %vpg_horizontal.i.i.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %call.i.i, i32 0, i32 14, i32 1
  %36 = ptrtoint ptr %reg3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %vpg_horizontal.i.i.i, ptr %reg3.i.i.i, align 4
  %mask5.i.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs.i.i.i, i32 1, i32 2
  %37 = ptrtoint ptr %mask5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 16777216, ptr %mask5.i.i.i, align 4
  %dsi6.i.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs.i.i.i, i32 1, i32 3
  %38 = ptrtoint ptr %dsi6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i.i, ptr %dsi6.i.i.i, align 4
  %arrayinit.element7.i.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs.i.i.i, i32 2
  %39 = ptrtoint ptr %arrayinit.element7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.21, ptr %arrayinit.element7.i.i.i, align 4
  %reg9.i.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs.i.i.i, i32 2, i32 1
  %vpg_ber_pattern.i.i.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %call.i.i, i32 0, i32 14, i32 2
  %40 = ptrtoint ptr %reg9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %vpg_ber_pattern.i.i.i, ptr %reg9.i.i.i, align 4
  %mask11.i.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs.i.i.i, i32 2, i32 2
  %41 = ptrtoint ptr %mask11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1048576, ptr %mask11.i.i.i, align 4
  %dsi12.i.i.i = getelementptr inbounds %struct.debugfs_entries, ptr %debugfs.i.i.i, i32 2, i32 3
  %42 = ptrtoint ptr %dsi12.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i.i, ptr %dsi12.i.i.i, align 4
  %call.i.i.i = call ptr @kmemdup(ptr noundef nonnull %debugfs.i.i.i, i32 noundef 48, i32 noundef 3264) #7
  %debugfs_vpg.i.i.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %call.i.i, i32 0, i32 13
  %43 = ptrtoint ptr %debugfs_vpg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i.i.i, ptr %debugfs_vpg.i.i.i, align 4
  %tobool.not.i9.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i9.i.i, label %if.end.i134.i.debugfs_create_files.exit.i.i_crit_edge, label %for.cond.preheader.i.i.i

if.end.i134.i.debugfs_create_files.exit.i.i_crit_edge: ; preds = %if.end.i134.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %debugfs_create_files.exit.i.i

for.cond.preheader.i.i.i:                         ; preds = %if.end.i134.i
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i.i.i, align 4
  %46 = ptrtoint ptr %debugfs.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %debugfs.i.i, align 4
  %call19.i.i.i = call ptr @debugfs_create_file(ptr noundef %45, i16 noundef zeroext 420, ptr noundef %47, ptr noundef nonnull %call.i.i.i, ptr noundef nonnull @fops_x32) #7
  %48 = ptrtoint ptr %debugfs_vpg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %debugfs_vpg.i.i.i, align 4
  %arrayidx.1.i.i.i = getelementptr %struct.debugfs_entries, ptr %49, i32 1
  %50 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.1.i.i.i, align 4
  %52 = ptrtoint ptr %debugfs.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %debugfs.i.i, align 4
  %call19.1.i.i.i = call ptr @debugfs_create_file(ptr noundef %51, i16 noundef zeroext 420, ptr noundef %53, ptr noundef %arrayidx.1.i.i.i, ptr noundef nonnull @fops_x32) #7
  %54 = ptrtoint ptr %debugfs_vpg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %debugfs_vpg.i.i.i, align 4
  %arrayidx.2.i.i.i = getelementptr %struct.debugfs_entries, ptr %55, i32 2
  %56 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.2.i.i.i, align 4
  %58 = ptrtoint ptr %debugfs.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %debugfs.i.i, align 4
  %call19.2.i.i.i = call ptr @debugfs_create_file(ptr noundef %57, i16 noundef zeroext 420, ptr noundef %59, ptr noundef %arrayidx.2.i.i.i, ptr noundef nonnull @fops_x32) #7
  br label %debugfs_create_files.exit.i.i

debugfs_create_files.exit.i.i:                    ; preds = %for.cond.preheader.i.i.i, %if.end.i134.i.debugfs_create_files.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %debugfs.i.i.i) #7
  br label %dw_mipi_dsi_debugfs_init.exit.i

dw_mipi_dsi_debugfs_init.exit.i:                  ; preds = %debugfs_create_files.exit.i.i, %do.end.i.i
  call void @pm_runtime_enable(ptr noundef %dev1.i) #7
  %dsi_host.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %call.i.i, i32 0, i32 1
  %ops.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %call.i.i, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @dw_mipi_dsi_host_ops, ptr %ops.i, align 4
  %61 = ptrtoint ptr %dsi_host.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %dev1.i, ptr %dsi_host.i, align 4
  %call63.i = call i32 @mipi_dsi_host_register(ptr noundef %dsi_host.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %if.end70.i, label %do.end68.i

do.end68.i:                                       ; preds = %dw_mipi_dsi_debugfs_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.15, i32 noundef %call63.i) #10
  %62 = ptrtoint ptr %debugfs.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %debugfs.i.i, align 4
  call void @debugfs_remove(ptr noundef %63) #7
  %debugfs_vpg.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %call.i.i, i32 0, i32 13
  %64 = ptrtoint ptr %debugfs_vpg.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %debugfs_vpg.i, align 4
  call void @kfree(ptr noundef %65) #7
  %66 = inttoptr i32 %call63.i to ptr
  br label %__dw_mipi_dsi_probe.exit

if.end70.i:                                       ; preds = %dw_mipi_dsi_debugfs_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %driver_private.i = getelementptr inbounds %struct.drm_bridge, ptr %call.i.i, i32 0, i32 8
  %67 = ptrtoint ptr %driver_private.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call.i.i, ptr %driver_private.i, align 4
  %funcs.i = getelementptr inbounds %struct.drm_bridge, ptr %call.i.i, i32 0, i32 7
  %68 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @dw_mipi_dsi_bridge_funcs, ptr %funcs.i, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %69 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %of_node.i, align 8
  %of_node74.i = getelementptr inbounds %struct.drm_bridge, ptr %call.i.i, i32 0, i32 4
  %71 = ptrtoint ptr %of_node74.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %of_node74.i, align 4
  call void @drm_bridge_add(ptr noundef nonnull %call.i.i) #7
  br label %__dw_mipi_dsi_probe.exit

__dw_mipi_dsi_probe.exit:                         ; preds = %if.end70.i, %do.end68.i, %do.end53.i, %do.end41.i, %if.then36.i.__dw_mipi_dsi_probe.exit_crit_edge, %if.then29.i, %if.then15.i.__dw_mipi_dsi_probe.exit_crit_edge, %if.then11.i, %entry.__dw_mipi_dsi_probe.exit_crit_edge
  %retval.0.i = phi ptr [ %call26.i, %if.then29.i ], [ %19, %do.end53.i ], [ %66, %do.end68.i ], [ %call.i.i, %if.end70.i ], [ inttoptr (i32 -19 to ptr), %if.then11.i ], [ inttoptr (i32 -12 to ptr), %entry.__dw_mipi_dsi_probe.exit_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.then15.i.__dw_mipi_dsi_probe.exit_crit_edge ], [ %call.i130.i, %do.end41.i ], [ inttoptr (i32 -517 to ptr), %if.then36.i.__dw_mipi_dsi_probe.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dw_mipi_dsi_remove(ptr noundef %dsi) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi_host.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 1
  tail call void @mipi_dsi_host_unregister(ptr noundef %dsi_host.i) #7
  %dev.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  tail call void @__pm_runtime_disable(ptr noundef %1, i1 noundef zeroext true) #7
  %debugfs.i.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 12
  %2 = ptrtoint ptr %debugfs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs.i.i, align 4
  tail call void @debugfs_remove(ptr noundef %3) #7
  %debugfs_vpg.i.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 13
  %4 = ptrtoint ptr %debugfs_vpg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs_vpg.i.i, align 4
  tail call void @kfree(ptr noundef %5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dw_mipi_dsi_bind(ptr noundef %dsi, ptr noundef %encoder) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @drm_bridge_attach(ptr noundef %encoder, ptr noundef %dsi, ptr noundef null, i32 noundef 0) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dw_mipi_dsi_unbind(ptr nocapture %dsi) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_host_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_x32_open(ptr noundef %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @dw_mipi_dsi_debugfs_show, ptr noundef nonnull @dw_mipi_dsi_debugfs_write, ptr noundef nonnull @.str.22) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dw_mipi_dsi_debugfs_show(ptr noundef readonly %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %reg = getelementptr inbounds %struct.debugfs_entries, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1, !range !121
  %4 = zext i8 %3 to i64
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %val, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_debugfs_write(ptr noundef readonly %data, i64 noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dsi1 = getelementptr inbounds %struct.debugfs_entries, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %dsi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi1, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %tobool2 = icmp ne i64 %val, 0
  %reg = getelementptr inbounds %struct.debugfs_entries, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %frombool = zext i1 %tobool2 to i8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %3, align 1
  %base.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 56
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !122
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool4.not = icmp eq i8 %12, 0
  %mask6 = getelementptr inbounds %struct.debugfs_entries, ptr %data, i32 0, i32 2
  %13 = ptrtoint ptr %mask6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask6, align 4
  %or = or i32 %14, %8
  %neg = xor i32 %14, -1
  %and = and i32 %8, %neg
  %mode_cfg.0 = select i1 %tobool4.not, i32 %and, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %mode_cfg.0) #7
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %17, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %15) #7, !srcloc !125
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_host_attach(ptr nocapture noundef %host, ptr noundef %device) #1 align 64 {
entry:
  %bridge.i = alloca ptr, align 4
  %panel.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %plat_data = getelementptr i8, ptr %host, i32 76
  %0 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_data, align 4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %device, i32 0, i32 4
  %2 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lanes, align 8
  %max_data_lanes = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %max_data_lanes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_data_lanes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp ugt i32 %3, %5
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr i8, ptr %host, i32 20
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.23, i32 noundef %3) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lanes4 = getelementptr i8, ptr %host, i32 44
  %8 = ptrtoint ptr %lanes4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %lanes4, align 4
  %channel = getelementptr inbounds %struct.mipi_dsi_device, ptr %device, i32 0, i32 3
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channel, align 4
  %channel5 = getelementptr i8, ptr %host, i32 40
  %11 = ptrtoint ptr %channel5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %channel5, align 4
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %device, i32 0, i32 5
  %12 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %format, align 4
  %format6 = getelementptr i8, ptr %host, i32 48
  %14 = ptrtoint ptr %format6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %format6, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %device, i32 0, i32 6
  %15 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode_flags, align 8
  %mode_flags7 = getelementptr i8, ptr %host, i32 52
  %17 = ptrtoint ptr %mode_flags7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %mode_flags7, align 4
  %device_found = getelementptr i8, ptr %host, i32 32
  %18 = ptrtoint ptr %device_found to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %device_found, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %if.then8, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then8:                                         ; preds = %if.end
  %20 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bridge.i) #7
  %24 = ptrtoint ptr %bridge.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 -1 to ptr), ptr %bridge.i, align 4, !annotation !126
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %panel.i) #7
  %25 = ptrtoint ptr %panel.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 -1 to ptr), ptr %panel.i, align 4, !annotation !126
  %call.i = call i32 @drm_of_find_panel_or_bridge(ptr noundef %23, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %panel.i, ptr noundef nonnull %bridge.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then8.dw_mipi_dsi_panel_or_bridge.exit.thread_crit_edge

if.then8.dw_mipi_dsi_panel_or_bridge.exit.thread_crit_edge: ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_mipi_dsi_panel_or_bridge.exit.thread

if.end.i:                                         ; preds = %if.then8
  %26 = ptrtoint ptr %panel.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %panel.i, align 4
  %tobool1.not.i = icmp eq ptr %27, null
  br i1 %tobool1.not.i, label %if.end8.ithread-pre-split, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %call3.i = call ptr @drm_panel_bridge_add_typed(ptr noundef nonnull %27, i32 noundef 16) #7
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %dw_mipi_dsi_panel_or_bridge.exit, label %if.then2.i.if.end8.i_crit_edge

if.then2.i.if.end8.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.end8.ithread-pre-split:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load ptr, ptr %bridge.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end8.ithread-pre-split, %if.then2.i.if.end8.i_crit_edge
  %29 = phi ptr [ %.pr, %if.end8.ithread-pre-split ], [ %call3.i, %if.then2.i.if.end8.i_crit_edge ]
  %panel_bridge.i = getelementptr i8, ptr %host, i32 16
  %30 = ptrtoint ptr %panel_bridge.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %panel_bridge.i, align 4
  %tobool10.not.i = icmp eq ptr %29, null
  br i1 %tobool10.not.i, label %if.end8.i.dw_mipi_dsi_panel_or_bridge.exit.thread_crit_edge, label %dw_mipi_dsi_panel_or_bridge.exit.thread55

if.end8.i.dw_mipi_dsi_panel_or_bridge.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_mipi_dsi_panel_or_bridge.exit.thread

dw_mipi_dsi_panel_or_bridge.exit.thread55:        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bridge.i) #7
  %31 = ptrtoint ptr %device_found to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %device_found, align 4
  br label %if.end15

dw_mipi_dsi_panel_or_bridge.exit.thread:          ; preds = %if.end8.i.dw_mipi_dsi_panel_or_bridge.exit.thread_crit_edge, %if.then8.dw_mipi_dsi_panel_or_bridge.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %if.then8.dw_mipi_dsi_panel_or_bridge.exit.thread_crit_edge ], [ -517, %if.end8.i.dw_mipi_dsi_panel_or_bridge.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bridge.i) #7
  br label %cleanup

dw_mipi_dsi_panel_or_bridge.exit:                 ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %call3.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bridge.i) #7
  br label %cleanup

if.end15:                                         ; preds = %dw_mipi_dsi_panel_or_bridge.exit.thread55, %if.end.if.end15_crit_edge
  %host_ops = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %host_ops to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %host_ops, align 4
  %tobool16.not = icmp eq ptr %34, null
  br i1 %tobool16.not, label %if.end15.if.end26_crit_edge, label %land.lhs.true

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end15
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %tobool18.not = icmp eq ptr %36, null
  br i1 %tobool18.not, label %land.lhs.true.if.end26_crit_edge, label %if.then19

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then19:                                        ; preds = %land.lhs.true
  %priv_data = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %1, i32 0, i32 5
  %37 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv_data, align 4
  %call22 = call i32 %36(ptr noundef %38, ptr noundef %device) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then19.cleanup_crit_edge, label %if.then19.if.end26_crit_edge

if.then19.if.end26_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.then19.if.end26_crit_edge, %land.lhs.true.if.end26_crit_edge, %if.end15.if.end26_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then19.cleanup_crit_edge, %dw_mipi_dsi_panel_or_bridge.exit, %dw_mipi_dsi_panel_or_bridge.exit.thread, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end26 ], [ %32, %dw_mipi_dsi_panel_or_bridge.exit ], [ %call22, %if.then19.cleanup_crit_edge ], [ %retval.0.i.ph, %dw_mipi_dsi_panel_or_bridge.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_host_detach(ptr noundef %host, ptr noundef %device) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %host, i32 -280
  %plat_data = getelementptr i8, ptr %host, i32 76
  %0 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_data, align 4
  %host_ops = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %host_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_ops, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %land.lhs.true

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %detach = getelementptr inbounds %struct.dw_mipi_dsi_host_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %detach to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %detach, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.if.end7_crit_edge, label %if.then

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %land.lhs.true
  %priv_data = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv_data, align 4
  %call5 = tail call i32 %5(ptr noundef %7, ptr noundef %device) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %8 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_graph_get_remote_node(ptr noundef %11, i32 noundef 1, i32 noundef 0) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end7.drm_of_panel_bridge_remove.exit_crit_edge, label %if.end.i

if.end7.drm_of_panel_bridge_remove.exit_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_of_panel_bridge_remove.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call ptr @of_drm_find_bridge(ptr noundef nonnull %call.i) #7
  tail call void @drm_panel_bridge_remove(ptr noundef %call1.i) #7
  br label %drm_of_panel_bridge_remove.exit

drm_of_panel_bridge_remove.exit:                  ; preds = %if.end.i, %if.end7.drm_of_panel_bridge_remove.exit_crit_edge
  tail call void @drm_bridge_remove(ptr noundef %add.ptr.i) #7
  br label %cleanup

cleanup:                                          ; preds = %drm_of_panel_bridge_remove.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %drm_of_panel_bridge_remove.exit ], [ %call5, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_host_transfer(ptr nocapture noundef readonly %host, ptr noundef %msg) #1 align 64 {
entry:
  %packet = alloca %struct.mipi_dsi_packet, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %host, i32 -280
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %packet) #7
  %0 = call ptr @memset(ptr %packet, i32 255, i32 16)
  %call1 = call i32 @mipi_dsi_create_packet(ptr noundef nonnull %packet, ptr noundef %msg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr i8, ptr %host, i32 20
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %call1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 2
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flags.i, align 2
  %5 = and i16 %4, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i = icmp eq i16 %5, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %base.i.i = getelementptr i8, ptr %host, i32 24
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 67112960) #7, !srcloc !125
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags.i, align 2
  %10 = shl i16 %9, 1
  %11 = and i16 %10, 2
  %12 = zext i16 %11 to i32
  %or7.i = or i32 %12, 17792768
  %val.1.i = select i1 %tobool.not.i, i32 %12, i32 %or7.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %13 = call i32 @llvm.bswap.i32(i32 %val.1.i) #7
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %15, i32 104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %13) #7, !srcloc !125
  %16 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %17, i32 56
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i) #7, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  %19 = and i32 %18, -8388609
  %20 = call i32 @llvm.bswap.i32(i32 %19) #7
  %21 = shl nuw i16 %5, 14
  %22 = zext i16 %21 to i32
  %val.2.i = or i32 %20, %22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %23 = call i32 @llvm.bswap.i32(i32 %val.2.i) #7
  %24 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %25, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %23) #7, !srcloc !125
  %slave = getelementptr i8, ptr %host, i32 72
  %26 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %slave, align 4
  %tobool2.not = icmp eq ptr %27, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %flags.i, align 2
  %30 = and i16 %29, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool.not.i54 = icmp eq i16 %30, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %base.i.i55 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %27, i32 0, i32 4
  %31 = ptrtoint ptr %base.i.i55 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i.i55, align 4
  %add.ptr.i.i56 = getelementptr i8, ptr %32, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i56, i32 67112960) #7, !srcloc !125
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %flags.i, align 2
  %35 = shl i16 %34, 1
  %36 = and i16 %35, 2
  %37 = zext i16 %36 to i32
  %or7.i57 = or i32 %37, 17792768
  %val.1.i58 = select i1 %tobool.not.i54, i32 %37, i32 %or7.i57
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %38 = call i32 @llvm.bswap.i32(i32 %val.1.i58) #7
  %39 = ptrtoint ptr %base.i.i55 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i.i55, align 4
  %add.ptr.i25.i59 = getelementptr i8, ptr %40, i32 104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i59, i32 %38) #7, !srcloc !125
  %41 = ptrtoint ptr %base.i.i55 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i.i55, align 4
  %add.ptr.i27.i60 = getelementptr i8, ptr %42, i32 56
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i60) #7, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  %44 = and i32 %43, -8388609
  %45 = call i32 @llvm.bswap.i32(i32 %44) #7
  %46 = shl nuw i16 %30, 14
  %47 = zext i16 %46 to i32
  %val.2.i61 = or i32 %45, %47
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %48 = call i32 @llvm.bswap.i32(i32 %val.2.i61) #7
  %49 = ptrtoint ptr %base.i.i55 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i.i55, align 4
  %add.ptr.i29.i62 = getelementptr i8, ptr %50, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i62, i32 %48) #7, !srcloc !125
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %call6 = call fastcc i32 @dw_mipi_dsi_write(ptr noundef %add.ptr.i, ptr noundef nonnull %packet)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %51 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %slave, align 4
  %tobool11.not = icmp eq ptr %52, null
  br i1 %tobool11.not, label %if.end9.if.end18_crit_edge, label %if.then12

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then12:                                        ; preds = %if.end9
  %call14 = call fastcc i32 @dw_mipi_dsi_write(ptr noundef nonnull %52, ptr noundef nonnull %packet)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then12.if.end18_crit_edge, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12.if.end18_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end18:                                         ; preds = %if.then12.if.end18_crit_edge, %if.end9.if.end18_crit_edge
  %rx_buf = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 6
  %53 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rx_buf, align 4
  %tobool19.not = icmp eq ptr %54, null
  br i1 %tobool19.not, label %if.end18.if.end27_crit_edge, label %land.lhs.true

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end18
  %rx_len = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 5
  %55 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool20.not = icmp eq i32 %56, 0
  br i1 %tobool20.not, label %land.lhs.true.if.end27_crit_edge, label %if.then21

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then21:                                        ; preds = %land.lhs.true
  %call.i = call i64 @ktime_get() #7
  %add.i.i = add i64 %call.i, 20000000
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 497) #7
  %57 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i.i, align 4
  %add.ptr160.i = getelementptr i8, ptr %58, i32 116
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr160.i) #7, !srcloc !122
  %60 = call i32 @llvm.bswap.i32(i32 %59) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %and161.i = and i32 %60, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161.i)
  %tobool.not162.i = icmp eq i32 %and161.i, 0
  br i1 %tobool.not162.i, label %if.then21.for.end.i_crit_edge, label %if.then21.land.lhs.true.i_crit_edge

if.then21.land.lhs.true.i_crit_edge:              ; preds = %if.then21
  br label %land.lhs.true.i

if.then21.for.end.i_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

land.lhs.true.i:                                  ; preds = %if.then26.i.land.lhs.true.i_crit_edge, %if.then21.land.lhs.true.i_crit_edge
  %call13.i = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then16.i, label %if.then26.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %62, i32 116
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #7, !srcloc !122
  %64 = call i32 @llvm.bswap.i32(i32 %63) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  br label %for.end.i

if.then26.i:                                      ; preds = %land.lhs.true.i
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #7
  %65 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i63 = getelementptr i8, ptr %66, i32 116
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #7, !srcloc !122
  %68 = call i32 @llvm.bswap.i32(i32 %67) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %and.i = and i32 %68, 64
  %tobool.not.i64 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i64, label %if.then26.i.for.end.i_crit_edge, label %if.then26.i.land.lhs.true.i_crit_edge

if.then26.i.land.lhs.true.i_crit_edge:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

if.then26.i.for.end.i_crit_edge:                  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %if.then26.i.for.end.i_crit_edge, %if.then16.i, %if.then21.for.end.i_crit_edge
  %val.0.i = phi i32 [ %64, %if.then16.i ], [ %60, %if.then21.for.end.i_crit_edge ], [ %68, %if.then26.i.for.end.i_crit_edge ]
  %and29.i = and i32 %val.0.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %for.cond37.preheader.i, label %for.end.i.dw_mipi_dsi_read.exit_crit_edge

for.end.i.dw_mipi_dsi_read.exit_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_mipi_dsi_read.exit

for.cond37.preheader.i:                           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp38168.i = icmp sgt i32 %56, 0
  br i1 %cmp38168.i, label %for.cond37.preheader.i.for.body.i_crit_edge, label %for.cond37.preheader.i.if.end27_crit_edge

for.cond37.preheader.i.if.end27_crit_edge:        ; preds = %for.cond37.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

for.cond37.preheader.i.for.body.i_crit_edge:      ; preds = %for.cond37.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc109.i.for.body.i_crit_edge, %for.cond37.preheader.i.for.body.i_crit_edge
  %i.0169.i = phi i32 [ %add110.i, %for.inc109.i.for.body.i_crit_edge ], [ 0, %for.cond37.preheader.i.for.body.i_crit_edge ]
  %call42.i = call i64 @ktime_get() #7
  %add.i148.i = add i64 %call42.i, 20000000
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 507) #7
  %69 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i.i, align 4
  %add.ptr60163.i = getelementptr i8, ptr %70, i32 116
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60163.i) #7, !srcloc !122
  %72 = call i32 @llvm.bswap.i32(i32 %71) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %and64164.i = and i32 %72, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64164.i)
  %tobool65.not165.i = icmp eq i32 %and64164.i, 0
  br i1 %tobool65.not165.i, label %for.body.i.for.end87.i_crit_edge, label %for.body.i.land.lhs.true69.i_crit_edge

for.body.i.land.lhs.true69.i_crit_edge:           ; preds = %for.body.i
  br label %land.lhs.true69.i

for.body.i.for.end87.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end87.i

land.lhs.true69.i:                                ; preds = %if.then83.i.land.lhs.true69.i_crit_edge, %for.body.i.land.lhs.true69.i_crit_edge
  %call70.i = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call70.i, i64 %add.i148.i)
  %cmp3.i150.i = icmp sgt i64 %call70.i, %add.i148.i
  br i1 %cmp3.i150.i, label %if.then73.i, label %if.then83.i

if.then73.i:                                      ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i.i, align 4
  %add.ptr77.i = getelementptr i8, ptr %74, i32 116
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77.i) #7, !srcloc !122
  %76 = call i32 @llvm.bswap.i32(i32 %75) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  br label %for.end87.i

if.then83.i:                                      ; preds = %land.lhs.true69.i
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #7
  %77 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i.i, align 4
  %add.ptr60.i = getelementptr i8, ptr %78, i32 116
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60.i) #7, !srcloc !122
  %80 = call i32 @llvm.bswap.i32(i32 %79) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %and64.i = and i32 %80, 16
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %if.then83.i.for.end87.i_crit_edge, label %if.then83.i.land.lhs.true69.i_crit_edge

if.then83.i.land.lhs.true69.i_crit_edge:          ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true69.i

if.then83.i.for.end87.i_crit_edge:                ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end87.i

for.end87.i:                                      ; preds = %if.then83.i.for.end87.i_crit_edge, %if.then73.i, %for.body.i.for.end87.i_crit_edge
  %val.1.i65 = phi i32 [ %76, %if.then73.i ], [ %72, %for.body.i.for.end87.i_crit_edge ], [ %80, %if.then83.i.for.end87.i_crit_edge ]
  %and89.i = and i32 %val.1.i65, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i)
  %tobool90.not.i = icmp eq i32 %and89.i, 0
  br i1 %tobool90.not.i, label %for.body105.i, label %for.end87.i.dw_mipi_dsi_read.exit_crit_edge

for.end87.i.dw_mipi_dsi_read.exit_crit_edge:      ; preds = %for.end87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_mipi_dsi_read.exit

for.body105.i:                                    ; preds = %for.end87.i
  %81 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i66 = getelementptr i8, ptr %82, i32 112
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i66) #7, !srcloc !122
  %84 = call i32 @llvm.bswap.i32(i32 %83) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  %conv.i = trunc i32 %84 to i8
  %arrayidx.i = getelementptr i8, ptr %54, i32 %i.0169.i
  %85 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %add103.1.i = or i32 %i.0169.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add103.1.i, i32 %56)
  %cmp104.1.i = icmp slt i32 %add103.1.i, %56
  br i1 %cmp104.1.i, label %for.body105.1.i, label %for.body105.i.for.inc109.i_crit_edge

for.body105.i.for.inc109.i_crit_edge:             ; preds = %for.body105.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc109.i

for.body105.1.i:                                  ; preds = %for.body105.i
  %shr106.1.i = lshr i32 %84, 8
  %conv.1.i = trunc i32 %shr106.1.i to i8
  %arrayidx.1.i = getelementptr i8, ptr %54, i32 %add103.1.i
  %86 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv.1.i, ptr %arrayidx.1.i, align 1
  %add103.2.i = or i32 %i.0169.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add103.2.i, i32 %56)
  %cmp104.2.i = icmp slt i32 %add103.2.i, %56
  br i1 %cmp104.2.i, label %for.body105.2.i, label %for.body105.1.i.for.inc109.i_crit_edge

for.body105.1.i.for.inc109.i_crit_edge:           ; preds = %for.body105.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc109.i

for.body105.2.i:                                  ; preds = %for.body105.1.i
  %shr106.2.i = lshr i32 %84, 16
  %conv.2.i = trunc i32 %shr106.2.i to i8
  %arrayidx.2.i = getelementptr i8, ptr %54, i32 %add103.2.i
  %87 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv.2.i, ptr %arrayidx.2.i, align 1
  %add103.3.i = or i32 %i.0169.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add103.3.i, i32 %56)
  %cmp104.3.i = icmp slt i32 %add103.3.i, %56
  br i1 %cmp104.3.i, label %for.body105.3.i, label %for.body105.2.i.for.inc109.i_crit_edge

for.body105.2.i.for.inc109.i_crit_edge:           ; preds = %for.body105.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc109.i

for.body105.3.i:                                  ; preds = %for.body105.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr106.3.i = lshr i32 %84, 24
  %conv.3.i = trunc i32 %shr106.3.i to i8
  %arrayidx.3.i = getelementptr i8, ptr %54, i32 %add103.3.i
  %88 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv.3.i, ptr %arrayidx.3.i, align 1
  br label %for.inc109.i

for.inc109.i:                                     ; preds = %for.body105.3.i, %for.body105.2.i.for.inc109.i_crit_edge, %for.body105.1.i.for.inc109.i_crit_edge, %for.body105.i.for.inc109.i_crit_edge
  %add110.i = add i32 %i.0169.i, 4
  %cmp38.i = icmp slt i32 %add110.i, %56
  br i1 %cmp38.i, label %for.inc109.i.for.body.i_crit_edge, label %for.inc109.i.if.end27_crit_edge

for.inc109.i.if.end27_crit_edge:                  ; preds = %for.inc109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

for.inc109.i.for.body.i_crit_edge:                ; preds = %for.inc109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

dw_mipi_dsi_read.exit:                            ; preds = %for.end87.i.dw_mipi_dsi_read.exit_crit_edge, %for.end.i.dw_mipi_dsi_read.exit_crit_edge
  %.str.37.sink.i = phi ptr [ @.str.34, %for.end.i.dw_mipi_dsi_read.exit_crit_edge ], [ @.str.37, %for.end87.i.dw_mipi_dsi_read.exit_crit_edge ]
  %dev98.i = getelementptr i8, ptr %host, i32 20
  %89 = ptrtoint ptr %dev98.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev98.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull %.str.37.sink.i) #10
  br label %cleanup

if.end27:                                         ; preds = %for.inc109.i.if.end27_crit_edge, %for.cond37.preheader.i.if.end27_crit_edge, %land.lhs.true.if.end27_crit_edge, %if.end18.if.end27_crit_edge
  %nb_bytes.0.in = phi ptr [ %packet, %land.lhs.true.if.end27_crit_edge ], [ %packet, %if.end18.if.end27_crit_edge ], [ %rx_len, %for.cond37.preheader.i.if.end27_crit_edge ], [ %rx_len, %for.inc109.i.if.end27_crit_edge ]
  %91 = ptrtoint ptr %nb_bytes.0.in to i32
  call void @__asan_load4_noabort(i32 %91)
  %nb_bytes.0 = load i32, ptr %nb_bytes.0.in, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %dw_mipi_dsi_read.exit, %if.then12.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %nb_bytes.0, %if.end27 ], [ %call6, %if.end5.cleanup_crit_edge ], [ %call14, %if.then12.cleanup_crit_edge ], [ -110, %dw_mipi_dsi_read.exit ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %packet) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_panel_bridge_add_typed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_bridge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_bridge_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_create_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dw_mipi_dsi_write(ptr nocapture noundef readonly %dsi, ptr nocapture noundef readonly %packet) unnamed_addr #1 align 64 {
entry:
  %word = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %payload = getelementptr inbounds %struct.mipi_dsi_packet, ptr %packet, i32 0, i32 3
  %0 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %payload, align 4
  %payload_length = getelementptr inbounds %struct.mipi_dsi_packet, ptr %packet, i32 0, i32 2
  %2 = ptrtoint ptr %payload_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %payload_length, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %word)
  %4 = ptrtoint ptr %word to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %word, align 4
  %base.i71 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.while.cond_crit_edge, %entry
  %len.0 = phi i32 [ %3, %entry ], [ %len.1, %for.end.while.cond_crit_edge ]
  %tx_buf.0 = phi ptr [ %1, %entry ], [ %tx_buf.1, %for.end.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %tobool.not = icmp eq i32 %len.0, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len.0)
  %cmp = icmp slt i32 %len.0, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %word to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %word, align 4
  %6 = call ptr @memcpy(ptr %word, ptr %tx_buf.0, i32 %len.0)
  %word.0.word.0.word.0. = load i32, ptr %word, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %base.i71 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i71, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %word.0.word.0.word.0.) #7, !srcloc !125
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %tx_buf.0 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %tx_buf.0, align 1
  %11 = ptrtoint ptr %word to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %word, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %base.i71 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i71, align 4
  %add.ptr.i72 = getelementptr i8, ptr %13, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 %10) #7, !srcloc !125
  %add.ptr = getelementptr i8, ptr %tx_buf.0, i32 4
  %sub = add nsw i32 %len.0, -4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %len.1 = phi i32 [ 0, %if.then ], [ %sub, %if.else ]
  %tx_buf.1 = phi ptr [ %tx_buf.0, %if.then ], [ %add.ptr, %if.else ]
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 20000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 474) #7
  %14 = ptrtoint ptr %base.i71 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i71, align 4
  %add.ptr1179 = getelementptr i8, ptr %15, i32 116
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1179) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  %17 = and i32 %16, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool14.not81 = icmp eq i32 %17, 0
  br i1 %tobool14.not81, label %if.end.for.end_crit_edge, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true:                                    ; preds = %if.then31.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call18 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call18, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call18, %add.i
  br i1 %cmp3.i, label %if.then21, label %if.then31

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %base.i71 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i71, align 4
  %add.ptr25 = getelementptr i8, ptr %19, i32 116
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #7, !srcloc !122
  %21 = lshr i32 %20, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  %.pre = and i32 %21, 8
  br label %for.end

if.then31:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #7
  %22 = ptrtoint ptr %base.i71 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i71, align 4
  %add.ptr11 = getelementptr i8, ptr %23, i32 116
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  %25 = and i32 %24, 134217728
  %tobool14.not = icmp eq i32 %25, 0
  br i1 %tobool14.not, label %if.then31.for.end_crit_edge, label %if.then31.land.lhs.true_crit_edge

if.then31.land.lhs.true_crit_edge:                ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then31.for.end_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.then31.for.end_crit_edge, %if.then21, %if.end.for.end_crit_edge
  %and34.pre-phi = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %.pre, %if.then21 ], [ 0, %if.then31.for.end_crit_edge ]
  %tobool35.not = icmp eq i32 %and34.pre-phi, 0
  br i1 %tobool35.not, label %for.end.while.cond_crit_edge, label %for.end.cleanup.sink.split_crit_edge

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.end.while.cond_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %header = getelementptr inbounds %struct.mipi_dsi_packet, ptr %packet, i32 0, i32 1
  %26 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %26)
  %word.0.copyload = load i32, ptr %header, align 4
  %27 = ptrtoint ptr %word to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %word.0.copyload, ptr %word, align 4
  %call.i = tail call i64 @ktime_get() #7
  %add.i.i = add i64 %call.i, 20000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 431) #7
  %28 = ptrtoint ptr %base.i71 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i71, align 4
  %add.ptr133.i = getelementptr i8, ptr %29, i32 116
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr133.i) #7, !srcloc !122
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  %and134.i = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134.i)
  %tobool.not135.i = icmp eq i32 %and134.i, 0
  br i1 %tobool.not135.i, label %while.end.for.end.i_crit_edge, label %while.end.land.lhs.true.i_crit_edge

while.end.land.lhs.true.i_crit_edge:              ; preds = %while.end
  br label %land.lhs.true.i

while.end.for.end.i_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

land.lhs.true.i:                                  ; preds = %if.then26.i.land.lhs.true.i_crit_edge, %while.end.land.lhs.true.i_crit_edge
  %call13.i = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then16.i, label %if.then26.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %base.i71 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i71, align 4
  %add.ptr20.i = getelementptr i8, ptr %33, i32 116
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #7, !srcloc !122
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  br label %for.end.i

if.then26.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #7
  %36 = ptrtoint ptr %base.i71 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i71, align 4
  %add.ptr.i74 = getelementptr i8, ptr %37, i32 116
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74) #7, !srcloc !122
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  %and.i = and i32 %39, 2
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then26.i.for.end.i_crit_edge, label %if.then26.i.land.lhs.true.i_crit_edge

if.then26.i.land.lhs.true.i_crit_edge:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

if.then26.i.for.end.i_crit_edge:                  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %if.then26.i.for.end.i_crit_edge, %if.then16.i, %while.end.for.end.i_crit_edge
  %val.0.i = phi i32 [ %35, %if.then16.i ], [ %31, %while.end.for.end.i_crit_edge ], [ %39, %if.then26.i.for.end.i_crit_edge ]
  %and29.i = and i32 %val.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end36.i, label %for.end.i.cleanup.sink.split_crit_edge

for.end.i.cleanup.sink.split_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end36.i:                                       ; preds = %for.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %base.i71 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i71, align 4
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %word.0.copyload) #7, !srcloc !125
  %call40.i = tail call i64 @ktime_get() #7
  %add.i122.i = add i64 %call40.i, 20000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 442) #7
  %42 = ptrtoint ptr %base.i71 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i71, align 4
  %add.ptr58136.i = getelementptr i8, ptr %43, i32 116
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58136.i) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  %45 = and i32 %44, 83886080
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %45)
  %cmp63138.i = icmp eq i32 %45, 83886080
  br i1 %cmp63138.i, label %if.end36.i.cleanup_crit_edge, label %if.end36.i.land.lhs.true67.i_crit_edge

if.end36.i.land.lhs.true67.i_crit_edge:           ; preds = %if.end36.i
  br label %land.lhs.true67.i

if.end36.i.cleanup_crit_edge:                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true67.i:                                ; preds = %if.then81.i.land.lhs.true67.i_crit_edge, %if.end36.i.land.lhs.true67.i_crit_edge
  %call68.i = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call68.i, i64 %add.i122.i)
  %cmp3.i124.i = icmp sgt i64 %call68.i, %add.i122.i
  br i1 %cmp3.i124.i, label %for.end85.i, label %if.then81.i

if.then81.i:                                      ; preds = %land.lhs.true67.i
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #7
  %46 = ptrtoint ptr %base.i71 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i71, align 4
  %add.ptr58.i = getelementptr i8, ptr %47, i32 116
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58.i) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  %49 = and i32 %48, 83886080
  %cmp63.i = icmp eq i32 %49, 83886080
  br i1 %cmp63.i, label %if.then81.i.cleanup_crit_edge, label %if.then81.i.land.lhs.true67.i_crit_edge

if.then81.i.land.lhs.true67.i_crit_edge:          ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true67.i

if.then81.i.cleanup_crit_edge:                    ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end85.i:                                      ; preds = %land.lhs.true67.i
  %50 = ptrtoint ptr %base.i71 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i71, align 4
  %add.ptr75.i = getelementptr i8, ptr %51, i32 116
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr75.i) #7, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %53 = and i32 %52, 83886080
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %53)
  %cmp88.i = icmp eq i32 %53, 83886080
  br i1 %cmp88.i, label %for.end85.i.cleanup_crit_edge, label %for.end85.i.cleanup.sink.split_crit_edge

for.end85.i.cleanup.sink.split_crit_edge:         ; preds = %for.end85.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.end85.i.cleanup_crit_edge:                    ; preds = %for.end85.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %for.end85.i.cleanup.sink.split_crit_edge, %for.end.i.cleanup.sink.split_crit_edge, %for.end.cleanup.sink.split_crit_edge
  %.str.32.sink.i.sink = phi ptr [ @.str.29, %for.end.i.cleanup.sink.split_crit_edge ], [ @.str.32, %for.end85.i.cleanup.sink.split_crit_edge ], [ @.str.27, %for.end.cleanup.sink.split_crit_edge ]
  %dev95.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 3
  %54 = ptrtoint ptr %dev95.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev95.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull %.str.32.sink.i.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end85.i.cleanup_crit_edge, %if.then81.i.cleanup_crit_edge, %if.end36.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end85.i.cleanup_crit_edge ], [ 0, %if.end36.i.cleanup_crit_edge ], [ -110, %cleanup.sink.split ], [ 0, %if.then81.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %word)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_bridge_attach(ptr noundef %bridge, i32 noundef %flags) #1 align 64 {
entry:
  %bridge.i = alloca ptr, align 4
  %panel.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.39) #7
  br label %cleanup12

if.end:                                           ; preds = %entry
  %encoder_type = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %encoder_type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 6, ptr %encoder_type, align 4
  %device_found = getelementptr inbounds %struct.dw_mipi_dsi, ptr %bridge, i32 0, i32 6
  %3 = ptrtoint ptr %device_found to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %device_found, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.dw_mipi_dsi, ptr %bridge, i32 0, i32 3
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bridge.i) #7
  %9 = ptrtoint ptr %bridge.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %bridge.i, align 4, !annotation !126
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %panel.i) #7
  %10 = ptrtoint ptr %panel.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %panel.i, align 4, !annotation !126
  %call.i = call i32 @drm_of_find_panel_or_bridge(ptr noundef %8, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %panel.i, ptr noundef nonnull %bridge.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then3.dw_mipi_dsi_panel_or_bridge.exit.thread_crit_edge

if.then3.dw_mipi_dsi_panel_or_bridge.exit.thread_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_mipi_dsi_panel_or_bridge.exit.thread

if.end.i:                                         ; preds = %if.then3
  %11 = ptrtoint ptr %panel.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %panel.i, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %if.end8.ithread-pre-split, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %call3.i = call ptr @drm_panel_bridge_add_typed(ptr noundef nonnull %12, i32 noundef 16) #7
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %dw_mipi_dsi_panel_or_bridge.exit, label %if.then2.i.if.end8.i_crit_edge

if.then2.i.if.end8.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.end8.ithread-pre-split:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load ptr, ptr %bridge.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end8.ithread-pre-split, %if.then2.i.if.end8.i_crit_edge
  %14 = phi ptr [ %.pr, %if.end8.ithread-pre-split ], [ %call3.i, %if.then2.i.if.end8.i_crit_edge ]
  %panel_bridge.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %bridge, i32 0, i32 2
  %15 = ptrtoint ptr %panel_bridge.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %panel_bridge.i, align 4
  %tobool10.not.i = icmp eq ptr %14, null
  br i1 %tobool10.not.i, label %if.end8.i.dw_mipi_dsi_panel_or_bridge.exit.thread_crit_edge, label %dw_mipi_dsi_panel_or_bridge.exit.thread24

if.end8.i.dw_mipi_dsi_panel_or_bridge.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_mipi_dsi_panel_or_bridge.exit.thread

dw_mipi_dsi_panel_or_bridge.exit.thread24:        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bridge.i) #7
  %16 = ptrtoint ptr %device_found to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %device_found, align 4
  br label %if.end9

dw_mipi_dsi_panel_or_bridge.exit.thread:          ; preds = %if.end8.i.dw_mipi_dsi_panel_or_bridge.exit.thread_crit_edge, %if.then3.dw_mipi_dsi_panel_or_bridge.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %if.then3.dw_mipi_dsi_panel_or_bridge.exit.thread_crit_edge ], [ -517, %if.end8.i.dw_mipi_dsi_panel_or_bridge.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bridge.i) #7
  br label %cleanup12

dw_mipi_dsi_panel_or_bridge.exit:                 ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %call3.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bridge.i) #7
  br label %cleanup12

if.end9:                                          ; preds = %dw_mipi_dsi_panel_or_bridge.exit.thread24, %if.end.if.end9_crit_edge
  %18 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %encoder, align 4
  %panel_bridge = getelementptr inbounds %struct.dw_mipi_dsi, ptr %bridge, i32 0, i32 2
  %20 = ptrtoint ptr %panel_bridge to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %panel_bridge, align 4
  %call11 = call i32 @drm_bridge_attach(ptr noundef %19, ptr noundef %21, ptr noundef %bridge, i32 noundef %flags) #7
  br label %cleanup12

cleanup12:                                        ; preds = %if.end9, %dw_mipi_dsi_panel_or_bridge.exit, %dw_mipi_dsi_panel_or_bridge.exit.thread, %if.then
  %retval.1 = phi i32 [ %call11, %if.end9 ], [ -19, %if.then ], [ %17, %dw_mipi_dsi_panel_or_bridge.exit ], [ %retval.0.i.ph, %dw_mipi_dsi_panel_or_bridge.exit.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_bridge_mode_valid(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readnone %info, ptr noundef %mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %plat_data = getelementptr inbounds %struct.dw_mipi_dsi, ptr %bridge, i32 0, i32 17
  %0 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_data, align 4
  %mode_valid = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mode_valid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mode_valid, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priv_data = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv_data, align 4
  %call2 = tail call i32 %3(ptr noundef %5, ptr noundef %mode) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mode_status.0 = phi i32 [ %call2, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %mode_status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mipi_dsi_bridge_post_disable(ptr nocapture noundef readonly %bridge) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %plat_data = getelementptr inbounds %struct.dw_mipi_dsi, ptr %bridge, i32 0, i32 17
  %0 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_data, align 4
  %phy_ops1 = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %phy_ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_ops1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %base.i.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %bridge, i32 0, i32 4
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %7, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 16777216) #7, !srcloc !125
  %mode_flags1.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %bridge, i32 0, i32 11
  %8 = ptrtoint ptr %mode_flags1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode_flags1.i, align 4
  %and2.i = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %spec.select.i = select i1 %tobool3.not.i, i32 16777216, i32 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %11, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %spec.select.i) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 16777216) #7, !srcloc !125
  %panel_bridge = getelementptr inbounds %struct.dw_mipi_dsi, ptr %bridge, i32 0, i32 2
  %14 = ptrtoint ptr %panel_bridge to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %panel_bridge, align 4
  %funcs = getelementptr inbounds %struct.drm_bridge, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs, align 4
  %post_disable = getelementptr inbounds %struct.drm_bridge_funcs, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %post_disable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %post_disable, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %19(ptr noundef %15) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %power_off = getelementptr inbounds %struct.dw_mipi_dsi_phy_ops, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %power_off to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %power_off, align 4
  %tobool6.not = icmp eq ptr %21, null
  br i1 %tobool6.not, label %if.end.if.end10_crit_edge, label %if.then7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %plat_data, align 4
  %priv_data = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv_data, align 4
  tail call void %21(ptr noundef %25) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  %slave = getelementptr inbounds %struct.dw_mipi_dsi, ptr %bridge, i32 0, i32 16
  %26 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %slave, align 4
  %tobool11.not = icmp eq ptr %27, null
  br i1 %tobool11.not, label %if.end10.if.end17_crit_edge, label %if.then12

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %base.i.i36 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %base.i.i36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i36, align 4
  %add.ptr.i.i37 = getelementptr i8, ptr %29, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i37, i32 0) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %base.i.i36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i36, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %31, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 0) #7, !srcloc !125
  %32 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %slave, align 4
  %pclk = getelementptr inbounds %struct.dw_mipi_dsi, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %35) #7
  tail call void @clk_unprepare(ptr noundef %35) #7
  %36 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %slave, align 4
  %dev = getelementptr inbounds %struct.dw_mipi_dsi, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %39, i32 noundef 5) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end10.if.end17_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i39 = getelementptr i8, ptr %41, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i39, i32 0) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %42 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i3.i40 = getelementptr i8, ptr %43, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i40, i32 0) #7, !srcloc !125
  %pclk18 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %bridge, i32 0, i32 5
  %44 = ptrtoint ptr %pclk18 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pclk18, align 4
  tail call void @clk_disable(ptr noundef %45) #7
  tail call void @clk_unprepare(ptr noundef %45) #7
  %dev19 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %bridge, i32 0, i32 3
  %46 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev19, align 4
  %call.i41 = tail call i32 @__pm_runtime_idle(ptr noundef %47, i32 noundef 5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mipi_dsi_bridge_mode_set(ptr noundef %bridge, ptr nocapture noundef readnone %mode, ptr noundef %adjusted_mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @dw_mipi_dsi_mode_set(ptr noundef %bridge, ptr noundef %adjusted_mode)
  %slave = getelementptr inbounds %struct.dw_mipi_dsi, ptr %bridge, i32 0, i32 16
  %0 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @dw_mipi_dsi_mode_set(ptr noundef nonnull %1, ptr noundef %adjusted_mode)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mipi_dsi_bridge_enable(ptr nocapture noundef readonly %bridge) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @dw_mipi_dsi_set_mode(ptr noundef %bridge, i32 noundef 1)
  %slave = getelementptr inbounds %struct.dw_mipi_dsi, ptr %bridge, i32 0, i32 16
  %0 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @dw_mipi_dsi_set_mode(ptr noundef nonnull %1, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_mipi_dsi_set_mode(ptr nocapture noundef readonly %dsi, i32 noundef %mode_flags) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %base.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 4
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !125
  %and = and i32 %mode_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %3, i32 52
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 0) #7, !srcloc !125
  %mode_flags.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 11
  %4 = ptrtoint ptr %mode_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode_flags.i, align 4
  %and.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and2.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %..i = select i1 %tobool3.not.i, i32 16129, i32 16128
  %val.0.i = select i1 %tobool.not.i, i32 %..i, i32 16130
  %vpg_defs.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 14
  %6 = ptrtoint ptr %vpg_defs.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vpg_defs.i, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool9.not.i = icmp eq i8 %7, 0
  br i1 %tobool9.not.i, label %if.then.dw_mipi_dsi_video_mode_config.exit_crit_edge, label %if.then10.i

if.then.dw_mipi_dsi_video_mode_config.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_mipi_dsi_video_mode_config.exit

if.then10.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %vpg_horizontal.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 14, i32 1
  %8 = ptrtoint ptr %vpg_horizontal.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vpg_horizontal.i, align 1, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool13.not.i = icmp eq i8 %9, 0
  %cond.i = select i1 %tobool13.not.i, i32 0, i32 16777216
  %vpg_ber_pattern.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 14, i32 2
  %10 = ptrtoint ptr %vpg_ber_pattern.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %vpg_ber_pattern.i, align 2, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool16.not.i = icmp eq i8 %11, 0
  %cond17.i = select i1 %tobool16.not.i, i32 0, i32 1048576
  %or11.i = or i32 %val.0.i, %cond.i
  %or14.i = or i32 %or11.i, %cond17.i
  %or18.i = or i32 %or14.i, 65536
  br label %dw_mipi_dsi_video_mode_config.exit

dw_mipi_dsi_video_mode_config.exit:               ; preds = %if.then10.i, %if.then.dw_mipi_dsi_video_mode_config.exit_crit_edge
  %val.1.i = phi i32 [ %or18.i, %if.then10.i ], [ %val.0.i, %if.then.dw_mipi_dsi_video_mode_config.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %val.1.i) #7
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %12) #7, !srcloc !125
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 16777216) #7, !srcloc !125
  br label %if.end

if.end:                                           ; preds = %if.else, %dw_mipi_dsi_video_mode_config.exit
  %mode_flags1 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 11
  %15 = ptrtoint ptr %mode_flags1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode_flags1, align 4
  %and2 = and i32 %16, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %spec.select = select i1 %tobool3.not, i32 16777216, i32 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %18, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %spec.select) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 16777216) #7, !srcloc !125
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_mipi_dsi_mode_set(ptr noundef %dsi, ptr noundef %adjusted_mode) unnamed_addr #1 align 64 {
entry:
  %timing.i = alloca %struct.dw_mipi_dsi_dphy_timing, align 8
  %esc_rate.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %plat_data = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 17
  %0 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_data, align 4
  %phy_ops1 = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %phy_ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_ops1, align 4
  %priv_data3 = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %priv_data3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv_data3, align 4
  %master.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 15
  %6 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %lanes.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lanes.i, align 4
  br label %return.sink.split.i

if.end.i:                                         ; preds = %entry
  %slave.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 16
  %10 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %slave.i, align 4
  %tobool3.not.i = icmp eq ptr %11, null
  %lanes10.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 9
  %12 = ptrtoint ptr %lanes10.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lanes10.i, align 4
  br i1 %tobool3.not.i, label %if.end.i.dw_mipi_dsi_get_lanes.exit_crit_edge, label %if.end.i.return.sink.split.i_crit_edge

if.end.i.return.sink.split.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i

if.end.i.dw_mipi_dsi_get_lanes.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_mipi_dsi_get_lanes.exit

return.sink.split.i:                              ; preds = %if.end.i.return.sink.split.i_crit_edge, %if.then.i
  %.sink.i = phi ptr [ %dsi, %if.then.i ], [ %11, %if.end.i.return.sink.split.i_crit_edge ]
  %.sink18.i = phi i32 [ %9, %if.then.i ], [ %13, %if.end.i.return.sink.split.i_crit_edge ]
  %lanes7.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %.sink.i, i32 0, i32 9
  %14 = ptrtoint ptr %lanes7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lanes7.i, align 4
  %add8.i = add i32 %15, %.sink18.i
  br label %dw_mipi_dsi_get_lanes.exit

dw_mipi_dsi_get_lanes.exit:                       ; preds = %return.sink.split.i, %if.end.i.dw_mipi_dsi_get_lanes.exit_crit_edge
  %retval.0.i = phi i32 [ %13, %if.end.i.dw_mipi_dsi_get_lanes.exit_crit_edge ], [ %add8.i, %return.sink.split.i ]
  %pclk = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 5
  %16 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i49 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i49, label %if.end.i50, label %dw_mipi_dsi_get_lanes.exit.clk_prepare_enable.exit_crit_edge

dw_mipi_dsi_get_lanes.exit.clk_prepare_enable.exit_crit_edge: ; preds = %dw_mipi_dsi_get_lanes.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i50:                                       ; preds = %dw_mipi_dsi_get_lanes.exit
  %call1.i = tail call i32 @clk_enable(ptr noundef %17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i50.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i50.clk_prepare_enable.exit_crit_edge:     ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %17) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i50.clk_prepare_enable.exit_crit_edge, %dw_mipi_dsi_get_lanes.exit.clk_prepare_enable.exit_crit_edge
  %get_lane_mbps = getelementptr inbounds %struct.dw_mipi_dsi_phy_ops, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %get_lane_mbps to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_lane_mbps, align 4
  %mode_flags = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 11
  %20 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mode_flags, align 4
  %format = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 10
  %22 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %format, align 4
  %lane_mbps = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 7
  %call5 = tail call i32 %19(ptr noundef %5, ptr noundef %adjusted_mode, i32 noundef %21, i32 noundef %retval.0.i, i32 noundef %23, ptr noundef %lane_mbps) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %clk_prepare_enable.exit.if.end_crit_edge, label %if.then

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.40) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %clk_prepare_enable.exit.if.end_crit_edge
  %dev = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 3
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %call.i52 = tail call i32 @__pm_runtime_resume(ptr noundef %25, i32 noundef 4) #7
  %26 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %plat_data, align 4
  %phy_ops1.i = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %phy_ops1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %phy_ops1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %esc_rate.i) #7
  %30 = ptrtoint ptr %esc_rate.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %esc_rate.i, align 4, !annotation !126
  %get_esc_clk_rate.i = getelementptr inbounds %struct.dw_mipi_dsi_phy_ops, ptr %29, i32 0, i32 5
  %31 = ptrtoint ptr %get_esc_clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %get_esc_clk_rate.i, align 4
  %tobool.not.i53 = icmp eq ptr %32, null
  br i1 %tobool.not.i53, label %if.else.i, label %if.then.i55

if.then.i55:                                      ; preds = %if.end
  %priv_data.i = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %27, i32 0, i32 5
  %33 = ptrtoint ptr %priv_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv_data.i, align 4
  %call.i54 = call i32 %32(ptr noundef %34, ptr noundef nonnull %esc_rate.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool4.not.i = icmp eq i32 %call.i54, 0
  br i1 %tobool4.not.i, label %if.then.i55.dw_mipi_dsi_init.exit_crit_edge, label %if.then5.i

if.then.i55.dw_mipi_dsi_init.exit_crit_edge:      ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_mipi_dsi_init.exit

if.then5.i:                                       ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.42) #7
  br label %dw_mipi_dsi_init.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %esc_rate.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 20, ptr %esc_rate.i, align 4
  br label %dw_mipi_dsi_init.exit

dw_mipi_dsi_init.exit:                            ; preds = %if.else.i, %if.then5.i, %if.then.i55.dw_mipi_dsi_init.exit_crit_edge
  %36 = ptrtoint ptr %lane_mbps to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lane_mbps, align 4
  %shr.i = lshr i32 %37, 3
  %38 = ptrtoint ptr %esc_rate.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %esc_rate.i, align 4
  %div.i = udiv i32 %shr.i, %39
  %add.i = add nuw nsw i32 %div.i, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %base.i.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 4
  %40 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !125
  %and.i = and i32 %add.i, 255
  %or.i = or i32 %and.i, 2560
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %42 = call i32 @llvm.bswap.i32(i32 %or.i) #7
  %43 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %44, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %42) #7, !srcloc !125
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %esc_rate.i) #7
  %45 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %46)
  %47 = icmp ult i32 %46, 3
  br i1 %47, label %switch.lookup, label %dw_mipi_dsi_init.exit.dw_mipi_dsi_dpi_config.exit_crit_edge

dw_mipi_dsi_init.exit.dw_mipi_dsi_dpi_config.exit_crit_edge: ; preds = %dw_mipi_dsi_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_mipi_dsi_dpi_config.exit

switch.lookup:                                    ; preds = %dw_mipi_dsi_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.dw_mipi_dsi_mode_set, i32 0, i32 %46
  %48 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %48)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %dw_mipi_dsi_dpi_config.exit

dw_mipi_dsi_dpi_config.exit:                      ; preds = %switch.lookup, %dw_mipi_dsi_init.exit.dw_mipi_dsi_dpi_config.exit_crit_edge
  %color.0.i = phi i32 [ 0, %dw_mipi_dsi_init.exit.dw_mipi_dsi_dpi_config.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %flags.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 11
  %49 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags.i, align 4
  %and.i56 = lshr i32 %50, 2
  %51 = and i32 %and.i56, 2
  %and5.i = shl i32 %50, 1
  %52 = and i32 %and5.i, 4
  %53 = or i32 %52, %51
  %channel.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 8
  %54 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %channel.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %and10.i = shl i32 %55, 24
  %56 = and i32 %and10.i, 50331648
  %57 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i58 = getelementptr i8, ptr %58, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i58, i32 %56) #7, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %59 = call i32 @llvm.bswap.i32(i32 %color.0.i) #7
  %60 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %61, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 %59) #7, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %62 = shl nuw nsw i32 %53, 24
  %63 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %64, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 %62) #7, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %65 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i60 = getelementptr i8, ptr %66, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i60, i32 469762048) #7, !srcloc !125
  %67 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mode_flags, align 4
  %and.i61 = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61)
  %tobool.not.i62 = icmp eq i32 %and.i61, 0
  %and2.i = and i32 %68, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i63 = icmp eq i32 %and2.i, 0
  %..i = select i1 %tobool3.not.i63, i32 16129, i32 16128
  %val.0.i = select i1 %tobool.not.i62, i32 %..i, i32 16130
  %vpg_defs.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 14
  %69 = ptrtoint ptr %vpg_defs.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %vpg_defs.i, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool9.not.i = icmp eq i8 %70, 0
  br i1 %tobool9.not.i, label %dw_mipi_dsi_dpi_config.exit.dw_mipi_dsi_video_mode_config.exit_crit_edge, label %if.then10.i

dw_mipi_dsi_dpi_config.exit.dw_mipi_dsi_video_mode_config.exit_crit_edge: ; preds = %dw_mipi_dsi_dpi_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_mipi_dsi_video_mode_config.exit

if.then10.i:                                      ; preds = %dw_mipi_dsi_dpi_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  %vpg_horizontal.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 14, i32 1
  %71 = ptrtoint ptr %vpg_horizontal.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %vpg_horizontal.i, align 1, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool13.not.i = icmp eq i8 %72, 0
  %cond.i = select i1 %tobool13.not.i, i32 0, i32 16777216
  %vpg_ber_pattern.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 14, i32 2
  %73 = ptrtoint ptr %vpg_ber_pattern.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %vpg_ber_pattern.i, align 2, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool16.not.i = icmp eq i8 %74, 0
  %cond17.i = select i1 %tobool16.not.i, i32 0, i32 1048576
  %or11.i = or i32 %val.0.i, %cond.i
  %or14.i = or i32 %or11.i, %cond17.i
  %or18.i = or i32 %or14.i, 65536
  br label %dw_mipi_dsi_video_mode_config.exit

dw_mipi_dsi_video_mode_config.exit:               ; preds = %if.then10.i, %dw_mipi_dsi_dpi_config.exit.dw_mipi_dsi_video_mode_config.exit_crit_edge
  %val.1.i = phi i32 [ %or18.i, %if.then10.i ], [ %val.0.i, %dw_mipi_dsi_dpi_config.exit.dw_mipi_dsi_video_mode_config.exit_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %75 = call i32 @llvm.bswap.i32(i32 %val.1.i) #7
  %76 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i65 = getelementptr i8, ptr %77, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i65, i32 %75) #7, !srcloc !125
  %slave.i.i = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 16
  %78 = ptrtoint ptr %slave.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %slave.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %79, null
  br i1 %tobool.not.i.i, label %dw_mipi_is_dual_mode.exit.i, label %dw_mipi_dsi_video_mode_config.exit.cond.true.i_crit_edge

dw_mipi_dsi_video_mode_config.exit.cond.true.i_crit_edge: ; preds = %dw_mipi_dsi_video_mode_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

dw_mipi_is_dual_mode.exit.i:                      ; preds = %dw_mipi_dsi_video_mode_config.exit
  %80 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %master.i, align 4
  %tobool1.i.not.i = icmp eq ptr %81, null
  br i1 %tobool1.i.not.i, label %cond.false.i, label %dw_mipi_is_dual_mode.exit.i.cond.true.i_crit_edge

dw_mipi_is_dual_mode.exit.i.cond.true.i_crit_edge: ; preds = %dw_mipi_is_dual_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

cond.true.i:                                      ; preds = %dw_mipi_is_dual_mode.exit.i.cond.true.i_crit_edge, %dw_mipi_dsi_video_mode_config.exit.cond.true.i_crit_edge
  %hdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 1
  %82 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %hdisplay.i, align 4
  %84 = lshr i16 %83, 1
  br label %dw_mipi_dsi_video_packet_config.exit

cond.false.i:                                     ; preds = %dw_mipi_is_dual_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %hdisplay1.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 1
  %85 = ptrtoint ptr %hdisplay1.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %hdisplay1.i, align 4
  br label %dw_mipi_dsi_video_packet_config.exit

dw_mipi_dsi_video_packet_config.exit:             ; preds = %cond.false.i, %cond.true.i
  %cond.in.in.i = phi i16 [ %84, %cond.true.i ], [ %86, %cond.false.i ]
  %cond.in.i = and i16 %cond.in.in.i, 16383
  %cond.i66 = zext i16 %cond.in.i to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %87 = call i32 @llvm.bswap.i32(i32 %cond.i66) #7
  %88 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i68 = getelementptr i8, ptr %89, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i68, i32 %87) #7, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %90 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i70 = getelementptr i8, ptr %91, i32 120
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i70, i32 -402397181) #7, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %92 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %93, i32 140
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 851968) #7, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %94 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %95, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 16777216) #7, !srcloc !125
  %htotal1.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 4
  %96 = ptrtoint ptr %htotal1.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %htotal1.i, align 2
  %conv.i = zext i16 %97 to i32
  %hsync_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 3
  %98 = ptrtoint ptr %hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %hsync_end.i, align 4
  %conv2.i = zext i16 %99 to i32
  %hsync_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 2
  %100 = ptrtoint ptr %hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %hsync_start.i, align 2
  %conv3.i = zext i16 %101 to i32
  %sub.i = sub nsw i32 %conv2.i, %conv3.i
  %sub8.i = sub nsw i32 %conv.i, %conv2.i
  %102 = ptrtoint ptr %lane_mbps to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %lane_mbps, align 4
  %mul.i.i = mul nuw nsw i32 %conv.i, 1000
  %mul1.i.i = mul i32 %mul.i.i, %103
  %div8.i.i = lshr exact i32 %mul1.i.i, 3
  %104 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %adjusted_mode, align 4
  %div8.i.i.frozen = freeze i32 %div8.i.i
  %.frozen = freeze i32 %105
  %div3.i.i = udiv i32 %div8.i.i.frozen, %.frozen
  %106 = mul i32 %div3.i.i, %.frozen
  %rem.i.i.decomposed = sub i32 %div8.i.i.frozen, %106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.decomposed)
  %tobool.not.i.i71 = icmp ne i32 %rem.i.i.decomposed, 0
  %inc.i.i = zext i1 %tobool.not.i.i71 to i32
  %spec.select.i.i = add nuw nsw i32 %div3.i.i, %inc.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %107 = call i32 @llvm.bswap.i32(i32 %spec.select.i.i) #7
  %108 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i73 = getelementptr i8, ptr %109, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i73, i32 %107) #7, !srcloc !125
  %110 = ptrtoint ptr %lane_mbps to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %lane_mbps, align 4
  %mul.i26.i = mul nsw i32 %sub.i, 1000
  %mul1.i27.i = mul i32 %mul.i26.i, %111
  %div8.i28.i = lshr exact i32 %mul1.i27.i, 3
  %112 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %adjusted_mode, align 4
  %div8.i28.i.frozen = freeze i32 %div8.i28.i
  %.frozen127 = freeze i32 %113
  %div3.i30.i = udiv i32 %div8.i28.i.frozen, %.frozen127
  %114 = mul i32 %div3.i30.i, %.frozen127
  %rem.i29.i.decomposed = sub i32 %div8.i28.i.frozen, %114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i29.i.decomposed)
  %tobool.not.i31.i = icmp ne i32 %rem.i29.i.decomposed, 0
  %inc.i32.i = zext i1 %tobool.not.i31.i to i32
  %spec.select.i33.i = add nuw nsw i32 %div3.i30.i, %inc.i32.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %115 = call i32 @llvm.bswap.i32(i32 %spec.select.i33.i) #7
  %116 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %117, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i, i32 %115) #7, !srcloc !125
  %118 = ptrtoint ptr %lane_mbps to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %lane_mbps, align 4
  %mul.i37.i = mul nsw i32 %sub8.i, 1000
  %mul1.i38.i = mul i32 %mul.i37.i, %119
  %div8.i39.i = lshr exact i32 %mul1.i38.i, 3
  %120 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %adjusted_mode, align 4
  %div8.i39.i.frozen = freeze i32 %div8.i39.i
  %.frozen128 = freeze i32 %121
  %div3.i41.i = udiv i32 %div8.i39.i.frozen, %.frozen128
  %122 = mul i32 %div3.i41.i, %.frozen128
  %rem.i40.i.decomposed = sub i32 %div8.i39.i.frozen, %122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i40.i.decomposed)
  %tobool.not.i42.i = icmp ne i32 %rem.i40.i.decomposed, 0
  %inc.i43.i = zext i1 %tobool.not.i42.i to i32
  %spec.select.i44.i = add nuw nsw i32 %div3.i41.i, %inc.i43.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %123 = call i32 @llvm.bswap.i32(i32 %spec.select.i44.i) #7
  %124 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i46.i = getelementptr i8, ptr %125, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.i, i32 %123) #7, !srcloc !125
  %vdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 6
  %126 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %vdisplay.i, align 2
  %conv.i74 = zext i16 %127 to i32
  %vsync_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 8
  %128 = ptrtoint ptr %vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %vsync_end.i, align 2
  %conv1.i = zext i16 %129 to i32
  %vsync_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 7
  %130 = ptrtoint ptr %vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %vsync_start.i, align 4
  %conv2.i75 = zext i16 %131 to i32
  %sub.i76 = sub nsw i32 %conv1.i, %conv2.i75
  %sub7.i = sub nsw i32 %conv2.i75, %conv.i74
  %vtotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 9
  %132 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %vtotal.i, align 4
  %conv8.i = zext i16 %133 to i32
  %sub11.i = sub nsw i32 %conv8.i, %conv1.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %134 = call i32 @llvm.bswap.i32(i32 %conv.i74) #7
  %135 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i78 = getelementptr i8, ptr %136, i32 96
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i78, i32 %134) #7, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %137 = call i32 @llvm.bswap.i32(i32 %sub.i76) #7
  %138 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %139, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %137) #7, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %140 = call i32 @llvm.bswap.i32(i32 %sub7.i) #7
  %141 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %142, i32 92
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %140) #7, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %143 = call i32 @llvm.bswap.i32(i32 %sub11.i) #7
  %144 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %145, i32 88
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %143) #7, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %146 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i80 = getelementptr i8, ptr %147, i32 160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i80, i32 0) #7, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %148 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %149, i32 180
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 0) #7, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %150 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %151, i32 180
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 16777216) #7, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %152 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %153, i32 180
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 0) #7, !srcloc !125
  %154 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %plat_data, align 4
  %phy_ops1.i82 = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %155, i32 0, i32 3
  %156 = ptrtoint ptr %phy_ops1.i82 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %phy_ops1.i82, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %timing.i) #7
  %158 = getelementptr inbounds %struct.dw_mipi_dsi_dphy_timing, ptr %timing.i, i32 0, i32 1
  %get_timing.i = getelementptr inbounds %struct.dw_mipi_dsi_phy_ops, ptr %157, i32 0, i32 4
  %159 = ptrtoint ptr %timing.i to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 -1, ptr %timing.i, align 8
  %160 = ptrtoint ptr %get_timing.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %get_timing.i, align 4
  %priv_data.i83 = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %155, i32 0, i32 5
  %162 = ptrtoint ptr %priv_data.i83 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %priv_data.i83, align 4
  %164 = ptrtoint ptr %lane_mbps to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %lane_mbps, align 4
  %call.i85 = call i32 %161(ptr noundef %163, i32 noundef %165, ptr noundef nonnull %timing.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %tobool.not.i86 = icmp eq i32 %call.i85, 0
  br i1 %tobool.not.i86, label %dw_mipi_dsi_video_packet_config.exit.if.end.i89_crit_edge, label %if.then.i87

dw_mipi_dsi_video_packet_config.exit.if.end.i89_crit_edge: ; preds = %dw_mipi_dsi_video_packet_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i89

if.then.i87:                                      ; preds = %dw_mipi_dsi_video_packet_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  %166 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %167, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.43) #7
  br label %if.end.i89

if.end.i89:                                       ; preds = %if.then.i87, %dw_mipi_dsi_video_packet_config.exit.if.end.i89_crit_edge
  %168 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %base.i.i, align 4
  %170 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %169) #7, !srcloc !122
  %171 = call i32 @llvm.bswap.i32(i32 %170) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 825438463, i32 %171)
  %cmp.i = icmp ugt i32 %171, 825438463
  %172 = ptrtoint ptr %timing.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %timing.i, align 8
  br i1 %cmp.i, label %if.then4.i, label %if.else.i95

if.then4.i:                                       ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #9
  %174 = and i16 %173, 1023
  %and5.i90 = zext i16 %174 to i32
  %shl.i = shl nuw nsw i32 %and5.i90, 16
  %175 = ptrtoint ptr %158 to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %158, align 2
  %177 = and i16 %176, 1023
  %and7.i = zext i16 %177 to i32
  %or.i91 = or i32 %shl.i, %and7.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %178 = call i32 @llvm.bswap.i32(i32 %or.i91) #7
  %179 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i92 = getelementptr i8, ptr %180, i32 156
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i92, i32 %178) #7, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %181 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i35.i93 = getelementptr i8, ptr %182, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i93, i32 270991360) #7, !srcloc !125
  br label %dw_mipi_dsi_dphy_timing_config.exit

if.else.i95:                                      ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #9
  %and10.i94 = zext i16 %173 to i32
  %shl11.i = shl i32 %and10.i94, 24
  %183 = ptrtoint ptr %158 to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %158, align 2
  %185 = and i16 %184, 255
  %and14.i = zext i16 %185 to i32
  %shl15.i = shl nuw nsw i32 %and14.i, 16
  %or16.i = or i32 %shl15.i, %shl11.i
  %or17.i = or i32 %or16.i, 10000
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %186 = call i32 @llvm.bswap.i32(i32 %or17.i) #7
  %187 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i37.i = getelementptr i8, ptr %188, i32 156
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37.i, i32 %186) #7, !srcloc !125
  br label %dw_mipi_dsi_dphy_timing_config.exit

dw_mipi_dsi_dphy_timing_config.exit:              ; preds = %if.else.i95, %if.then4.i
  %189 = getelementptr inbounds %struct.dw_mipi_dsi_dphy_timing, ptr %timing.i, i32 0, i32 3
  %190 = getelementptr inbounds %struct.dw_mipi_dsi_dphy_timing, ptr %timing.i, i32 0, i32 2
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %190, align 4
  %193 = and i16 %192, 1023
  %and20.i = zext i16 %193 to i32
  %shl21.i = shl nuw nsw i32 %and20.i, 16
  %194 = ptrtoint ptr %189 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %189, align 2
  %196 = and i16 %195, 1023
  %and23.i = zext i16 %196 to i32
  %or24.i = or i32 %shl21.i, %and23.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %197 = call i32 @llvm.bswap.i32(i32 %or24.i) #7
  %198 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %199, i32 152
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i, i32 %197) #7, !srcloc !125
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %timing.i) #7
  %lanes.i96 = getelementptr inbounds %struct.dw_mipi_dsi, ptr %dsi, i32 0, i32 9
  %200 = ptrtoint ptr %lanes.i96 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %lanes.i96, align 4
  %sub.i97 = add i32 %201, 3
  %and.i98 = and i32 %sub.i97, 3
  %or.i99 = or i32 %and.i98, 8192
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %202 = call i32 @llvm.bswap.i32(i32 %or.i99) #7
  %203 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i101 = getelementptr i8, ptr %204, i32 164
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i101, i32 %202) #7, !srcloc !125
  %205 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i103 = getelementptr i8, ptr %206, i32 188
  %207 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i103) #7, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  %208 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i6.i104 = getelementptr i8, ptr %209, i32 192
  %210 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i104) #7, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %211 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %212, i32 196
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 0) #7, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %213 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %214, i32 200
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 0) #7, !srcloc !125
  %215 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %3, align 4
  %call7 = call i32 %216(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %dw_mipi_dsi_dphy_timing_config.exit.if.end10_crit_edge, label %if.then9

dw_mipi_dsi_dphy_timing_config.exit.if.end10_crit_edge: ; preds = %dw_mipi_dsi_dphy_timing_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %dw_mipi_dsi_dphy_timing_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.41) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %dw_mipi_dsi_dphy_timing_config.exit.if.end10_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %217 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i106 = getelementptr i8, ptr %218, i32 160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i106, i32 251658240) #7, !srcloc !125
  %call.i107 = call i64 @ktime_get() #7
  %add.i.i = add i64 %call.i107, 10000000
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 855) #7
  %219 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %base.i.i, align 4
  %add.ptr114.i = getelementptr i8, ptr %220, i32 176
  %221 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr114.i) #7, !srcloc !122
  %222 = call i32 @llvm.bswap.i32(i32 %221) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  %and115.i = and i32 %222, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115.i)
  %tobool.not116.i = icmp eq i32 %and115.i, 0
  br i1 %tobool.not116.i, label %if.end10.land.lhs.true.i_crit_edge, label %if.end10.for.end.i_crit_edge

if.end10.for.end.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end10.land.lhs.true.i_crit_edge:               ; preds = %if.end10
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then26.i.land.lhs.true.i_crit_edge, %if.end10.land.lhs.true.i_crit_edge
  %call13.i = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then16.i, label %if.then26.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %223 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %base.i.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %224, i32 176
  %225 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #7, !srcloc !122
  %226 = call i32 @llvm.bswap.i32(i32 %225) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  br label %for.end.i

if.then26.i:                                      ; preds = %land.lhs.true.i
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #7
  %227 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %228, i32 176
  %229 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !122
  %230 = call i32 @llvm.bswap.i32(i32 %229) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  %and.i108 = and i32 %230, 1
  %tobool.not.i109 = icmp eq i32 %and.i108, 0
  br i1 %tobool.not.i109, label %if.then26.i.land.lhs.true.i_crit_edge, label %if.then26.i.for.end.i_crit_edge

if.then26.i.for.end.i_crit_edge:                  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.then26.i.land.lhs.true.i_crit_edge:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %if.then26.i.for.end.i_crit_edge, %if.then16.i, %if.end10.for.end.i_crit_edge
  %val.0.i110 = phi i32 [ %226, %if.then16.i ], [ %222, %if.end10.for.end.i_crit_edge ], [ %230, %if.then26.i.for.end.i_crit_edge ]
  %and29.i = and i32 %val.0.i110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.then32.i, label %for.end.i.if.end33.i_crit_edge

for.end.i.if.end33.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

if.then32.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.44) #7
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then32.i, %for.end.i.if.end33.i_crit_edge
  %call37.i = call i64 @ktime_get() #7
  %add.i106.i = add i64 %call37.i, 10000000
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 861) #7
  %231 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %base.i.i, align 4
  %add.ptr55117.i = getelementptr i8, ptr %232, i32 176
  %233 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55117.i) #7, !srcloc !122
  %234 = call i32 @llvm.bswap.i32(i32 %233) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %and59118.i = and i32 %234, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59118.i)
  %tobool60.not119.i = icmp eq i32 %and59118.i, 0
  br i1 %tobool60.not119.i, label %if.end33.i.land.lhs.true64.i_crit_edge, label %if.end33.i.for.end82.i_crit_edge

if.end33.i.for.end82.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end82.i

if.end33.i.land.lhs.true64.i_crit_edge:           ; preds = %if.end33.i
  br label %land.lhs.true64.i

land.lhs.true64.i:                                ; preds = %if.then78.i.land.lhs.true64.i_crit_edge, %if.end33.i.land.lhs.true64.i_crit_edge
  %call65.i = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call65.i, i64 %add.i106.i)
  %cmp3.i108.i = icmp sgt i64 %call65.i, %add.i106.i
  br i1 %cmp3.i108.i, label %if.then68.i, label %if.then78.i

if.then68.i:                                      ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #9
  %235 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %base.i.i, align 4
  %add.ptr72.i = getelementptr i8, ptr %236, i32 176
  %237 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72.i) #7, !srcloc !122
  %238 = call i32 @llvm.bswap.i32(i32 %237) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  br label %for.end82.i

if.then78.i:                                      ; preds = %land.lhs.true64.i
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #7
  %239 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %base.i.i, align 4
  %add.ptr55.i = getelementptr i8, ptr %240, i32 176
  %241 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55.i) #7, !srcloc !122
  %242 = call i32 @llvm.bswap.i32(i32 %241) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %and59.i = and i32 %242, 4
  %tobool60.not.i = icmp eq i32 %and59.i, 0
  br i1 %tobool60.not.i, label %if.then78.i.land.lhs.true64.i_crit_edge, label %if.then78.i.for.end82.i_crit_edge

if.then78.i.for.end82.i_crit_edge:                ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end82.i

if.then78.i.land.lhs.true64.i_crit_edge:          ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true64.i

for.end82.i:                                      ; preds = %if.then78.i.for.end82.i_crit_edge, %if.then68.i, %if.end33.i.for.end82.i_crit_edge
  %val.1.i111 = phi i32 [ %238, %if.then68.i ], [ %234, %if.end33.i.for.end82.i_crit_edge ], [ %242, %if.then78.i.for.end82.i_crit_edge ]
  %and84.i = and i32 %val.1.i111, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84.i)
  %tobool85.not.i = icmp eq i32 %and84.i, 0
  br i1 %tobool85.not.i, label %if.then88.i, label %for.end82.i.dw_mipi_dsi_dphy_enable.exit_crit_edge

for.end82.i.dw_mipi_dsi_dphy_enable.exit_crit_edge: ; preds = %for.end82.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dw_mipi_dsi_dphy_enable.exit

if.then88.i:                                      ; preds = %for.end82.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.45) #7
  br label %dw_mipi_dsi_dphy_enable.exit

dw_mipi_dsi_dphy_enable.exit:                     ; preds = %if.then88.i, %for.end82.i.dw_mipi_dsi_dphy_enable.exit_crit_edge
  %call.i112 = call i32 @drm_mode_vrefresh(ptr noundef %adjusted_mode) #7
  %sub.i113 = add i32 %call.i112, 999
  %div.i114 = sdiv i32 %sub.i113, %call.i112
  %mul.i = shl i32 %div.i114, 1
  call void @msleep(i32 noundef %mul.i) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %243 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i116 = getelementptr i8, ptr %244, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i116, i32 0) #7, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  %245 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %246, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 16777216) #7, !srcloc !125
  %247 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %mode_flags, align 4
  %and2.i118 = and i32 %248, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i118)
  %tobool3.not.i119 = icmp eq i32 %and2.i118, 0
  %spec.select.i = select i1 %tobool3.not.i119, i32 16777216, i32 50331648
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %249 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %250, i32 148
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %spec.select.i) #7, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void @arm_heavy_mb() #7
  %251 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %252, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 16777216) #7, !srcloc !125
  %power_on = getelementptr inbounds %struct.dw_mipi_dsi_phy_ops, ptr %3, i32 0, i32 1
  %253 = ptrtoint ptr %power_on to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %power_on, align 4
  %tobool11.not = icmp eq ptr %254, null
  br i1 %tobool11.not, label %dw_mipi_dsi_dphy_enable.exit.if.end16_crit_edge, label %if.then12

dw_mipi_dsi_dphy_enable.exit.if.end16_crit_edge:  ; preds = %dw_mipi_dsi_dphy_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then12:                                        ; preds = %dw_mipi_dsi_dphy_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  %255 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %plat_data, align 4
  %priv_data15 = getelementptr inbounds %struct.dw_mipi_dsi_plat_data, ptr %256, i32 0, i32 5
  %257 = ptrtoint ptr %priv_data15 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %priv_data15, align 4
  call void %254(ptr noundef %258) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %dw_mipi_dsi_dphy_enable.exit.if.end16_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_host_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !56, !58, !60, !61, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !100, !102, !104, !106, !108, !110}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__ksymtab_dw_mipi_dsi_set_slave, !1, !"__ksymtab_dw_mipi_dsi_set_slave", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 1236, i32 1}
!2 = !{ptr @__ksymtab_dw_mipi_dsi_probe, !3, !"__ksymtab_dw_mipi_dsi_probe", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 1247, i32 1}
!4 = !{ptr @__ksymtab_dw_mipi_dsi_remove, !5, !"__ksymtab_dw_mipi_dsi_remove", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 1253, i32 1}
!6 = !{ptr @__ksymtab_dw_mipi_dsi_bind, !7, !"__ksymtab_dw_mipi_dsi_bind", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 1262, i32 1}
!8 = !{ptr @__ksymtab_dw_mipi_dsi_unbind, !9, !"__ksymtab_dw_mipi_dsi_unbind", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 1267, i32 1}
!10 = !{ptr @__UNIQUE_ID_author308, !11, !"__UNIQUE_ID_author308", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 1269, i32 1}
!12 = !{ptr @__UNIQUE_ID_author309, !13, !"__UNIQUE_ID_author309", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 1270, i32 1}
!14 = !{ptr @__UNIQUE_ID_description310, !15, !"__UNIQUE_ID_description310", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 1271, i32 1}
!16 = !{ptr @__UNIQUE_ID_file311, !17, !"__UNIQUE_ID_file311", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 1272, i32 1}
!18 = !{ptr @__UNIQUE_ID_license312, !17, !"__UNIQUE_ID_license312", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_alias313, !20, !"__UNIQUE_ID_alias313", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 1273, i32 1}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 1146, i32 3}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 1159, i32 32}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 1162, i32 3}
!27 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @__dw_mipi_dsi_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @__dw_mipi_dsi_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 1170, i32 59}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 1175, i32 4}
!37 = !{ptr @__dw_mipi_dsi_probe._entry.8, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @__dw_mipi_dsi_probe._entry_ptr.10, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 1183, i32 4}
!41 = !{ptr @__dw_mipi_dsi_probe._entry.11, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @__dw_mipi_dsi_probe._entry_ptr.13, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 1201, i32 3}
!45 = !{ptr @__dw_mipi_dsi_probe._entry.14, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @__dw_mipi_dsi_probe._entry_ptr.16, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 1108, i32 3}
!49 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @dw_mipi_dsi_debugfs_init._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @dw_mipi_dsi_debugfs_init._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 1088, i32 3}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 1089, i32 3}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 1090, i32 3}
!58 = !{ptr @fops_x32, !59, !"fops_x32", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 1081, i32 1}
!60 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @dw_mipi_dsi_host_ops, !62, !"dw_mipi_dsi_host_ops", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 559, i32 39}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 347, i32 3}
!65 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @dw_mipi_dsi_host_attach._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @dw_mipi_dsi_host_attach._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 530, i32 3}
!70 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @dw_mipi_dsi_host_transfer._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @dw_mipi_dsi_host_transfer._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 476, i32 4}
!75 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @dw_mipi_dsi_write._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @dw_mipi_dsi_write._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 433, i32 3}
!80 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @dw_mipi_dsi_gen_pkt_hdr_write._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @dw_mipi_dsi_gen_pkt_hdr_write._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 444, i32 3}
!85 = !{ptr @dw_mipi_dsi_gen_pkt_hdr_write._entry.31, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @dw_mipi_dsi_gen_pkt_hdr_write._entry_ptr.33, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 499, i32 3}
!89 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @dw_mipi_dsi_read._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @dw_mipi_dsi_read._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 509, i32 4}
!94 = !{ptr @dw_mipi_dsi_read._entry.36, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @dw_mipi_dsi_read._entry_ptr.38, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @dw_mipi_dsi_bridge_funcs, !97, !"dw_mipi_dsi_bridge_funcs", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 1034, i32 38}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 1012, i32 3}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 937, i32 3}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 957, i32 3}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 638, i32 4}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 796, i32 3}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 857, i32 3}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c", i32 863, i32 3}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{i8 0, i8 2}
!122 = !{i64 5180481}
!123 = !{i64 2156796065}
!124 = !{i64 2156795245}
!125 = !{i64 5180063}
!126 = !{!"auto-init"}
!127 = !{i64 2156813777}
!128 = !{i64 2156814259}
!129 = !{i64 2156817704}
!130 = !{i64 2156818186}
!131 = !{i64 2156809608}
!132 = !{i64 2156810090}
!133 = !{i64 2156801421}
!134 = !{i64 2156801903}
!135 = !{i64 2156805430}
!136 = !{i64 2156805912}
!137 = !{i64 2156826849}
!138 = !{i64 2156827331}
!139 = !{i64 2156833228}
!140 = !{i64 2156833710}
