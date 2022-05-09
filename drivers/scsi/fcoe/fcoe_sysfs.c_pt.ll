; ModuleID = '/llk/IR_all_yes/drivers/scsi/fcoe/fcoe_sysfs.c_pt.bc'
source_filename = "../drivers/scsi/fcoe/fcoe_sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fcoe_ctlr_device_add\22, \22a\22\09"
module asm "\09.weak\09__crc_fcoe_ctlr_device_add\09\09\09\09"
module asm "\09.long\09__crc_fcoe_ctlr_device_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fcoe_ctlr_device_add:\09\09\09\09\09"
module asm "\09.asciz \09\22fcoe_ctlr_device_add\22\09\09\09\09\09"
module asm "__kstrtabns_fcoe_ctlr_device_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fcoe_ctlr_device_delete\22, \22a\22\09"
module asm "\09.weak\09__crc_fcoe_ctlr_device_delete\09\09\09\09"
module asm "\09.long\09__crc_fcoe_ctlr_device_delete\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fcoe_ctlr_device_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22fcoe_ctlr_device_delete\22\09\09\09\09\09"
module asm "__kstrtabns_fcoe_ctlr_device_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fcoe_fcf_device_delete\22, \22a\22\09"
module asm "\09.weak\09__crc_fcoe_fcf_device_delete\09\09\09\09"
module asm "\09.long\09__crc_fcoe_fcf_device_delete\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fcoe_fcf_device_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22fcoe_fcf_device_delete\22\09\09\09\09\09"
module asm "__kstrtabns_fcoe_fcf_device_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fcoe_fcf_device_add\22, \22a\22\09"
module asm "\09.weak\09__crc_fcoe_fcf_device_add\09\09\09\09"
module asm "\09.long\09__crc_fcoe_fcf_device_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fcoe_fcf_device_add:\09\09\09\09\09"
module asm "\09.asciz \09\22fcoe_fcf_device_add\22\09\09\09\09\09"
module asm "__kstrtabns_fcoe_fcf_device_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.105 }
%union.anon.105 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.bus_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fcoe_ctlr_device = type { i32, %struct.device, ptr, %struct.list_head, [20 x i8], ptr, [20 x i8], ptr, %struct.mutex, i32, i32, i32, %struct.fcoe_fc_els_lesb }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fcoe_fc_els_lesb = type { i32, i32, i32, i32, i32, i32 }
%struct.fcoe_fcf_device = type { i32, %struct.device, %struct.list_head, %struct.work_struct, %struct.delayed_work, i32, ptr, i32, i64, i64, i32, i16, [6 x i8], i8, i32, i8, i16 }
%struct.fc_lport = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.fc_disc, %struct.list_head, ptr, %struct.libfc_function_template, i8, i8, i16, i32, i32, %struct.fc_host_statistics, ptr, i8, i32, i64, i64, i32, i32, i32, %struct.fc_els_rnid_gen, i8, i32, i8, i8, i16, i16, i16, i16, i32, %struct.fc_ns_fts, %struct.mutex, %struct.list_head, %struct.delayed_work, [9 x ptr], %struct.list_head }
%struct.fc_disc = type { i8, i8, i8, i16, i8, i16, %struct.list_head, ptr, %struct.mutex, %struct.fc_gpn_ft_resp, %struct.delayed_work, ptr }
%struct.fc_gpn_ft_resp = type { i8, [3 x i8], i32, i64 }
%struct.libfc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fc_els_rnid_gen = type { [16 x i8], i32, i32, i32, i8, i8, i16, [4 x i32], [2 x i8], i16 }
%struct.fc_ns_fts = type { [8 x i32] }
%struct.fcoe_sysfs_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_fcf_dev_loss_tmo = internal constant [25 x i8] c"libfcoe.fcf_dev_loss_tmo\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@fcoe_fcf_dev_loss_tmo = internal global { i32, [28 x i8] } { i32 1800, [28 x i8] zeroinitializer }, align 32
@__param_fcf_dev_loss_tmo = internal constant %struct.kernel_param { ptr @__param_str_fcf_dev_loss_tmo, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.105 { ptr @fcoe_fcf_dev_loss_tmo } }, section "__param", align 4
@__UNIQUE_ID_fcf_dev_loss_tmotype375 = internal constant [39 x i8] c"libfcoe.parmtype=fcf_dev_loss_tmo:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_fcf_dev_loss_tmo376 = internal constant [153 x i8] c"libfcoe.parm=fcf_dev_loss_tmo:Maximum number of seconds that libfcoe should insulate the loss of a fcf. Once this value is exceeded, the fcf is removed.\00", section ".modinfo", align 1
@ctlr_num = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@fcoe_ctlr_device_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ctlr->lock\00", [20 x i8] zeroinitializer }, align 32
@fcoe_bus_type = internal global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.11, ptr null, ptr null, ptr @fcoe_bus_groups, ptr null, ptr null, ptr @fcoe_bus_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@fcoe_ctlr_device_type = internal constant { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.14, ptr @fcoe_ctlr_attr_groups, ptr null, ptr null, ptr @fcoe_ctlr_device_release, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ctlr_wq_%d\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ctlr_dl_wq_%d\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ctlr_%d\00", [24 x i8] zeroinitializer }, align 32
@__kstrtab_fcoe_ctlr_device_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_fcoe_ctlr_device_add = external dso_local constant [0 x i8], align 1
@__ksymtab_fcoe_ctlr_device_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fcoe_ctlr_device_add to i32), ptr @__kstrtab_fcoe_ctlr_device_add, ptr @__kstrtabns_fcoe_ctlr_device_add }, section "___ksymtab_gpl+fcoe_ctlr_device_add", align 4
@__kstrtab_fcoe_ctlr_device_delete = external dso_local constant [0 x i8], align 1
@__kstrtabns_fcoe_ctlr_device_delete = external dso_local constant [0 x i8], align 1
@__ksymtab_fcoe_ctlr_device_delete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fcoe_ctlr_device_delete to i32), ptr @__kstrtab_fcoe_ctlr_device_delete, ptr @__kstrtabns_fcoe_ctlr_device_delete }, section "___ksymtab_gpl+fcoe_ctlr_device_delete", align 4
@__kstrtab_fcoe_fcf_device_delete = external dso_local constant [0 x i8], align 1
@__kstrtabns_fcoe_fcf_device_delete = external dso_local constant [0 x i8], align 1
@__ksymtab_fcoe_fcf_device_delete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fcoe_fcf_device_delete to i32), ptr @__kstrtab_fcoe_fcf_device_delete, ptr @__kstrtabns_fcoe_fcf_device_delete }, section "___ksymtab_gpl+fcoe_fcf_device_delete", align 4
@fcoe_fcf_device_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&fcf->delete_work)\00", [59 x i8] zeroinitializer }, align 32
@fcoe_fcf_device_add.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&fcf->dev_loss_work)->work)\00", [48 x i8] zeroinitializer }, align 32
@fcoe_fcf_device_add.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&fcf->dev_loss_work)->timer\00", [34 x i8] zeroinitializer }, align 32
@fcoe_fcf_device_type = internal constant { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.61, ptr @fcoe_fcf_attr_groups, ptr null, ptr null, ptr @fcoe_fcf_device_release, ptr null }, [40 x i8] zeroinitializer }, align 32
@fcf_num = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fcf_%d\00", [25 x i8] zeroinitializer }, align 32
@__kstrtab_fcoe_fcf_device_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_fcoe_fcf_device_add = external dso_local constant [0 x i8], align 1
@__ksymtab_fcoe_fcf_device_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fcoe_fcf_device_add to i32), ptr @__kstrtab_fcoe_fcf_device_add, ptr @__kstrtabns_fcoe_fcf_device_add }, section "___ksymtab_gpl+fcoe_fcf_device_add", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fcoe\00", [27 x i8] zeroinitializer }, align 32
@fcoe_bus_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @fcoe_bus_group, ptr null], [24 x i8] zeroinitializer }, align 32
@fcoe_bus_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @fcoe_bus_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@fcoe_bus_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @bus_attr_ctlr_create, ptr @bus_attr_ctlr_destroy, ptr null], [20 x i8] zeroinitializer }, align 32
@bus_attr_ctlr_create = internal global { %struct.bus_attribute, [36 x i8] } { %struct.bus_attribute { %struct.attribute { ptr @.str.12, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ctlr_create_store }, [36 x i8] zeroinitializer }, align 32
@bus_attr_ctlr_destroy = internal global { %struct.bus_attribute, [36 x i8] } { %struct.bus_attribute { %struct.attribute { ptr @.str.13, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ctlr_destroy_store }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ctlr_create\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ctlr_destroy\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fcoe_ctlr\00", [22 x i8] zeroinitializer }, align 32
@fcoe_ctlr_attr_groups = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @fcoe_ctlr_attr_group, ptr @fcoe_ctlr_lesb_attr_group, ptr null], [20 x i8] zeroinitializer }, align 32
@fcoe_ctlr_attr_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @fcoe_ctlr_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@fcoe_ctlr_lesb_attr_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.43, ptr null, ptr null, ptr @fcoe_ctlr_lesb_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@fcoe_ctlr_attrs = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @device_attr_fcoe_ctlr_fip_vlan_responder, ptr @device_attr_fcoe_ctlr_fcf_dev_loss_tmo, ptr @device_attr_fcoe_ctlr_r_a_tov, ptr @device_attr_fcoe_ctlr_e_d_tov, ptr @device_attr_fcoe_ctlr_enabled, ptr @device_attr_fcoe_ctlr_mode, ptr null], [36 x i8] zeroinitializer }, align 32
@device_attr_fcoe_ctlr_fip_vlan_responder = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_ctlr_fip_resp, ptr @store_ctlr_fip_resp }, [36 x i8] zeroinitializer }, align 32
@device_attr_fcoe_ctlr_fcf_dev_loss_tmo = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fcoe_ctlr_device_fcf_dev_loss_tmo, ptr @store_private_fcoe_ctlr_fcf_dev_loss_tmo }, [36 x i8] zeroinitializer }, align 32
@device_attr_fcoe_ctlr_r_a_tov = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_ctlr_r_a_tov, ptr @store_ctlr_r_a_tov }, [36 x i8] zeroinitializer }, align 32
@device_attr_fcoe_ctlr_e_d_tov = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_ctlr_e_d_tov, ptr @store_ctlr_e_d_tov }, [36 x i8] zeroinitializer }, align 32
@device_attr_fcoe_ctlr_enabled = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_ctlr_enabled_state, ptr @store_ctlr_enabled }, [36 x i8] zeroinitializer }, align 32
@device_attr_fcoe_ctlr_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_ctlr_mode, ptr @store_ctlr_mode }, [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fip_vlan_responder\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fcf_dev_loss_tmo\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r_a_tov\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"e_d_tov\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@ctlr_enabled_state_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.22, ptr @.str.23], [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@fip_conn_type_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27], [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Fabric\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VN2VN\00", [26 x i8] zeroinitializer }, align 32
@libfcoe_debug_logging = external dso_local local_unnamed_addr global i32, align 4
@store_ctlr_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.30, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016ctlr_%d: Cannot change mode when enabled.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"store_ctlr_mode\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/scsi/fcoe/fcoe_sysfs.c\00", [33 x i8] zeroinitializer }, align 32
@store_ctlr_mode._entry_ptr = internal global ptr @store_ctlr_mode._entry, section ".printk_index", align 4
@store_ctlr_mode._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.30, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016ctlr_%d: Mode change not supported by LLD.\0A\00", [50 x i8] zeroinitializer }, align 32
@store_ctlr_mode._entry_ptr.33 = internal global ptr @store_ctlr_mode._entry.31, section ".printk_index", align 4
@store_ctlr_mode._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.29, ptr @.str.30, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016ctlr_%d: Unknown mode %s provided.\0A\00", [58 x i8] zeroinitializer }, align 32
@store_ctlr_mode._entry_ptr.36 = internal global ptr @store_ctlr_mode._entry.34, section ".printk_index", align 4
@store_ctlr_mode._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.29, ptr @.str.30, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016ctlr_%d: Mode changed to %s.\0A\00", [32 x i8] zeroinitializer }, align 32
@store_ctlr_mode._entry_ptr.39 = internal global ptr @store_ctlr_mode._entry.37, section ".printk_index", align 4
@store_ctlr_mode._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.29, ptr @.str.30, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016ctlr_%d: Mode change not supported.\0A\00", [57 x i8] zeroinitializer }, align 32
@store_ctlr_mode._entry_ptr.42 = internal global ptr @store_ctlr_mode._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lesb\00", [27 x i8] zeroinitializer }, align 32
@fcoe_ctlr_lesb_attrs = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @device_attr_fcoe_ctlr_link_fail, ptr @device_attr_fcoe_ctlr_vlink_fail, ptr @device_attr_fcoe_ctlr_miss_fka, ptr @device_attr_fcoe_ctlr_symb_err, ptr @device_attr_fcoe_ctlr_err_block, ptr @device_attr_fcoe_ctlr_fcs_error, ptr null], [36 x i8] zeroinitializer }, align 32
@device_attr_fcoe_ctlr_link_fail = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fcoe_ctlr_device_link_fail, ptr null }, [36 x i8] zeroinitializer }, align 32
@device_attr_fcoe_ctlr_vlink_fail = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fcoe_ctlr_device_vlink_fail, ptr null }, [36 x i8] zeroinitializer }, align 32
@device_attr_fcoe_ctlr_miss_fka = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fcoe_ctlr_device_miss_fka, ptr null }, [36 x i8] zeroinitializer }, align 32
@device_attr_fcoe_ctlr_symb_err = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fcoe_ctlr_device_symb_err, ptr null }, [36 x i8] zeroinitializer }, align 32
@device_attr_fcoe_ctlr_err_block = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fcoe_ctlr_device_err_block, ptr null }, [36 x i8] zeroinitializer }, align 32
@device_attr_fcoe_ctlr_fcs_error = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fcoe_ctlr_device_fcs_error, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"link_fail\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vlink_fail\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"miss_fka\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"symb_err\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"err_block\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fcs_error\00", [22 x i8] zeroinitializer }, align 32
@fcoe_ctlr_device_queue_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.30, i32 720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013ERROR: FIP Ctlr '%d' attempted to queue work, when no workqueue created.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fcoe_ctlr_device_queue_work\00", [36 x i8] zeroinitializer }, align 32
@fcoe_ctlr_device_queue_work._entry_ptr = internal global ptr @fcoe_ctlr_device_queue_work._entry, section ".printk_index", align 4
@fcoe_ctlr_device_flush_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.30, i32 698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013ERROR: FIP Ctlr '%d' attempted to flush work, when no workqueue created.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fcoe_ctlr_device_flush_work\00", [36 x i8] zeroinitializer }, align 32
@fcoe_ctlr_device_flush_work._entry_ptr = internal global ptr @fcoe_ctlr_device_flush_work._entry, section ".printk_index", align 4
@fcoe_ctlr_device_queue_devloss_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.55, ptr @.str.30, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"fcoe_ctlr_device_queue_devloss_work\00", [60 x i8] zeroinitializer }, align 32
@fcoe_ctlr_device_queue_devloss_work._entry_ptr = internal global ptr @fcoe_ctlr_device_queue_devloss_work._entry, section ".printk_index", align 4
@fcoe_ctlr_device_flush_devloss._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.56, ptr @.str.30, i32 738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fcoe_ctlr_device_flush_devloss\00", [33 x i8] zeroinitializer }, align 32
@fcoe_ctlr_device_flush_devloss._entry_ptr = internal global ptr @fcoe_ctlr_device_flush_devloss._entry, section ".printk_index", align 4
@fip_timeout_deleted_fcf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.30, i32 944, ptr @.str.59, ptr @.str.60 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"FIP fcf connection time out: removing fcf\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fip_timeout_deleted_fcf\00", [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fip_timeout_deleted_fcf._entry_ptr = internal global ptr @fip_timeout_deleted_fcf._entry, section ".printk_index", align 4
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fcoe_fcf\00", [23 x i8] zeroinitializer }, align 32
@fcoe_fcf_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @fcoe_fcf_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@fcoe_fcf_attr_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @fcoe_fcf_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@fcoe_fcf_attrs = internal global { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @device_attr_fcoe_fcf_fabric_name, ptr @device_attr_fcoe_fcf_switch_name, ptr @device_attr_fcoe_fcf_dev_loss_tmo, ptr @device_attr_fcoe_fcf_fc_map, ptr @device_attr_fcoe_fcf_vfid, ptr @device_attr_fcoe_fcf_mac, ptr @device_attr_fcoe_fcf_priority, ptr @device_attr_fcoe_fcf_fka_period, ptr @device_attr_fcoe_fcf_state, ptr @device_attr_fcoe_fcf_selected, ptr @device_attr_fcoe_fcf_vlan_id, ptr null], [48 x i8] zeroinitializer }, align 32
@device_attr_fcoe_fcf_fabric_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fcoe_fcf_device_fabric_name, ptr null }, [36 x i8] zeroinitializer }, align 32
@device_attr_fcoe_fcf_switch_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fcoe_fcf_device_switch_name, ptr null }, [36 x i8] zeroinitializer }, align 32
@device_attr_fcoe_fcf_dev_loss_tmo = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fcoe_fcf_device_dev_loss_tmo, ptr @store_fcoe_fcf_dev_loss_tmo }, [36 x i8] zeroinitializer }, align 32
@device_attr_fcoe_fcf_fc_map = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fcoe_fcf_device_fc_map, ptr null }, [36 x i8] zeroinitializer }, align 32
@device_attr_fcoe_fcf_vfid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fcoe_fcf_device_vfid, ptr null }, [36 x i8] zeroinitializer }, align 32
@device_attr_fcoe_fcf_mac = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fcoe_fcf_device_mac, ptr null }, [36 x i8] zeroinitializer }, align 32
@device_attr_fcoe_fcf_priority = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fcoe_fcf_device_priority, ptr null }, [36 x i8] zeroinitializer }, align 32
@device_attr_fcoe_fcf_fka_period = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fcoe_fcf_device_fka_period, ptr null }, [36 x i8] zeroinitializer }, align 32
@device_attr_fcoe_fcf_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fcf_state, ptr null }, [36 x i8] zeroinitializer }, align 32
@device_attr_fcoe_fcf_selected = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fcoe_fcf_device_selected, ptr null }, [36 x i8] zeroinitializer }, align 32
@device_attr_fcoe_fcf_vlan_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fcoe_fcf_device_vlan_id, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fabric_name\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%llx\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"switch_name\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dev_loss_tmo\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fc_map\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vfid\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mac\00", [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pM\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"priority\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fka_period\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@fcf_state_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.25, ptr @.str.74, ptr @.str.75], [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Disconnected\00", [19 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Connected\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"selected\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vlan_id\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 49]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@___asan_gen_.85 = private unnamed_addr constant [22 x i8] c"fcoe_fcf_dev_loss_tmo\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 31, i32 21 }
@___asan_gen_.88 = private unnamed_addr constant [9 x i8] c"ctlr_num\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 24, i32 17 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 809, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [14 x i8] c"fcoe_bus_type\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 683, i32 24 }
@___asan_gen_.100 = private unnamed_addr constant [22 x i8] c"fcoe_ctlr_device_type\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 650, i32 33 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 817, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 818, i32 17 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 825, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 831, i32 27 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1016, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1017, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [21 x i8] c"fcoe_fcf_device_type\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 656, i32 33 }
@___asan_gen_.136 = private unnamed_addr constant [8 x i8] c"fcf_num\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 25, i32 17 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1027, i32 26 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 684, i32 10 }
@___asan_gen_.145 = private unnamed_addr constant [16 x i8] c"fcoe_bus_groups\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [15 x i8] c"fcoe_bus_group\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 681, i32 1 }
@___asan_gen_.151 = private unnamed_addr constant [15 x i8] c"fcoe_bus_attrs\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 676, i32 26 }
@___asan_gen_.154 = private unnamed_addr constant [21 x i8] c"bus_attr_ctlr_create\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [22 x i8] c"bus_attr_ctlr_destroy\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 667, i32 8 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 674, i32 8 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 651, i32 10 }
@___asan_gen_.169 = private unnamed_addr constant [22 x i8] c"fcoe_ctlr_attr_groups\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 586, i32 38 }
@___asan_gen_.172 = private unnamed_addr constant [21 x i8] c"fcoe_ctlr_attr_group\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 582, i32 31 }
@___asan_gen_.175 = private unnamed_addr constant [26 x i8] c"fcoe_ctlr_lesb_attr_group\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 567, i32 31 }
@___asan_gen_.178 = private unnamed_addr constant [16 x i8] c"fcoe_ctlr_attrs\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 572, i32 26 }
@___asan_gen_.181 = private unnamed_addr constant [41 x i8] c"device_attr_fcoe_ctlr_fip_vlan_responder\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [39 x i8] c"device_attr_fcoe_ctlr_fcf_dev_loss_tmo\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [30 x i8] c"device_attr_fcoe_ctlr_r_a_tov\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [30 x i8] c"device_attr_fcoe_ctlr_e_d_tov\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [30 x i8] c"device_attr_fcoe_ctlr_enabled\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [27 x i8] c"device_attr_fcoe_ctlr_mode\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 418, i32 8 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 415, i32 22 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 513, i32 8 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 461, i32 8 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 488, i32 8 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 380, i32 8 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 377, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant [25 x i8] c"ctlr_enabled_state_names\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 358, i32 14 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 359, i32 27 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 360, i32 27 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 318, i32 8 }
@___asan_gen_.232 = private unnamed_addr constant [20 x i8] c"fip_conn_type_names\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 217, i32 14 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 218, i32 30 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 219, i32 30 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 220, i32 30 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 291, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 295, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 302, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 308, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 313, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 568, i32 10 }
@___asan_gen_.283 = private unnamed_addr constant [21 x i8] c"fcoe_ctlr_lesb_attrs\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 557, i32 26 }
@___asan_gen_.286 = private unnamed_addr constant [32 x i8] c"device_attr_fcoe_ctlr_link_fail\00", align 1
@___asan_gen_.289 = private unnamed_addr constant [33 x i8] c"device_attr_fcoe_ctlr_vlink_fail\00", align 1
@___asan_gen_.292 = private unnamed_addr constant [31 x i8] c"device_attr_fcoe_ctlr_miss_fka\00", align 1
@___asan_gen_.295 = private unnamed_addr constant [31 x i8] c"device_attr_fcoe_ctlr_symb_err\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [32 x i8] c"device_attr_fcoe_ctlr_err_block\00", align 1
@___asan_gen_.301 = private unnamed_addr constant [32 x i8] c"device_attr_fcoe_ctlr_fcs_error\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 518, i32 1 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 519, i32 1 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 520, i32 1 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 521, i32 1 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 522, i32 1 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 523, i32 1 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 718, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 696, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 760, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 736, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 943, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 657, i32 10 }
@___asan_gen_.373 = private unnamed_addr constant [21 x i8] c"fcoe_fcf_attr_groups\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 611, i32 38 }
@___asan_gen_.376 = private unnamed_addr constant [20 x i8] c"fcoe_fcf_attr_group\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 607, i32 31 }
@___asan_gen_.379 = private unnamed_addr constant [15 x i8] c"fcoe_fcf_attrs\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 592, i32 26 }
@___asan_gen_.382 = private unnamed_addr constant [33 x i8] c"device_attr_fcoe_fcf_fabric_name\00", align 1
@___asan_gen_.385 = private unnamed_addr constant [33 x i8] c"device_attr_fcoe_fcf_switch_name\00", align 1
@___asan_gen_.388 = private unnamed_addr constant [34 x i8] c"device_attr_fcoe_fcf_dev_loss_tmo\00", align 1
@___asan_gen_.391 = private unnamed_addr constant [28 x i8] c"device_attr_fcoe_fcf_fc_map\00", align 1
@___asan_gen_.394 = private unnamed_addr constant [26 x i8] c"device_attr_fcoe_fcf_vfid\00", align 1
@___asan_gen_.397 = private unnamed_addr constant [25 x i8] c"device_attr_fcoe_fcf_mac\00", align 1
@___asan_gen_.400 = private unnamed_addr constant [30 x i8] c"device_attr_fcoe_fcf_priority\00", align 1
@___asan_gen_.403 = private unnamed_addr constant [32 x i8] c"device_attr_fcoe_fcf_fka_period\00", align 1
@___asan_gen_.406 = private unnamed_addr constant [27 x i8] c"device_attr_fcoe_fcf_state\00", align 1
@___asan_gen_.409 = private unnamed_addr constant [30 x i8] c"device_attr_fcoe_fcf_selected\00", align 1
@___asan_gen_.412 = private unnamed_addr constant [29 x i8] c"device_attr_fcoe_fcf_vlan_id\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 525, i32 1 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 526, i32 1 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 553, i32 8 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 528, i32 1 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 529, i32 1 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 530, i32 1 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 527, i32 1 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 531, i32 1 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 255, i32 8 }
@___asan_gen_.451 = private unnamed_addr constant [16 x i8] c"fcf_state_names\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 236, i32 14 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 238, i32 36 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 239, i32 36 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 532, i32 1 }
@___asan_gen_.463 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.464 = private constant [34 x i8] c"../drivers/scsi/fcoe/fcoe_sysfs.c\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 533, i32 1 }
@llvm.compiler.used = appending global [145 x ptr] [ptr @__UNIQUE_ID_fcf_dev_loss_tmo376, ptr @__UNIQUE_ID_fcf_dev_loss_tmotype375, ptr @__ksymtab_fcoe_ctlr_device_add, ptr @__ksymtab_fcoe_ctlr_device_delete, ptr @__ksymtab_fcoe_fcf_device_add, ptr @__ksymtab_fcoe_fcf_device_delete, ptr @__param_fcf_dev_loss_tmo, ptr @fcoe_ctlr_device_flush_devloss._entry, ptr @fcoe_ctlr_device_flush_devloss._entry_ptr, ptr @fcoe_ctlr_device_flush_work._entry, ptr @fcoe_ctlr_device_flush_work._entry_ptr, ptr @fcoe_ctlr_device_queue_devloss_work._entry, ptr @fcoe_ctlr_device_queue_devloss_work._entry_ptr, ptr @fcoe_ctlr_device_queue_work._entry, ptr @fcoe_ctlr_device_queue_work._entry_ptr, ptr @fcoe_sysfs_teardown, ptr @fip_timeout_deleted_fcf._entry, ptr @fip_timeout_deleted_fcf._entry_ptr, ptr @store_ctlr_mode._entry, ptr @store_ctlr_mode._entry.31, ptr @store_ctlr_mode._entry.34, ptr @store_ctlr_mode._entry.37, ptr @store_ctlr_mode._entry.40, ptr @store_ctlr_mode._entry_ptr, ptr @store_ctlr_mode._entry_ptr.33, ptr @store_ctlr_mode._entry_ptr.36, ptr @store_ctlr_mode._entry_ptr.39, ptr @store_ctlr_mode._entry_ptr.42, ptr @fcoe_fcf_dev_loss_tmo, ptr @ctlr_num, ptr @fcoe_ctlr_device_add.__key, ptr @.str, ptr @fcoe_bus_type, ptr @fcoe_ctlr_device_type, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @fcoe_fcf_device_add.__key, ptr @.str.5, ptr @fcoe_fcf_device_add.__key.6, ptr @.str.7, ptr @fcoe_fcf_device_add.__key.8, ptr @.str.9, ptr @fcoe_fcf_device_type, ptr @fcf_num, ptr @.str.10, ptr @.str.11, ptr @fcoe_bus_groups, ptr @fcoe_bus_group, ptr @fcoe_bus_attrs, ptr @bus_attr_ctlr_create, ptr @bus_attr_ctlr_destroy, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @fcoe_ctlr_attr_groups, ptr @fcoe_ctlr_attr_group, ptr @fcoe_ctlr_lesb_attr_group, ptr @fcoe_ctlr_attrs, ptr @device_attr_fcoe_ctlr_fip_vlan_responder, ptr @device_attr_fcoe_ctlr_fcf_dev_loss_tmo, ptr @device_attr_fcoe_ctlr_r_a_tov, ptr @device_attr_fcoe_ctlr_e_d_tov, ptr @device_attr_fcoe_ctlr_enabled, ptr @device_attr_fcoe_ctlr_mode, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @ctlr_enabled_state_names, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @fip_conn_type_names, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @fcoe_ctlr_lesb_attrs, ptr @device_attr_fcoe_ctlr_link_fail, ptr @device_attr_fcoe_ctlr_vlink_fail, ptr @device_attr_fcoe_ctlr_miss_fka, ptr @device_attr_fcoe_ctlr_symb_err, ptr @device_attr_fcoe_ctlr_err_block, ptr @device_attr_fcoe_ctlr_fcs_error, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @fcoe_fcf_attr_groups, ptr @fcoe_fcf_attr_group, ptr @fcoe_fcf_attrs, ptr @device_attr_fcoe_fcf_fabric_name, ptr @device_attr_fcoe_fcf_switch_name, ptr @device_attr_fcoe_fcf_dev_loss_tmo, ptr @device_attr_fcoe_fcf_fc_map, ptr @device_attr_fcoe_fcf_vfid, ptr @device_attr_fcoe_fcf_mac, ptr @device_attr_fcoe_fcf_priority, ptr @device_attr_fcoe_fcf_fka_period, ptr @device_attr_fcoe_fcf_state, ptr @device_attr_fcoe_fcf_selected, ptr @device_attr_fcoe_fcf_vlan_id, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @fcf_state_names, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], section "llvm.metadata"
@0 = internal global [127 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_fcf_dev_loss_tmo to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctlr_num to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_ctlr_device_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_ctlr_device_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_fcf_device_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_fcf_device_add.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_fcf_device_add.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_fcf_device_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcf_num to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_bus_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_bus_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_bus_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_attr_ctlr_create to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_attr_ctlr_destroy to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_ctlr_attr_groups to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_ctlr_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_ctlr_lesb_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_ctlr_attrs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_attr_fcoe_ctlr_fip_vlan_responder to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_attr_fcoe_ctlr_fcf_dev_loss_tmo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_attr_fcoe_ctlr_r_a_tov to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_attr_fcoe_ctlr_e_d_tov to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_attr_fcoe_ctlr_enabled to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_attr_fcoe_ctlr_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctlr_enabled_state_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fip_conn_type_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @store_ctlr_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @store_ctlr_mode._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @store_ctlr_mode._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @store_ctlr_mode._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @store_ctlr_mode._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_ctlr_lesb_attrs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_attr_fcoe_ctlr_link_fail to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_attr_fcoe_ctlr_vlink_fail to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_attr_fcoe_ctlr_miss_fka to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_attr_fcoe_ctlr_symb_err to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_attr_fcoe_ctlr_err_block to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_attr_fcoe_ctlr_fcs_error to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_ctlr_device_queue_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_ctlr_device_flush_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_ctlr_device_queue_devloss_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_ctlr_device_flush_devloss._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fip_timeout_deleted_fcf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_fcf_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_fcf_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcoe_fcf_attrs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_attr_fcoe_fcf_fabric_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_attr_fcoe_fcf_switch_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_attr_fcoe_fcf_dev_loss_tmo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_attr_fcoe_fcf_fc_map to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_attr_fcoe_fcf_vfid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_attr_fcoe_fcf_mac to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_attr_fcoe_fcf_priority to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_attr_fcoe_fcf_fka_period to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_attr_fcoe_fcf_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_attr_fcoe_fcf_selected to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_attr_fcoe_fcf_vlan_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcf_state_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fcoe_ctlr_device_add(ptr noundef %parent, ptr noundef %f, i32 noundef %priv_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %priv_size, 1128
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #16
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ctlr_num, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !235
  tail call void @llvm.prefetch.p0(ptr nonnull @ctlr_num, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ctlr_num, ptr nonnull @ctlr_num, i32 1, ptr nonnull elementtype(i32) @ctlr_num) #13, !srcloc !236
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !237
  %sub = add i32 %asmresult.i.i.i.i, -1
  %1 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %sub, ptr %call9.i.i, align 128
  %f2 = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %call9.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %f2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %f, ptr %f2, align 8
  %mode = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %call9.i.i, i32 0, i32 10
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %mode, align 4
  %fcfs = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %call9.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %fcfs to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %fcfs, ptr %fcfs, align 4
  %prev.i = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %call9.i.i, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fcfs, ptr %prev.i, align 16
  %lock = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %call9.i.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @fcoe_ctlr_device_add.__key) #13
  %dev = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %call9.i.i, i32 0, i32 1
  %parent3 = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %call9.i.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %parent3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %parent, ptr %parent3, align 16
  %bus = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %call9.i.i, i32 0, i32 1, i32 5
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @fcoe_bus_type, ptr %bus, align 32
  %type = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %call9.i.i, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @fcoe_ctlr_device_type, ptr %type, align 4
  %9 = load i32, ptr @fcoe_fcf_dev_loss_tmo, align 4
  %fcf_dev_loss_tmo = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %call9.i.i, i32 0, i32 9
  %10 = ptrtoint ptr %fcf_dev_loss_tmo to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %fcf_dev_loss_tmo, align 64
  %work_q_name = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %call9.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call9.i.i, align 128
  %call7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %work_q_name, i32 noundef 20, ptr noundef nonnull @.str.1, i32 noundef %12)
  %call10 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.2, i32 noundef 917514, i32 noundef 1, ptr noundef %work_q_name) #13
  %work_q = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %call9.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %work_q to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call10, ptr %work_q, align 8
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %if.end.out_del_crit_edge, label %if.end14

