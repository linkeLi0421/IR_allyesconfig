; ModuleID = '/llk/IR_all_yes/drivers/usb/storage/scsiglue.c_pt.bc'
source_filename = "../drivers/usb/storage/scsiglue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+usb_stor_host_template_init\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_stor_host_template_init\09\09\09\09"
module asm "\09.long\09__crc_usb_stor_host_template_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_host_template_init:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_host_template_init\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_host_template_init:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usb_stor_sense_invalidCDB\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_stor_sense_invalidCDB\09\09\09\09"
module asm "\09.long\09__crc_usb_stor_sense_invalidCDB\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_sense_invalidCDB:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_sense_invalidCDB\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_sense_invalidCDB:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.us_data = type { %struct.mutex, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, i32, [32 x i8], ptr, ptr, %struct.usb_sg_request, ptr, i32, ptr, %struct.completion, %struct.completion, %struct.wait_queue_head, %struct.delayed_work, ptr, ptr, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.usb_sg_request = type { i32, i32, %struct.spinlock, ptr, i32, i32, ptr, i32, %struct.completion }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_target = type { ptr, %struct.list_head, %struct.list_head, %struct.device, %struct.kref, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, i32, ptr, [0 x i32] }
%struct.us_unusual_dev = type { ptr, ptr, i8, i8, ptr }

@usb_stor_host_template = internal constant { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @queuecommand, ptr null, ptr null, ptr @.str, ptr @host_info, ptr null, ptr null, ptr null, ptr @command_abort, ptr @device_reset, ptr null, ptr @bus_reset, ptr null, ptr @slave_alloc, ptr @slave_configure, ptr null, ptr @target_alloc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @show_info, ptr @write_info, ptr null, ptr null, ptr null, ptr @.str, ptr null, i32 1, i32 -1, i16 2048, i16 0, i32 240, i32 0, i32 0, i32 0, i16 0, i8 0, i32 0, i8 24, i32 0, ptr null, ptr @usb_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@__kstrtab_usb_stor_host_template_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_host_template_init = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_host_template_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_host_template_init to i32), ptr @__kstrtab_usb_stor_host_template_init, ptr @__kstrtabns_usb_stor_host_template_init }, section "___ksymtab_gpl+usb_stor_host_template_init", align 4
@usb_stor_sense_invalidCDB = dso_local global { [18 x i8], [46 x i8] } { [18 x i8] c"p\00\05\00\00\00\00\0A\00\00\00\00$\00\00\00\00\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_usb_stor_sense_invalidCDB = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_sense_invalidCDB = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_sense_invalidCDB = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_sense_invalidCDB to i32), ptr @__kstrtab_usb_stor_sense_invalidCDB, ptr @__kstrtabns_usb_stor_sense_invalidCDB }, section "___ksymtab_gpl+usb_stor_sense_invalidCDB", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb-storage\00", [20 x i8] zeroinitializer }, align 32
@usb_sdev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @usb_sdev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@queuecommand_lck._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 374, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error in %s: us->srb = %p\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"queuecommand_lck\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/usb/storage/scsiglue.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@queuecommand_lck._entry_ptr = internal global ptr @queuecommand_lck._entry, section ".printk_index", align 4
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Fail command during disconnect\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s called\0A\00", [21 x i8] zeroinitializer }, align 32
@__func__.command_abort = private unnamed_addr constant [14 x i8] c"command_abort\00", align 1
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"-- nothing to abort\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.device_reset = private unnamed_addr constant [13 x i8] c"device_reset\00", align 1
@__func__.bus_reset = private unnamed_addr constant [10 x i8] c"bus_reset\00", align 1
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"   Host scsi%d: usb-storage\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"       Vendor: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"      Product: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Serial Number: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"     Protocol: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"    Transport: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"       Quirks:\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" SINGLE_LUN\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" NEED_OVERRIDE\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" SCM_MULT_TARG\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" FIX_INQUIRY\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" FIX_CAPACITY\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" IGNORE_RESIDUE\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" BULK32\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" NOT_LOCKABLE\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" GO_SLOW\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" NO_WP_DETECT\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" MAX_SECTORS_64\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" IGNORE_DEVICE\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" CAPACITY_HEURISTICS\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" MAX_SECTORS_MIN\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" BULK_IGNORE_TAG\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" SANE_SENSE\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" CAPACITY_OK\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" BAD_SENSE\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" NO_READ_DISC_INFO\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" NO_READ_CAPACITY_16\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" INITIAL_READ10\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" WRITE_CACHE\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" NEEDS_CAP16\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" IGNORE_UAS\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" BROKEN_FUA\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" NO_ATA_1X\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" NO_REPORT_OPCODES\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" MAX_SECTORS_240\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" NO_REPORT_LUNS\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" ALWAYS_SYNC\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" NO_SAME\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" SENSE_AFTER_SYNC\00", [46 x i8] zeroinitializer }, align 32
@usb_sdev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @usb_sdev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@usb_sdev_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_max_sectors, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_max_sectors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_sectors_show, ptr @max_sectors_store }, [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max_sectors\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%hu\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 133, i64 161]
@__sancov_gen_cov_switch_values.53 = internal global [6 x i64] [i64 4, i64 16, i64 1057, i64 1200, i64 2583, i64 8888]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 241]
@___asan_gen_.55 = private unnamed_addr constant [23 x i8] c"usb_stor_host_template\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 601, i32 40 }
@___asan_gen_.58 = private unnamed_addr constant [26 x i8] c"usb_stor_sense_invalidCDB\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 674, i32 15 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 603, i32 13 }
@___asan_gen_.64 = private unnamed_addr constant [16 x i8] c"usb_sdev_groups\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 373, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 380, i32 20 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 413, i32 19 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 424, i32 20 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 525, i32 16 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 533, i32 12 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 534, i32 16 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 541, i32 16 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 545, i32 12 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 546, i32 16 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 549, i32 16 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 550, i32 16 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 553, i32 16 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 557, i32 1 }
@___asan_gen_.217 = private unnamed_addr constant [15 x i8] c"usb_sdev_group\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 595, i32 1 }
@___asan_gen_.220 = private unnamed_addr constant [15 x i8] c"usb_sdev_attrs\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 590, i32 26 }
@___asan_gen_.223 = private unnamed_addr constant [21 x i8] c"dev_attr_max_sectors\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 588, i32 8 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 572, i32 22 }
@___asan_gen_.232 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.233 = private constant [34 x i8] c"../drivers/usb/storage/scsiglue.c\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 582, i32 18 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__ksymtab_usb_stor_host_template_init, ptr @__ksymtab_usb_stor_sense_invalidCDB, ptr @queuecommand_lck._entry, ptr @queuecommand_lck._entry_ptr, ptr @usb_stor_host_template, ptr @usb_stor_sense_invalidCDB, ptr @.str, ptr @usb_sdev_groups, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @usb_sdev_group, ptr @usb_sdev_attrs, ptr @dev_attr_max_sectors, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_stor_host_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_stor_sense_invalidCDB to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_sdev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queuecommand_lck._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_sdev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_sdev_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_sectors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_stor_report_device_reset(ptr noundef %us) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %us, i32 -2448
  tail call void @scsi_report_device_reset(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 0) #9
  %fflags = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 4
  %0 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fflags, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %max_id = getelementptr i8, ptr %us, i32 -1988
  %2 = ptrtoint ptr %max_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp6 = icmp ugt i32 %3, 1
  br i1 %cmp6, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end_crit_edge

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  tail call void @scsi_report_device_reset(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef %i.07) #9
  %inc = add nuw i32 %i.07, 1
  %4 = ptrtoint ptr %max_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_id, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_report_device_reset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_stor_report_bus_reset(ptr noundef %us) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %us, i32 -2448
  %host_lock = getelementptr i8, ptr %us, i32 -2380
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #9
  tail call void @scsi_report_bus_reset(ptr noundef %add.ptr.i, i32 noundef 0) #9
  %2 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_report_bus_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @usb_stor_host_template_init(ptr nocapture noundef writeonly %sht, ptr noundef %name, ptr noundef %owner) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %sht, ptr @usb_stor_host_template, i32 208)
  %name1 = getelementptr inbounds %struct.scsi_host_template, ptr %sht, i32 0, i32 4
  %1 = ptrtoint ptr %name1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %name, ptr %name1, align 8
  %proc_name = getelementptr inbounds %struct.scsi_host_template, ptr %sht, i32 0, i32 32
  %2 = ptrtoint ptr %proc_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %name, ptr %proc_name, align 8
  %module = getelementptr inbounds %struct.scsi_host_template, ptr %sht, i32 0, i32 3
  %3 = ptrtoint ptr %module to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %owner, ptr %module, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queuecommand(ptr nocapture noundef readonly %shost, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 4
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %hostdata.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 53
  %srb1.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 6
  %6 = ptrtoint ptr %srb1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %srb1.i, align 4
  %cmp.not.i = icmp eq ptr %7, null
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pusb_intf.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 5, i32 1, i32 4, i32 1
  %8 = ptrtoint ptr %pusb_intf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pusb_intf.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #12
  br label %queuecommand_lck.exit

if.end.i:                                         ; preds = %entry
  %dflags.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 5, i32 1, i32 4, i32 3
  %10 = ptrtoint ptr %dflags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %dflags.i, align 4
  %12 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.end5.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %hostdata.i.i, ptr noundef nonnull @.str.6) #9
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %13 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 65536, ptr %result.i, align 4
  tail call void @scsi_done(ptr noundef %cmd) #9
  br label %queuecommand_lck.exit

