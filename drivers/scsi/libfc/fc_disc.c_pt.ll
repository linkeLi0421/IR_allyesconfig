; ModuleID = '/llk/IR_all_yes/drivers/scsi/libfc/fc_disc.c_pt.bc'
source_filename = "../drivers/scsi/libfc/fc_disc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+fc_disc_config\22, \22a\22\09"
module asm "\09.weak\09__crc_fc_disc_config\09\09\09\09"
module asm "\09.long\09__crc_fc_disc_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fc_disc_config:\09\09\09\09\09"
module asm "\09.asciz \09\22fc_disc_config\22\09\09\09\09\09"
module asm "__kstrtabns_fc_disc_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fc_disc_init\22, \22a\22\09"
module asm "\09.weak\09__crc_fc_disc_init\09\09\09\09"
module asm "\09.long\09__crc_fc_disc_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fc_disc_init:\09\09\09\09\09"
module asm "\09.asciz \09\22fc_disc_init\22\09\09\09\09\09"
module asm "__kstrtabns_fc_disc_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fc_lport = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.fc_disc, %struct.list_head, ptr, %struct.libfc_function_template, i8, i8, i16, i32, i32, %struct.fc_host_statistics, ptr, i8, i32, i64, i64, i32, i32, i32, %struct.fc_els_rnid_gen, i8, i32, i8, i8, i16, i16, i16, i16, i32, %struct.fc_ns_fts, %struct.mutex, %struct.list_head, %struct.delayed_work, [9 x ptr], %struct.list_head }
%struct.fc_disc = type { i8, i8, i8, i16, i8, i16, %struct.list_head, ptr, %struct.mutex, %struct.fc_gpn_ft_resp, %struct.delayed_work, ptr }
%struct.fc_gpn_ft_resp = type { i8, [3 x i8], i32, i64 }
%struct.libfc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fc_els_rnid_gen = type { [16 x i8], i32, i32, i32, i8, i8, i16, [4 x i32], [2 x i8], i16 }
%struct.fc_ns_fts = type { [8 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.fc_seq_els_data = type { i32, i32 }
%struct.sk_buff = type { %union.anon.79, %union.anon.82, %union.anon.83, [48 x i8], %union.anon.84, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.86, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr, %union.anon.81 }
%union.anon.81 = type { ptr }
%union.anon.82 = type { ptr }
%union.anon.83 = type { i64 }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { i32, ptr }
%union.anon.86 = type { %struct.anon.87 }
%struct.anon.87 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.88, i32, i32, i32, i16, i16, %union.anon.90, i32, %union.anon.91, %union.anon.92, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.88 = type { i32 }
%union.anon.90 = type { i32 }
%union.anon.91 = type { i32 }
%union.anon.92 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.fc_frame_header = type { i8, [3 x i8], i8, [3 x i8], i8, [3 x i8], i8, i8, i16, i16, i16, i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.fc_els_rscn_page = type { i8, [3 x i8] }
%struct.fc_disc_port = type { ptr, %struct.list_head, %struct.work_struct, i32 }
%struct.fc_rport_priv = type { ptr, ptr, %struct.kref, i32, %struct.fc_rport_identifiers, i16, i16, i16, i16, i32, i32, i32, i32, %struct.mutex, %struct.delayed_work, i32, ptr, %struct.list_head, %struct.work_struct, i32, i16, %struct.callback_head, i16, i8, ptr }
%struct.fc_rport_identifiers = type { i64, i64, i32, i32 }
%struct.callback_head = type { ptr, ptr }

@__kstrtab_fc_disc_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_fc_disc_config = external dso_local constant [0 x i8], align 1
@__ksymtab_fc_disc_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fc_disc_config to i32), ptr @__kstrtab_fc_disc_config, ptr @__kstrtabns_fc_disc_config }, section "___ksymtab+fc_disc_config", align 4
@fc_disc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&disc->disc_work)->work)\00", [51 x i8] zeroinitializer }, align 32
@fc_disc_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&disc->disc_work)->timer\00", [37 x i8] zeroinitializer }, align 32
@fc_disc_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&disc->disc_mutex\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_fc_disc_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_fc_disc_init = external dso_local constant [0 x i8], align 1
@__ksymtab_fc_disc_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fc_disc_init to i32), ptr @__kstrtab_fc_disc_init, ptr @__kstrtabns_fc_disc_init }, section "___ksymtab+fc_disc_init", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/scsi/libfc/fc_disc.c\00", [35 x i8] zeroinitializer }, align 32
@fc_debug_logging = external dso_local local_unnamed_addr global i32, align 4
@fc_disc_restart._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.5, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016host%u: disc: Restarting discovery\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fc_disc_restart\00", [16 x i8] zeroinitializer }, align 32
@fc_disc_restart._entry_ptr = internal global ptr @fc_disc_restart._entry, section ".printk_index", align 4
@fc_disc_gpn_ft_resp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016host%u: disc: Received a GPN_FT response\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fc_disc_gpn_ft_resp\00", [44 x i8] zeroinitializer }, align 32
@fc_disc_gpn_ft_resp._entry_ptr = internal global ptr @fc_disc_gpn_ft_resp._entry, section ".printk_index", align 4
@fc_disc_gpn_ft_resp._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.5, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016host%u: disc: GPN_FT response too short, len %d\0A\00", [45 x i8] zeroinitializer }, align 32
@fc_disc_gpn_ft_resp._entry_ptr.12 = internal global ptr @fc_disc_gpn_ft_resp._entry.10, section ".printk_index", align 4
@fc_disc_gpn_ft_resp._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.5, i32 534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016host%u: disc: GPN_FT rejected reason %x exp %x (check zoning)\0A\00", [63 x i8] zeroinitializer }, align 32
@fc_disc_gpn_ft_resp._entry_ptr.15 = internal global ptr @fc_disc_gpn_ft_resp._entry.13, section ".printk_index", align 4
@fc_disc_gpn_ft_resp._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.5, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016host%u: disc: GPN_FT unexpected response code %x\0A\00", [44 x i8] zeroinitializer }, align 32
@fc_disc_gpn_ft_resp._entry_ptr.18 = internal global ptr @fc_disc_gpn_ft_resp._entry.16, section ".printk_index", align 4
@fc_disc_gpn_ft_resp._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.5, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\016host%u: disc: GPN_FT unexpected frame - out of sequence? seq_cnt %x expected %x sof %x eof %x\0A\00", [63 x i8] zeroinitializer }, align 32
@fc_disc_gpn_ft_resp._entry_ptr.21 = internal global ptr @fc_disc_gpn_ft_resp._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/scsi/fc_frame.h\00", [40 x i8] zeroinitializer }, align 32
@fc_disc_gpn_ft_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.5, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\014libfc: Failed to allocate memory for the newly discovered port (%6.6x)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fc_disc_gpn_ft_parse\00", [43 x i8] zeroinitializer }, align 32
@fc_disc_gpn_ft_parse._entry_ptr = internal global ptr @fc_disc_gpn_ft_parse._entry, section ".printk_index", align 4
@fc_disc_gpn_ft_parse._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.5, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016host%u: disc: Partial buffer remains for discovery\0A\00", [42 x i8] zeroinitializer }, align 32
@fc_disc_gpn_ft_parse._entry_ptr.27 = internal global ptr @fc_disc_gpn_ft_parse._entry.25, section ".printk_index", align 4
@fc_disc_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.5, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016host%u: disc: Discovery complete\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fc_disc_done\00", [19 x i8] zeroinitializer }, align 32
@fc_disc_done._entry_ptr = internal global ptr @fc_disc_done._entry, section ".printk_index", align 4
@fc_disc_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.5, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016host%u: disc: Error %d, retries %d/%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fc_disc_error\00", [18 x i8] zeroinitializer }, align 32
@fc_disc_error._entry_ptr = internal global ptr @fc_disc_error._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@fc_disc_recv_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.5, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016host%u: disc: Received an unsupported request, the opcode is (%x)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fc_disc_recv_req\00", [47 x i8] zeroinitializer }, align 32
@fc_disc_recv_req._entry_ptr = internal global ptr @fc_disc_recv_req._entry, section ".printk_index", align 4
@fc_disc_recv_rscn_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.5, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016host%u: disc: Received an RSCN event\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fc_disc_recv_rscn_req\00", [42 x i8] zeroinitializer }, align 32
@fc_disc_recv_rscn_req._entry_ptr = internal global ptr @fc_disc_recv_rscn_req._entry, section ".printk_index", align 4
@fc_disc_recv_rscn_req._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.5, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016host%u: disc: Port address format for port (%6.6x)\0A\00", [42 x i8] zeroinitializer }, align 32
@fc_disc_recv_rscn_req._entry_ptr.38 = internal global ptr @fc_disc_recv_rscn_req._entry.36, section ".printk_index", align 4
@fc_disc_recv_rscn_req._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.5, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016host%u: disc: Address format is (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@fc_disc_recv_rscn_req._entry_ptr.41 = internal global ptr @fc_disc_recv_rscn_req._entry.39, section ".printk_index", align 4
@fc_disc_recv_rscn_req._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.5, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016host%u: disc: RSCN received: rediscovering\0A\00", [50 x i8] zeroinitializer }, align 32
@fc_disc_recv_rscn_req._entry_ptr.44 = internal global ptr @fc_disc_recv_rscn_req._entry.42, section ".printk_index", align 4
@fc_disc_recv_rscn_req._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.35, ptr @.str.5, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\016host%u: disc: RSCN received: not rediscovering. redisc %d state %d in_prog %d\0A\00", [47 x i8] zeroinitializer }, align 32
@fc_disc_recv_rscn_req._entry_ptr.47 = internal global ptr @fc_disc_recv_rscn_req._entry.45, section ".printk_index", align 4
@fc_disc_recv_rscn_req._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.35, ptr @.str.5, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016host%u: disc: Received a bad RSCN frame\0A\00", [53 x i8] zeroinitializer }, align 32
@fc_disc_recv_rscn_req._entry_ptr.50 = internal global ptr @fc_disc_recv_rscn_req._entry.48, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fc_disc_gpn_id_resp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.5, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016host%u: disc: GPN_ID accepted.  WWPN changed. Port-id %6.6x wwpn %16.16llx\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fc_disc_gpn_id_resp\00", [44 x i8] zeroinitializer }, align 32
@fc_disc_gpn_id_resp._entry_ptr = internal global ptr @fc_disc_gpn_id_resp._entry, section ".printk_index", align 4
@fc_disc_gpn_id_resp._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.5, i32 623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016host%u: disc: GPN_ID rejected reason %x exp %x\0A\00", [46 x i8] zeroinitializer }, align 32
@fc_disc_gpn_id_resp._entry_ptr.55 = internal global ptr @fc_disc_gpn_id_resp._entry.53, section ".printk_index", align 4
@fc_disc_gpn_id_resp._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.5, i32 627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016host%u: disc: GPN_ID unexpected response code %x\0A\00", [44 x i8] zeroinitializer }, align 32
@fc_disc_gpn_id_resp._entry_ptr.58 = internal global ptr @fc_disc_gpn_id_resp._entry.56, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 32769, i64 32770]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 16, i64 32769, i64 32770]
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 745, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 746, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 207, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 212, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 508, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 523, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 532, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 540, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 547, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [27 x i8] c"../include/scsi/fc_frame.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 161, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 441, i32 5 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 464, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 261, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 304, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 194, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 87, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 120, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 135, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 155, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 158, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 165, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 604, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 622, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.227 = private constant [32 x i8] c"../drivers/scsi/libfc/fc_disc.c\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 626, i32 3 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__ksymtab_fc_disc_config, ptr @__ksymtab_fc_disc_init, ptr @fc_disc_done._entry, ptr @fc_disc_done._entry_ptr, ptr @fc_disc_error._entry, ptr @fc_disc_error._entry_ptr, ptr @fc_disc_gpn_ft_parse._entry, ptr @fc_disc_gpn_ft_parse._entry.25, ptr @fc_disc_gpn_ft_parse._entry_ptr, ptr @fc_disc_gpn_ft_parse._entry_ptr.27, ptr @fc_disc_gpn_ft_resp._entry, ptr @fc_disc_gpn_ft_resp._entry.10, ptr @fc_disc_gpn_ft_resp._entry.13, ptr @fc_disc_gpn_ft_resp._entry.16, ptr @fc_disc_gpn_ft_resp._entry.19, ptr @fc_disc_gpn_ft_resp._entry_ptr, ptr @fc_disc_gpn_ft_resp._entry_ptr.12, ptr @fc_disc_gpn_ft_resp._entry_ptr.15, ptr @fc_disc_gpn_ft_resp._entry_ptr.18, ptr @fc_disc_gpn_ft_resp._entry_ptr.21, ptr @fc_disc_gpn_id_resp._entry, ptr @fc_disc_gpn_id_resp._entry.53, ptr @fc_disc_gpn_id_resp._entry.56, ptr @fc_disc_gpn_id_resp._entry_ptr, ptr @fc_disc_gpn_id_resp._entry_ptr.55, ptr @fc_disc_gpn_id_resp._entry_ptr.58, ptr @fc_disc_recv_req._entry, ptr @fc_disc_recv_req._entry_ptr, ptr @fc_disc_recv_rscn_req._entry, ptr @fc_disc_recv_rscn_req._entry.36, ptr @fc_disc_recv_rscn_req._entry.39, ptr @fc_disc_recv_rscn_req._entry.42, ptr @fc_disc_recv_rscn_req._entry.45, ptr @fc_disc_recv_rscn_req._entry.48, ptr @fc_disc_recv_rscn_req._entry_ptr, ptr @fc_disc_recv_rscn_req._entry_ptr.38, ptr @fc_disc_recv_rscn_req._entry_ptr.41, ptr @fc_disc_recv_rscn_req._entry_ptr.44, ptr @fc_disc_recv_rscn_req._entry_ptr.47, ptr @fc_disc_recv_rscn_req._entry_ptr.50, ptr @fc_disc_restart._entry, ptr @fc_disc_restart._entry_ptr, ptr @fc_disc_init.__key, ptr @.str, ptr @fc_disc_init.__key.1, ptr @.str.2, ptr @fc_disc_init.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_disc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_disc_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_disc_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_disc_restart._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_disc_gpn_ft_resp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_disc_gpn_ft_resp._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_disc_gpn_ft_resp._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_disc_gpn_ft_resp._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_disc_gpn_ft_resp._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_disc_gpn_ft_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_disc_gpn_ft_parse._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_disc_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_disc_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_disc_recv_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_disc_recv_rscn_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_disc_recv_rscn_req._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_disc_recv_rscn_req._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_disc_recv_rscn_req._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_disc_recv_rscn_req._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_disc_recv_rscn_req._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_disc_gpn_id_resp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_disc_gpn_id_resp._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_disc_gpn_id_resp._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @fc_disc_config(ptr nocapture noundef %lport, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_start = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 9, i32 13
  %0 = ptrtoint ptr %disc_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_start, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %disc_start to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @fc_disc_start, ptr %disc_start, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %disc_stop = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 9, i32 14
  %3 = ptrtoint ptr %disc_stop to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %disc_stop, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %disc_stop to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @fc_disc_stop, ptr %disc_stop, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %disc_stop_final = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 9, i32 15
  %6 = ptrtoint ptr %disc_stop_final to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disc_stop_final, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %if.then11, label %if.end8.if.end14_crit_edge

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %disc_stop_final to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @fc_disc_stop_final, ptr %disc_stop_final, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end8.if.end14_crit_edge
  %disc_recv_req = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 9, i32 12
  %9 = ptrtoint ptr %disc_recv_req to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %disc_recv_req, align 4
  %tobool16.not = icmp eq ptr %10, null
  br i1 %tobool16.not, label %if.then17, label %if.end14.if.end20_crit_edge

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %disc_recv_req to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @fc_disc_recv_req, ptr %disc_recv_req, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end14.if.end20_crit_edge
  %priv22 = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 6, i32 7
  %12 = ptrtoint ptr %priv22 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %priv, ptr %priv22, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fc_disc_start(ptr noundef %disc_callback, ptr noundef %lport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %disc1 = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 6
  %disc_mutex = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 6, i32 8
  tail call void @mutex_lock_nested(ptr noundef %disc_mutex, i32 noundef 0) #8
  %disc_callback2 = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 6, i32 11
  %0 = ptrtoint ptr %disc_callback2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %disc_callback, ptr %disc_callback2, align 4
  tail call fastcc void @fc_disc_restart(ptr noundef %disc1)
  tail call void @mutex_unlock(ptr noundef %disc_mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fc_disc_stop(ptr noundef %lport) #2 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pending = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %pending to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pending, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %disc_work = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 6, i32 10
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %disc_work) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %disc_mutex = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 6, i32 8
  tail call void @mutex_lock_nested(ptr noundef %disc_mutex, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.rhs.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end
  %dep_map.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 6, i32 8, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !113

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 55, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %rports.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 6, i32 6
  %3 = ptrtoint ptr %rports.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn52.i = load ptr, ptr %rports.i, align 4
  %cmp26.not54.i = icmp eq ptr %.pn52.i, %rports.i
  br i1 %cmp26.not54.i, label %if.end.i.fc_disc_stop_rports.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.fc_disc_stop_rports.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc_disc_stop_rports.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn55.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn52.i, %if.end.i.for.body.i_crit_edge ]
  %rdata.056.i = getelementptr i8, ptr %.pn55.i, i32 -264
  %kref.i = getelementptr i8, ptr %.pn55.i, i32 -256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #8
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #8
  %4 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %kref.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %for.body.i
  %6 = phi i32 [ %5, %for.body.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %7 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %6, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #8
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #8
  %8 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %10 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 %9, i32 %add.i.i.i.i.i, ptr elementtype(i32) %kref.i) #8, !srcloc !114
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %9
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !115

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %11 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %12, 1
  %13 = or i32 %add5.i.i.i.i.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !115

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 0) #8
  %14 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %15 = phi i32 [ %12, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %15, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #8
  br i1 %tobool12.i.i.i.i.not.i, label %kref_get_unless_zero.exit.i.for.inc.i_crit_edge, label %if.then31.i

kref_get_unless_zero.exit.i.for.inc.i_crit_edge:  ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then31.i:                                      ; preds = %kref_get_unless_zero.exit.i
  %call32.i = call i32 @fc_rport_logoff(ptr noundef %rdata.056.i) #8
  %call.i.i.i.i.i.i48.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #8
  %16 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #8, !srcloc !117
  %asmresult.i.i.i.i.i.i.i49.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i49.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i49.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i49.i)
  %.not.i.i.i.i50.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i49.i, 0
  br i1 %.not.i.i.i.i50.i, label %if.end5.i.i.i.i.i.for.inc.i_crit_edge, label %if.then10.i.i.i.i51.i, !prof !115

if.end5.i.i.i.i.i.for.inc.i_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then10.i.i.i.i51.i:                            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #8
  br label %for.inc.i

if.then.i.i:                                      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !118
  call void @fc_rport_destroy(ptr noundef %kref.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.i, %if.then10.i.i.i.i51.i, %if.end5.i.i.i.i.i.for.inc.i_crit_edge, %kref_get_unless_zero.exit.i.for.inc.i_crit_edge
  %17 = ptrtoint ptr %.pn55.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn.i = load ptr, ptr %.pn55.i, align 4
  %cmp26.not.i = icmp eq ptr %.pn.i, %rports.i
  br i1 %cmp26.not.i, label %for.inc.i.fc_disc_stop_rports.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.fc_disc_stop_rports.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc_disc_stop_rports.exit

fc_disc_stop_rports.exit:                         ; preds = %for.inc.i.fc_disc_stop_rports.exit_crit_edge, %if.end.i.fc_disc_stop_rports.exit_crit_edge
  call void @mutex_unlock(ptr noundef %disc_mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fc_disc_stop_final(ptr noundef %lport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @fc_disc_stop(ptr noundef %lport)
  tail call void @fc_rport_flush_queue() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fc_disc_recv_req(ptr noundef %lport, ptr noundef %fp) #2 align 64 {
entry:
  %rjt_data.i = alloca %struct.fc_seq_els_data, align 4
  %disc_ports.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %disc1 = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 6
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %0 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %1)
  %cmp.not.i.i = icmp ult i32 %1, 25
  br i1 %cmp.not.i.i, label %entry.do.body_crit_edge, label %fc_frame_payload_get.exit.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

fc_frame_payload_get.exit.i:                      ; preds = %entry
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.fc_frame_header, ptr %3, i32 1
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %fc_frame_payload_get.exit.i.do.body_crit_edge, label %fc_frame_payload_op.exit

fc_frame_payload_get.exit.i.do.body_crit_edge:    ; preds = %fc_frame_payload_get.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

fc_frame_payload_op.exit:                         ; preds = %fc_frame_payload_get.exit.i
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr.i.i, align 1
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 97, i8 %5)
  %cond = icmp eq i8 %5, 97
  br i1 %cond, label %sw.bb, label %fc_frame_payload_op.exit.do.body_crit_edge

fc_frame_payload_op.exit.do.body_crit_edge:       ; preds = %fc_frame_payload_op.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

sw.bb:                                            ; preds = %fc_frame_payload_op.exit
  %disc_mutex = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 6, i32 8
  tail call void @mutex_lock_nested(ptr noundef %disc_mutex, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rjt_data.i) #8
  %6 = getelementptr inbounds %struct.fc_seq_els_data, ptr %rjt_data.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %disc_ports.i) #8
  %7 = getelementptr inbounds %struct.list_head, ptr %disc_ports.i, i32 0, i32 1
  %8 = ptrtoint ptr %disc_ports.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %disc_ports.i, ptr %disc_ports.i, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %disc_ports.i, ptr %7, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %10 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i20 = icmp eq i32 %10, 0
  br i1 %tobool.not.i20, label %sw.bb.if.end.i22_crit_edge, label %land.rhs.i

sw.bb.if.end.i22_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i22

land.rhs.i:                                       ; preds = %sw.bb
  %dep_map.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 6, i32 8, i32 5
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i22_crit_edge, !prof !113

land.rhs.i.if.end.i22_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i22

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 83, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i22

if.end.i22:                                       ; preds = %do.end.i, %land.rhs.i.if.end.i22_crit_edge, %sw.bb.if.end.i22_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %11 = load i32, ptr @fc_debug_logging, align 4
  %and.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool27.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool27.not.i, label %if.end.i22.do.end46.i_crit_edge, label %do.end38.i, !prof !115

if.end.i22.do.end46.i_crit_edge:                  ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end46.i

do.end38.i:                                       ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lport, align 8
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %host_no.i, align 4
  %call41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %15) #11
  br label %do.end46.i