if.end.out_del_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_del

if.end14:                                         ; preds = %if.end
  %devloss_work_q_name = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %call9.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call9.i.i, align 128
  %call17 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %devloss_work_q_name, i32 noundef 20, ptr noundef nonnull @.str.3, i32 noundef %15)
  %call20 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.2, i32 noundef 917514, i32 noundef 1, ptr noundef %devloss_work_q_name) #13
  %devloss_work_q = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %call9.i.i, i32 0, i32 7
  %16 = ptrtoint ptr %devloss_work_q to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call20, ptr %devloss_work_q, align 32
  %tobool22.not = icmp eq ptr %call20, null
  br i1 %tobool22.not, label %if.end14.out_del_q_crit_edge, label %if.end24

if.end14.out_del_q_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_del_q

if.end24:                                         ; preds = %if.end14
  %17 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call9.i.i, align 128
  %call27 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %18) #13
  %call29 = tail call i32 @device_register(ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end24.cleanup_crit_edge, label %out_del_q2

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

out_del_q2:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %devloss_work_q to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %devloss_work_q, align 32
  tail call void @destroy_workqueue(ptr noundef %20) #13
  %21 = ptrtoint ptr %devloss_work_q to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %devloss_work_q, align 32
  br label %out_del_q

out_del_q:                                        ; preds = %out_del_q2, %if.end14.out_del_q_crit_edge
  %22 = ptrtoint ptr %work_q to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %work_q, align 8
  tail call void @destroy_workqueue(ptr noundef %23) #13
  %24 = ptrtoint ptr %work_q to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %work_q, align 8
  br label %out_del

out_del:                                          ; preds = %out_del_q, %if.end.out_del_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %out_del, %if.end24.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i.i, %if.end24.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %out_del ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fcoe_ctlr_device_delete(ptr noundef %ctlr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %ctlr, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %fcfs = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %ctlr, i32 0, i32 3
  %0 = ptrtoint ptr %fcfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcfs, align 4
  %cmp.not39 = icmp eq ptr %1, %fcfs
  br i1 %cmp.not39, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %work_q.i = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %ctlr, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %fcoe_ctlr_device_queue_work.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in40 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn, %fcoe_ctlr_device_queue_work.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %.pn.in40 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in40, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in40) #13
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in40, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in40 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in40, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in40 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in40, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in40, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %state = getelementptr i8, ptr %.pn.in40, i32 160
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %state, align 8
  %12 = ptrtoint ptr %work_q.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %work_q.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i, !prof !238

do.end.i:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ctlr, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %15) #17
  tail call void @dump_stack() #17
  br label %fcoe_ctlr_device_queue_work.exit