if.end5.i:                                        ; preds = %if.end.i
  %fflags.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 5, i32 1, i32 4, i32 2
  %14 = ptrtoint ptr %fflags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fflags.i, align 4
  %and.i = and i32 %15, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %if.end5.i.if.end16.i_crit_edge, label %land.lhs.true.i

if.end5.i.if.end16.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

land.lhs.true.i:                                  ; preds = %if.end5.i
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %16 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cmnd.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i8 %19, label %land.lhs.true.i.if.end16.i_crit_edge [
    i8 -95, label %land.lhs.true.i.if.then14.i_crit_edge
    i8 -123, label %land.lhs.true.i.if.then14.i_crit_edge8
  ]

land.lhs.true.i.if.then14.i_crit_edge8:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14.i

land.lhs.true.i.if.then14.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14.i

land.lhs.true.i.if.end16.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.then14.i:                                      ; preds = %land.lhs.true.i.if.then14.i_crit_edge, %land.lhs.true.i.if.then14.i_crit_edge8
  %sense_buffer.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 21
  %21 = ptrtoint ptr %sense_buffer.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sense_buffer.i, align 4
  %23 = call ptr @memcpy(ptr %22, ptr @usb_stor_sense_invalidCDB, i32 18)
  %result15.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %24 = ptrtoint ptr %result15.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %result15.i, align 4
  tail call void @scsi_done(ptr noundef %cmd) #9
  br label %queuecommand_lck.exit

if.end16.i:                                       ; preds = %land.lhs.true.i.if.end16.i_crit_edge, %if.end5.i.if.end16.i_crit_edge
  %25 = ptrtoint ptr %srb1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %cmd, ptr %srb1.i, align 4
  %cmnd_ready.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 1, i32 13, i32 13, i32 1, i32 4
  tail call void @complete(ptr noundef %cmnd_ready.i) #9
  br label %queuecommand_lck.exit

