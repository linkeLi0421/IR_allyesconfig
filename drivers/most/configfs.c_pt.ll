; ModuleID = '/llk/IR_all_yes/drivers/most/configfs.c_pt.bc'
source_filename = "../drivers/most/configfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+most_register_configfs_subsys\22, \22a\22\09"
module asm "\09.weak\09__crc_most_register_configfs_subsys\09\09\09\09"
module asm "\09.long\09__crc_most_register_configfs_subsys\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_most_register_configfs_subsys:\09\09\09\09\09"
module asm "\09.asciz \09\22most_register_configfs_subsys\22\09\09\09\09\09"
module asm "__kstrtabns_most_register_configfs_subsys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+most_deregister_configfs_subsys\22, \22a\22\09"
module asm "\09.weak\09__crc_most_deregister_configfs_subsys\09\09\09\09"
module asm "\09.long\09__crc_most_deregister_configfs_subsys\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_most_deregister_configfs_subsys:\09\09\09\09\09"
module asm "\09.asciz \09\22most_deregister_configfs_subsys\22\09\09\09\09\09"
module asm "__kstrtabns_most_deregister_configfs_subsys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.most_common = type { %struct.config_group, ptr, %struct.configfs_subsystem }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.configfs_subsystem = type { %struct.config_group, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.most_sound = type { %struct.configfs_subsystem, %struct.list_head, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.configfs_group_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.most_component = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdev_link = type { %struct.config_item, %struct.list_head, i8, i8, i16, i16, i16, i16, i16, [80 x i8], [80 x i8], [80 x i8], [80 x i8], [80 x i8], [80 x i8], [80 x i8] }
%struct.most_snd_grp = type { %struct.config_group, i8, %struct.list_head }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cdev\00", [27 x i8] zeroinitializer }, align 32
@most_cdev = internal global { %struct.most_common, [64 x i8] } { %struct.most_common { %struct.config_group zeroinitializer, ptr null, %struct.configfs_subsystem { %struct.config_group { %struct.config_item { ptr null, [20 x i8] c"most_cdev\00\00\00\00\00\00\00\00\00\00\00", %struct.kref zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @most_common_type, ptr null }, %struct.list_head zeroinitializer, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, %struct.mutex zeroinitializer } }, [64 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"net\00", [28 x i8] zeroinitializer }, align 32
@most_net = internal global { %struct.most_common, [64 x i8] } { %struct.most_common { %struct.config_group zeroinitializer, ptr null, %struct.configfs_subsystem { %struct.config_group { %struct.config_item { ptr null, [20 x i8] c"most_net\00\00\00\00\00\00\00\00\00\00\00\00", %struct.kref zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @most_common_type, ptr null }, %struct.list_head zeroinitializer, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, %struct.mutex zeroinitializer } }, [64 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"video\00", [26 x i8] zeroinitializer }, align 32
@most_video = internal global { %struct.most_common, [64 x i8] } { %struct.most_common { %struct.config_group zeroinitializer, ptr null, %struct.configfs_subsystem { %struct.config_group { %struct.config_item { ptr null, [20 x i8] c"most_video\00\00\00\00\00\00\00\00\00\00", %struct.kref zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @most_common_type, ptr null }, %struct.list_head zeroinitializer, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, %struct.mutex zeroinitializer } }, [64 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sound\00", [26 x i8] zeroinitializer }, align 32
@most_sound_subsys = internal global { %struct.most_sound, [40 x i8] } { %struct.most_sound { %struct.configfs_subsystem { %struct.config_group { %struct.config_item { ptr null, [20 x i8] c"most_sound\00\00\00\00\00\00\00\00\00\00", %struct.kref zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @most_sound_type, ptr null }, %struct.list_head zeroinitializer, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, %struct.mutex zeroinitializer }, %struct.list_head zeroinitializer, ptr null }, [40 x i8] zeroinitializer }, align 32
@most_register_configfs_subsys._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013most_core: Error %d while registering subsystem %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"most_register_configfs_subsys\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/most/configfs.c\00", [40 x i8] zeroinitializer }, align 32
@most_register_configfs_subsys._entry_ptr = internal global ptr @most_register_configfs_subsys._entry, section ".printk_index", align 4
@__kstrtab_most_register_configfs_subsys = external dso_local constant [0 x i8], align 1
@__kstrtabns_most_register_configfs_subsys = external dso_local constant [0 x i8], align 1
@__ksymtab_most_register_configfs_subsys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @most_register_configfs_subsys to i32), ptr @__kstrtab_most_register_configfs_subsys, ptr @__kstrtabns_most_register_configfs_subsys }, section "___ksymtab_gpl+most_register_configfs_subsys", align 4
@mdev_link_list = internal global { %struct.list_head, [24 x i8] } zeroinitializer, align 32
@__kstrtab_most_deregister_configfs_subsys = external dso_local constant [0 x i8], align 1
@__kstrtabns_most_deregister_configfs_subsys = external dso_local constant [0 x i8], align 1
@__ksymtab_most_deregister_configfs_subsys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @most_deregister_configfs_subsys to i32), ptr @__kstrtab_most_deregister_configfs_subsys, ptr @__kstrtabns_most_deregister_configfs_subsys }, section "___ksymtab_gpl+most_deregister_configfs_subsys", align 4
@configfs_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&most_cdev.subsys.su_mutex\00", [37 x i8] zeroinitializer }, align 32
@configfs_init.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&most_net.subsys.su_mutex\00", [38 x i8] zeroinitializer }, align 32
@configfs_init.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&most_video.subsys.su_mutex\00", [36 x i8] zeroinitializer }, align 32
@configfs_init.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"&most_sound_subsys.subsys.su_mutex\00", [61 x i8] zeroinitializer }, align 32
@most_common_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @most_common_item_ops, ptr @most_common_group_ops, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@most_common_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @most_common_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@most_common_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr @most_common_make_item, ptr null, ptr null, ptr @most_common_disconnect, ptr null }, [44 x i8] zeroinitializer }, align 32
@mdev_link_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @mdev_link_item_ops, ptr null, ptr @mdev_link_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"most_cdev\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"most_net\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"most_video\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mdev_link_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @mdev_link_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@mdev_link_attrs = internal global { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @mdev_link_attr_create_link, ptr @mdev_link_attr_destroy_link, ptr @mdev_link_attr_device, ptr @mdev_link_attr_channel, ptr @mdev_link_attr_comp, ptr @mdev_link_attr_comp_params, ptr @mdev_link_attr_num_buffers, ptr @mdev_link_attr_buffer_size, ptr @mdev_link_attr_subbuffer_size, ptr @mdev_link_attr_packets_per_xact, ptr @mdev_link_attr_datatype, ptr @mdev_link_attr_direction, ptr @mdev_link_attr_dbr_size, ptr null], [40 x i8] zeroinitializer }, align 32
@mdev_link_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.6, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013most_core: Removing link failed.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mdev_link_release\00", [46 x i8] zeroinitializer }, align 32
@mdev_link_release._entry_ptr = internal global ptr @mdev_link_release._entry, section ".printk_index", align 4
@mdev_link_attr_create_link = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.19, ptr null, i16 128, ptr null, ptr @mdev_link_create_link_store }, [44 x i8] zeroinitializer }, align 32
@mdev_link_attr_destroy_link = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.20, ptr null, i16 128, ptr null, ptr @mdev_link_destroy_link_store }, [44 x i8] zeroinitializer }, align 32
@mdev_link_attr_device = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.21, ptr null, i16 420, ptr @mdev_link_device_show, ptr @mdev_link_device_store }, [44 x i8] zeroinitializer }, align 32
@mdev_link_attr_channel = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.23, ptr null, i16 420, ptr @mdev_link_channel_show, ptr @mdev_link_channel_store }, [44 x i8] zeroinitializer }, align 32
@mdev_link_attr_comp = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.24, ptr null, i16 420, ptr @mdev_link_comp_show, ptr @mdev_link_comp_store }, [44 x i8] zeroinitializer }, align 32
@mdev_link_attr_comp_params = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.25, ptr null, i16 420, ptr @mdev_link_comp_params_show, ptr @mdev_link_comp_params_store }, [44 x i8] zeroinitializer }, align 32
@mdev_link_attr_num_buffers = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.26, ptr null, i16 420, ptr @mdev_link_num_buffers_show, ptr @mdev_link_num_buffers_store }, [44 x i8] zeroinitializer }, align 32
@mdev_link_attr_buffer_size = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.28, ptr null, i16 420, ptr @mdev_link_buffer_size_show, ptr @mdev_link_buffer_size_store }, [44 x i8] zeroinitializer }, align 32
@mdev_link_attr_subbuffer_size = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.29, ptr null, i16 420, ptr @mdev_link_subbuffer_size_show, ptr @mdev_link_subbuffer_size_store }, [44 x i8] zeroinitializer }, align 32
@mdev_link_attr_packets_per_xact = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.30, ptr null, i16 420, ptr @mdev_link_packets_per_xact_show, ptr @mdev_link_packets_per_xact_store }, [44 x i8] zeroinitializer }, align 32
@mdev_link_attr_datatype = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.31, ptr null, i16 420, ptr @mdev_link_datatype_show, ptr @mdev_link_datatype_store }, [44 x i8] zeroinitializer }, align 32
@mdev_link_attr_direction = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.37, ptr null, i16 420, ptr @mdev_link_direction_show, ptr @mdev_link_direction_store }, [44 x i8] zeroinitializer }, align 32
@mdev_link_attr_dbr_size = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.42, ptr null, i16 420, ptr @mdev_link_dbr_size_show, ptr @mdev_link_dbr_size_store }, [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"create_link\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"destroy_link\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"channel\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"comp\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"comp_params\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"num_buffers\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"buffer_size\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"subbuffer_size\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"packets_per_xact\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"datatype\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"async\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sync\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"isoc\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"isoc_avp\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"direction\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dir_rx\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dir_tx\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dbr_size\00", [23 x i8] zeroinitializer }, align 32
@most_sound_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr @most_sound_group_ops, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@most_sound_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @most_sound_make_group, ptr null, ptr @most_sound_disconnect, ptr null }, [44 x i8] zeroinitializer }, align 32
@most_sound_make_group._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.6, i32 604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016most_core: adapter configuration still in progress.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"most_sound_make_group\00", [42 x i8] zeroinitializer }, align 32
@most_sound_make_group._entry_ptr = internal global ptr @most_sound_make_group._entry, section ".printk_index", align 4
@most_snd_grp_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @most_snd_grp_item_ops, ptr @most_snd_grp_group_ops, ptr @most_snd_grp_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@most_snd_grp_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @most_snd_grp_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@most_snd_grp_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr @most_snd_grp_make_item, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@most_snd_grp_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @most_snd_grp_attr_create_card, ptr null], [24 x i8] zeroinitializer }, align 32
@most_snd_grp_attr_create_card = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.45, ptr null, i16 128, ptr null, ptr @most_snd_grp_create_card_store }, [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"create_card\00", [20 x i8] zeroinitializer }, align 32
@set_config_and_add_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.6, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013most_core: Config failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"set_config_and_add_link\00", [40 x i8] zeroinitializer }, align 32
@set_config_and_add_link._entry_ptr = internal global ptr @set_config_and_add_link._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 653, i32 23 }
@___asan_gen_.51 = private unnamed_addr constant [10 x i8] c"most_cdev\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 480, i32 27 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 656, i32 30 }
@___asan_gen_.57 = private unnamed_addr constant [9 x i8] c"most_net\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 491, i32 27 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 659, i32 30 }
@___asan_gen_.63 = private unnamed_addr constant [11 x i8] c"most_video\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 502, i32 27 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 662, i32 30 }
@___asan_gen_.69 = private unnamed_addr constant [18 x i8] c"most_sound_subsys\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 638, i32 26 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 670, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [15 x i8] c"mdev_link_list\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 36, i32 25 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 709, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 712, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 715, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 718, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"most_common_type\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 474, i32 38 }
@___asan_gen_.114 = private unnamed_addr constant [21 x i8] c"most_common_item_ops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 457, i32 40 }
@___asan_gen_.117 = private unnamed_addr constant [22 x i8] c"most_common_group_ops\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 469, i32 41 }
@___asan_gen_.120 = private unnamed_addr constant [15 x i8] c"mdev_link_type\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 406, i32 38 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 440, i32 41 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 442, i32 46 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 444, i32 46 }
@___asan_gen_.132 = private unnamed_addr constant [19 x i8] c"mdev_link_item_ops\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 402, i32 40 }
@___asan_gen_.135 = private unnamed_addr constant [16 x i8] c"mdev_link_attrs\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 363, i32 35 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 391, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [27 x i8] c"mdev_link_attr_create_link\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [28 x i8] c"mdev_link_attr_destroy_link\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [22 x i8] c"mdev_link_attr_device\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [23 x i8] c"mdev_link_attr_channel\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [20 x i8] c"mdev_link_attr_comp\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [27 x i8] c"mdev_link_attr_comp_params\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [27 x i8] c"mdev_link_attr_num_buffers\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [27 x i8] c"mdev_link_attr_buffer_size\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [30 x i8] c"mdev_link_attr_subbuffer_size\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [32 x i8] c"mdev_link_attr_packets_per_xact\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [24 x i8] c"mdev_link_attr_datatype\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [25 x i8] c"mdev_link_attr_direction\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [24 x i8] c"mdev_link_attr_dbr_size\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 349, i32 1 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 350, i32 1 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 351, i32 1 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 199, i32 35 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 352, i32 1 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 353, i32 1 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 354, i32 1 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 355, i32 1 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 260, i32 35 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 356, i32 1 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 357, i32 1 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 358, i32 1 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 359, i32 1 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 188, i32 25 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 188, i32 58 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 189, i32 25 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 189, i32 55 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 190, i32 25 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 360, i32 1 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 170, i32 25 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 170, i32 57 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 171, i32 25 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 171, i32 57 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 361, i32 1 }
@___asan_gen_.258 = private unnamed_addr constant [16 x i8] c"most_sound_type\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 633, i32 38 }
@___asan_gen_.261 = private unnamed_addr constant [21 x i8] c"most_sound_group_ops\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 628, i32 41 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 604, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant [18 x i8] c"most_snd_grp_type\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 582, i32 38 }
@___asan_gen_.276 = private unnamed_addr constant [22 x i8] c"most_snd_grp_item_ops\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 574, i32 40 }
@___asan_gen_.279 = private unnamed_addr constant [23 x i8] c"most_snd_grp_group_ops\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 578, i32 41 }
@___asan_gen_.282 = private unnamed_addr constant [19 x i8] c"most_snd_grp_attrs\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 561, i32 35 }
@___asan_gen_.285 = private unnamed_addr constant [30 x i8] c"most_snd_grp_attr_create_card\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 559, i32 1 }
@___asan_gen_.291 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.297 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.298 = private constant [27 x i8] c"../drivers/most/configfs.c\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 103, i32 4 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__ksymtab_most_deregister_configfs_subsys, ptr @__ksymtab_most_register_configfs_subsys, ptr @mdev_link_release._entry, ptr @mdev_link_release._entry_ptr, ptr @most_register_configfs_subsys._entry, ptr @most_register_configfs_subsys._entry_ptr, ptr @most_sound_make_group._entry, ptr @most_sound_make_group._entry_ptr, ptr @set_config_and_add_link._entry, ptr @set_config_and_add_link._entry_ptr, ptr @.str, ptr @most_cdev, ptr @.str.1, ptr @most_net, ptr @.str.2, ptr @most_video, ptr @.str.3, ptr @most_sound_subsys, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mdev_link_list, ptr @configfs_init.__key, ptr @.str.7, ptr @configfs_init.__key.8, ptr @.str.9, ptr @configfs_init.__key.10, ptr @.str.11, ptr @configfs_init.__key.12, ptr @.str.13, ptr @most_common_type, ptr @most_common_item_ops, ptr @most_common_group_ops, ptr @mdev_link_type, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @mdev_link_item_ops, ptr @mdev_link_attrs, ptr @.str.17, ptr @.str.18, ptr @mdev_link_attr_create_link, ptr @mdev_link_attr_destroy_link, ptr @mdev_link_attr_device, ptr @mdev_link_attr_channel, ptr @mdev_link_attr_comp, ptr @mdev_link_attr_comp_params, ptr @mdev_link_attr_num_buffers, ptr @mdev_link_attr_buffer_size, ptr @mdev_link_attr_subbuffer_size, ptr @mdev_link_attr_packets_per_xact, ptr @mdev_link_attr_datatype, ptr @mdev_link_attr_direction, ptr @mdev_link_attr_dbr_size, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @most_sound_type, ptr @most_sound_group_ops, ptr @.str.43, ptr @.str.44, ptr @most_snd_grp_type, ptr @most_snd_grp_item_ops, ptr @most_snd_grp_group_ops, ptr @most_snd_grp_attrs, ptr @most_snd_grp_attr_create_card, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_cdev to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_net to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_video to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_sound_subsys to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_register_configfs_subsys._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_link_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configfs_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configfs_init.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configfs_init.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configfs_init.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_common_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_common_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_common_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_link_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_link_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_link_attrs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_link_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_link_attr_create_link to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_link_attr_destroy_link to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_link_attr_device to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_link_attr_channel to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_link_attr_comp to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_link_attr_comp_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_link_attr_num_buffers to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_link_attr_buffer_size to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_link_attr_subbuffer_size to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_link_attr_packets_per_xact to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_link_attr_datatype to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_link_attr_direction to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_link_attr_dbr_size to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_sound_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_sound_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_sound_make_group._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_snd_grp_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_snd_grp_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_snd_grp_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_snd_grp_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @most_snd_grp_attr_create_card to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_config_and_add_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @most_register_configfs_subsys(ptr nocapture noundef readonly %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.most_component, ptr %c, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %call = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(5) @.str) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mod = getelementptr inbounds %struct.most_component, ptr %c, i32 0, i32 2
  %2 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mod, align 4
  store ptr %3, ptr getelementptr inbounds (%struct.most_common, ptr @most_cdev, i32 0, i32 1), align 4
  %call1 = tail call i32 @configfs_register_subsystem(ptr noundef getelementptr inbounds (%struct.most_common, ptr @most_cdev, i32 0, i32 2)) #11
  br label %if.end25

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(4) @.str.1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %mod6 = getelementptr inbounds %struct.most_component, ptr %c, i32 0, i32 2
  %4 = ptrtoint ptr %mod6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mod6, align 4
  store ptr %5, ptr getelementptr inbounds (%struct.most_common, ptr @most_net, i32 0, i32 1), align 4
  %call7 = tail call i32 @configfs_register_subsystem(ptr noundef getelementptr inbounds (%struct.most_common, ptr @most_net, i32 0, i32 2)) #11
  br label %if.end25

