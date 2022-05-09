; ModuleID = '/llk/IR_all_yes/drivers/block/rnbd/rnbd-clt-sysfs.c_pt.bc'
source_filename = "../drivers/block/rnbd/rnbd-clt-sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.match_token = type { i32, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.rnbd_clt_dev = type { ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i64, %struct.list_head, ptr, %struct.kobject, ptr, %struct.refcount_struct, %struct.work_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.substring_t = type { ptr, ptr }
%struct.rtrs_addr = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.157 }
%union.anon.157 = type { ptr, [124 x i8] }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.rnbd_clt_session = type { %struct.list_head, ptr, %struct.wait_queue_head, i8, ptr, [1 x i32], ptr, %struct.atomic_t, i32, i32, i32, %struct.blk_mq_tag_set, i32, %struct.mutex, %struct.list_head, %struct.refcount_struct, [255 x i8], i8 }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }

@rnbd_devs_kobj = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rnbd_clt_create_sysfs_files.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rnbd-client\00", [20 x i8] zeroinitializer }, align 32
@rnbd_dev_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@default_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @default_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ctl\00", [28 x i8] zeroinitializer }, align 32
@rnbd_dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devices\00", [24 x i8] zeroinitializer }, align 32
@default_attr_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @default_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@default_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @rnbd_clt_map_device_attr, ptr null], [24 x i8] zeroinitializer }, align 32
@rnbd_clt_map_device_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.3, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rnbd_clt_map_device_show, ptr @rnbd_clt_map_device_store }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"map_device\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [294 x i8], [90 x i8] } { [294 x i8] c"Usage: echo \22[dest_port=server port number] sessname=<name of the rtrs session> path=<[srcaddr@]dstaddr> [path=<[srcaddr@]dstaddr>] device_path=<full path on remote side> [access_mode=<ro|rw|migration>] [nr_poll_queues=<number of queues>]\22 > %s\0A\0Aaddr ::= [ ip:<ipv4> | ip:<ipv6> | gid:<gid> ]\0A\00", [90 x i8] zeroinitializer }, align 32
@rnbd_clt_map_device_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\016rnbd_client L600: Mapping device %s on session %s, (access_mode: %s, nr_poll_queues: %d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rnbd_clt_map_device_store\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/block/rnbd/rnbd-clt-sysfs.c\00", [60 x i8] zeroinitializer }, align 32
@rnbd_clt_map_device_store._entry_ptr = internal global ptr @rnbd_clt_map_device_store._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@rnbd_opt_tokens = internal constant { [7 x %struct.match_token], [40 x i8] } { [7 x %struct.match_token] [%struct.match_token { i32 2, ptr @.str.38 }, %struct.match_token { i32 4, ptr @.str.39 }, %struct.match_token { i32 1, ptr @.str.40 }, %struct.match_token { i32 8, ptr @.str.41 }, %struct.match_token { i32 64, ptr @.str.42 }, %struct.match_token { i32 128, ptr @.str.43 }, %struct.match_token zeroinitializer], [40 x i8] zeroinitializer }, align 32
@rnbd_clt_parse_map_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.7, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013rnbd_client L99: map_device: sessname too long\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rnbd_clt_parse_map_options\00", [37 x i8] zeroinitializer }, align 32
@rnbd_clt_parse_map_options._entry_ptr = internal global ptr @rnbd_clt_parse_map_options._entry, section ".printk_index", align 4
@rnbd_clt_parse_map_options._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.7, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013rnbd_client L111: map_device: too many (> %zu) paths provided\0A\00", [63 x i8] zeroinitializer }, align 32
@rnbd_clt_parse_map_options._entry_ptr.13 = internal global ptr @rnbd_clt_parse_map_options._entry.11, section ".printk_index", align 4
@rnbd_clt_parse_map_options._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.7, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013rnbd_client L125: Can't parse path %s: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@rnbd_clt_parse_map_options._entry_ptr.16 = internal global ptr @rnbd_clt_parse_map_options._entry.14, section ".printk_index", align 4
@rnbd_clt_parse_map_options._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str.7, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013rnbd_client L142: map_device: Device path too long\0A\00", [42 x i8] zeroinitializer }, align 32
@rnbd_clt_parse_map_options._entry_ptr.19 = internal global ptr @rnbd_clt_parse_map_options._entry.17, section ".printk_index", align 4
@rnbd_clt_parse_map_options._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.10, ptr @.str.7, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013rnbd_client L155: bad destination port number parameter '%d'\0A\00", [32 x i8] zeroinitializer }, align 32
@rnbd_clt_parse_map_options._entry_ptr.22 = internal global ptr @rnbd_clt_parse_map_options._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ro\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rw\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"migration\00", [22 x i8] zeroinitializer }, align 32
@rnbd_clt_parse_map_options._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.10, ptr @.str.7, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013rnbd_client L177: map_device: Invalid access_mode: '%s'\0A\00", [37 x i8] zeroinitializer }, align 32
@rnbd_clt_parse_map_options._entry_ptr.28 = internal global ptr @rnbd_clt_parse_map_options._entry.26, section ".printk_index", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@rnbd_clt_parse_map_options._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.10, ptr @.str.7, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013rnbd_client L190: bad nr_poll_queues parameter '%d'\0A\00", [41 x i8] zeroinitializer }, align 32
@rnbd_clt_parse_map_options._entry_ptr.31 = internal global ptr @rnbd_clt_parse_map_options._entry.29, section ".printk_index", align 4
@rnbd_clt_parse_map_options._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.10, ptr @.str.7, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013rnbd_client L201: map_device: Unknown parameter or missing value '%s'\0A\00", [55 x i8] zeroinitializer }, align 32
@rnbd_clt_parse_map_options._entry_ptr.34 = internal global ptr @rnbd_clt_parse_map_options._entry.32, section ".printk_index", align 4
@rnbd_clt_parse_map_options._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.10, ptr @.str.7, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013rnbd_client L211: map_device: Parameters missing\0A\00", [44 x i8] zeroinitializer }, align 32
@rnbd_clt_parse_map_options._entry_ptr.37 = internal global ptr @rnbd_clt_parse_map_options._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"path=%s\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"device_path=%s\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dest_port=%d\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"access_mode=%s\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sessname=%s\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nr_poll_queues=%d\00", [46 x i8] zeroinitializer }, align 32
@rnbd_dev_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr null, ptr @kobj_sysfs_ops, ptr null, ptr @rnbd_dev_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rnbd\00", [27 x i8] zeroinitializer }, align 32
@rnbd_clt_add_dev_kobj._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.7, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013rnbd_client L490: <%s@%s> Failed to create device sysfs dir, err: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rnbd_clt_add_dev_kobj\00", [42 x i8] zeroinitializer }, align 32
@rnbd_clt_add_dev_kobj._entry_ptr = internal global ptr @rnbd_clt_add_dev_kobj._entry, section ".printk_index", align 4
@kobj_sysfs_ops = external dso_local constant %struct.sysfs_ops, align 4
@rnbd_dev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @rnbd_dev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@rnbd_dev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rnbd_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@rnbd_dev_attrs = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @rnbd_clt_unmap_device_attr, ptr @rnbd_clt_resize_dev_attr, ptr @rnbd_clt_remap_device_attr, ptr @rnbd_clt_mapping_path_attr, ptr @rnbd_clt_state_attr, ptr @rnbd_clt_session_attr, ptr @rnbd_clt_access_mode, ptr @rnbd_clt_nr_poll_queues, ptr null], [60 x i8] zeroinitializer }, align 32
@rnbd_clt_unmap_device_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rnbd_clt_unmap_dev_show, ptr @rnbd_clt_unmap_dev_store }, [36 x i8] zeroinitializer }, align 32
@rnbd_clt_resize_dev_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rnbd_clt_resize_dev_show, ptr @rnbd_clt_resize_dev_store }, [36 x i8] zeroinitializer }, align 32
@rnbd_clt_remap_device_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rnbd_clt_remap_dev_show, ptr @rnbd_clt_remap_dev_store }, [36 x i8] zeroinitializer }, align 32
@rnbd_clt_mapping_path_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.67, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mapping_path_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@rnbd_clt_state_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.69, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @state_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@rnbd_clt_session_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.75, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @session_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@rnbd_clt_access_mode = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.76, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @access_mode_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@rnbd_clt_nr_poll_queues = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.77, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nr_poll_queues_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unmap_device\00", [19 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Usage: echo <normal|force> > %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"normal\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"force\00", [26 x i8] zeroinitializer }, align 32
@rnbd_clt_unmap_dev_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.7, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013rnbd_client L316: <%s@%s> unmap_device: Invalid value: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rnbd_clt_unmap_dev_store\00", [39 x i8] zeroinitializer }, align 32
@rnbd_clt_unmap_dev_store._entry_ptr = internal global ptr @rnbd_clt_unmap_dev_store._entry, section ".printk_index", align 4
@rnbd_clt_unmap_dev_store._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.7, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016rnbd_client L322: <%s@%s> Unmapping device, option: %s.\0A\00", [37 x i8] zeroinitializer }, align 32
@rnbd_clt_unmap_dev_store._entry_ptr.56 = internal global ptr @rnbd_clt_unmap_dev_store._entry.54, section ".printk_index", align 4
@rnbd_clt_unmap_dev_store._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.7, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013rnbd_client L335: <%s@%s> unmap_device: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@rnbd_clt_unmap_dev_store._entry_ptr.59 = internal global ptr @rnbd_clt_unmap_dev_store._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"resize\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Usage: echo <new size in sectors> > %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"remap_device\00", [19 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Usage: echo <1> > %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@rnbd_clt_remap_dev_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.7, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013rnbd_client L413: <%s@%s> remap_device: Invalid value: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rnbd_clt_remap_dev_store\00", [39 x i8] zeroinitializer }, align 32
@rnbd_clt_remap_dev_store._entry_ptr = internal global ptr @rnbd_clt_remap_dev_store._entry, section ".printk_index", align 4
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mapping_path\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"init\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"open\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"closed\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"unmapped\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unknown\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"session\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"access_mode\00", [20 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nr_poll_queues\00", [17 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@rnbd_clt_add_dev_symlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.7, i32 532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013rnbd_client L532: <%s@%s> Failed to allocate memory for blk_symlink_name\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rnbd_clt_add_dev_symlink\00", [39 x i8] zeroinitializer }, align 32
@rnbd_clt_add_dev_symlink._entry_ptr = internal global ptr @rnbd_clt_add_dev_symlink._entry, section ".printk_index", align 4
@rnbd_clt_add_dev_symlink._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.7, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013rnbd_client L540: <%s@%s> Failed to get /sys/block symlink path, err: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@rnbd_clt_add_dev_symlink._entry_ptr.83 = internal global ptr @rnbd_clt_add_dev_symlink._entry.81, section ".printk_index", align 4
@rnbd_clt_add_dev_symlink._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.7, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013rnbd_client L548: <%s@%s> Creating /sys/block symlink failed, err: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@rnbd_clt_add_dev_symlink._entry_ptr.86 = internal global ptr @rnbd_clt_add_dev_symlink._entry.84, section ".printk_index", align 4
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s@%s\00", [26 x i8] zeroinitializer }, align 32
@switch.table.state_show = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 64, i64 128]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967182]
@___asan_gen_.89 = private unnamed_addr constant [15 x i8] c"rnbd_devs_kobj\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 28, i32 24 }
@___asan_gen_.92 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 649, i32 19 }
@___asan_gen_.98 = private unnamed_addr constant [15 x i8] c"rnbd_dev_class\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 27, i32 22 }
@___asan_gen_.101 = private unnamed_addr constant [20 x i8] c"default_attr_groups\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 640, i32 38 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 655, i32 33 }
@___asan_gen_.107 = private unnamed_addr constant [9 x i8] c"rnbd_dev\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 26, i32 23 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 660, i32 42 }
@___asan_gen_.113 = private unnamed_addr constant [19 x i8] c"default_attr_group\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 636, i32 31 }
@___asan_gen_.116 = private unnamed_addr constant [14 x i8] c"default_attrs\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 631, i32 26 }
@___asan_gen_.119 = private unnamed_addr constant [25 x i8] c"rnbd_clt_map_device_attr\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 627, i32 30 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 628, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 503, i32 6 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 597, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 84, i32 31 }
@___asan_gen_.143 = private unnamed_addr constant [16 x i8] c"rnbd_opt_tokens\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 45, i32 28 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 99, i32 5 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 110, i32 5 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 125, i32 5 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 142, i32 5 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 154, i32 5 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 169, i32 19 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 171, i32 26 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 173, i32 26 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 176, i32 5 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 189, i32 5 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 200, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 211, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 46, i32 20 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 47, i32 23 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 48, i32 24 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 49, i32 26 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 50, i32 23 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 51, i32 28 }
@___asan_gen_.230 = private unnamed_addr constant [15 x i8] c"rnbd_dev_ktype\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 476, i32 25 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 486, i32 67 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 487, i32 8 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 489, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant [16 x i8] c"rnbd_dev_groups\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [15 x i8] c"rnbd_dev_group\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 455, i32 1 }
@___asan_gen_.254 = private unnamed_addr constant [15 x i8] c"rnbd_dev_attrs\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 444, i32 26 }
@___asan_gen_.257 = private unnamed_addr constant [27 x i8] c"rnbd_clt_unmap_device_attr\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 353, i32 30 }
@___asan_gen_.260 = private unnamed_addr constant [25 x i8] c"rnbd_clt_resize_dev_attr\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 386, i32 30 }
@___asan_gen_.263 = private unnamed_addr constant [27 x i8] c"rnbd_clt_remap_device_attr\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 427, i32 30 }
@___asan_gen_.266 = private unnamed_addr constant [27 x i8] c"rnbd_clt_mapping_path_attr\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 271, i32 30 }
@___asan_gen_.269 = private unnamed_addr constant [20 x i8] c"rnbd_clt_state_attr\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 246, i32 30 }
@___asan_gen_.272 = private unnamed_addr constant [22 x i8] c"rnbd_clt_session_attr\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 441, i32 30 }
@___asan_gen_.275 = private unnamed_addr constant [21 x i8] c"rnbd_clt_access_mode\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 284, i32 30 }
@___asan_gen_.278 = private unnamed_addr constant [24 x i8] c"rnbd_clt_nr_poll_queues\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 258, i32 30 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 354, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 290, i32 26 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 309, i32 27 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 311, i32 34 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 314, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 321, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 335, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 387, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 361, i32 26 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 428, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 393, i32 26 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 410, i32 28 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 411, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 272, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 268, i32 26 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 246, i32 52 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 232, i32 27 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 235, i32 27 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 238, i32 27 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 240, i32 27 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 242, i32 27 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 442, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 285, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 259, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 255, i32 26 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 532, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 539, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 547, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.396 = private constant [39 x i8] c"../drivers/block/rnbd/rnbd-clt-sysfs.c\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 517, i32 27 }
@___asan_gen_.398 = private unnamed_addr constant [24 x i8] c"switch.table.state_show\00", align 1
@llvm.compiler.used = appending global [122 x ptr] [ptr @rnbd_clt_add_dev_kobj._entry, ptr @rnbd_clt_add_dev_kobj._entry_ptr, ptr @rnbd_clt_add_dev_symlink._entry, ptr @rnbd_clt_add_dev_symlink._entry.81, ptr @rnbd_clt_add_dev_symlink._entry.84, ptr @rnbd_clt_add_dev_symlink._entry_ptr, ptr @rnbd_clt_add_dev_symlink._entry_ptr.83, ptr @rnbd_clt_add_dev_symlink._entry_ptr.86, ptr @rnbd_clt_map_device_store._entry, ptr @rnbd_clt_map_device_store._entry_ptr, ptr @rnbd_clt_parse_map_options._entry, ptr @rnbd_clt_parse_map_options._entry.11, ptr @rnbd_clt_parse_map_options._entry.14, ptr @rnbd_clt_parse_map_options._entry.17, ptr @rnbd_clt_parse_map_options._entry.20, ptr @rnbd_clt_parse_map_options._entry.26, ptr @rnbd_clt_parse_map_options._entry.29, ptr @rnbd_clt_parse_map_options._entry.32, ptr @rnbd_clt_parse_map_options._entry.35, ptr @rnbd_clt_parse_map_options._entry_ptr, ptr @rnbd_clt_parse_map_options._entry_ptr.13, ptr @rnbd_clt_parse_map_options._entry_ptr.16, ptr @rnbd_clt_parse_map_options._entry_ptr.19, ptr @rnbd_clt_parse_map_options._entry_ptr.22, ptr @rnbd_clt_parse_map_options._entry_ptr.28, ptr @rnbd_clt_parse_map_options._entry_ptr.31, ptr @rnbd_clt_parse_map_options._entry_ptr.34, ptr @rnbd_clt_parse_map_options._entry_ptr.37, ptr @rnbd_clt_remap_dev_store._entry, ptr @rnbd_clt_remap_dev_store._entry_ptr, ptr @rnbd_clt_unmap_dev_store._entry, ptr @rnbd_clt_unmap_dev_store._entry.54, ptr @rnbd_clt_unmap_dev_store._entry.57, ptr @rnbd_clt_unmap_dev_store._entry_ptr, ptr @rnbd_clt_unmap_dev_store._entry_ptr.56, ptr @rnbd_clt_unmap_dev_store._entry_ptr.59, ptr @rnbd_devs_kobj, ptr @rnbd_clt_create_sysfs_files.__key, ptr @.str, ptr @rnbd_dev_class, ptr @default_attr_groups, ptr @.str.1, ptr @rnbd_dev, ptr @.str.2, ptr @default_attr_group, ptr @default_attrs, ptr @rnbd_clt_map_device_attr, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @rnbd_opt_tokens, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @rnbd_dev_ktype, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @rnbd_dev_groups, ptr @rnbd_dev_group, ptr @rnbd_dev_attrs, ptr @rnbd_clt_unmap_device_attr, ptr @rnbd_clt_resize_dev_attr, ptr @rnbd_clt_remap_device_attr, ptr @rnbd_clt_mapping_path_attr, ptr @rnbd_clt_state_attr, ptr @rnbd_clt_session_attr, ptr @rnbd_clt_access_mode, ptr @rnbd_clt_nr_poll_queues, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.85, ptr @.str.87, ptr @switch.table.state_show], section "llvm.metadata"
@0 = internal global [104 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_devs_kobj to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_create_sysfs_files.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_dev_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_map_device_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 294, i32 384, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_map_device_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_opt_tokens to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_parse_map_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_parse_map_options._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_parse_map_options._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_parse_map_options._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_parse_map_options._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_parse_map_options._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_parse_map_options._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_parse_map_options._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_parse_map_options._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_dev_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_add_dev_kobj._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_dev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_dev_attrs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_unmap_device_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_resize_dev_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_remap_device_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_mapping_path_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_state_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_session_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_access_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_nr_poll_queues to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_unmap_dev_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_unmap_dev_store._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_unmap_dev_store._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_remap_dev_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_add_dev_symlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_add_dev_symlink._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_clt_add_dev_symlink._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.state_show to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rnbd_clt_remove_dev_symlink(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %blk_symlink_name = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 28
  %0 = ptrtoint ptr %blk_symlink_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %blk_symlink_name, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call zeroext i1 @try_module_get(ptr noundef null) #8
  br i1 %call, label %if.then1, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load ptr, ptr @rnbd_devs_kobj, align 4
  %3 = ptrtoint ptr %blk_symlink_name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %blk_symlink_name, align 4
  tail call void @sysfs_remove_link(ptr noundef %2, ptr noundef %4) #8
  tail call void @module_put(ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  %5 = ptrtoint ptr %blk_symlink_name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %blk_symlink_name, align 4
  tail call void @kfree(ptr noundef %6) #8
  %7 = ptrtoint ptr %blk_symlink_name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %blk_symlink_name, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rnbd_clt_create_sysfs_files() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @rnbd_clt_create_sysfs_files.__key) #8
  store ptr %call, ptr @rnbd_dev_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr (ptr, ptr, i32, ptr, ptr, ptr, ...) @device_create_with_groups(ptr noundef %call, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull @default_attr_groups, ptr noundef nonnull @.str.1) #8
  store ptr %call3, ptr @rnbd_dev, align 4
  %cmp.i11 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i11, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call3 to i32
  br label %cls_destroy

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.2, ptr noundef %call3) #8
  store ptr %call8, ptr @rnbd_devs_kobj, align 4
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.then9, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load ptr, ptr @rnbd_dev_class, align 4
  tail call void @device_destroy(ptr noundef %2, i32 noundef 0) #8
  br label %cls_destroy

cls_destroy:                                      ; preds = %if.then9, %if.then5
  %err.0 = phi i32 [ %1, %if.then5 ], [ -12, %if.then9 ]
  %3 = load ptr, ptr @rnbd_dev_class, align 4
  tail call void @class_destroy(ptr noundef %3) #8
  br label %cleanup

cleanup:                                          ; preds = %cls_destroy, %if.end7.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %err.0, %cls_destroy ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create_with_groups(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rnbd_clt_destroy_sysfs_files() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @rnbd_dev, align 4
  tail call void @sysfs_remove_group(ptr noundef %0, ptr noundef nonnull @default_attr_group) #8
  %1 = load ptr, ptr @rnbd_devs_kobj, align 4
  tail call void @kobject_del(ptr noundef %1) #8
  %2 = load ptr, ptr @rnbd_devs_kobj, align 4
  tail call void @kobject_put(ptr noundef %2) #8
  %3 = load ptr, ptr @rnbd_dev_class, align 4
  tail call void @device_destroy(ptr noundef %3, i32 noundef 0) #8
  %4 = load ptr, ptr @rnbd_dev_class, align 4
  tail call void @class_destroy(ptr noundef %4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rnbd_clt_map_device_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readonly %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.4, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rnbd_clt_map_device_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %sep_opt.i = alloca ptr, align 4
  %args.i = alloca [3 x %struct.substring_t], align 4
  %nr_poll_queues.i = alloca i32, align 4
  %dest_port.i = alloca i32, align 4
  %pathname = alloca [255 x i8], align 1
  %sessname = alloca [255 x i8], align 1
  %paths = alloca [6 x %struct.rtrs_addr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %pathname) #8
  %0 = call ptr @memset(ptr %pathname, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %sessname) #8
  %1 = call ptr @memset(ptr %sessname, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %paths) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1536) #11
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %3 = ptrtoint ptr %paths to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i.i, ptr %paths, align 4
  %arrayidx11 = getelementptr %struct.__kernel_sockaddr_storage, ptr %call7.i.i.i, i32 1
  %dst = getelementptr inbounds [6 x %struct.rtrs_addr], ptr %paths, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx11, ptr %dst, align 4
  %arrayidx.1 = getelementptr %struct.__kernel_sockaddr_storage, ptr %call7.i.i.i, i32 2
  %arrayidx9.1 = getelementptr inbounds [6 x %struct.rtrs_addr], ptr %paths, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx.1, ptr %arrayidx9.1, align 4
  %arrayidx11.1 = getelementptr %struct.__kernel_sockaddr_storage, ptr %call7.i.i.i, i32 3
  %dst.1 = getelementptr inbounds [6 x %struct.rtrs_addr], ptr %paths, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %dst.1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx11.1, ptr %dst.1, align 4
  %arrayidx.2 = getelementptr %struct.__kernel_sockaddr_storage, ptr %call7.i.i.i, i32 4
  %arrayidx9.2 = getelementptr inbounds [6 x %struct.rtrs_addr], ptr %paths, i32 0, i32 2
  %7 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx.2, ptr %arrayidx9.2, align 4
  %arrayidx11.2 = getelementptr %struct.__kernel_sockaddr_storage, ptr %call7.i.i.i, i32 5
  %dst.2 = getelementptr inbounds [6 x %struct.rtrs_addr], ptr %paths, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %dst.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx11.2, ptr %dst.2, align 4
  %arrayidx.3 = getelementptr %struct.__kernel_sockaddr_storage, ptr %call7.i.i.i, i32 6
  %arrayidx9.3 = getelementptr inbounds [6 x %struct.rtrs_addr], ptr %paths, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx.3, ptr %arrayidx9.3, align 4
  %arrayidx11.3 = getelementptr %struct.__kernel_sockaddr_storage, ptr %call7.i.i.i, i32 7
  %dst.3 = getelementptr inbounds [6 x %struct.rtrs_addr], ptr %paths, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %dst.3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx11.3, ptr %dst.3, align 4
  %arrayidx.4 = getelementptr %struct.__kernel_sockaddr_storage, ptr %call7.i.i.i, i32 8
  %arrayidx9.4 = getelementptr inbounds [6 x %struct.rtrs_addr], ptr %paths, i32 0, i32 4
  %11 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx.4, ptr %arrayidx9.4, align 4
  %arrayidx11.4 = getelementptr %struct.__kernel_sockaddr_storage, ptr %call7.i.i.i, i32 9
  %dst.4 = getelementptr inbounds [6 x %struct.rtrs_addr], ptr %paths, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %dst.4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx11.4, ptr %dst.4, align 4
  %arrayidx.5 = getelementptr %struct.__kernel_sockaddr_storage, ptr %call7.i.i.i, i32 10
  %arrayidx9.5 = getelementptr inbounds [6 x %struct.rtrs_addr], ptr %paths, i32 0, i32 5
  %13 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx.5, ptr %arrayidx9.5, align 4
  %arrayidx11.5 = getelementptr %struct.__kernel_sockaddr_storage, ptr %call7.i.i.i, i32 11
  %dst.5 = getelementptr inbounds [6 x %struct.rtrs_addr], ptr %paths, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %dst.5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx11.5, ptr %dst.5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sep_opt.i) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args.i) #8
  %15 = call ptr @memset(ptr %args.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_poll_queues.i) #8
  %16 = ptrtoint ptr %nr_poll_queues.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %nr_poll_queues.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dest_port.i) #8
  %17 = ptrtoint ptr %dest_port.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %dest_port.i, align 4
  %call.i = tail call noalias ptr @kstrdup(ptr noundef %buf, i32 noundef 3264) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %rnbd_clt_parse_map_options.exit.thread, label %if.end.i