do.end46.i:                                       ; preds = %do.end38.i, %if.end.i22.do.end46.i_crit_edge
  %16 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %17)
  %cmp.not.i.i24 = icmp ult i32 %17, 28
  br i1 %cmp.not.i.i24, label %do.end46.i.do.body212.i_crit_edge, label %fc_frame_payload_get.exit.i26

do.end46.i.do.body212.i_crit_edge:                ; preds = %do.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body212.i

fc_frame_payload_get.exit.i26:                    ; preds = %do.end46.i
  %18 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i291.i = getelementptr %struct.fc_frame_header, ptr %19, i32 1
  %tobool48.not.i = icmp eq ptr %add.ptr.i291.i, null
  br i1 %tobool48.not.i, label %fc_frame_payload_get.exit.i26.do.body212.i_crit_edge, label %if.end50.i

fc_frame_payload_get.exit.i26.do.body212.i_crit_edge: ; preds = %fc_frame_payload_get.exit.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body212.i

if.end50.i:                                       ; preds = %fc_frame_payload_get.exit.i26
  %rscn_page_len.i = getelementptr %struct.fc_frame_header, ptr %19, i32 1, i32 1
  %20 = ptrtoint ptr %rscn_page_len.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rscn_page_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %21)
  %cmp51.not.i = icmp eq i8 %21, 4
  br i1 %cmp51.not.i, label %if.end54.i, label %if.end50.i.do.body212.i_crit_edge

