; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_hdcp.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_hdcp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+drm_hdcp_check_ksvs_revoked\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_hdcp_check_ksvs_revoked\09\09\09\09"
module asm "\09.long\09__crc_drm_hdcp_check_ksvs_revoked\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_hdcp_check_ksvs_revoked:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_hdcp_check_ksvs_revoked\22\09\09\09\09\09"
module asm "__kstrtabns_drm_hdcp_check_ksvs_revoked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_connector_attach_content_protection_property\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_connector_attach_content_protection_property\09\09\09\09"
module asm "\09.long\09__crc_drm_connector_attach_content_protection_property\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_connector_attach_content_protection_property:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_connector_attach_content_protection_property\22\09\09\09\09\09"
module asm "__kstrtabns_drm_connector_attach_content_protection_property:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_hdcp_update_content_protection\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_hdcp_update_content_protection\09\09\09\09"
module asm "\09.long\09__crc_drm_hdcp_update_content_protection\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_hdcp_update_content_protection:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_hdcp_update_content_protection\22\09\09\09\09\09"
module asm "__kstrtabns_drm_hdcp_update_content_protection:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_prop_enum_list = type { i32, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.67, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.72, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.67 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.72 = type { i32, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.hdcp_srm_header = type <{ i8, i8, i16, i8 }>
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.73 }
%union.anon.73 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Revoked KSV is \00", [16 x i8] zeroinitializer }, align 32
@__kstrtab_drm_hdcp_check_ksvs_revoked = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_hdcp_check_ksvs_revoked = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_hdcp_check_ksvs_revoked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_hdcp_check_ksvs_revoked to i32), ptr @__kstrtab_drm_hdcp_check_ksvs_revoked, ptr @__kstrtabns_drm_hdcp_check_ksvs_revoked }, section "___ksymtab_gpl+drm_hdcp_check_ksvs_revoked", align 4
@drm_cp_enum_list = internal global { [3 x %struct.drm_prop_enum_list], [40 x i8] } { [3 x %struct.drm_prop_enum_list] [%struct.drm_prop_enum_list { i32 0, ptr @.str.14 }, %struct.drm_prop_enum_list { i32 1, ptr @.str.15 }, %struct.drm_prop_enum_list { i32 2, ptr @.str.16 }], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"(unknown)\00", [22 x i8] zeroinitializer }, align 32
@drm_hdcp_content_type_enum_list = internal global { [2 x %struct.drm_prop_enum_list], [16 x i8] } { [2 x %struct.drm_prop_enum_list] [%struct.drm_prop_enum_list { i32 0, ptr @.str.17 }, %struct.drm_prop_enum_list { i32 1, ptr @.str.18 }], [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Content Protection\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HDCP Content Type\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_drm_connector_attach_content_protection_property = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_connector_attach_content_protection_property = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_connector_attach_content_protection_property = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_connector_attach_content_protection_property to i32), ptr @__kstrtab_drm_connector_attach_content_protection_property, ptr @__kstrtabns_drm_connector_attach_content_protection_property }, section "___ksymtab+drm_connector_attach_content_protection_property", align 4
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/gpu/drm/drm_hdcp.c\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab_drm_hdcp_update_content_protection = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_hdcp_update_content_protection = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_hdcp_update_content_protection = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_hdcp_update_content_protection to i32), ptr @__kstrtab_drm_hdcp_update_content_protection, ptr @__kstrtabns_drm_hdcp_update_content_protection }, section "___ksymtab+drm_hdcp_update_content_protection", align 4
@__const.drm_hdcp_request_srm.fw_name = private unnamed_addr constant [36 x i8] c"display_hdcp_srm.bin\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid blob length\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"SRM ID: 0x%x, SRM Ver: 0x%x, SRM Gen No: 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid blob length or vrl length\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"No vrl found\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Revoked KSV count is 0\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Out of Memory\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vrl: %d, Revoked KSVs: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Revoked KSVs: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\09%#02x, %#02x, %#02x, %#02x, %#02x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Undesired\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Desired\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HDCP Type0\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HDCP Type1\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 128, i64 145]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 303, i32 5 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"drm_cp_enum_list\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 313, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 318, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant [32 x i8] c"drm_hdcp_content_type_enum_list\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 320, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 365, i32 43 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 380, i32 43 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 415, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 94, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 99, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 110, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 119, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 126, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 132, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 67, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 202, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 28, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 314, i32 43 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 315, i32 41 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 316, i32 41 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 321, i32 33 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [30 x i8] c"../drivers/gpu/drm/drm_hdcp.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 322, i32 33 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__ksymtab_drm_connector_attach_content_protection_property, ptr @__ksymtab_drm_hdcp_check_ksvs_revoked, ptr @__ksymtab_drm_hdcp_update_content_protection, ptr @.str, ptr @drm_cp_enum_list, ptr @.str.1, ptr @drm_hdcp_content_type_enum_list, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_cp_enum_list to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_hdcp_content_type_enum_list to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_hdcp_check_ksvs_revoked(ptr nocapture noundef readonly %drm_dev, ptr nocapture noundef readonly %ksvs, i32 noundef %ksv_count) #0 align 64 {
entry:
  %fw_name.i = alloca [36 x i8], align 1
  %fw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fw_name.i) #7
  %0 = call ptr @memcpy(ptr %fw_name.i, ptr @__const.drm_hdcp_request_srm.fw_name, i32 36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #7
  %1 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !57
  %dev.i = getelementptr inbounds %struct.drm_device, ptr %drm_dev, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %call.i = call i32 @request_firmware_direct(ptr noundef nonnull %fw.i, ptr noundef nonnull %fw_name.i, ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.for.cond.preheader.thread57_crit_edge, label %if.end.i

entry.for.cond.preheader.thread57_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader.thread57

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end.i.drm_hdcp_request_srm.exit_crit_edge, label %land.lhs.true.i

if.end.i.drm_hdcp_request_srm.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_hdcp_request_srm.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.firmware, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.drm_hdcp_request_srm.exit_crit_edge, label %if.then2.i

land.lhs.true.i.drm_hdcp_request_srm.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_hdcp_request_srm.exit

if.then2.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %cmp.i.i = icmp ult i32 %7, 5
  br i1 %cmp.i.i, label %if.then2.i.drm_hdcp_request_srm.exit.thread_crit_edge, label %if.end.i.i

if.then2.i.drm_hdcp_request_srm.exit.thread_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_hdcp_request_srm.exit.thread

if.end.i.i:                                       ; preds = %if.then2.i
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %if.end.i.i.drm_hdcp_request_srm.exit.thread_crit_edge [
    i8 -128, label %if.then1.i.i
    i8 -111, label %if.then4.i.i
  ]

if.end.i.i.drm_hdcp_request_srm.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_hdcp_request_srm.exit.thread

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %7)
  %cmp.i14.i.i = icmp ult i32 %7, 48
  br i1 %cmp.i14.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #7
  br label %drm_hdcp_request_srm.exit.thread

if.end.i.i.i:                                     ; preds = %if.then1.i.i
  %srm_version.i.i.i = getelementptr inbounds %struct.hdcp_srm_header, ptr %9, i32 0, i32 2
  %13 = ptrtoint ptr %srm_version.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %srm_version.i.i.i, align 1
  %conv1.i.i.i = zext i16 %14 to i32
  %srm_gen_no.i.i.i = getelementptr inbounds %struct.hdcp_srm_header, ptr %9, i32 0, i32 3
  %15 = ptrtoint ptr %srm_gen_no.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %srm_gen_no.i.i.i, align 1
  %conv2.i.i.i = zext i8 %16 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 128, i32 noundef %conv1.i.i.i, i32 noundef %conv2.i.i.i) #7
  %reserved.i.i.i = getelementptr inbounds %struct.hdcp_srm_header, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %reserved.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %reserved.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.if.end17.i.i.i_crit_edge, label %do.end.i.i.i, !prof !58