rnbd_clt_parse_map_options.exit.thread:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dest_port.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_poll_queues.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sep_opt.i) #8
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %for.body.preheader
  %call.i.i = tail call ptr @strim(ptr noundef nonnull %call.i) #8
  %18 = ptrtoint ptr %sep_opt.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i.i, ptr %sep_opt.i, align 4
  br label %while.cond.outer.i.outer

while.cond.outer.i.outer:                         ; preds = %if.end72.i, %if.end.i
  %port_nr.0.ph = phi i16 [ %conv.i, %if.end72.i ], [ 1234, %if.end.i ]
  %access_mode.0.ph = phi i32 [ %access_mode.0.ph291, %if.end72.i ], [ 1, %if.end.i ]
  %nr_poll_queues.0.ph = phi i32 [ %nr_poll_queues.0.ph296, %if.end72.i ], [ 0, %if.end.i ]
  %p_cnt.0.ph.i.ph = phi i32 [ %p_cnt.0.ph.i.ph300, %if.end72.i ], [ 0, %if.end.i ]
  %opt_mask.0.ph.i.ph = phi i32 [ %or.i, %if.end72.i ], [ 0, %if.end.i ]
  br label %while.cond.outer.i.outer290

while.cond.outer.i.outer290:                      ; preds = %if.end100.i, %while.cond.outer.i.outer
  %access_mode.0.ph291 = phi i32 [ %access_mode.0.ph, %while.cond.outer.i.outer ], [ %.sink.i, %if.end100.i ]
  %nr_poll_queues.0.ph292 = phi i32 [ %nr_poll_queues.0.ph, %while.cond.outer.i.outer ], [ %nr_poll_queues.0.ph296, %if.end100.i ]
  %p_cnt.0.ph.i.ph293 = phi i32 [ %p_cnt.0.ph.i.ph, %while.cond.outer.i.outer ], [ %p_cnt.0.ph.i.ph300, %if.end100.i ]
  %opt_mask.0.ph.i.ph294 = phi i32 [ %opt_mask.0.ph.i.ph, %while.cond.outer.i.outer ], [ %or.i, %if.end100.i ]
  br label %while.cond.outer.i.outer295