queuecommand_lck.exit:                            ; preds = %if.end16.i, %if.then14.i, %if.then4.i, %do.end.i
  %retval.0.i = phi i32 [ 4181, %do.end.i ], [ 0, %if.then4.i ], [ 0, %if.then14.i ], [ 0, %if.end16.i ]
  %26 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %call2) #9
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @host_info(ptr noundef readnone %host) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %scsi_name = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 7
  ret ptr %scsi_name
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @command_abort(ptr noundef readonly %srb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %hostdata.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.command_abort) #9
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #9
  %srb2 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 6
  %6 = ptrtoint ptr %srb2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %srb2, align 4
  %cmp.not = icmp eq ptr %7, %srb
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %9) #9
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %hostdata.i, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dflags = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 5, i32 1, i32 4, i32 3
  tail call void @_set_bit(i32 noundef 5, ptr noundef %dflags) #9
  %10 = ptrtoint ptr %dflags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %dflags, align 4
  %12 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.then7, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 2, ptr noundef %dflags) #9
  tail call void @usb_stor_stop_transport(ptr noundef %hostdata.i) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %13 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %14) #9
  %notify = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 13, i32 5, i32 2
  tail call void @wait_for_completion(ptr noundef %notify) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then
  %retval.0 = phi i32 [ 8195, %if.then ], [ 8194, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_reset(ptr nocapture noundef readonly %srb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %hostdata.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.device_reset) #9
  tail call void @mutex_lock_nested(ptr noundef %hostdata.i, i32 noundef 0) #9
  %transport_reset = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 5, i32 5, i32 6
  %4 = ptrtoint ptr %transport_reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transport_reset, align 4
  %call1 = tail call i32 %5(ptr noundef %hostdata.i) #9
  tail call void @mutex_unlock(ptr noundef %hostdata.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  %cond = select i1 %cmp, i32 8195, i32 8194
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bus_reset(ptr nocapture noundef readonly %srb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %hostdata.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.bus_reset) #9
  %call1 = tail call i32 @usb_stor_port_reset(ptr noundef %hostdata.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  %cond = select i1 %cmp, i32 8195, i32 8194
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slave_alloc(ptr nocapture noundef %sdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %inquiry_len = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 27
  %2 = ptrtoint ptr %inquiry_len to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 36, ptr %inquiry_len, align 4
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %3 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %request_queue, align 4
  tail call void @blk_queue_update_dma_alignment(ptr noundef %4, i32 noundef 511) #9
  %protocol = getelementptr inbounds %struct.us_data, ptr %hostdata.i, i32 0, i32 15
  %5 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %6)
  %cmp = icmp eq i8 %6, 80
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %max_lun = getelementptr inbounds %struct.us_data, ptr %hostdata.i, i32 0, i32 16
  %7 = ptrtoint ptr %max_lun to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %max_lun, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp3.not = icmp eq i8 %8, 0
  br i1 %cmp3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %sdev_bflags = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 39
  %9 = ptrtoint ptr %sdev_bflags to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %sdev_bflags, align 8
  %or = or i64 %10, 2
  store i64 %or, ptr %sdev_bflags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slave_configure(ptr nocapture noundef %sdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %pusb_dev = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 5, i32 1, i32 4
  %2 = ptrtoint ptr %pusb_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pusb_dev, align 4
  %bus = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 8
  %sysdev = getelementptr inbounds %struct.usb_bus, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sysdev, align 4
  %fflags = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 5, i32 1, i32 4, i32 2
  %8 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fflags, align 4
  %and = and i32 %9, 9216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and2 = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %spec.store.select = select i1 %tobool3.not, i32 64, i32 8
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %10 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %request_queue, align 4
  %max_hw_sectors.i = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 37, i32 3
  %12 = ptrtoint ptr %max_hw_sectors.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_hw_sectors.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %spec.store.select)
  %cmp = icmp ugt i32 %13, %spec.store.select
  br i1 %cmp, label %if.then6, label %if.then.if.end21_crit_edge

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @blk_queue_max_hw_sectors(ptr noundef %11, i32 noundef %spec.store.select) #9
  br label %if.end21

if.else:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 22
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp9 = icmp eq i8 %15, 1
  br i1 %cmp9, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %request_queue12 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %16 = ptrtoint ptr %request_queue12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %request_queue12, align 4
  tail call void @blk_queue_max_hw_sectors(ptr noundef %17, i32 noundef 8388607) #9
  br label %if.end21

if.else13:                                        ; preds = %if.else
  %speed = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp15 = icmp ugt i32 %19, 4
  br i1 %cmp15, label %if.then17, label %if.else13.if.end21_crit_edge

if.else13.if.end21_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then17:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #11
  %request_queue18 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %20 = ptrtoint ptr %request_queue18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %request_queue18, align 4
  tail call void @blk_queue_max_hw_sectors(ptr noundef %21, i32 noundef 2048) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.else13.if.end21_crit_edge, %if.then11, %if.then6, %if.then.if.end21_crit_edge
  %request_queue22 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %22 = ptrtoint ptr %request_queue22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %request_queue22, align 4
  %max_hw_sectors.i286 = getelementptr inbounds %struct.request_queue, ptr %23, i32 0, i32 37, i32 3
  %24 = ptrtoint ptr %max_hw_sectors.i286 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_hw_sectors.i286, align 4
  %call25 = tail call i32 @dma_max_mapping_size(ptr noundef %7) #9
  %shr = lshr i32 %call25, 9
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 %shr)
  tail call void @blk_queue_max_hw_sectors(ptr noundef %23, i32 noundef %26) #9
  %27 = ptrtoint ptr %pusb_dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pusb_dev, align 4
  %bus29 = getelementptr inbounds %struct.usb_device, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %bus29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus29, align 8
  %driver.i = getelementptr inbounds %struct.usb_hcd, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver.i, align 8
  %flags.i = getelementptr inbounds %struct.hc_driver, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end21.if.then37_crit_edge, label %lor.lhs.false

if.end21.if.then37_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37

lor.lhs.false:                                    ; preds = %if.end21
  %localmem_pool = getelementptr inbounds %struct.usb_hcd, ptr %30, i32 0, i32 28
  %35 = ptrtoint ptr %localmem_pool to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %localmem_pool, align 8
  %cmp35.not = icmp eq ptr %36, null
  br i1 %cmp35.not, label %lor.lhs.false.if.end39_crit_edge, label %lor.lhs.false.if.then37_crit_edge

lor.lhs.false.if.then37_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37

lor.lhs.false.if.end39_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then37:                                        ; preds = %lor.lhs.false.if.then37_crit_edge, %if.end21.if.then37_crit_edge
  %37 = ptrtoint ptr %request_queue22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %request_queue22, align 4
  tail call void @blk_queue_bounce_limit(ptr noundef %38, i32 noundef 1) #9
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %lor.lhs.false.if.end39_crit_edge
  %type40 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 22
  %39 = ptrtoint ptr %type40 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %type40, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp42 = icmp eq i8 %40, 0
  br i1 %cmp42, label %if.then44, label %if.else182

if.then44:                                        ; preds = %if.end39
  %41 = ptrtoint ptr %pusb_dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pusb_dev, align 4
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %42, i32 0, i32 16, i32 7
  %43 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %idVendor, align 8
  %45 = tail call i16 @llvm.bswap.i16(i16 %44)
  %46 = zext i16 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.53)
  switch i16 %45, label %if.then44.sw.epilog_crit_edge [
    i16 1057, label %if.then44.sw.bb_crit_edge
    i16 1200, label %if.then44.sw.bb_crit_edge287
    i16 2583, label %if.then44.sw.bb_crit_edge288
    i16 8888, label %if.then44.sw.bb_crit_edge289
  ]

if.then44.sw.bb_crit_edge289:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then44.sw.bb_crit_edge288:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then44.sw.bb_crit_edge287:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then44.sw.bb_crit_edge:                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then44.sw.epilog_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then44.sw.bb_crit_edge, %if.then44.sw.bb_crit_edge287, %if.then44.sw.bb_crit_edge288, %if.then44.sw.bb_crit_edge289
  %47 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %fflags, align 4
  %and48 = and i32 %48, 65552
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.then50, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then50:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %48, 4096
  %49 = ptrtoint ptr %fflags to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or, ptr %fflags, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then50, %sw.bb.sw.epilog_crit_edge, %if.then44.sw.epilog_crit_edge
  %subclass = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 5, i32 5, i32 1, i32 1
  %50 = ptrtoint ptr %subclass to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %subclass, align 4
  %52 = zext i8 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %51, label %if.then60 [
    i8 6, label %sw.epilog.if.end61_crit_edge
    i8 -15, label %sw.epilog.if.end61_crit_edge290
  ]

sw.epilog.if.end61_crit_edge290:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

sw.epilog.if.end61_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then60:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %use_10_for_ms = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %53 = ptrtoint ptr %use_10_for_ms to i32
  call void @__asan_loadN_noabort(i32 %53, i32 8)
  %bf.load = load i64, ptr %use_10_for_ms, align 4
  %bf.set = or i64 %bf.load, 140737488355328
  store i64 %bf.set, ptr %use_10_for_ms, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %sw.epilog.if.end61_crit_edge, %sw.epilog.if.end61_crit_edge290
  %use_192_bytes_for_3f = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %54 = ptrtoint ptr %use_192_bytes_for_3f to i32
  call void @__asan_loadN_noabort(i32 %54, i32 8)
  %bf.load62 = load i64, ptr %use_192_bytes_for_3f, align 4
  %bf.set64 = or i64 %bf.load62, 274877906944
  store i64 %bf.set64, ptr %use_192_bytes_for_3f, align 4
  %55 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fflags, align 4
  %and66 = and i32 %56, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end61.if.end72_crit_edge, label %if.then68

if.end61.if.end72_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then68:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set71 = or i64 %bf.load62, 2473901162496
  %57 = ptrtoint ptr %use_192_bytes_for_3f to i32
  call void @__asan_storeN_noabort(i32 %57, i32 8)
  store i64 %bf.set71, ptr %use_192_bytes_for_3f, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then68, %if.end61.if.end72_crit_edge
  %58 = ptrtoint ptr %use_192_bytes_for_3f to i32
  call void @__asan_loadN_noabort(i32 %58, i32 8)
  %bf.load73 = load i64, ptr %use_192_bytes_for_3f, align 4
  %59 = shl i64 %bf.load73, 1
  %60 = and i64 %59, 1099511627776
  %bf.set75 = and i64 %bf.load73, -58274116272129
  %bf.clear80 = or i64 %bf.set75, %60
  %bf.set87 = xor i64 %bf.clear80, 58274116272128
  store i64 %bf.set87, ptr %use_192_bytes_for_3f, align 4
  %61 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fflags, align 4
  %and89 = and i32 %62, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end72.if.end95_crit_edge, label %if.then91

if.end72.if.end95_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.then91:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set94 = or i64 %bf.set87, 2147483648
  %63 = ptrtoint ptr %use_192_bytes_for_3f to i32
  call void @__asan_storeN_noabort(i32 %63, i32 8)
  store i64 %bf.set94, ptr %use_192_bytes_for_3f, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then91, %if.end72.if.end95_crit_edge
  %64 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %fflags, align 4
  %and97 = and i32 %65, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end95.if.end103_crit_edge, label %if.then99

if.end95.if.end103_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.then99:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %use_192_bytes_for_3f to i32
  call void @__asan_loadN_noabort(i32 %66, i32 8)
  %bf.load100 = load i64, ptr %use_192_bytes_for_3f, align 4
  %bf.set102 = or i64 %bf.load100, 1073741824
  store i64 %bf.set102, ptr %use_192_bytes_for_3f, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then99, %if.end95.if.end103_crit_edge
  %67 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %fflags, align 4
  %and105 = and i32 %68, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.end103.if.end111_crit_edge, label %if.then107

if.end103.if.end111_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

if.then107:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %use_192_bytes_for_3f to i32
  call void @__asan_loadN_noabort(i32 %69, i32 8)
  %bf.load108 = load i64, ptr %use_192_bytes_for_3f, align 4
  %bf.set110 = or i64 %bf.load108, 67108864
  store i64 %bf.set110, ptr %use_192_bytes_for_3f, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then107, %if.end103.if.end111_crit_edge
  %70 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %fflags, align 4
  %and113 = and i32 %71, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.then115, label %if.end111.if.end119_crit_edge

if.end111.if.end119_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119

if.then115:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %use_192_bytes_for_3f to i32
  call void @__asan_loadN_noabort(i32 %72, i32 8)
  %bf.load116 = load i64, ptr %use_192_bytes_for_3f, align 4
  %bf.set118 = or i64 %bf.load116, 33554432
  store i64 %bf.set118, ptr %use_192_bytes_for_3f, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.then115, %if.end111.if.end119_crit_edge
  %scsi_level = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 23
  %73 = ptrtoint ptr %scsi_level to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %scsi_level, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %74)
  %cmp121 = icmp ugt i8 %74, 5
  br i1 %cmp121, label %land.lhs.true123, label %if.end119.if.end130_crit_edge

