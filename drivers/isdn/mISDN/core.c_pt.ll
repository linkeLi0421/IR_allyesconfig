; ModuleID = '/llk/IR_all_yes/drivers/isdn/mISDN/core.c_pt.bc'
source_filename = "../drivers/isdn/mISDN/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mISDN_register_device\22, \22a\22\09"
module asm "\09.weak\09__crc_mISDN_register_device\09\09\09\09"
module asm "\09.long\09__crc_mISDN_register_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mISDN_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22mISDN_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_mISDN_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mISDN_unregister_device\22, \22a\22\09"
module asm "\09.weak\09__crc_mISDN_unregister_device\09\09\09\09"
module asm "\09.long\09__crc_mISDN_unregister_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mISDN_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22mISDN_unregister_device\22\09\09\09\09\09"
module asm "__kstrtabns_mISDN_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mISDN_register_Bprotocol\22, \22a\22\09"
module asm "\09.weak\09__crc_mISDN_register_Bprotocol\09\09\09\09"
module asm "\09.long\09__crc_mISDN_register_Bprotocol\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mISDN_register_Bprotocol:\09\09\09\09\09"
module asm "\09.asciz \09\22mISDN_register_Bprotocol\22\09\09\09\09\09"
module asm "__kstrtabns_mISDN_register_Bprotocol:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mISDN_unregister_Bprotocol\22, \22a\22\09"
module asm "\09.weak\09__crc_mISDN_unregister_Bprotocol\09\09\09\09"
module asm "\09.long\09__crc_mISDN_unregister_Bprotocol\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mISDN_unregister_Bprotocol:\09\09\09\09\09"
module asm "\09.asciz \09\22mISDN_unregister_Bprotocol\22\09\09\09\09\09"
module asm "__kstrtabns_mISDN_unregister_Bprotocol:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mISDNDevName4ch\22, \22a\22\09"
module asm "\09.weak\09__crc_mISDNDevName4ch\09\09\09\09"
module asm "\09.long\09__crc_mISDNDevName4ch\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mISDNDevName4ch:\09\09\09\09\09"
module asm "\09.asciz \09\22mISDNDevName4ch\22\09\09\09\09\09"
module asm "__kstrtabns_mISDNDevName4ch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.mISDNdevice = type { %struct.mISDNchannel, i32, i32, i32, i32, [16 x i8], %struct.list_head, ptr, %struct.device }
%struct.mISDNchannel = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Bprotocol = type { %struct.list_head, ptr, i32, ptr }
%struct.mISDNstack = type { i32, ptr, ptr, ptr, %struct.wait_queue_head, %struct.sk_buff_head, %struct.list_head, ptr, %struct.mISDNchannel, %struct.mutex, %struct.mISDN_sock_list }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.mISDN_sock_list = type { %struct.hlist_head, %struct.rwlock_t }
%struct.hlist_head = type { ptr }