if.end.i.i.i.if.end17.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 103, i32 noundef 9, ptr noundef null) #7
  br label %if.end17.i.i.i

if.end17.i.i.i:                                   ; preds = %do.end.i.i.i, %if.end.i.i.i.if.end17.i.i.i_crit_edge
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 5
  %arrayidx.i.i.i.i.i = getelementptr i8, ptr %9, i32 7
  %19 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  %conv.i.i.i.i.i = zext i8 %20 to i32
  %arrayidx1.i.i.i.i.i = getelementptr i8, ptr %9, i32 6
  %21 = ptrtoint ptr %arrayidx1.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx1.i.i.i.i.i, align 1
  %conv2.i.i.i.i.i = zext i8 %22 to i32
  %shl.i.i.i.i.i = shl nuw nsw i32 %conv2.i.i.i.i.i, 8
  %or.i.i.i.i.i = or i32 %shl.i.i.i.i.i, %conv.i.i.i.i.i
  %23 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr.i.i.i, align 1
  %conv4.i.i.i.i.i = zext i8 %24 to i32
  %shl5.i.i.i.i.i = shl nuw nsw i32 %conv4.i.i.i.i.i, 16
  %or6.i.i.i.i.i = or i32 %or.i.i.i.i.i, %shl5.i.i.i.i.i
  %add.i.i.i = add nuw nsw i32 %or6.i.i.i.i.i, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %7)
  %cmp24.i.i.i = icmp ugt i32 %add.i.i.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %or6.i.i.i.i.i)
  %cmp26.i.i.i = icmp ult i32 %or6.i.i.i.i.i, 43
  %or.cond.i.i.i = or i1 %cmp26.i.i.i, %cmp24.i.i.i
  br i1 %or.cond.i.i.i, label %if.then28.i.i.i, label %if.end29.i.i.i