if.end119.if.end130_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130

land.lhs.true123:                                 ; preds = %if.end119
  %75 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %fflags, align 4
  %and125 = and i32 %76, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %if.then127, label %land.lhs.true123.if.end130_crit_edge

land.lhs.true123.if.end130_crit_edge:             ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130

if.then127:                                       ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #11
  %or129 = or i32 %76, 32768
  %77 = ptrtoint ptr %fflags to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %or129, ptr %fflags, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then127, %land.lhs.true123.if.end130_crit_edge, %if.end119.if.end130_crit_edge
  %78 = ptrtoint ptr %use_192_bytes_for_3f to i32
  call void @__asan_loadN_noabort(i32 %78, i32 8)
  %bf.load131 = load i64, ptr %use_192_bytes_for_3f, align 4
  %bf.set139 = or i64 %bf.load131, 69524783104
  store i64 %bf.set139, ptr %use_192_bytes_for_3f, align 4
  %79 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %fflags, align 4
  %and141 = and i32 %80, 65556
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %land.lhs.true143, label %if.end130.if.end148_crit_edge

if.end130.if.end148_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148

land.lhs.true143:                                 ; preds = %if.end130
  %protocol = getelementptr inbounds %struct.us_data, ptr %hostdata.i, i32 0, i32 15
  %81 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %82)
  %cmp145 = icmp eq i8 %82, 80
  br i1 %cmp145, label %if.then147, label %land.lhs.true143.if.end148_crit_edge