if.end.i:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  %delete_work = getelementptr i8, ptr %.pn.in40, i32 8
  %call.i.i33 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %13, ptr noundef %delete_work) #13
  br label %fcoe_ctlr_device_queue_work.exit

fcoe_ctlr_device_queue_work.exit:                 ; preds = %if.end.i, %do.end.i
  %cmp.not = icmp eq ptr %.pn, %fcfs
  br i1 %cmp.not, label %fcoe_ctlr_device_queue_work.exit.for.end_crit_edge, label %fcoe_ctlr_device_queue_work.exit.for.body_crit_edge

fcoe_ctlr_device_queue_work.exit.for.body_crit_edge: ; preds = %fcoe_ctlr_device_queue_work.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

fcoe_ctlr_device_queue_work.exit.for.end_crit_edge: ; preds = %fcoe_ctlr_device_queue_work.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %fcoe_ctlr_device_queue_work.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #13
  %work_q.i34 = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %ctlr, i32 0, i32 5
  %16 = ptrtoint ptr %work_q.i34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %work_q.i34, align 8
  %tobool.not.i35 = icmp eq ptr %17, null
  br i1 %tobool.not.i35, label %do.end.i37, label %if.end.i38

do.end.i37:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ctlr, align 8
  %call.i36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %19) #17
  tail call void @dump_stack() #17
  br label %fcoe_ctlr_device_flush_work.exit