if.then28.i.i.i:                                  ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #7
  br label %drm_hdcp_request_srm.exit.thread

if.end29.i.i.i:                                   ; preds = %if.end17.i.i.i
  %sub.i.i.i = add nsw i32 %or6.i.i.i.i.i, -43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %sub.i.i.i, 0
  br i1 %tobool30.not.i.i.i, label %if.then31.i.i.i, label %if.end32.i.i.i

if.then31.i.i.i:                                  ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #7
  br label %drm_hdcp_request_srm.exit.thread

if.end32.i.i.i:                                   ; preds = %if.end29.i.i.i
  %add.ptr33.i.i.i = getelementptr i8, ptr %9, i32 8
  br label %while.body.i.i.i.i

while.body.i.i.i.i:                               ; preds = %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge, %if.end32.i.i.i
  %ksv_count.015.i.i.i.i = phi i32 [ %add.i.i.i.i, %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ 0, %if.end32.i.i.i ]
  %parsed_bytes.014.i.i.i.i = phi i32 [ %add2.i.i.i.i, %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ 0, %if.end32.i.i.i ]
  %buf.addr.013.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ %add.ptr33.i.i.i, %if.end32.i.i.i ]
  %25 = ptrtoint ptr %buf.addr.013.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %buf.addr.013.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %26 to i32
  %add.i.i.i.i = add i32 %ksv_count.015.i.i.i.i, %conv.i.i.i.i
  %mul.i.i.i.i = mul nuw nsw i32 %conv.i.i.i.i, 5
  %add1.i.i.i.i = add nuw nsw i32 %mul.i.i.i.i, 1
  %add.ptr.i.i.i.i = getelementptr i8, ptr %buf.addr.013.i.i.i.i, i32 %add1.i.i.i.i
  %add2.i.i.i.i = add i32 %add1.i.i.i.i, %parsed_bytes.014.i.i.i.i
  %cmp.i.i.i.i = icmp ult i32 %add2.i.i.i.i, %sub.i.i.i
  br i1 %cmp.i.i.i.i, label %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge, label %drm_hdcp_get_revoked_ksv_count.exit.i.i.i

while.body.i.i.i.i.while.body.i.i.i.i_crit_edge:  ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.i.i

drm_hdcp_get_revoked_ksv_count.exit.i.i.i:        ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i.i.i.i, i32 %sub.i.i.i)
  %cmp3.not.i.i.i.i = icmp ne i32 %add2.i.i.i.i, %sub.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i.i.i)
  %tobool35.not81.i.i.i = icmp eq i32 %add.i.i.i.i, 0
  %tobool35.not.i.i.i = select i1 %cmp3.not.i.i.i.i, i1 true, i1 %tobool35.not81.i.i.i
  br i1 %tobool35.not.i.i.i, label %drm_hdcp_get_revoked_ksv_count.exit.i.i.i.for.cond.preheader.thread57.sink.split_crit_edge, label %if.end37.i.i.i

drm_hdcp_get_revoked_ksv_count.exit.i.i.i.for.cond.preheader.thread57.sink.split_crit_edge: ; preds = %drm_hdcp_get_revoked_ksv_count.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader.thread57.sink.split

if.end37.i.i.i:                                   ; preds = %drm_hdcp_get_revoked_ksv_count.exit.i.i.i
  %27 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i.i.i.i, i32 5) #7
  %28 = extractvalue { i32, i1 } %27, 1
  br i1 %28, label %if.end37.i.i.i.if.then40.i.i.i_crit_edge, label %if.end7.i.i.i.i.i, !prof !59

if.end37.i.i.i.if.then40.i.i.i_crit_edge:         ; preds = %if.end37.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then40.i.i.i

if.end7.i.i.i.i.i:                                ; preds = %if.end37.i.i.i
  %29 = extractvalue { i32, i1 } %27, 0
  %call8.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %29, i32 noundef 3520) #10
  %tobool39.not.i.i.i = icmp eq ptr %call8.i.i.i.i.i, null
  br i1 %tobool39.not.i.i.i, label %if.end7.i.i.i.i.i.if.then40.i.i.i_crit_edge, label %if.end7.i.i.i.i.i.do.body.i.i.i.i_crit_edge

if.end7.i.i.i.i.i.do.body.i.i.i.i_crit_edge:      ; preds = %if.end7.i.i.i.i.i
  br label %do.body.i.i.i.i

if.end7.i.i.i.i.i.if.then40.i.i.i_crit_edge:      ; preds = %if.end7.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then40.i.i.i