while.cond.outer.i.outer295:                      ; preds = %if.end121.i, %while.cond.outer.i.outer290
  %nr_poll_queues.0.ph296 = phi i32 [ %nr_poll_queues.0.ph292, %while.cond.outer.i.outer290 ], [ %35, %if.end121.i ]
  %p_cnt.0.ph.i.ph297 = phi i32 [ %p_cnt.0.ph.i.ph293, %while.cond.outer.i.outer290 ], [ %p_cnt.0.ph.i.ph300, %if.end121.i ]
  %opt_mask.0.ph.i.ph298 = phi i32 [ %opt_mask.0.ph.i.ph294, %while.cond.outer.i.outer290 ], [ %or.i, %if.end121.i ]
  br label %while.cond.outer.i.outer299

while.cond.outer.i.outer299:                      ; preds = %if.end42.i, %while.cond.outer.i.outer295
  %p_cnt.0.ph.i.ph300 = phi i32 [ %p_cnt.0.ph.i.ph297, %while.cond.outer.i.outer295 ], [ %inc.i, %if.end42.i ]
  %opt_mask.0.ph.i.ph301 = phi i32 [ %opt_mask.0.ph.i.ph298, %while.cond.outer.i.outer295 ], [ %or.i, %if.end42.i ]
  br label %while.cond.outer.i