if.end.i38:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @flush_workqueue(ptr noundef nonnull %17) #13
  br label %fcoe_ctlr_device_flush_work.exit

fcoe_ctlr_device_flush_work.exit:                 ; preds = %if.end.i38, %do.end.i37
  %devloss_work_q = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %ctlr, i32 0, i32 7
  %20 = ptrtoint ptr %devloss_work_q to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %devloss_work_q, align 8
  tail call void @destroy_workqueue(ptr noundef %21) #13
  %22 = ptrtoint ptr %devloss_work_q to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %devloss_work_q, align 8
  %23 = ptrtoint ptr %work_q.i34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %work_q.i34, align 8
  tail call void @destroy_workqueue(ptr noundef %24) #13
  %25 = ptrtoint ptr %work_q.i34 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %work_q.i34, align 8
  %dev = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %ctlr, i32 0, i32 1
  tail call void @device_unregister(ptr noundef %dev) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fcoe_fcf_device_delete(ptr noundef %fcf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.fcoe_fcf_device, ptr %fcf, i32 0, i32 7
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_loss_tmo = getelementptr inbounds %struct.fcoe_fcf_device, ptr %fcf, i32 0, i32 5
  %2 = ptrtoint ptr %dev_loss_tmo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_loss_tmo, align 8
  %parent = getelementptr inbounds %struct.fcoe_fcf_device, ptr %fcf, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %state, align 8
  %priv = getelementptr inbounds %struct.fcoe_fcf_device, ptr %fcf, i32 0, i32 6
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %priv, align 4
  %devloss_work_q.i = getelementptr i8, ptr %5, i32 984
  %8 = ptrtoint ptr %devloss_work_q.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %devloss_work_q.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i, !prof !238

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %5, i32 -8
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %11) #17
  tail call void @dump_stack() #17
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %mul = mul i32 %3, 100
  %dev_loss_work = getelementptr inbounds %struct.fcoe_fcf_device, ptr %fcf, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef nonnull %9, ptr noundef %dev_loss_work, i32 noundef %mul) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %do.end.i, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fcoe_fcf_device_add(ptr noundef %ctlr, ptr nocapture noundef readonly %new_fcf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fcfs = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %ctlr, i32 0, i32 3
  %0 = ptrtoint ptr %fcfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn139 = load ptr, ptr %fcfs, align 4
  %cmp.not140 = icmp eq ptr %.pn139, %fcfs
  br i1 %cmp.not140, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %switch_name.i = getelementptr inbounds %struct.fcoe_fcf_device, ptr %new_fcf, i32 0, i32 9
  %1 = ptrtoint ptr %switch_name.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %switch_name.i, align 8
  %fabric_name.i = getelementptr inbounds %struct.fcoe_fcf_device, ptr %new_fcf, i32 0, i32 8
  %fc_map.i = getelementptr inbounds %struct.fcoe_fcf_device, ptr %new_fcf, i32 0, i32 10
  %mac.i = getelementptr inbounds %struct.fcoe_fcf_device, ptr %new_fcf, i32 0, i32 12
  %add.ptr.i.i = getelementptr %struct.fcoe_fcf_device, ptr %new_fcf, i32 0, i32 12, i32 4
  br label %for.body

for.body:                                         ; preds = %fcoe_fcf_device_match.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn141 = phi ptr [ %.pn139, %for.body.lr.ph ], [ %.pn, %fcoe_fcf_device_match.exit.for.body_crit_edge ]
  %switch_name1.i = getelementptr i8, ptr %.pn141, i32 176
  %3 = ptrtoint ptr %switch_name1.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %switch_name1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %4)
  %cmp.i = icmp eq i64 %2, %4
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.fcoe_fcf_device_match.exit_crit_edge

for.body.fcoe_fcf_device_match.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %fcoe_fcf_device_match.exit

land.lhs.true.i:                                  ; preds = %for.body
  %5 = ptrtoint ptr %fabric_name.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %fabric_name.i, align 8
  %fabric_name2.i = getelementptr i8, ptr %.pn141, i32 168
  %7 = ptrtoint ptr %fabric_name2.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %fabric_name2.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %8)
  %cmp3.i = icmp eq i64 %6, %8
  br i1 %cmp3.i, label %land.lhs.true4.i, label %land.lhs.true.i.fcoe_fcf_device_match.exit_crit_edge

land.lhs.true.i.fcoe_fcf_device_match.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fcoe_fcf_device_match.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %9 = ptrtoint ptr %fc_map.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fc_map.i, align 8
  %fc_map5.i = getelementptr i8, ptr %.pn141, i32 184
  %11 = ptrtoint ptr %fc_map5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fc_map5.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp6.i = icmp eq i32 %10, %12
  br i1 %cmp6.i, label %land.lhs.true7.i, label %land.lhs.true4.i.fcoe_fcf_device_match.exit_crit_edge

land.lhs.true4.i.fcoe_fcf_device_match.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fcoe_fcf_device_match.exit

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %mac8.i = getelementptr i8, ptr %.pn141, i32 190
  %13 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mac.i, align 4
  %15 = ptrtoint ptr %mac8.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mac8.i, align 4
  %xor.i.i = xor i32 %16, %14
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %.pn141, i32 194
  %19 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %20, %18
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %land.lhs.true7.i.fcoe_fcf_device_match.exit_crit_edge

land.lhs.true7.i.fcoe_fcf_device_match.exit_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fcoe_fcf_device_match.exit

fcoe_fcf_device_match.exit:                       ; preds = %land.lhs.true7.i.fcoe_fcf_device_match.exit_crit_edge, %land.lhs.true4.i.fcoe_fcf_device_match.exit_crit_edge, %land.lhs.true.i.fcoe_fcf_device_match.exit_crit_edge, %for.body.fcoe_fcf_device_match.exit_crit_edge
  %21 = ptrtoint ptr %.pn141 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load ptr, ptr %.pn141, align 4
  %cmp.not = icmp eq ptr %.pn, %fcfs
  br i1 %cmp.not, label %fcoe_fcf_device_match.exit.for.end_crit_edge, label %fcoe_fcf_device_match.exit.for.body_crit_edge

fcoe_fcf_device_match.exit.for.body_crit_edge:    ; preds = %fcoe_fcf_device_match.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

fcoe_fcf_device_match.exit.for.end_crit_edge:     ; preds = %fcoe_fcf_device_match.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then:                                          ; preds = %land.lhs.true7.i
  %fcf.0.le = getelementptr i8, ptr %.pn141, i32 -936
  %state = getelementptr i8, ptr %.pn141, i32 160
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp2 = icmp eq i32 %23, 2
  br i1 %cmp2, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  %24 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %state, align 8
  %dev_loss_work = getelementptr i8, ptr %.pn141, i32 52
  %call5 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %dev_loss_work) #13
  br i1 %call5, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then6:                                         ; preds = %if.end
  %devloss_work_q.i = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %ctlr, i32 0, i32 7
  %25 = ptrtoint ptr %devloss_work_q.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %devloss_work_q.i, align 8
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i131

do.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ctlr, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %28) #17
  tail call void @dump_stack() #17
  br label %cleanup

if.end.i131:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @flush_workqueue(ptr noundef nonnull %26) #13
  br label %cleanup

