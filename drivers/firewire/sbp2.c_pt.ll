; ModuleID = '/llk/IR_all_yes/drivers/firewire/sbp2.c_pt.bc'
source_filename = "../drivers/firewire/sbp2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.fw_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee1394_device_id = type { i32, i32, i32, i32, i32, i32 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.fw_address_region = type { i64, i64 }
%struct.anon.85 = type { i32, i32, i32 }
%struct.fw_csr_iterator = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.fw_card = type { ptr, ptr, %struct.kref, %struct.completion, i32, i32, i32, i64, %struct.list_head, i64, i32, i32, i32, i32, i64, i32, i32, i32, %struct.spinlock, ptr, ptr, ptr, i8, i32, i8, i32, %struct.list_head, %struct.list_head, %struct.delayed_work, i8, %struct.delayed_work, i32, i32, i32, i8, i8, i8, i8, i32, [256 x i32], i32 }
%struct.fw_unit = type { %struct.device, ptr, %struct.fw_attribute_group }
%struct.fw_attribute_group = type { [2 x ptr], %struct.attribute_group, [13 x ptr] }
%struct.sbp2_target = type { ptr, %struct.list_head, i64, i64, i32, i32, i32, i32, i32, i32, %struct.spinlock, i32, i32 }
%struct.scsi_lun = type { [8 x i8] }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.sbp2_orb = type { %struct.fw_transaction, %struct.kref, i32, i32, ptr, ptr, %struct.list_head }
%struct.fw_transaction = type { i32, i32, %struct.list_head, ptr, i8, %struct.timer_list, %struct.fw_packet, ptr, ptr }
%struct.fw_packet = type { i32, i32, [4 x i32], i32, ptr, i32, i32, i8, i32, ptr, i32, %struct.list_head, ptr }
%struct.sbp2_command_orb = type { %struct.sbp2_orb, %struct.anon.83, ptr, [128 x %struct.sbp2_pointer], i32, [4 x i8] }
%struct.anon.83 = type { %struct.sbp2_pointer, %struct.sbp2_pointer, i32, [16 x i8] }
%struct.sbp2_pointer = type { i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.74, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.74 = type { %struct.atomic_t }
%struct.sbp2_logical_unit = type { ptr, %struct.list_head, %struct.fw_address_handler, %struct.list_head, i64, i16, i32, i32, i32, ptr, %struct.delayed_work, i8, i8 }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.sbp2_status = type { i32, i32, [24 x i8] }
%struct.sbp2_login_response = type { i32, %struct.sbp2_pointer, i32 }
%struct.sbp2_management_orb = type { %struct.sbp2_orb, %struct.anon.84, [4 x i32], i32, %struct.completion, %struct.sbp2_status }
%struct.anon.84 = type { %struct.sbp2_pointer, %struct.sbp2_pointer, i32, i32, %struct.sbp2_pointer }

@__param_str_exclusive_login = internal constant [30 x i8] c"firewire_sbp2.exclusive_login\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@sbp2_param_exclusive_login = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_exclusive_login = internal constant %struct.kernel_param { ptr @__param_str_exclusive_login, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @sbp2_param_exclusive_login } }, section "__param", align 4
@__UNIQUE_ID_exclusive_logintype281 = internal constant [44 x i8] c"firewire_sbp2.parmtype=exclusive_login:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_exclusive_login282 = internal constant [113 x i8] c"firewire_sbp2.parm=exclusive_login:Exclusive login to sbp2 device (default = Y, use N for concurrent initiators)\00", section ".modinfo", align 1
@__param_str_workarounds = internal constant [26 x i8] c"firewire_sbp2.workarounds\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@sbp2_param_workarounds = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_workarounds = internal constant %struct.kernel_param { ptr @__param_str_workarounds, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @sbp2_param_workarounds } }, section "__param", align 4
@__UNIQUE_ID_workaroundstype283 = internal constant [39 x i8] c"firewire_sbp2.parmtype=workarounds:int\00", section ".modinfo", align 1
@__UNIQUE_ID_workarounds284 = internal constant [286 x i8] c"firewire_sbp2.parm=workarounds:Work around device bugs (default = 0, 128kB max transfer = 0x1, 36 byte inquiry = 0x2, skip mode page 8 = 0x4, fix capacity = 0x8, delay inquiry = 0x10, set power condition in start stop unit = 0x20, override internal blacklist = 0x100, or a combination)\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [60 x i8] c"firewire_sbp2.author=Kristian Hoegsberg <krh@bitplanet.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [45 x i8] c"firewire_sbp2.description=SCSI over IEEE1394\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [50 x i8] c"firewire_sbp2.file=drivers/firewire/firewire-sbp2\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [26 x i8] c"firewire_sbp2.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias297 = internal constant [25 x i8] c"firewire_sbp2.alias=sbp2\00", section ".modinfo", align 1
@sbp2_driver = internal global { %struct.fw_driver, [36 x i8] } { %struct.fw_driver { %struct.device_driver { ptr @.str, ptr @fw_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sbp2_probe, ptr @sbp2_update, ptr @sbp2_remove, ptr @sbp2_id_table }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_firewire_sbp2__298_1621_sbp2_init6 = internal global ptr @sbp2_init, section ".initcall6.init", align 4
@__exitcall_sbp2_cleanup = internal global ptr @sbp2_cleanup, section ".exitcall.exit", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"firewire_sbp2\00", [18 x i8] zeroinitializer }, align 32
@fw_bus_type = external dso_local global %struct.bus_type, align 4
@sbp2_id_table = internal constant { [2 x %struct.ieee1394_device_id], [48 x i8] } { [2 x %struct.ieee1394_device_id] [%struct.ieee1394_device_id { i32 12, i32 0, i32 0, i32 24734, i32 66691, i32 0 }, %struct.ieee1394_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@scsi_driver_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @sbp2_scsi_queuecommand, ptr null, ptr null, ptr @.str.2, ptr null, ptr null, ptr null, ptr null, ptr @sbp2_scsi_abort, ptr null, ptr null, ptr null, ptr null, ptr @sbp2_scsi_slave_alloc, ptr @sbp2_scsi_slave_configure, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.3, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 65532, i32 0, i32 0, i16 0, i8 0, i32 0, i8 0, i32 0, ptr null, ptr @sbp2_scsi_sysfs_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@sbp2_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&tgt->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SBP-2 IEEE-1394\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sbp2\00", [27 x i8] zeroinitializer }, align 32
@sbp2_scsi_sysfs_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @sbp2_scsi_sysfs_group, ptr null], [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sbp2_agent_reset_no_wait.d = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@sbp2_scsi_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 1549, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sbp2_scsi_abort\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sbp2_scsi_abort\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/firewire/sbp2.c\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sbp2_scsi_abort._entry_ptr = internal global ptr @sbp2_scsi_abort._entry, section ".printk_index", align 4
@sbp2_scsi_sysfs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sbp2_scsi_sysfs_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@sbp2_scsi_sysfs_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_ieee1394_id, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_ieee1394_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sbp2_sysfs_ieee1394_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ieee1394_id\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%016llx:%06x:%04x\0A\00", [45 x i8] zeroinitializer }, align 32
@fw_high_memory_region = external dso_local constant %struct.fw_address_region, align 8
@sbp2_add_logical_unit.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&(&lu->work)->work)\00", [58 x i8] zeroinitializer }, align 32
@sbp2_add_logical_unit.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&(&lu->work)->timer\00", [44 x i8] zeroinitializer }, align 32
@sbp2_status_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.8, i32 429, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"non-ORB related status write, not handled\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sbp2_status_write\00", [46 x i8] zeroinitializer }, align 32
@sbp2_status_write._entry_ptr = internal global ptr @sbp2_status_write._entry, section ".printk_index", align 4
@sbp2_status_write._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.8, i32 450, ptr @.str.20, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"status write for unknown ORB\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@sbp2_status_write._entry_ptr.21 = internal global ptr @sbp2_status_write._entry.18, section ".printk_index", align 4
@sbp2_login._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.8, i32 825, ptr @.str.20, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to login to LUN %04x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sbp2_login\00", [21 x i8] zeroinitializer }, align 32
@sbp2_login._entry_ptr = internal global ptr @sbp2_login._entry, section ".printk_index", align 4
@sbp2_login._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.8, i32 843, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"logged in to LUN %04x (%d retries)\0A\00", [60 x i8] zeroinitializer }, align 32
@sbp2_login._entry_ptr.26 = internal global ptr @sbp2_login._entry.24, section ".printk_index", align 4
@sbp2_send_management_orb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.8, i32 612, ptr @.str.20, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ORB reply timed out, rcode 0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sbp2_send_management_orb\00", [39 x i8] zeroinitializer }, align 32
@sbp2_send_management_orb._entry_ptr = internal global ptr @sbp2_send_management_orb._entry, section ".printk_index", align 4
@sbp2_send_management_orb._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.8, i32 618, ptr @.str.20, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"management write failed, rcode 0x%02x\0A\00", [57 x i8] zeroinitializer }, align 32
@sbp2_send_management_orb._entry_ptr.31 = internal global ptr @sbp2_send_management_orb._entry.29, section ".printk_index", align 4
@sbp2_send_management_orb._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.8, i32 626, ptr @.str.20, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error status: %d:%d\0A\00", [43 x i8] zeroinitializer }, align 32
@sbp2_send_management_orb._entry_ptr.34 = internal global ptr @sbp2_send_management_orb._entry.32, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@sbp2_reconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.8, i32 934, ptr @.str.20, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to reconnect\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sbp2_reconnect\00", [17 x i8] zeroinitializer }, align 32
@sbp2_reconnect._entry_ptr = internal global ptr @sbp2_reconnect._entry, section ".printk_index", align 4
@sbp2_reconnect._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.8, i32 949, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"reconnected to LUN %04x (%d retries)\0A\00", [58 x i8] zeroinitializer }, align 32
@sbp2_reconnect._entry_ptr.40 = internal global ptr @sbp2_reconnect._entry.38, section ".printk_index", align 4
@sbp2_clamp_management_orb_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.8, i32 1079, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%ds mgt_ORB_timeout limited to 40s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sbp2_clamp_management_orb_timeout\00", [62 x i8] zeroinitializer }, align 32
@sbp2_clamp_management_orb_timeout._entry_ptr = internal global ptr @sbp2_clamp_management_orb_timeout._entry, section ".printk_index", align 4
@sbp2_init_workarounds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.8, i32 1093, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"Please notify linux1394-devel@lists.sf.net if you need the workarounds parameter\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sbp2_init_workarounds\00", [42 x i8] zeroinitializer }, align 32
@sbp2_init_workarounds._entry_ptr = internal global ptr @sbp2_init_workarounds._entry, section ".printk_index", align 4
@sbp2_workarounds_table = internal constant { [11 x %struct.anon.85], [60 x i8] } { [11 x %struct.anon.85] [%struct.anon.85 { i32 10240, i32 4112, i32 38 }, %struct.anon.85 { i32 10240, i32 0, i32 32 }, %struct.anon.85 { i32 512, i32 -1, i32 2 }, %struct.anon.85 { i32 75776, i32 -1, i32 32 }, %struct.anon.85 { i32 10532864, i32 -1, i32 1 }, %struct.anon.85 { i32 9728, i32 -1, i32 1 }, %struct.anon.85 { i32 665344, i32 0, i32 9 }, %struct.anon.85 { i32 665344, i32 33, i32 8 }, %struct.anon.85 { i32 665344, i32 34, i32 8 }, %struct.anon.85 { i32 665344, i32 35, i32 8 }, %struct.anon.85 { i32 665344, i32 126, i32 8 }], [60 x i8] zeroinitializer }, align 32
@sbp2_init_workarounds._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.8, i32 1115, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"workarounds 0x%x (firmware_revision 0x%06x, model_id 0x%06x)\0A\00", [34 x i8] zeroinitializer }, align 32
@sbp2_init_workarounds._entry_ptr.47 = internal global ptr @sbp2_init_workarounds._entry.45, section ".printk_index", align 4
@fw_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@sbp2_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.8, i32 1248, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"released target %d:0:0\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sbp2_remove\00", [20 x i8] zeroinitializer }, align 32
@sbp2_remove._entry_ptr = internal global ptr @sbp2_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 20, i64 23, i64 32, i64 58, i64 60, i64 84, i64 141, i64 212]
@__sancov_gen_cov_switch_values.50 = internal global [8 x i64] [i64 6, i64 32, i64 512, i64 9728, i64 10240, i64 75776, i64 665344, i64 10532864]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4112]
@__sancov_gen_cov_switch_values.52 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 33, i64 34, i64 35, i64 126]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.55 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 2, i64 4, i64 8, i64 24, i64 34]
@___asan_gen_.56 = private unnamed_addr constant [27 x i8] c"sbp2_param_exclusive_login\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 55, i32 13 }
@___asan_gen_.59 = private unnamed_addr constant [23 x i8] c"sbp2_param_workarounds\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 101, i32 12 }
@___asan_gen_.62 = private unnamed_addr constant [12 x i8] c"sbp2_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1266, i32 25 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1269, i32 13 }
@___asan_gen_.68 = private unnamed_addr constant [14 x i8] c"sbp2_id_table\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1256, i32 40 }
@___asan_gen_.71 = private unnamed_addr constant [21 x i8] c"scsi_driver_template\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1588, i32 34 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1142, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1590, i32 12 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1591, i32 16 }
@___asan_gen_.86 = private unnamed_addr constant [23 x i8] c"sbp2_scsi_sysfs_groups\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 666, i32 16 }
@___asan_gen_.96 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 326, i32 6 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1549, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [22 x i8] c"sbp2_scsi_sysfs_group\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1586, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant [22 x i8] c"sbp2_scsi_sysfs_attrs\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1581, i32 26 }
@___asan_gen_.122 = private unnamed_addr constant [21 x i8] c"dev_attr_ieee1394_id\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1579, i32 8 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1574, i32 22 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 990, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 428, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 450, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 824, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 842, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 611, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 617, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 624, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 87, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 934, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 948, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1078, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1091, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant [23 x i8] c"sbp2_workarounds_table\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 333, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1113, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.252 = private constant [27 x i8] c"../drivers/firewire/sbp2.c\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1248, i32 2 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_alias297, ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_exclusive_login282, ptr @__UNIQUE_ID_exclusive_logintype281, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__UNIQUE_ID_workarounds284, ptr @__UNIQUE_ID_workaroundstype283, ptr @__exitcall_sbp2_cleanup, ptr @__initcall__kmod_firewire_sbp2__298_1621_sbp2_init6, ptr @__param_exclusive_login, ptr @__param_workarounds, ptr @sbp2_clamp_management_orb_timeout._entry, ptr @sbp2_clamp_management_orb_timeout._entry_ptr, ptr @sbp2_cleanup, ptr @sbp2_init_workarounds._entry, ptr @sbp2_init_workarounds._entry.45, ptr @sbp2_init_workarounds._entry_ptr, ptr @sbp2_init_workarounds._entry_ptr.47, ptr @sbp2_login._entry, ptr @sbp2_login._entry.24, ptr @sbp2_login._entry_ptr, ptr @sbp2_login._entry_ptr.26, ptr @sbp2_reconnect._entry, ptr @sbp2_reconnect._entry.38, ptr @sbp2_reconnect._entry_ptr, ptr @sbp2_reconnect._entry_ptr.40, ptr @sbp2_remove._entry, ptr @sbp2_remove._entry_ptr, ptr @sbp2_scsi_abort._entry, ptr @sbp2_scsi_abort._entry_ptr, ptr @sbp2_send_management_orb._entry, ptr @sbp2_send_management_orb._entry.29, ptr @sbp2_send_management_orb._entry.32, ptr @sbp2_send_management_orb._entry_ptr, ptr @sbp2_send_management_orb._entry_ptr.31, ptr @sbp2_send_management_orb._entry_ptr.34, ptr @sbp2_status_write._entry, ptr @sbp2_status_write._entry.18, ptr @sbp2_status_write._entry_ptr, ptr @sbp2_status_write._entry_ptr.21, ptr @sbp2_param_exclusive_login, ptr @sbp2_param_workarounds, ptr @sbp2_driver, ptr @.str, ptr @sbp2_id_table, ptr @scsi_driver_template, ptr @sbp2_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @sbp2_scsi_sysfs_groups, ptr @sbp2_agent_reset_no_wait.d, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @sbp2_scsi_sysfs_group, ptr @sbp2_scsi_sysfs_attrs, ptr @dev_attr_ieee1394_id, ptr @.str.11, ptr @.str.12, ptr @sbp2_add_logical_unit.__key, ptr @.str.13, ptr @sbp2_add_logical_unit.__key.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @init_completion.__key, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @sbp2_workarounds_table, ptr @.str.46, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp2_param_exclusive_login to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp2_param_workarounds to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp2_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp2_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_driver_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp2_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp2_scsi_sysfs_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp2_agent_reset_no_wait.d to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp2_scsi_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp2_scsi_sysfs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp2_scsi_sysfs_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ieee1394_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp2_add_logical_unit.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp2_add_logical_unit.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp2_status_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp2_status_write._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp2_login._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp2_login._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp2_send_management_orb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp2_send_management_orb._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp2_send_management_orb._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp2_reconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp2_reconnect._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp2_clamp_management_orb_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp2_init_workarounds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp2_workarounds_table to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp2_init_workarounds._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbp2_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sbp2_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @driver_unregister(ptr noundef nonnull @sbp2_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sbp2_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @driver_register(ptr noundef nonnull @sbp2_driver) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbp2_probe(ptr noundef %unit, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %ci.i.i = alloca %struct.fw_csr_iterator, align 4
  %key.i.i = alloca i32, align 4
  %value.i.i = alloca i32, align 4
  %ci.i = alloca %struct.fw_csr_iterator, align 4
  %key.i = alloca i32, align 4
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -24
  %is_local = getelementptr i8, ptr %1, i32 1040
  %2 = ptrtoint ptr %is_local to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %is_local, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @scsi_host_alloc(ptr noundef nonnull @scsi_driver_template, i32 noundef 112) #11
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %call1, i32 0, i32 53
  %driver_data.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %hostdata, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %unit, ptr %hostdata, align 8
  %lu_list = getelementptr inbounds %struct.Scsi_Host, ptr %call1, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %lu_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %lu_list, ptr %lu_list, align 4
  %prev.i = getelementptr inbounds %struct.Scsi_Host, ptr %call1, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %lu_list, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.Scsi_Host, ptr %call1, i32 1, i32 3, i32 0, i32 0, i32 4, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @sbp2_probe.__key, i16 noundef signext 3) #11
  %config_rom = getelementptr i8, ptr %1, i32 1028
  %7 = ptrtoint ptr %config_rom to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config_rom, align 4
  %arrayidx = getelementptr i32, ptr %8, i32 3
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %conv = zext i32 %10 to i64
  %shl = shl nuw i64 %conv, 32
  %arrayidx8 = getelementptr i32, ptr %8, i32 4
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx8, align 4
  %conv9 = zext i32 %12 to i64
  %or = or i64 %shl, %conv9
  %guid = getelementptr inbounds %struct.Scsi_Host, ptr %call1, i32 1, i32 3
  %13 = ptrtoint ptr %guid to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %or, ptr %guid, align 8
  %call10 = tail call i32 @fw_device_enable_phys_dma(ptr noundef %add.ptr.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end3.fail_shost_put_crit_edge, label %if.end14

if.end3.fail_shost_put_crit_edge:                 ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_shost_put

if.end14:                                         ; preds = %if.end3
  %max_cmd_len = getelementptr inbounds %struct.Scsi_Host, ptr %call1, i32 0, i32 24
  %14 = ptrtoint ptr %max_cmd_len to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 16, ptr %max_cmd_len, align 4
  %card = getelementptr i8, ptr %1, i32 -4
  %15 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card, align 4
  %device16 = getelementptr inbounds %struct.fw_card, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %device16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device16, align 4
  %call17 = tail call i32 @scsi_add_host_with_dma(ptr noundef nonnull %call1, ptr noundef %unit, ptr noundef %18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end14.fail_shost_put_crit_edge, label %if.end21

if.end14.fail_shost_put_crit_edge:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_shost_put

if.end21:                                         ; preds = %if.end14
  %directory = getelementptr inbounds %struct.fw_unit, ptr %unit, i32 0, i32 1
  %19 = ptrtoint ptr %directory to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %directory, align 8
  %21 = ptrtoint ptr %config_rom to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %config_rom, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %22 to i32
  %sub.ptr.sub = add i32 %sub.ptr.lhs.cast, 1024
  %add = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  %and = and i32 %add, 16777215
  %directory_id = getelementptr inbounds %struct.Scsi_Host, ptr %call1, i32 1, i32 3, i32 0, i32 0, i32 2
  %23 = ptrtoint ptr %directory_id to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and, ptr %directory_id, align 8
  %24 = load ptr, ptr %directory, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ci.i) #11
  %25 = ptrtoint ptr %ci.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 -1 to ptr), ptr %ci.i, align 4, !annotation !147
  %26 = getelementptr inbounds %struct.fw_csr_iterator, ptr %ci.i, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 -1 to ptr), ptr %26, align 4, !annotation !147
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i) #11
  %28 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %key.i, align 4, !annotation !147
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #11
  %29 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %value.i, align 4, !annotation !147
  call void @fw_csr_iterator_init(ptr noundef nonnull %ci.i, ptr noundef %24) #11
  %call30.i = call i32 @fw_csr_iterator_next(ptr noundef nonnull %ci.i, ptr noundef nonnull %key.i, ptr noundef nonnull %value.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool.not31.i = icmp eq i32 %call30.i, 0
  br i1 %tobool.not31.i, label %if.end21.if.end28_crit_edge, label %while.body.lr.ph.i

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

while.body.lr.ph.i:                               ; preds = %if.end21
  %30 = getelementptr inbounds %struct.fw_csr_iterator, ptr %ci.i.i, i32 0, i32 1
  %mgt_orb_timeout.i = getelementptr inbounds %struct.Scsi_Host, ptr %call1, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1, i32 1
  %management_agent_address.i = getelementptr inbounds %struct.Scsi_Host, ptr %call1, i32 1, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %sw.epilog.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %model.0 = phi i32 [ -16777216, %while.body.lr.ph.i ], [ %model.1, %sw.epilog.i.while.body.i_crit_edge ]
  %firmware_revision.0 = phi i32 [ -16777216, %while.body.lr.ph.i ], [ %firmware_revision.1, %sw.epilog.i.while.body.i_crit_edge ]
  %31 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %key.i, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i32 %32, label %while.body.i.sw.epilog.i_crit_edge [
    i32 84, label %sw.bb.i
    i32 32, label %sw.bb1.i
    i32 23, label %sw.bb2.i
    i32 60, label %sw.bb3.i
    i32 58, label %sw.bb4.i
    i32 20, label %sw.bb6.i
    i32 141, label %sw.bb9.i
    i32 212, label %sw.bb11.i
  ]

while.body.i.sw.epilog.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %value.i, align 4
  %mul.i = shl i32 %35, 2
  %conv.i = sext i32 %mul.i to i64
  %add.i = add nsw i64 %conv.i, 281474708275200
  %36 = ptrtoint ptr %management_agent_address.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %add.i, ptr %management_agent_address.i, align 8
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %value.i, align 4
  %39 = ptrtoint ptr %directory_id to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %directory_id, align 8
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %value.i, align 4
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %value.i, align 4
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %value.i, align 4
  %46 = lshr i32 %45, 8
  %and.i = and i32 %46, 255
  %mul5.i = mul nuw nsw i32 %and.i, 500
  %47 = ptrtoint ptr %mgt_orb_timeout.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mul5.i, ptr %mgt_orb_timeout.i, align 8
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %while.body.i
  %48 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %value.i, align 4
  %call7.i = call fastcc i32 @sbp2_add_logical_unit(ptr noundef %hostdata, i32 noundef %49) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i = icmp slt i32 %call7.i, 0
  br i1 %cmp.i, label %sw.bb6.i.fail_remove_crit_edge, label %sw.bb6.i.sw.epilog.i_crit_edge

sw.bb6.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb6.i.fail_remove_crit_edge:                   ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_remove

sw.bb9.i:                                         ; preds = %while.body.i
  %50 = ptrtoint ptr %ci.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ci.i, align 4
  %add.ptr.i = getelementptr i32, ptr %51, i32 -1
  %52 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %value.i, align 4
  %add.ptr10.i = getelementptr i32, ptr %add.ptr.i, i32 %53
  %54 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr10.i, align 4
  %and.i.i = and i32 %55, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 131072
  br i1 %cmp.i.i, label %if.then.i.i, label %sw.bb9.i.sw.epilog.i_crit_edge

sw.bb9.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.then.i.i:                                      ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx1.i.i = getelementptr i32, ptr %add.ptr10.i, i32 1
  %56 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx1.i.i, align 4
  %conv.i.i = zext i32 %57 to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  %arrayidx2.i.i = getelementptr i32, ptr %add.ptr10.i, i32 2
  %58 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx2.i.i, align 4
  %conv3.i.i = zext i32 %59 to i64
  %or.i.i = or i64 %shl.i.i, %conv3.i.i
  %60 = ptrtoint ptr %guid to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %or.i.i, ptr %guid, align 8
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %while.body.i
  %61 = ptrtoint ptr %ci.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ci.i, align 4
  %add.ptr13.i = getelementptr i32, ptr %62, i32 -1
  %63 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %value.i, align 4
  %add.ptr14.i = getelementptr i32, ptr %add.ptr13.i, i32 %64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ci.i.i) #11
  %65 = ptrtoint ptr %ci.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 -1 to ptr), ptr %ci.i.i, align 4, !annotation !147
  %66 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 -1 to ptr), ptr %30, align 4, !annotation !147
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i.i) #11
  %67 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %key.i.i, align 4, !annotation !147
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #11
  %68 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %value.i.i, align 4, !annotation !147
  call void @fw_csr_iterator_init(ptr noundef nonnull %ci.i.i, ptr noundef %add.ptr14.i) #11
  %call5.i.i = call i32 @fw_csr_iterator_next(ptr noundef nonnull %ci.i.i, ptr noundef nonnull %key.i.i, ptr noundef nonnull %value.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not6.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not6.i.i, label %sw.bb11.i.sbp2_scan_logical_unit_dir.exit.thread.i_crit_edge, label %sw.bb11.i.while.body.i.i_crit_edge

sw.bb11.i.while.body.i.i_crit_edge:               ; preds = %sw.bb11.i
  br label %while.body.i.i

sw.bb11.i.sbp2_scan_logical_unit_dir.exit.thread.i_crit_edge: ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sbp2_scan_logical_unit_dir.exit.thread.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %sw.bb11.i.while.body.i.i_crit_edge
  %69 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %key.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %70)
  %cmp.i27.i = icmp eq i32 %70, 20
  br i1 %cmp.i27.i, label %land.lhs.true.i.i, label %while.body.i.i.if.end.i.i_crit_edge

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %while.body.i.i
  %71 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %value.i.i, align 4
  %call1.i.i = call fastcc i32 @sbp2_add_logical_unit(ptr noundef %hostdata, i32 noundef %72) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %sbp2_scan_logical_unit_dir.exit.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %while.body.i.i.if.end.i.i_crit_edge
  %call.i.i = call i32 @fw_csr_iterator_next(ptr noundef nonnull %ci.i.i, ptr noundef nonnull %key.i.i, ptr noundef nonnull %value.i.i) #11
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.sbp2_scan_logical_unit_dir.exit.thread.i_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