if.end50.i.do.body212.i_crit_edge:                ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body212.i

if.end54.i:                                       ; preds = %if.end50.i
  %rscn_plen.i = getelementptr %struct.fc_frame_header, ptr %19, i32 1, i32 1, i32 1
  %22 = ptrtoint ptr %rscn_plen.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %rscn_plen.i, align 2
  %conv55.i = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %23)
  %cmp56.i = icmp ult i16 %23, 4
  %add.i.i = add nuw nsw i32 %conv55.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %add.i.i)
  %cmp.not.i293.i = icmp ult i32 %17, %add.i.i
  %or.cond = select i1 %cmp56.i, i1 true, i1 %cmp.not.i293.i
  br i1 %or.cond, label %if.end54.i.do.body212.i_crit_edge, label %fc_frame_payload_get.exit301.i

if.end54.i.do.body212.i_crit_edge:                ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body212.i

fc_frame_payload_get.exit301.i:                   ; preds = %if.end54.i
  %24 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i298.i = getelementptr %struct.fc_frame_header, ptr %25, i32 1
  %tobool61.not.i = icmp ne ptr %add.ptr.i298.i, null
  %rem.i = and i32 %conv55.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool64.not.i = icmp eq i32 %rem.i, 0
  %or.cond.i = select i1 %tobool61.not.i, i1 %tobool64.not.i, i1 false
  br i1 %or.cond.i, label %if.end66.i, label %fc_frame_payload_get.exit301.i.do.body212.i_crit_edge

fc_frame_payload_get.exit301.i.do.body212.i_crit_edge: ; preds = %fc_frame_payload_get.exit301.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body212.i

if.end66.i:                                       ; preds = %fc_frame_payload_get.exit301.i
  %len.0330.i = add nsw i32 %conv55.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0330.i)
  %cmp67.not331.i = icmp eq i32 %len.0330.i, 0
  br i1 %cmp67.not331.i, label %if.end66.i.for.end.i_crit_edge, label %for.body.preheader.i

if.end66.i.for.end.i_crit_edge:                   ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end66.i
  %add.ptr.i = getelementptr %struct.fc_frame_header, ptr %25, i32 1, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %len.0335.i = phi i32 [ %len.0.i, %for.inc.i.for.body.i_crit_edge ], [ %len.0330.i, %for.body.preheader.i ]
  %pp.0333.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %for.body.preheader.i ]
  %redisc.0332.i = phi i32 [ %redisc.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %26 = ptrtoint ptr %pp.0333.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pp.0333.i, align 1
  %28 = and i8 %27, 3
  %and74.i = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cond.i = icmp eq i8 %28, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %29 = load i32, ptr @fc_debug_logging, align 4
  %and76.i = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.i)
  %tobool77.not.i = icmp eq i32 %and76.i, 0
  br i1 %cond.i, label %do.body75.i, label %do.body108.i

do.body75.i:                                      ; preds = %for.body.i
  br i1 %tobool77.not.i, label %do.body75.i.do.end99.i_crit_edge, label %do.end88.i, !prof !115

do.body75.i.do.end99.i_crit_edge:                 ; preds = %do.body75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end99.i

do.end88.i:                                       ; preds = %do.body75.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lport, align 8
  %host_no92.i = getelementptr inbounds %struct.Scsi_Host, ptr %31, i32 0, i32 17
  %32 = ptrtoint ptr %host_no92.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %host_no92.i, align 4
  %rscn_fid.i = getelementptr inbounds %struct.fc_els_rscn_page, ptr %pp.0333.i, i32 0, i32 1
  %34 = ptrtoint ptr %rscn_fid.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rscn_fid.i, align 1
  %conv.i.i = zext i8 %35 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 16
  %arrayidx1.i.i = getelementptr %struct.fc_els_rscn_page, ptr %pp.0333.i, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %37 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 8
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr %struct.fc_els_rscn_page, ptr %pp.0333.i, i32 0, i32 1, i32 2
  %38 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %39 to i32
  %or6.i.i = or i32 %or.i.i, %conv5.i.i
  %call94.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %33, i32 noundef %or6.i.i) #11
  br label %do.end99.i

do.end99.i:                                       ; preds = %do.end88.i, %do.body75.i.do.end99.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3520, i32 noundef 60) #12
  %tobool101.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool101.not.i, label %do.end99.i.for.inc.i_crit_edge, label %if.end103.i

do.end99.i.for.inc.i_crit_edge:                   ; preds = %do.end99.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end103.i:                                      ; preds = %do.end99.i
  %41 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %lport, ptr %call7.i.i.i, align 8
  %rscn_fid104.i = getelementptr inbounds %struct.fc_els_rscn_page, ptr %pp.0333.i, i32 0, i32 1
  %42 = ptrtoint ptr %rscn_fid104.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %rscn_fid104.i, align 1
  %conv.i303.i = zext i8 %43 to i32
  %shl.i304.i = shl nuw nsw i32 %conv.i303.i, 16
  %arrayidx1.i305.i = getelementptr %struct.fc_els_rscn_page, ptr %pp.0333.i, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %arrayidx1.i305.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx1.i305.i, align 1
  %conv2.i306.i = zext i8 %45 to i32
  %shl3.i307.i = shl nuw nsw i32 %conv2.i306.i, 8
  %or.i308.i = or i32 %shl3.i307.i, %shl.i304.i
  %arrayidx4.i309.i = getelementptr %struct.fc_els_rscn_page, ptr %pp.0333.i, i32 0, i32 1, i32 2
  %46 = ptrtoint ptr %arrayidx4.i309.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx4.i309.i, align 1
  %conv5.i310.i = zext i8 %47 to i32
  %or6.i311.i = or i32 %or.i308.i, %conv5.i310.i
  %port_id.i = getelementptr inbounds %struct.fc_disc_port, ptr %call7.i.i.i, i32 0, i32 3
  %48 = ptrtoint ptr %port_id.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or6.i311.i, ptr %port_id.i, align 8
  %peers.i = getelementptr inbounds %struct.fc_disc_port, ptr %call7.i.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %7, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %peers.i, ptr noundef %50, ptr noundef nonnull %disc_ports.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end103.i.for.inc.i_crit_edge

if.end103.i.for.inc.i_crit_edge:                  ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i.i.i:                                     ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %peers.i, ptr %7, align 4
  %52 = ptrtoint ptr %peers.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %disc_ports.i, ptr %peers.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.fc_disc_port, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev3.i.i.i, align 8
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %peers.i, ptr %50, align 4
  br label %for.inc.i

do.body108.i:                                     ; preds = %for.body.i
  br i1 %tobool77.not.i, label %do.body108.i.for.inc.i_crit_edge, label %do.end121.i, !prof !115

do.body108.i.for.inc.i_crit_edge:                 ; preds = %do.body108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

do.end121.i:                                      ; preds = %do.body108.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lport, align 8
  %host_no125.i = getelementptr inbounds %struct.Scsi_Host, ptr %56, i32 0, i32 17
  %57 = ptrtoint ptr %host_no125.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %host_no125.i, align 4
  %call126.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %58, i32 noundef %and74.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end121.i, %do.body108.i.for.inc.i_crit_edge, %if.end.i.i.i, %if.end103.i.for.inc.i_crit_edge, %do.end99.i.for.inc.i_crit_edge
  %redisc.1.i = phi i32 [ 1, %do.end99.i.for.inc.i_crit_edge ], [ 1, %do.end121.i ], [ 1, %do.body108.i.for.inc.i_crit_edge ], [ %redisc.0332.i, %if.end103.i.for.inc.i_crit_edge ], [ %redisc.0332.i, %if.end.i.i.i ]
  %incdec.ptr.i = getelementptr %struct.fc_els_rscn_page, ptr %pp.0333.i, i32 1
  %len.0.i = add i32 %len.0335.i, -4
  %cmp67.not.i = icmp eq i32 %len.0.i, 0
  br i1 %cmp67.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end66.i.for.end.i_crit_edge
  %redisc.0.lcssa.i = phi i32 [ 0, %if.end66.i.for.end.i_crit_edge ], [ %redisc.1.i, %for.inc.i.for.end.i_crit_edge ]
  call void @fc_seq_els_rsp_send(ptr noundef %fp, i32 noundef 2, ptr noundef null) #8
  %59 = ptrtoint ptr %disc_ports.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %disc_ports.i, align 4
  %cmp143.not338.i = icmp eq ptr %60, %disc_ports.i
  br i1 %cmp143.not338.i, label %for.end.i.for.end159.i_crit_edge, label %for.body147.lr.ph.i

for.end.i.for.end159.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end159.i

for.body147.lr.ph.i:                              ; preds = %for.end.i
  %dep_map.i.i = getelementptr %struct.fc_lport, ptr %lport, i32 0, i32 6, i32 8, i32 5
  %elsct_send.i.i.i = getelementptr %struct.fc_lport, ptr %lport, i32 0, i32 9, i32 1
  %r_a_tov.i.i.i = getelementptr %struct.fc_lport, ptr %lport, i32 0, i32 23
  br label %for.body147.i

for.body147.i:                                    ; preds = %if.end152.i.for.body147.i_crit_edge, %for.body147.lr.ph.i
  %redisc.2340.i = phi i32 [ %redisc.0.lcssa.i, %for.body147.lr.ph.i ], [ %redisc.3.i, %if.end152.i.for.body147.i_crit_edge ]
  %.pn.in339.i = phi ptr [ %60, %for.body147.lr.ph.i ], [ %.pn342.i, %if.end152.i.for.body147.i_crit_edge ]
  %dp.0341.i = getelementptr i8, ptr %.pn.in339.i, i32 -4
  %61 = ptrtoint ptr %.pn.in339.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn342.i = load ptr, ptr %.pn.in339.i, align 4
  %call.i.i313.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in339.i) #8
  br i1 %call.i.i313.i, label %if.end.i.i314.i, label %for.body147.i.list_del.exit.i_crit_edge

for.body147.i.list_del.exit.i_crit_edge:          ; preds = %for.body147.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i314.i:                                  ; preds = %for.body147.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in339.i, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i.i, align 4
  %64 = ptrtoint ptr %.pn.in339.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %.pn.in339.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev1.i.i.i.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %65, ptr %63, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i314.i, %for.body147.i.list_del.exit.i_crit_edge
  %68 = ptrtoint ptr %.pn.in339.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in339.i, align 4
  %prev.i315.i = getelementptr inbounds %struct.list_head, ptr %.pn.in339.i, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i315.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i315.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %redisc.2340.i)
  %tobool149.not.i = icmp eq i32 %redisc.2340.i, 0
  br i1 %tobool149.not.i, label %if.then150.i, label %list_del.exit.i.if.end152.i_crit_edge

list_del.exit.i.if.end152.i_crit_edge:            ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end152.i

if.then150.i:                                     ; preds = %list_del.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %70 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i.i = icmp eq i32 %70, 0
  br i1 %tobool.not.i.i, label %if.then150.i.if.end.i.i_crit_edge, label %land.rhs.i.i

if.then150.i.if.end.i.i_crit_edge:                ; preds = %if.then150.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %if.then150.i
  %call.i.i316.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i316.i)
  %cmp.not.i317.i = icmp eq i32 %call.i.i316.i, 0
  br i1 %cmp.not.i317.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !113

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 673, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %if.then150.i.if.end.i.i_crit_edge
  %port_id.i.i = getelementptr i8, ptr %.pn.in339.i, i32 52
  %71 = ptrtoint ptr %port_id.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %port_id.i.i, align 4
  %call24.i.i = call ptr @fc_rport_create(ptr noundef %lport, i32 noundef %72) #8
  %tobool25.not.i.i = icmp eq ptr %call24.i.i, null
  br i1 %tobool25.not.i.i, label %if.end.i.i.if.end152.i_crit_edge, label %if.end27.i.i