while.cond.outer.i:                               ; preds = %while.cond.outer.i.backedge, %while.cond.outer.i.outer299
  %opt_mask.0.ph.i = phi i32 [ %opt_mask.0.ph.i.ph301, %while.cond.outer.i.outer299 ], [ %or.i, %while.cond.outer.i.backedge ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.cond.outer.i
  %call2.i = call ptr @strsep(ptr noundef nonnull %sep_opt.i, ptr noundef nonnull @.str.8) #8
  %cmp.not.i = icmp eq ptr %call2.i, null
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %while.body.i

for.cond.preheader.i:                             ; preds = %while.cond.i
  %19 = and i32 %opt_mask.0.ph.i, 68
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %19)
  %.not.i = icmp eq i32 %19, 68
  br i1 %.not.i, label %do.end, label %do.end136.i

while.body.i:                                     ; preds = %while.cond.i
  %20 = ptrtoint ptr %call2.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %call2.i, align 1
  %tobool3.not.i = icmp eq i8 %21, 0
  br i1 %tobool3.not.i, label %while.body.i.while.cond.i_crit_edge, label %if.end5.i

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

if.end5.i:                                        ; preds = %while.body.i
  %call6.i = call i32 @match_token(ptr noundef nonnull %call2.i, ptr noundef nonnull @rnbd_opt_tokens, ptr noundef nonnull %args.i) #8
  %or.i = or i32 %call6.i, %opt_mask.0.ph.i
  %22 = zext i32 %call6.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call6.i, label %do.end125.i [
    i32 64, label %sw.bb.i
    i32 2, label %sw.bb18.i
    i32 4, label %sw.bb43.i
    i32 1, label %sw.bb59.i
    i32 8, label %sw.bb74.i
    i32 128, label %sw.bb101.i
  ]

sw.bb.i:                                          ; preds = %if.end5.i
  %call8.i = call ptr @match_strdup(ptr noundef nonnull %args.i) #8
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %sw.bb.i.rnbd_clt_parse_map_options.exit.thread70_crit_edge, label %if.end11.i

sw.bb.i.rnbd_clt_parse_map_options.exit.thread70_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rnbd_clt_parse_map_options.exit.thread70

if.end11.i:                                       ; preds = %sw.bb.i
  %call12.i = call i32 @strlen(ptr noundef nonnull %call8.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call12.i)
  %cmp13.i = icmp ugt i32 %call12.i, 255
  br i1 %cmp13.i, label %do.end.i, label %if.end16.i

do.end.i:                                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #13
  call void @kfree(ptr noundef nonnull %call8.i) #8
  br label %rnbd_clt_parse_map_options.exit.thread70

if.end16.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i = call i32 @strscpy(ptr noundef nonnull %sessname, ptr noundef nonnull %call8.i, i32 noundef 255) #8
  call void @kfree(ptr noundef nonnull %call8.i) #8
  br label %while.cond.outer.i.backedge

sw.bb18.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %p_cnt.0.ph.i.ph300)
  %cmp19.i = icmp ugt i32 %p_cnt.0.ph.i.ph300, 5
  br i1 %cmp19.i, label %do.end23.i, label %if.end26.i

do.end23.i:                                       ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #10
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 6) #13
  br label %rnbd_clt_parse_map_options.exit.thread70