if.end.i.i.sbp2_scan_logical_unit_dir.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sbp2_scan_logical_unit_dir.exit.thread.i

sbp2_scan_logical_unit_dir.exit.thread.i:         ; preds = %if.end.i.i.sbp2_scan_logical_unit_dir.exit.thread.i_crit_edge, %sw.bb11.i.sbp2_scan_logical_unit_dir.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ci.i.i) #11
  br label %sw.epilog.i

sbp2_scan_logical_unit_dir.exit.i:                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ci.i.i) #11
  br label %fail_remove

sw.epilog.i:                                      ; preds = %sbp2_scan_logical_unit_dir.exit.thread.i, %if.then.i.i, %sw.bb9.i.sw.epilog.i_crit_edge, %sw.bb6.i.sw.epilog.i_crit_edge, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %while.body.i.sw.epilog.i_crit_edge
  %model.1 = phi i32 [ %model.0, %while.body.i.sw.epilog.i_crit_edge ], [ %model.0, %sbp2_scan_logical_unit_dir.exit.thread.i ], [ %model.0, %if.then.i.i ], [ %model.0, %sw.bb9.i.sw.epilog.i_crit_edge ], [ %model.0, %sw.bb6.i.sw.epilog.i_crit_edge ], [ %model.0, %sw.bb4.i ], [ %model.0, %sw.bb3.i ], [ %41, %sw.bb2.i ], [ %model.0, %sw.bb1.i ], [ %model.0, %sw.bb.i ]
  %firmware_revision.1 = phi i32 [ %firmware_revision.0, %while.body.i.sw.epilog.i_crit_edge ], [ %firmware_revision.0, %sbp2_scan_logical_unit_dir.exit.thread.i ], [ %firmware_revision.0, %if.then.i.i ], [ %firmware_revision.0, %sw.bb9.i.sw.epilog.i_crit_edge ], [ %firmware_revision.0, %sw.bb6.i.sw.epilog.i_crit_edge ], [ %firmware_revision.0, %sw.bb4.i ], [ %43, %sw.bb3.i ], [ %firmware_revision.0, %sw.bb2.i ], [ %firmware_revision.0, %sw.bb1.i ], [ %firmware_revision.0, %sw.bb.i ]
  %call.i = call i32 @fw_csr_iterator_next(ptr noundef nonnull %ci.i, ptr noundef nonnull %key.i, ptr noundef nonnull %value.i) #11
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.epilog.i.if.end28_crit_edge, label %sw.epilog.i.while.body.i_crit_edge

sw.epilog.i.while.body.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

sw.epilog.i.if.end28_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.end28:                                         ; preds = %sw.epilog.i.if.end28_crit_edge, %if.end21.if.end28_crit_edge
  %model.2 = phi i32 [ -16777216, %if.end21.if.end28_crit_edge ], [ %model.1, %sw.epilog.i.if.end28_crit_edge ]
  %firmware_revision.2 = phi i32 [ -16777216, %if.end21.if.end28_crit_edge ], [ %firmware_revision.1, %sw.epilog.i.if.end28_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ci.i) #11
  %mgt_orb_timeout.i89 = getelementptr inbounds %struct.Scsi_Host, ptr %call1, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1, i32 1
  %73 = ptrtoint ptr %mgt_orb_timeout.i89 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %mgt_orb_timeout.i89, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000, i32 %74)
  %cmp.i90 = icmp ugt i32 %74, 40000
  br i1 %cmp.i90, label %do.end.i, label %if.end28.sbp2_clamp_management_orb_timeout.exit_crit_edge

if.end28.sbp2_clamp_management_orb_timeout.exit_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %sbp2_clamp_management_orb_timeout.exit

do.end.i:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hostdata, align 8
  %div.i = udiv i32 %74, 1000
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %76, ptr noundef nonnull @.str.41, i32 noundef %div.i) #14
  br label %sbp2_clamp_management_orb_timeout.exit

sbp2_clamp_management_orb_timeout.exit:           ; preds = %do.end.i, %if.end28.sbp2_clamp_management_orb_timeout.exit_crit_edge
  %77 = call i32 @llvm.umax.i32(i32 %74, i32 5000) #11
  %78 = call i32 @llvm.umin.i32(i32 %77, i32 40000) #11
  %79 = ptrtoint ptr %mgt_orb_timeout.i89 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %mgt_orb_timeout.i89, align 8
  %80 = load i32, ptr @sbp2_param_workarounds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i91 = icmp eq i32 %80, 0
  br i1 %tobool.not.i91, label %sbp2_clamp_management_orb_timeout.exit.for.cond.preheader.i_crit_edge, label %if.end.i

sbp2_clamp_management_orb_timeout.exit.for.cond.preheader.i_crit_edge: ; preds = %sbp2_clamp_management_orb_timeout.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader.i

if.end.i:                                         ; preds = %sbp2_clamp_management_orb_timeout.exit
  %81 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hostdata, align 8
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %82, ptr noundef nonnull @.str.43) #14
  %and.i92 = and i32 %80, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i92)
  %tobool1.not.i = icmp eq i32 %and.i92, 0
  br i1 %tobool1.not.i, label %if.end.i.for.cond.preheader.i_crit_edge, label %if.end.i.do.end22.i_crit_edge

if.end.i.do.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end22.i

if.end.i.for.cond.preheader.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end.i.for.cond.preheader.i_crit_edge, %sbp2_clamp_management_orb_timeout.exit.for.cond.preheader.i_crit_edge
  %and5.i = and i32 %firmware_revision.2, -256
  %83 = zext i32 %and5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %and5.i, label %for.cond.preheader.i.out.i_crit_edge [
    i32 10240, label %if.end8.i
    i32 512, label %for.cond.preheader.i.if.end16.i_crit_edge
    i32 75776, label %if.end16.fold.split67.i
    i32 10532864, label %if.end16.fold.split68.i
    i32 9728, label %if.end16.fold.split69.i
    i32 665344, label %if.end8.6.i
  ]

for.cond.preheader.i.if.end16.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

for.cond.preheader.i.out.i_crit_edge:             ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end8.i:                                        ; preds = %for.cond.preheader.i
  %84 = zext i32 %model.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %model.2, label %if.end8.i.out.i_crit_edge [
    i32 4112, label %if.end8.i.if.end16.i_crit_edge
    i32 0, label %if.end16.fold.split.i
  ]

if.end8.i.if.end16.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.end8.i.out.i_crit_edge:                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end16.fold.split.i:                            ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.end16.fold.split67.i:                          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.end16.fold.split68.i:                          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.end16.fold.split69.i:                          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.end16.fold.split70.i:                          ; preds = %if.end8.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.end16.fold.split71.i:                          ; preds = %if.end8.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.end16.fold.split72.i:                          ; preds = %if.end8.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.end16.fold.split73.i:                          ; preds = %if.end8.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end8.6.i.if.end16.i_crit_edge, %if.end16.fold.split73.i, %if.end16.fold.split72.i, %if.end16.fold.split71.i, %if.end16.fold.split70.i, %if.end16.fold.split69.i, %if.end16.fold.split68.i, %if.end16.fold.split67.i, %if.end16.fold.split.i, %if.end8.i.if.end16.i_crit_edge, %for.cond.preheader.i.if.end16.i_crit_edge
  %i.045.lcssa.i = phi i32 [ 0, %if.end8.i.if.end16.i_crit_edge ], [ 6, %if.end8.6.i.if.end16.i_crit_edge ], [ 1, %if.end16.fold.split.i ], [ 2, %for.cond.preheader.i.if.end16.i_crit_edge ], [ 3, %if.end16.fold.split67.i ], [ 4, %if.end16.fold.split68.i ], [ 5, %if.end16.fold.split69.i ], [ 7, %if.end16.fold.split70.i ], [ 8, %if.end16.fold.split71.i ], [ 9, %if.end16.fold.split72.i ], [ 10, %if.end16.fold.split73.i ]
  %workarounds.i = getelementptr [11 x %struct.anon.85], ptr @sbp2_workarounds_table, i32 0, i32 %i.045.lcssa.i, i32 2
  %85 = ptrtoint ptr %workarounds.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %workarounds.i, align 4
  %or.i = or i32 %86, %80
  br label %out.i