@__UNIQUE_ID_author457 = internal constant [31 x i8] c"mISDN_core.author=Karsten Keil\00", section ".modinfo", align 1
@__UNIQUE_ID_file458 = internal constant [46 x i8] c"mISDN_core.file=drivers/isdn/mISDN/mISDN_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license459 = internal constant [23 x i8] c"mISDN_core.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [17 x i8] c"mISDN_core.debug\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype460 = internal constant [31 x i8] c"mISDN_core.parmtype=debug:uint\00", section ".modinfo", align 1
@mISDN_class = internal global { %struct.class, [36 x i8] } { %struct.class { ptr @.str.15, ptr null, ptr null, ptr @mISDN_groups, ptr null, ptr @mISDN_uevent, ptr null, ptr @mISDN_class_release, ptr @mISDN_dev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mISDN%d\00", [24 x i8] zeroinitializer }, align 32
@mISDN_register_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017mISDN_register %s %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mISDN_register_device\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/isdn/mISDN/core.c\00", [38 x i8] zeroinitializer }, align 32
@mISDN_register_device._entry_ptr = internal global ptr @mISDN_register_device._entry, section ".printk_index", align 4
@__kstrtab_mISDN_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_mISDN_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_mISDN_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mISDN_register_device to i32), ptr @__kstrtab_mISDN_register_device, ptr @__kstrtabns_mISDN_register_device }, section "___ksymtab+mISDN_register_device", align 4
@mISDN_unregister_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017mISDN_unregister %s %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mISDN_unregister_device\00", [40 x i8] zeroinitializer }, align 32
@mISDN_unregister_device._entry_ptr = internal global ptr @mISDN_unregister_device._entry, section ".printk_index", align 4
@device_ids = internal global { i64, [24 x i8] } zeroinitializer, align 32
@__kstrtab_mISDN_unregister_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_mISDN_unregister_device = external dso_local constant [0 x i8], align 1
@__ksymtab_mISDN_unregister_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mISDN_unregister_device to i32), ptr @__kstrtab_mISDN_unregister_device, ptr @__kstrtabns_mISDN_unregister_device }, section "___ksymtab+mISDN_unregister_device", align 4
@bp_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@Bprotocols = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @Bprotocols, ptr @Bprotocols }, [24 x i8] zeroinitializer }, align 32
@get_Bprotocol4id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014%s id not in range  %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"get_Bprotocol4id\00", [47 x i8] zeroinitializer }, align 32
@get_Bprotocol4id._entry_ptr = internal global ptr @get_Bprotocol4id._entry, section ".printk_index", align 4
@mISDN_register_Bprotocol._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\017%s: %s/%x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mISDN_register_Bprotocol\00", [39 x i8] zeroinitializer }, align 32
@mISDN_register_Bprotocol._entry_ptr = internal global ptr @mISDN_register_Bprotocol._entry, section ".printk_index", align 4
@mISDN_register_Bprotocol._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.4, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014register duplicate protocol old %s/%x new %s/%x\0A\00", [45 x i8] zeroinitializer }, align 32
@mISDN_register_Bprotocol._entry_ptr.13 = internal global ptr @mISDN_register_Bprotocol._entry.11, section ".printk_index", align 4
@__kstrtab_mISDN_register_Bprotocol = external dso_local constant [0 x i8], align 1
@__kstrtabns_mISDN_register_Bprotocol = external dso_local constant [0 x i8], align 1
@__ksymtab_mISDN_register_Bprotocol = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mISDN_register_Bprotocol to i32), ptr @__kstrtab_mISDN_register_Bprotocol, ptr @__kstrtabns_mISDN_register_Bprotocol }, section "___ksymtab+mISDN_register_Bprotocol", align 4
@mISDN_unregister_Bprotocol._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.14, ptr @.str.4, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mISDN_unregister_Bprotocol\00", [37 x i8] zeroinitializer }, align 32
@mISDN_unregister_Bprotocol._entry_ptr = internal global ptr @mISDN_unregister_Bprotocol._entry, section ".printk_index", align 4
@__kstrtab_mISDN_unregister_Bprotocol = external dso_local constant [0 x i8], align 1
@__kstrtabns_mISDN_unregister_Bprotocol = external dso_local constant [0 x i8], align 1
@__ksymtab_mISDN_unregister_Bprotocol = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mISDN_unregister_Bprotocol to i32), ptr @__kstrtab_mISDN_unregister_Bprotocol, ptr @__kstrtabns_mISDN_unregister_Bprotocol }, section "___ksymtab+mISDN_unregister_Bprotocol", align 4
@__kstrtab_mISDNDevName4ch = external dso_local constant [0 x i8], align 1
@__kstrtabns_mISDNDevName4ch = external dso_local constant [0 x i8], align 1
@__ksymtab_mISDNDevName4ch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mISDNDevName4ch to i32), ptr @__kstrtab_mISDNDevName4ch, ptr @__kstrtabns_mISDNDevName4ch }, section "___ksymtab+mISDNDevName4ch", align 4
@__initcall__kmod_mISDN_core__461_418_mISDNInit6 = internal global ptr @mISDNInit, section ".initcall6.init", align 4
@__exitcall_mISDN_cleanup = internal global ptr @mISDN_cleanup, section ".exitcall.exit", align 4
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mISDN\00", [26 x i8] zeroinitializer }, align 32
@mISDN_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mISDN_group, ptr null], [24 x i8] zeroinitializer }, align 32
@mISDN_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mISDN_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@mISDN_attrs = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @dev_attr_id, ptr @dev_attr_d_protocols, ptr @dev_attr_b_protocols, ptr @dev_attr_protocol, ptr @dev_attr_channelmap, ptr @dev_attr_nrbchan, ptr @dev_attr_name, ptr null], [32 x i8] zeroinitializer }, align 32
@dev_attr_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_d_protocols = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @d_protocols_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_b_protocols = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @b_protocols_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_protocol = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @protocol_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_channelmap = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @channelmap_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_nrbchan = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nrbchan_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"d_protocols\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"b_protocols\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"protocol\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"channelmap\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nrbchan\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nchans=%d\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bp_lock\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"<no channel>\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"<no stack>\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"<no stack device>\00", [46 x i8] zeroinitializer }, align 32
@mISDNInit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016Modular ISDN core version %d.%d.%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mISDNInit\00", [22 x i8] zeroinitializer }, align 32
@mISDNInit._entry_ptr = internal global ptr @mISDNInit._entry, section ".printk_index", align 4
@mISDNInit.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mISDN_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017mISDNcore unloaded\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mISDN_cleanup\00", [18 x i8] zeroinitializer }, align 32
@mISDN_cleanup._entry_ptr = internal global ptr @mISDN_cleanup._entry, section ".printk_index", align 4
@___asan_gen_.33 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 14, i32 14 }
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"mISDN_class\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 160, i32 21 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 230, i32 27 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 232, i32 27 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 234, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 262, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [11 x i8] c"device_ids\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 20, i32 13 }
@___asan_gen_.69 = private unnamed_addr constant [8 x i8] c"bp_lock\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [11 x i8] c"Bprotocols\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 23, i32 8 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 308, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 323, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 327, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 345, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 161, i32 10 }
@___asan_gen_.108 = private unnamed_addr constant [13 x i8] c"mISDN_groups\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [12 x i8] c"mISDN_group\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 140, i32 1 }
@___asan_gen_.114 = private unnamed_addr constant [12 x i8] c"mISDN_attrs\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 130, i32 26 }
@___asan_gen_.117 = private unnamed_addr constant [12 x i8] c"dev_attr_id\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [21 x i8] c"dev_attr_d_protocols\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [21 x i8] c"dev_attr_b_protocols\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [18 x i8] c"dev_attr_protocol\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [20 x i8] c"dev_attr_channelmap\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"dev_attr_nrbchan\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [14 x i8] c"dev_attr_name\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 40, i32 8 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 38, i32 22 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 62, i32 8 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 73, i32 8 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 84, i32 8 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 128, i32 8 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 51, i32 8 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 92, i32 8 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 149, i32 26 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 24, i32 8 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 353, i32 37 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 354, i32 35 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 355, i32 38 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 374, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 378, i32 8 }
@___asan_gen_.189 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.196 = private constant [29 x i8] c"../drivers/isdn/mISDN/core.c\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 415, i32 2 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_author457, ptr @__UNIQUE_ID_debugtype460, ptr @__UNIQUE_ID_file458, ptr @__UNIQUE_ID_license459, ptr @__exitcall_mISDN_cleanup, ptr @__initcall__kmod_mISDN_core__461_418_mISDNInit6, ptr @__ksymtab_mISDNDevName4ch, ptr @__ksymtab_mISDN_register_Bprotocol, ptr @__ksymtab_mISDN_register_device, ptr @__ksymtab_mISDN_unregister_Bprotocol, ptr @__ksymtab_mISDN_unregister_device, ptr @__param_debug, ptr @get_Bprotocol4id._entry, ptr @get_Bprotocol4id._entry_ptr, ptr @mISDNInit._entry, ptr @mISDNInit._entry_ptr, ptr @mISDN_cleanup._entry, ptr @mISDN_cleanup._entry_ptr, ptr @mISDN_register_Bprotocol._entry, ptr @mISDN_register_Bprotocol._entry.11, ptr @mISDN_register_Bprotocol._entry_ptr, ptr @mISDN_register_Bprotocol._entry_ptr.13, ptr @mISDN_register_device._entry, ptr @mISDN_register_device._entry_ptr, ptr @mISDN_unregister_Bprotocol._entry, ptr @mISDN_unregister_Bprotocol._entry_ptr, ptr @mISDN_unregister_device._entry, ptr @mISDN_unregister_device._entry_ptr, ptr @debug, ptr @mISDN_class, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @device_ids, ptr @bp_lock, ptr @Bprotocols, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @mISDN_groups, ptr @mISDN_group, ptr @mISDN_attrs, ptr @dev_attr_id, ptr @dev_attr_d_protocols, ptr @dev_attr_b_protocols, ptr @dev_attr_protocol, ptr @dev_attr_channelmap, ptr @dev_attr_nrbchan, ptr @dev_attr_name, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @mISDNInit.__key, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDN_class to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDN_register_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDN_unregister_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_ids to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bp_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Bprotocols to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_Bprotocol4id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDN_register_Bprotocol._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDN_register_Bprotocol._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDN_unregister_Bprotocol._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDN_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDN_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDN_attrs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_d_protocols to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_b_protocols to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_protocol to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_channelmap to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_nrbchan to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDNInit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDNInit.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDN_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_mdevice(i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  %id.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %id.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %id, ptr %id.addr, align 4
  %call = call ptr @class_find_device(ptr noundef nonnull @mISDN_class, ptr noundef null, ptr noundef nonnull %id.addr, ptr noundef nonnull @_get_mdevice) #13
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %entry.dev_to_mISDN.exit_crit_edge, label %if.then.i