for.end:                                          ; preds = %fcoe_fcf_device_match.exit.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 2848, i32 noundef 1144) #18
  %tobool15.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool15.not, label %for.end.cleanup_crit_edge, label %do.body, !prof !238

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %for.end
  %delete_work = getelementptr inbounds %struct.fcoe_fcf_device, ptr %call7.i.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %delete_work, i32 noundef 0) #13
  %30 = ptrtoint ptr %delete_work to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -64, ptr %delete_work, align 8
  %lockdep_map = getelementptr inbounds %struct.fcoe_fcf_device, ptr %call7.i.i, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @fcoe_fcf_device_add.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry25 = getelementptr inbounds %struct.fcoe_fcf_device, ptr %call7.i.i, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %entry25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %entry25, ptr %entry25, align 4
  %prev.i = getelementptr inbounds %struct.fcoe_fcf_device, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %entry25, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.fcoe_fcf_device, ptr %call7.i.i, i32 0, i32 3, i32 2
  %33 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @fcoe_fcf_device_final_delete, ptr %func, align 4
  %dev_loss_work29 = getelementptr inbounds %struct.fcoe_fcf_device, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %dev_loss_work29, i32 noundef 0) #13
  %34 = ptrtoint ptr %dev_loss_work29 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -64, ptr %dev_loss_work29, align 4
  %lockdep_map37 = getelementptr inbounds %struct.fcoe_fcf_device, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map37, ptr noundef nonnull @.str.7, ptr noundef nonnull @fcoe_fcf_device_add.__key.6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry40 = getelementptr inbounds %struct.fcoe_fcf_device, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1
  %35 = ptrtoint ptr %entry40 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %entry40, ptr %entry40, align 8
  %prev.i132 = getelementptr inbounds %struct.fcoe_fcf_device, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %prev.i132 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %entry40, ptr %prev.i132, align 4
  %func43 = getelementptr inbounds %struct.fcoe_fcf_device, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 2
  %37 = ptrtoint ptr %func43 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @fip_timeout_deleted_fcf, ptr %func43, align 8
  %timer = getelementptr inbounds %struct.fcoe_fcf_device, ptr %call7.i.i, i32 0, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.9, ptr noundef nonnull @fcoe_fcf_device_add.__key.8) #13
  %dev = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %ctlr, i32 0, i32 1
  %dev52 = getelementptr inbounds %struct.fcoe_fcf_device, ptr %call7.i.i, i32 0, i32 1
  %parent = getelementptr inbounds %struct.fcoe_fcf_device, ptr %call7.i.i, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %dev, ptr %parent, align 8
  %bus = getelementptr inbounds %struct.fcoe_fcf_device, ptr %call7.i.i, i32 0, i32 1, i32 5
  %39 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @fcoe_bus_type, ptr %bus, align 8
  %type = getelementptr inbounds %struct.fcoe_fcf_device, ptr %call7.i.i, i32 0, i32 1, i32 4
  %40 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @fcoe_fcf_device_type, ptr %type, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @fcf_num, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !235
  tail call void @llvm.prefetch.p0(ptr nonnull @fcf_num, i32 1, i32 3, i32 1) #13
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @fcf_num, ptr nonnull @fcf_num, i32 1, ptr nonnull elementtype(i32) @fcf_num) #13, !srcloc !236
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %41, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !237
  %sub = add i32 %asmresult.i.i.i.i, -1
  %42 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub, ptr %call7.i.i, align 8
  %state56 = getelementptr inbounds %struct.fcoe_fcf_device, ptr %call7.i.i, i32 0, i32 7
  %43 = ptrtoint ptr %state56 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %state56, align 8
  %fcf_dev_loss_tmo = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %ctlr, i32 0, i32 9
  %44 = ptrtoint ptr %fcf_dev_loss_tmo to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fcf_dev_loss_tmo, align 8
  %dev_loss_tmo = getelementptr inbounds %struct.fcoe_fcf_device, ptr %call7.i.i, i32 0, i32 5
  %46 = ptrtoint ptr %dev_loss_tmo to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %dev_loss_tmo, align 8
  %call59 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev52, ptr noundef nonnull @.str.10, i32 noundef %sub) #13
  %fabric_name = getelementptr inbounds %struct.fcoe_fcf_device, ptr %new_fcf, i32 0, i32 8
  %47 = ptrtoint ptr %fabric_name to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %fabric_name, align 8
  %fabric_name60 = getelementptr inbounds %struct.fcoe_fcf_device, ptr %call7.i.i, i32 0, i32 8
  %49 = ptrtoint ptr %fabric_name60 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %fabric_name60, align 8
  %switch_name = getelementptr inbounds %struct.fcoe_fcf_device, ptr %new_fcf, i32 0, i32 9
  %50 = ptrtoint ptr %switch_name to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %switch_name, align 8
  %switch_name61 = getelementptr inbounds %struct.fcoe_fcf_device, ptr %call7.i.i, i32 0, i32 9
  %52 = ptrtoint ptr %switch_name61 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %switch_name61, align 8
  %fc_map = getelementptr inbounds %struct.fcoe_fcf_device, ptr %new_fcf, i32 0, i32 10
  %53 = ptrtoint ptr %fc_map to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fc_map, align 8
  %fc_map62 = getelementptr inbounds %struct.fcoe_fcf_device, ptr %call7.i.i, i32 0, i32 10
  %55 = ptrtoint ptr %fc_map62 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %fc_map62, align 8
  %vfid = getelementptr inbounds %struct.fcoe_fcf_device, ptr %new_fcf, i32 0, i32 11
  %56 = ptrtoint ptr %vfid to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %vfid, align 4
  %vfid63 = getelementptr inbounds %struct.fcoe_fcf_device, ptr %call7.i.i, i32 0, i32 11
  %58 = ptrtoint ptr %vfid63 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %vfid63, align 4
  %mac = getelementptr inbounds %struct.fcoe_fcf_device, ptr %call7.i.i, i32 0, i32 12
  %mac64 = getelementptr inbounds %struct.fcoe_fcf_device, ptr %new_fcf, i32 0, i32 12
  %59 = call ptr @memcpy(ptr %mac, ptr %mac64, i32 6)
  %priority = getelementptr inbounds %struct.fcoe_fcf_device, ptr %new_fcf, i32 0, i32 13
  %60 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %priority, align 4
  %priority66 = getelementptr inbounds %struct.fcoe_fcf_device, ptr %call7.i.i, i32 0, i32 13
  %62 = ptrtoint ptr %priority66 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %priority66, align 4
  %fka_period = getelementptr inbounds %struct.fcoe_fcf_device, ptr %new_fcf, i32 0, i32 14
  %63 = ptrtoint ptr %fka_period to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fka_period, align 8
  %fka_period67 = getelementptr inbounds %struct.fcoe_fcf_device, ptr %call7.i.i, i32 0, i32 14
  %65 = ptrtoint ptr %fka_period67 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %fka_period67, align 8
  %selected = getelementptr inbounds %struct.fcoe_fcf_device, ptr %new_fcf, i32 0, i32 15
  %66 = ptrtoint ptr %selected to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %selected, align 4
  %selected68 = getelementptr inbounds %struct.fcoe_fcf_device, ptr %call7.i.i, i32 0, i32 15
  %68 = ptrtoint ptr %selected68 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %selected68, align 4
  %call70 = tail call i32 @device_register(ptr noundef %dev52) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %out_del

if.end73:                                         ; preds = %do.body
  %69 = ptrtoint ptr %state56 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 2, ptr %state56, align 8
  %peers75 = getelementptr inbounds %struct.fcoe_fcf_device, ptr %call7.i.i, i32 0, i32 2
  %prev.i133 = getelementptr inbounds %struct.fcoe_ctlr_device, ptr %ctlr, i32 0, i32 3, i32 1
  %70 = ptrtoint ptr %prev.i133 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i133, align 4
  %call.i.i134 = tail call zeroext i1 @__list_add_valid(ptr noundef %peers75, ptr noundef %71, ptr noundef %fcfs) #13
  br i1 %call.i.i134, label %if.end.i.i, label %if.end73.cleanup_crit_edge

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  %72 = ptrtoint ptr %prev.i133 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %peers75, ptr %prev.i133, align 4
  %73 = ptrtoint ptr %peers75 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %fcfs, ptr %peers75, align 8
  %prev3.i.i = getelementptr inbounds %struct.fcoe_fcf_device, ptr %call7.i.i, i32 0, i32 2, i32 1
  %74 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev3.i.i, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %peers75, ptr %71, align 4
  br label %cleanup

out_del:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %out_del, %if.end.i.i, %if.end73.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end.i131, %do.end.i, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %fcf.0.le, %if.then.cleanup_crit_edge ], [ %fcf.0.le, %if.end.cleanup_crit_edge ], [ null, %for.end.cleanup_crit_edge ], [ null, %out_del ], [ %fcf.0.le, %do.end.i ], [ %fcf.0.le, %if.end.i131 ], [ %call7.i.i, %if.end73.cleanup_crit_edge ], [ %call7.i.i, %if.end.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fcoe_fcf_device_final_delete(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr i8, ptr %work, i32 -800
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %dev_loss_work = getelementptr i8, ptr %work, i32 44
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %dev_loss_work) #13
  br i1 %call, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %devloss_work_q.i = getelementptr i8, ptr %1, i32 984
  %2 = ptrtoint ptr %devloss_work_q.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devloss_work_q.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr3 = getelementptr i8, ptr %1, i32 -8
  %4 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr3, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %5) #17
  tail call void @dump_stack() #17
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @flush_workqueue(ptr noundef nonnull %3) #13
  br label %if.end

if.end:                                           ; preds = %if.end.i, %do.end.i, %entry.if.end_crit_edge
  %dev = getelementptr i8, ptr %work, i32 -936
  tail call void @device_unregister(ptr noundef %dev) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fip_timeout_deleted_fcf(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr i8, ptr %work, i32 -844
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %lock = getelementptr i8, ptr %1, i32 988
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %state = getelementptr i8, ptr %work, i32 108
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %do.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.end:                                           ; preds = %entry
  %add.ptr3 = getelementptr i8, ptr %1, i32 -8
  %dev = getelementptr i8, ptr %work, i32 -980
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.59, ptr noundef %dev, ptr noundef nonnull @.str.57) #17
  %peers = getelementptr i8, ptr %work, i32 -52
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %peers) #13
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del.exit_crit_edge

do.end.list_del.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr i8, ptr %work, i32 -48
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %peers, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end.list_del.exit_crit_edge
  %10 = ptrtoint ptr %peers to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %peers, align 4
  %prev.i = getelementptr i8, ptr %work, i32 -48
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %state, align 8
  %work_q.i = getelementptr i8, ptr %1, i32 960
  %13 = ptrtoint ptr %work_q.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %work_q.i, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i, !prof !238

do.end.i:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr3, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %16) #17
  tail call void @dump_stack() #17
  br label %out

if.end.i:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  %delete_work = getelementptr i8, ptr %work, i32 -44
  %call.i.i14 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %14, ptr noundef %delete_work) #13
  br label %out