if.end8.6.i:                                      ; preds = %for.cond.preheader.i
  %87 = zext i32 %model.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %model.2, label %if.end8.6.i.out.i_crit_edge [
    i32 0, label %if.end8.6.i.if.end16.i_crit_edge
    i32 33, label %if.end16.fold.split70.i
    i32 34, label %if.end16.fold.split71.i
    i32 35, label %if.end16.fold.split72.i
    i32 126, label %if.end16.fold.split73.i
  ]

if.end8.6.i.if.end16.i_crit_edge:                 ; preds = %if.end8.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.end8.6.i.out.i_crit_edge:                      ; preds = %if.end8.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

out.i:                                            ; preds = %if.end8.6.i.out.i_crit_edge, %if.end16.i, %if.end8.i.out.i_crit_edge, %for.cond.preheader.i.out.i_crit_edge
  %w.0.i = phi i32 [ %or.i, %if.end16.i ], [ %80, %if.end8.i.out.i_crit_edge ], [ %80, %for.cond.preheader.i.out.i_crit_edge ], [ %80, %if.end8.6.i.out.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %w.0.i)
  %tobool18.not.i = icmp eq i32 %w.0.i, 0
  br i1 %tobool18.not.i, label %out.i.sbp2_init_workarounds.exit_crit_edge, label %out.i.do.end22.i_crit_edge

out.i.do.end22.i_crit_edge:                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end22.i

out.i.sbp2_init_workarounds.exit_crit_edge:       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sbp2_init_workarounds.exit

do.end22.i:                                       ; preds = %out.i.do.end22.i_crit_edge, %if.end.i.do.end22.i_crit_edge
  %w.042.i = phi i32 [ %w.0.i, %out.i.do.end22.i_crit_edge ], [ %80, %if.end.i.do.end22.i_crit_edge ]
  %88 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hostdata, align 8
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %89, ptr noundef nonnull @.str.46, i32 noundef %w.042.i, i32 noundef %firmware_revision.2, i32 noundef %model.2) #14
  br label %sbp2_init_workarounds.exit

sbp2_init_workarounds.exit:                       ; preds = %do.end22.i, %out.i.sbp2_init_workarounds.exit_crit_edge
  %w.043.i = phi i32 [ %w.042.i, %do.end22.i ], [ 0, %out.i.sbp2_init_workarounds.exit_crit_edge ]
  %workarounds25.i = getelementptr inbounds %struct.Scsi_Host, ptr %call1, i32 1, i32 3, i32 0, i32 0, i32 4, i32 1
  %90 = ptrtoint ptr %workarounds25.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %w.043.i, ptr %workarounds25.i, align 4
  %max_speed = getelementptr i8, ptr %1, i32 -8
  %91 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %max_speed, align 8
  %add29 = add i32 %92, 7
  %93 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %card, align 4
  %max_receive = getelementptr inbounds %struct.fw_card, ptr %94, i32 0, i32 15
  %95 = ptrtoint ptr %max_receive to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %max_receive, align 8
  %sub = add i32 %96, -1
  %97 = call i32 @llvm.umin.i32(i32 %add29, i32 %sub)
  %98 = call i32 @llvm.umin.i32(i32 %97, i32 10)
  %max_payload = getelementptr inbounds %struct.Scsi_Host, ptr %call1, i32 1, i32 3, i32 0, i32 0, i32 4, i32 2
  %99 = ptrtoint ptr %max_payload to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %max_payload, align 4
  %100 = ptrtoint ptr %lu_list to i32
  call void @__asan_load4_noabort(i32 %100)
  %.pn98 = load ptr, ptr %lu_list, align 4
  %cmp43.not99 = icmp eq ptr %.pn98, %lu_list
  br i1 %cmp43.not99, label %sbp2_init_workarounds.exit.cleanup_crit_edge, label %sbp2_init_workarounds.exit.for.body_crit_edge

sbp2_init_workarounds.exit.for.body_crit_edge:    ; preds = %sbp2_init_workarounds.exit
  br label %for.body

sbp2_init_workarounds.exit.cleanup_crit_edge:     ; preds = %sbp2_init_workarounds.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sbp2_init_workarounds.exit.for.body_crit_edge
  %.pn100 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn98, %sbp2_init_workarounds.exit.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fw_workqueue to i32))
  %101 = load ptr, ptr @fw_workqueue, align 4
  %work.i = getelementptr i8, ptr %.pn100, i32 80
  %call.i.i93 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %101, ptr noundef %work.i, i32 noundef 20) #11
  %102 = ptrtoint ptr %.pn100 to i32
  call void @__asan_load4_noabort(i32 %102)
  %.pn = load ptr, ptr %.pn100, align 4
  %cmp43.not = icmp eq ptr %.pn, %lu_list
  br i1 %cmp43.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

fail_remove:                                      ; preds = %sbp2_scan_logical_unit_dir.exit.i, %sw.bb6.i.fail_remove_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ci.i) #11
  call void @sbp2_remove(ptr noundef %unit)
  br label %cleanup

fail_shost_put:                                   ; preds = %if.end14.fail_shost_put_crit_edge, %if.end3.fail_shost_put_crit_edge
  tail call void @scsi_host_put(ptr noundef nonnull %call1) #11
  br label %cleanup

cleanup:                                          ; preds = %fail_shost_put, %fail_remove, %for.body.cleanup_crit_edge, %sbp2_init_workarounds.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %fail_shost_put ], [ -12, %fail_remove ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %sbp2_init_workarounds.exit.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sbp2_update(ptr nocapture noundef readonly %unit) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -24
  %call2 = tail call i32 @fw_device_enable_phys_dma(ptr noundef %add.ptr.i.i) #11
  %lu_list = getelementptr inbounds %struct.sbp2_target, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %lu_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn15 = load ptr, ptr %lu_list, align 4
  %cmp.not16 = icmp eq ptr %.pn15, %lu_list
  br i1 %cmp.not16, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %sbp2_conditionally_block.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn17 = phi ptr [ %.pn, %sbp2_conditionally_block.exit.for.body_crit_edge ], [ %.pn15, %entry.for.body_crit_edge ]
  %lu.0 = getelementptr i8, ptr %.pn17, i32 -4
  %5 = ptrtoint ptr %lu.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lu.0, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %parent.i.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i.i.i, align 8
  %card2.i = getelementptr i8, ptr %10, i32 -4
  %11 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card2.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 -2448
  %lock.i = getelementptr inbounds %struct.sbp2_target, ptr %6, i32 0, i32 10
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %dont_block.i = getelementptr inbounds %struct.sbp2_target, ptr %6, i32 0, i32 11
  %13 = ptrtoint ptr %dont_block.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dont_block.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.sbp2_conditionally_block.exit_crit_edge

for.body.sbp2_conditionally_block.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sbp2_conditionally_block.exit

land.lhs.true.i:                                  ; preds = %for.body
  %blocked.i = getelementptr i8, ptr %.pn17, i32 181
  %15 = ptrtoint ptr %blocked.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %blocked.i, align 1, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool9.not.i = icmp eq i8 %16, 0
  br i1 %tobool9.not.i, label %land.lhs.true10.i, label %land.lhs.true.i.sbp2_conditionally_block.exit_crit_edge

land.lhs.true.i.sbp2_conditionally_block.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sbp2_conditionally_block.exit

land.lhs.true10.i:                                ; preds = %land.lhs.true.i
  %generation.i = getelementptr i8, ptr %.pn17, i32 68
  %17 = ptrtoint ptr %generation.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %generation.i, align 8
  %generation11.i = getelementptr inbounds %struct.fw_card, ptr %12, i32 0, i32 5
  %19 = ptrtoint ptr %generation11.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %generation11.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp12.not.i = icmp eq i32 %18, %20
  br i1 %cmp12.not.i, label %land.lhs.true10.i.sbp2_conditionally_block.exit_crit_edge, label %if.then.i

land.lhs.true10.i.sbp2_conditionally_block.exit_crit_edge: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sbp2_conditionally_block.exit

if.then.i:                                        ; preds = %land.lhs.true10.i
  %21 = ptrtoint ptr %blocked.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %blocked.i, align 1
  %blocked15.i = getelementptr inbounds %struct.sbp2_target, ptr %6, i32 0, i32 12
  %22 = ptrtoint ptr %blocked15.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %blocked15.i, align 8
  %inc.i = add i32 %23, 1
  store i32 %inc.i, ptr %blocked15.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp16.i = icmp eq i32 %23, 0
  br i1 %cmp16.i, label %if.then18.i, label %if.then.i.sbp2_conditionally_block.exit_crit_edge

if.then.i.sbp2_conditionally_block.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sbp2_conditionally_block.exit

if.then18.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @scsi_block_requests(ptr noundef %add.ptr.i) #11
  br label %sbp2_conditionally_block.exit

sbp2_conditionally_block.exit:                    ; preds = %if.then18.i, %if.then.i.sbp2_conditionally_block.exit_crit_edge, %land.lhs.true10.i.sbp2_conditionally_block.exit_crit_edge, %land.lhs.true.i.sbp2_conditionally_block.exit_crit_edge, %for.body.sbp2_conditionally_block.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call6.i) #11
  %retries = getelementptr i8, ptr %.pn17, i32 72
  %24 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %retries, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fw_workqueue to i32))
  %25 = load ptr, ptr @fw_workqueue, align 4
  %work.i = getelementptr i8, ptr %.pn17, i32 80
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %work.i, i32 noundef 0) #11
  %26 = ptrtoint ptr %.pn17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn = load ptr, ptr %.pn17, align 4
  %cmp.not = icmp eq ptr %.pn, %lu_list
  br i1 %cmp.not, label %sbp2_conditionally_block.exit.for.end_crit_edge, label %sbp2_conditionally_block.exit.for.body_crit_edge

sbp2_conditionally_block.exit.for.body_crit_edge: ; preds = %sbp2_conditionally_block.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

sbp2_conditionally_block.exit.for.end_crit_edge:  ; preds = %sbp2_conditionally_block.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %sbp2_conditionally_block.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sbp2_remove(ptr noundef %unit) #2 align 64 {
entry:
  %eight_bytes_lun.i = alloca %struct.scsi_lun, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -2448
  %lock.i = getelementptr inbounds %struct.sbp2_target, ptr %3, i32 0, i32 10
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #11
  %dont_block.i = getelementptr inbounds %struct.sbp2_target, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %dont_block.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dont_block.i, align 4
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %dont_block.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #11
  tail call void @scsi_unblock_requests(ptr noundef %add.ptr) #11
  %lu_list = getelementptr inbounds %struct.sbp2_target, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %lu_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lu_list, align 4
  %cmp.not61 = icmp eq ptr %7, %lu_list
  br i1 %cmp.not61, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %8 = getelementptr inbounds [8 x i8], ptr %eight_bytes_lun.i, i32 0, i32 1
  %generation19 = getelementptr i8, ptr %1, i32 -12
  %node_id23 = getelementptr i8, ptr %1, i32 -16
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in62 = phi ptr [ %7, %for.body.lr.ph ], [ %.pn66, %list_del.exit.for.body_crit_edge ]
  %lu.064 = getelementptr i8, ptr %.pn.in62, i32 -4
  %9 = ptrtoint ptr %.pn.in62 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn66 = load ptr, ptr %.pn.in62, align 4
  %work = getelementptr i8, ptr %.pn.in62, i32 80
  %call13 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #11
  %lun = getelementptr i8, ptr %.pn.in62, i32 60
  %10 = ptrtoint ptr %lun to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %lun, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %eight_bytes_lun.i) #11
  %12 = ptrtoint ptr %eight_bytes_lun.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %eight_bytes_lun.i, align 8
  %13 = lshr i16 %11, 8
  %conv1.i = trunc i16 %13 to i8
  store i8 %conv1.i, ptr %eight_bytes_lun.i, align 8
  %conv4.i = trunc i16 %11 to i8
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv4.i, ptr %8, align 1
  %call.i = call i64 @scsilun_to_int(ptr noundef nonnull %eight_bytes_lun.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %eight_bytes_lun.i) #11
  %15 = shl i64 %call.i, 32
  %conv = ashr exact i64 %15, 32
  %call15 = call ptr @scsi_device_lookup(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 0, i64 noundef %conv) #11
  %tobool.not = icmp eq ptr %call15, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @scsi_remove_device(ptr noundef nonnull %call15) #11
  call void @scsi_device_put(ptr noundef nonnull %call15) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %login_id = getelementptr i8, ptr %.pn.in62, i32 64
  %16 = ptrtoint ptr %login_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %login_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %17)
  %cmp16.not = icmp eq i32 %17, 65536
  br i1 %cmp16.not, label %if.end.if.end26_crit_edge, label %if.then18

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %generation19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %generation19, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !149
  %20 = ptrtoint ptr %node_id23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %node_id23, align 8
  %22 = ptrtoint ptr %login_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %login_id, align 4
  %call25 = call fastcc i32 @sbp2_send_management_orb(ptr noundef %lu.064, i32 noundef %21, i32 noundef %19, i32 noundef 7, i32 noundef %23, ptr noundef null)
  br label %if.end26

if.end26:                                         ; preds = %if.then18, %if.end.if.end26_crit_edge
  %address_handler = getelementptr i8, ptr %.pn.in62, i32 12
  call void @fw_core_remove_address_handler(ptr noundef %address_handler) #11
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in62) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end26.list_del.exit_crit_edge

if.end26.list_del.exit_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in62, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %.pn.in62 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %.pn.in62, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end26.list_del.exit_crit_edge
  %30 = ptrtoint ptr %.pn.in62 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in62, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in62, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %lu.064) #11
  %cmp.not = icmp eq ptr %.pn66, %lu_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  call void @scsi_remove_host(ptr noundef %add.ptr) #11
  %host_no = getelementptr i8, ptr %3, i32 -2004
  %32 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %host_no, align 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %unit, ptr noundef nonnull @.str.48, i32 noundef %33) #14
  call void @scsi_host_put(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_device_enable_phys_dma(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbp2_scsi_queuecommand(ptr nocapture noundef readnone %shost, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %parent.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2848, i32 noundef 1248) #15
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %rcode = getelementptr inbounds %struct.sbp2_orb, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %rcode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %rcode, align 4
  %kref = getelementptr inbounds %struct.sbp2_orb, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  %12 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 1, ptr %kref, align 4
  %cmd5 = getelementptr inbounds %struct.sbp2_command_orb, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %cmd5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cmd, ptr %cmd5, align 4
  %request = getelementptr inbounds %struct.sbp2_command_orb, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -2147483648, ptr %request, align 8
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 8
  %max_payload = getelementptr inbounds %struct.sbp2_target, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %max_payload to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_payload, align 4
  %shl = shl i32 %18, 20
  %max_speed = getelementptr i8, ptr %9, i32 -8
  %19 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_speed, align 8
  %shl7 = shl i32 %20, 24
  %or = or i32 %shl7, %shl
  %or8 = or i32 %or, -2147483648
  %misc = getelementptr inbounds %struct.sbp2_command_orb, ptr %call7.i.i, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %misc to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or8, ptr %misc, align 8
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 15
  %22 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp10 = icmp eq i32 %23, 2
  br i1 %cmp10, label %if.then11, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %or14 = or i32 %or, -2013265920
  %24 = ptrtoint ptr %misc to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or14, ptr %misc, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end.if.end15_crit_edge
  %generation16 = getelementptr i8, ptr %9, i32 -12
  %25 = ptrtoint ptr %generation16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %generation16, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !150
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 0, i32 1
  %27 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not = icmp eq i32 %28, 0
  br i1 %tobool.not, label %if.end15.if.end24_crit_edge, label %land.lhs.true

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end15
  %29 = ptrtoint ptr %cmd5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cmd5, align 4
  %sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %30, i32 0, i32 17
  %31 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sdb.i.i, align 4
  %call2.i = tail call i32 @scsi_dma_map(ptr noundef %30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 1
  br i1 %cmp.i, label %land.lhs.true.out_crit_edge, label %if.end.i

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end.i:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i)
  %cmp3.i = icmp eq i32 %call2.i, 1
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 8
  %address_high.i = getelementptr inbounds %struct.sbp2_target, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %address_high.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %address_high.i, align 8
  %data_descriptor.i = getelementptr inbounds %struct.sbp2_command_orb, ptr %call7.i.i, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %data_descriptor.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %data_descriptor.i, align 8
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %32, i32 0, i32 3
  %38 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_address.i, align 4
  %low.i = getelementptr inbounds %struct.sbp2_command_orb, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %40 = ptrtoint ptr %low.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %low.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %32, i32 0, i32 4
  %41 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dma_length.i, align 4
  %43 = ptrtoint ptr %misc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %misc, align 8
  %or.i = or i32 %44, %42
  br label %if.end24.sink.split

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.072.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %sg.071.i = phi ptr [ %call16.i, %for.body.i.for.body.i_crit_edge ], [ %32, %if.end.i.for.body.i_crit_edge ]
  %dma_length10.i = getelementptr inbounds %struct.scatterlist, ptr %sg.071.i, i32 0, i32 4
  %45 = ptrtoint ptr %dma_length10.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma_length10.i, align 4
  %shl.i = shl i32 %46, 16
  %arrayidx.i = getelementptr %struct.sbp2_command_orb, ptr %call7.i.i, i32 0, i32 3, i32 %i.072.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %shl.i, ptr %arrayidx.i, align 8
  %dma_address12.i = getelementptr inbounds %struct.scatterlist, ptr %sg.071.i, i32 0, i32 3
  %48 = ptrtoint ptr %dma_address12.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dma_address12.i, align 4
  %low15.i = getelementptr %struct.sbp2_command_orb, ptr %call7.i.i, i32 0, i32 3, i32 %i.072.i, i32 1
  %50 = ptrtoint ptr %low15.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %low15.i, align 4
  %inc.i = add nuw nsw i32 %i.072.i, 1
  %call16.i = tail call ptr @sg_next(ptr noundef %sg.071.i) #11
  %exitcond.not.i = icmp eq i32 %inc.i, %call2.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %card.i = getelementptr i8, ptr %9, i32 -4
  %51 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %card.i, align 4
  %device17.i = getelementptr inbounds %struct.fw_card, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %device17.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device17.i, align 4
  %page_table18.i = getelementptr inbounds %struct.sbp2_command_orb, ptr %call7.i.i, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %page_table18.i) #11
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %for.end.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !151

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %54) #11
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %54, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %58, %if.end.i.i.i ], [ %56, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #11
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %54, ptr noundef %page_table18.i, i32 noundef 1024) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %59 = load ptr, ptr @mem_map, align 4
  %60 = ptrtoint ptr %page_table18.i to i32
  %sub.i.i = add i32 %60, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %59, i32 %shr.i.i
  %and.i.i = and i32 %60, 4088
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %54, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef 1024, i32 noundef 1, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %page_table_bus.i = getelementptr inbounds %struct.sbp2_command_orb, ptr %call7.i.i, i32 0, i32 4
  %61 = ptrtoint ptr %page_table_bus.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %retval.0.i.i, ptr %page_table_bus.i, align 8
  %62 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %card.i, align 4
  %device21.i = getelementptr inbounds %struct.fw_card, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %device21.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %device21.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %65, i32 noundef %retval.0.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %fail_page_table.i, label %if.end25.i