land.lhs.true143.if.end148_crit_edge:             ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148

if.then147:                                       ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #11
  %use_last_sector_hacks = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 0, i32 7, i32 0, i32 2
  %83 = ptrtoint ptr %use_last_sector_hacks to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %use_last_sector_hacks, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.then147, %land.lhs.true143.if.end148_crit_edge, %if.end130.if.end148_crit_edge
  %and150 = and i32 %80, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %if.end148.if.end156_crit_edge, label %if.then152

if.end148.if.end156_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end156

if.then152:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %use_192_bytes_for_3f to i32
  call void @__asan_loadN_noabort(i32 %84, i32 8)
  %bf.load153 = load i64, ptr %use_192_bytes_for_3f, align 4
  %bf.set155 = or i64 %bf.load153, 4194304
  store i64 %bf.set155, ptr %use_192_bytes_for_3f, align 4
  br label %if.end156

if.end156:                                        ; preds = %if.then152, %if.end148.if.end156_crit_edge
  %85 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %fflags, align 4
  %and158 = and i32 %86, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %if.end156.if.end164_crit_edge, label %if.then160

if.end156.if.end164_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end164

if.then160:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #11
  %87 = ptrtoint ptr %use_192_bytes_for_3f to i32
  call void @__asan_loadN_noabort(i32 %87, i32 8)
  %bf.load161 = load i64, ptr %use_192_bytes_for_3f, align 4
  %bf.set163 = or i64 %bf.load161, 1048576
  store i64 %bf.set163, ptr %use_192_bytes_for_3f, align 4
  br label %if.end164

if.end164:                                        ; preds = %if.then160, %if.end156.if.end164_crit_edge
  %88 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %fflags, align 4
  %and166 = and i32 %89, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %if.end164.if.end195_crit_edge, label %if.then168

if.end164.if.end195_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end195

if.then168:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %use_192_bytes_for_3f to i32
  call void @__asan_loadN_noabort(i32 %90, i32 8)
  %bf.load170 = load i64, ptr %use_192_bytes_for_3f, align 4
  %bf.set180 = or i64 %bf.load170, 6597073960960
  store i64 %bf.set180, ptr %use_192_bytes_for_3f, align 4
  br label %if.end195

if.else182:                                       ; preds = %if.end39
  %use_10_for_ms183 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %91 = ptrtoint ptr %use_10_for_ms183 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 8)
  %bf.load184 = load i64, ptr %use_10_for_ms183, align 4
  %bf.set186 = or i64 %bf.load184, 140737488355328
  store i64 %bf.set186, ptr %use_10_for_ms183, align 4
  %92 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %fflags, align 4
  %and188 = and i32 %93, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and188)
  %tobool189.not = icmp eq i32 %and188, 0
  br i1 %tobool189.not, label %if.else182.if.end195_crit_edge, label %if.then190

if.else182.if.end195_crit_edge:                   ; preds = %if.else182
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end195

if.then190:                                       ; preds = %if.else182
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set193 = or i64 %bf.load184, 140737622573056
  %94 = ptrtoint ptr %use_10_for_ms183 to i32
  call void @__asan_storeN_noabort(i32 %94, i32 8)
  store i64 %bf.set193, ptr %use_10_for_ms183, align 4
  br label %if.end195

if.end195:                                        ; preds = %if.then190, %if.else182.if.end195_crit_edge, %if.then168, %if.end164.if.end195_crit_edge
  %protocol196 = getelementptr inbounds %struct.us_data, ptr %hostdata.i, i32 0, i32 15
  %95 = ptrtoint ptr %protocol196 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %protocol196, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %96)
  %switch = icmp ult i8 %96, 2
  br i1 %switch, label %land.lhs.true205, label %if.end195.if.end211_crit_edge