entry.dev_to_mISDN.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_mISDN.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  br label %dev_to_mISDN.exit

dev_to_mISDN.exit:                                ; preds = %if.then.i, %entry.dev_to_mISDN.exit_crit_edge
  %retval.0.i = phi ptr [ %2, %if.then.i ], [ null, %entry.dev_to_mISDN.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @_get_mdevice(ptr noundef readonly %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %dev_to_mISDN.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

dev_to_mISDN.exit:                                ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %dev_to_mISDN.exit.cleanup_crit_edge, label %if.end

dev_to_mISDN.exit.cleanup_crit_edge:              ; preds = %dev_to_mISDN.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %dev_to_mISDN.exit
  call void @__sanitizer_cov_trace_pc() #15
  %id1 = getelementptr inbounds %struct.mISDNdevice, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id1, align 4
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  %. = zext i1 %cmp.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dev_to_mISDN.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dev_to_mISDN.exit.cleanup_crit_edge ], [ %., %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_mdevice_count() local_unnamed_addr #0 align 64 {
entry:
  %cnt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cnt) #13
  %0 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cnt, align 4
  %call = call i32 @class_for_each_device(ptr noundef nonnull @mISDN_class, ptr noundef null, ptr noundef nonnull %cnt, ptr noundef nonnull @_get_mdevice_count) #13
  %1 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cnt, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cnt) #13
  ret i32 %2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_for_each_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @_get_mdevice_count(ptr nocapture noundef readnone %dev, ptr nocapture noundef %cnt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cnt, align 4
  %add = add i32 %1, 1
  store i32 %add, ptr %cnt, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mISDN_register_device(ptr noundef %dev, ptr noundef %parent, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.08.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef %i.08.i, ptr noundef nonnull @device_ids) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %i.08.i)
  %cmp1.i = icmp ugt i32 %i.08.i, 63
  br i1 %cmp1.i, label %for.end.i.cleanup_crit_edge, label %if.end

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %for.end.i
  %id = getelementptr inbounds %struct.mISDNdevice, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %i.08.i, ptr %id, align 4
  %dev1 = getelementptr inbounds %struct.mISDNdevice, ptr %dev, i32 0, i32 8
  tail call void @device_initialize(ptr noundef %dev1) #13
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not = icmp eq i8 %2, 0
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %if.then3

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev1, ptr noundef nonnull @.str, ptr noundef nonnull %name) #13
  br label %if.end9

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %call8 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %4) #13
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then3
  %5 = load i32, ptr @debug, align 4
  %and = and i32 %5, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end9.if.end16_crit_edge, label %do.end

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

do.end:                                           ; preds = %if.end9
  %init_name.i = getelementptr inbounds %struct.mISDNdevice, ptr %dev, i32 0, i32 8, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i53 = icmp eq ptr %7, null
  br i1 %tobool.not.i53, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %do.end.dev_name.exit_crit_edge ]
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %retval.0.i, i32 noundef %11) #16
  br label %if.end16