if.end25.i:                                       ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %3, align 8
  %address_high27.i = getelementptr inbounds %struct.sbp2_target, ptr %67, i32 0, i32 6
  %68 = ptrtoint ptr %address_high27.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %address_high27.i, align 8
  %data_descriptor29.i = getelementptr inbounds %struct.sbp2_command_orb, ptr %call7.i.i, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %data_descriptor29.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %data_descriptor29.i, align 8
  %71 = ptrtoint ptr %page_table_bus.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %page_table_bus.i, align 8
  %low34.i = getelementptr inbounds %struct.sbp2_command_orb, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %73 = ptrtoint ptr %low34.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %low34.i, align 4
  %74 = ptrtoint ptr %misc to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %misc, align 8
  %or35.i = or i32 %call2.i, %75
  %or38.i = or i32 %or35.i, 524288
  br label %if.end24.sink.split

fail_page_table.i:                                ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %cmd5 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cmd5, align 4
  tail call void @scsi_dma_unmap(ptr noundef %77) #11
  br label %out

if.end24.sink.split:                              ; preds = %if.end25.i, %if.then4.i
  %or38.i.sink = phi i32 [ %or38.i, %if.end25.i ], [ %or.i, %if.then4.i ]
  %78 = ptrtoint ptr %misc to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or38.i.sink, ptr %misc, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %if.end15.if.end24_crit_edge
  %command_block = getelementptr inbounds %struct.sbp2_command_orb, ptr %call7.i.i, i32 0, i32 1, i32 3
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %79 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cmnd, align 4
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %81 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %cmd_len, align 4
  %conv = zext i16 %82 to i32
  %83 = call ptr @memcpy(ptr %command_block, ptr %80, i32 %conv)
  %callback = getelementptr inbounds %struct.sbp2_orb, ptr %call7.i.i, i32 0, i32 4
  %84 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @complete_command_orb, ptr %callback, align 8
  %card = getelementptr i8, ptr %9, i32 -4
  %85 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %card, align 4
  %device27 = getelementptr inbounds %struct.fw_card, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %device27 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %device27, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %request) #11
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end24
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !151

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i80 = tail call ptr @dev_driver_string(ptr noundef %88) #11
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %90, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %91 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %88, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i81 = phi ptr [ %92, %if.end.i.i ], [ %90, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %call16.i80, ptr noundef %retval.0.i.i81) #11
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %88, ptr noundef %request, i32 noundef 36) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %93 = load ptr, ptr @mem_map, align 4
  %94 = ptrtoint ptr %request to i32
  %sub.i = add i32 %94, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %93, i32 %shr.i
  %and.i = and i32 %94, 4088
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %88, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 36, i32 noundef 1, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i82 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %request_bus = getelementptr inbounds %struct.sbp2_orb, ptr %call7.i.i, i32 0, i32 2
  %95 = ptrtoint ptr %request_bus to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %retval.0.i82, ptr %request_bus, align 8
  %96 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %card, align 4
  %device32 = getelementptr inbounds %struct.fw_card, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %device32 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %device32, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %99, i32 noundef %retval.0.i82) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i82)
  %cmp.i83 = icmp eq i32 %retval.0.i82, -1
  br i1 %cmp.i83, label %if.then37, label %if.end40

if.then37:                                        ; preds = %dma_map_single_attrs.exit
  %100 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %card, align 4
  %device39 = getelementptr inbounds %struct.fw_card, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %device39 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %device39, align 4
  %104 = ptrtoint ptr %cmd5 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cmd5, align 4
  tail call void @scsi_dma_unmap(ptr noundef %105) #11
  %106 = ptrtoint ptr %misc to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %misc, align 8
  %and.i86 = and i32 %107, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i86)
  %tobool.not.i = icmp eq i32 %and.i86, 0
  br i1 %tobool.not.i, label %if.then37.out_crit_edge, label %if.then.i88

if.then37.out_crit_edge:                          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then.i88:                                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  %page_table_bus.i87 = getelementptr inbounds %struct.sbp2_command_orb, ptr %call7.i.i, i32 0, i32 4
  %108 = ptrtoint ptr %page_table_bus.i87 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %page_table_bus.i87, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %103, i32 noundef %109, i32 noundef 1024, i32 noundef 1, i32 noundef 0) #11
  br label %out

if.end40:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %110 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %3, align 8
  %node_id = getelementptr inbounds %struct.sbp2_target, ptr %111, i32 0, i32 5
  %112 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %node_id, align 4
  %command_block_agent_address = getelementptr inbounds %struct.sbp2_logical_unit, ptr %3, i32 0, i32 4
  %114 = ptrtoint ptr %command_block_agent_address to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %command_block_agent_address, align 8
  %add = add i64 %115, 8
  tail call fastcc void @sbp2_send_orb(ptr noundef nonnull %call7.i.i, ptr noundef %3, i32 noundef %113, i32 noundef %26, i64 noundef %add)
  br label %out

out:                                              ; preds = %if.end40, %if.then.i88, %if.then37.out_crit_edge, %fail_page_table.i, %land.lhs.true.out_crit_edge
  %retval2.0 = phi i32 [ 0, %if.end40 ], [ 4181, %if.then37.out_crit_edge ], [ 4181, %if.then.i88 ], [ 4181, %land.lhs.true.out_crit_edge ], [ 4181, %fail_page_table.i ]
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !152
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %116 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !153
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %116, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i91, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !151

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #11
  br label %cleanup

if.then.i91:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !154
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i91, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 4181, %entry.cleanup_crit_edge ], [ %retval2.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %retval2.0, %if.then10.i.i.i.i ], [ %retval2.0, %if.then.i91 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbp2_scsi_abort(ptr nocapture noundef readonly %cmd) #2 align 64 {
entry:
  %d.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %7, ptr noundef nonnull @.str.6) #14
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %parent.i.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d.i) #11
  %14 = ptrtoint ptr %d.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %d.i, align 4
  %card.i = getelementptr i8, ptr %13, i32 -4
  %15 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card.i, align 4
  %node_id.i = getelementptr inbounds %struct.sbp2_target, ptr %9, i32 0, i32 5
  %17 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %node_id.i, align 4
  %generation.i = getelementptr inbounds %struct.sbp2_logical_unit, ptr %3, i32 0, i32 7
  %19 = ptrtoint ptr %generation.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %generation.i, align 8
  %max_speed.i = getelementptr i8, ptr %13, i32 -8
  %21 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_speed.i, align 8
  %command_block_agent_address.i = getelementptr inbounds %struct.sbp2_logical_unit, ptr %3, i32 0, i32 4
  %23 = ptrtoint ptr %command_block_agent_address.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %command_block_agent_address.i, align 8
  %add.i = add i64 %24, 4
  %call2.i = call i32 @fw_run_transaction(ptr noundef %16, i32 noundef 0, i32 noundef %18, i32 noundef %20, i32 noundef %22, i64 noundef %add.i, ptr noundef nonnull %d.i, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d.i) #11
  %call1 = call fastcc i32 @sbp2_cancel_orbs(ptr noundef %3)
  ret i32 8194
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbp2_scsi_slave_alloc(ptr nocapture noundef %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 21
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %allow_restart = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %2 = ptrtoint ptr %allow_restart to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %bf.load = load i64, ptr %allow_restart, align 4
  %bf.set = or i64 %bf.load, 68719476736
  store i64 %bf.set, ptr %allow_restart, align 4
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %3 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %request_queue, align 4
  tail call void @blk_queue_update_dma_alignment(ptr noundef %4, i32 noundef 3) #11
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %workarounds = getelementptr inbounds %struct.sbp2_target, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %workarounds to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %workarounds, align 4
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %inquiry_len = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 27
  %9 = ptrtoint ptr %inquiry_len to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 36, ptr %inquiry_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -38, %entry.cleanup_crit_edge ], [ 0, %if.then2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbp2_scsi_slave_configure(ptr nocapture noundef %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 21
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %use_10_for_rw = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %2 = ptrtoint ptr %use_10_for_rw to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %bf.load = load i64, ptr %use_10_for_rw, align 4
  %bf.set = or i64 %bf.load, 281474976710656
  store i64 %bf.set, ptr %use_10_for_rw, align 4
  %3 = load i8, ptr @sbp2_param_exclusive_login, align 1, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set3 = or i64 %bf.load, 281509336449024
  %4 = ptrtoint ptr %use_10_for_rw to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %bf.set3, ptr %use_10_for_rw, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %type = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 22
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %type, align 4
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %6, label %if.end.if.end19_crit_edge [
    i8 5, label %if.end.if.end19.sink.split_crit_edge
    i8 0, label %land.lhs.true
  ]

if.end.if.end19.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.sink.split

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %workarounds = getelementptr inbounds %struct.sbp2_target, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %workarounds to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %workarounds, align 4
  %and = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end19_crit_edge, label %land.lhs.true.if.end19.sink.split_crit_edge

land.lhs.true.if.end19.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.sink.split

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.end19.sink.split:                              ; preds = %land.lhs.true.if.end19.sink.split_crit_edge, %if.end.if.end19.sink.split_crit_edge
  %.sink = phi i64 [ 140737488355328, %if.end.if.end19.sink.split_crit_edge ], [ 4398046511104, %land.lhs.true.if.end19.sink.split_crit_edge ]
  %12 = ptrtoint ptr %use_10_for_rw to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %bf.load6 = load i64, ptr %use_10_for_rw, align 4
  %bf.set8 = or i64 %bf.load6, %.sink
  store i64 %bf.set8, ptr %use_10_for_rw, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %land.lhs.true.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %workarounds21 = getelementptr inbounds %struct.sbp2_target, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %workarounds21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %workarounds21, align 4
  %and22 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end19.if.end28_crit_edge, label %if.then24

if.end19.if.end28_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %use_10_for_rw to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %bf.load25 = load i64, ptr %use_10_for_rw, align 4
  %bf.set27 = or i64 %bf.load25, 2147483648
  store i64 %bf.set27, ptr %use_10_for_rw, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end19.if.end28_crit_edge
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %workarounds30 = getelementptr inbounds %struct.sbp2_target, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %workarounds30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %workarounds30, align 4
  %and31 = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end28.if.end37_crit_edge, label %if.then33

if.end28.if.end37_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %use_10_for_rw to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %bf.load34 = load i64, ptr %use_10_for_rw, align 4
  %bf.set36 = or i64 %bf.load34, 17179869184
  store i64 %bf.set36, ptr %use_10_for_rw, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.end28.if.end37_crit_edge
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %workarounds39 = getelementptr inbounds %struct.sbp2_target, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %workarounds39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %workarounds39, align 4
  %and40 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end37.if.end43_crit_edge, label %if.then42

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %27 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %request_queue, align 4
  tail call void @blk_queue_max_hw_sectors(ptr noundef %28, i32 noundef 256) #11
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end37.if.end43_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @complete_command_orb(ptr nocapture noundef readonly %base_orb, ptr noundef readonly %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lu = getelementptr inbounds %struct.sbp2_orb, ptr %base_orb, i32 0, i32 5
  %0 = ptrtoint ptr %lu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lu, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %parent.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i.i, align 8
  %cmp.not = icmp eq ptr %status, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  %10 = and i32 %9, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 2592, i32 noundef 148) #15
  %cmp.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp.i, label %if.then2.if.end_crit_edge, label %if.end.i

if.then2.if.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %card.i = getelementptr i8, ptr %7, i32 -4
  %12 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card.i, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %node_id.i = getelementptr inbounds %struct.sbp2_target, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %node_id.i, align 4
  %generation.i = getelementptr inbounds %struct.sbp2_logical_unit, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %generation.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %generation.i, align 8
  %max_speed.i = getelementptr i8, ptr %7, i32 -8
  %20 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_speed.i, align 8
  %command_block_agent_address.i = getelementptr inbounds %struct.sbp2_logical_unit, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %command_block_agent_address.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %command_block_agent_address.i, align 8
  %add.i = add i64 %23, 4
  tail call void @fw_send_request(ptr noundef %13, ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef %17, i32 noundef %19, i32 noundef %21, i64 noundef %add.i, ptr noundef nonnull @sbp2_agent_reset_no_wait.d, i32 noundef 4, ptr noundef nonnull @complete_agent_reset_write_no_wait, ptr noundef nonnull %call7.i.i) #11
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then2.if.end_crit_edge, %if.then.if.end_crit_edge
  %24 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status, align 4
  %shr5 = lshr i32 %25, 28
  %and6 = and i32 %shr5, 3
  %26 = zext i32 %and6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %and6, label %if.end.unreachabledefault [
    i32 0, label %land.lhs.true
    i32 1, label %if.end.if.end18_crit_edge
    i32 2, label %if.end.sw.default_crit_edge
    i32 3, label %if.end.sw.default_crit_edge46
  ]

if.end.sw.default_crit_edge46:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.default

if.end.sw.default_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.default

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.end.unreachabledefault:                        ; preds = %if.end
  unreachable

sw.default:                                       ; preds = %if.end.sw.default_crit_edge, %if.end.sw.default_crit_edge46
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end
  %27 = and i32 %25, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp13.not = icmp eq i32 %27, 0
  br i1 %cmp13.not, label %land.lhs.true.if.end18_crit_edge, label %if.then14

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then14:                                        ; preds = %land.lhs.true
  %data = getelementptr inbounds %struct.sbp2_status, ptr %status, i32 0, i32 2
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %switch.i = icmp slt i8 %29, 0
  br i1 %switch.i, label %if.then14.if.end18_crit_edge, label %if.end.i38

if.then14.if.end18_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.end.i38:                                       ; preds = %if.then14
  %cmd = getelementptr inbounds %struct.sbp2_command_orb, ptr %base_orb, i32 0, i32 2
  %30 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cmd, align 4
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %31, i32 0, i32 21
  %32 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sense_buffer, align 4
  %34 = lshr i8 %29, 6
  %arrayidx4.i = getelementptr %struct.sbp2_status, ptr %status, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx4.i, align 1
  %37 = and i8 %36, -128
  %38 = or i8 %34, %37
  %or784.i = or i8 %38, 112
  %39 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %or784.i, ptr %33, align 1
  %arrayidx10.i = getelementptr i8, ptr %33, i32 1
  %40 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %arrayidx10.i, align 1
  %41 = load i8, ptr %arrayidx4.i, align 1
  %shl.i = shl i8 %41, 1
  %and13.i = and i8 %shl.i, -32
  %and16.i = and i8 %41, 15
  %or17.i = or i8 %and13.i, %and16.i
  %arrayidx19.i = getelementptr i8, ptr %33, i32 2
  %42 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %or17.i, ptr %arrayidx19.i, align 1
  %arrayidx20.i = getelementptr %struct.sbp2_status, ptr %status, i32 0, i32 2, i32 4
  %43 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx20.i, align 1
  %arrayidx21.i = getelementptr i8, ptr %33, i32 3
  %45 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx21.i, align 1
  %arrayidx22.i = getelementptr %struct.sbp2_status, ptr %status, i32 0, i32 2, i32 5
  %46 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx22.i, align 1
  %arrayidx23.i = getelementptr i8, ptr %33, i32 4
  %48 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx23.i, align 1
  %arrayidx24.i = getelementptr %struct.sbp2_status, ptr %status, i32 0, i32 2, i32 6
  %49 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx24.i, align 1
  %arrayidx25.i = getelementptr i8, ptr %33, i32 5
  %51 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx25.i, align 1
  %arrayidx26.i = getelementptr %struct.sbp2_status, ptr %status, i32 0, i32 2, i32 7
  %52 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx26.i, align 1
  %arrayidx27.i = getelementptr i8, ptr %33, i32 6
  %54 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %arrayidx27.i, align 1
  %arrayidx28.i = getelementptr i8, ptr %33, i32 7
  %55 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 10, ptr %arrayidx28.i, align 1
  %arrayidx29.i = getelementptr %struct.sbp2_status, ptr %status, i32 0, i32 2, i32 8
  %56 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx29.i, align 1
  %arrayidx30.i = getelementptr i8, ptr %33, i32 8
  %58 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %arrayidx30.i, align 1
  %arrayidx31.i = getelementptr %struct.sbp2_status, ptr %status, i32 0, i32 2, i32 9
  %59 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx31.i, align 1
  %arrayidx32.i = getelementptr i8, ptr %33, i32 9
  %61 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %arrayidx32.i, align 1
  %arrayidx33.i = getelementptr %struct.sbp2_status, ptr %status, i32 0, i32 2, i32 10
  %62 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx33.i, align 1
  %arrayidx34.i = getelementptr i8, ptr %33, i32 10
  %64 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %arrayidx34.i, align 1
  %arrayidx35.i = getelementptr %struct.sbp2_status, ptr %status, i32 0, i32 2, i32 11
  %65 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx35.i, align 1
  %arrayidx36.i = getelementptr i8, ptr %33, i32 11
  %67 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %arrayidx36.i, align 1
  %arrayidx37.i = getelementptr %struct.sbp2_status, ptr %status, i32 0, i32 2, i32 2
  %68 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx37.i, align 1
  %arrayidx38.i = getelementptr i8, ptr %33, i32 12
  %70 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %arrayidx38.i, align 1
  %arrayidx39.i = getelementptr %struct.sbp2_status, ptr %status, i32 0, i32 2, i32 3
  %71 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx39.i, align 1
  %arrayidx40.i = getelementptr i8, ptr %33, i32 13
  %73 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %arrayidx40.i, align 1
  %arrayidx41.i = getelementptr %struct.sbp2_status, ptr %status, i32 0, i32 2, i32 12
  %74 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx41.i, align 1
  %arrayidx42.i = getelementptr i8, ptr %33, i32 14
  %76 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %arrayidx42.i, align 1
  %arrayidx43.i = getelementptr %struct.sbp2_status, ptr %status, i32 0, i32 2, i32 13
  %77 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx43.i, align 1
  %arrayidx44.i = getelementptr i8, ptr %33, i32 15
  %79 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %arrayidx44.i, align 1
  %80 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %data, align 1
  %82 = and i8 %81, 63
  %and47.i = zext i8 %82 to i32
  %83 = zext i32 %and47.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %and47.i, label %sw.default.i [
    i32 0, label %if.end.i38.if.end18_crit_edge
    i32 2, label %if.end.i38.if.end18_crit_edge47
    i32 4, label %if.end.i38.if.end18_crit_edge48
    i32 8, label %if.end.i38.if.end18_crit_edge49
    i32 24, label %if.end.i38.if.end18_crit_edge50
    i32 34, label %if.end.i38.if.end18_crit_edge51
  ]

if.end.i38.if.end18_crit_edge51:                  ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.end.i38.if.end18_crit_edge50:                  ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.end.i38.if.end18_crit_edge49:                  ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.end.i38.if.end18_crit_edge48:                  ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.end.i38.if.end18_crit_edge47:                  ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.end.i38.if.end18_crit_edge:                    ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

sw.default.i:                                     ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.else:                                          ; preds = %entry
  %card2.i = getelementptr i8, ptr %7, i32 -4
  %84 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %card2.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -2448
  %lock.i = getelementptr inbounds %struct.sbp2_target, ptr %3, i32 0, i32 10
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %dont_block.i = getelementptr inbounds %struct.sbp2_target, ptr %3, i32 0, i32 11
  %86 = ptrtoint ptr %dont_block.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %dont_block.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i = icmp eq i32 %87, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.else.sbp2_conditionally_block.exit_crit_edge

if.else.sbp2_conditionally_block.exit_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %sbp2_conditionally_block.exit

land.lhs.true.i:                                  ; preds = %if.else
  %blocked.i = getelementptr inbounds %struct.sbp2_logical_unit, ptr %1, i32 0, i32 12
  %88 = ptrtoint ptr %blocked.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %blocked.i, align 1, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool9.not.i = icmp eq i8 %89, 0
  br i1 %tobool9.not.i, label %land.lhs.true10.i, label %land.lhs.true.i.sbp2_conditionally_block.exit_crit_edge

land.lhs.true.i.sbp2_conditionally_block.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sbp2_conditionally_block.exit

land.lhs.true10.i:                                ; preds = %land.lhs.true.i
  %generation.i40 = getelementptr inbounds %struct.sbp2_logical_unit, ptr %1, i32 0, i32 7
  %90 = ptrtoint ptr %generation.i40 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %generation.i40, align 8
  %generation11.i = getelementptr inbounds %struct.fw_card, ptr %85, i32 0, i32 5
  %92 = ptrtoint ptr %generation11.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %generation11.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %93)
  %cmp12.not.i = icmp eq i32 %91, %93
  br i1 %cmp12.not.i, label %land.lhs.true10.i.sbp2_conditionally_block.exit_crit_edge, label %if.then.i

land.lhs.true10.i.sbp2_conditionally_block.exit_crit_edge: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sbp2_conditionally_block.exit

if.then.i:                                        ; preds = %land.lhs.true10.i
  %94 = ptrtoint ptr %blocked.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %blocked.i, align 1
  %blocked15.i = getelementptr inbounds %struct.sbp2_target, ptr %3, i32 0, i32 12
  %95 = ptrtoint ptr %blocked15.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %blocked15.i, align 8
  %inc.i = add i32 %96, 1
  store i32 %inc.i, ptr %blocked15.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp16.i = icmp eq i32 %96, 0
  br i1 %cmp16.i, label %if.then18.i, label %if.then.i.sbp2_conditionally_block.exit_crit_edge

if.then.i.sbp2_conditionally_block.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sbp2_conditionally_block.exit

if.then18.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @scsi_block_requests(ptr noundef %add.ptr.i) #11
  br label %sbp2_conditionally_block.exit

sbp2_conditionally_block.exit:                    ; preds = %if.then18.i, %if.then.i.sbp2_conditionally_block.exit_crit_edge, %land.lhs.true10.i.sbp2_conditionally_block.exit_crit_edge, %land.lhs.true.i.sbp2_conditionally_block.exit_crit_edge, %if.else.sbp2_conditionally_block.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call6.i) #11
  br label %if.end18