if.else8:                                         ; preds = %if.else
  %call10 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(6) @.str.2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.else15

if.then12:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #13
  %mod13 = getelementptr inbounds %struct.most_component, ptr %c, i32 0, i32 2
  %6 = ptrtoint ptr %mod13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mod13, align 4
  store ptr %7, ptr getelementptr inbounds (%struct.most_common, ptr @most_video, i32 0, i32 1), align 4
  %call14 = tail call i32 @configfs_register_subsystem(ptr noundef getelementptr inbounds (%struct.most_common, ptr @most_video, i32 0, i32 2)) #11
  br label %if.end25

if.else15:                                        ; preds = %if.else8
  %call17 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(6) @.str.3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.else15.cleanup_crit_edge

if.else15.cleanup_crit_edge:                      ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then19:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #13
  %mod20 = getelementptr inbounds %struct.most_component, ptr %c, i32 0, i32 2
  %8 = ptrtoint ptr %mod20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mod20, align 4
  store ptr %9, ptr getelementptr inbounds (%struct.most_sound, ptr @most_sound_subsys, i32 0, i32 2), align 4
  %call21 = tail call i32 @configfs_register_subsystem(ptr noundef nonnull @most_sound_subsys) #11
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %if.then12, %if.then5, %if.then
  %ret.0 = phi i32 [ %call21, %if.then19 ], [ %call14, %if.then12 ], [ %call7, %if.then5 ], [ %call1, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool26.not = icmp eq i32 %ret.0, 0
  br i1 %tobool26.not, label %if.end25.cleanup_crit_edge, label %do.end

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %ret.0, ptr noundef %11) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end25.cleanup_crit_edge, %if.else15.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.else15.cleanup_crit_edge ], [ %ret.0, %do.end ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_register_subsystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @most_interface_register_notify(ptr nocapture noundef readonly %mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %.pn21 = load ptr, ptr @mdev_link_list, align 4
  %cmp.not23 = icmp eq ptr %.pn21, @mdev_link_list
  br i1 %cmp.not23, label %entry.if.end14_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn25 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn21, %entry.for.body_crit_edge ]
  %register_snd_card.0.off024 = phi i1 [ %register_snd_card.1.off0, %for.inc.for.body_crit_edge ], [ false, %entry.for.body_crit_edge ]
  %device = getelementptr i8, ptr %.pn25, i32 260
  %call = tail call i32 @strcmp(ptr noundef %device, ptr noundef %mdev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %mdev_link.026 = getelementptr i8, ptr %.pn25, i32 -52
  %call1 = tail call fastcc i32 @set_config_and_add_link(ptr noundef %mdev_link.026)
  %comp = getelementptr i8, ptr %.pn25, i32 420
  %call3 = tail call i32 @strcmp(ptr noundef %comp, ptr noundef nonnull dereferenceable(6) @.str.3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %spec.select = select i1 %tobool4.not, i1 true, i1 %register_snd_card.0.off024
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %register_snd_card.1.off0 = phi i1 [ %register_snd_card.0.off024, %for.body.for.inc_crit_edge ], [ %spec.select, %if.then ]
  %0 = ptrtoint ptr %.pn25 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn25, align 4
  %cmp.not = icmp eq ptr %.pn, @mdev_link_list
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %register_snd_card.1.off0, label %if.then12, label %for.end.if.end14_crit_edge

for.end.if.end14_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then12:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %call13 = tail call i32 @most_cfg_complete(ptr noundef nonnull @.str.3) #11
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %for.end.if.end14_crit_edge, %entry.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_config_and_add_link(ptr noundef %mdev_link) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %device.i = getelementptr inbounds %struct.mdev_link, ptr %mdev_link, i32 0, i32 12
  %channel.i = getelementptr inbounds %struct.mdev_link, ptr %mdev_link, i32 0, i32 13
  %buffer_size.i = getelementptr inbounds %struct.mdev_link, ptr %mdev_link, i32 0, i32 5
  %0 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %buffer_size.i, align 4
  %call.i = tail call i32 @most_set_cfg_buffer_size(ptr noundef %device.i, ptr noundef %channel.i, i16 noundef zeroext %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp1 = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i)
  %cmp2.not = icmp eq i32 %call.i, -19
  %or.cond = or i1 %cmp1, %cmp2.not
  br i1 %or.cond, label %for.cond, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.cond:                                         ; preds = %entry
  %subbuffer_size.i = getelementptr inbounds %struct.mdev_link, ptr %mdev_link, i32 0, i32 6
  %2 = ptrtoint ptr %subbuffer_size.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %subbuffer_size.i, align 2
  %call.i23 = tail call i32 @most_set_cfg_subbuffer_size(ptr noundef %device.i, ptr noundef %channel.i, i16 noundef zeroext %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i23)
  %cmp1.1 = icmp sgt i32 %call.i23, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i23)
  %cmp2.not.1 = icmp eq i32 %call.i23, -19
  %or.cond.1 = or i1 %cmp1.1, %cmp2.not.1
  br i1 %or.cond.1, label %for.cond.1, label %for.cond.do.end_crit_edge

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.cond.1:                                       ; preds = %for.cond
  %dbr_size.i = getelementptr inbounds %struct.mdev_link, ptr %mdev_link, i32 0, i32 8
  %4 = ptrtoint ptr %dbr_size.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dbr_size.i, align 2
  %call.i26 = tail call i32 @most_set_cfg_dbr_size(ptr noundef %device.i, ptr noundef %channel.i, i16 noundef zeroext %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i26)
  %cmp1.2 = icmp sgt i32 %call.i26, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i26)
  %cmp2.not.2 = icmp eq i32 %call.i26, -19
  %or.cond.2 = or i1 %cmp1.2, %cmp2.not.2
  br i1 %or.cond.2, label %for.cond.2, label %for.cond.1.do.end_crit_edge

for.cond.1.do.end_crit_edge:                      ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.cond.2:                                       ; preds = %for.cond.1
  %num_buffers.i = getelementptr inbounds %struct.mdev_link, ptr %mdev_link, i32 0, i32 4
  %6 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_buffers.i, align 2
  %call.i29 = tail call i32 @most_set_cfg_num_buffers(ptr noundef %device.i, ptr noundef %channel.i, i16 noundef zeroext %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i29)
  %cmp1.3 = icmp sgt i32 %call.i29, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i29)
  %cmp2.not.3 = icmp eq i32 %call.i29, -19
  %or.cond.3 = or i1 %cmp1.3, %cmp2.not.3
  br i1 %or.cond.3, label %for.cond.3, label %for.cond.2.do.end_crit_edge