if.end.i.i.if.end152.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end152.i

if.end27.i.i:                                     ; preds = %if.end.i.i
  %disc_id.i.i = getelementptr inbounds %struct.fc_rport_priv, ptr %call24.i.i, i32 0, i32 7
  %73 = ptrtoint ptr %disc_id.i.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %disc_id.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %74 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i.i.i = icmp eq i32 %74, 0
  br i1 %tobool.not.i.i.i, label %if.end27.i.i.if.end.i.i319.i_crit_edge, label %land.rhs.i.i.i

if.end27.i.i.if.end.i.i319.i_crit_edge:           ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i319.i

land.rhs.i.i.i:                                   ; preds = %if.end27.i.i
  %call.i.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i318.i, label %land.rhs.i.i.i.if.end.i.i319.i_crit_edge, !prof !113

land.rhs.i.i.i.if.end.i.i319.i_crit_edge:         ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i319.i

do.end.i.i318.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 651, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i319.i

if.end.i.i319.i:                                  ; preds = %do.end.i.i318.i, %land.rhs.i.i.i.if.end.i.i319.i_crit_edge, %if.end27.i.i.if.end.i.i319.i_crit_edge
  %call2.i.i.i.i = call ptr @_fc_frame_alloc(i32 noundef 20) #8
  %tobool25.not.i.i.i = icmp eq ptr %call2.i.i.i.i, null
  br i1 %tobool25.not.i.i.i, label %if.end.i.i319.i.if.end152.i_crit_edge, label %if.end27.i.i.i

if.end.i.i319.i.if.end152.i_crit_edge:            ; preds = %if.end.i.i319.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end152.i

if.end27.i.i.i:                                   ; preds = %if.end.i.i319.i
  %75 = ptrtoint ptr %elsct_send.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %elsct_send.i.i.i, align 4
  %port_id.i.i.i = getelementptr inbounds %struct.fc_rport_priv, ptr %call24.i.i, i32 0, i32 4, i32 2
  %77 = ptrtoint ptr %port_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %port_id.i.i.i, align 8
  %79 = ptrtoint ptr %r_a_tov.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %r_a_tov.i.i.i, align 8
  %mul.i.i.i = mul i32 %80, 3
  %call28.i.i.i = call ptr %76(ptr noundef %lport, i32 noundef %78, ptr noundef nonnull %call2.i.i.i.i, i32 noundef 274, ptr noundef nonnull @fc_disc_gpn_id_resp, ptr noundef nonnull %call24.i.i, i32 noundef %mul.i.i.i) #8
  %tobool29.not.i.i.i = icmp eq ptr %call28.i.i.i, null
  br i1 %tobool29.not.i.i.i, label %if.end27.i.i.i.if.end152.i_crit_edge, label %if.end31.i.i.i

if.end27.i.i.i.if.end152.i_crit_edge:             ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end152.i

if.end31.i.i.i:                                   ; preds = %if.end27.i.i.i
  %kref.i.i.i = getelementptr inbounds %struct.fc_rport_priv, ptr %call24.i.i, i32 0, i32 2
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %kref.i.i.i, i32 1, i32 3, i32 1) #8
  %81 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i.i, ptr %kref.i.i.i, i32 1, ptr elementtype(i32) %kref.i.i.i) #8, !srcloc !119
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %81, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.end31.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !113

if.end31.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end31.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.end31.i.i.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %82 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %82)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %82, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.if.end152.i_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !115

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.if.end152.i_crit_edge:      ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end152.i

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.end31.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.end31.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %kref.i.i.i, i32 noundef %.sink.i.i.i.i.i.i.i) #8
  br label %if.end152.i

if.end152.i:                                      ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.if.end152.i_crit_edge, %if.end27.i.i.i.if.end152.i_crit_edge, %if.end.i.i319.i.if.end152.i_crit_edge, %if.end.i.i.if.end152.i_crit_edge, %list_del.exit.i.if.end152.i_crit_edge
  %redisc.3.i = phi i32 [ %redisc.2340.i, %list_del.exit.i.if.end152.i_crit_edge ], [ -12, %if.end.i.i.if.end152.i_crit_edge ], [ -12, %if.end.i.i319.i.if.end152.i_crit_edge ], [ -12, %if.end27.i.i.i.if.end152.i_crit_edge ], [ 0, %if.else.i.i.i.i.i.i.i.if.end152.i_crit_edge ], [ 0, %if.end15.sink.split.i.i.i.i.i.i.i ]
  call void @kfree(ptr noundef %dp.0341.i) #8
  %cmp143.not.i = icmp eq ptr %.pn342.i, %disc_ports.i
  br i1 %cmp143.not.i, label %if.end152.i.for.end159.i_crit_edge, label %if.end152.i.for.body147.i_crit_edge

if.end152.i.for.body147.i_crit_edge:              ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body147.i

if.end152.i.for.end159.i_crit_edge:               ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end159.i

for.end159.i:                                     ; preds = %if.end152.i.for.end159.i_crit_edge, %for.end.i.for.end159.i_crit_edge
  %redisc.2.lcssa.i = phi i32 [ %redisc.0.lcssa.i, %for.end.i.for.end159.i_crit_edge ], [ %redisc.3.i, %if.end152.i.for.end159.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %redisc.2.lcssa.i)
  %tobool160.not.i = icmp eq i32 %redisc.2.lcssa.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %83 = load i32, ptr @fc_debug_logging, align 4
  %and187.i = and i32 %83, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187.i)
  %tobool188.not.i = icmp eq i32 %and187.i, 0
  br i1 %tobool160.not.i, label %do.body186.i, label %do.body162.i

do.body162.i:                                     ; preds = %for.end159.i
  br i1 %tobool188.not.i, label %do.body162.i.do.end185.i_crit_edge, label %do.end175.i, !prof !115

do.body162.i.do.end185.i_crit_edge:               ; preds = %do.body162.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end185.i

do.end175.i:                                      ; preds = %do.body162.i
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %lport, align 8
  %host_no179.i = getelementptr inbounds %struct.Scsi_Host, ptr %85, i32 0, i32 17
  %86 = ptrtoint ptr %host_no179.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %host_no179.i, align 4
  %call180.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %87) #11
  br label %do.end185.i

do.end185.i:                                      ; preds = %do.end175.i, %do.body162.i.do.end185.i_crit_edge
  call fastcc void @fc_disc_restart(ptr noundef %disc1) #8
  br label %fc_disc_recv_rscn_req.exit

do.body186.i:                                     ; preds = %for.end159.i
  br i1 %tobool188.not.i, label %do.body186.i.fc_disc_recv_rscn_req.exit_crit_edge, label %do.end199.i, !prof !115

do.body186.i.fc_disc_recv_rscn_req.exit_crit_edge: ; preds = %do.body186.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc_disc_recv_rscn_req.exit

do.end199.i:                                      ; preds = %do.body186.i
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %lport, align 8
  %host_no203.i = getelementptr inbounds %struct.Scsi_Host, ptr %89, i32 0, i32 17
  %90 = ptrtoint ptr %host_no203.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %host_no203.i, align 4
  %state.i = getelementptr %struct.fc_lport, ptr %lport, i32 0, i32 13
  %92 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %state.i, align 8
  %pending.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 6, i32 1
  %94 = ptrtoint ptr %pending.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %pending.i, align 1
  %conv204.i = zext i8 %95 to i32
  %call205.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %91, i32 noundef 0, i32 noundef %93, i32 noundef %conv204.i) #11
  br label %fc_disc_recv_rscn_req.exit

do.body212.i:                                     ; preds = %fc_frame_payload_get.exit301.i.do.body212.i_crit_edge, %if.end54.i.do.body212.i_crit_edge, %if.end50.i.do.body212.i_crit_edge, %fc_frame_payload_get.exit.i26.do.body212.i_crit_edge, %do.end46.i.do.body212.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %96 = load i32, ptr @fc_debug_logging, align 4
  %and213.i = and i32 %96, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and213.i)
  %tobool214.not.i = icmp eq i32 %and213.i, 0
  br i1 %tobool214.not.i, label %do.body212.i.do.end235.i_crit_edge, label %do.end225.i, !prof !115

do.body212.i.do.end235.i_crit_edge:               ; preds = %do.body212.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end235.i

do.end225.i:                                      ; preds = %do.body212.i
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %lport, align 8
  %host_no229.i = getelementptr inbounds %struct.Scsi_Host, ptr %98, i32 0, i32 17
  %99 = ptrtoint ptr %host_no229.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %host_no229.i, align 4
  %call230.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %100) #11
  br label %do.end235.i

do.end235.i:                                      ; preds = %do.end225.i, %do.body212.i.do.end235.i_crit_edge
  %101 = ptrtoint ptr %rjt_data.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 3, ptr %rjt_data.i, align 4
  %102 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %6, align 4
  call void @fc_seq_els_rsp_send(ptr noundef %fp, i32 noundef 1, ptr noundef nonnull %rjt_data.i) #8
  br label %fc_disc_recv_rscn_req.exit

fc_disc_recv_rscn_req.exit:                       ; preds = %do.end235.i, %do.end199.i, %do.body186.i.fc_disc_recv_rscn_req.exit_crit_edge, %do.end185.i
  call void @kfree_skb_reason(ptr noundef %fp, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %disc_ports.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rjt_data.i) #8
  call void @mutex_unlock(ptr noundef %disc_mutex) #8
  br label %sw.epilog

do.body:                                          ; preds = %fc_frame_payload_op.exit.do.body_crit_edge, %fc_frame_payload_get.exit.i.do.body_crit_edge, %entry.do.body_crit_edge
  %conv31 = phi i32 [ %conv, %fc_frame_payload_op.exit.do.body_crit_edge ], [ 0, %fc_frame_payload_get.exit.i.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %103 = load i32, ptr @fc_debug_logging, align 4
  %and = and i32 %103, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end13_crit_edge, label %do.end, !prof !115

do.body.do.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %lport, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %105, i32 0, i32 17
  %106 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %host_no, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %107, i32 noundef %conv31) #11
  br label %do.end13