if.end18:                                         ; preds = %sbp2_conditionally_block.exit, %sw.default.i, %if.end.i38.if.end18_crit_edge, %if.end.i38.if.end18_crit_edge47, %if.end.i38.if.end18_crit_edge48, %if.end.i38.if.end18_crit_edge49, %if.end.i38.if.end18_crit_edge50, %if.end.i38.if.end18_crit_edge51, %if.then14.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %sw.default, %if.end.if.end18_crit_edge
  %result.1 = phi i32 [ 0, %land.lhs.true.if.end18_crit_edge ], [ 131072, %sbp2_conditionally_block.exit ], [ 458752, %sw.default.i ], [ 458752, %if.then14.if.end18_crit_edge ], [ %and47.i, %if.end.i38.if.end18_crit_edge ], [ %and47.i, %if.end.i38.if.end18_crit_edge47 ], [ %and47.i, %if.end.i38.if.end18_crit_edge48 ], [ %and47.i, %if.end.i38.if.end18_crit_edge49 ], [ %and47.i, %if.end.i38.if.end18_crit_edge50 ], [ %and47.i, %if.end.i38.if.end18_crit_edge51 ], [ 458752, %sw.default ], [ 131072, %if.end.if.end18_crit_edge ]
  %card = getelementptr i8, ptr %7, i32 -4
  %97 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %card, align 4
  %device19 = getelementptr inbounds %struct.fw_card, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %device19 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %device19, align 4
  %request_bus = getelementptr inbounds %struct.sbp2_orb, ptr %base_orb, i32 0, i32 2
  %101 = ptrtoint ptr %request_bus to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %request_bus, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %100, i32 noundef %102, i32 noundef 36, i32 noundef 1, i32 noundef 0) #11
  %103 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %card, align 4
  %device21 = getelementptr inbounds %struct.fw_card, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %device21 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %device21, align 4
  %cmd.i = getelementptr inbounds %struct.sbp2_command_orb, ptr %base_orb, i32 0, i32 2
  %107 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cmd.i, align 4
  tail call void @scsi_dma_unmap(ptr noundef %108) #11
  %misc.i = getelementptr inbounds %struct.sbp2_command_orb, ptr %base_orb, i32 0, i32 1, i32 2
  %109 = ptrtoint ptr %misc.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %misc.i, align 8
  %and.i = and i32 %110, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i41 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i41, label %if.end18.sbp2_unmap_scatterlist.exit_crit_edge, label %if.then.i42

if.end18.sbp2_unmap_scatterlist.exit_crit_edge:   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %sbp2_unmap_scatterlist.exit

if.then.i42:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %page_table_bus.i = getelementptr inbounds %struct.sbp2_command_orb, ptr %base_orb, i32 0, i32 4
  %111 = ptrtoint ptr %page_table_bus.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %page_table_bus.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %106, i32 noundef %112, i32 noundef 1024, i32 noundef 1, i32 noundef 0) #11
  br label %sbp2_unmap_scatterlist.exit

sbp2_unmap_scatterlist.exit:                      ; preds = %if.then.i42, %if.end18.sbp2_unmap_scatterlist.exit_crit_edge
  %113 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cmd.i, align 4
  %result23 = getelementptr inbounds %struct.scsi_cmnd, ptr %114, i32 0, i32 24
  %115 = ptrtoint ptr %result23 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %result.1, ptr %result23, align 4
  %116 = load ptr, ptr %cmd.i, align 4
  tail call void @scsi_done(ptr noundef %116) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sbp2_send_orb(ptr noundef %orb, ptr noundef %lu, i32 noundef %node_id, i32 noundef %generation, i64 noundef %offset) unnamed_addr #2 align 64 {
entry:
  %orb_pointer = alloca %struct.sbp2_pointer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lu, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %parent.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %orb_pointer) #11
  %6 = getelementptr inbounds %struct.sbp2_pointer, ptr %orb_pointer, i32 0, i32 1
  %7 = ptrtoint ptr %orb_pointer to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %orb_pointer, align 4
  %request_bus = getelementptr inbounds %struct.sbp2_orb, ptr %orb, i32 0, i32 2
  %8 = ptrtoint ptr %request_bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %request_bus, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %6, align 4
  %lu1 = getelementptr inbounds %struct.sbp2_orb, ptr %orb, i32 0, i32 5
  %11 = ptrtoint ptr %lu1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %lu, ptr %lu1, align 4
  %12 = ptrtoint ptr %lu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lu, align 8
  %lock = getelementptr inbounds %struct.sbp2_target, ptr %13, i32 0, i32 10
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %link = getelementptr inbounds %struct.sbp2_orb, ptr %orb, i32 0, i32 6
  %orb_list = getelementptr inbounds %struct.sbp2_logical_unit, ptr %lu, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.sbp2_logical_unit, ptr %lu, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link, ptr noundef %15, ptr noundef %orb_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %link, ptr %prev.i, align 4
  %17 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %orb_list, ptr %link, align 4
  %prev3.i.i = getelementptr inbounds %struct.sbp2_orb, ptr %orb, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %link, ptr %15, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %20 = ptrtoint ptr %lu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lu, align 8
  %lock9 = getelementptr inbounds %struct.sbp2_target, ptr %21, i32 0, i32 10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock9, i32 noundef %call5) #11
  %kref = getelementptr inbounds %struct.sbp2_orb, ptr %orb, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !155
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !156

list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %list_add_tail.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %23 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %.not.i.i.i.i = icmp sgt i32 %23, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !151

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #11
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %call.i.i.i.i.i.i22 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !155
  %asmresult.i.i.i.i.i.i23 = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i23)
  %tobool1.not.i.i.i.i24 = icmp eq i32 %asmresult.i.i.i.i.i.i23, 0
  br i1 %tobool1.not.i.i.i.i24, label %kref_get.exit.if.end15.sink.split.i.i.i.i29_crit_edge, label %if.else.i.i.i.i27, !prof !156

kref_get.exit.if.end15.sink.split.i.i.i.i29_crit_edge: ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i29

if.else.i.i.i.i27:                                ; preds = %kref_get.exit
  %add.i.i.i.i25 = add i32 %asmresult.i.i.i.i.i.i23, 1
  %25 = or i32 %add.i.i.i.i25, %asmresult.i.i.i.i.i.i23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i.i26 = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i.i26, label %if.else.i.i.i.i27.kref_get.exit30_crit_edge, label %if.else.i.i.i.i27.if.end15.sink.split.i.i.i.i29_crit_edge, !prof !151

if.else.i.i.i.i27.if.end15.sink.split.i.i.i.i29_crit_edge: ; preds = %if.else.i.i.i.i27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i29

if.else.i.i.i.i27.kref_get.exit30_crit_edge:      ; preds = %if.else.i.i.i.i27
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit30

if.end15.sink.split.i.i.i.i29:                    ; preds = %if.else.i.i.i.i27.if.end15.sink.split.i.i.i.i29_crit_edge, %kref_get.exit.if.end15.sink.split.i.i.i.i29_crit_edge
  %.sink.i.i.i.i28 = phi i32 [ 2, %kref_get.exit.if.end15.sink.split.i.i.i.i29_crit_edge ], [ 1, %if.else.i.i.i.i27.if.end15.sink.split.i.i.i.i29_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i28) #11
  br label %kref_get.exit30

kref_get.exit30:                                  ; preds = %if.end15.sink.split.i.i.i.i29, %if.else.i.i.i.i27.kref_get.exit30_crit_edge
  %card = getelementptr i8, ptr %5, i32 -4
  %26 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card, align 4
  %max_speed = getelementptr i8, ptr %5, i32 -8
  %28 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_speed, align 8
  call void @fw_send_request(ptr noundef %27, ptr noundef %orb, i32 noundef 1, i32 noundef %node_id, i32 noundef %generation, i32 noundef %29, i64 noundef %offset, ptr noundef nonnull %orb_pointer, i32 noundef 8, ptr noundef nonnull @complete_transaction, ptr noundef %orb) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %orb_pointer) #11
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dma_map(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_send_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @complete_agent_reset_write_no_wait(ptr nocapture noundef readnone %card, i32 noundef %rcode, ptr nocapture noundef readnone %payload, i32 noundef %length, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %data) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_block_requests(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @complete_transaction(ptr nocapture noundef readnone %card, i32 noundef %rcode, ptr nocapture noundef readnone %payload, i32 noundef %length, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lu = getelementptr inbounds %struct.sbp2_orb, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %lu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lu, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %lock = getelementptr inbounds %struct.sbp2_target, ptr %3, i32 0, i32 10
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %rcode5 = getelementptr inbounds %struct.sbp2_orb, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %rcode5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rcode5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp6 = icmp eq i32 %5, -1
  br i1 %cmp6, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %rcode5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %rcode, ptr %rcode5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = phi i32 [ %rcode, %if.then ], [ %5, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp10.not = icmp eq i32 %7, 0
  br i1 %cmp10.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end
  %link = getelementptr inbounds %struct.sbp2_orb, ptr %data, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %link) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then12.list_del.exit_crit_edge

if.then12.list_del.exit_crit_edge:                ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.sbp2_orb, ptr %data, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then12.list_del.exit_crit_edge
  %14 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %link, align 4
  %prev.i = getelementptr inbounds %struct.sbp2_orb, ptr %data, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %16 = ptrtoint ptr %lu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lu, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %lock15 = getelementptr inbounds %struct.sbp2_target, ptr %19, i32 0, i32 10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock15, i32 noundef %call2) #11
  %callback = getelementptr inbounds %struct.sbp2_orb, ptr %data, i32 0, i32 4
  %20 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %callback, align 4
  tail call void %21(ptr noundef %data, ptr noundef null) #11
  %kref = getelementptr inbounds %struct.sbp2_orb, ptr %data, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !152
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !153
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end20_crit_edge, label %if.then10.i.i.i.i, !prof !151

if.end5.i.i.i.i.if.end20_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #11
  br label %if.end20

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !154
  tail call void @kfree(ptr noundef %data) #11
  br label %if.end20

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %lu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lu, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %lock19 = getelementptr inbounds %struct.sbp2_target, ptr %26, i32 0, i32 10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock19, i32 noundef %call2) #11
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end20_crit_edge
  %kref21 = getelementptr inbounds %struct.sbp2_orb, ptr %data, i32 0, i32 1
  %call.i.i.i.i.i.i34 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref21, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !152
  tail call void @llvm.prefetch.p0(ptr %kref21, i32 1, i32 3, i32 1) #11
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref21, ptr %kref21, i32 1, ptr elementtype(i32) %kref21) #11, !srcloc !153
  %asmresult.i.i.i.i.i.i.i35 = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i35)
  %cmp.i.i.i.i36 = icmp eq i32 %asmresult.i.i.i.i.i.i.i35, 1
  br i1 %cmp.i.i.i.i36, label %if.then.i41, label %if.end5.i.i.i.i38

if.end5.i.i.i.i38:                                ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i35)
  %.not.i.i.i.i37 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i35, 0
  br i1 %.not.i.i.i.i37, label %if.end5.i.i.i.i38.kref_put.exit42_crit_edge, label %if.then10.i.i.i.i39, !prof !151

if.end5.i.i.i.i38.kref_put.exit42_crit_edge:      ; preds = %if.end5.i.i.i.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_put.exit42

if.then10.i.i.i.i39:                              ; preds = %if.end5.i.i.i.i38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %kref21, i32 noundef 3) #11
  br label %kref_put.exit42

if.then.i41:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !154
  tail call void @kfree(ptr noundef %data) #11
  br label %kref_put.exit42

kref_put.exit42:                                  ; preds = %if.then.i41, %if.then10.i.i.i.i39, %if.end5.i.i.i.i38.kref_put.exit42_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sbp2_cancel_orbs(ptr noundef %lu) unnamed_addr #2 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lu, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %parent.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #11
  %6 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list, ptr %list, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %6, align 4
  %lock = getelementptr inbounds %struct.sbp2_target, ptr %1, i32 0, i32 10
  call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %orb_list = getelementptr inbounds %struct.sbp2_logical_unit, ptr %lu, i32 0, i32 3
  %9 = ptrtoint ptr %orb_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %orb_list, align 4
  %cmp.i.not.i = icmp eq ptr %10, %orb_list
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %list, align 4
  %prev2.i.i = getelementptr inbounds %struct.sbp2_logical_unit, ptr %lu, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list, ptr %prev3.i.i, align 4
  store ptr %10, ptr %list, align 4
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %12, ptr %14, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev6.i.i, align 4
  %18 = ptrtoint ptr %orb_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %orb_list, ptr %orb_list, align 4
  store ptr %orb_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  %19 = ptrtoint ptr %lu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lu, align 8
  %lock4 = getelementptr inbounds %struct.sbp2_target, ptr %20, i32 0, i32 10
  call void @_raw_spin_unlock_irq(ptr noundef %lock4) #11
  %21 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %list, align 4
  %cmp.not33 = icmp eq ptr %22, %list
  br i1 %cmp.not33, label %list_splice_init.exit.for.end_crit_edge, label %for.body.lr.ph