for.cond.2.do.end_crit_edge:                      ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.cond.3:                                       ; preds = %for.cond.2
  %packets_per_xact.i = getelementptr inbounds %struct.mdev_link, ptr %mdev_link, i32 0, i32 7
  %8 = ptrtoint ptr %packets_per_xact.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %packets_per_xact.i, align 4
  %call.i32 = tail call i32 @most_set_cfg_packets_xact(ptr noundef %device.i, ptr noundef %channel.i, i16 noundef zeroext %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i32)
  %cmp1.4 = icmp sgt i32 %call.i32, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i32)
  %cmp2.not.4 = icmp eq i32 %call.i32, -19
  %or.cond.4 = or i1 %cmp1.4, %cmp2.not.4
  br i1 %or.cond.4, label %for.cond.4, label %for.cond.3.do.end_crit_edge

for.cond.3.do.end_crit_edge:                      ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.cond.4:                                       ; preds = %for.cond.3
  %direction.i = getelementptr inbounds %struct.mdev_link, ptr %mdev_link, i32 0, i32 10
  %call.i35 = tail call i32 @most_set_cfg_direction(ptr noundef %device.i, ptr noundef %channel.i, ptr noundef %direction.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i35)
  %cmp1.5 = icmp sgt i32 %call.i35, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i35)
  %cmp2.not.5 = icmp eq i32 %call.i35, -19
  %or.cond.5 = or i1 %cmp1.5, %cmp2.not.5
  br i1 %or.cond.5, label %for.cond.5, label %for.cond.4.do.end_crit_edge