if.end195.if.end211_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end211

land.lhs.true205:                                 ; preds = %if.end195
  %scsi_level206 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 23
  %97 = ptrtoint ptr %scsi_level206 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %scsi_level206, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %cmp208 = icmp eq i8 %98, 0
  br i1 %cmp208, label %if.then210, label %land.lhs.true205.if.end211_crit_edge

land.lhs.true205.if.end211_crit_edge:             ; preds = %land.lhs.true205
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end211

if.then210:                                       ; preds = %land.lhs.true205
  call void @__sanitizer_cov_trace_pc() #11
  %max_lun = getelementptr inbounds %struct.us_data, ptr %hostdata.i, i32 0, i32 16
  %99 = ptrtoint ptr %max_lun to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %max_lun, align 2
  br label %if.end211

if.end211:                                        ; preds = %if.then210, %land.lhs.true205.if.end211_crit_edge, %if.end195.if.end211_crit_edge
  %100 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %fflags, align 4
  %and213 = and i32 %101, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and213)
  %tobool214.not = icmp eq i32 %and213, 0
  br i1 %tobool214.not, label %if.end211.if.end219_crit_edge, label %if.then215

if.end211.if.end219_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end219

if.then215:                                       ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #11
  %lockable = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 41
  %102 = ptrtoint ptr %lockable to i32
  call void @__asan_loadN_noabort(i32 %102, i32 8)
  %bf.load216 = load i64, ptr %lockable, align 4
  %bf.clear217 = and i64 %bf.load216, -1152921504606846977
  store i64 %bf.clear217, ptr %lockable, align 4
  br label %if.end219

if.end219:                                        ; preds = %if.then215, %if.end211.if.end219_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_alloc(ptr nocapture noundef %starget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %no_report_luns = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 7
  %4 = ptrtoint ptr %no_report_luns to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %no_report_luns, align 4
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %no_report_luns, align 4
  %subclass = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 5, i32 5, i32 1, i32 1
  %5 = ptrtoint ptr %subclass to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %subclass, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %6)
  %cmp = icmp eq i8 %6, 4
  br i1 %cmp, label %if.then, label %dev_to_shost.exit.if.end_crit_edge

dev_to_shost.exit.if.end_crit_edge:               ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set5 = or i8 %bf.load, 48
  %7 = ptrtoint ptr %no_report_luns to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %bf.set5, ptr %no_report_luns, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %dev_to_shost.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_info(ptr noundef %m, ptr noundef readonly %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 0, i32 17
  %0 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %host_no, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.9, i32 noundef %1) #9
  %pusb_dev = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 5, i32 1, i32 4
  %2 = ptrtoint ptr %pusb_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pusb_dev, align 4
  %manufacturer = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %manufacturer, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %unusual_dev = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 5, i32 1, i32 4, i32 1, i32 1
  %6 = ptrtoint ptr %unusual_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unusual_dev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool3.not = icmp eq ptr %9, null
  %.str.10. = select i1 %tobool3.not, ptr @.str.10, ptr %9
  br label %if.end8

if.end8:                                          ; preds = %if.else, %entry.if.end8_crit_edge
  %string.0 = phi ptr [ %5, %entry.if.end8_crit_edge ], [ %.str.10., %if.else ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, ptr noundef nonnull %string.0) #9
  %10 = ptrtoint ptr %pusb_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pusb_dev, align 4
  %product = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 31
  %12 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %product, align 8
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %if.else14, label %if.end8.if.end22_crit_edge

if.end8.if.end22_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.else14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %unusual_dev15 = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 5, i32 1, i32 4, i32 1, i32 1
  %14 = ptrtoint ptr %unusual_dev15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %unusual_dev15, align 4
  %productName = getelementptr inbounds %struct.us_unusual_dev, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %productName to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %productName, align 4
  %tobool16.not = icmp eq ptr %17, null
  %.str.10.277 = select i1 %tobool16.not, ptr @.str.10, ptr %17
  br label %if.end22

if.end22:                                         ; preds = %if.else14, %if.end8.if.end22_crit_edge
  %string.1 = phi ptr [ %13, %if.end8.if.end22_crit_edge ], [ %.str.10.277, %if.else14 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.12, ptr noundef nonnull %string.1) #9
  %18 = ptrtoint ptr %pusb_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pusb_dev, align 4
  %serial = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 33
  %20 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %serial, align 8
  %tobool24.not = icmp eq ptr %21, null
  %.str.13. = select i1 %tobool24.not, ptr @.str.13, ptr %21
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.14, ptr noundef nonnull %.str.13.) #9
  %protocol_name = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 5, i32 5
  %22 = ptrtoint ptr %protocol_name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %protocol_name, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.15, ptr noundef %23) #9
  %transport_name = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 5, i32 4
  %24 = ptrtoint ptr %transport_name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %transport_name, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.16, ptr noundef %25) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.17) #9
  %fflags = getelementptr inbounds %struct.Scsi_Host, ptr %host, i32 1, i32 5, i32 1, i32 4, i32 2
  %26 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fflags, align 4
  %and = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %if.end22.if.end32_crit_edge, label %if.then31

if.end22.if.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then31:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.18) #9
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end22.if.end32_crit_edge
  %28 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fflags, align 4
  %and34 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end32.if.end37_crit_edge, label %if.then36

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.19) #9
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end32.if.end37_crit_edge
  %30 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fflags, align 4
  %and39 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end37.if.end42_crit_edge, label %if.then41

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.20) #9
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end37.if.end42_crit_edge
  %32 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fflags, align 4
  %and44 = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end42.if.end47_crit_edge, label %if.then46

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.21) #9
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end42.if.end47_crit_edge
  %34 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fflags, align 4
  %and49 = and i32 %35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end47.if.end52_crit_edge, label %if.then51

if.end47.if.end52_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.22) #9
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end47.if.end52_crit_edge
  %36 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fflags, align 4
  %and54 = and i32 %37, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end52.if.end57_crit_edge, label %if.then56