list_splice_init.exit.for.end_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_splice_init.exit
  %card = getelementptr i8, ptr %5, i32 -4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in34 = phi ptr [ %22, %for.body.lr.ph ], [ %.pn36, %for.inc.for.body_crit_edge ]
  %orb.035 = getelementptr i8, ptr %.pn.in34, i32 -168
  %23 = ptrtoint ptr %.pn.in34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn36 = load ptr, ptr %.pn.in34, align 4
  %24 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card, align 4
  %call11 = call i32 @fw_cancel_transaction(ptr noundef %25, ptr noundef %orb.035) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %rcode = getelementptr i8, ptr %.pn.in34, i32 -12
  %26 = ptrtoint ptr %rcode to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 17, ptr %rcode, align 4
  %callback = getelementptr i8, ptr %.pn.in34, i32 -8
  %27 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %callback, align 4
  call void %28(ptr noundef %orb.035, ptr noundef null) #11
  %kref = getelementptr i8, ptr %.pn.in34, i32 -20
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !152
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %29 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !153
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i30, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i.i, !prof !151

if.end5.i.i.i.i.for.inc_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #11
  br label %for.inc

if.then.i30:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !154
  call void @kfree(ptr noundef %orb.035) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then.i30, %if.then10.i.i.i.i, %if.end5.i.i.i.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn36, %list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %list_splice_init.exit.for.end_crit_edge
  %retval1.0.lcssa = phi i32 [ -2, %list_splice_init.exit.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #11
  ret i32 %retval1.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_run_transaction(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_cancel_transaction(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_update_dma_alignment(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_hw_sectors(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbp2_sysfs_ieee1394_id_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %hostdata = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %guid = getelementptr inbounds %struct.sbp2_target, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %guid to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %guid, align 8
  %directory_id = getelementptr inbounds %struct.sbp2_target, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %directory_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %directory_id, align 8
  %lun = getelementptr inbounds %struct.sbp2_logical_unit, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %lun to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %lun, align 8
  %conv = zext i16 %9 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i64 noundef %5, i32 noundef %7, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_csr_iterator_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_csr_iterator_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sbp2_add_logical_unit(ptr noundef %tgt, i32 noundef %lun_entry) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 192) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %address_handler = getelementptr inbounds %struct.sbp2_logical_unit, ptr %call7.i, i32 0, i32 2
  %length = getelementptr inbounds %struct.sbp2_logical_unit, ptr %call7.i, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 256, ptr %length, align 8
  %address_callback = getelementptr inbounds %struct.sbp2_logical_unit, ptr %call7.i, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %address_callback to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @sbp2_status_write, ptr %address_callback, align 8
  %callback_data = getelementptr inbounds %struct.sbp2_logical_unit, ptr %call7.i, i32 0, i32 2, i32 3
  %3 = ptrtoint ptr %callback_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i, ptr %callback_data, align 4
  %call4 = tail call i32 @fw_core_add_address_handler(ptr noundef %address_handler, ptr noundef nonnull @fw_high_memory_region) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tgt, ptr %call7.i, align 8
  %conv = trunc i32 %lun_entry to i16
  %lun = getelementptr inbounds %struct.sbp2_logical_unit, ptr %call7.i, i32 0, i32 5
  %5 = ptrtoint ptr %lun to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %lun, align 8
  %login_id = getelementptr inbounds %struct.sbp2_logical_unit, ptr %call7.i, i32 0, i32 6
  %6 = ptrtoint ptr %login_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 65536, ptr %login_id, align 4
  %retries = getelementptr inbounds %struct.sbp2_logical_unit, ptr %call7.i, i32 0, i32 8
  %7 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %retries, align 4
  %has_sdev = getelementptr inbounds %struct.sbp2_logical_unit, ptr %call7.i, i32 0, i32 11
  %8 = ptrtoint ptr %has_sdev to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %has_sdev, align 8
  %blocked = getelementptr inbounds %struct.sbp2_logical_unit, ptr %call7.i, i32 0, i32 12
  %9 = ptrtoint ptr %blocked to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %blocked, align 1
  %dont_block = getelementptr inbounds %struct.sbp2_target, ptr %tgt, i32 0, i32 11
  %10 = ptrtoint ptr %dont_block to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dont_block, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %dont_block, align 4
  %orb_list = getelementptr inbounds %struct.sbp2_logical_unit, ptr %call7.i, i32 0, i32 3
  %12 = ptrtoint ptr %orb_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %orb_list, ptr %orb_list, align 8
  %prev.i = getelementptr inbounds %struct.sbp2_logical_unit, ptr %call7.i, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %orb_list, ptr %prev.i, align 4
  %workfn = getelementptr inbounds %struct.sbp2_logical_unit, ptr %call7.i, i32 0, i32 9
  %14 = ptrtoint ptr %workfn to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @sbp2_login, ptr %workfn, align 8
  %work = getelementptr inbounds %struct.sbp2_logical_unit, ptr %call7.i, i32 0, i32 10
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #11
  %15 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.sbp2_logical_unit, ptr %call7.i, i32 0, i32 10, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.13, ptr noundef nonnull @sbp2_add_logical_unit.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry16 = getelementptr inbounds %struct.sbp2_logical_unit, ptr %call7.i, i32 0, i32 10, i32 0, i32 1
  %16 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry16, ptr %entry16, align 8
  %prev.i48 = getelementptr inbounds %struct.sbp2_logical_unit, ptr %call7.i, i32 0, i32 10, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry16, ptr %prev.i48, align 4
  %func = getelementptr inbounds %struct.sbp2_logical_unit, ptr %call7.i, i32 0, i32 10, i32 0, i32 2
  %18 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @sbp2_lu_workfn, ptr %func, align 8
  %timer = getelementptr inbounds %struct.sbp2_logical_unit, ptr %call7.i, i32 0, i32 10, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.15, ptr noundef nonnull @sbp2_add_logical_unit.__key.14) #11
  %link = getelementptr inbounds %struct.sbp2_logical_unit, ptr %call7.i, i32 0, i32 1
  %lu_list = getelementptr inbounds %struct.sbp2_target, ptr %tgt, i32 0, i32 1
  %prev.i49 = getelementptr inbounds %struct.sbp2_target, ptr %tgt, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i49 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i49, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link, ptr noundef %20, ptr noundef %lu_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %prev.i49 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %link, ptr %prev.i49, align 4
  %22 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %lu_list, ptr %link, align 4
  %prev3.i.i = getelementptr inbounds %struct.sbp2_logical_unit, ptr %call7.i, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i, align 8
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %link, ptr %20, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end6.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then5 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sbp2_status_write(ptr noundef %card, ptr noundef %request, i32 noundef %tcode, i32 noundef %destination, i32 noundef %source, i32 noundef %generation, i64 noundef %offset, ptr nocapture noundef readonly %payload, i32 noundef %length, ptr noundef readonly %callback_data) #2 align 64 {
entry:
  %status = alloca %struct.sbp2_status, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %status) #11
  %0 = getelementptr inbounds %struct.sbp2_status, ptr %status, i32 0, i32 1
  %1 = getelementptr inbounds %struct.sbp2_status, ptr %status, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %tcode)
  %cmp.not = icmp ne i32 %tcode, 1
  %2 = add i32 %length, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25, i32 %2)
  %3 = icmp ult i32 %2, -25
  %4 = or i1 %cmp.not, %3
  br i1 %4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @fw_send_response(ptr noundef %card, ptr noundef %request, i32 noundef 6) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %payload, align 4
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %status, align 4
  %add.ptr = getelementptr i8, ptr %payload, i32 4
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %0, align 4
  %11 = call ptr @memset(ptr %1, i32 0, i32 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %length)
  %cmp6 = icmp ugt i32 %length, 8
  br i1 %cmp6, label %if.then7, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr10 = getelementptr i8, ptr %payload, i32 8
  %sub = add nsw i32 %length, -8
  %12 = call ptr @memcpy(ptr %1, ptr %add.ptr10, i32 %sub)
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end.if.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %switch = icmp slt i32 %6, 0
  %13 = ptrtoint ptr %callback_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %callback_data, align 8
  br i1 %switch, label %do.end, label %do.body23

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %16, ptr noundef nonnull @.str.16) #14
  tail call void @fw_send_response(ptr noundef %card, ptr noundef %request, i32 noundef 0) #11
  br label %cleanup

do.body23:                                        ; preds = %if.end11
  %lock = getelementptr inbounds %struct.sbp2_target, ptr %14, i32 0, i32 10
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %orb_list = getelementptr inbounds %struct.sbp2_logical_unit, ptr %callback_data, i32 0, i32 3
  %17 = ptrtoint ptr %orb_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn94 = load ptr, ptr %orb_list, align 4
  %cmp34.not95 = icmp eq ptr %.pn94, %orb_list
  br i1 %cmp34.not95, label %do.body23.do.end61_crit_edge, label %for.body.lr.ph

do.body23.do.end61_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end61

for.body.lr.ph:                                   ; preds = %do.body23
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status, align 4
  %and37 = and i32 %19, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %cmp38 = icmp eq i32 %and37, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn96 = phi ptr [ %.pn94, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  br i1 %cmp38, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %0, align 4
  %request_bus = getelementptr i8, ptr %.pn96, i32 -16
  %22 = ptrtoint ptr %request_bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %request_bus, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp41 = icmp eq i32 %21, %23
  br i1 %cmp41, label %if.then43, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then43:                                        ; preds = %land.lhs.true
  %orb.0.le = getelementptr i8, ptr %.pn96, i32 -168
  %rcode = getelementptr i8, ptr %.pn96, i32 -12
  %24 = ptrtoint ptr %rcode to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %rcode, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn96) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then43.if.then57_crit_edge

if.then43.if.then57_crit_edge:                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57

if.end.i.i:                                       ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn96, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %.pn96 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %.pn96, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %if.then57

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %31 = ptrtoint ptr %.pn96 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn = load ptr, ptr %.pn96, align 4
  %cmp34.not = icmp eq ptr %.pn, %orb_list
  br i1 %cmp34.not, label %for.inc.do.end61_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.do.end61_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end61

if.then57:                                        ; preds = %if.end.i.i, %if.then43.if.then57_crit_edge
  %32 = ptrtoint ptr %.pn96 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn96, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn96, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %34 = ptrtoint ptr %callback_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %callback_data, align 8
  %lock52 = getelementptr inbounds %struct.sbp2_target, ptr %35, i32 0, i32 10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock52, i32 noundef %call26) #11
  %callback = getelementptr i8, ptr %.pn96, i32 -8
  %36 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %callback, align 4
  call void %37(ptr noundef %orb.0.le, ptr noundef nonnull %status) #11
  %kref = getelementptr i8, ptr %.pn96, i32 -20
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !152
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %38 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !153
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end63_crit_edge, label %if.then10.i.i.i.i, !prof !151

if.end5.i.i.i.i.if.end63_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #11
  br label %if.end63

if.then.i:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !154
  call void @kfree(ptr noundef %orb.0.le) #11
  br label %if.end63

do.end61:                                         ; preds = %for.inc.do.end61_crit_edge, %do.body23.do.end61_crit_edge
  %39 = ptrtoint ptr %callback_data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %callback_data, align 8
  %lock5291 = getelementptr inbounds %struct.sbp2_target, ptr %40, i32 0, i32 10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock5291, i32 noundef %call26) #11
  %41 = ptrtoint ptr %callback_data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %callback_data, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.19) #14
  br label %if.end63

if.end63:                                         ; preds = %do.end61, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end63_crit_edge
  call void @fw_send_response(ptr noundef %card, ptr noundef %request, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %status) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_core_add_address_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sbp2_login(ptr noundef %work) #2 align 64 {
entry:
  %eight_bytes_lun.i = alloca %struct.scsi_lun, align 8
  %d.i156 = alloca i32, align 4
  %d.i = alloca i32, align 4
  %response = alloca %struct.sbp2_login_response, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -84
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %parent.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 -24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %response) #11
  %6 = getelementptr inbounds %struct.sbp2_login_response, ptr %response, i32 0, i32 1
  %7 = getelementptr inbounds %struct.sbp2_login_response, ptr %response, i32 0, i32 1, i32 1
  %8 = call ptr @memset(ptr %response, i32 255, i32 16)
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i.i.i, i32 noundef 4) #11
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp.i.not = icmp eq i32 %10, 3
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %generation3 = getelementptr i8, ptr %5, i32 -12
  %11 = ptrtoint ptr %generation3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %generation3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !157
  %node_id7 = getelementptr i8, ptr %5, i32 -16
  %13 = ptrtoint ptr %node_id7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %node_id7, align 8
  %card = getelementptr i8, ptr %5, i32 -4
  %15 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card, align 4
  %node_id8 = getelementptr inbounds %struct.fw_card, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %node_id8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %node_id8, align 4
  %has_sdev = getelementptr i8, ptr %work, i32 100
  %19 = ptrtoint ptr %has_sdev to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %has_sdev, align 8, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool9.not = icmp eq i8 %20, 0
  br i1 %tobool9.not, label %if.end.if.end13_crit_edge, label %if.then10

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %login_id = getelementptr i8, ptr %work, i32 -16
  %21 = ptrtoint ptr %login_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %login_id, align 4
  %call12 = tail call fastcc i32 @sbp2_send_management_orb(ptr noundef %add.ptr, i32 noundef %14, i32 noundef %12, i32 noundef 7, i32 noundef %22, ptr noundef null)
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end.if.end13_crit_edge
  %lun = getelementptr i8, ptr %work, i32 -20
  %23 = ptrtoint ptr %lun to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %lun, align 8
  %conv = zext i16 %24 to i32
  %call14 = call fastcc i32 @sbp2_send_management_orb(ptr noundef %add.ptr, i32 noundef %14, i32 noundef %12, i32 noundef 0, i32 noundef %conv, ptr noundef nonnull %response)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %if.then16, label %if.end28

if.then16:                                        ; preds = %if.end13
  %retries = getelementptr i8, ptr %work, i32 -8
  %25 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %retries, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %26)
  %cmp17 = icmp slt i32 %26, 5
  br i1 %cmp17, label %if.then19, label %do.end22

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fw_workqueue to i32))
  %27 = load ptr, ptr @fw_workqueue, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %work, i32 noundef 20) #11
  br label %cleanup

do.end22:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %30 = ptrtoint ptr %lun to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %lun, align 8
  %conv25 = zext i16 %31 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.22, i32 noundef %conv25) #14
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i = getelementptr i8, ptr %33, i32 -2448
  %lock.i = getelementptr inbounds %struct.sbp2_target, ptr %33, i32 0, i32 10
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #11
  %dont_block.i = getelementptr inbounds %struct.sbp2_target, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %dont_block.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dont_block.i, align 4
  %inc.i = add i32 %35, 1
  store i32 %inc.i, ptr %dont_block.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #11
  call void @scsi_unblock_requests(ptr noundef %add.ptr.i) #11
  br label %cleanup

if.end28:                                         ; preds = %if.end13
  %node_id29 = getelementptr inbounds %struct.sbp2_target, ptr %1, i32 0, i32 5
  %36 = ptrtoint ptr %node_id29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %14, ptr %node_id29, align 4
  %shl = shl i32 %18, 16
  %address_high = getelementptr inbounds %struct.sbp2_target, ptr %1, i32 0, i32 6
  %37 = ptrtoint ptr %address_high to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %shl, ptr %address_high, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !158
  %generation36 = getelementptr i8, ptr %work, i32 -12
  %38 = ptrtoint ptr %generation36 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %12, ptr %generation36, align 8
  %39 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %6, align 4
  %and = and i32 %40, 65535
  %conv37 = zext i32 %and to i64
  %shl38 = shl nuw nsw i64 %conv37, 32
  %41 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %7, align 4
  %conv40 = zext i32 %42 to i64
  %or = or i64 %shl38, %conv40
  %command_block_agent_address = getelementptr i8, ptr %work, i32 -28
  %43 = ptrtoint ptr %command_block_agent_address to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %or, ptr %command_block_agent_address, align 8
  %44 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %response, align 4
  %and41 = and i32 %45, 65535
  %login_id42 = getelementptr i8, ptr %work, i32 -16
  %46 = ptrtoint ptr %login_id42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and41, ptr %login_id42, align 4
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 8
  %49 = ptrtoint ptr %lun to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %lun, align 8
  %conv48 = zext i16 %50 to i32
  %retries49 = getelementptr i8, ptr %work, i32 -8
  %51 = ptrtoint ptr %retries49 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %retries49, align 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %48, ptr noundef nonnull @.str.25, i32 noundef %conv48, i32 noundef %52) #14
  %53 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 8
  %parent.i.i.i = getelementptr inbounds %struct.device, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %parent.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d.i) #11
  %59 = ptrtoint ptr %d.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 819215, ptr %d.i, align 4
  %card.i = getelementptr i8, ptr %58, i32 -4
  %60 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %card.i, align 4
  %node_id.i = getelementptr inbounds %struct.sbp2_target, ptr %54, i32 0, i32 5
  %62 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %node_id.i, align 4
  %64 = ptrtoint ptr %generation36 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %generation36, align 8
  %max_speed.i = getelementptr i8, ptr %58, i32 -8
  %66 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_speed.i, align 8
  %call2.i = call i32 @fw_run_transaction(ptr noundef %61, i32 noundef 0, i32 noundef %63, i32 noundef %65, i32 noundef %67, i64 noundef 281474708275728, ptr noundef nonnull %d.i, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d.i) #11
  %workfn = getelementptr i8, ptr %work, i32 -4
  %68 = ptrtoint ptr %workfn to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @sbp2_reconnect, ptr %workfn, align 8
  %69 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %add.ptr, align 8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 8
  %parent.i.i.i157 = getelementptr inbounds %struct.device, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %parent.i.i.i157 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %parent.i.i.i157, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d.i156) #11
  %75 = ptrtoint ptr %d.i156 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %d.i156, align 4
  %card.i158 = getelementptr i8, ptr %74, i32 -4
  %76 = ptrtoint ptr %card.i158 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %card.i158, align 4
  %node_id.i159 = getelementptr inbounds %struct.sbp2_target, ptr %70, i32 0, i32 5
  %78 = ptrtoint ptr %node_id.i159 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %node_id.i159, align 4
  %80 = ptrtoint ptr %generation36 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %generation36, align 8
  %max_speed.i161 = getelementptr i8, ptr %74, i32 -8
  %82 = ptrtoint ptr %max_speed.i161 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %max_speed.i161, align 8
  %84 = ptrtoint ptr %command_block_agent_address to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %command_block_agent_address, align 8
  %add.i = add i64 %85, 4
  %call2.i162 = call i32 @fw_run_transaction(ptr noundef %77, i32 noundef 0, i32 noundef %79, i32 noundef %81, i32 noundef %83, i64 noundef %add.i, ptr noundef nonnull %d.i156, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d.i156) #11
  %86 = ptrtoint ptr %has_sdev to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %has_sdev, align 8, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool51.not = icmp eq i8 %87, 0
  br i1 %tobool51.not, label %if.end54, label %if.then52