if.end26.i:                                       ; preds = %sw.bb18.i
  %call28.i = call ptr @match_strdup(ptr noundef nonnull %args.i) #8
  %tobool29.not.i = icmp eq ptr %call28.i, null
  br i1 %tobool29.not.i, label %if.end26.i.rnbd_clt_parse_map_options.exit.thread70_crit_edge, label %if.end31.i

if.end26.i.rnbd_clt_parse_map_options.exit.thread70_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rnbd_clt_parse_map_options.exit.thread70

if.end31.i:                                       ; preds = %if.end26.i
  %call32.i = call i32 @strlen(ptr noundef nonnull %call28.i) #12
  %arrayidx.i = getelementptr %struct.rtrs_addr, ptr %paths, i32 %p_cnt.0.ph.i.ph300
  %call34.i = call i32 @rtrs_addr_to_sockaddr(ptr noundef nonnull %call28.i, i32 noundef %call32.i, i16 noundef zeroext %port_nr.0.ph, ptr noundef %arrayidx.i) #8
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end42.i, label %do.end39.i

do.end39.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  %call41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull %call28.i, i32 noundef %call34.i) #13
  call void @kfree(ptr noundef nonnull %call28.i) #8
  br label %rnbd_clt_parse_map_options.exit.thread70

if.end42.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i = add nuw nsw i32 %p_cnt.0.ph.i.ph300, 1
  call void @kfree(ptr noundef nonnull %call28.i) #8
  br label %while.cond.outer.i.outer299

sw.bb43.i:                                        ; preds = %if.end5.i
  %call45.i = call ptr @match_strdup(ptr noundef nonnull %args.i) #8
  %tobool46.not.i = icmp eq ptr %call45.i, null
  br i1 %tobool46.not.i, label %sw.bb43.i.rnbd_clt_parse_map_options.exit.thread70_crit_edge, label %if.end48.i

sw.bb43.i.rnbd_clt_parse_map_options.exit.thread70_crit_edge: ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rnbd_clt_parse_map_options.exit.thread70

if.end48.i:                                       ; preds = %sw.bb43.i
  %call49.i = call i32 @strlen(ptr noundef nonnull %call45.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call49.i)
  %cmp50.i = icmp ugt i32 %call49.i, 255
  br i1 %cmp50.i, label %do.end54.i, label %if.end57.i

do.end54.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  %call56.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #13
  call void @kfree(ptr noundef nonnull %call45.i) #8
  br label %rnbd_clt_parse_map_options.exit.thread70

if.end57.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  %call58.i = call i32 @strscpy(ptr noundef nonnull %pathname, ptr noundef nonnull %call45.i, i32 noundef 255) #8
  call void @kfree(ptr noundef nonnull %call45.i) #8
  br label %while.cond.outer.i.backedge

while.cond.outer.i.backedge:                      ; preds = %if.end57.i, %if.end16.i
  br label %while.cond.outer.i

sw.bb59.i:                                        ; preds = %if.end5.i
  %call61.i = call i32 @match_int(ptr noundef nonnull %args.i, ptr noundef nonnull %dest_port.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %lor.lhs.false.i, label %sw.bb59.i.do.end69.i_crit_edge

sw.bb59.i.do.end69.i_crit_edge:                   ; preds = %sw.bb59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end69.i

lor.lhs.false.i:                                  ; preds = %sw.bb59.i
  %23 = ptrtoint ptr %dest_port.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dest_port.i, align 4
  %25 = icmp ugt i32 %24, 65535
  br i1 %25, label %lor.lhs.false.i.do.end69.i_crit_edge, label %if.end72.i

lor.lhs.false.i.do.end69.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end69.i

do.end69.i:                                       ; preds = %lor.lhs.false.i.do.end69.i_crit_edge, %sw.bb59.i.do.end69.i_crit_edge
  %26 = ptrtoint ptr %dest_port.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dest_port.i, align 4
  %call71.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %27) #13
  br label %rnbd_clt_parse_map_options.exit.thread70

if.end72.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = trunc i32 %24 to i16
  br label %while.cond.outer.i.outer

sw.bb74.i:                                        ; preds = %if.end5.i
  %call76.i = call ptr @match_strdup(ptr noundef nonnull %args.i) #8
  %tobool77.not.i = icmp eq ptr %call76.i, null
  br i1 %tobool77.not.i, label %sw.bb74.i.rnbd_clt_parse_map_options.exit.thread70_crit_edge, label %if.end79.i

sw.bb74.i.rnbd_clt_parse_map_options.exit.thread70_crit_edge: ; preds = %sw.bb74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rnbd_clt_parse_map_options.exit.thread70

if.end79.i:                                       ; preds = %sw.bb74.i
  %call80.i = call i32 @strcmp(ptr noundef nonnull %call76.i, ptr noundef nonnull dereferenceable(3) @.str.23) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i)
  %tobool81.not.i = icmp eq i32 %call80.i, 0
  br i1 %tobool81.not.i, label %if.end79.i.if.end100.i_crit_edge, label %if.else.i

if.end79.i.if.end100.i_crit_edge:                 ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100.i

if.else.i:                                        ; preds = %if.end79.i
  %call83.i = call i32 @strcmp(ptr noundef nonnull %call76.i, ptr noundef nonnull dereferenceable(3) @.str.24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i)
  %tobool84.not.i = icmp eq i32 %call83.i, 0
  br i1 %tobool84.not.i, label %if.else.i.if.end100.i_crit_edge, label %if.else87.i

if.else.i.if.end100.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100.i

if.else87.i:                                      ; preds = %if.else.i
  %call88.i = call i32 @strcmp(ptr noundef nonnull %call76.i, ptr noundef nonnull dereferenceable(10) @.str.25) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.i)
  %tobool89.not.i = icmp eq i32 %call88.i, 0
  br i1 %tobool89.not.i, label %if.else87.i.if.end100.i_crit_edge, label %do.end95.i

if.else87.i.if.end100.i_crit_edge:                ; preds = %if.else87.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100.i

do.end95.i:                                       ; preds = %if.else87.i
  call void @__sanitizer_cov_trace_pc() #10
  %call97.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull %call76.i) #13
  call void @kfree(ptr noundef nonnull %call76.i) #8
  br label %rnbd_clt_parse_map_options.exit.thread70

if.end100.i:                                      ; preds = %if.else87.i.if.end100.i_crit_edge, %if.else.i.if.end100.i_crit_edge, %if.end79.i.if.end100.i_crit_edge
  %.sink.i = phi i32 [ 0, %if.end79.i.if.end100.i_crit_edge ], [ 1, %if.else.i.if.end100.i_crit_edge ], [ 2, %if.else87.i.if.end100.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call76.i) #8
  br label %while.cond.outer.i.outer290

sw.bb101.i:                                       ; preds = %if.end5.i
  %call103.i = call i32 @match_int(ptr noundef nonnull %args.i, ptr noundef nonnull %nr_poll_queues.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103.i)
  %tobool104.not.i = icmp eq i32 %call103.i, 0
  br i1 %tobool104.not.i, label %lor.lhs.false105.i, label %sw.bb101.i.do.end114.i_crit_edge

sw.bb101.i.do.end114.i_crit_edge:                 ; preds = %sw.bb101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end114.i

lor.lhs.false105.i:                               ; preds = %sw.bb101.i
  %28 = ptrtoint ptr %nr_poll_queues.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nr_poll_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp106.i = icmp slt i32 %29, -1
  br i1 %cmp106.i, label %lor.lhs.false105.i.do.end114.i_crit_edge, label %lor.lhs.false108.i

lor.lhs.false105.i.do.end114.i_crit_edge:         ; preds = %lor.lhs.false105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end114.i

lor.lhs.false108.i:                               ; preds = %lor.lhs.false105.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %30 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %30)
  %cmp109.i = icmp sgt i32 %29, %30
  br i1 %cmp109.i, label %lor.lhs.false108.i.do.end114.i_crit_edge, label %if.end117.i

lor.lhs.false108.i.do.end114.i_crit_edge:         ; preds = %lor.lhs.false108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end114.i

do.end114.i:                                      ; preds = %lor.lhs.false108.i.do.end114.i_crit_edge, %lor.lhs.false105.i.do.end114.i_crit_edge, %sw.bb101.i.do.end114.i_crit_edge
  %31 = ptrtoint ptr %nr_poll_queues.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr_poll_queues.i, align 4
  %call116.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %32) #13
  br label %rnbd_clt_parse_map_options.exit.thread70