out:                                              ; preds = %if.end.i, %do.end.i, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fcoe_sysfs_setup() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ctlr_num, i32 noundef 4) #13
  store volatile i32 0, ptr @ctlr_num, align 4
  %call.i.i1 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @fcf_num, i32 noundef 4) #13
  store volatile i32 0, ptr @fcf_num, align 4
  %call = tail call i32 @bus_register(ptr noundef nonnull @fcoe_bus_type) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @fcoe_sysfs_teardown() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bus_unregister(ptr noundef nonnull @fcoe_bus_type) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fcoe_bus_match(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %drv) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %cmp = icmp eq ptr %1, @fcoe_bus_type
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctlr_create_store(ptr noundef %bus, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fcoe_ctlr_create_store(ptr noundef %bus, ptr noundef %buf, i32 noundef %count) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_ctlr_create_store(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctlr_destroy_store(ptr noundef %bus, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fcoe_ctlr_destroy_store(ptr noundef %bus, ptr noundef %buf, i32 noundef %count) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcoe_ctlr_destroy_store(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fcoe_ctlr_device_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  tail call void @kfree(ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_ctlr_fip_resp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fip_resp = getelementptr i8, ptr %dev, i32 1391
  %0 = ptrtoint ptr %fip_resp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fip_resp, align 1, !range !239
  %2 = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_ctlr_fip_resp(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ctlr_mutex = getelementptr i8, ptr %dev, i32 1420
  tail call void @mutex_lock_nested(ptr noundef %ctlr_mutex, i32 noundef 0) #13
  %arrayidx = getelementptr i8, ptr %buf, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.cleanup_crit_edge [
    i8 0, label %entry.if.then_crit_edge
    i8 10, label %land.lhs.true
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %arrayidx6 = getelementptr i8, ptr %buf, i32 2
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp8 = icmp eq i8 %4, 0
  br i1 %cmp8, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.78)
  switch i8 %6, label %if.then.cleanup_crit_edge [
    i8 49, label %if.then.cleanup.sink.split_crit_edge
    i8 48, label %if.then20
  ]

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then20:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then20, %if.then.cleanup.sink.split_crit_edge
  %.sink = phi i8 [ 0, %if.then20 ], [ 1, %if.then.cleanup.sink.split_crit_edge ]
  %fip_resp21 = getelementptr i8, ptr %dev, i32 1391
  %8 = ptrtoint ptr %fip_resp21 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink, ptr %fip_resp21, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ %count, %cleanup.sink.split ]
  tail call void @mutex_unlock(ptr noundef %ctlr_mutex) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fcoe_ctlr_device_fcf_dev_loss_tmo(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fcf_dev_loss_tmo = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %fcf_dev_loss_tmo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fcf_dev_loss_tmo, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.16, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_private_fcoe_ctlr_fcf_dev_loss_tmo(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !240
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %fcf_dev_loss_tmo = getelementptr i8, ptr %dev, i32 1080
  %3 = ptrtoint ptr %fcf_dev_loss_tmo to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %fcf_dev_loss_tmo, align 8
  %lock = getelementptr i8, ptr %dev, i32 988
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %fcfs = getelementptr i8, ptr %dev, i32 932
  %4 = ptrtoint ptr %fcfs to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn23 = load ptr, ptr %fcfs, align 4
  %cmp.not24 = icmp eq ptr %.pn23, %fcfs
  br i1 %cmp.not24, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %fcoe_fcf_set_dev_loss_tmo.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn25 = phi ptr [ %.pn, %fcoe_fcf_set_dev_loss_tmo.exit.for.body_crit_edge ], [ %.pn23, %if.end.for.body_crit_edge ]
  %state.i = getelementptr i8, ptr %.pn25, i32 160
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state.i, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %6, label %if.end8.i [
    i32 0, label %for.body.fcoe_fcf_set_dev_loss_tmo.exit_crit_edge
    i32 1, label %for.body.fcoe_fcf_set_dev_loss_tmo.exit_crit_edge26
    i32 3, label %for.body.fcoe_fcf_set_dev_loss_tmo.exit_crit_edge27
  ]

for.body.fcoe_fcf_set_dev_loss_tmo.exit_crit_edge27: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %fcoe_fcf_set_dev_loss_tmo.exit

for.body.fcoe_fcf_set_dev_loss_tmo.exit_crit_edge26: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %fcoe_fcf_set_dev_loss_tmo.exit

for.body.fcoe_fcf_set_dev_loss_tmo.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %fcoe_fcf_set_dev_loss_tmo.exit

if.end8.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %dev_loss_tmo.i = getelementptr i8, ptr %.pn25, i32 152
  %10 = ptrtoint ptr %dev_loss_tmo.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dev_loss_tmo.i, align 8
  br label %fcoe_fcf_set_dev_loss_tmo.exit

fcoe_fcf_set_dev_loss_tmo.exit:                   ; preds = %if.end8.i, %for.body.fcoe_fcf_set_dev_loss_tmo.exit_crit_edge, %for.body.fcoe_fcf_set_dev_loss_tmo.exit_crit_edge26, %for.body.fcoe_fcf_set_dev_loss_tmo.exit_crit_edge27
  %11 = ptrtoint ptr %.pn25 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn25, align 4
  %cmp.not = icmp eq ptr %.pn, %fcfs
  br i1 %cmp.not, label %fcoe_fcf_set_dev_loss_tmo.exit.for.end_crit_edge, label %fcoe_fcf_set_dev_loss_tmo.exit.for.body_crit_edge

fcoe_fcf_set_dev_loss_tmo.exit.for.body_crit_edge: ; preds = %fcoe_fcf_set_dev_loss_tmo.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

fcoe_fcf_set_dev_loss_tmo.exit.for.end_crit_edge: ; preds = %fcoe_fcf_set_dev_loss_tmo.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %fcoe_fcf_set_dev_loss_tmo.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %for.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_ctlr_r_a_tov(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lp = getelementptr i8, ptr %dev, i32 1128
  %0 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp, align 4
  %r_a_tov = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %r_a_tov to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r_a_tov, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_ctlr_r_a_tov(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %v.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr i8, ptr %dev, i32 1088
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enabled, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %1, label %if.end5 [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %if.then3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3:                                         ; preds = %entry
  %lp = getelementptr i8, ptr %dev, i32 1128
  %3 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i) #13
  %5 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %v.i, align 4, !annotation !240
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %v.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then3.fcoe_ctlr_var_store.exit_crit_edge

if.then3.fcoe_ctlr_var_store.exit_crit_edge:      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %fcoe_ctlr_var_store.exit

if.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  %r_a_tov = getelementptr inbounds %struct.fc_lport, ptr %4, i32 0, i32 23
  %6 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %v.i, align 4
  %8 = ptrtoint ptr %r_a_tov to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %r_a_tov, align 4
  br label %fcoe_ctlr_var_store.exit

fcoe_ctlr_var_store.exit:                         ; preds = %if.end.i, %if.then3.fcoe_ctlr_var_store.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end.i ], [ -22, %if.then3.fcoe_ctlr_var_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #13
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %fcoe_ctlr_var_store.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %fcoe_ctlr_var_store.exit ], [ -524, %if.end5 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_ctlr_e_d_tov(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lp = getelementptr i8, ptr %dev, i32 1128
  %0 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp, align 4
  %e_d_tov = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %e_d_tov to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %e_d_tov, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_ctlr_e_d_tov(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %v.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr i8, ptr %dev, i32 1088
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enabled, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %1, label %if.end5 [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %if.then3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3:                                         ; preds = %entry
  %lp = getelementptr i8, ptr %dev, i32 1128
  %3 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i) #13
  %5 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %v.i, align 4, !annotation !240
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %v.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then3.fcoe_ctlr_var_store.exit_crit_edge

if.then3.fcoe_ctlr_var_store.exit_crit_edge:      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %fcoe_ctlr_var_store.exit

if.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  %e_d_tov = getelementptr inbounds %struct.fc_lport, ptr %4, i32 0, i32 22
  %6 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %v.i, align 4
  %8 = ptrtoint ptr %e_d_tov to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %e_d_tov, align 4
  br label %fcoe_ctlr_var_store.exit

fcoe_ctlr_var_store.exit:                         ; preds = %if.end.i, %if.then3.fcoe_ctlr_var_store.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end.i ], [ -22, %if.then3.fcoe_ctlr_var_store.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #13
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %fcoe_ctlr_var_store.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %fcoe_ctlr_var_store.exit ], [ -524, %if.end5 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_ctlr_enabled_state(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr i8, ptr %dev, i32 1088
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1.i = icmp ugt i32 %1, 1
  br i1 %cmp1.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr [2 x ptr], ptr @ctlr_enabled_state_names, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 50, ptr noundef nonnull @.str.21, ptr noundef nonnull %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_ctlr_enabled(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %1)
  %cmp = icmp eq i8 %1, 49
  %2 = and i8 %1, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %2)
  %switch = icmp eq i8 %2, 48
  br i1 %switch, label %if.end7, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %entry
  %enabled8 = getelementptr i8, ptr %dev, i32 1088
  %3 = ptrtoint ptr %enabled8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %enabled8, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %4, label %if.end7.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb12
    i32 2, label %if.end7.cleanup_crit_edge
  ]

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end7
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog.sink.split_crit_edge

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb12:                                          ; preds = %if.end7
  br i1 %cmp, label %sw.bb12.sw.epilog.sink.split_crit_edge, label %sw.bb12.cleanup_crit_edge

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb12.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb12.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 1, %sw.bb.sw.epilog.sink.split_crit_edge ], [ 0, %sw.bb12.sw.epilog.sink.split_crit_edge ]
  %6 = ptrtoint ptr %enabled8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %enabled8, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end7.sw.epilog_crit_edge
  %f = getelementptr i8, ptr %dev, i32 928
  %7 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f, align 8
  %set_fcoe_ctlr_enabled = getelementptr inbounds %struct.fcoe_sysfs_function_template, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %set_fcoe_ctlr_enabled to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_fcoe_ctlr_enabled, align 4
  %call = tail call i32 %10(ptr noundef %add.ptr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool18.not = icmp eq i32 %call, 0
  %count.call = select i1 %tobool18.not, i32 %count, i32 %call
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb12.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %sw.bb.cleanup_crit_edge ], [ %count, %sw.bb12.cleanup_crit_edge ], [ -524, %if.end7.cleanup_crit_edge ], [ %count.call, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_ctlr_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr i8, ptr %dev, i32 1084
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp1.i = icmp ugt i32 %1, 2
  br i1 %cmp1.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr [3 x ptr], ptr @fip_conn_type_names, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.21, ptr noundef nonnull %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_ctlr_mode(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %mode = alloca [21 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %mode) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %count)
  %cmp = icmp ugt i32 %count, 20
  %0 = call ptr @memset(ptr %mode, i32 255, i32 21)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call ptr @strncpy(ptr noundef nonnull %mode, ptr noundef %buf, i32 noundef %count)
  %sub = add nsw i32 %count, -1
  %arrayidx = getelementptr [21 x i8], ptr %mode, i32 0, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %2)
  %cmp1 = icmp eq i8 %2, 10
  %arrayidx6 = getelementptr [21 x i8], ptr %mode, i32 0, i32 %count
  %arrayidx6.sink = select i1 %cmp1, ptr %arrayidx, ptr %arrayidx6
  %3 = ptrtoint ptr %arrayidx6.sink to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx6.sink, align 1
  %enabled = getelementptr i8, ptr %dev, i32 1088
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enabled, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %5, label %do.body101 [
    i32 0, label %do.body
    i32 1, label %sw.bb20
  ]

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libfcoe_debug_logging to i32))
  %7 = load i32, ptr @libfcoe_debug_logging, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end, !prof !241

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 8
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %9) #17
  br label %cleanup

sw.bb20:                                          ; preds = %if.end
  %f = getelementptr i8, ptr %dev, i32 928
  %10 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f, align 8
  %set_fcoe_ctlr_mode = getelementptr inbounds %struct.fcoe_sysfs_function_template, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %set_fcoe_ctlr_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_fcoe_ctlr_mode, align 4
  %tobool21.not = icmp eq ptr %13, null
  br i1 %tobool21.not, label %do.body23, label %if.end45

do.body23:                                        ; preds = %sw.bb20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libfcoe_debug_logging to i32))
  %14 = load i32, ptr @libfcoe_debug_logging, align 4
  %and24 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body23.cleanup_crit_edge, label %do.end36, !prof !241

do.body23.cleanup_crit_edge:                      ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end36:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr, align 8
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %16) #17
  br label %cleanup

if.end45:                                         ; preds = %sw.bb20
  %call.i = call i32 @strcasecmp(ptr noundef nonnull %mode, ptr noundef nonnull @.str.25) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp eq i32 %call.i, 0
  br i1 %cmp1.i, label %if.end45.do.body53_crit_edge, label %for.inc.i

if.end45.do.body53_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body53

for.inc.i:                                        ; preds = %if.end45
  %call.1.i = call i32 @strcasecmp(ptr noundef nonnull %mode, ptr noundef nonnull @.str.26) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp1.1.i = icmp eq i32 %call.1.i, 0
  br i1 %cmp1.1.i, label %for.inc.i.if.end75_crit_edge, label %for.inc.1.i

for.inc.i.if.end75_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75

for.inc.1.i:                                      ; preds = %for.inc.i
  %call.2.i = call i32 @strcasecmp(ptr noundef nonnull %mode, ptr noundef nonnull @.str.27) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp1.2.i = icmp eq i32 %call.2.i, 0
  br i1 %cmp1.2.i, label %for.inc.1.i.if.end75_crit_edge, label %for.inc.1.i.do.body53_crit_edge

for.inc.1.i.do.body53_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body53

for.inc.1.i.if.end75_crit_edge:                   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75

do.body53:                                        ; preds = %for.inc.1.i.do.body53_crit_edge, %if.end45.do.body53_crit_edge
  %mode48142 = getelementptr i8, ptr %dev, i32 1084
  %17 = ptrtoint ptr %mode48142 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %mode48142, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libfcoe_debug_logging to i32))
  %18 = load i32, ptr @libfcoe_debug_logging, align 4
  %and54 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %do.body53.cleanup_crit_edge, label %do.end66, !prof !241

do.body53.cleanup_crit_edge:                      ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end66:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr, align 8
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %20, ptr noundef %buf) #17
  br label %cleanup