if.then52:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %call53 = call fastcc i32 @sbp2_cancel_orbs(ptr noundef %add.ptr)
  call fastcc void @sbp2_conditionally_unblock(ptr noundef %add.ptr)
  br label %cleanup

if.end54:                                         ; preds = %if.end28
  %88 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %add.ptr, align 8
  %workarounds = getelementptr inbounds %struct.sbp2_target, ptr %89, i32 0, i32 7
  %90 = ptrtoint ptr %workarounds to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %workarounds, align 4
  %and56 = and i32 %91, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end54.if.end59_crit_edge, label %if.then58

if.end54.if.end59_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  call void @msleep(i32 noundef 12000) #11
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end54.if.end59_crit_edge
  %add.ptr62 = getelementptr i8, ptr %1, i32 -2448
  %92 = ptrtoint ptr %lun to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %lun, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %eight_bytes_lun.i) #11
  %94 = getelementptr inbounds [8 x i8], ptr %eight_bytes_lun.i, i32 0, i32 1
  %95 = ptrtoint ptr %eight_bytes_lun.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 0, ptr %eight_bytes_lun.i, align 8
  %96 = lshr i16 %93, 8
  %conv1.i = trunc i16 %96 to i8
  store i8 %conv1.i, ptr %eight_bytes_lun.i, align 8
  %conv4.i = trunc i16 %93 to i8
  %97 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv4.i, ptr %94, align 1
  %call.i = call i64 @scsilun_to_int(ptr noundef nonnull %eight_bytes_lun.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %eight_bytes_lun.i) #11
  %98 = shl i64 %call.i, 32
  %conv65 = ashr exact i64 %98, 32
  %call66 = call ptr @__scsi_add_device(ptr noundef %add.ptr62, i32 noundef 0, i32 noundef 0, i64 noundef %conv65, ptr noundef %add.ptr) #11
  %cmp.i163 = icmp ugt ptr %call66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i163, label %if.end59.do.end86_crit_edge, label %do.end73

if.end59.do.end86_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end86

do.end73:                                         ; preds = %if.end59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !159
  %99 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %card, align 4
  %generation77 = getelementptr inbounds %struct.fw_card, ptr %100, i32 0, i32 5
  %101 = ptrtoint ptr %generation77 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %generation77, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %102)
  %cmp78.not = icmp eq i32 %12, %102
  br i1 %cmp78.not, label %if.end81, label %if.then80

if.then80:                                        ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #13
  call void @scsi_remove_device(ptr noundef %call66) #11
  call void @scsi_device_put(ptr noundef %call66) #11
  br label %do.end86

if.end81:                                         ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #13
  %103 = ptrtoint ptr %has_sdev to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 1, ptr %has_sdev, align 8
  call void @scsi_device_put(ptr noundef %call66) #11
  call fastcc void @sbp2_allow_block(ptr noundef %1)
  br label %cleanup

do.end86:                                         ; preds = %if.then80, %if.end59.do.end86_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !160
  %104 = ptrtoint ptr %generation3 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %generation3, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !161
  %106 = ptrtoint ptr %node_id7 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %node_id7, align 8
  %108 = ptrtoint ptr %login_id42 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %login_id42, align 4
  %call98 = call fastcc i32 @sbp2_send_management_orb(ptr noundef %add.ptr, i32 noundef %107, i32 noundef %105, i32 noundef 7, i32 noundef %109, ptr noundef null)
  %110 = ptrtoint ptr %workfn to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @sbp2_login, ptr %workfn, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end86, %if.end81, %if.then52, %do.end22, %if.then19, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %response) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sbp2_lu_workfn(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %workfn = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %workfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %workfn, align 8
  tail call void %1(ptr noundef %work) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_send_response(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sbp2_send_management_orb(ptr noundef %lu, i32 noundef %node_id, i32 noundef %generation, i32 noundef %function, i32 noundef %lun_or_login_id, ptr noundef writeonly %response) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lu, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %parent.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %function)
  %cmp = icmp eq i32 %function, 7
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 -24
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i.i.i, i32 noundef 4) #11
  %6 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.i170.not = icmp eq i32 %7, 3
  br i1 %cmp.i170.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3328, i32 noundef 316) #15
  %cmp4 = icmp eq ptr %call7.i.i, null
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %kref = getelementptr inbounds %struct.sbp2_orb, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  %9 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %kref, align 4
  %card = getelementptr i8, ptr %5, i32 -4
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %device7 = getelementptr inbounds %struct.fw_card, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %device7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device7, align 4
  %response8 = getelementptr inbounds %struct.sbp2_management_orb, ptr %call7.i.i, i32 0, i32 2
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %response8) #11
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end6
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i171, !prof !151

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit

if.then.i171:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %13) #11
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i171.dev_name.exit.i_crit_edge

if.then.i171.dev_name.exit.i_crit_edge:           ; preds = %if.then.i171
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i171
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i171.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %17, %if.end.i.i ], [ %15, %if.then.i171.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %13, ptr noundef %response8, i32 noundef 16) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %19 = ptrtoint ptr %response8 to i32
  %sub.i = add i32 %19, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %18, i32 %shr.i
  %and.i = and i32 %19, 4088
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %13, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 16, i32 noundef 2, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i172 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %response_bus = getelementptr inbounds %struct.sbp2_management_orb, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %response_bus to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %retval.0.i172, ptr %response_bus, align 8
  %21 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card, align 4
  %device11 = getelementptr inbounds %struct.fw_card, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %device11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device11, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %24, i32 noundef %retval.0.i172) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i172)
  %cmp.i173 = icmp eq i32 %retval.0.i172, -1
  br i1 %cmp.i173, label %dma_map_single_attrs.exit.fail_mapping_response_crit_edge, label %if.end16

dma_map_single_attrs.exit.fail_mapping_response_crit_edge: ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_mapping_response

if.end16:                                         ; preds = %dma_map_single_attrs.exit
  %request = getelementptr inbounds %struct.sbp2_management_orb, ptr %call7.i.i, i32 0, i32 1
  %response17 = getelementptr inbounds %struct.sbp2_management_orb, ptr %call7.i.i, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %response17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %response17, align 8
  %26 = ptrtoint ptr %response_bus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %response_bus, align 8
  %low = getelementptr inbounds %struct.sbp2_management_orb, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %28 = ptrtoint ptr %low to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %low, align 4
  %shl = shl i32 %function, 16
  %or = or i32 %shl, %lun_or_login_id
  %or21 = or i32 %or, -2147483648
  %misc = getelementptr inbounds %struct.sbp2_management_orb, ptr %call7.i.i, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %misc to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or21, ptr %misc, align 8
  %length = getelementptr inbounds %struct.sbp2_management_orb, ptr %call7.i.i, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 16, ptr %length, align 4
  %address_handler = getelementptr inbounds %struct.sbp2_logical_unit, ptr %lu, i32 0, i32 2
  %31 = ptrtoint ptr %address_handler to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %address_handler, align 8
  %shr = lshr i64 %32, 32
  %conv = trunc i64 %shr to i32
  %status_fifo = getelementptr inbounds %struct.sbp2_management_orb, ptr %call7.i.i, i32 0, i32 1, i32 4
  %33 = ptrtoint ptr %status_fifo to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv, ptr %status_fifo, align 8
  %conv28 = trunc i64 %32 to i32
  %low31 = getelementptr inbounds %struct.sbp2_management_orb, ptr %call7.i.i, i32 0, i32 1, i32 4, i32 1
  %34 = ptrtoint ptr %low31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv28, ptr %low31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %function)
  %cmp32 = icmp eq i32 %function, 0
  br i1 %cmp32, label %if.then34, label %if.end16.if.end42_crit_edge

if.end16.if.end42_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then34:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %35 = load i8, ptr @sbp2_param_exclusive_login, align 1, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool35.not = icmp eq i8 %35, 0
  %or37 = select i1 %tobool35.not, i32 2097152, i32 270532608
  %or40 = or i32 %or37, %or21
  %36 = ptrtoint ptr %misc to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or40, ptr %misc, align 8
  %37 = ptrtoint ptr %lu to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lu, align 8
  %mgt_orb_timeout = getelementptr inbounds %struct.sbp2_target, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %mgt_orb_timeout to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mgt_orb_timeout, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then34, %if.end16.if.end42_crit_edge
  %timeout.0 = phi i32 [ %40, %if.then34 ], [ 2000, %if.end16.if.end42_crit_edge ]
  %done = getelementptr inbounds %struct.sbp2_management_orb, ptr %call7.i.i, i32 0, i32 4
  %41 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.sbp2_management_orb, ptr %call7.i.i, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @init_completion.__key) #11
  %callback = getelementptr inbounds %struct.sbp2_orb, ptr %call7.i.i, i32 0, i32 4
  %42 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @complete_management_orb, ptr %callback, align 8
  %43 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %card, align 4
  %device45 = getelementptr inbounds %struct.fw_card, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %device45 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device45, align 4
  %call.i174 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %request) #11
  br i1 %call.i174, label %land.rhs.i176, label %if.end39.i189

land.rhs.i176:                                    ; preds = %if.end42
  %.b1.i175 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i175, label %land.rhs.i176.dma_map_single_attrs.exit191_crit_edge, label %if.then.i180, !prof !151

land.rhs.i176.dma_map_single_attrs.exit191_crit_edge: ; preds = %land.rhs.i176
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit191

if.then.i180:                                     ; preds = %land.rhs.i176
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i177 = tail call ptr @dev_driver_string(ptr noundef %46) #11
  %init_name.i.i178 = getelementptr inbounds %struct.device, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %init_name.i.i178 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %init_name.i.i178, align 8
  %tobool.not.i.i179 = icmp eq ptr %48, null
  br i1 %tobool.not.i.i179, label %if.end.i.i181, label %if.then.i180.dev_name.exit.i183_crit_edge

if.then.i180.dev_name.exit.i183_crit_edge:        ; preds = %if.then.i180
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i183

if.end.i.i181:                                    ; preds = %if.then.i180
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %46, align 4
  br label %dev_name.exit.i183

dev_name.exit.i183:                               ; preds = %if.end.i.i181, %if.then.i180.dev_name.exit.i183_crit_edge
  %retval.0.i.i182 = phi ptr [ %50, %if.end.i.i181 ], [ %48, %if.then.i180.dev_name.exit.i183_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %call16.i177, ptr noundef %retval.0.i.i182) #11
  br label %dma_map_single_attrs.exit191

if.end39.i189:                                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %46, ptr noundef %request, i32 noundef 32) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %51 = load ptr, ptr @mem_map, align 4
  %52 = ptrtoint ptr %request to i32
  %sub.i184 = add i32 %52, 1073741824
  %shr.i185 = lshr i32 %sub.i184, 12
  %add.ptr.i186 = getelementptr %struct.page, ptr %51, i32 %shr.i185
  %and.i187 = and i32 %52, 4088
  %call41.i188 = tail call i32 @dma_map_page_attrs(ptr noundef %46, ptr noundef %add.ptr.i186, i32 noundef %and.i187, i32 noundef 32, i32 noundef 1, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit191

dma_map_single_attrs.exit191:                     ; preds = %if.end39.i189, %dev_name.exit.i183, %land.rhs.i176.dma_map_single_attrs.exit191_crit_edge
  %retval.0.i190 = phi i32 [ %call41.i188, %if.end39.i189 ], [ -1, %dev_name.exit.i183 ], [ -1, %land.rhs.i176.dma_map_single_attrs.exit191_crit_edge ]
  %request_bus = getelementptr inbounds %struct.sbp2_orb, ptr %call7.i.i, i32 0, i32 2
  %53 = ptrtoint ptr %request_bus to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %retval.0.i190, ptr %request_bus, align 8
  %54 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %card, align 4
  %device50 = getelementptr inbounds %struct.fw_card, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %device50 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device50, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %57, i32 noundef %retval.0.i190) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i190)
  %cmp.i192 = icmp eq i32 %retval.0.i190, -1
  br i1 %cmp.i192, label %dma_map_single_attrs.exit191.fail_mapping_request_crit_edge, label %if.end56

dma_map_single_attrs.exit191.fail_mapping_request_crit_edge: ; preds = %dma_map_single_attrs.exit191
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_mapping_request

if.end56:                                         ; preds = %dma_map_single_attrs.exit191
  %58 = ptrtoint ptr %lu to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %lu, align 8
  %management_agent_address = getelementptr inbounds %struct.sbp2_target, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %management_agent_address to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %management_agent_address, align 8
  tail call fastcc void @sbp2_send_orb(ptr noundef nonnull %call7.i.i, ptr noundef %lu, i32 noundef %node_id, i32 noundef %generation, i64 noundef %61)
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout.0) #11
  %call61 = tail call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef %call2.i) #11
  %call62 = tail call fastcc i32 @sbp2_cancel_orbs(ptr noundef %lu)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp eq i32 %call62, 0
  br i1 %cmp63, label %do.end, label %if.end68

do.end:                                           ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %lu to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %lu, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 8
  %rcode = getelementptr inbounds %struct.sbp2_orb, ptr %call7.i.i, i32 0, i32 3
  %66 = ptrtoint ptr %rcode to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rcode, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.27, i32 noundef %67) #14
  br label %out

if.end68:                                         ; preds = %if.end56
  %rcode70 = getelementptr inbounds %struct.sbp2_orb, ptr %call7.i.i, i32 0, i32 3
  %68 = ptrtoint ptr %rcode70 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rcode70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp71.not = icmp eq i32 %69, 0
  br i1 %cmp71.not, label %if.end80, label %do.end76

do.end76:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %lu to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %lu, align 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.30, i32 noundef %69) #14
  br label %out

if.end80:                                         ; preds = %if.end68
  %status = getelementptr inbounds %struct.sbp2_management_orb, ptr %call7.i.i, i32 0, i32 5
  %74 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %status, align 4
  %76 = and i32 %75, 822018048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %if.end80.out_crit_edge, label %do.end94

if.end80.out_crit_edge:                           ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end94:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %lu to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %lu, align 8
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 8
  %shr98 = lshr i32 %75, 28
  %and99 = and i32 %shr98, 3
  %shr102 = lshr i32 %75, 16
  %and103 = and i32 %shr102, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.33, i32 noundef %and99, i32 noundef %and103) #14
  br label %out

out:                                              ; preds = %do.end94, %if.end80.out_crit_edge, %do.end76, %do.end
  %retval1.0 = phi i32 [ -5, %do.end ], [ -5, %do.end76 ], [ -5, %do.end94 ], [ 0, %if.end80.out_crit_edge ]
  %82 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %card, align 4
  %device106 = getelementptr inbounds %struct.fw_card, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %device106 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %device106, align 4
  %86 = ptrtoint ptr %request_bus to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %request_bus, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %85, i32 noundef %87, i32 noundef 32, i32 noundef 1, i32 noundef 0) #11
  br label %fail_mapping_request

fail_mapping_request:                             ; preds = %out, %dma_map_single_attrs.exit191.fail_mapping_request_crit_edge
  %retval1.1 = phi i32 [ %retval1.0, %out ], [ -12, %dma_map_single_attrs.exit191.fail_mapping_request_crit_edge ]
  %88 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %card, align 4
  %device110 = getelementptr inbounds %struct.fw_card, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %device110 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %device110, align 4
  %92 = ptrtoint ptr %response_bus to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %response_bus, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %91, i32 noundef %93, i32 noundef 16, i32 noundef 2, i32 noundef 0) #11
  br label %fail_mapping_response

fail_mapping_response:                            ; preds = %fail_mapping_request, %dma_map_single_attrs.exit.fail_mapping_response_crit_edge
  %retval1.2 = phi i32 [ %retval1.1, %fail_mapping_request ], [ -12, %dma_map_single_attrs.exit.fail_mapping_response_crit_edge ]
  %tobool112.not = icmp eq ptr %response, null
  br i1 %tobool112.not, label %fail_mapping_response.if.end115_crit_edge, label %if.then113