if.end117.i:                                      ; preds = %lor.lhs.false108.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp118.i = icmp eq i32 %29, -1
  br i1 %cmp118.i, label %if.then120.i, label %if.end117.i.if.end121.i_crit_edge

if.end117.i.if.end121.i_crit_edge:                ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121.i

if.then120.i:                                     ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %nr_poll_queues.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %30, ptr %nr_poll_queues.i, align 4
  br label %if.end121.i

if.end121.i:                                      ; preds = %if.then120.i, %if.end117.i.if.end121.i_crit_edge
  %34 = ptrtoint ptr %nr_poll_queues.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr_poll_queues.i, align 4
  br label %while.cond.outer.i.outer295

do.end125.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call127.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull %call2.i) #13
  br label %rnbd_clt_parse_map_options.exit.thread70

do.end136.i:                                      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %call138.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #13
  br label %rnbd_clt_parse_map_options.exit.thread70

rnbd_clt_parse_map_options.exit.thread70:         ; preds = %do.end136.i, %do.end125.i, %do.end114.i, %do.end95.i, %sw.bb74.i.rnbd_clt_parse_map_options.exit.thread70_crit_edge, %do.end69.i, %do.end54.i, %sw.bb43.i.rnbd_clt_parse_map_options.exit.thread70_crit_edge, %do.end39.i, %if.end26.i.rnbd_clt_parse_map_options.exit.thread70_crit_edge, %do.end23.i, %do.end.i, %sw.bb.i.rnbd_clt_parse_map_options.exit.thread70_crit_edge
  %ret.3.i.ph = phi i32 [ -22, %do.end136.i ], [ -22, %do.end.i ], [ %call34.i, %do.end39.i ], [ -12, %do.end23.i ], [ -22, %do.end54.i ], [ -22, %do.end69.i ], [ -22, %do.end95.i ], [ -22, %do.end114.i ], [ -22, %do.end125.i ], [ -12, %sw.bb74.i.rnbd_clt_parse_map_options.exit.thread70_crit_edge ], [ -12, %sw.bb43.i.rnbd_clt_parse_map_options.exit.thread70_crit_edge ], [ -12, %sw.bb.i.rnbd_clt_parse_map_options.exit.thread70_crit_edge ], [ -12, %if.end26.i.rnbd_clt_parse_map_options.exit.thread70_crit_edge ]
  call void @kfree(ptr noundef nonnull %call.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dest_port.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_poll_queues.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sep_opt.i) #8
  br label %cleanup.sink.split

do.end:                                           ; preds = %for.cond.preheader.i
  call void @kfree(ptr noundef nonnull %call.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dest_port.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_poll_queues.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sep_opt.i) #8
  %call19 = call ptr @rnbd_access_mode_str(i32 noundef %access_mode.0.ph291) #8
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %pathname, ptr noundef nonnull %sessname, ptr noundef %call19, i32 noundef %nr_poll_queues.0.ph296) #13
  %call24 = call ptr @rnbd_clt_map_device(ptr noundef nonnull %sessname, ptr noundef nonnull %paths, i32 noundef %p_cnt.0.ph.i.ph300, i16 noundef zeroext %port_nr.0.ph, ptr noundef nonnull %pathname, i32 noundef %access_mode.0.ph291, i32 noundef %nr_poll_queues.0.ph296) #8
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then26, label %if.end28

if.then26:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %call24 to i32
  br label %cleanup.sink.split

if.end28:                                         ; preds = %do.end
  %call29 = call fastcc i32 @rnbd_clt_add_dev_kobj(ptr noundef %call24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end28.unmap_dev_crit_edge

if.end28.unmap_dev_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %unmap_dev

if.end32:                                         ; preds = %if.end28
  %call33 = call fastcc i32 @rnbd_clt_add_dev_symlink(ptr noundef %call24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end32.cleanup.sink.split_crit_edge, label %if.end32.unmap_dev_crit_edge

if.end32.unmap_dev_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %unmap_dev

if.end32.cleanup.sink.split_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

unmap_dev:                                        ; preds = %if.end32.unmap_dev_crit_edge, %if.end28.unmap_dev_crit_edge
  %ret.0 = phi i32 [ %call29, %if.end28.unmap_dev_crit_edge ], [ %call33, %if.end32.unmap_dev_crit_edge ]
  %call37 = call i32 @rnbd_clt_unmap_device(ptr noundef %call24, i1 noundef zeroext true, ptr noundef null) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %unmap_dev, %if.end32.cleanup.sink.split_crit_edge, %if.then26, %rnbd_clt_parse_map_options.exit.thread70, %rnbd_clt_parse_map_options.exit.thread
  %retval.0.ph = phi i32 [ %count, %if.end32.cleanup.sink.split_crit_edge ], [ %36, %if.then26 ], [ %ret.0, %unmap_dev ], [ -12, %rnbd_clt_parse_map_options.exit.thread ], [ %ret.3.i.ph, %rnbd_clt_parse_map_options.exit.thread70 ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %paths) #8
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %sessname) #8
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %pathname) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rnbd_access_mode_str(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rnbd_clt_map_device(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rnbd_clt_add_dev_kobj(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gd = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %gd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gd, align 8
  %part0 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 10
  %kobj1 = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 27
  %call = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj1, ptr noundef nonnull @rnbd_dev_ktype, ptr noundef %bd_device, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pathname = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 7
  %4 = ptrtoint ptr %pathname to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pathname, align 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %sessname = getelementptr inbounds %struct.rnbd_clt_session, ptr %7, i32 0, i32 16
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %5, ptr noundef %sessname, i32 noundef %call) #13
  tail call void @kobject_put(ptr noundef %kobj1) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call4 = tail call i32 @kobject_uevent(ptr noundef %bd_device, i32 noundef 4) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rnbd_clt_add_dev_symlink(ptr nocapture noundef %dev) unnamed_addr #0 align 64 {
entry:
  %pathname.i = alloca [255 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gd = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %gd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gd, align 8
  %part0 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 10
  %pathname = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 7
  %4 = ptrtoint ptr %pathname to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pathname, align 4
  %call = tail call i32 @strlen(ptr noundef %5) #14
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %sessname = getelementptr inbounds %struct.rnbd_clt_session, ptr %7, i32 0, i32 16
  %call1 = tail call i32 @strlen(ptr noundef %sessname) #14
  %add = add i32 %call1, %call
  %add2 = add i32 %add, 2
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add2, i32 noundef 3520) #15
  %blk_symlink_name = getelementptr inbounds %struct.rnbd_clt_dev, ptr %dev, i32 0, i32 28
  %8 = ptrtoint ptr %blk_symlink_name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9.i.i, ptr %blk_symlink_name, align 4
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %pathname to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pathname, align 4
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %sessname7 = getelementptr inbounds %struct.rnbd_clt_session, ptr %12, i32 0, i32 16
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %10, ptr noundef %sessname7) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %pathname.i) #8
  %13 = call ptr @memset(ptr %pathname.i, i32 255, i32 255)
  %14 = ptrtoint ptr %pathname to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pathname, align 4
  %call.i = call i32 @strscpy(ptr noundef nonnull %pathname.i, ptr noundef %15, i32 noundef 255) #8
  %call311.i = call ptr @strchr(ptr noundef nonnull %pathname.i, i32 noundef 47) #8
  %tobool.not12.i = icmp eq ptr %call311.i, null
  br i1 %tobool.not12.i, label %if.end.rnbd_clt_get_path_name.exit_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.rnbd_clt_get_path_name.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rnbd_clt_get_path_name.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %call313.i = phi ptr [ %call3.i, %while.body.i.while.body.i_crit_edge ], [ %call311.i, %if.end.while.body.i_crit_edge ]
  %16 = ptrtoint ptr %call313.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 33, ptr %call313.i, align 1
  %call3.i = call ptr @strchr(ptr noundef nonnull %pathname.i, i32 noundef 47) #8
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %while.body.i.rnbd_clt_get_path_name.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.rnbd_clt_get_path_name.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rnbd_clt_get_path_name.exit