do.end13:                                         ; preds = %do.end, %do.body.do.end13_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %fp, i32 noundef 0) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end13, %fc_disc_recv_rscn_req.exit
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fc_disc_init(ptr noundef %lport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_work = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 6, i32 10
  tail call void @__init_work(ptr noundef %disc_work, i32 noundef 0) #8
  %0 = ptrtoint ptr %disc_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %disc_work, align 8
  %lockdep_map = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 6, i32 10, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @fc_disc_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry9 = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 6, i32 10, i32 0, i32 1
  %1 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 6, i32 10, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry9, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 6, i32 10, i32 0, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @fc_disc_timeout, ptr %func, align 4
  %timer = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 6, i32 10, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @fc_disc_init.__key.1) #8
  %disc_mutex = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 6, i32 8
  tail call void @__mutex_init(ptr noundef %disc_mutex, ptr noundef nonnull @.str.4, ptr noundef nonnull @fc_disc_init.__key.3) #8
  %rports = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 6, i32 6
  %4 = ptrtoint ptr %rports to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %rports, ptr %rports, align 4
  %prev.i28 = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 6, i32 6, i32 1
  %5 = ptrtoint ptr %prev.i28 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rports, ptr %prev.i28, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fc_disc_timeout(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -136
  %disc_mutex = getelementptr i8, ptr %work, i32 -112
  tail call void @mutex_lock_nested(ptr noundef %disc_mutex, i32 noundef 0) #8
  tail call fastcc void @fc_disc_gpn_ft_req(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %disc_mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fc_disc_restart(ptr noundef %disc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.fc_disc, ptr %disc, i32 0, i32 8, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !113

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 207, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %disc_callback = getelementptr inbounds %struct.fc_disc, ptr %disc, i32 0, i32 11
  %1 = ptrtoint ptr %disc_callback to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %disc_callback, align 4
  %tobool24.not = icmp eq ptr %2, null
  br i1 %tobool24.not, label %if.end.return_crit_edge, label %do.body27

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.body27:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %3 = load i32, ptr @fc_debug_logging, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %do.body27.do.end47_crit_edge, label %do.end39, !prof !115

do.body27.do.end47_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47

do.end39:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %disc, i32 -32
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %host_no, align 4
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %7) #11
  br label %do.end47

do.end47:                                         ; preds = %do.end39, %do.body27.do.end47_crit_edge
  %requested = getelementptr inbounds %struct.fc_disc, ptr %disc, i32 0, i32 2
  %8 = ptrtoint ptr %requested to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %requested, align 2
  %pending = getelementptr inbounds %struct.fc_disc, ptr %disc, i32 0, i32 1
  %9 = ptrtoint ptr %pending to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pending, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool48.not = icmp eq i8 %10, 0
  br i1 %tobool48.not, label %if.end50, label %do.end47.return_crit_edge

do.end47.return_crit_edge:                        ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end50:                                         ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #10
  %disc_id = getelementptr inbounds %struct.fc_disc, ptr %disc, i32 0, i32 5
  %11 = ptrtoint ptr %disc_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %disc_id, align 8
  %add = add i16 %12, 2
  %or = or i16 %add, 1
  store i16 %or, ptr %disc_id, align 8
  %13 = ptrtoint ptr %disc to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %disc, align 8
  tail call fastcc void @fc_disc_gpn_ft_req(ptr noundef %disc)
  br label %return

return:                                           ; preds = %if.end50, %do.end47.return_crit_edge, %if.end.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fc_disc_gpn_ft_req(ptr noundef %disc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %disc, i32 -32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.fc_disc, ptr %disc, i32 0, i32 8, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !113

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 347, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %state.i = getelementptr i8, ptr %disc, i32 320
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %2)
  %cmp.i.not = icmp eq i32 %2, 14
  br i1 %cmp.i.not, label %if.end.if.end51_crit_edge, label %do.end45, !prof !115

if.end.if.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

do.end45:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 349, i32 noundef 9, ptr noundef null) #8
  br label %if.end51

if.end51:                                         ; preds = %do.end45, %if.end.if.end51_crit_edge
  %pending = getelementptr inbounds %struct.fc_disc, ptr %disc, i32 0, i32 1
  %3 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %pending, align 1
  %requested = getelementptr inbounds %struct.fc_disc, ptr %disc, i32 0, i32 2
  %4 = ptrtoint ptr %requested to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %requested, align 2
  %buf_len = getelementptr inbounds %struct.fc_disc, ptr %disc, i32 0, i32 4
  %5 = ptrtoint ptr %buf_len to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %buf_len, align 2
  %seq_count = getelementptr inbounds %struct.fc_disc, ptr %disc, i32 0, i32 3
  %6 = ptrtoint ptr %seq_count to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %seq_count, align 4
  %call2.i = tail call ptr @_fc_frame_alloc(i32 noundef 20) #8
  %tobool60.not = icmp eq ptr %call2.i, null
  br i1 %tobool60.not, label %if.end51.err_crit_edge, label %if.end62

if.end51.err_crit_edge:                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end62:                                         ; preds = %if.end51
  %elsct_send = getelementptr i8, ptr %disc, i32 256
  %7 = ptrtoint ptr %elsct_send to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %elsct_send, align 4
  %r_a_tov = getelementptr i8, ptr %disc, i32 616
  %9 = ptrtoint ptr %r_a_tov to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %r_a_tov, align 8
  %mul = mul i32 %10, 3
  %call63 = tail call ptr %8(ptr noundef %add.ptr.i, i32 noundef 0, ptr noundef nonnull %call2.i, i32 noundef 370, ptr noundef nonnull @fc_disc_gpn_ft_resp, ptr noundef %disc, i32 noundef %mul) #8
  %tobool64.not = icmp eq ptr %call63, null
  br i1 %tobool64.not, label %if.end62.err_crit_edge, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end62.err_crit_edge:                           ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

err:                                              ; preds = %if.end62.err_crit_edge, %if.end51.err_crit_edge
  tail call fastcc void @fc_disc_error(ptr noundef %disc, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end62.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fc_disc_gpn_ft_resp(ptr nocapture noundef readnone %sp, ptr noundef %fp, ptr noundef %disc_arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_mutex = getelementptr inbounds %struct.fc_disc, ptr %disc_arg, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %disc_mutex, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %0 = load i32, ptr @fc_debug_logging, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end, !prof !115

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %disc_arg, i32 -32
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %host_no, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %4) #11
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %cmp.i = icmp ugt ptr %fp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @fc_disc_error(ptr noundef %disc_arg, ptr noundef nonnull %fp)
  br label %cleanup

if.end13:                                         ; preds = %do.end9
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 7
  %5 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i.not, label %if.end13.if.end39_crit_edge, label %do.end33, !prof !115

if.end13.if.end39_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

do.end33:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 516, i32 noundef 9, ptr noundef null) #8
  br label %if.end39

if.end39:                                         ; preds = %do.end33, %if.end13.if.end39_crit_edge
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %8)
  %cmp.i279 = icmp ult i32 %8, 24
  br i1 %cmp.i279, label %do.end.i, label %if.end39.fc_frame_header_get.exit_crit_edge, !prof !113

if.end39.fc_frame_header_get.exit_crit_edge:      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %fc_frame_header_get.exit

do.end.i:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 161, i32 noundef 9, ptr noundef null) #8
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load i32, ptr %len.i, align 4
  br label %fc_frame_header_get.exit

fc_frame_header_get.exit:                         ; preds = %do.end.i, %if.end39.fc_frame_header_get.exit_crit_edge
  %10 = phi i32 [ %8, %if.end39.fc_frame_header_get.exit_crit_edge ], [ %.pr, %do.end.i ]
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %11 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i, align 4
  %sub = add i32 %10, -24
  %fh_seq_cnt = getelementptr inbounds %struct.fc_frame_header, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %fh_seq_cnt to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %fh_seq_cnt, align 2
  %conv = zext i16 %14 to i32
  %fr_sof = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 18
  %15 = ptrtoint ptr %fr_sof to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fr_sof, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %16)
  %cmp = icmp eq i8 %16, 46
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp52 = icmp eq i16 %14, 0
  %or.cond = select i1 %cmp, i1 %cmp52, i1 false
  br i1 %or.cond, label %land.lhs.true54, label %if.else167

land.lhs.true54:                                  ; preds = %fc_frame_header_get.exit
  %seq_count = getelementptr inbounds %struct.fc_disc, ptr %disc_arg, i32 0, i32 3
  %17 = ptrtoint ptr %seq_count to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %seq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp56 = icmp eq i16 %18, 0
  br i1 %cmp56, label %if.then58, label %land.lhs.true54.do.body184_crit_edge

land.lhs.true54.do.body184_crit_edge:             ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body184

if.then58:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %10)
  %cmp.not.i = icmp ult i32 %10, 40
  br i1 %cmp.not.i, label %if.then58.do.body62_crit_edge, label %fc_frame_payload_get.exit

if.then58.do.body62_crit_edge:                    ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body62

fc_frame_payload_get.exit:                        ; preds = %if.then58
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i280 = getelementptr %struct.fc_frame_header, ptr %20, i32 1
  %tobool60.not = icmp eq ptr %add.ptr.i280, null
  br i1 %tobool60.not, label %fc_frame_payload_get.exit.do.body62_crit_edge, label %if.else

fc_frame_payload_get.exit.do.body62_crit_edge:    ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body62

do.body62:                                        ; preds = %fc_frame_payload_get.exit.do.body62_crit_edge, %if.then58.do.body62_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %21 = load i32, ptr @fc_debug_logging, align 4
  %and63 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %do.body62.if.then227_crit_edge, label %do.end75, !prof !115

do.body62.if.then227_crit_edge:                   ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then227

do.end75:                                         ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i281 = getelementptr i8, ptr %disc_arg, i32 -32
  %22 = ptrtoint ptr %add.ptr.i281 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i281, align 8
  %host_no79 = getelementptr inbounds %struct.Scsi_Host, ptr %23, i32 0, i32 17
  %24 = ptrtoint ptr %host_no79 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %host_no79, align 4
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len.i, align 4
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %25, i32 noundef %27) #11
  br label %if.then227

if.else:                                          ; preds = %fc_frame_payload_get.exit
  %ct_cmd = getelementptr %struct.fc_frame_header, ptr %20, i32 1, i32 4
  %28 = ptrtoint ptr %ct_cmd to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %ct_cmd, align 2
  %30 = zext i16 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i16 %29, label %do.body138 [
    i16 -32766, label %if.then91
    i16 -32767, label %do.body100
  ]

if.then91:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %sub92 = add i32 %10, -40
  %add.ptr = getelementptr %struct.fc_frame_header, ptr %20, i32 1, i32 9
  %call93 = tail call fastcc i32 @fc_disc_gpn_ft_parse(ptr noundef %disc_arg, ptr noundef %add.ptr, i32 noundef %sub92)
  br label %if.end220

do.body100:                                       ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %31 = load i32, ptr @fc_debug_logging, align 4
  %and101 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %do.body100.do.end125_crit_edge, label %do.end113, !prof !115

do.body100.do.end125_crit_edge:                   ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end125

do.end113:                                        ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i282 = getelementptr i8, ptr %disc_arg, i32 -32
  %32 = ptrtoint ptr %add.ptr.i282 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i282, align 8
  %host_no117 = getelementptr inbounds %struct.Scsi_Host, ptr %33, i32 0, i32 17
  %34 = ptrtoint ptr %host_no117 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %host_no117, align 4
  %ct_reason = getelementptr %struct.fc_frame_header, ptr %20, i32 1, i32 7
  %36 = ptrtoint ptr %ct_reason to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ct_reason, align 1
  %conv118 = zext i8 %37 to i32
  %ct_explan = getelementptr %struct.fc_frame_header, ptr %20, i32 1, i32 8
  %38 = ptrtoint ptr %ct_explan to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ct_explan, align 2
  %conv119 = zext i8 %39 to i32
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %35, i32 noundef %conv118, i32 noundef %conv119) #11
  br label %do.end125

do.end125:                                        ; preds = %do.end113, %do.body100.do.end125_crit_edge
  %ct_reason126 = getelementptr %struct.fc_frame_header, ptr %20, i32 1, i32 7
  %40 = ptrtoint ptr %ct_reason126 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ct_reason126, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %41)
  %cmp128 = icmp eq i8 %41, 9
  br i1 %cmp128, label %land.lhs.true130, label %do.end125.if.then227_crit_edge

do.end125.if.then227_crit_edge:                   ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then227

land.lhs.true130:                                 ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #10
  %ct_explan131 = getelementptr %struct.fc_frame_header, ptr %20, i32 1, i32 8
  %42 = ptrtoint ptr %ct_explan131 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ct_explan131, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %43)
  %cmp133 = icmp eq i8 %43, 7
  %spec.select = select i1 %cmp133, i32 1, i32 2
  br label %if.then227

do.body138:                                       ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %44 = load i32, ptr @fc_debug_logging, align 4
  %and139 = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %do.body138.if.then227_crit_edge, label %do.end151, !prof !115

do.body138.if.then227_crit_edge:                  ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then227

do.end151:                                        ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i283 = getelementptr i8, ptr %disc_arg, i32 -32
  %45 = ptrtoint ptr %add.ptr.i283 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr.i283, align 8
  %host_no155 = getelementptr inbounds %struct.Scsi_Host, ptr %46, i32 0, i32 17
  %47 = ptrtoint ptr %host_no155 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %host_no155, align 4
  %conv157 = zext i16 %29 to i32
  %call158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %48, i32 noundef %conv157) #11
  br label %if.then227