for.cond.4.do.end_crit_edge:                      ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.cond.5:                                       ; preds = %for.cond.4
  %datatype.i = getelementptr inbounds %struct.mdev_link, ptr %mdev_link, i32 0, i32 9
  %call.i38 = tail call i32 @most_set_cfg_datatype(ptr noundef %device.i, ptr noundef %channel.i, ptr noundef %datatype.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i38)
  %cmp1.6 = icmp sgt i32 %call.i38, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i38)
  %cmp2.not.6 = icmp eq i32 %call.i38, -19
  %or.cond.6 = or i1 %cmp1.6, %cmp2.not.6
  br i1 %or.cond.6, label %for.cond.6, label %for.cond.5.do.end_crit_edge

for.cond.5.do.end_crit_edge:                      ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.cond.6:                                       ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #13
  %comp = getelementptr inbounds %struct.mdev_link, ptr %mdev_link, i32 0, i32 14
  %name = getelementptr inbounds %struct.mdev_link, ptr %mdev_link, i32 0, i32 11
  %comp_params = getelementptr inbounds %struct.mdev_link, ptr %mdev_link, i32 0, i32 15
  %call8 = tail call i32 @most_add_link(ptr noundef %device.i, ptr noundef %channel.i, ptr noundef %comp, ptr noundef %name, ptr noundef %comp_params) #11
  br label %cleanup