if.end75:                                         ; preds = %for.inc.1.i.if.end75_crit_edge, %for.inc.i.if.end75_crit_edge
  %retval.0.i = phi i32 [ 1, %for.inc.i.if.end75_crit_edge ], [ 2, %for.inc.1.i.if.end75_crit_edge ]
  %mode48 = getelementptr i8, ptr %dev, i32 1084
  %21 = ptrtoint ptr %mode48 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %retval.0.i, ptr %mode48, align 4
  %22 = ptrtoint ptr %set_fcoe_ctlr_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_fcoe_ctlr_mode, align 4
  call void %23(ptr noundef %add.ptr) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libfcoe_debug_logging to i32))
  %24 = load i32, ptr @libfcoe_debug_logging, align 4
  %and79 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end75.cleanup_crit_edge, label %do.end91, !prof !241

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end91:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr, align 8
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %26, ptr noundef %buf) #17
  br label %cleanup

do.body101:                                       ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @libfcoe_debug_logging to i32))
  %27 = load i32, ptr @libfcoe_debug_logging, align 4
  %and102 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %do.body101.cleanup_crit_edge, label %do.end114, !prof !241

do.body101.cleanup_crit_edge:                     ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end114:                                        ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr, align 8
  %call117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %29) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end114, %do.body101.cleanup_crit_edge, %do.end91, %if.end75.cleanup_crit_edge, %do.end66, %do.body53.cleanup_crit_edge, %do.end36, %do.body23.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -16, %do.end ], [ -16, %do.body.cleanup_crit_edge ], [ -524, %do.end36 ], [ -524, %do.body23.cleanup_crit_edge ], [ -22, %do.end66 ], [ -22, %do.body53.cleanup_crit_edge ], [ %count, %do.end91 ], [ %count, %if.end75.cleanup_crit_edge ], [ -524, %do.end114 ], [ -524, %do.body101.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %mode) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #10

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fcoe_ctlr_device_link_fail(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f = getelementptr i8, ptr %dev, i32 928
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  tail call void %3(ptr noundef %add.ptr) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %lesb = getelementptr i8, ptr %dev, i32 1092
  %4 = ptrtoint ptr %lesb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lesb, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.45, i32 noundef %5)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fcoe_ctlr_device_vlink_fail(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f = getelementptr i8, ptr %dev, i32 928
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f, align 8
  %get_fcoe_ctlr_vlink_fail = getelementptr inbounds %struct.fcoe_sysfs_function_template, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %get_fcoe_ctlr_vlink_fail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_fcoe_ctlr_vlink_fail, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  tail call void %3(ptr noundef %add.ptr) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %lesb_vlink_fail = getelementptr i8, ptr %dev, i32 1096
  %4 = ptrtoint ptr %lesb_vlink_fail to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lesb_vlink_fail, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.45, i32 noundef %5)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fcoe_ctlr_device_miss_fka(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f = getelementptr i8, ptr %dev, i32 928
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f, align 8
  %get_fcoe_ctlr_miss_fka = getelementptr inbounds %struct.fcoe_sysfs_function_template, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %get_fcoe_ctlr_miss_fka to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_fcoe_ctlr_miss_fka, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  tail call void %3(ptr noundef %add.ptr) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %lesb_miss_fka = getelementptr i8, ptr %dev, i32 1100
  %4 = ptrtoint ptr %lesb_miss_fka to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lesb_miss_fka, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.45, i32 noundef %5)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fcoe_ctlr_device_symb_err(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f = getelementptr i8, ptr %dev, i32 928
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f, align 8
  %get_fcoe_ctlr_symb_err = getelementptr inbounds %struct.fcoe_sysfs_function_template, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %get_fcoe_ctlr_symb_err to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_fcoe_ctlr_symb_err, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  tail call void %3(ptr noundef %add.ptr) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %lesb_symb_err = getelementptr i8, ptr %dev, i32 1104
  %4 = ptrtoint ptr %lesb_symb_err to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lesb_symb_err, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.45, i32 noundef %5)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fcoe_ctlr_device_err_block(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f = getelementptr i8, ptr %dev, i32 928
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f, align 8
  %get_fcoe_ctlr_err_block = getelementptr inbounds %struct.fcoe_sysfs_function_template, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %get_fcoe_ctlr_err_block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_fcoe_ctlr_err_block, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  tail call void %3(ptr noundef %add.ptr) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %lesb_err_block = getelementptr i8, ptr %dev, i32 1108
  %4 = ptrtoint ptr %lesb_err_block to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lesb_err_block, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.45, i32 noundef %5)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fcoe_ctlr_device_fcs_error(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f = getelementptr i8, ptr %dev, i32 928
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f, align 8
  %get_fcoe_ctlr_fcs_error = getelementptr inbounds %struct.fcoe_sysfs_function_template, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %get_fcoe_ctlr_fcs_error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_fcoe_ctlr_fcs_error, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  tail call void %3(ptr noundef %add.ptr) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %lesb_fcs_error = getelementptr i8, ptr %dev, i32 1112
  %4 = ptrtoint ptr %lesb_fcs_error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lesb_fcs_error, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.45, i32 noundef %5)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fcoe_fcf_device_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  tail call void @kfree(ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fcoe_fcf_device_fabric_name(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fabric_name = getelementptr i8, ptr %dev, i32 1096
  %0 = ptrtoint ptr %fabric_name to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %fabric_name, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.63, i64 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fcoe_fcf_device_switch_name(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %switch_name = getelementptr i8, ptr %dev, i32 1104
  %0 = ptrtoint ptr %switch_name to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %switch_name, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.63, i64 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fcoe_fcf_device_dev_loss_tmo(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_loss_tmo = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %dev_loss_tmo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_loss_tmo, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.16, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_fcoe_fcf_dev_loss_tmo(ptr nocapture noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !240
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr i8, ptr %dev, i32 1088
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state.i, align 8
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %2, label %4 [
    i32 0, label %if.end.cleanup_crit_edge
    i32 1, label %if.end.cleanup_crit_edge13
    i32 3, label %if.end.cleanup_crit_edge14
  ]

if.end.cleanup_crit_edge14:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.cleanup_crit_edge13:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

4:                                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %dev_loss_tmo.i = getelementptr i8, ptr %dev, i32 1080
  %7 = ptrtoint ptr %dev_loss_tmo.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dev_loss_tmo.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %4, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge13, %if.end.cleanup_crit_edge14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count, %4 ], [ -16, %if.end.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge13 ], [ -16, %if.end.cleanup_crit_edge14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fcoe_fcf_device_fc_map(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fc_map = getelementptr i8, ptr %dev, i32 1112
  %0 = ptrtoint ptr %fc_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fc_map, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.67, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fcoe_fcf_device_vfid(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vfid = getelementptr i8, ptr %dev, i32 1116
  %0 = ptrtoint ptr %vfid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vfid, align 4
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.45, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fcoe_fcf_device_mac(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mac = getelementptr i8, ptr %dev, i32 1118
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.70, ptr noundef %mac)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fcoe_fcf_device_priority(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priority = getelementptr i8, ptr %dev, i32 1124
  %0 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %priority, align 4
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.45, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fcoe_fcf_device_fka_period(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fka_period = getelementptr i8, ptr %dev, i32 1128
  %0 = ptrtoint ptr %fka_period to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fka_period, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.45, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fcf_state(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr i8, ptr %dev, i32 1088
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp1.i = icmp ugt i32 %1, 2
  br i1 %cmp1.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr [3 x ptr], ptr @fcf_state_names, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 50, ptr noundef nonnull @.str.21, ptr noundef nonnull %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fcoe_fcf_device_selected(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %f = getelementptr i8, ptr %1, i32 928
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f, align 8
  %get_fcoe_fcf_selected = getelementptr inbounds %struct.fcoe_sysfs_function_template, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %get_fcoe_fcf_selected to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_fcoe_fcf_selected, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  tail call void %5(ptr noundef %add.ptr) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %selected = getelementptr i8, ptr %dev, i32 1132
  %6 = ptrtoint ptr %selected to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %selected, align 4
  %conv = zext i8 %7 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.45, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fcoe_fcf_device_vlan_id(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %f = getelementptr i8, ptr %1, i32 928
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f, align 8
  %get_fcoe_fcf_vlan_id = getelementptr inbounds %struct.fcoe_sysfs_function_template, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %get_fcoe_fcf_vlan_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_fcoe_fcf_vlan_id, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  tail call void %5(ptr noundef %add.ptr) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vlan_id = getelementptr i8, ptr %dev, i32 1134
  %6 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vlan_id, align 2
  %conv = zext i16 %7 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 20, ptr noundef nonnull @.str.45, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !28, !29, !30, !32, !34, !36, !38, !39, !41, !43, !45, !47, !48, !50, !52, !53, !55, !56, !58, !60, !62, !64, !66, !68, !69, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !87, !89, !91, !93, !94, !96, !98, !100, !102, !104, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !128, !130, !132, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !172, !173, !174, !176, !178, !180, !182, !184, !186, !187, !188, !190, !191, !193, !194, !196, !197, !198, !200, !201, !203, !204, !205, !207, !208, !210, !211, !213, !214, !216, !218, !220, !222, !223, !225}
!llvm.module.flags = !{!226, !227, !228, !229, !230, !231, !232, !233}
!llvm.ident = !{!234}

!0 = !{ptr @__param_fcf_dev_loss_tmo, !1, !"__param_fcf_dev_loss_tmo", i1 false, i1 false}
!1 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_fcf_dev_loss_tmotype375, !1, !"__UNIQUE_ID_fcf_dev_loss_tmotype375", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_fcf_dev_loss_tmo376, !4, !"__UNIQUE_ID_fcf_dev_loss_tmo376", i1 false, i1 false}
!4 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 35, i32 1}
!5 = !{ptr @fcoe_ctlr_device_add.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 809, i32 2}
!7 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 817, i32 4}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 818, i32 17}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 825, i32 4}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 831, i32 27}
!16 = !{ptr @__ksymtab_fcoe_ctlr_device_add, !17, !"__ksymtab_fcoe_ctlr_device_add", i1 false, i1 false}
!17 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 849, i32 1}
!18 = !{ptr @__ksymtab_fcoe_ctlr_device_delete, !19, !"__ksymtab_fcoe_ctlr_device_delete", i1 false, i1 false}
!19 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 893, i32 1}
!20 = !{ptr @__ksymtab_fcoe_fcf_device_delete, !21, !"__ksymtab_fcoe_fcf_device_delete", i1 false, i1 false}
!21 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 983, i32 1}
!22 = !{ptr @fcoe_fcf_device_add.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 1016, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @fcoe_fcf_device_add.__key.6, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 1017, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @fcoe_fcf_device_add.__key.8, !26, !"__key", i1 false, i1 false}
!29 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 1027, i32 26}
!32 = !{ptr @__ksymtab_fcoe_fcf_device_add, !33, !"__ksymtab_fcoe_fcf_device_add", i1 false, i1 false}
!33 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 1052, i32 1}
!34 = !{ptr @ctlr_num, !35, !"ctlr_num", i1 false, i1 false}
!35 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 24, i32 17}
!36 = !{ptr @fcf_num, !37, !"fcf_num", i1 false, i1 false}
!37 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 25, i32 17}
!38 = !{ptr @__param_str_fcf_dev_loss_tmo, !1, !"__param_str_fcf_dev_loss_tmo", i1 false, i1 false}
!39 = !{ptr @fcoe_fcf_dev_loss_tmo, !40, !"fcoe_fcf_dev_loss_tmo", i1 false, i1 false}
!40 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 31, i32 21}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 684, i32 10}
!43 = !{ptr @fcoe_bus_type, !44, !"fcoe_bus_type", i1 false, i1 false}
!44 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 683, i32 24}
!45 = !{ptr @fcoe_bus_groups, !46, !"fcoe_bus_groups", i1 false, i1 false}
!46 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 681, i32 1}
!47 = !{ptr @fcoe_bus_group, !46, !"fcoe_bus_group", i1 false, i1 false}
!48 = !{ptr @fcoe_bus_attrs, !49, !"fcoe_bus_attrs", i1 false, i1 false}
!49 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 676, i32 26}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 667, i32 8}
!52 = !{ptr @bus_attr_ctlr_create, !51, !"bus_attr_ctlr_create", i1 false, i1 false}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 674, i32 8}
!55 = !{ptr @bus_attr_ctlr_destroy, !54, !"bus_attr_ctlr_destroy", i1 false, i1 false}
!56 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 651, i32 10}
!58 = !{ptr @fcoe_ctlr_device_type, !59, !"fcoe_ctlr_device_type", i1 false, i1 false}
!59 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 650, i32 33}
!60 = !{ptr @fcoe_ctlr_attr_groups, !61, !"fcoe_ctlr_attr_groups", i1 false, i1 false}
!61 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 586, i32 38}
!62 = !{ptr @fcoe_ctlr_attr_group, !63, !"fcoe_ctlr_attr_group", i1 false, i1 false}
!63 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 582, i32 31}
!64 = !{ptr @fcoe_ctlr_attrs, !65, !"fcoe_ctlr_attrs", i1 false, i1 false}
!65 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 572, i32 26}
!66 = !{ptr @.str.15, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 418, i32 8}
!68 = !{ptr @device_attr_fcoe_ctlr_fip_vlan_responder, !67, !"device_attr_fcoe_ctlr_fip_vlan_responder", i1 false, i1 false}
!69 = !{ptr @.str.16, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 415, i32 22}
!71 = !{ptr @.str.17, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 513, i32 8}
!73 = !{ptr @device_attr_fcoe_ctlr_fcf_dev_loss_tmo, !72, !"device_attr_fcoe_ctlr_fcf_dev_loss_tmo", i1 false, i1 false}
!74 = !{ptr @.str.18, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 461, i32 8}
!76 = !{ptr @device_attr_fcoe_ctlr_r_a_tov, !75, !"device_attr_fcoe_ctlr_r_a_tov", i1 false, i1 false}
!77 = !{ptr @.str.19, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 488, i32 8}
!79 = !{ptr @device_attr_fcoe_ctlr_e_d_tov, !78, !"device_attr_fcoe_ctlr_e_d_tov", i1 false, i1 false}
!80 = !{ptr @.str.20, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 380, i32 8}
!82 = !{ptr @device_attr_fcoe_ctlr_enabled, !81, !"device_attr_fcoe_ctlr_enabled", i1 false, i1 false}
!83 = !{ptr @.str.21, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 377, i32 4}
!85 = !{ptr @.str.22, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 359, i32 27}
!87 = !{ptr @.str.23, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 360, i32 27}
!89 = !{ptr @ctlr_enabled_state_names, !90, !"ctlr_enabled_state_names", i1 false, i1 false}
!90 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 358, i32 14}
!91 = !{ptr @.str.24, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 318, i32 8}
!93 = !{ptr @device_attr_fcoe_ctlr_mode, !92, !"device_attr_fcoe_ctlr_mode", i1 false, i1 false}
!94 = !{ptr @.str.25, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 218, i32 30}
!96 = !{ptr @.str.26, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 219, i32 30}
!98 = !{ptr @.str.27, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 220, i32 30}
!100 = !{ptr @fip_conn_type_names, !101, !"fip_conn_type_names", i1 false, i1 false}
!101 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 217, i32 14}
!102 = !{ptr @.str.28, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 291, i32 3}
!104 = !{ptr @.str.29, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.30, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @store_ctlr_mode._entry, !103, !"_entry", i1 false, i1 false}
!107 = !{ptr @store_ctlr_mode._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.32, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 295, i32 4}
!110 = !{ptr @store_ctlr_mode._entry.31, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @store_ctlr_mode._entry_ptr.33, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.35, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 302, i32 4}
!114 = !{ptr @store_ctlr_mode._entry.34, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @store_ctlr_mode._entry_ptr.36, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.38, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 308, i32 3}
!118 = !{ptr @store_ctlr_mode._entry.37, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @store_ctlr_mode._entry_ptr.39, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.41, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 313, i32 3}
!122 = !{ptr @store_ctlr_mode._entry.40, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @store_ctlr_mode._entry_ptr.42, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.43, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 568, i32 10}
!126 = !{ptr @fcoe_ctlr_lesb_attr_group, !127, !"fcoe_ctlr_lesb_attr_group", i1 false, i1 false}
!127 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 567, i32 31}
!128 = !{ptr @fcoe_ctlr_lesb_attrs, !129, !"fcoe_ctlr_lesb_attrs", i1 false, i1 false}
!129 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 557, i32 26}
!130 = !{ptr @.str.44, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 518, i32 1}
!132 = !{ptr @device_attr_fcoe_ctlr_link_fail, !131, !"device_attr_fcoe_ctlr_link_fail", i1 false, i1 false}
!133 = !{ptr @.str.45, !131, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.46, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 519, i32 1}
!136 = !{ptr @device_attr_fcoe_ctlr_vlink_fail, !135, !"device_attr_fcoe_ctlr_vlink_fail", i1 false, i1 false}
!137 = !{ptr @.str.47, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 520, i32 1}
!139 = !{ptr @device_attr_fcoe_ctlr_miss_fka, !138, !"device_attr_fcoe_ctlr_miss_fka", i1 false, i1 false}
!140 = !{ptr @.str.48, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 521, i32 1}
!142 = !{ptr @device_attr_fcoe_ctlr_symb_err, !141, !"device_attr_fcoe_ctlr_symb_err", i1 false, i1 false}
!143 = !{ptr @.str.49, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 522, i32 1}
!145 = !{ptr @device_attr_fcoe_ctlr_err_block, !144, !"device_attr_fcoe_ctlr_err_block", i1 false, i1 false}
!146 = !{ptr @.str.50, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 523, i32 1}
!148 = !{ptr @device_attr_fcoe_ctlr_fcs_error, !147, !"device_attr_fcoe_ctlr_fcs_error", i1 false, i1 false}
!149 = !{ptr @.str.51, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 718, i32 3}
!151 = !{ptr @.str.52, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @fcoe_ctlr_device_queue_work._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @fcoe_ctlr_device_queue_work._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.53, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 696, i32 3}
!156 = !{ptr @.str.54, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @fcoe_ctlr_device_flush_work._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @fcoe_ctlr_device_flush_work._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.55, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 760, i32 3}
!161 = !{ptr @fcoe_ctlr_device_queue_devloss_work._entry, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @fcoe_ctlr_device_queue_devloss_work._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.56, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 736, i32 3}
!165 = !{ptr @fcoe_ctlr_device_flush_devloss._entry, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @fcoe_ctlr_device_flush_devloss._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.57, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 943, i32 2}
!169 = !{ptr @.str.58, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.59, !168, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.60, !168, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @fip_timeout_deleted_fcf._entry, !168, !"_entry", i1 false, i1 false}
!173 = !{ptr @fip_timeout_deleted_fcf._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.61, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 657, i32 10}
!176 = !{ptr @fcoe_fcf_device_type, !177, !"fcoe_fcf_device_type", i1 false, i1 false}
!177 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 656, i32 33}
!178 = !{ptr @fcoe_fcf_attr_groups, !179, !"fcoe_fcf_attr_groups", i1 false, i1 false}
!179 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 611, i32 38}
!180 = !{ptr @fcoe_fcf_attr_group, !181, !"fcoe_fcf_attr_group", i1 false, i1 false}
!181 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 607, i32 31}
!182 = !{ptr @fcoe_fcf_attrs, !183, !"fcoe_fcf_attrs", i1 false, i1 false}
!183 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 592, i32 26}
!184 = !{ptr @.str.62, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 525, i32 1}
!186 = !{ptr @device_attr_fcoe_fcf_fabric_name, !185, !"device_attr_fcoe_fcf_fabric_name", i1 false, i1 false}
!187 = !{ptr @.str.63, !185, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.64, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 526, i32 1}
!190 = !{ptr @device_attr_fcoe_fcf_switch_name, !189, !"device_attr_fcoe_fcf_switch_name", i1 false, i1 false}
!191 = !{ptr @.str.65, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 553, i32 8}
!193 = !{ptr @device_attr_fcoe_fcf_dev_loss_tmo, !192, !"device_attr_fcoe_fcf_dev_loss_tmo", i1 false, i1 false}
!194 = !{ptr @.str.66, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 528, i32 1}
!196 = !{ptr @device_attr_fcoe_fcf_fc_map, !195, !"device_attr_fcoe_fcf_fc_map", i1 false, i1 false}
!197 = !{ptr @.str.67, !195, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.68, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 529, i32 1}
!200 = !{ptr @device_attr_fcoe_fcf_vfid, !199, !"device_attr_fcoe_fcf_vfid", i1 false, i1 false}
!201 = !{ptr @.str.69, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 530, i32 1}
!203 = !{ptr @device_attr_fcoe_fcf_mac, !202, !"device_attr_fcoe_fcf_mac", i1 false, i1 false}
!204 = !{ptr @.str.70, !202, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.71, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 527, i32 1}
!207 = !{ptr @device_attr_fcoe_fcf_priority, !206, !"device_attr_fcoe_fcf_priority", i1 false, i1 false}
!208 = !{ptr @.str.72, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 531, i32 1}
!210 = !{ptr @device_attr_fcoe_fcf_fka_period, !209, !"device_attr_fcoe_fcf_fka_period", i1 false, i1 false}
!211 = !{ptr @.str.73, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 255, i32 8}
!213 = !{ptr @device_attr_fcoe_fcf_state, !212, !"device_attr_fcoe_fcf_state", i1 false, i1 false}
!214 = !{ptr @.str.74, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 238, i32 36}
!216 = !{ptr @.str.75, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 239, i32 36}
!218 = !{ptr @fcf_state_names, !219, !"fcf_state_names", i1 false, i1 false}
!219 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 236, i32 14}
!220 = !{ptr @.str.76, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 532, i32 1}
!222 = !{ptr @device_attr_fcoe_fcf_selected, !221, !"device_attr_fcoe_fcf_selected", i1 false, i1 false}
!223 = !{ptr @.str.77, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/scsi/fcoe/fcoe_sysfs.c", i32 533, i32 1}
!225 = !{ptr @device_attr_fcoe_fcf_vlan_id, !224, !"device_attr_fcoe_fcf_vlan_id", i1 false, i1 false}
!226 = !{i32 1, !"wchar_size", i32 2}
!227 = !{i32 1, !"min_enum_size", i32 4}
!228 = !{i32 8, !"branch-target-enforcement", i32 0}
!229 = !{i32 8, !"sign-return-address", i32 0}
!230 = !{i32 8, !"sign-return-address-all", i32 0}
!231 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!232 = !{i32 7, !"uwtable", i32 1}
!233 = !{i32 7, !"frame-pointer", i32 2}
!234 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!235 = !{i64 2148452702}
!236 = !{i64 2148367987, i64 2148368019, i64 2148368048, i64 2148368082, i64 2148368113, i64 2148368136}
!237 = !{i64 2148452931}
!238 = !{!"branch_weights", i32 1, i32 2000}
!239 = !{i8 0, i8 2}
!240 = !{!"auto-init"}
!241 = !{!"branch_weights", i32 2000, i32 1}