if.end16:                                         ; preds = %dev_name.exit, %if.end9.if.end16_crit_edge
  %call17 = tail call i32 @create_stack(ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %class = getelementptr inbounds %struct.mISDNdevice, ptr %dev, i32 0, i32 8, i32 33
  %12 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mISDN_class, ptr %class, align 4
  %platform_data = getelementptr inbounds %struct.mISDNdevice, ptr %dev, i32 0, i32 8, i32 7
  %13 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %platform_data, align 8
  %parent24 = getelementptr inbounds %struct.mISDNdevice, ptr %dev, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %parent24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %parent, ptr %parent24, align 8
  %driver_data.i = getelementptr inbounds %struct.mISDNdevice, ptr %dev, i32 0, i32 8, i32 8
  %15 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %driver_data.i, align 4
  %call27 = tail call i32 @device_add(ptr noundef %dev1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end20.cleanup_crit_edge, label %error3

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

error3:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @delete_stack(ptr noundef %dev) #13
  br label %cleanup

cleanup:                                          ; preds = %error3, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %error3 ], [ 0, %if.end20.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ -16, %for.end.i.cleanup_crit_edge ], [ -16, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @create_stack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delete_stack(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mISDN_unregister_device(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.mISDNdevice, ptr %dev, i32 0, i32 8, i32 3
  %1 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev1 = getelementptr inbounds %struct.mISDNdevice, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ %2, %do.end.dev_name.exit_crit_edge ]
  %id = getelementptr inbounds %struct.mISDNdevice, ptr %dev, i32 0, i32 1
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %retval.0.i, i32 noundef %6) #16
  br label %if.end

if.end:                                           ; preds = %dev_name.exit, %entry.if.end_crit_edge
  %dev3 = getelementptr inbounds %struct.mISDNdevice, ptr %dev, i32 0, i32 8
  tail call void @device_del(ptr noundef %dev3) #13
  %driver_data.i = getelementptr inbounds %struct.mISDNdevice, ptr %dev, i32 0, i32 8, i32 8
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %driver_data.i, align 4
  %id5 = getelementptr inbounds %struct.mISDNdevice, ptr %dev, i32 0, i32 1
  %8 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id5, align 4
  %call6 = tail call i32 @_test_and_clear_bit(i32 noundef %9, ptr noundef nonnull @device_ids) #13
  tail call void @delete_stack(ptr noundef %dev) #13
  tail call void @put_device(ptr noundef %dev3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_all_Bprotocols() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @bp_lock) #13
  %bp.08 = load ptr, ptr @Bprotocols, align 4
  %cmp.not9 = icmp eq ptr %bp.08, @Bprotocols
  br i1 %cmp.not9, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %bp.011 = phi ptr [ %bp.0, %for.body.for.body_crit_edge ], [ %bp.08, %entry.for.body_crit_edge ]
  %m.010 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %Bprotocols = getelementptr inbounds %struct.Bprotocol, ptr %bp.011, i32 0, i32 2
  %0 = ptrtoint ptr %Bprotocols to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %Bprotocols, align 4
  %or = or i32 %1, %m.010
  %2 = ptrtoint ptr %bp.011 to i32
  call void @__asan_load4_noabort(i32 %2)
  %bp.0 = load ptr, ptr %bp.011, align 4
  %cmp.not = icmp eq ptr %bp.0, @Bprotocols
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %m.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %or, %for.body.for.end_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @bp_lock) #13
  ret i32 %m.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_Bprotocol4mask(i32 noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @bp_lock) #13
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %bp.0.in = phi ptr [ @Bprotocols, %entry ], [ %bp.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %bp.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %bp.0 = load ptr, ptr %bp.0.in, align 4
  %cmp.not = icmp eq ptr %bp.0, @Bprotocols
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %Bprotocols = getelementptr inbounds %struct.Bprotocol, ptr %bp.0, i32 0, i32 2
  %1 = ptrtoint ptr %Bprotocols to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %Bprotocols, align 4
  %and = and i32 %2, %m
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %bp.0, %for.body.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @bp_lock) #13
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_Bprotocol4id(i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %id, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %0)
  %.not = icmp eq i32 %0, 32
  br i1 %.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %id) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %id, 31
  %shl = shl nuw i32 1, %and
  tail call void @_raw_read_lock(ptr noundef nonnull @bp_lock) #13
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %bp.0.in.i = phi ptr [ @Bprotocols, %if.end ], [ %bp.0.i, %for.body.i.for.cond.i_crit_edge ]
  %1 = ptrtoint ptr %bp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %bp.0.i = load ptr, ptr %bp.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %bp.0.i, @Bprotocols
  br i1 %cmp.not.i, label %for.cond.i.get_Bprotocol4mask.exit_crit_edge, label %for.body.i

for.cond.i.get_Bprotocol4mask.exit_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_Bprotocol4mask.exit

for.body.i:                                       ; preds = %for.cond.i
  %Bprotocols.i = getelementptr inbounds %struct.Bprotocol, ptr %bp.0.i, i32 0, i32 2
  %2 = ptrtoint ptr %Bprotocols.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %Bprotocols.i, align 4
  %and.i = and i32 %3, %shl
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.get_Bprotocol4mask.exit_crit_edge

for.body.i.get_Bprotocol4mask.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_Bprotocol4mask.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

get_Bprotocol4mask.exit:                          ; preds = %for.body.i.get_Bprotocol4mask.exit_crit_edge, %for.cond.i.get_Bprotocol4mask.exit_crit_edge
  %retval.0.i = phi ptr [ %bp.0.i, %for.body.i.get_Bprotocol4mask.exit_crit_edge ], [ null, %for.cond.i.get_Bprotocol4mask.exit_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @bp_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %get_Bprotocol4mask.exit, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %retval.0.i, %get_Bprotocol4mask.exit ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mISDN_register_Bprotocol(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.Bprotocol, ptr %bp, i32 0, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %Bprotocols = getelementptr inbounds %struct.Bprotocol, ptr %bp, i32 0, i32 2
  %3 = ptrtoint ptr %Bprotocols to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %Bprotocols, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef %2, i32 noundef %4) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %Bprotocols1 = getelementptr inbounds %struct.Bprotocol, ptr %bp, i32 0, i32 2
  %5 = ptrtoint ptr %Bprotocols1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %Bprotocols1, align 4
  tail call void @_raw_read_lock(ptr noundef nonnull @bp_lock) #13
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %bp.0.in.i = phi ptr [ @Bprotocols, %if.end ], [ %bp.0.i, %for.body.i.for.cond.i_crit_edge ]
  %7 = ptrtoint ptr %bp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %bp.0.i = load ptr, ptr %bp.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %bp.0.i, @Bprotocols
  br i1 %cmp.not.i, label %get_Bprotocol4mask.exit.thread, label %for.body.i

get_Bprotocol4mask.exit.thread:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_read_unlock(ptr noundef nonnull @bp_lock) #13
  br label %do.body15

for.body.i:                                       ; preds = %for.cond.i
  %Bprotocols.i = getelementptr inbounds %struct.Bprotocol, ptr %bp.0.i, i32 0, i32 2
  %8 = ptrtoint ptr %Bprotocols.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %Bprotocols.i, align 4
  %and.i = and i32 %9, %6
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %get_Bprotocol4mask.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

get_Bprotocol4mask.exit:                          ; preds = %for.body.i
  tail call void @_raw_read_unlock(ptr noundef nonnull @bp_lock) #13
  %tobool3.not = icmp eq ptr %bp.0.i, null
  br i1 %tobool3.not, label %get_Bprotocol4mask.exit.do.body15_crit_edge, label %do.end7

get_Bprotocol4mask.exit.do.body15_crit_edge:      ; preds = %get_Bprotocol4mask.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body15

do.end7:                                          ; preds = %get_Bprotocol4mask.exit
  call void @__sanitizer_cov_trace_pc() #15
  %Bprotocols.i.le = getelementptr inbounds %struct.Bprotocol, ptr %bp.0.i, i32 0, i32 2
  %name9 = getelementptr inbounds %struct.Bprotocol, ptr %bp.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name9, align 4
  %12 = ptrtoint ptr %Bprotocols.i.le to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %Bprotocols.i.le, align 4
  %name11 = getelementptr inbounds %struct.Bprotocol, ptr %bp, i32 0, i32 1
  %14 = ptrtoint ptr %name11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name11, align 4
  %16 = ptrtoint ptr %Bprotocols1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %Bprotocols1, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %11, i32 noundef %13, ptr noundef %15, i32 noundef %17) #16
  br label %cleanup