if.end52.if.end57_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.23) #9
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end52.if.end57_crit_edge
  %38 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fflags, align 4
  %and59 = and i32 %39, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end57.if.end62_crit_edge, label %if.then61

if.end57.if.end62_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.24) #9
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end57.if.end62_crit_edge
  %40 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fflags, align 4
  %and64 = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end62.if.end67_crit_edge, label %if.then66

if.end62.if.end67_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.25) #9
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.end62.if.end67_crit_edge
  %42 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fflags, align 4
  %and69 = and i32 %43, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end67.if.end72_crit_edge, label %if.then71

if.end67.if.end72_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then71:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.26) #9
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end67.if.end72_crit_edge
  %44 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fflags, align 4
  %and74 = and i32 %45, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end72.if.end77_crit_edge, label %if.then76

if.end72.if.end77_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.then76:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.27) #9
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end72.if.end77_crit_edge
  %46 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fflags, align 4
  %and79 = and i32 %47, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end77.if.end82_crit_edge, label %if.then81

if.end77.if.end82_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

if.then81:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.28) #9
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %if.end77.if.end82_crit_edge
  %48 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fflags, align 4
  %and84 = and i32 %49, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end82.if.end87_crit_edge, label %if.then86

if.end82.if.end87_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then86:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.29) #9
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %if.end82.if.end87_crit_edge
  %50 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fflags, align 4
  %and89 = and i32 %51, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end87.if.end92_crit_edge, label %if.then91

if.end87.if.end92_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then91:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.30) #9
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %if.end87.if.end92_crit_edge
  %52 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fflags, align 4
  %and94 = and i32 %53, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end92.if.end97_crit_edge, label %if.then96

if.end92.if.end97_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then96:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.31) #9
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %if.end92.if.end97_crit_edge
  %54 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fflags, align 4
  %and99 = and i32 %55, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.end97.if.end102_crit_edge, label %if.then101

if.end97.if.end102_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

if.then101:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.32) #9
  br label %if.end102

if.end102:                                        ; preds = %if.then101, %if.end97.if.end102_crit_edge
  %56 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fflags, align 4
  %and104 = and i32 %57, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end102.if.end107_crit_edge, label %if.then106

if.end102.if.end107_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

if.then106:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.33) #9
  br label %if.end107

if.end107:                                        ; preds = %if.then106, %if.end102.if.end107_crit_edge
  %58 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fflags, align 4
  %and109 = and i32 %59, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.end107.if.end112_crit_edge, label %if.then111

if.end107.if.end112_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

if.then111:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.34) #9
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %if.end107.if.end112_crit_edge
  %60 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %fflags, align 4
  %and114 = and i32 %61, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.end112.if.end117_crit_edge, label %if.then116

if.end112.if.end117_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end117

if.then116:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.35) #9
  br label %if.end117

if.end117:                                        ; preds = %if.then116, %if.end112.if.end117_crit_edge
  %62 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %fflags, align 4
  %and119 = and i32 %63, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.end117.if.end122_crit_edge, label %if.then121

if.end117.if.end122_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

if.then121:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.36) #9
  br label %if.end122

if.end122:                                        ; preds = %if.then121, %if.end117.if.end122_crit_edge
  %64 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %fflags, align 4
  %and124 = and i32 %65, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %if.end122.if.end127_crit_edge, label %if.then126

if.end122.if.end127_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

if.then126:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.37) #9
  br label %if.end127

if.end127:                                        ; preds = %if.then126, %if.end122.if.end127_crit_edge
  %66 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %fflags, align 4
  %and129 = and i32 %67, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.end127.if.end132_crit_edge, label %if.then131

if.end127.if.end132_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

if.then131:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.38) #9
  br label %if.end132

if.end132:                                        ; preds = %if.then131, %if.end127.if.end132_crit_edge
  %68 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %fflags, align 4
  %and134 = and i32 %69, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %if.end132.if.end137_crit_edge, label %if.then136

if.end132.if.end137_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end137

if.then136:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39) #9
  br label %if.end137

if.end137:                                        ; preds = %if.then136, %if.end132.if.end137_crit_edge
  %70 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %fflags, align 4
  %and139 = and i32 %71, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %if.end137.if.end142_crit_edge, label %if.then141

if.end137.if.end142_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end142

if.then141:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.40) #9
  br label %if.end142

if.end142:                                        ; preds = %if.then141, %if.end137.if.end142_crit_edge
  %72 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %fflags, align 4
  %and144 = and i32 %73, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %if.end142.if.end147_crit_edge, label %if.then146

if.end142.if.end147_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end147

if.then146:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.41) #9
  br label %if.end147

if.end147:                                        ; preds = %if.then146, %if.end142.if.end147_crit_edge
  %74 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %fflags, align 4
  %and149 = and i32 %75, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %if.end147.if.end152_crit_edge, label %if.then151

if.end147.if.end152_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

if.then151:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.42) #9
  br label %if.end152

if.end152:                                        ; preds = %if.then151, %if.end147.if.end152_crit_edge
  %76 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %fflags, align 4
  %and154 = and i32 %77, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %if.end152.if.end157_crit_edge, label %if.then156

if.end152.if.end157_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end157

if.then156:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.43) #9
  br label %if.end157

if.end157:                                        ; preds = %if.then156, %if.end152.if.end157_crit_edge
  %78 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %fflags, align 4
  %and159 = and i32 %79, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %if.end157.if.end162_crit_edge, label %if.then161

if.end157.if.end162_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end162

if.then161:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.44) #9
  br label %if.end162

if.end162:                                        ; preds = %if.then161, %if.end157.if.end162_crit_edge
  %80 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %fflags, align 4
  %and164 = and i32 %81, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %if.end162.if.end167_crit_edge, label %if.then166

if.end162.if.end167_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end167

if.then166:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.45) #9
  br label %if.end167

if.end167:                                        ; preds = %if.then166, %if.end162.if.end167_crit_edge
  %82 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %fflags, align 4
  %and169 = and i32 %83, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %if.end167.if.end172_crit_edge, label %if.then171