if.then40.i.i.i:                                  ; preds = %if.end7.i.i.i.i.i.if.then40.i.i.i_crit_edge, %if.end37.i.i.i.if.then40.i.i.i_crit_edge
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #7
  br label %drm_hdcp_request_srm.exit.thread

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end7.i.i.i.i.i.do.body.i.i.i.i_crit_edge
  %buf.addr.0.i.i.i.i = phi ptr [ %add.ptr2.i.i.i.i, %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge ], [ %add.ptr33.i.i.i, %if.end7.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %vrl_idx.0.i.i.i.i = phi i32 [ %inc.i.i.i.i, %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge ], [ 0, %if.end7.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %parsed_bytes.0.i.i.i.i = phi i32 [ %add4.i.i.i.i, %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge ], [ 0, %if.end7.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %ksv_count.0.i.i.i.i = phi i32 [ %add.i74.i.i.i, %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge ], [ 0, %if.end7.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %30 = ptrtoint ptr %buf.addr.0.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %buf.addr.0.i.i.i.i, align 1
  %conv.i71.i.i.i = zext i8 %31 to i32
  %mul.i72.i.i.i = mul nuw nsw i32 %conv.i71.i.i.i, 5
  %incdec.ptr.i.i.i.i = getelementptr i8, ptr %buf.addr.0.i.i.i.i, i32 1
  %inc.i.i.i.i = add i32 %vrl_idx.0.i.i.i.i, 1
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %vrl_idx.0.i.i.i.i, i32 noundef %conv.i71.i.i.i) #7
  %mul1.i.i.i.i = mul i32 %ksv_count.0.i.i.i.i, 5
  %add.ptr.i73.i.i.i = getelementptr i8, ptr %call8.i.i.i.i.i, i32 %mul1.i.i.i.i
  %32 = call ptr @memcpy(ptr %add.ptr.i73.i.i.i, ptr %incdec.ptr.i.i.i.i, i32 %mul.i72.i.i.i)
  %add.i74.i.i.i = add i32 %ksv_count.0.i.i.i.i, %conv.i71.i.i.i
  %add.ptr2.i.i.i.i = getelementptr i8, ptr %incdec.ptr.i.i.i.i, i32 %mul.i72.i.i.i
  %add3.i.i.i.i = add nuw i32 %parsed_bytes.0.i.i.i.i, 1
  %add4.i.i.i.i = add i32 %add3.i.i.i.i, %mul.i72.i.i.i
  %cmp.i75.i.i.i = icmp ult i32 %add4.i.i.i.i, %sub.i.i.i
  br i1 %cmp.i75.i.i.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, label %drm_hdcp_get_revoked_ksvs.exit.i.i.i

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i

drm_hdcp_get_revoked_ksvs.exit.i.i.i:             ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i74.i.i.i, i32 %add.i.i.i.i)
  %cmp43.not.i.i.i = icmp eq i32 %add.i74.i.i.i, %add.i.i.i.i
  br i1 %cmp43.not.i.i.i, label %for.cond.preheader, label %if.then45.i.i.i

if.then45.i.i.i:                                  ; preds = %drm_hdcp_get_revoked_ksvs.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call8.i.i.i.i.i) #7
  br label %drm_hdcp_request_srm.exit.thread

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 392, i32 %7)
  %cmp.i16.i.i = icmp ult i32 %7, 392
  br i1 %cmp.i16.i.i, label %if.then.i17.i.i, label %if.end.i24.i.i

if.then.i17.i.i:                                  ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #7
  br label %drm_hdcp_request_srm.exit.thread

if.end.i24.i.i:                                   ; preds = %if.then4.i.i
  %srm_version.i18.i.i = getelementptr inbounds %struct.hdcp_srm_header, ptr %9, i32 0, i32 2
  %33 = ptrtoint ptr %srm_version.i18.i.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %srm_version.i18.i.i, align 1
  %conv1.i19.i.i = zext i16 %34 to i32
  %srm_gen_no.i20.i.i = getelementptr inbounds %struct.hdcp_srm_header, ptr %9, i32 0, i32 3
  %35 = ptrtoint ptr %srm_gen_no.i20.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %srm_gen_no.i20.i.i, align 1
  %conv2.i21.i.i = zext i8 %36 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 144, i32 noundef %conv1.i19.i.i, i32 noundef %conv2.i21.i.i) #7
  %reserved.i22.i.i = getelementptr inbounds %struct.hdcp_srm_header, ptr %9, i32 0, i32 1
  %37 = ptrtoint ptr %reserved.i22.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %reserved.i22.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i23.i.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i23.i.i, label %if.end4.i.i.i, label %if.end.i24.i.i.drm_hdcp_request_srm.exit.thread_crit_edge

if.end.i24.i.i.drm_hdcp_request_srm.exit.thread_crit_edge: ; preds = %if.end.i24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_hdcp_request_srm.exit.thread