rnbd_clt_get_path_name.exit:                      ; preds = %while.body.i.rnbd_clt_get_path_name.exit_crit_edge, %if.end.rnbd_clt_get_path_name.exit_crit_edge
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %sessname.i = getelementptr inbounds %struct.rnbd_clt_session, ptr %18, i32 0, i32 16
  %call6.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call9.i.i, i32 noundef %add2, ptr noundef nonnull @.str.87, ptr noundef nonnull %pathname.i, ptr noundef %sessname.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i, i32 %add2)
  %cmp.not.i = icmp ult i32 %call6.i, %add2
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %pathname.i) #8
  br i1 %cmp.not.i, label %if.end23, label %do.end16

do.end16:                                         ; preds = %rnbd_clt_get_path_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %pathname to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pathname, align 4
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %sessname20 = getelementptr inbounds %struct.rnbd_clt_session, ptr %22, i32 0, i32 16
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %20, ptr noundef %sessname20, i32 noundef -36) #13
  br label %out_err

if.end23:                                         ; preds = %rnbd_clt_get_path_name.exit
  %23 = load ptr, ptr @rnbd_devs_kobj, align 4
  %24 = ptrtoint ptr %blk_symlink_name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %blk_symlink_name, align 4
  %call25 = call i32 @sysfs_create_link(ptr noundef %23, ptr noundef %bd_device, ptr noundef %25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %do.end30

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %pathname to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pathname, align 4
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 8
  %sessname34 = getelementptr inbounds %struct.rnbd_clt_session, ptr %29, i32 0, i32 16
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %27, ptr noundef %sessname34, i32 noundef %call25) #13
  br label %out_err

out_err:                                          ; preds = %do.end30, %do.end16
  %ret.0 = phi i32 [ -36, %do.end16 ], [ %call25, %do.end30 ]
  %30 = ptrtoint ptr %blk_symlink_name to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %blk_symlink_name, align 4
  call void @kfree(ptr noundef %31) #8
  %32 = ptrtoint ptr %blk_symlink_name to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %blk_symlink_name, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_err, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.0, %out_err ], [ -12, %do.end ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rnbd_clt_unmap_device(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @match_strdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtrs_addr_to_sockaddr(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rnbd_clt_unmap_dev_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readonly %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.49, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rnbd_clt_unmap_dev_store(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @kstrdup(ptr noundef %buf, i32 noundef 3264) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @strim(ptr noundef nonnull %call) #8
  %add.ptr = getelementptr i8, ptr %kobj, i32 -188
  %call2 = tail call zeroext i1 @sysfs_streq(ptr noundef %call.i, ptr noundef nonnull @.str.50) #8
  br i1 %call2, label %if.end.do.end13_crit_edge, label %if.else

if.end.do.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

if.else:                                          ; preds = %if.end
  %call4 = tail call zeroext i1 @sysfs_streq(ptr noundef %call.i, ptr noundef nonnull @.str.51) #8
  br i1 %call4, label %if.else.do.end13_crit_edge, label %do.end

if.else.do.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %pathname = getelementptr i8, ptr %kobj, i32 -72
  %0 = ptrtoint ptr %pathname to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pathname, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %sessname = getelementptr inbounds %struct.rnbd_clt_session, ptr %3, i32 0, i32 16
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %1, ptr noundef %sessname, ptr noundef %call.i) #13
  br label %out

do.end13:                                         ; preds = %if.else.do.end13_crit_edge, %if.end.do.end13_crit_edge
  %cond = phi ptr [ @.str.50, %if.end.do.end13_crit_edge ], [ @.str.51, %if.else.do.end13_crit_edge ]
  %pathname15 = getelementptr i8, ptr %kobj, i32 -72
  %4 = ptrtoint ptr %pathname15 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pathname15, align 4
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %sessname17 = getelementptr inbounds %struct.rnbd_clt_session, ptr %7, i32 0, i32 16
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %5, ptr noundef %sessname17, ptr noundef nonnull %cond) #13
  %call21 = tail call zeroext i1 @try_module_get(ptr noundef null) #8
  br i1 %call21, label %if.end23, label %do.end13.out_crit_edge

do.end13.out_crit_edge:                           ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end23:                                         ; preds = %do.end13
  %8 = xor i1 %call2, true
  %call26 = tail call i32 @rnbd_clt_unmap_device(ptr noundef %add.ptr, i1 noundef zeroext %8, ptr noundef %attr) #8
  %9 = zext i32 %call26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %call26, label %do.end32 [
    i32 0, label %if.end40
    i32 -114, label %if.end23.module_put_crit_edge
  ]

if.end23.module_put_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %module_put

do.end32:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %pathname15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pathname15, align 4
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 8
  %sessname36 = getelementptr inbounds %struct.rnbd_clt_session, ptr %13, i32 0, i32 16
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %11, ptr noundef %sessname36, i32 noundef %call26) #13
  br label %module_put

if.end40:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %module_put

module_put:                                       ; preds = %if.end40, %do.end32, %if.end23.module_put_crit_edge
  %err.0 = phi i32 [ %call26, %do.end32 ], [ %count, %if.end40 ], [ %call26, %if.end23.module_put_crit_edge ]
  tail call void @module_put(ptr noundef null) #8
  br label %out

out:                                              ; preds = %module_put, %do.end13.out_crit_edge, %do.end
  %err.1 = phi i32 [ %err.0, %module_put ], [ -22, %do.end ], [ -19, %do.end13.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rnbd_clt_resize_dev_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readonly %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.61, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rnbd_clt_resize_dev_store(ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %sectors = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sectors) #8
  %0 = ptrtoint ptr %sectors to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sectors, align 4, !annotation !208
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %sectors) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %kobj, i32 -188
  %1 = ptrtoint ptr %sectors to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sectors, align 4
  %call1 = call i32 @rnbd_clt_resize_disk(ptr noundef %add.ptr, i32 noundef %2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  %count.call1 = select i1 %tobool2.not, i32 %count, i32 %call1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %count.call1, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sectors) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rnbd_clt_resize_disk(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rnbd_clt_remap_dev_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readonly %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.63, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rnbd_clt_remap_dev_store(ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @kstrdup(ptr noundef %buf, i32 noundef 3264) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @strim(ptr noundef nonnull %call) #8
  %add.ptr = getelementptr i8, ptr %kobj, i32 -188
  %call2 = tail call zeroext i1 @sysfs_streq(ptr noundef %call.i, ptr noundef nonnull @.str.64) #8
  br i1 %call2, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pathname = getelementptr i8, ptr %kobj, i32 -72
  %0 = ptrtoint ptr %pathname to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pathname, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %sessname = getelementptr inbounds %struct.rnbd_clt_session, ptr %3, i32 0, i32 16
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %1, ptr noundef %sessname, ptr noundef %call.i) #13
  br label %out

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 @rnbd_clt_remap_device(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  %spec.select = select i1 %tobool8.not, i32 %count, i32 %call7, !prof !209
  br label %out

out:                                              ; preds = %if.end6, %do.end
  %err.0 = phi i32 [ -22, %do.end ], [ %spec.select, %if.end6 ]
  tail call void @kfree(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rnbd_clt_remap_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mapping_path_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pathname = getelementptr i8, ptr %kobj, i32 -72
  %0 = ptrtoint ptr %pathname to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pathname, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.68, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @state_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_state = getelementptr i8, ptr %kobj, i32 -76
  %0 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %2 = icmp ult i32 %1, 4
  br i1 %2, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.state_show, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %.str.74.sink = phi ptr [ %switch.load, %switch.lookup ], [ @.str.74, %entry.cleanup_crit_edge ]
  %call7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull %.str.74.sink) #8
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @session_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -188
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %sessname = getelementptr inbounds %struct.rnbd_clt_session, ptr %1, i32 0, i32 16
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.68, ptr noundef %sessname) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @access_mode_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %access_mode = getelementptr i8, ptr %kobj, i32 -68
  %0 = ptrtoint ptr %access_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %access_mode, align 8
  %call = tail call ptr @rnbd_access_mode_str(i32 noundef %1) #8
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.68, ptr noundef %call) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nr_poll_queues_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_poll_queues = getelementptr i8, ptr %kobj, i32 -64
  %0 = ptrtoint ptr %nr_poll_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_poll_queues, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.78, i32 noundef %1) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !99, !100, !101, !103, !105, !106, !108, !110, !112, !114, !116, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !135, !137, !139, !141, !143, !145, !147, !148, !149, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !187, !188, !189, !191, !192, !193, !195, !196, !197}