do.body15:                                        ; preds = %get_Bprotocol4mask.exit.do.body15_crit_edge, %get_Bprotocol4mask.exit.thread
  %call17 = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @bp_lock) #13
  %18 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @Bprotocols, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %bp, ptr noundef %18, ptr noundef nonnull @Bprotocols) #13
  br i1 %call.i.i, label %if.end.i.i, label %do.body15.list_add_tail.exit_crit_edge

do.body15.list_add_tail.exit_crit_edge:           ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #15
  store ptr %bp, ptr getelementptr inbounds (%struct.list_head, ptr @Bprotocols, i32 0, i32 1), align 4
  %19 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @Bprotocols, ptr %bp, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %bp, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %prev3.i.i, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %bp, ptr %18, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body15.list_add_tail.exit_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @bp_lock, i32 noundef %call17) #13
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %do.end7
  %retval.0 = phi i32 [ -16, %do.end7 ], [ 0, %list_add_tail.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mISDN_unregister_Bprotocol(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body1_crit_edge, label %do.end

entry.do.body1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body1

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.Bprotocol, ptr %bp, i32 0, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %Bprotocols = getelementptr inbounds %struct.Bprotocol, ptr %bp, i32 0, i32 2
  %3 = ptrtoint ptr %Bprotocols to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %Bprotocols, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14, ptr noundef %2, i32 noundef %4) #16
  br label %do.body1

do.body1:                                         ; preds = %do.end, %entry.do.body1_crit_edge
  %call3 = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @bp_lock) #13
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bp) #13
  br i1 %call.i.i, label %if.end.i.i, label %do.body1.list_del.exit_crit_edge

do.body1.list_del.exit_crit_edge:                 ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %bp, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bp, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.body1.list_del.exit_crit_edge
  %11 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %bp, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %bp, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @bp_lock, i32 noundef %call3) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mISDNDevName4ch(ptr noundef readonly %ch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ch, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %st = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 5
  %0 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %st, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end3:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.mISDNstack, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.end3.return_crit_edge, label %if.end7

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end7:                                          ; preds = %if.end3
  %init_name.i = getelementptr inbounds %struct.mISDNdevice, ptr %3, i32 0, i32 8, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.return_crit_edge

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %dev10 = getelementptr inbounds %struct.mISDNdevice, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev10, align 4
  br label %return

return:                                           ; preds = %if.end.i, %if.end7.return_crit_edge, %if.end3.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ @.str.26, %entry.return_crit_edge ], [ @.str.27, %if.end.return_crit_edge ], [ @.str.28, %if.end3.return_crit_edge ], [ %7, %if.end.i ], [ %5, %if.end7.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mISDNInit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef 1, i32 noundef 1, i32 noundef 29) #16
  tail call void @mISDN_init_clock(ptr noundef nonnull @debug) #13
  tail call void @mISDN_initstack(ptr noundef nonnull @debug) #13
  %call2 = tail call i32 @__class_register(ptr noundef nonnull @mISDN_class, ptr noundef nonnull @mISDNInit.__key) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @mISDN_inittimer(ptr noundef nonnull @debug) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.error2_crit_edge

if.end.error2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %error2

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @Isdnl1_Init(ptr noundef nonnull @debug) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.error3_crit_edge

if.end6.error3_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %error3

if.end10:                                         ; preds = %if.end6
  %call11 = tail call i32 @Isdnl2_Init(ptr noundef nonnull @debug) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.error4_crit_edge

if.end10.error4_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %error4

if.end14:                                         ; preds = %if.end10
  %call15 = tail call i32 @misdn_sock_init(ptr noundef nonnull @debug) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %error5

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

error5:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @Isdnl2_cleanup() #13
  br label %error4

error4:                                           ; preds = %error5, %if.end10.error4_crit_edge
  %err.0 = phi i32 [ %call11, %if.end10.error4_crit_edge ], [ %call15, %error5 ]
  tail call void @Isdnl1_cleanup() #13
  br label %error3

error3:                                           ; preds = %error4, %if.end6.error3_crit_edge
  %err.1 = phi i32 [ %call7, %if.end6.error3_crit_edge ], [ %err.0, %error4 ]
  tail call void @mISDN_timer_cleanup() #13
  br label %error2

error2:                                           ; preds = %error3, %if.end.error2_crit_edge
  %err.2 = phi i32 [ %call3, %if.end.error2_crit_edge ], [ %err.1, %error3 ]
  tail call void @class_unregister(ptr noundef nonnull @mISDN_class) #13
  br label %cleanup