if.end4.i.i.i:                                    ; preds = %if.end.i24.i.i
  %add.ptr.i25.i.i = getelementptr i8, ptr %9, i32 5
  %arrayidx.i.i.i26.i.i = getelementptr i8, ptr %9, i32 7
  %39 = ptrtoint ptr %arrayidx.i.i.i26.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i.i.i26.i.i, align 1
  %conv.i.i.i27.i.i = zext i8 %40 to i32
  %arrayidx1.i.i.i28.i.i = getelementptr i8, ptr %9, i32 6
  %41 = ptrtoint ptr %arrayidx1.i.i.i28.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx1.i.i.i28.i.i, align 1
  %conv2.i.i.i29.i.i = zext i8 %42 to i32
  %shl.i.i.i30.i.i = shl nuw nsw i32 %conv2.i.i.i29.i.i, 8
  %or.i.i.i31.i.i = or i32 %shl.i.i.i30.i.i, %conv.i.i.i27.i.i
  %43 = ptrtoint ptr %add.ptr.i25.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %add.ptr.i25.i.i, align 1
  %conv4.i.i.i32.i.i = zext i8 %44 to i32
  %shl5.i.i.i33.i.i = shl nuw nsw i32 %conv4.i.i.i32.i.i, 16
  %or6.i.i.i34.i.i = or i32 %or.i.i.i31.i.i, %shl5.i.i.i33.i.i
  %add.i35.i.i = add nuw nsw i32 %or6.i.i.i34.i.i, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i35.i.i, i32 %7)
  %cmp5.i.i.i = icmp ugt i32 %add.i35.i.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 387, i32 %or6.i.i.i34.i.i)
  %cmp7.i.i.i = icmp ult i32 %or6.i.i.i34.i.i, 387
  %or.cond.i36.i.i = or i1 %cmp7.i.i.i, %cmp5.i.i.i
  br i1 %or.cond.i36.i.i, label %if.then9.i.i.i, label %if.end10.i.i.i

if.then9.i.i.i:                                   ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #7
  br label %drm_hdcp_request_srm.exit.thread

if.end10.i.i.i:                                   ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 387, i32 %or6.i.i.i34.i.i)
  %tobool11.not.i.i.i = icmp eq i32 %or6.i.i.i34.i.i, 387
  br i1 %tobool11.not.i.i.i, label %if.then12.i.i.i, label %if.end13.i.i.i

if.then12.i.i.i:                                  ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #7
  br label %drm_hdcp_request_srm.exit.thread

if.end13.i.i.i:                                   ; preds = %if.end10.i.i.i
  %add.ptr14.i.i.i = getelementptr i8, ptr %9, i32 8
  %45 = ptrtoint ptr %add.ptr14.i.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %add.ptr14.i.i.i, align 1
  %conv15.i.i.i = zext i8 %46 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv15.i.i.i, 2
  %add.ptr16.i.i.i = getelementptr i8, ptr %9, i32 9
  %47 = ptrtoint ptr %add.ptr16.i.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %add.ptr16.i.i.i, align 1
  %49 = lshr i8 %48, 6
  %50 = zext i8 %49 to i32
  %or.i.i.i = or i32 %shl.i.i.i, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %tobool19.not.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %tobool19.not.i.i.i, label %if.end13.i.i.i.for.cond.preheader.thread57.sink.split_crit_edge, label %if.end21.i.i.i

if.end13.i.i.i.for.cond.preheader.thread57.sink.split_crit_edge: ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader.thread57.sink.split

if.end21.i.i.i:                                   ; preds = %if.end13.i.i.i
  %51 = mul nuw nsw i32 %or.i.i.i, 5
  %call8.i.i.i57.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %51, i32 noundef 3520) #10
  %tobool23.not.i.i.i = icmp eq ptr %call8.i.i.i57.i.i, null
  br i1 %tobool23.not.i.i.i, label %if.then24.i.i.i, label %for.cond.preheader.thread61

if.then24.i.i.i:                                  ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #7
  br label %drm_hdcp_request_srm.exit.thread

for.cond.preheader.thread61:                      ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr26.i.i.i = getelementptr i8, ptr %9, i32 12
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef %or.i.i.i) #7
  %52 = call ptr @memcpy(ptr %call8.i.i.i57.i.i, ptr %add.ptr26.i.i.i, i32 %51)
  %53 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %54) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fw_name.i) #7
  br label %for.cond1.preheader.lr.ph

drm_hdcp_request_srm.exit.thread:                 ; preds = %if.then24.i.i.i, %if.then12.i.i.i, %if.then9.i.i.i, %if.end.i24.i.i.drm_hdcp_request_srm.exit.thread_crit_edge, %if.then.i17.i.i, %if.then45.i.i.i, %if.then40.i.i.i, %if.then31.i.i.i, %if.then28.i.i.i, %if.then.i.i.i, %if.end.i.i.drm_hdcp_request_srm.exit.thread_crit_edge, %if.then2.i.drm_hdcp_request_srm.exit.thread_crit_edge
  %ret.0.i.ph = phi i32 [ -22, %if.end.i.i.drm_hdcp_request_srm.exit.thread_crit_edge ], [ -22, %if.end.i24.i.i.drm_hdcp_request_srm.exit.thread_crit_edge ], [ -22, %if.then12.i.i.i ], [ -12, %if.then24.i.i.i ], [ -22, %if.then9.i.i.i ], [ -22, %if.then.i17.i.i ], [ -22, %if.then31.i.i.i ], [ -12, %if.then40.i.i.i ], [ -22, %if.then45.i.i.i ], [ -22, %if.then28.i.i.i ], [ -22, %if.then.i.i.i ], [ -22, %if.then2.i.drm_hdcp_request_srm.exit.thread_crit_edge ]
  %55 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %56) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fw_name.i) #7
  br label %cleanup