if.else167:                                       ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 54, i8 %16)
  %cmp173 = icmp eq i8 %16, 54
  br i1 %cmp173, label %land.lhs.true175, label %if.else167.do.body184_crit_edge

if.else167.do.body184_crit_edge:                  ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body184

land.lhs.true175:                                 ; preds = %if.else167
  %seq_count176 = getelementptr inbounds %struct.fc_disc, ptr %disc_arg, i32 0, i32 3
  %49 = ptrtoint ptr %seq_count176 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %seq_count176, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %50)
  %cmp178 = icmp eq i16 %14, %50
  br i1 %cmp178, label %if.then180, label %land.lhs.true175.do.body184_crit_edge

land.lhs.true175.do.body184_crit_edge:            ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body184

if.then180:                                       ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr181 = getelementptr %struct.fc_frame_header, ptr %12, i32 1
  %call182 = tail call fastcc i32 @fc_disc_gpn_ft_parse(ptr noundef %disc_arg, ptr noundef %add.ptr181, i32 noundef %sub)
  br label %if.end220

do.body184:                                       ; preds = %land.lhs.true175.do.body184_crit_edge, %if.else167.do.body184_crit_edge, %land.lhs.true54.do.body184_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %51 = load i32, ptr @fc_debug_logging, align 4
  %and185 = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %do.body184.if.then227_crit_edge, label %do.end197, !prof !115

do.body184.if.then227_crit_edge:                  ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then227

do.end197:                                        ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i284 = getelementptr i8, ptr %disc_arg, i32 -32
  %52 = ptrtoint ptr %add.ptr.i284 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr.i284, align 8
  %host_no201 = getelementptr inbounds %struct.Scsi_Host, ptr %53, i32 0, i32 17
  %54 = ptrtoint ptr %host_no201 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %host_no201, align 4
  %seq_count202 = getelementptr inbounds %struct.fc_disc, ptr %disc_arg, i32 0, i32 3
  %56 = ptrtoint ptr %seq_count202 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %seq_count202, align 4
  %conv203 = zext i16 %57 to i32
  %conv208 = zext i8 %16 to i32
  %fr_eof = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 19
  %58 = ptrtoint ptr %fr_eof to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %fr_eof, align 1
  %conv212 = zext i8 %59 to i32
  %call213 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %55, i32 noundef %conv, i32 noundef %conv203, i32 noundef %conv208, i32 noundef %conv212) #11
  br label %if.then227

if.end220:                                        ; preds = %if.then180, %if.then91
  %error.0 = phi i32 [ %call93, %if.then91 ], [ %call182, %if.then180 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool221.not = icmp eq i32 %error.0, 0
  br i1 %tobool221.not, label %if.end220.if.end229_crit_edge, label %if.then222

if.end220.if.end229_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end229

if.then222:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #10
  %60 = inttoptr i32 %error.0 to ptr
  tail call fastcc void @fc_disc_error(ptr noundef %disc_arg, ptr noundef nonnull %60)
  br label %if.end229

if.then227:                                       ; preds = %do.end197, %do.body184.if.then227_crit_edge, %do.end151, %do.body138.if.then227_crit_edge, %land.lhs.true130, %do.end125.if.then227_crit_edge, %do.end75, %do.body62.if.then227_crit_edge
  %event.0.ph = phi i32 [ 2, %do.body184.if.then227_crit_edge ], [ 2, %do.end197 ], [ 2, %do.body138.if.then227_crit_edge ], [ 2, %do.end151 ], [ %spec.select, %land.lhs.true130 ], [ 2, %do.body62.if.then227_crit_edge ], [ 2, %do.end75 ], [ 2, %do.end125.if.then227_crit_edge ]
  tail call fastcc void @fc_disc_done(ptr noundef %disc_arg, i32 noundef %event.0.ph)
  br label %if.end229

if.end229:                                        ; preds = %if.then227, %if.then222, %if.end220.if.end229_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %fp, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end229, %if.then11
  tail call void @mutex_unlock(ptr noundef %disc_mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fc_disc_error(ptr noundef %disc, ptr noundef %fp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %0 = load i32, ptr @fc_debug_logging, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.end, !prof !115

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %disc, i32 -32
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %host_no, align 4
  %cmp.i.i = icmp ugt ptr %fp, inttoptr (i32 -4096 to ptr)
  %5 = ptrtoint ptr %fp to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %5, i32 0
  %6 = ptrtoint ptr %disc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %disc, align 8
  %conv = zext i8 %7 to i32
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %4, i32 noundef %spec.select.i, i32 noundef %conv, i32 noundef 3) #11
  br label %do.end11

do.end11:                                         ; preds = %do.end, %entry.do.end11_crit_edge
  %tobool12.not = icmp eq ptr %fp, null
  br i1 %tobool12.not, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end11
  %magicptr = ptrtoint ptr %fp to i32
  %8 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %magicptr, label %lor.lhs.false.if.end40_crit_edge [
    i32 -1, label %if.then15.thread
    i32 -2, label %if.then38
  ]

lor.lhs.false.if.end40_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then15:                                        ; preds = %do.end11
  %9 = ptrtoint ptr %disc to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %disc, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp18 = icmp ult i8 %10, 3
  br i1 %cmp18, label %if.then15.if.end29_crit_edge, label %if.then15.if.else32_crit_edge

if.then15.if.else32_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else32

if.then15.if.end29_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then15.thread:                                 ; preds = %lor.lhs.false
  %11 = ptrtoint ptr %disc to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %disc, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp1856 = icmp ult i8 %12, 3
  br i1 %cmp1856, label %if.else.i, label %if.then15.thread.if.else32_crit_edge

if.then15.thread.if.else32_crit_edge:             ; preds = %if.then15.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else32

if.else.i:                                        ; preds = %if.then15.thread
  call void @__sanitizer_cov_trace_pc() #10
  %e_d_tov = getelementptr i8, ptr %disc, i32 612
  %13 = ptrtoint ptr %e_d_tov to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %e_d_tov, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %14) #8
  %15 = ptrtoint ptr %disc to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %disc, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool26.not = icmp eq i8 %16, 0
  %div54 = lshr i32 %call2.i, 2
  %spec.select = select i1 %tobool26.not, i32 %div54, i32 %call2.i
  br label %if.end29

if.end29:                                         ; preds = %if.else.i, %if.then15.if.end29_crit_edge
  %delay.0 = phi i32 [ %spec.select, %if.else.i ], [ 50, %if.then15.if.end29_crit_edge ]
  %17 = ptrtoint ptr %disc to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %disc, align 8
  %inc = add i8 %18, 1
  store i8 %inc, ptr %disc, align 8
  %disc_work = getelementptr inbounds %struct.fc_disc, ptr %disc, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %19 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %disc_work, i32 noundef %delay.0) #8
  br label %if.end40

if.else32:                                        ; preds = %if.then15.thread.if.else32_crit_edge, %if.then15.if.else32_crit_edge
  tail call fastcc void @fc_disc_done(ptr noundef %disc, i32 noundef 2)
  br label %if.end40

if.then38:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %pending = getelementptr inbounds %struct.fc_disc, ptr %disc, i32 0, i32 1
  %20 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %pending, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.else32, %if.end29, %lor.lhs.false.if.end40_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_fc_frame_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fc_disc_gpn_ft_parse(ptr noundef %disc, ptr noundef readonly %buf, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %disc, i32 -32
  %seq_count = getelementptr inbounds %struct.fc_disc, ptr %disc, i32 0, i32 3
  %0 = ptrtoint ptr %seq_count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %seq_count, align 4
  %inc = add i16 %1, 1
  store i16 %inc, ptr %seq_count, align 4
  %buf_len = getelementptr inbounds %struct.fc_disc, ptr %disc, i32 0, i32 4
  %2 = ptrtoint ptr %buf_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf_len, align 2
  %conv = zext i8 %3 to i32
  store i8 0, ptr %buf_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end100_crit_edge, label %if.then

entry.if.end100_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %3)
  %cmp = icmp ugt i8 %3, 15
  br i1 %cmp, label %if.end, label %if.then.if.end47_crit_edge, !prof !113

if.then.if.end47_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.end:                                           ; preds = %if.then
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 402, i32 noundef 9, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %3)
  %cmp24 = icmp eq i8 %3, 16
  br i1 %cmp24, label %do.end41, label %if.end.if.end47_crit_edge, !prof !113

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

do.end41:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 404, i32 noundef 9, ptr noundef null) #8
  br label %if.end47

if.end47:                                         ; preds = %do.end41, %if.end.if.end47_crit_edge, %if.then.if.end47_crit_edge
  %sub233 = sub nsw i32 16, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub233)
  %cmp56 = icmp ugt i32 %sub233, 15
  br i1 %cmp56, label %do.end73, label %if.end47.if.end79_crit_edge, !prof !113

if.end47.if.end79_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

do.end73:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 405, i32 noundef 9, ptr noundef null) #8
  br label %if.end79

if.end79:                                         ; preds = %do.end73, %if.end47.if.end79_crit_edge
  %4 = tail call i32 @llvm.umin.i32(i32 %sub233, i32 %len)
  %partial_buf = getelementptr inbounds %struct.fc_disc, ptr %disc, i32 0, i32 9
  %add.ptr = getelementptr i8, ptr %partial_buf, i32 %conv
  %5 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %4)
  %idx.neg = sub nsw i32 0, %conv
  %add.ptr91 = getelementptr i8, ptr %buf, i32 %idx.neg
  %add = add i32 %conv, %len
  %add92 = add i32 %4, %conv
  %conv93 = trunc i32 %add92 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add92)
  %cmp95 = icmp eq i32 %add92, 16
  %spec.store.select = select i1 %cmp95, i8 0, i8 %conv93
  %6 = ptrtoint ptr %buf_len to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %spec.store.select, ptr %buf_len, align 2
  br label %if.end100

if.end100:                                        ; preds = %if.end79, %entry.if.end100_crit_edge
  %plen.1 = phi i32 [ %len, %entry.if.end100_crit_edge ], [ %add92, %if.end79 ]
  %bp.0 = phi ptr [ %buf, %entry.if.end100_crit_edge ], [ %add.ptr91, %if.end79 ]
  %np.0 = phi ptr [ %buf, %entry.if.end100_crit_edge ], [ %partial_buf, %if.end79 ]
  %len.addr.0 = phi i32 [ %len, %entry.if.end100_crit_edge ], [ %add, %if.end79 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %plen.1)
  %cmp101246 = icmp ugt i32 %plen.1, 15
  br i1 %cmp101246, label %while.body.lr.ph, label %if.end100.while.end_crit_edge

if.end100.while.end_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end100
  %port_id105 = getelementptr i8, ptr %disc, i32 584
  %wwpn = getelementptr i8, ptr %disc, i32 592
  %disc_id = getelementptr inbounds %struct.fc_disc, ptr %disc, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %if.end131.while.body_crit_edge, %while.body.lr.ph
  %len.addr.1250 = phi i32 [ %len.addr.0, %while.body.lr.ph ], [ %sub132, %if.end131.while.body_crit_edge ]
  %np.1249 = phi ptr [ %np.0, %while.body.lr.ph ], [ %add.ptr133, %if.end131.while.body_crit_edge ]
  %bp.1248 = phi ptr [ %bp.0, %while.body.lr.ph ], [ %add.ptr133, %if.end131.while.body_crit_edge ]
  %error.0247 = phi i32 [ 0, %while.body.lr.ph ], [ %error.1, %if.end131.while.body_crit_edge ]
  %fp_fid = getelementptr inbounds %struct.fc_gpn_ft_resp, ptr %np.1249, i32 0, i32 1
  %7 = ptrtoint ptr %fp_fid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fp_fid, align 1
  %conv.i = zext i8 %8 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %arrayidx1.i = getelementptr %struct.fc_gpn_ft_resp, ptr %np.1249, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %10 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr %struct.fc_gpn_ft_resp, ptr %np.1249, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %12 to i32
  %or6.i = or i32 %or.i, %conv5.i
  %fp_wwpn = getelementptr inbounds %struct.fc_gpn_ft_resp, ptr %np.1249, i32 0, i32 3
  %13 = ptrtoint ptr %fp_wwpn to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %fp_wwpn, align 8
  %15 = ptrtoint ptr %port_id105 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port_id105, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %or6.i, i32 %16)
  %cmp106.not = icmp eq i32 %or6.i, %16
  br i1 %cmp106.not, label %while.body.if.end127_crit_edge, label %land.lhs.true