cleanup:                                          ; preds = %error2, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14.cleanup_crit_edge ], [ %call2, %entry.cleanup_crit_edge ], [ %err.2, %error2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mISDN_cleanup() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @misdn_sock_cleanup() #13
  tail call void @Isdnl2_cleanup() #13
  tail call void @Isdnl1_cleanup() #13
  tail call void @mISDN_timer_cleanup() #13
  tail call void @class_unregister(ptr noundef nonnull @mISDN_class) #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mISDN_uevent(ptr noundef readonly %dev, ptr noundef %env) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %dev_to_mISDN.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

dev_to_mISDN.exit:                                ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %dev_to_mISDN.exit.cleanup_crit_edge, label %if.end

dev_to_mISDN.exit.cleanup_crit_edge:              ; preds = %dev_to_mISDN.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %dev_to_mISDN.exit
  call void @__sanitizer_cov_trace_pc() #15
  %nrbchan = getelementptr inbounds %struct.mISDNdevice, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %nrbchan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nrbchan, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.24, i32 noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  %. = select i1 %tobool2.not, i32 0, i32 -12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dev_to_mISDN.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dev_to_mISDN.exit.cleanup_crit_edge ], [ %., %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mISDN_class_release(ptr nocapture noundef %cls) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mISDN_dev_release(ptr nocapture noundef %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @id_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %dev_to_mISDN.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

dev_to_mISDN.exit:                                ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %dev_to_mISDN.exit.cleanup_crit_edge, label %if.end

dev_to_mISDN.exit.cleanup_crit_edge:              ; preds = %dev_to_mISDN.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %dev_to_mISDN.exit
  call void @__sanitizer_cov_trace_pc() #15
  %id = getelementptr inbounds %struct.mISDNdevice, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dev_to_mISDN.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %dev_to_mISDN.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @d_protocols_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %dev_to_mISDN.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

dev_to_mISDN.exit:                                ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %dev_to_mISDN.exit.cleanup_crit_edge, label %if.end

dev_to_mISDN.exit.cleanup_crit_edge:              ; preds = %dev_to_mISDN.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %dev_to_mISDN.exit
  call void @__sanitizer_cov_trace_pc() #15
  %Dprotocols = getelementptr inbounds %struct.mISDNdevice, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %Dprotocols to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %Dprotocols, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dev_to_mISDN.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %dev_to_mISDN.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b_protocols_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %dev_to_mISDN.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

dev_to_mISDN.exit:                                ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %dev_to_mISDN.exit.cleanup_crit_edge, label %if.end

dev_to_mISDN.exit.cleanup_crit_edge:              ; preds = %dev_to_mISDN.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %dev_to_mISDN.exit
  %Bprotocols = getelementptr inbounds %struct.mISDNdevice, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %Bprotocols to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %Bprotocols, align 4
  tail call void @_raw_read_lock(ptr noundef nonnull @bp_lock) #13
  %bp.08.i = load ptr, ptr @Bprotocols, align 4
  %cmp.not9.i = icmp eq ptr %bp.08.i, @Bprotocols
  br i1 %cmp.not9.i, label %if.end.get_all_Bprotocols.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.get_all_Bprotocols.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_all_Bprotocols.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %bp.011.i = phi ptr [ %bp.0.i, %for.body.i.for.body.i_crit_edge ], [ %bp.08.i, %if.end.for.body.i_crit_edge ]
  %m.010.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %Bprotocols.i = getelementptr inbounds %struct.Bprotocol, ptr %bp.011.i, i32 0, i32 2
  %4 = ptrtoint ptr %Bprotocols.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %Bprotocols.i, align 4
  %or.i = or i32 %5, %m.010.i
  %6 = ptrtoint ptr %bp.011.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %bp.0.i = load ptr, ptr %bp.011.i, align 4
  %cmp.not.i = icmp eq ptr %bp.0.i, @Bprotocols
  br i1 %cmp.not.i, label %for.body.i.get_all_Bprotocols.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.get_all_Bprotocols.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_all_Bprotocols.exit

get_all_Bprotocols.exit:                          ; preds = %for.body.i.get_all_Bprotocols.exit_crit_edge, %if.end.get_all_Bprotocols.exit_crit_edge
  %m.0.lcssa.i = phi i32 [ 0, %if.end.get_all_Bprotocols.exit_crit_edge ], [ %or.i, %for.body.i.get_all_Bprotocols.exit_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @bp_lock) #13
  %or = or i32 %m.0.lcssa.i, %3
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %or)
  br label %cleanup

cleanup:                                          ; preds = %get_all_Bprotocols.exit, %dev_to_mISDN.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %get_all_Bprotocols.exit ], [ -19, %dev_to_mISDN.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @protocol_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %dev_to_mISDN.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

dev_to_mISDN.exit:                                ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %dev_to_mISDN.exit.cleanup_crit_edge, label %if.end

dev_to_mISDN.exit.cleanup_crit_edge:              ; preds = %dev_to_mISDN.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %dev_to_mISDN.exit
  call void @__sanitizer_cov_trace_pc() #15
  %protocol = getelementptr inbounds %struct.mISDNchannel, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %protocol, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dev_to_mISDN.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %dev_to_mISDN.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @channelmap_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.dev_to_mISDN.exit_crit_edge, label %if.then.i

entry.dev_to_mISDN.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_mISDN.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  br label %dev_to_mISDN.exit

dev_to_mISDN.exit:                                ; preds = %if.then.i, %entry.dev_to_mISDN.exit_crit_edge
  %retval.0.i = phi ptr [ %1, %if.then.i ], [ null, %entry.dev_to_mISDN.exit_crit_edge ]
  %nrbchan = getelementptr inbounds %struct.mISDNdevice, ptr %retval.0.i, i32 0, i32 4
  %channelmap = getelementptr inbounds %struct.mISDNdevice, ptr %retval.0.i, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %dev_to_mISDN.exit
  %i.012 = phi i32 [ 0, %dev_to_mISDN.exit ], [ %inc, %for.cond.for.body_crit_edge ]
  %bp.011 = phi ptr [ %buf, %dev_to_mISDN.exit ], [ %incdec.ptr, %for.cond.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %i.012)
  %cmp.i = icmp ult i32 %i.012, 128
  br i1 %cmp.i, label %test_channelmap.exit, label %for.body.test_channelmap.exit.thread_crit_edge

for.body.test_channelmap.exit.thread_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %test_channelmap.exit.thread

test_channelmap.exit:                             ; preds = %for.body
  %shr.i = lshr i32 %i.012, 3
  %arrayidx.i = getelementptr i8, ptr %channelmap, i32 %shr.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %3 to i32
  %and.i = and i32 %i.012, 7
  %shl.i = shl nuw nsw i32 1, %and.i
  %and1.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %test_channelmap.exit.test_channelmap.exit.thread_crit_edge, label %test_channelmap.exit.for.cond_crit_edge

test_channelmap.exit.for.cond_crit_edge:          ; preds = %test_channelmap.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

test_channelmap.exit.test_channelmap.exit.thread_crit_edge: ; preds = %test_channelmap.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %test_channelmap.exit.thread

test_channelmap.exit.thread:                      ; preds = %test_channelmap.exit.test_channelmap.exit.thread_crit_edge, %for.body.test_channelmap.exit.thread_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %test_channelmap.exit.thread, %test_channelmap.exit.for.cond_crit_edge
  %4 = phi i8 [ 48, %test_channelmap.exit.thread ], [ 49, %test_channelmap.exit.for.cond_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %bp.011, i32 1
  %5 = ptrtoint ptr %bp.011 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %bp.011, align 1
  %inc = add i32 %i.012, 1
  %6 = ptrtoint ptr %nrbchan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nrbchan, align 8
  %cmp.not = icmp ugt i32 %inc, %7
  br i1 %cmp.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i32 %sub.ptr.sub
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nrbchan_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %dev_to_mISDN.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

dev_to_mISDN.exit:                                ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %dev_to_mISDN.exit.cleanup_crit_edge, label %if.end

dev_to_mISDN.exit.cleanup_crit_edge:              ; preds = %dev_to_mISDN.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %dev_to_mISDN.exit
  call void @__sanitizer_cov_trace_pc() #15
  %nrbchan = getelementptr inbounds %struct.mISDNdevice, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %nrbchan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nrbchan, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dev_to_mISDN.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %dev_to_mISDN.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %call1 = tail call ptr @strcpy(ptr noundef %buf, ptr noundef %retval.0.i) #17
  %call2 = tail call i32 @strlen(ptr noundef %buf) #17
  ret i32 %call2
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_init_clock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_initstack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_inittimer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @Isdnl1_Init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @Isdnl2_Init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misdn_sock_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @Isdnl2_cleanup() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @Isdnl1_cleanup() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_timer_cleanup() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @misdn_sock_cleanup() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !20, !22, !23, !24, !25, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !45, !46, !47, !49, !51, !53, !55, !57, !59, !60, !62, !64, !66, !67, !69, !71, !72, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !96, !97, !99, !101, !103, !105, !107, !109, !111, !113, !114, !115, !116, !118, !120, !121, !122}
!llvm.module.flags = !{!123, !124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !{ptr @__UNIQUE_ID_author457, !1, !"__UNIQUE_ID_author457", i1 false, i1 false}
!1 = !{!"../drivers/isdn/mISDN/core.c", i32 16, i32 1}
!2 = !{ptr @__UNIQUE_ID_file458, !3, !"__UNIQUE_ID_file458", i1 false, i1 false}
!3 = !{!"../drivers/isdn/mISDN/core.c", i32 17, i32 1}
!4 = !{ptr @__UNIQUE_ID_license459, !3, !"__UNIQUE_ID_license459", i1 false, i1 false}
!5 = !{ptr @__param_debug, !6, !"__param_debug", i1 false, i1 false}
!6 = !{!"../drivers/isdn/mISDN/core.c", i32 18, i32 1}
!7 = !{ptr @__UNIQUE_ID_debugtype460, !6, !"__UNIQUE_ID_debugtype460", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/isdn/mISDN/core.c", i32 230, i32 27}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/isdn/mISDN/core.c", i32 232, i32 27}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/isdn/mISDN/core.c", i32 234, i32 3}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mISDN_register_device._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @mISDN_register_device._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__ksymtab_mISDN_register_device, !19, !"__ksymtab_mISDN_register_device", i1 false, i1 false}
!19 = !{!"../drivers/isdn/mISDN/core.c", i32 257, i32 1}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/isdn/mISDN/core.c", i32 262, i32 3}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mISDN_unregister_device._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @mISDN_unregister_device._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @__ksymtab_mISDN_unregister_device, !26, !"__ksymtab_mISDN_unregister_device", i1 false, i1 false}
!26 = !{!"../drivers/isdn/mISDN/core.c", i32 272, i32 1}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/isdn/mISDN/core.c", i32 308, i32 3}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @get_Bprotocol4id._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @get_Bprotocol4id._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/isdn/mISDN/core.c", i32 323, i32 3}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mISDN_register_Bprotocol._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @mISDN_register_Bprotocol._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/isdn/mISDN/core.c", i32 327, i32 3}
!39 = !{ptr @mISDN_register_Bprotocol._entry.11, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @mISDN_register_Bprotocol._entry_ptr.13, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @__ksymtab_mISDN_register_Bprotocol, !42, !"__ksymtab_mISDN_register_Bprotocol", i1 false, i1 false}
!42 = !{!"../drivers/isdn/mISDN/core.c", i32 337, i32 1}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/isdn/mISDN/core.c", i32 345, i32 3}
!45 = !{ptr @mISDN_unregister_Bprotocol._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mISDN_unregister_Bprotocol._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @__ksymtab_mISDN_unregister_Bprotocol, !48, !"__ksymtab_mISDN_unregister_Bprotocol", i1 false, i1 false}
!48 = !{!"../drivers/isdn/mISDN/core.c", i32 351, i32 1}
!49 = !{ptr @__ksymtab_mISDNDevName4ch, !50, !"__ksymtab_mISDNDevName4ch", i1 false, i1 false}
!50 = !{!"../drivers/isdn/mISDN/core.c", i32 367, i32 1}
!51 = !{ptr @__initcall__kmod_mISDN_core__461_418_mISDNInit6, !52, !"__initcall__kmod_mISDN_core__461_418_mISDNInit6", i1 false, i1 false}
!52 = !{!"../drivers/isdn/mISDN/core.c", i32 418, i32 1}
!53 = !{ptr @__exitcall_mISDN_cleanup, !54, !"__exitcall_mISDN_cleanup", i1 false, i1 false}
!54 = !{!"../drivers/isdn/mISDN/core.c", i32 419, i32 1}
!55 = !{ptr @debug, !56, !"debug", i1 false, i1 false}
!56 = !{!"../drivers/isdn/mISDN/core.c", i32 14, i32 14}
!57 = !{ptr @device_ids, !58, !"device_ids", i1 false, i1 false}
!58 = !{!"../drivers/isdn/mISDN/core.c", i32 20, i32 13}
!59 = !{ptr @__param_str_debug, !6, !"__param_str_debug", i1 false, i1 false}
!60 = !{ptr @.str.15, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/isdn/mISDN/core.c", i32 161, i32 10}
!62 = !{ptr @mISDN_class, !63, !"mISDN_class", i1 false, i1 false}
!63 = !{!"../drivers/isdn/mISDN/core.c", i32 160, i32 21}
!64 = !{ptr @mISDN_groups, !65, !"mISDN_groups", i1 false, i1 false}
!65 = !{!"../drivers/isdn/mISDN/core.c", i32 140, i32 1}
!66 = !{ptr @mISDN_group, !65, !"mISDN_group", i1 false, i1 false}
!67 = !{ptr @mISDN_attrs, !68, !"mISDN_attrs", i1 false, i1 false}
!68 = !{!"../drivers/isdn/mISDN/core.c", i32 130, i32 26}
!69 = !{ptr @.str.16, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/isdn/mISDN/core.c", i32 40, i32 8}
!71 = !{ptr @dev_attr_id, !70, !"dev_attr_id", i1 false, i1 false}
!72 = !{ptr @.str.17, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/isdn/mISDN/core.c", i32 38, i32 22}
!74 = !{ptr @.str.18, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/isdn/mISDN/core.c", i32 62, i32 8}
!76 = !{ptr @dev_attr_d_protocols, !75, !"dev_attr_d_protocols", i1 false, i1 false}
!77 = !{ptr @.str.19, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/isdn/mISDN/core.c", i32 73, i32 8}
!79 = !{ptr @dev_attr_b_protocols, !78, !"dev_attr_b_protocols", i1 false, i1 false}
!80 = !{ptr @.str.20, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/isdn/mISDN/core.c", i32 84, i32 8}
!82 = !{ptr @dev_attr_protocol, !81, !"dev_attr_protocol", i1 false, i1 false}
!83 = !{ptr @.str.21, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/isdn/mISDN/core.c", i32 128, i32 8}
!85 = !{ptr @dev_attr_channelmap, !84, !"dev_attr_channelmap", i1 false, i1 false}
!86 = !{ptr @.str.22, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/isdn/mISDN/core.c", i32 51, i32 8}
!88 = !{ptr @dev_attr_nrbchan, !87, !"dev_attr_nrbchan", i1 false, i1 false}
!89 = !{ptr @.str.23, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/isdn/mISDN/core.c", i32 92, i32 8}
!91 = !{ptr @dev_attr_name, !90, !"dev_attr_name", i1 false, i1 false}
!92 = !{ptr @.str.24, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/isdn/mISDN/core.c", i32 149, i32 26}
!94 = !{ptr @.str.25, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/isdn/mISDN/core.c", i32 24, i32 8}
!96 = !{ptr @bp_lock, !95, !"bp_lock", i1 false, i1 false}
!97 = !{ptr @Bprotocols, !98, !"Bprotocols", i1 false, i1 false}
!98 = !{!"../drivers/isdn/mISDN/core.c", i32 23, i32 8}
!99 = !{ptr @.str.26, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/isdn/mISDN/core.c", i32 353, i32 37}
!101 = distinct !{null, !102, !"msg_no_channel", i1 false, i1 false}
!102 = !{!"../drivers/isdn/mISDN/core.c", i32 353, i32 20}
!103 = !{ptr @.str.27, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/isdn/mISDN/core.c", i32 354, i32 35}
!105 = distinct !{null, !106, !"msg_no_stack", i1 false, i1 false}
!106 = !{!"../drivers/isdn/mISDN/core.c", i32 354, i32 20}
!107 = !{ptr @.str.28, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/isdn/mISDN/core.c", i32 355, i32 38}
!109 = distinct !{null, !110, !"msg_no_stackdev", i1 false, i1 false}
!110 = !{!"../drivers/isdn/mISDN/core.c", i32 355, i32 20}
!111 = !{ptr @.str.29, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/isdn/mISDN/core.c", i32 374, i32 2}
!113 = !{ptr @.str.30, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @mISDNInit._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @mISDNInit._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @mISDNInit.__key, !117, !"__key", i1 false, i1 false}
!117 = !{!"../drivers/isdn/mISDN/core.c", i32 378, i32 8}
!118 = !{ptr @.str.31, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/isdn/mISDN/core.c", i32 415, i32 2}
!120 = !{ptr @.str.32, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @mISDN_cleanup._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @mISDN_cleanup._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 1, !"min_enum_size", i32 4}
!125 = !{i32 8, !"branch-target-enforcement", i32 0}
!126 = !{i32 8, !"sign-return-address", i32 0}
!127 = !{i32 8, !"sign-return-address-all", i32 0}
!128 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!129 = !{i32 7, !"uwtable", i32 1}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