drm_hdcp_request_srm.exit:                        ; preds = %land.lhs.true.i.drm_hdcp_request_srm.exit_crit_edge, %if.end.i.drm_hdcp_request_srm.exit_crit_edge
  %57 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %58) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fw_name.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %drm_hdcp_request_srm.exit.for.end15_crit_edge, label %drm_hdcp_request_srm.exit.cleanup_crit_edge

drm_hdcp_request_srm.exit.cleanup_crit_edge:      ; preds = %drm_hdcp_request_srm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

drm_hdcp_request_srm.exit.for.end15_crit_edge:    ; preds = %drm_hdcp_request_srm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end15

for.cond.preheader.thread57.sink.split:           ; preds = %if.end13.i.i.i.for.cond.preheader.thread57.sink.split_crit_edge, %drm_hdcp_get_revoked_ksv_count.exit.i.i.i.for.cond.preheader.thread57.sink.split_crit_edge
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.9) #7
  br label %for.cond.preheader.thread57

for.cond.preheader.thread57:                      ; preds = %for.cond.preheader.thread57.sink.split, %entry.for.cond.preheader.thread57_crit_edge
  %59 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %60) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fw_name.i) #7
  br label %for.end15

for.cond.preheader:                               ; preds = %drm_hdcp_get_revoked_ksvs.exit.i.i.i
  %61 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %62) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fw_name.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i.i.i)
  %cmp40.not = icmp eq i32 %add.i.i.i.i, 0
  br i1 %cmp40.not, label %for.cond.preheader.for.end15_crit_edge, label %for.cond.preheader.for.cond1.preheader.lr.ph_crit_edge

for.cond.preheader.for.cond1.preheader.lr.ph_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader.lr.ph

for.cond.preheader.for.end15_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end15

for.cond1.preheader.lr.ph:                        ; preds = %for.cond.preheader.for.cond1.preheader.lr.ph_crit_edge, %for.cond.preheader.thread61
  %revoked_ksv_list.2.ph66 = phi ptr [ %call8.i.i.i57.i.i, %for.cond.preheader.thread61 ], [ %call8.i.i.i.i.i, %for.cond.preheader.for.cond1.preheader.lr.ph_crit_edge ]
  %revoked_ksv_cnt.0.ph65 = phi i32 [ %or.i.i.i, %for.cond.preheader.thread61 ], [ %add.i.i.i.i, %for.cond.preheader.for.cond1.preheader.lr.ph_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ksv_count)
  %cmp237.not = icmp eq i32 %ksv_count, 0
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc13.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %ret.043 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %ret.1.lcssa, %for.inc13.for.cond1.preheader_crit_edge ]
  %i.041 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc14, %for.inc13.for.cond1.preheader_crit_edge ]
  br i1 %cmp237.not, label %for.cond1.preheader.for.inc13_crit_edge, label %for.body3.lr.ph

for.cond1.preheader.for.inc13_crit_edge:          ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc13

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %mul4 = mul i32 %i.041, 5
  %arrayidx5 = getelementptr i8, ptr %revoked_ksv_list.2.ph66, i32 %mul4
  br label %for.body3

for.body3:                                        ; preds = %for.inc.for.body3_crit_edge, %for.body3.lr.ph
  %ret.139 = phi i32 [ %ret.043, %for.body3.lr.ph ], [ %ret.2, %for.inc.for.body3_crit_edge ]
  %j.038 = phi i32 [ 0, %for.body3.lr.ph ], [ %inc12, %for.inc.for.body3_crit_edge ]
  %mul = mul i32 %j.038, 5
  %arrayidx = getelementptr i8, ptr %ksvs, i32 %mul
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(5) %arrayidx, ptr noundef dereferenceable(5) %arrayidx5, i32 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool7.not = icmp eq i32 %bcmp, 0
  br i1 %tobool7.not, label %if.then8, label %for.body3.for.inc_crit_edge