!llvm.module.flags = !{!199, !200, !201, !202, !203, !204, !205, !206}
!llvm.ident = !{!207}

!0 = !{ptr @rnbd_clt_create_sysfs_files.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 649, i32 19}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 655, i32 33}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 660, i32 42}
!7 = !{ptr @rnbd_dev, !8, !"rnbd_dev", i1 false, i1 false}
!8 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 26, i32 23}
!9 = !{ptr @rnbd_dev_class, !10, !"rnbd_dev_class", i1 false, i1 false}
!10 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 27, i32 22}
!11 = !{ptr @rnbd_devs_kobj, !12, !"rnbd_devs_kobj", i1 false, i1 false}
!12 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 28, i32 24}
!13 = !{ptr @default_attr_groups, !14, !"default_attr_groups", i1 false, i1 false}
!14 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 640, i32 38}
!15 = !{ptr @default_attr_group, !16, !"default_attr_group", i1 false, i1 false}
!16 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 636, i32 31}
!17 = !{ptr @default_attrs, !18, !"default_attrs", i1 false, i1 false}
!18 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 631, i32 26}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 628, i32 2}
!21 = !{ptr @rnbd_clt_map_device_attr, !22, !"rnbd_clt_map_device_attr", i1 false, i1 false}
!22 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 627, i32 30}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 503, i32 6}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 597, i32 2}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @rnbd_clt_map_device_store._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @rnbd_clt_map_device_store._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 84, i32 31}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 99, i32 5}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @rnbd_clt_parse_map_options._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @rnbd_clt_parse_map_options._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 110, i32 5}
!40 = !{ptr @rnbd_clt_parse_map_options._entry.11, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @rnbd_clt_parse_map_options._entry_ptr.13, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 125, i32 5}
!44 = !{ptr @rnbd_clt_parse_map_options._entry.14, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @rnbd_clt_parse_map_options._entry_ptr.16, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 142, i32 5}
!48 = !{ptr @rnbd_clt_parse_map_options._entry.17, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @rnbd_clt_parse_map_options._entry_ptr.19, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 154, i32 5}
!52 = !{ptr @rnbd_clt_parse_map_options._entry.20, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @rnbd_clt_parse_map_options._entry_ptr.22, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 169, i32 19}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 171, i32 26}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 173, i32 26}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 176, i32 5}
!62 = !{ptr @rnbd_clt_parse_map_options._entry.26, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @rnbd_clt_parse_map_options._entry_ptr.28, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 189, i32 5}
!66 = !{ptr @rnbd_clt_parse_map_options._entry.29, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @rnbd_clt_parse_map_options._entry_ptr.31, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 200, i32 4}
!70 = !{ptr @rnbd_clt_parse_map_options._entry.32, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @rnbd_clt_parse_map_options._entry_ptr.34, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 211, i32 4}
!74 = !{ptr @rnbd_clt_parse_map_options._entry.35, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @rnbd_clt_parse_map_options._entry_ptr.37, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 46, i32 20}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 47, i32 23}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 48, i32 24}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 49, i32 26}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 50, i32 23}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 51, i32 28}
!88 = !{ptr @rnbd_opt_tokens, !89, !"rnbd_opt_tokens", i1 false, i1 false}
!89 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 45, i32 28}
!90 = distinct !{null, !91, !"rnbd_opt_mandatory", i1 false, i1 false}
!91 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 40, i32 27}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 486, i32 67}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 487, i32 8}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 489, i32 3}
!98 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @rnbd_clt_add_dev_kobj._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @rnbd_clt_add_dev_kobj._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @rnbd_dev_ktype, !102, !"rnbd_dev_ktype", i1 false, i1 false}
!102 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 476, i32 25}
!103 = !{ptr @rnbd_dev_groups, !104, !"rnbd_dev_groups", i1 false, i1 false}
!104 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 455, i32 1}
!105 = !{ptr @rnbd_dev_group, !104, !"rnbd_dev_group", i1 false, i1 false}
!106 = !{ptr @rnbd_dev_attrs, !107, !"rnbd_dev_attrs", i1 false, i1 false}
!107 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 444, i32 26}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 354, i32 2}
!110 = !{ptr @rnbd_clt_unmap_device_attr, !111, !"rnbd_clt_unmap_device_attr", i1 false, i1 false}
!111 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 353, i32 30}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 290, i32 26}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 309, i32 27}
!116 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 311, i32 34}
!118 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 314, i32 3}
!120 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @rnbd_clt_unmap_dev_store._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @rnbd_clt_unmap_dev_store._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 321, i32 2}
!125 = !{ptr @rnbd_clt_unmap_dev_store._entry.54, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @rnbd_clt_unmap_dev_store._entry_ptr.56, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.58, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 335, i32 4}
!129 = !{ptr @rnbd_clt_unmap_dev_store._entry.57, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @rnbd_clt_unmap_dev_store._entry_ptr.59, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 387, i32 2}
!133 = !{ptr @rnbd_clt_resize_dev_attr, !134, !"rnbd_clt_resize_dev_attr", i1 false, i1 false}
!134 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 386, i32 30}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 361, i32 26}
!137 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 428, i32 2}
!139 = !{ptr @rnbd_clt_remap_device_attr, !140, !"rnbd_clt_remap_device_attr", i1 false, i1 false}
!140 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 427, i32 30}
!141 = !{ptr @.str.63, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 393, i32 26}
!143 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 410, i32 28}
!145 = !{ptr @.str.65, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 411, i32 3}
!147 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @rnbd_clt_remap_dev_store._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @rnbd_clt_remap_dev_store._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.67, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 272, i32 2}
!152 = !{ptr @rnbd_clt_mapping_path_attr, !153, !"rnbd_clt_mapping_path_attr", i1 false, i1 false}
!153 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 271, i32 30}
!154 = !{ptr @.str.68, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 268, i32 26}
!156 = !{ptr @.str.69, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 246, i32 52}
!158 = !{ptr @rnbd_clt_state_attr, !159, !"rnbd_clt_state_attr", i1 false, i1 false}
!159 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 246, i32 30}
!160 = !{ptr @.str.70, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 232, i32 27}
!162 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 235, i32 27}
!164 = !{ptr @.str.72, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 238, i32 27}
!166 = !{ptr @.str.73, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 240, i32 27}
!168 = !{ptr @.str.74, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 242, i32 27}
!170 = !{ptr @.str.75, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 442, i32 2}
!172 = !{ptr @rnbd_clt_session_attr, !173, !"rnbd_clt_session_attr", i1 false, i1 false}
!173 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 441, i32 30}
!174 = !{ptr @.str.76, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 285, i32 2}
!176 = !{ptr @rnbd_clt_access_mode, !177, !"rnbd_clt_access_mode", i1 false, i1 false}
!177 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 284, i32 30}
!178 = !{ptr @.str.77, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 259, i32 2}
!180 = !{ptr @rnbd_clt_nr_poll_queues, !181, !"rnbd_clt_nr_poll_queues", i1 false, i1 false}
!181 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 258, i32 30}
!182 = !{ptr @.str.78, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 255, i32 26}
!184 = !{ptr @.str.79, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 532, i32 3}
!186 = !{ptr @.str.80, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @rnbd_clt_add_dev_symlink._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @rnbd_clt_add_dev_symlink._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.82, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 539, i32 3}
!191 = !{ptr @rnbd_clt_add_dev_symlink._entry.81, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @rnbd_clt_add_dev_symlink._entry_ptr.83, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.85, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 547, i32 3}
!195 = !{ptr @rnbd_clt_add_dev_symlink._entry.84, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @rnbd_clt_add_dev_symlink._entry_ptr.86, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.87, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/block/rnbd/rnbd-clt-sysfs.c", i32 517, i32 27}
!199 = !{i32 1, !"wchar_size", i32 2}
!200 = !{i32 1, !"min_enum_size", i32 4}
!201 = !{i32 8, !"branch-target-enforcement", i32 0}
!202 = !{i32 8, !"sign-return-address", i32 0}
!203 = !{i32 8, !"sign-return-address-all", i32 0}
!204 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!205 = !{i32 7, !"uwtable", i32 1}
!206 = !{i32 7, !"frame-pointer", i32 2}
!207 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!208 = !{!"auto-init"}
!209 = !{!"branch_weights", i32 2000, i32 1}