do.end:                                           ; preds = %for.cond.5.do.end_crit_edge, %for.cond.4.do.end_crit_edge, %for.cond.3.do.end_crit_edge, %for.cond.2.do.end_crit_edge, %for.cond.1.do.end_crit_edge, %for.cond.do.end_crit_edge, %entry.do.end_crit_edge
  %call.lcssa = phi i32 [ %call.i, %entry.do.end_crit_edge ], [ %call.i23, %for.cond.do.end_crit_edge ], [ %call.i26, %for.cond.1.do.end_crit_edge ], [ %call.i29, %for.cond.2.do.end_crit_edge ], [ %call.i32, %for.cond.3.do.end_crit_edge ], [ %call.i35, %for.cond.4.do.end_crit_edge ], [ %call.i38, %for.cond.5.do.end_crit_edge ]
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.cond.6
  %retval.0 = phi i32 [ %call.lcssa, %do.end ], [ %call8, %for.cond.6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_cfg_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @most_deregister_configfs_subsys(ptr nocapture noundef readonly %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.most_component, ptr %c, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %call = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(5) @.str) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @configfs_unregister_subsystem(ptr noundef getelementptr inbounds (%struct.most_common, ptr @most_cdev, i32 0, i32 2)) #11
  br label %if.end17

if.else:                                          ; preds = %entry
  %call2 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(4) @.str.1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @configfs_unregister_subsystem(ptr noundef getelementptr inbounds (%struct.most_common, ptr @most_net, i32 0, i32 2)) #11
  br label %if.end17

if.else5:                                         ; preds = %if.else
  %call7 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(6) @.str.2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @configfs_unregister_subsystem(ptr noundef getelementptr inbounds (%struct.most_common, ptr @most_video, i32 0, i32 2)) #11
  br label %if.end17

if.else10:                                        ; preds = %if.else5
  %call12 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(6) @.str.3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.else10.if.end17_crit_edge

if.else10.if.end17_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then14:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @configfs_unregister_subsystem(ptr noundef nonnull @most_sound_subsys) #11
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.else10.if.end17_crit_edge, %if.then9, %if.then4, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_unregister_subsystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @configfs_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @config_group_init(ptr noundef getelementptr inbounds (%struct.most_common, ptr @most_cdev, i32 0, i32 2)) #11
  tail call void @__mutex_init(ptr noundef getelementptr inbounds (%struct.most_common, ptr @most_cdev, i32 0, i32 2, i32 1), ptr noundef nonnull @.str.7, ptr noundef nonnull @configfs_init.__key) #11
  tail call void @config_group_init(ptr noundef getelementptr inbounds (%struct.most_common, ptr @most_net, i32 0, i32 2)) #11
  tail call void @__mutex_init(ptr noundef getelementptr inbounds (%struct.most_common, ptr @most_net, i32 0, i32 2, i32 1), ptr noundef nonnull @.str.9, ptr noundef nonnull @configfs_init.__key.8) #11
  tail call void @config_group_init(ptr noundef getelementptr inbounds (%struct.most_common, ptr @most_video, i32 0, i32 2)) #11
  tail call void @__mutex_init(ptr noundef getelementptr inbounds (%struct.most_common, ptr @most_video, i32 0, i32 2, i32 1), ptr noundef nonnull @.str.11, ptr noundef nonnull @configfs_init.__key.10) #11
  tail call void @config_group_init(ptr noundef nonnull @most_sound_subsys) #11
  tail call void @__mutex_init(ptr noundef getelementptr inbounds (%struct.most_sound, ptr @most_sound_subsys, i32 0, i32 0, i32 1), ptr noundef nonnull @.str.13, ptr noundef nonnull @configfs_init.__key.12) #11
  store volatile ptr getelementptr inbounds (%struct.most_sound, ptr @most_sound_subsys, i32 0, i32 1), ptr getelementptr inbounds (%struct.most_sound, ptr @most_sound_subsys, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.most_sound, ptr @most_sound_subsys, i32 0, i32 1), ptr getelementptr inbounds (%struct.most_sound, ptr @most_sound_subsys, i32 0, i32 1, i32 1), align 4
  store volatile ptr @mdev_link_list, ptr @mdev_link_list, align 4
  store ptr @mdev_link_list, ptr getelementptr inbounds (%struct.list_head, ptr @mdev_link_list, i32 0, i32 1), align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @most_common_release(ptr nocapture noundef readonly %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -84
  tail call void @kfree(ptr noundef %add.ptr.i) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @most_common_make_item(ptr nocapture noundef readonly %group, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %group, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 632) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mod = getelementptr i8, ptr %1, i32 -4
  %3 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mod, align 4
  %call3 = tail call zeroext i1 @try_module_get(ptr noundef %4) #11
  br i1 %call3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  tail call void @config_item_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef %name, ptr noundef nonnull @mdev_link_type) #11
  %ci_namebuf = getelementptr inbounds %struct.config_item, ptr %group, i32 0, i32 1
  %call7 = tail call i32 @strcmp(ptr noundef %ci_namebuf, ptr noundef nonnull dereferenceable(10) @.str.14) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %comp = getelementptr inbounds %struct.mdev_link, ptr %call7.i.i, i32 0, i32 14
  %5 = call ptr @memcpy(ptr %comp, ptr @.str, i32 5)
  br label %if.end33

if.else:                                          ; preds = %if.end6
  %call15 = tail call i32 @strcmp(ptr noundef %ci_namebuf, ptr noundef nonnull dereferenceable(9) @.str.15) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.else21

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %comp18 = getelementptr inbounds %struct.mdev_link, ptr %call7.i.i, i32 0, i32 14
  %6 = ptrtoint ptr %comp18 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1852142592, ptr %comp18, align 8
  br label %if.end33

if.else21:                                        ; preds = %if.else
  %call25 = tail call i32 @strcmp(ptr noundef %ci_namebuf, ptr noundef nonnull dereferenceable(11) @.str.16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.else21.if.end33_crit_edge

if.else21.if.end33_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then27:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #13
  %comp28 = getelementptr inbounds %struct.mdev_link, ptr %call7.i.i, i32 0, i32 14
  %7 = call ptr @memcpy(ptr %comp28, ptr @.str.2, i32 6)
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %if.else21.if.end33_crit_edge, %if.then17, %if.then9
  %name34 = getelementptr inbounds %struct.mdev_link, ptr %call7.i.i, i32 0, i32 11
  %call36 = tail call ptr @strcpy(ptr noundef %name34, ptr noundef %name) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end33 ], [ inttoptr (i32 -37 to ptr), %if.then4 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @most_common_disconnect(ptr nocapture noundef readonly %group, ptr nocapture noundef readnone %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %group, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %mod = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mod, align 4
  tail call void @module_put(ptr noundef %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_item_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdev_link_release(ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %destroy_link = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 3
  %0 = ptrtoint ptr %destroy_link to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %destroy_link, align 1, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.free_item_crit_edge

entry.free_item_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_item

if.end:                                           ; preds = %entry
  %device = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 12
  %channel = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 13
  %comp = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 14
  %call3 = tail call i32 @most_remove_link(ptr noundef %device, ptr noundef %channel, ptr noundef %comp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #15
  br label %free_item

if.end7:                                          ; preds = %if.end
  %2 = load volatile ptr, ptr @mdev_link_list, align 4
  %cmp.i.not = icmp eq ptr %2, @mdev_link_list
  br i1 %cmp.i.not, label %if.end7.free_item_crit_edge, label %if.then10

if.end7.free_item_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_item

if.then10:                                        ; preds = %if.end7
  %list = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then10.list_del.exit_crit_edge

if.then10.list_del.exit_crit_edge:                ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then10.list_del.exit_crit_edge
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %free_item

free_item:                                        ; preds = %list_del.exit, %if.end7.free_item_crit_edge, %do.end, %entry.free_item_crit_edge
  tail call void @kfree(ptr noundef %item) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_remove_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdev_link_create_link_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #11
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp, align 1, !annotation !161
  %call1 = call i32 @kstrtobool(ptr noundef %page, ptr noundef nonnull %tmp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tmp, align 1, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not = icmp eq i8 %2, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @set_config_and_add_link(ptr noundef %item)
  %3 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call5, label %if.end4.cleanup_crit_edge [
    i32 0, label %if.end4.if.end8_crit_edge
    i32 -19, label %if.end4.if.end8_crit_edge20
  ]

if.end4.if.end8_crit_edge20:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end4.if.end8_crit_edge, %if.end4.if.end8_crit_edge20
  %list = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 1
  %4 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @mdev_link_list, i32 0, i32 1), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %4, ptr noundef nonnull @mdev_link_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end8.list_add_tail.exit_crit_edge

if.end8.list_add_tail.exit_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @mdev_link_list, i32 0, i32 1), align 4
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mdev_link_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list, ptr %4, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end8.list_add_tail.exit_crit_edge
  %8 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tmp, align 1, !range !160
  %create_link = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 2
  %10 = ptrtoint ptr %create_link to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %create_link, align 4
  %destroy_link = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 3
  %11 = ptrtoint ptr %destroy_link to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %destroy_link, align 1
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %list_add_tail.exit ], [ %call1, %entry.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdev_link_destroy_link_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #11
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp, align 1, !annotation !161
  %call1 = call i32 @kstrtobool(ptr noundef %page, ptr noundef nonnull %tmp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tmp, align 1, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not = icmp eq i8 %2, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %device = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 12
  %channel = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 13
  %comp = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 14
  %call7 = call i32 @most_remove_link(ptr noundef %device, ptr noundef %channel, ptr noundef %comp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %3 = load volatile ptr, ptr @mdev_link_list, align 4
  %cmp.i.not = icmp eq ptr %3, @mdev_link_list
  br i1 %cmp.i.not, label %if.end10.if.end14_crit_edge, label %if.then13

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then13:                                        ; preds = %if.end10
  %list = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 1
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then13.list_del.exit_crit_edge

if.then13.list_del.exit_crit_edge:                ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then13.list_del.exit_crit_edge
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end14

if.end14:                                         ; preds = %list_del.exit, %if.end10.if.end14_crit_edge
  %12 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tmp, align 1, !range !160
  %destroy_link = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 3
  %14 = ptrtoint ptr %destroy_link to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %destroy_link, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end14 ], [ %call1, %entry.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ], [ %call7, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #11
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdev_link_device_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 12
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.22, ptr noundef %device)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdev_link_device_store(ptr noundef %item, ptr noundef %page, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 12
  %call1 = tail call i32 @strlcpy(ptr noundef %device, ptr noundef %page, i32 noundef 80) #11
  %call4 = tail call ptr @strim(ptr noundef %device) #11
  ret i32 %count
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdev_link_channel_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 13
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.22, ptr noundef %channel)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdev_link_channel_store(ptr noundef %item, ptr noundef %page, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 13
  %call1 = tail call i32 @strlcpy(ptr noundef %channel, ptr noundef %page, i32 noundef 80) #11
  %call4 = tail call ptr @strim(ptr noundef %channel) #11
  ret i32 %count
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdev_link_comp_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %comp = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 14
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.22, ptr noundef %comp)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdev_link_comp_store(ptr noundef %item, ptr noundef %page, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %comp = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 14
  %call1 = tail call i32 @strlcpy(ptr noundef %comp, ptr noundef %page, i32 noundef 80) #11
  %call4 = tail call ptr @strim(ptr noundef %comp) #11
  ret i32 %count
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdev_link_comp_params_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %comp_params = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 15
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.22, ptr noundef %comp_params)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdev_link_comp_params_store(ptr noundef %item, ptr noundef %page, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %comp_params = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 15
  %call1 = tail call i32 @strlcpy(ptr noundef %comp_params, ptr noundef %page, i32 noundef 80) #11
  %call4 = tail call ptr @strim(ptr noundef %comp_params) #11
  ret i32 %count
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdev_link_num_buffers_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_buffers = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_buffers, align 2
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.27, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdev_link_num_buffers_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_buffers = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 4
  %call1 = tail call i32 @kstrtou16(ptr noundef %page, i32 noundef 0, ptr noundef %num_buffers) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %count.call1 = select i1 %tobool.not, i32 %count, i32 %call1
  ret i32 %count.call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdev_link_buffer_size_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer_size = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %buffer_size, align 4
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.27, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdev_link_buffer_size_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer_size = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 5
  %call1 = tail call i32 @kstrtou16(ptr noundef %page, i32 noundef 0, ptr noundef %buffer_size) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %count.call1 = select i1 %tobool.not, i32 %count, i32 %call1
  ret i32 %count.call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdev_link_subbuffer_size_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %subbuffer_size = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 6
  %0 = ptrtoint ptr %subbuffer_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %subbuffer_size, align 2
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.27, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdev_link_subbuffer_size_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %subbuffer_size = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 6
  %call1 = tail call i32 @kstrtou16(ptr noundef %page, i32 noundef 0, ptr noundef %subbuffer_size) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %count.call1 = select i1 %tobool.not, i32 %count, i32 %call1
  ret i32 %count.call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdev_link_packets_per_xact_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %packets_per_xact = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 7
  %0 = ptrtoint ptr %packets_per_xact to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %packets_per_xact, align 4
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.27, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdev_link_packets_per_xact_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %packets_per_xact = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 7
  %call1 = tail call i32 @kstrtou16(ptr noundef %page, i32 noundef 0, ptr noundef %packets_per_xact) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %count.call1 = select i1 %tobool.not, i32 %count, i32 %call1
  ret i32 %count.call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdev_link_datatype_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %datatype = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 9
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.22, ptr noundef %datatype)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdev_link_datatype_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call zeroext i1 @sysfs_streq(ptr noundef %page, ptr noundef nonnull @.str.32) #11
  br i1 %call1, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call zeroext i1 @sysfs_streq(ptr noundef %page, ptr noundef nonnull @.str.33) #11
  br i1 %call2, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = tail call zeroext i1 @sysfs_streq(ptr noundef %page, ptr noundef nonnull @.str.34) #11
  br i1 %call4, label %land.lhs.true3.if.end_crit_edge, label %land.lhs.true5

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %call6 = tail call zeroext i1 @sysfs_streq(ptr noundef %page, ptr noundef nonnull @.str.35) #11
  br i1 %call6, label %land.lhs.true5.if.end_crit_edge, label %land.lhs.true7

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true5
  %call8 = tail call zeroext i1 @sysfs_streq(ptr noundef %page, ptr noundef nonnull @.str.36) #11
  br i1 %call8, label %land.lhs.true7.if.end_crit_edge, label %land.lhs.true7.cleanup_crit_edge

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %land.lhs.true5.if.end_crit_edge, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %datatype = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 9
  %call9 = tail call ptr @strcpy(ptr noundef %datatype, ptr noundef %page) #14
  %call12 = tail call ptr @strim(ptr noundef %datatype) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true7.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %land.lhs.true7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdev_link_direction_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %direction = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 10
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.22, ptr noundef %direction)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdev_link_direction_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call zeroext i1 @sysfs_streq(ptr noundef %page, ptr noundef nonnull @.str.38) #11
  br i1 %call1, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call zeroext i1 @sysfs_streq(ptr noundef %page, ptr noundef nonnull @.str.39) #11
  br i1 %call2, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = tail call zeroext i1 @sysfs_streq(ptr noundef %page, ptr noundef nonnull @.str.40) #11
  br i1 %call4, label %land.lhs.true3.if.end_crit_edge, label %land.lhs.true5

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %call6 = tail call zeroext i1 @sysfs_streq(ptr noundef %page, ptr noundef nonnull @.str.41) #11
  br i1 %call6, label %land.lhs.true5.if.end_crit_edge, label %land.lhs.true5.cleanup_crit_edge

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %land.lhs.true5.if.end_crit_edge, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %direction = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 10
  %call7 = tail call ptr @strcpy(ptr noundef %direction, ptr noundef %page) #14
  %call10 = tail call ptr @strim(ptr noundef %direction) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true5.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %land.lhs.true5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdev_link_dbr_size_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dbr_size = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 8
  %0 = ptrtoint ptr %dbr_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %dbr_size, align 2
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.27, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdev_link_dbr_size_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dbr_size = getelementptr inbounds %struct.mdev_link, ptr %item, i32 0, i32 8
  %call1 = tail call i32 @kstrtou16(ptr noundef %page, i32 noundef 0, ptr noundef %dbr_size) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %count.call1 = select i1 %tobool.not, i32 %count, i32 %call1
  ret i32 %count.call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @most_sound_make_group(ptr nocapture noundef readonly %group, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %group, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %soundcard_list = getelementptr inbounds %struct.most_sound, ptr %1, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %soundcard_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %soundcard_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %create_card = getelementptr i8, ptr %.pn, i32 -4
  %3 = ptrtoint ptr %create_card to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %create_card, align 4, !range !160
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %do.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #15
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %mod = getelementptr inbounds %struct.most_sound, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mod, align 4
  %call12 = tail call zeroext i1 @try_module_get(ptr noundef %6) #11
  br i1 %call12, label %if.end15, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 92) #16
  %tobool17.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool17.not, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mod, align 4
  tail call void @module_put(ptr noundef %9) #11
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef %name, ptr noundef nonnull @most_snd_grp_type) #11
  %list23 = getelementptr inbounds %struct.most_snd_grp, ptr %call7.i.i, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.most_sound, ptr %1, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list23, ptr noundef %11, ptr noundef %soundcard_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %list23, ptr %prev.i, align 4
  %13 = ptrtoint ptr %list23 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %soundcard_list, ptr %list23, align 4
  %prev3.i.i = getelementptr inbounds %struct.most_snd_grp, ptr %call7.i.i, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i, align 8
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %list23, ptr %11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end21.cleanup_crit_edge, %if.then18, %for.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -71 to ptr), %do.end ], [ inttoptr (i32 -12 to ptr), %if.then18 ], [ inttoptr (i32 -37 to ptr), %for.end.cleanup_crit_edge ], [ %call7.i.i, %if.end21.cleanup_crit_edge ], [ %call7.i.i, %if.end.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @most_sound_disconnect(ptr nocapture noundef readonly %group, ptr nocapture noundef readnone %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %group, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %mod = getelementptr inbounds %struct.most_sound, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mod, align 4
  tail call void @module_put(ptr noundef %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @most_snd_grp_release(ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr inbounds %struct.most_snd_grp, ptr %item, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.most_snd_grp, ptr %item, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.most_snd_grp, ptr %item, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %item) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @most_snd_grp_make_item(ptr nocapture noundef readnone %group, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 632) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @config_item_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef %name, ptr noundef nonnull @mdev_link_type) #11
  %create_link = getelementptr inbounds %struct.mdev_link, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %create_link to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %create_link, align 4
  %name2 = getelementptr inbounds %struct.mdev_link, ptr %call7.i.i, i32 0, i32 11
  %call3 = tail call ptr @strcpy(ptr noundef %name2, ptr noundef %name) #14
  %comp = getelementptr inbounds %struct.mdev_link, ptr %call7.i.i, i32 0, i32 14
  %2 = call ptr @memcpy(ptr %comp, ptr @.str.3, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @most_snd_grp_create_card_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #11
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp, align 1, !annotation !161
  %call1 = call i32 @kstrtobool(ptr noundef %page, ptr noundef nonnull %tmp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tmp, align 1, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not = icmp eq i8 %2, 0
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %call4 = call i32 @most_cfg_complete(ptr noundef nonnull @.str.3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.if.end8_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %3 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tmp, align 1, !range !160
  %create_card = getelementptr inbounds %struct.most_snd_grp, ptr %item, i32 0, i32 1
  %5 = ptrtoint ptr %create_card to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %create_card, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end8 ], [ %call1, %entry.cleanup_crit_edge ], [ %call4, %if.then3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_add_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_set_cfg_buffer_size(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_set_cfg_subbuffer_size(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_set_cfg_dbr_size(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_set_cfg_num_buffers(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_set_cfg_packets_xact(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_set_cfg_direction(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_set_cfg_datatype(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !54, !55, !57, !59, !60, !62, !63, !65, !66, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !98, !100, !102, !104, !106, !107, !109, !111, !113, !115, !117, !118, !120, !122, !124, !126, !128, !130, !131, !132, !133, !135, !137, !139, !141, !143, !144, !146, !147, !148, !149}
!llvm.module.flags = !{!151, !152, !153, !154, !155, !156, !157, !158}
!llvm.ident = !{!159}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/most/configfs.c", i32 653, i32 23}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/most/configfs.c", i32 656, i32 30}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/most/configfs.c", i32 659, i32 30}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/most/configfs.c", i32 662, i32 30}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/most/configfs.c", i32 670, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @most_register_configfs_subsys._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @most_register_configfs_subsys._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab_most_register_configfs_subsys, !15, !"__ksymtab_most_register_configfs_subsys", i1 false, i1 false}
!15 = !{!"../drivers/most/configfs.c", i32 675, i32 1}
!16 = !{ptr @__ksymtab_most_deregister_configfs_subsys, !17, !"__ksymtab_most_deregister_configfs_subsys", i1 false, i1 false}
!17 = !{!"../drivers/most/configfs.c", i32 704, i32 1}
!18 = !{ptr @configfs_init.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/most/configfs.c", i32 709, i32 2}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @configfs_init.__key.8, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/most/configfs.c", i32 712, i32 2}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @configfs_init.__key.10, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/most/configfs.c", i32 715, i32 2}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @configfs_init.__key.12, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/most/configfs.c", i32 718, i32 2}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mdev_link_list, !31, !"mdev_link_list", i1 false, i1 false}
!31 = !{!"../drivers/most/configfs.c", i32 36, i32 25}
!32 = !{ptr @most_cdev, !33, !"most_cdev", i1 false, i1 false}
!33 = !{!"../drivers/most/configfs.c", i32 480, i32 27}
!34 = !{ptr @most_common_type, !35, !"most_common_type", i1 false, i1 false}
!35 = !{!"../drivers/most/configfs.c", i32 474, i32 38}
!36 = !{ptr @most_common_item_ops, !37, !"most_common_item_ops", i1 false, i1 false}
!37 = !{!"../drivers/most/configfs.c", i32 457, i32 40}
!38 = !{ptr @most_common_group_ops, !39, !"most_common_group_ops", i1 false, i1 false}
!39 = !{!"../drivers/most/configfs.c", i32 469, i32 41}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/most/configfs.c", i32 440, i32 41}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/most/configfs.c", i32 442, i32 46}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/most/configfs.c", i32 444, i32 46}
!46 = !{ptr @mdev_link_type, !47, !"mdev_link_type", i1 false, i1 false}
!47 = !{!"../drivers/most/configfs.c", i32 406, i32 38}
!48 = !{ptr @mdev_link_item_ops, !49, !"mdev_link_item_ops", i1 false, i1 false}
!49 = !{!"../drivers/most/configfs.c", i32 402, i32 40}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/most/configfs.c", i32 391, i32 3}
!52 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @mdev_link_release._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @mdev_link_release._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @mdev_link_attrs, !56, !"mdev_link_attrs", i1 false, i1 false}
!56 = !{!"../drivers/most/configfs.c", i32 363, i32 35}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/most/configfs.c", i32 349, i32 1}
!59 = !{ptr @mdev_link_attr_create_link, !58, !"mdev_link_attr_create_link", i1 false, i1 false}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/most/configfs.c", i32 350, i32 1}
!62 = !{ptr @mdev_link_attr_destroy_link, !61, !"mdev_link_attr_destroy_link", i1 false, i1 false}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/most/configfs.c", i32 351, i32 1}
!65 = !{ptr @mdev_link_attr_device, !64, !"mdev_link_attr_device", i1 false, i1 false}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/most/configfs.c", i32 199, i32 35}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/most/configfs.c", i32 352, i32 1}
!70 = !{ptr @mdev_link_attr_channel, !69, !"mdev_link_attr_channel", i1 false, i1 false}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/most/configfs.c", i32 353, i32 1}
!73 = !{ptr @mdev_link_attr_comp, !72, !"mdev_link_attr_comp", i1 false, i1 false}
!74 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/most/configfs.c", i32 354, i32 1}
!76 = !{ptr @mdev_link_attr_comp_params, !75, !"mdev_link_attr_comp_params", i1 false, i1 false}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/most/configfs.c", i32 355, i32 1}
!79 = !{ptr @mdev_link_attr_num_buffers, !78, !"mdev_link_attr_num_buffers", i1 false, i1 false}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/most/configfs.c", i32 260, i32 35}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/most/configfs.c", i32 356, i32 1}
!84 = !{ptr @mdev_link_attr_buffer_size, !83, !"mdev_link_attr_buffer_size", i1 false, i1 false}
!85 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/most/configfs.c", i32 357, i32 1}
!87 = !{ptr @mdev_link_attr_subbuffer_size, !86, !"mdev_link_attr_subbuffer_size", i1 false, i1 false}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/most/configfs.c", i32 358, i32 1}
!90 = !{ptr @mdev_link_attr_packets_per_xact, !89, !"mdev_link_attr_packets_per_xact", i1 false, i1 false}
!91 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/most/configfs.c", i32 359, i32 1}
!93 = !{ptr @mdev_link_attr_datatype, !92, !"mdev_link_attr_datatype", i1 false, i1 false}
!94 = !{ptr @.str.32, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/most/configfs.c", i32 188, i32 25}
!96 = !{ptr @.str.33, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/most/configfs.c", i32 188, i32 58}
!98 = !{ptr @.str.34, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/most/configfs.c", i32 189, i32 25}
!100 = !{ptr @.str.35, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/most/configfs.c", i32 189, i32 55}
!102 = !{ptr @.str.36, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/most/configfs.c", i32 190, i32 25}
!104 = !{ptr @.str.37, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/most/configfs.c", i32 360, i32 1}
!106 = !{ptr @mdev_link_attr_direction, !105, !"mdev_link_attr_direction", i1 false, i1 false}
!107 = !{ptr @.str.38, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/most/configfs.c", i32 170, i32 25}
!109 = !{ptr @.str.39, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/most/configfs.c", i32 170, i32 57}
!111 = !{ptr @.str.40, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/most/configfs.c", i32 171, i32 25}
!113 = !{ptr @.str.41, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/most/configfs.c", i32 171, i32 57}
!115 = !{ptr @.str.42, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/most/configfs.c", i32 361, i32 1}
!117 = !{ptr @mdev_link_attr_dbr_size, !116, !"mdev_link_attr_dbr_size", i1 false, i1 false}
!118 = !{ptr @most_net, !119, !"most_net", i1 false, i1 false}
!119 = !{!"../drivers/most/configfs.c", i32 491, i32 27}
!120 = !{ptr @most_video, !121, !"most_video", i1 false, i1 false}
!121 = !{!"../drivers/most/configfs.c", i32 502, i32 27}
!122 = !{ptr @most_sound_subsys, !123, !"most_sound_subsys", i1 false, i1 false}
!123 = !{!"../drivers/most/configfs.c", i32 638, i32 26}
!124 = !{ptr @most_sound_type, !125, !"most_sound_type", i1 false, i1 false}
!125 = !{!"../drivers/most/configfs.c", i32 633, i32 38}
!126 = !{ptr @most_sound_group_ops, !127, !"most_sound_group_ops", i1 false, i1 false}
!127 = !{!"../drivers/most/configfs.c", i32 628, i32 41}
!128 = !{ptr @.str.43, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/most/configfs.c", i32 604, i32 4}
!130 = !{ptr @.str.44, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @most_sound_make_group._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @most_sound_make_group._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @most_snd_grp_type, !134, !"most_snd_grp_type", i1 false, i1 false}
!134 = !{!"../drivers/most/configfs.c", i32 582, i32 38}
!135 = !{ptr @most_snd_grp_item_ops, !136, !"most_snd_grp_item_ops", i1 false, i1 false}
!136 = !{!"../drivers/most/configfs.c", i32 574, i32 40}
!137 = !{ptr @most_snd_grp_group_ops, !138, !"most_snd_grp_group_ops", i1 false, i1 false}
!138 = !{!"../drivers/most/configfs.c", i32 578, i32 41}
!139 = !{ptr @most_snd_grp_attrs, !140, !"most_snd_grp_attrs", i1 false, i1 false}
!140 = !{!"../drivers/most/configfs.c", i32 561, i32 35}
!141 = !{ptr @.str.45, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/most/configfs.c", i32 559, i32 1}
!143 = !{ptr @most_snd_grp_attr_create_card, !142, !"most_snd_grp_attr_create_card", i1 false, i1 false}
!144 = !{ptr @.str.46, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/most/configfs.c", i32 103, i32 4}
!146 = !{ptr @.str.47, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @set_config_and_add_link._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @set_config_and_add_link._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = distinct !{null, !150, !"set_config_val", i1 false, i1 false}
!150 = !{!"../drivers/most/configfs.c", i32 80, i32 14}
!151 = !{i32 1, !"wchar_size", i32 2}
!152 = !{i32 1, !"min_enum_size", i32 4}
!153 = !{i32 8, !"branch-target-enforcement", i32 0}
!154 = !{i32 8, !"sign-return-address", i32 0}
!155 = !{i32 8, !"sign-return-address-all", i32 0}
!156 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!157 = !{i32 7, !"uwtable", i32 1}
!158 = !{i32 7, !"frame-pointer", i32 2}
!159 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!160 = !{i8 0, i8 2}
!161 = !{!"auto-init"}