fail_mapping_response.if.end115_crit_edge:        ; preds = %fail_mapping_response
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

if.then113:                                       ; preds = %fail_mapping_response
  call void @__sanitizer_cov_trace_pc() #13
  %94 = call ptr @memcpy(ptr %response, ptr %response8, i32 16)
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %fail_mapping_response.if.end115_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !152
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %95 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !153
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %95, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i194, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !151

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #11
  br label %cleanup

if.then.i194:                                     ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !154
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i194, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval1.2, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %retval1.2, %if.then10.i.i.i.i ], [ %retval1.2, %if.then.i194 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sbp2_reconnect(ptr noundef %work) #2 align 64 {
entry:
  %d.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -84
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %parent.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 -24
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i.i.i, i32 noundef 4) #11
  %6 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.i.not = icmp eq i32 %7, 3
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %generation3 = getelementptr i8, ptr %5, i32 -12
  %8 = ptrtoint ptr %generation3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %generation3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !162
  %node_id7 = getelementptr i8, ptr %5, i32 -16
  %10 = ptrtoint ptr %node_id7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %node_id7, align 8
  %card = getelementptr i8, ptr %5, i32 -4
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %node_id8 = getelementptr inbounds %struct.fw_card, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %node_id8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %node_id8, align 4
  %login_id = getelementptr i8, ptr %work, i32 -16
  %16 = ptrtoint ptr %login_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %login_id, align 4
  %call9 = tail call fastcc i32 @sbp2_send_management_orb(ptr noundef %add.ptr, i32 noundef %11, i32 noundef %9, i32 noundef 3, i32 noundef %17, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %do.end14, label %if.end28

do.end14:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !163
  %18 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card, align 4
  %generation18 = getelementptr inbounds %struct.fw_card, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %generation18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %generation18, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %21)
  %cmp19 = icmp eq i32 %9, %21
  br i1 %cmp19, label %do.end14.do.end24_crit_edge, label %lor.lhs.false

do.end14.do.end24_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24

lor.lhs.false:                                    ; preds = %do.end14
  %retries = getelementptr i8, ptr %work, i32 -8
  %22 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %retries, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp20 = icmp sgt i32 %23, 4
  br i1 %cmp20, label %lor.lhs.false.do.end24_crit_edge, label %lor.lhs.false.if.end27_crit_edge

lor.lhs.false.if.end27_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

lor.lhs.false.do.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24

do.end24:                                         ; preds = %lor.lhs.false.do.end24_crit_edge, %do.end14.do.end24_crit_edge
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.36) #14
  %retries26 = getelementptr i8, ptr %work, i32 -8
  %26 = ptrtoint ptr %retries26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %retries26, align 4
  %workfn = getelementptr i8, ptr %work, i32 -4
  %27 = ptrtoint ptr %workfn to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @sbp2_login, ptr %workfn, align 8
  br label %if.end27

if.end27:                                         ; preds = %do.end24, %lor.lhs.false.if.end27_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fw_workqueue to i32))
  %28 = load ptr, ptr @fw_workqueue, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %work, i32 noundef 20) #11
  br label %cleanup

if.end28:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %node_id29 = getelementptr inbounds %struct.sbp2_target, ptr %1, i32 0, i32 5
  %29 = ptrtoint ptr %node_id29 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %11, ptr %node_id29, align 4
  %shl = shl i32 %15, 16
  %address_high = getelementptr inbounds %struct.sbp2_target, ptr %1, i32 0, i32 6
  %30 = ptrtoint ptr %address_high to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shl, ptr %address_high, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !164
  %generation36 = getelementptr i8, ptr %work, i32 -12
  %31 = ptrtoint ptr %generation36 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %9, ptr %generation36, align 8
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %lun = getelementptr i8, ptr %work, i32 -20
  %34 = ptrtoint ptr %lun to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %lun, align 8
  %conv = zext i16 %35 to i32
  %retries41 = getelementptr i8, ptr %work, i32 -8
  %36 = ptrtoint ptr %retries41 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %retries41, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %33, ptr noundef nonnull @.str.39, i32 noundef %conv, i32 noundef %37) #14
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %parent.i.i.i = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %parent.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d.i) #11
  %44 = ptrtoint ptr %d.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %d.i, align 4
  %card.i = getelementptr i8, ptr %43, i32 -4
  %45 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %card.i, align 4
  %node_id.i = getelementptr inbounds %struct.sbp2_target, ptr %39, i32 0, i32 5
  %47 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %node_id.i, align 4
  %49 = ptrtoint ptr %generation36 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %generation36, align 8
  %max_speed.i = getelementptr i8, ptr %43, i32 -8
  %51 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %max_speed.i, align 8
  %command_block_agent_address.i = getelementptr i8, ptr %work, i32 -28
  %53 = ptrtoint ptr %command_block_agent_address.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %command_block_agent_address.i, align 8
  %add.i = add i64 %54, 4
  %call2.i = call i32 @fw_run_transaction(ptr noundef %46, i32 noundef 0, i32 noundef %48, i32 noundef %50, i32 noundef %52, i64 noundef %add.i, ptr noundef nonnull %d.i, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d.i) #11
  %call42 = call fastcc i32 @sbp2_cancel_orbs(ptr noundef %add.ptr)
  call fastcc void @sbp2_conditionally_unblock(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end27, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sbp2_conditionally_unblock(ptr nocapture noundef %lu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lu, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %parent.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i.i, align 8
  %card2 = getelementptr i8, ptr %5, i32 -4
  %6 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card2, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -2448
  %lock = getelementptr inbounds %struct.sbp2_target, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %blocked = getelementptr inbounds %struct.sbp2_logical_unit, ptr %lu, i32 0, i32 12
  %8 = ptrtoint ptr %blocked to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %blocked, align 1, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end10.critedge18, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %generation = getelementptr inbounds %struct.sbp2_logical_unit, ptr %lu, i32 0, i32 7
  %10 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %generation, align 8
  %generation3 = getelementptr inbounds %struct.fw_card, ptr %7, i32 0, i32 5
  %12 = ptrtoint ptr %generation3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %generation3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp = icmp eq i32 %11, %13
  br i1 %cmp, label %if.then, label %if.end10.critedge

if.then:                                          ; preds = %land.lhs.true
  %14 = ptrtoint ptr %blocked to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %blocked, align 1
  %blocked5 = getelementptr inbounds %struct.sbp2_target, ptr %1, i32 0, i32 12
  %15 = ptrtoint ptr %blocked5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %blocked5, align 8
  %dec = add i32 %16, -1
  store i32 %dec, ptr %blocked5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp6 = icmp eq i32 %dec, 0
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  br i1 %cmp6, label %if.then9, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @scsi_unblock_requests(ptr noundef %add.ptr) #11
  br label %if.end10

if.end10.critedge:                                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  br label %if.end10

if.end10.critedge18:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  br label %if.end10

if.end10:                                         ; preds = %if.end10.critedge18, %if.end10.critedge, %if.then9, %if.then.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__scsi_add_device(ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sbp2_allow_block(ptr noundef %tgt) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %lock = getelementptr inbounds %struct.sbp2_target, ptr %tgt, i32 0, i32 10
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %dont_block = getelementptr inbounds %struct.sbp2_target, ptr %tgt, i32 0, i32 11
  %0 = ptrtoint ptr %dont_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dont_block, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %dont_block, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @complete_management_orb(ptr noundef %base_orb, ptr noundef readonly %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %status, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %status1 = getelementptr inbounds %struct.sbp2_management_orb, ptr %base_orb, i32 0, i32 5
  %0 = call ptr @memcpy(ptr %status1, ptr %status, i32 32)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %done = getelementptr inbounds %struct.sbp2_management_orb, ptr %base_orb, i32 0, i32 4
  tail call void @complete(ptr noundef %done) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_unblock_requests(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @scsilun_to_int(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_device_lookup(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_core_remove_address_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !28, !29, !31, !33, !35, !36, !38, !40, !42, !44, !46, !47, !48, !50, !51, !52, !53, !54, !55, !56, !58, !59, !61, !63, !64, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !131, !133, !134, !135, !136}
!llvm.module.flags = !{!138, !139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !{ptr @__param_exclusive_login, !1, !"__param_exclusive_login", i1 false, i1 false}
!1 = !{!"../drivers/firewire/sbp2.c", i32 56, i32 1}
!2 = !{ptr @__UNIQUE_ID_exclusive_logintype281, !1, !"__UNIQUE_ID_exclusive_logintype281", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_exclusive_login282, !4, !"__UNIQUE_ID_exclusive_login282", i1 false, i1 false}
!4 = !{!"../drivers/firewire/sbp2.c", i32 57, i32 1}
!5 = !{ptr @__param_workarounds, !6, !"__param_workarounds", i1 false, i1 false}
!6 = !{!"../drivers/firewire/sbp2.c", i32 102, i32 1}
!7 = !{ptr @__UNIQUE_ID_workaroundstype283, !6, !"__UNIQUE_ID_workaroundstype283", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_workarounds284, !9, !"__UNIQUE_ID_workarounds284", i1 false, i1 false}
!9 = !{!"../drivers/firewire/sbp2.c", i32 103, i32 1}
!10 = !{ptr @__UNIQUE_ID_author293, !11, !"__UNIQUE_ID_author293", i1 false, i1 false}
!11 = !{!"../drivers/firewire/sbp2.c", i32 1603, i32 1}
!12 = !{ptr @__UNIQUE_ID_description294, !13, !"__UNIQUE_ID_description294", i1 false, i1 false}
!13 = !{!"../drivers/firewire/sbp2.c", i32 1604, i32 1}
!14 = !{ptr @__UNIQUE_ID_file295, !15, !"__UNIQUE_ID_file295", i1 false, i1 false}
!15 = !{!"../drivers/firewire/sbp2.c", i32 1605, i32 1}
!16 = !{ptr @__UNIQUE_ID_license296, !15, !"__UNIQUE_ID_license296", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_alias297, !18, !"__UNIQUE_ID_alias297", i1 false, i1 false}
!18 = !{!"../drivers/firewire/sbp2.c", i32 1609, i32 1}
!19 = !{ptr @__initcall__kmod_firewire_sbp2__298_1621_sbp2_init6, !20, !"__initcall__kmod_firewire_sbp2__298_1621_sbp2_init6", i1 false, i1 false}
!20 = !{!"../drivers/firewire/sbp2.c", i32 1621, i32 1}
!21 = !{ptr @__exitcall_sbp2_cleanup, !22, !"__exitcall_sbp2_cleanup", i1 false, i1 false}
!22 = !{!"../drivers/firewire/sbp2.c", i32 1622, i32 1}
!23 = !{ptr @sbp2_param_workarounds, !24, !"sbp2_param_workarounds", i1 false, i1 false}
!24 = !{!"../drivers/firewire/sbp2.c", i32 101, i32 12}
!25 = !{ptr @__param_str_exclusive_login, !1, !"__param_str_exclusive_login", i1 false, i1 false}
!26 = !{ptr @sbp2_param_exclusive_login, !27, !"sbp2_param_exclusive_login", i1 false, i1 false}
!27 = !{!"../drivers/firewire/sbp2.c", i32 55, i32 13}
!28 = !{ptr @__param_str_workarounds, !6, !"__param_str_workarounds", i1 false, i1 false}
!29 = !{ptr @.str, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/firewire/sbp2.c", i32 1269, i32 13}
!31 = !{ptr @sbp2_driver, !32, !"sbp2_driver", i1 false, i1 false}
!32 = !{!"../drivers/firewire/sbp2.c", i32 1266, i32 25}
!33 = !{ptr @sbp2_probe.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/firewire/sbp2.c", i32 1142, i32 2}
!35 = !{ptr @.str.1, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.2, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/firewire/sbp2.c", i32 1590, i32 12}
!38 = !{ptr @.str.3, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/firewire/sbp2.c", i32 1591, i32 16}
!40 = !{ptr @scsi_driver_template, !41, !"scsi_driver_template", i1 false, i1 false}
!41 = !{!"../drivers/firewire/sbp2.c", i32 1588, i32 34}
!42 = !{ptr @sbp2_agent_reset_no_wait.d, !43, !"d", i1 false, i1 false}
!43 = !{!"../drivers/firewire/sbp2.c", i32 666, i32 16}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!46 = !{ptr @.str.4, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.5, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.6, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/firewire/sbp2.c", i32 1549, i32 2}
!50 = !{ptr @.str.7, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.8, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @sbp2_scsi_abort._entry, !49, !"_entry", i1 false, i1 false}
!55 = !{ptr @sbp2_scsi_abort._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @sbp2_scsi_sysfs_groups, !57, !"sbp2_scsi_sysfs_groups", i1 false, i1 false}
!57 = !{!"../drivers/firewire/sbp2.c", i32 1586, i32 1}
!58 = !{ptr @sbp2_scsi_sysfs_group, !57, !"sbp2_scsi_sysfs_group", i1 false, i1 false}
!59 = !{ptr @sbp2_scsi_sysfs_attrs, !60, !"sbp2_scsi_sysfs_attrs", i1 false, i1 false}
!60 = !{!"../drivers/firewire/sbp2.c", i32 1581, i32 26}
!61 = !{ptr @.str.11, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/firewire/sbp2.c", i32 1579, i32 8}
!63 = !{ptr @dev_attr_ieee1394_id, !62, !"dev_attr_ieee1394_id", i1 false, i1 false}
!64 = !{ptr @.str.12, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/firewire/sbp2.c", i32 1574, i32 22}
!66 = !{ptr @sbp2_add_logical_unit.__key, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/firewire/sbp2.c", i32 990, i32 2}
!68 = !{ptr @.str.13, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @sbp2_add_logical_unit.__key.14, !67, !"__key", i1 false, i1 false}
!70 = !{ptr @.str.15, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.16, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/firewire/sbp2.c", i32 428, i32 3}
!73 = !{ptr @.str.17, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @sbp2_status_write._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @sbp2_status_write._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.19, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/firewire/sbp2.c", i32 450, i32 3}
!78 = !{ptr @.str.20, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @sbp2_status_write._entry.18, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @sbp2_status_write._entry_ptr.21, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.22, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/firewire/sbp2.c", i32 824, i32 4}
!83 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @sbp2_login._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @sbp2_login._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.25, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/firewire/sbp2.c", i32 842, i32 2}
!88 = !{ptr @sbp2_login._entry.24, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @sbp2_login._entry_ptr.26, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.27, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/firewire/sbp2.c", i32 611, i32 3}
!92 = !{ptr @.str.28, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @sbp2_send_management_orb._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @sbp2_send_management_orb._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.30, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/firewire/sbp2.c", i32 617, i32 3}
!97 = !{ptr @sbp2_send_management_orb._entry.29, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @sbp2_send_management_orb._entry_ptr.31, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.33, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/firewire/sbp2.c", i32 624, i32 3}
!101 = !{ptr @sbp2_send_management_orb._entry.32, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @sbp2_send_management_orb._entry_ptr.34, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @init_completion.__key, !104, !"__key", i1 false, i1 false}
!104 = !{!"../include/linux/completion.h", i32 87, i32 2}
!105 = !{ptr @.str.35, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.36, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/firewire/sbp2.c", i32 934, i32 4}
!108 = !{ptr @.str.37, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @sbp2_reconnect._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @sbp2_reconnect._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.39, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/firewire/sbp2.c", i32 948, i32 2}
!113 = !{ptr @sbp2_reconnect._entry.38, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @sbp2_reconnect._entry_ptr.40, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.41, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/firewire/sbp2.c", i32 1078, i32 3}
!117 = !{ptr @.str.42, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @sbp2_clamp_management_orb_timeout._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @sbp2_clamp_management_orb_timeout._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.43, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/firewire/sbp2.c", i32 1091, i32 3}
!122 = !{ptr @.str.44, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @sbp2_init_workarounds._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @sbp2_init_workarounds._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.46, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/firewire/sbp2.c", i32 1113, i32 3}
!127 = !{ptr @sbp2_init_workarounds._entry.45, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @sbp2_init_workarounds._entry_ptr.47, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @sbp2_workarounds_table, !130, !"sbp2_workarounds_table", i1 false, i1 false}
!130 = !{!"../drivers/firewire/sbp2.c", i32 333, i32 3}
!131 = !{ptr @.str.48, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/firewire/sbp2.c", i32 1248, i32 2}
!133 = !{ptr @.str.49, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @sbp2_remove._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @sbp2_remove._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @sbp2_id_table, !137, !"sbp2_id_table", i1 false, i1 false}
!137 = !{!"../drivers/firewire/sbp2.c", i32 1256, i32 40}
!138 = !{i32 1, !"wchar_size", i32 2}
!139 = !{i32 1, !"min_enum_size", i32 4}
!140 = !{i32 8, !"branch-target-enforcement", i32 0}
!141 = !{i32 8, !"sign-return-address", i32 0}
!142 = !{i32 8, !"sign-return-address-all", i32 0}
!143 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!144 = !{i32 7, !"uwtable", i32 1}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!147 = !{!"auto-init"}
!148 = !{i8 0, i8 2}
!149 = !{i64 2154725389}
!150 = !{i64 2154730367}
!151 = !{!"branch_weights", i32 2000, i32 1}
!152 = !{i64 2148593661}
!153 = !{i64 2148508125, i64 2148508157, i64 2148508186, i64 2148508220, i64 2148508251, i64 2148508274}
!154 = !{i64 2149639631}
!155 = !{i64 2148505660, i64 2148505692, i64 2148505721, i64 2148505755, i64 2148505786, i64 2148505809}
!156 = !{!"branch_weights", i32 1, i32 2000}
!157 = !{i64 2154666324}
!158 = !{i64 2154668224}
!159 = !{i64 2154671642}
!160 = !{i64 2154671807}
!161 = !{i64 2154671972}
!162 = !{i64 2154673413}
!163 = !{i64 2154673594}
!164 = !{i64 2154675386}