if.end167.if.end172_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end172

if.then171:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.46) #9
  br label %if.end172

if.end172:                                        ; preds = %if.then171, %if.end167.if.end172_crit_edge
  %84 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %fflags, align 4
  %and174 = and i32 %85, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %if.end172.if.end177_crit_edge, label %if.then176

if.end172.if.end177_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end177

if.then176:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.47) #9
  br label %if.end177

if.end177:                                        ; preds = %if.then176, %if.end172.if.end177_crit_edge
  %86 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %fflags, align 4
  %and179 = and i32 %87, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179)
  %tobool180.not = icmp eq i32 %and179, 0
  br i1 %tobool180.not, label %if.end177.if.end182_crit_edge, label %if.then181

if.end177.if.end182_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end182

if.then181:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.48) #9
  %88 = ptrtoint ptr %fflags to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pr = load i32, ptr %fflags, align 4
  br label %if.end182

if.end182:                                        ; preds = %if.then181, %if.end177.if.end182_crit_edge
  %89 = phi i32 [ %.pr, %if.then181 ], [ %87, %if.end177.if.end182_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %89)
  %tobool185.not = icmp sgt i32 %89, -1
  br i1 %tobool185.not, label %if.end182.if.end187_crit_edge, label %if.then186

if.end182.if.end187_crit_edge:                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end187

if.then186:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.49) #9
  br label %if.end187

if.end187:                                        ; preds = %if.then186, %if.end182.if.end187_crit_edge
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @write_info(ptr nocapture noundef readnone %host, ptr nocapture noundef readnone %buffer, i32 noundef returned %length) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %length
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_stop_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_port_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_update_dma_alignment(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_hw_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_max_mapping_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_bounce_limit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_sectors_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %request_queue = getelementptr i8, ptr %dev, i32 -404
  %0 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request_queue, align 4
  %max_hw_sectors.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 3
  %2 = ptrtoint ptr %max_hw_sectors.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_hw_sectors.i, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.51, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_sectors_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %ms = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ms) #9
  %0 = ptrtoint ptr %ms to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %ms, align 2, !annotation !102
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.52, ptr noundef nonnull %ms)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %request_queue = getelementptr i8, ptr %dev, i32 -404
  %1 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %request_queue, align 4
  %3 = ptrtoint ptr %ms to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ms, align 2
  %conv = zext i16 %4 to i32
  call void @blk_queue_max_hw_sectors(ptr noundef %2, i32 noundef %conv) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ms) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !83, !84, !86, !88, !89, !91}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__ksymtab_usb_stor_host_template_init, !1, !"__ksymtab_usb_stor_host_template_init", i1 false, i1 false}
!1 = !{!"../drivers/usb/storage/scsiglue.c", i32 671, i32 1}
!2 = !{ptr @usb_stor_sense_invalidCDB, !3, !"usb_stor_sense_invalidCDB", i1 false, i1 false}
!3 = !{!"../drivers/usb/storage/scsiglue.c", i32 674, i32 15}
!4 = !{ptr @__ksymtab_usb_stor_sense_invalidCDB, !5, !"__ksymtab_usb_stor_sense_invalidCDB", i1 false, i1 false}
!5 = !{!"../drivers/usb/storage/scsiglue.c", i32 680, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/storage/scsiglue.c", i32 603, i32 13}
!8 = !{ptr @usb_stor_host_template, !9, !"usb_stor_host_template", i1 false, i1 false}
!9 = !{!"../drivers/usb/storage/scsiglue.c", i32 601, i32 40}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/storage/scsiglue.c", i32 373, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @queuecommand_lck._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @queuecommand_lck._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/storage/scsiglue.c", i32 380, i32 20}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/storage/scsiglue.c", i32 413, i32 19}
!22 = !{ptr @__func__.command_abort, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/storage/scsiglue.c", i32 413, i32 34}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/storage/scsiglue.c", i32 424, i32 20}
!26 = !{ptr @__func__.device_reset, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/storage/scsiglue.c", i32 456, i32 34}
!28 = !{ptr @__func__.bus_reset, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/storage/scsiglue.c", i32 472, i32 34}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/storage/scsiglue.c", i32 525, i32 16}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/storage/scsiglue.c", i32 533, i32 12}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/storage/scsiglue.c", i32 534, i32 16}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/storage/scsiglue.c", i32 541, i32 16}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/storage/scsiglue.c", i32 545, i32 12}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/storage/scsiglue.c", i32 546, i32 16}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/storage/scsiglue.c", i32 549, i32 16}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/storage/scsiglue.c", i32 550, i32 16}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/storage/scsiglue.c", i32 553, i32 16}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/storage/scsiglue.c", i32 557, i32 1}
!50 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.30, !49, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.31, !49, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.32, !49, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.33, !49, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.34, !49, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.35, !49, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.36, !49, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.37, !49, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.38, !49, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.39, !49, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.40, !49, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.41, !49, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.42, !49, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.43, !49, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.44, !49, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.45, !49, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.46, !49, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.47, !49, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.48, !49, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.49, !49, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @usb_sdev_groups, !82, !"usb_sdev_groups", i1 false, i1 false}
!82 = !{!"../drivers/usb/storage/scsiglue.c", i32 595, i32 1}
!83 = !{ptr @usb_sdev_group, !82, !"usb_sdev_group", i1 false, i1 false}
!84 = !{ptr @usb_sdev_attrs, !85, !"usb_sdev_attrs", i1 false, i1 false}
!85 = !{!"../drivers/usb/storage/scsiglue.c", i32 590, i32 26}
!86 = !{ptr @.str.50, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/storage/scsiglue.c", i32 588, i32 8}
!88 = !{ptr @dev_attr_max_sectors, !87, !"dev_attr_max_sectors", i1 false, i1 false}
!89 = !{ptr @.str.51, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/storage/scsiglue.c", i32 572, i32 22}
!91 = !{ptr @.str.52, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/storage/scsiglue.c", i32 582, i32 18}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{!"auto-init"}