while.body.if.end127_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

land.lhs.true:                                    ; preds = %while.body
  %17 = ptrtoint ptr %wwpn to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wwpn, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %18)
  %cmp109.not = icmp eq i64 %14, %18
  br i1 %cmp109.not, label %land.lhs.true.if.end127_crit_edge, label %if.then111

land.lhs.true.if.end127_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

if.then111:                                       ; preds = %land.lhs.true
  %call113 = tail call ptr @fc_rport_create(ptr noundef %add.ptr.i, i32 noundef %or6.i) #8
  %tobool114.not = icmp eq ptr %call113, null
  br i1 %tobool114.not, label %do.end122, label %if.then115

if.then115:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  %port_name118 = getelementptr inbounds %struct.fc_rport_priv, ptr %call113, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %port_name118 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %14, ptr %port_name118, align 8
  %20 = ptrtoint ptr %disc_id to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %disc_id, align 8
  %disc_id119 = getelementptr inbounds %struct.fc_rport_priv, ptr %call113, i32 0, i32 7
  %22 = ptrtoint ptr %disc_id119 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %disc_id119, align 4
  br label %if.end127

do.end122:                                        ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  %call125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %or6.i) #11
  br label %if.end127

if.end127:                                        ; preds = %do.end122, %if.then115, %land.lhs.true.if.end127_crit_edge, %while.body.if.end127_crit_edge
  %error.1 = phi i32 [ %error.0247, %if.then115 ], [ -12, %do.end122 ], [ %error.0247, %land.lhs.true.if.end127_crit_edge ], [ %error.0247, %while.body.if.end127_crit_edge ]
  %23 = ptrtoint ptr %np.1249 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %np.1249, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %tobool129.not = icmp sgt i8 %24, -1
  br i1 %tobool129.not, label %if.end131, label %while.end.thread

while.end.thread:                                 ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @fc_disc_done(ptr noundef %disc, i32 noundef 1)
  br label %if.end173

if.end131:                                        ; preds = %if.end127
  %sub132 = add i32 %len.addr.1250, -16
  %add.ptr133 = getelementptr i8, ptr %bp.1248, i32 16
  %cmp101 = icmp ugt i32 %sub132, 15
  br i1 %cmp101, label %if.end131.while.body_crit_edge, label %if.end131.while.end_crit_edge

if.end131.while.end_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end131.while.body_crit_edge:                   ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end131.while.end_crit_edge, %if.end100.while.end_crit_edge
  %error.0.lcssa = phi i32 [ 0, %if.end100.while.end_crit_edge ], [ %error.1, %if.end131.while.end_crit_edge ]
  %np.1.lcssa = phi ptr [ %np.0, %if.end100.while.end_crit_edge ], [ %add.ptr133, %if.end131.while.end_crit_edge ]
  %len.addr.1.lcssa = phi i32 [ %len.addr.0, %if.end100.while.end_crit_edge ], [ %sub132, %if.end131.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0.lcssa)
  %cmp134 = icmp eq i32 %error.0.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1.lcssa)
  %cmp137.not = icmp ne i32 %len.addr.1.lcssa, 0
  %or.cond = select i1 %cmp134, i1 %cmp137.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %len.addr.1.lcssa)
  %cmp140 = icmp ult i32 %len.addr.1.lcssa, 16
  %or.cond228 = select i1 %or.cond, i1 %cmp140, i1 false
  br i1 %or.cond228, label %if.then142, label %while.end.if.end173_crit_edge

while.end.if.end173_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end173

if.then142:                                       ; preds = %while.end
  %partial_buf143 = getelementptr inbounds %struct.fc_disc, ptr %disc, i32 0, i32 9
  %cmp144.not = icmp eq ptr %np.1.lcssa, %partial_buf143
  br i1 %cmp144.not, label %if.then142.if.end170_crit_edge, label %do.body147

if.then142.if.end170_crit_edge:                   ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end170

do.body147:                                       ; preds = %if.then142
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %25 = load i32, ptr @fc_debug_logging, align 4
  %and148 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %do.body147.do.end168_crit_edge, label %do.end160, !prof !115

do.body147.do.end168_crit_edge:                   ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end168

do.end160:                                        ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %27, i32 0, i32 17
  %28 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %host_no, align 4
  %call163 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %29) #11
  br label %do.end168

do.end168:                                        ; preds = %do.end160, %do.body147.do.end168_crit_edge
  %30 = call ptr @memcpy(ptr %partial_buf143, ptr %np.1.lcssa, i32 %len.addr.1.lcssa)
  br label %if.end170

if.end170:                                        ; preds = %do.end168, %if.then142.if.end170_crit_edge
  %conv171 = trunc i32 %len.addr.1.lcssa to i8
  %31 = ptrtoint ptr %buf_len to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv171, ptr %buf_len, align 2
  br label %if.end173

if.end173:                                        ; preds = %if.end170, %while.end.if.end173_crit_edge, %while.end.thread
  %error.2242 = phi i32 [ %error.1, %while.end.thread ], [ 0, %if.end170 ], [ %error.0.lcssa, %while.end.if.end173_crit_edge ]
  ret i32 %error.2242
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fc_disc_done(ptr noundef %disc, i32 noundef %event) unnamed_addr #2 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %disc, i32 -32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.fc_disc, ptr %disc, i32 0, i32 8, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !113

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 260, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %1 = load i32, ptr @fc_debug_logging, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.end.do.end45_crit_edge, label %do.end37, !prof !115

if.end.do.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end45

do.end37:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %host_no, align 4
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %5) #11
  br label %do.end45

do.end45:                                         ; preds = %do.end37, %if.end.do.end45_crit_edge
  %pending = getelementptr inbounds %struct.fc_disc, ptr %disc, i32 0, i32 1
  %6 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %pending, align 1
  %requested = getelementptr inbounds %struct.fc_disc, ptr %disc, i32 0, i32 2
  %7 = ptrtoint ptr %requested to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %requested, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool46.not = icmp eq i8 %8, 0
  br i1 %tobool46.not, label %if.end48, label %if.then47

if.then47:                                        ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @fc_disc_restart(ptr noundef %disc)
  br label %cleanup

if.end48:                                         ; preds = %do.end45
  %rports = getelementptr inbounds %struct.fc_disc, ptr %disc, i32 0, i32 6
  %9 = ptrtoint ptr %rports to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn104 = load ptr, ptr %rports, align 4
  %cmp51.not106 = icmp eq ptr %.pn104, %rports
  br i1 %cmp51.not106, label %if.end48.for.end_crit_edge, label %for.body.lr.ph

if.end48.for.end_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end48
  %disc_id61 = getelementptr inbounds %struct.fc_disc, ptr %disc, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn107 = phi ptr [ %.pn104, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %rdata.0108 = getelementptr i8, ptr %.pn107, i32 -264
  %kref = getelementptr i8, ptr %.pn107, i32 -256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #8
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #8
  %10 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %kref, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %for.body
  %12 = phi i32 [ %11, %for.body ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %13 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %12, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #8
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #8
  %14 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %16 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 %15, i32 %add.i.i.i.i, ptr elementtype(i32) %kref) #8, !srcloc !114
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %16, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %16, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %15
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !115

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %17 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %18, 1
  %19 = or i32 %add5.i.i.i.i, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %.not.i.i.i.i = icmp sgt i32 %19, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !115

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 0) #8
  %20 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %21 = phi i32 [ %18, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool12.i.i.i.i.not = icmp eq i32 %21, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #8
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.for.inc_crit_edge, label %if.end57

kref_get_unless_zero.exit.for.inc_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end57:                                         ; preds = %kref_get_unless_zero.exit
  %disc_id = getelementptr i8, ptr %.pn107, i32 -220
  %22 = ptrtoint ptr %disc_id to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %disc_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool58.not = icmp eq i16 %23, 0
  br i1 %tobool58.not, label %if.end57.if.end69_crit_edge, label %if.then59

if.end57.if.end69_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then59:                                        ; preds = %if.end57
  %24 = ptrtoint ptr %disc_id61 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %disc_id61, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %25)
  %cmp63 = icmp eq i16 %23, %25
  br i1 %cmp63, label %if.then65, label %if.else

if.then65:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  %call66 = call i32 @fc_rport_login(ptr noundef %rdata.0108) #8
  br label %if.end69

if.else:                                          ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  %call67 = call i32 @fc_rport_logoff(ptr noundef %rdata.0108) #8
  br label %if.end69

if.end69:                                         ; preds = %if.else, %if.then65, %if.end57.if.end69_crit_edge
  %call.i.i.i.i.i.i100 = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #8
  %26 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #8, !srcloc !117
  %asmresult.i.i.i.i.i.i.i101 = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i101)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i101, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i101)
  %.not.i.i.i.i102 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i101, 0
  br i1 %.not.i.i.i.i102, label %if.end5.i.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i.i103, !prof !115

if.end5.i.i.i.i.for.inc_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then10.i.i.i.i103:                             ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #8
  br label %for.inc

if.then.i:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !118
  call void @fc_rport_destroy(ptr noundef %kref) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %if.then10.i.i.i.i103, %if.end5.i.i.i.i.for.inc_crit_edge, %kref_get_unless_zero.exit.for.inc_crit_edge
  %27 = ptrtoint ptr %.pn107 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load ptr, ptr %.pn107, align 4
  %cmp51.not = icmp eq ptr %.pn, %rports
  br i1 %cmp51.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end48.for.end_crit_edge
  %disc_mutex77 = getelementptr inbounds %struct.fc_disc, ptr %disc, i32 0, i32 8
  call void @mutex_unlock(ptr noundef %disc_mutex77) #8
  %disc_callback = getelementptr inbounds %struct.fc_disc, ptr %disc, i32 0, i32 11
  %28 = ptrtoint ptr %disc_callback to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %disc_callback, align 4
  call void %29(ptr noundef %add.ptr.i, i32 noundef %event) #8
  call void @mutex_lock_nested(ptr noundef %disc_mutex77, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then47
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_rport_create(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_rport_login(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_rport_logoff(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_rport_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_rport_flush_queue() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_seq_els_rsp_send(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fc_disc_gpn_id_resp(ptr nocapture noundef readnone %sp, ptr noundef %fp, ptr noundef %rdata_arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rdata_arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdata_arg, align 8
  %disc1 = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 6
  %cmp = icmp eq ptr %fp, inttoptr (i32 -2 to ptr)
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %cmp.i = icmp ugt ptr %fp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %disc_mutex = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 6, i32 8
  tail call void @mutex_lock_nested(ptr noundef %disc_mutex, i32 noundef 0) #8
  tail call fastcc void @fc_disc_restart(ptr noundef %disc1)
  tail call void @mutex_unlock(ptr noundef %disc_mutex) #8
  br label %out

if.end5:                                          ; preds = %if.end
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %2 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %3)
  %cmp.not.i = icmp ult i32 %3, 40
  br i1 %cmp.not.i, label %if.end5.redisc_crit_edge, label %fc_frame_payload_get.exit

if.end5.redisc_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %redisc

fc_frame_payload_get.exit:                        ; preds = %if.end5
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i = getelementptr %struct.fc_frame_header, ptr %5, i32 1
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %fc_frame_payload_get.exit.redisc_crit_edge, label %if.end8

fc_frame_payload_get.exit.redisc_crit_edge:       ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %redisc

if.end8:                                          ; preds = %fc_frame_payload_get.exit
  %ct_cmd = getelementptr %struct.fc_frame_header, ptr %5, i32 1, i32 4
  %6 = ptrtoint ptr %ct_cmd to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ct_cmd, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.60)
  switch i16 %7, label %do.body96 [
    i16 -32766, label %if.then11
    i16 -32767, label %do.body68
  ]

if.then11:                                        ; preds = %if.end8
  %9 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %10)
  %cmp12 = icmp ult i32 %10, 48
  br i1 %cmp12, label %if.then11.redisc_crit_edge, label %if.end15

if.then11.redisc_crit_edge:                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %redisc

if.end15:                                         ; preds = %if.then11
  %add.ptr = getelementptr %struct.fc_frame_header, ptr %5, i32 1, i32 9
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %add.ptr, align 1
  %rp_mutex = getelementptr inbounds %struct.fc_rport_priv, ptr %rdata_arg, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %rp_mutex, i32 noundef 0) #8
  %port_name17 = getelementptr inbounds %struct.fc_rport_priv, ptr %rdata_arg, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %port_name17 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %port_name17, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %14)
  %cmp18 = icmp eq i64 %14, -1
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %port_name17 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %12, ptr %port_name17, align 8
  br label %if.end57

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %12)
  %cmp25.not = icmp eq i64 %14, %12
  br i1 %cmp25.not, label %if.else.if.end57_crit_edge, label %do.body