for.body3.for.inc_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then8:                                         ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #7
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx, align 1
  %conv.i = zext i8 %64 to i32
  %arrayidx1.i = getelementptr i8, ptr %arrayidx, i32 1
  %65 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %66 to i32
  %arrayidx3.i = getelementptr i8, ptr %arrayidx, i32 2
  %67 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %68 to i32
  %arrayidx5.i = getelementptr i8, ptr %arrayidx, i32 3
  %69 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %70 to i32
  %arrayidx7.i = getelementptr i8, ptr %arrayidx, i32 4
  %71 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %72 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.13, i32 noundef %conv.i, i32 noundef %conv2.i, i32 noundef %conv4.i, i32 noundef %conv6.i, i32 noundef %conv8.i) #7
  %inc = add i32 %ret.139, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %for.body3.for.inc_crit_edge
  %ret.2 = phi i32 [ %ret.139, %for.body3.for.inc_crit_edge ], [ %inc, %if.then8 ]
  %inc12 = add nuw i32 %j.038, 1
  %exitcond.not = icmp eq i32 %inc12, %ksv_count
  br i1 %exitcond.not, label %for.inc.for.inc13_crit_edge, label %for.inc.for.body3_crit_edge

for.inc.for.body3_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3

for.inc.for.inc13_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc13

for.inc13:                                        ; preds = %for.inc.for.inc13_crit_edge, %for.cond1.preheader.for.inc13_crit_edge
  %ret.1.lcssa = phi i32 [ %ret.043, %for.cond1.preheader.for.inc13_crit_edge ], [ %ret.2, %for.inc.for.inc13_crit_edge ]
  %inc14 = add nuw i32 %i.041, 1
  %exitcond45.not = icmp eq i32 %inc14, %revoked_ksv_cnt.0.ph65
  br i1 %exitcond45.not, label %for.inc13.for.end15_crit_edge, label %for.inc13.for.cond1.preheader_crit_edge

for.inc13.for.cond1.preheader_crit_edge:          ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader

for.inc13.for.end15_crit_edge:                    ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end15

for.end15:                                        ; preds = %for.inc13.for.end15_crit_edge, %for.cond.preheader.for.end15_crit_edge, %for.cond.preheader.thread57, %drm_hdcp_request_srm.exit.for.end15_crit_edge
  %revoked_ksv_list.253 = phi ptr [ %call8.i.i.i.i.i, %for.cond.preheader.for.end15_crit_edge ], [ null, %for.cond.preheader.thread57 ], [ null, %drm_hdcp_request_srm.exit.for.end15_crit_edge ], [ %revoked_ksv_list.2.ph66, %for.inc13.for.end15_crit_edge ]
  %ret.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end15_crit_edge ], [ 0, %for.cond.preheader.thread57 ], [ 0, %drm_hdcp_request_srm.exit.for.end15_crit_edge ], [ %ret.1.lcssa, %for.inc13.for.end15_crit_edge ]
  call void @kfree(ptr noundef %revoked_ksv_list.253) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end15, %drm_hdcp_request_srm.exit.cleanup_crit_edge, %drm_hdcp_request_srm.exit.thread
  %retval.0 = phi i32 [ %ret.0.lcssa, %for.end15 ], [ %call.i, %drm_hdcp_request_srm.exit.cleanup_crit_edge ], [ %ret.0.i.ph, %drm_hdcp_request_srm.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @drm_get_content_protection_name(i32 noundef %val) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @drm_cp_enum_list, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %val)
  %cmp1 = icmp eq i32 %0, %val
  br i1 %cmp1, label %entry.if.then_crit_edge, label %for.inc

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.07.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ]
  %name = getelementptr [3 x %struct.drm_prop_enum_list], ptr @drm_cp_enum_list, i32 0, i32 %i.07.lcssa, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  br label %cleanup

for.inc:                                          ; preds = %entry
  %3 = load i32, ptr getelementptr inbounds ([3 x %struct.drm_prop_enum_list], ptr @drm_cp_enum_list, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %val)
  %cmp1.1 = icmp eq i32 %3, %val
  br i1 %cmp1.1, label %for.inc.if.then_crit_edge, label %for.inc.1

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %4 = load i32, ptr getelementptr inbounds ([3 x %struct.drm_prop_enum_list], ptr @drm_cp_enum_list, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %val)
  %cmp1.2 = icmp eq i32 %4, %val
  br i1 %cmp1.2, label %for.inc.1.if.then_crit_edge, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

cleanup:                                          ; preds = %for.inc.1.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %2, %if.then ], [ @.str.1, %for.inc.1.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @drm_get_hdcp_content_type_name(i32 noundef %val) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @drm_hdcp_content_type_enum_list, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %val)
  %cmp1 = icmp eq i32 %0, %val
  br i1 %cmp1, label %entry.if.then_crit_edge, label %for.inc

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.07.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ]
  %name = getelementptr [2 x %struct.drm_prop_enum_list], ptr @drm_hdcp_content_type_enum_list, i32 0, i32 %i.07.lcssa, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  br label %cleanup