if.else.if.end57_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

do.body:                                          ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %16 = load i32, ptr @fc_debug_logging, align 4
  %and = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %do.body.do.end41_crit_edge, label %do.end, !prof !115

do.body.do.end41_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end41

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %18, i32 0, i32 17
  %19 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %host_no, align 4
  %port_id = getelementptr inbounds %struct.fc_rport_priv, ptr %rdata_arg, i32 0, i32 4, i32 2
  %21 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port_id, align 8
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %20, i32 noundef %22, i64 noundef %12) #11
  br label %do.end41

do.end41:                                         ; preds = %do.end, %do.body.do.end41_crit_edge
  tail call void @mutex_unlock(ptr noundef %rp_mutex) #8
  %call43 = tail call i32 @fc_rport_logoff(ptr noundef %rdata_arg) #8
  %disc_mutex45 = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 6, i32 8
  tail call void @mutex_lock_nested(ptr noundef %disc_mutex45, i32 noundef 0) #8
  %port_id47 = getelementptr inbounds %struct.fc_rport_priv, ptr %rdata_arg, i32 0, i32 4, i32 2
  %23 = ptrtoint ptr %port_id47 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port_id47, align 8
  %call48 = tail call ptr @fc_rport_create(ptr noundef %1, i32 noundef %24) #8
  tail call void @mutex_unlock(ptr noundef %disc_mutex45) #8
  %tobool51.not = icmp eq ptr %call48, null
  br i1 %tobool51.not, label %do.end41.free_fp_crit_edge, label %if.then52

do.end41.free_fp_crit_edge:                       ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_fp

if.then52:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #10
  %disc_id = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 6, i32 5
  %25 = ptrtoint ptr %disc_id to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %disc_id, align 8
  %disc_id53 = getelementptr inbounds %struct.fc_rport_priv, ptr %call48, i32 0, i32 7
  %27 = ptrtoint ptr %disc_id53 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %disc_id53, align 4
  %call54 = tail call i32 @fc_rport_login(ptr noundef nonnull %call48) #8
  br label %free_fp

if.end57:                                         ; preds = %if.else.if.end57_crit_edge, %if.then20
  %disc_id58 = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 6, i32 5
  %28 = ptrtoint ptr %disc_id58 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %disc_id58, align 8
  %disc_id59 = getelementptr inbounds %struct.fc_rport_priv, ptr %rdata_arg, i32 0, i32 7
  %30 = ptrtoint ptr %disc_id59 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %disc_id59, align 4
  tail call void @mutex_unlock(ptr noundef %rp_mutex) #8
  %call61 = tail call i32 @fc_rport_login(ptr noundef %rdata_arg) #8
  br label %free_fp

do.body68:                                        ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %31 = load i32, ptr @fc_debug_logging, align 4
  %and69 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %do.body68.do.end93_crit_edge, label %do.end81, !prof !115

do.body68.do.end93_crit_edge:                     ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end93

do.end81:                                         ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %host_no85 = getelementptr inbounds %struct.Scsi_Host, ptr %33, i32 0, i32 17
  %34 = ptrtoint ptr %host_no85 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %host_no85, align 4
  %ct_reason = getelementptr %struct.fc_frame_header, ptr %5, i32 1, i32 7
  %36 = ptrtoint ptr %ct_reason to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ct_reason, align 1
  %conv86 = zext i8 %37 to i32
  %ct_explan = getelementptr %struct.fc_frame_header, ptr %5, i32 1, i32 8
  %38 = ptrtoint ptr %ct_explan to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ct_explan, align 2
  %conv87 = zext i8 %39 to i32
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %35, i32 noundef %conv86, i32 noundef %conv87) #11
  br label %do.end93

do.end93:                                         ; preds = %do.end81, %do.body68.do.end93_crit_edge
  %call94 = tail call i32 @fc_rport_logoff(ptr noundef %rdata_arg) #8
  br label %free_fp

do.body96:                                        ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fc_debug_logging to i32))
  %40 = load i32, ptr @fc_debug_logging, align 4
  %and97 = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %do.body96.redisc_crit_edge, label %do.end109, !prof !115

do.body96.redisc_crit_edge:                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #10
  br label %redisc

do.end109:                                        ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 8
  %host_no113 = getelementptr inbounds %struct.Scsi_Host, ptr %42, i32 0, i32 17
  %43 = ptrtoint ptr %host_no113 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %host_no113, align 4
  %conv115 = zext i16 %7 to i32
  %call116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %44, i32 noundef %conv115) #11
  br label %redisc

redisc:                                           ; preds = %do.end109, %do.body96.redisc_crit_edge, %if.then11.redisc_crit_edge, %fc_frame_payload_get.exit.redisc_crit_edge, %if.end5.redisc_crit_edge
  %disc_mutex122 = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 6, i32 8
  tail call void @mutex_lock_nested(ptr noundef %disc_mutex122, i32 noundef 0) #8
  tail call fastcc void @fc_disc_restart(ptr noundef %disc1)
  tail call void @mutex_unlock(ptr noundef %disc_mutex122) #8
  br label %free_fp

free_fp:                                          ; preds = %redisc, %do.end93, %if.end57, %if.then52, %do.end41.free_fp_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %fp, i32 noundef 0) #8
  br label %out

out:                                              ; preds = %free_fp, %if.then3, %entry.out_crit_edge
  %kref = getelementptr inbounds %struct.fc_rport_priv, ptr %rdata_arg, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #8
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #8, !srcloc !117
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i170, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !115

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #8
  br label %kref_put.exit

if.then.i170:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @fc_rport_destroy(ptr noundef %kref) #8
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i170, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !12, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @__ksymtab_fc_disc_config, !1, !"__ksymtab_fc_disc_config", i1 false, i1 false}
!1 = !{!"../drivers/scsi/libfc/fc_disc.c", i32 735, i32 1}
!2 = !{ptr @fc_disc_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/scsi/libfc/fc_disc.c", i32 745, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @fc_disc_init.__key.1, !3, !"__key", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @fc_disc_init.__key.3, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/scsi/libfc/fc_disc.c", i32 746, i32 2}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__ksymtab_fc_disc_init, !11, !"__ksymtab_fc_disc_init", i1 false, i1 false}
!11 = !{!"../drivers/scsi/libfc/fc_disc.c", i32 749, i32 1}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/libfc/fc_disc.c", i32 207, i32 2}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/libfc/fc_disc.c", i32 212, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @fc_disc_restart._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @fc_disc_restart._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/scsi/libfc/fc_disc.c", i32 508, i32 2}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @fc_disc_gpn_ft_resp._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @fc_disc_gpn_ft_resp._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/libfc/fc_disc.c", i32 523, i32 4}
!26 = !{ptr @fc_disc_gpn_ft_resp._entry.10, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @fc_disc_gpn_ft_resp._entry_ptr.12, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/libfc/fc_disc.c", i32 532, i32 4}
!30 = !{ptr @fc_disc_gpn_ft_resp._entry.13, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @fc_disc_gpn_ft_resp._entry_ptr.15, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/libfc/fc_disc.c", i32 540, i32 4}
!34 = !{ptr @fc_disc_gpn_ft_resp._entry.16, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @fc_disc_gpn_ft_resp._entry_ptr.18, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/libfc/fc_disc.c", i32 547, i32 3}
!38 = !{ptr @fc_disc_gpn_ft_resp._entry.19, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @fc_disc_gpn_ft_resp._entry_ptr.21, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/scsi/fc_frame.h", i32 161, i32 2}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/libfc/fc_disc.c", i32 441, i32 5}
!44 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @fc_disc_gpn_ft_parse._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @fc_disc_gpn_ft_parse._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/libfc/fc_disc.c", i32 464, i32 4}
!49 = !{ptr @fc_disc_gpn_ft_parse._entry.25, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @fc_disc_gpn_ft_parse._entry_ptr.27, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/libfc/fc_disc.c", i32 261, i32 2}
!53 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @fc_disc_done._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @fc_disc_done._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/libfc/fc_disc.c", i32 304, i32 2}
!58 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @fc_disc_error._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @fc_disc_error._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/libfc/fc_disc.c", i32 194, i32 3}
!63 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @fc_disc_recv_req._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @fc_disc_recv_req._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/libfc/fc_disc.c", i32 87, i32 2}
!68 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @fc_disc_recv_rscn_req._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @fc_disc_recv_rscn_req._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/libfc/fc_disc.c", i32 120, i32 4}
!73 = !{ptr @fc_disc_recv_rscn_req._entry.36, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @fc_disc_recv_rscn_req._entry_ptr.38, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/libfc/fc_disc.c", i32 135, i32 4}
!77 = !{ptr @fc_disc_recv_rscn_req._entry.39, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @fc_disc_recv_rscn_req._entry_ptr.41, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/libfc/fc_disc.c", i32 155, i32 3}
!81 = !{ptr @fc_disc_recv_rscn_req._entry.42, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @fc_disc_recv_rscn_req._entry_ptr.44, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/libfc/fc_disc.c", i32 158, i32 3}
!85 = !{ptr @fc_disc_recv_rscn_req._entry.45, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @fc_disc_recv_rscn_req._entry_ptr.47, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.49, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/libfc/fc_disc.c", i32 165, i32 2}
!89 = !{ptr @fc_disc_recv_rscn_req._entry.48, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @fc_disc_recv_rscn_req._entry_ptr.50, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.51, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/libfc/fc_disc.c", i32 604, i32 4}
!93 = !{ptr @.str.52, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @fc_disc_gpn_id_resp._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @fc_disc_gpn_id_resp._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.54, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/libfc/fc_disc.c", i32 622, i32 3}
!98 = !{ptr @fc_disc_gpn_id_resp._entry.53, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @fc_disc_gpn_id_resp._entry_ptr.55, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.57, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/libfc/fc_disc.c", i32 626, i32 3}
!102 = !{ptr @fc_disc_gpn_id_resp._entry.56, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @fc_disc_gpn_id_resp._entry_ptr.58, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{!"branch_weights", i32 1, i32 2000}
!114 = !{i64 821513, i64 821537, i64 821558, i64 821575, i64 821592}
!115 = !{!"branch_weights", i32 2000, i32 1}
!116 = !{i64 2148426535}
!117 = !{i64 2148340975, i64 2148341007, i64 2148341036, i64 2148341070, i64 2148341101, i64 2148341124}
!118 = !{i64 2149971343}
!119 = !{i64 2148338510, i64 2148338542, i64 2148338571, i64 2148338605, i64 2148338636, i64 2148338659}