for.inc:                                          ; preds = %entry
  %3 = load i32, ptr getelementptr inbounds ([2 x %struct.drm_prop_enum_list], ptr @drm_hdcp_content_type_enum_list, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %val)
  %cmp1.1 = icmp eq i32 %3, %val
  br i1 %cmp1.1, label %for.inc.if.then_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %2, %if.then ], [ @.str.1, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_connector_attach_content_protection_property(ptr noundef %connector, i1 noundef zeroext %hdcp_content_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %content_protection_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 89
  %2 = ptrtoint ptr %content_protection_property to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %content_protection_property, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end:                                           ; preds = %entry
  %call = tail call ptr @drm_property_create_enum(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @drm_cp_enum_list, i32 noundef 3) #7
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  %prop.039 = phi ptr [ %call, %if.end.if.end4_crit_edge ], [ %3, %entry.if.end4_crit_edge ]
  %base = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 6
  tail call void @drm_object_attach_property(ptr noundef %base, ptr noundef nonnull %prop.039, i64 noundef 0) #7
  %4 = ptrtoint ptr %content_protection_property to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %prop.039, ptr %content_protection_property, align 4
  br i1 %hdcp_content_type, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %hdcp_content_type_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 90
  %5 = ptrtoint ptr %hdcp_content_type_property to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hdcp_content_type_property, align 4
  %tobool11.not = icmp eq ptr %6, null
  br i1 %tobool11.not, label %if.end14, label %if.end9.if.end17_crit_edge

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end14:                                         ; preds = %if.end9
  %call13 = tail call ptr @drm_property_create_enum(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @drm_hdcp_content_type_enum_list, i32 noundef 2) #7
  %tobool15.not = icmp eq ptr %call13, null
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %if.end14.if.end17_crit_edge

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end14.if.end17_crit_edge, %if.end9.if.end17_crit_edge
  %prop.142 = phi ptr [ %call13, %if.end14.if.end17_crit_edge ], [ %6, %if.end9.if.end17_crit_edge ]
  tail call void @drm_object_attach_property(ptr noundef %base, ptr noundef nonnull %prop.142, i64 noundef 0) #7
  %7 = ptrtoint ptr %hdcp_content_type_property to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %prop.142, ptr %hdcp_content_type_property, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end14.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ -12, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_enum(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_hdcp_update_content_protection(ptr noundef %connector, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %state2 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 52
  %2 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state2, align 8
  %connection_mutex = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 1
  %call.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %connection_mutex) #7
  br i1 %call.i.i, label %entry.if.end_crit_edge, label %do.end, !prof !58

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 415, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %content_protection = getelementptr inbounds %struct.drm_connector_state, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %content_protection to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %content_protection, align 4
  %conv = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %val)
  %cmp = icmp eq i64 %conv, %val
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end24

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv25 = trunc i64 %val to i32
  %6 = ptrtoint ptr %content_protection to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv25, ptr %content_protection, align 4
  %content_protection_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 89
  %7 = ptrtoint ptr %content_protection_property to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %content_protection_property, align 4
  tail call void @drm_sysfs_connector_status_event(ptr noundef %connector, ptr noundef %8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sysfs_connector_status_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_direct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_hdcp.c", i32 303, i32 5}
!2 = !{ptr @__ksymtab_drm_hdcp_check_ksvs_revoked, !3, !"__ksymtab_drm_hdcp_check_ksvs_revoked", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_hdcp.c", i32 311, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_hdcp.c", i32 318, i32 1}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/drm_hdcp.c", i32 365, i32 43}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/drm_hdcp.c", i32 380, i32 43}
!10 = !{ptr @__ksymtab_drm_connector_attach_content_protection_property, !11, !"__ksymtab_drm_connector_attach_content_protection_property", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/drm_hdcp.c", i32 393, i32 1}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/drm_hdcp.c", i32 415, i32 2}
!14 = !{ptr @__ksymtab_drm_hdcp_update_content_protection, !15, !"__ksymtab_drm_hdcp_update_content_protection", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/drm_hdcp.c", i32 423, i32 1}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/drm_hdcp.c", i32 94, i32 3}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/drm_hdcp.c", i32 99, i32 2}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/drm_hdcp.c", i32 110, i32 3}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/drm_hdcp.c", i32 119, i32 3}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/drm_hdcp.c", i32 126, i32 3}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/drm_hdcp.c", i32 132, i32 3}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/drm_hdcp.c", i32 67, i32 3}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/drm_hdcp.c", i32 202, i32 2}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/drm_hdcp.c", i32 28, i32 2}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/drm_hdcp.c", i32 314, i32 43}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/drm_hdcp.c", i32 315, i32 41}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/drm_hdcp.c", i32 316, i32 41}
!40 = !{ptr @drm_cp_enum_list, !41, !"drm_cp_enum_list", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/drm_hdcp.c", i32 313, i32 34}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/drm_hdcp.c", i32 321, i32 33}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/drm_hdcp.c", i32 322, i32 33}
!46 = !{ptr @drm_hdcp_content_type_enum_list, !47, !"drm_hdcp_content_type_enum_list", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/drm_hdcp.c", i32 320, i32 34}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"auto-init"}
!58 = !{!"branch_weights", i32 2000, i32 1}
!59 = !{!"branch_weights", i32 1, i32 2000}
