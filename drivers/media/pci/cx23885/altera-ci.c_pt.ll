; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx23885/altera-ci.c_pt.bc'
source_filename = "../drivers/media/pci/cx23885/altera-ci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+altera_ci_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_altera_ci_irq\09\09\09\09"
module asm "\09.long\09__crc_altera_ci_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_altera_ci_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22altera_ci_irq\22\09\09\09\09\09"
module asm "__kstrtabns_altera_ci_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+altera_ci_release\22, \22a\22\09"
module asm "\09.weak\09__crc_altera_ci_release\09\09\09\09"
module asm "\09.long\09__crc_altera_ci_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_altera_ci_release:\09\09\09\09\09"
module asm "\09.asciz \09\22altera_ci_release\22\09\09\09\09\09"
module asm "__kstrtabns_altera_ci_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+altera_ci_init\22, \22a\22\09"
module asm "\09.weak\09__crc_altera_ci_init\09\09\09\09"
module asm "\09.long\09__crc_altera_ci_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_altera_ci_init:\09\09\09\09\09"
module asm "\09.asciz \09\22altera_ci_init\22\09\09\09\09\09"
module asm "__kstrtabns_altera_ci_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+altera_ci_tuner_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_altera_ci_tuner_reset\09\09\09\09"
module asm "\09.long\09__crc_altera_ci_tuner_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_altera_ci_tuner_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22altera_ci_tuner_reset\22\09\09\09\09\09"
module asm "__kstrtabns_altera_ci_tuner_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fpga_inode = type { ptr, ptr }
%struct.fpga_internal = type { ptr, %struct.mutex, [2 x ptr], [2 x ptr], %struct.work_struct, ptr, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.netup_hw_pid_filter = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.altera_ci_state = type { ptr, %struct.dvb_ca_en50221, i32, i32 }
%struct.dvb_ca_en50221 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.altera_ci_config = type { ptr, ptr, ptr, ptr }
%struct.dvb_demux_feed = type { %union.anon.84, %union.anon.85, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon.84 = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.85 = type { ptr }

@__param_str_ci_dbg = internal constant [17 x i8] c"altera_ci.ci_dbg\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ci_dbg = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ci_dbg = internal constant %struct.kernel_param { ptr @__param_str_ci_dbg, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @ci_dbg } }, section "__param", align 4
@__UNIQUE_ID_ci_dbgtype290 = internal constant [30 x i8] c"altera_ci.parmtype=ci_dbg:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ci_dbg291 = internal constant [42 x i8] c"altera_ci.parm=ci_dbg:Enable CI debugging\00", section ".modinfo", align 1
@__param_str_pid_dbg = internal constant [18 x i8] c"altera_ci.pid_dbg\00", align 1
@pid_dbg = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_pid_dbg = internal constant %struct.kernel_param { ptr @__param_str_pid_dbg, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @pid_dbg } }, section "__param", align 4
@__UNIQUE_ID_pid_dbgtype292 = internal constant [31 x i8] c"altera_ci.parmtype=pid_dbg:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pid_dbg293 = internal constant [54 x i8] c"altera_ci.parm=pid_dbg:Enable PID filtering debugging\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [44 x i8] c"altera_ci.description=altera FPGA CI module\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [57 x i8] c"altera_ci.author=Igor M. Liplianin  <liplianin@netup.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [51 x i8] c"altera_ci.file=drivers/media/pci/cx23885/altera-ci\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [22 x i8] c"altera_ci.license=GPL\00", section ".modinfo", align 1
@altera_ci_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017altera_ci: %s: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"altera_ci_irq\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/pci/cx23885/altera-ci.c\00", [58 x i8] zeroinitializer }, align 32
@altera_ci_irq._entry_ptr = internal global ptr @altera_ci_irq._entry, section ".printk_index", align 4
@__kstrtab_altera_ci_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_altera_ci_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_altera_ci_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @altera_ci_irq to i32), ptr @__kstrtab_altera_ci_irq, ptr @__kstrtabns_altera_ci_irq }, section "___ksymtab+altera_ci_irq", align 4
@altera_ci_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"altera_ci_release\00", [46 x i8] zeroinitializer }, align 32
@altera_ci_release._entry_ptr = internal global ptr @altera_ci_release._entry, section ".printk_index", align 4
@altera_ci_release._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.3, ptr @.str.2, i32 497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017altera_ci: %s: %s: Actually removing\0A\00", [56 x i8] zeroinitializer }, align 32
@altera_ci_release._entry_ptr.6 = internal global ptr @altera_ci_release._entry.4, section ".printk_index", align 4
@__kstrtab_altera_ci_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_altera_ci_release = external dso_local constant [0 x i8], align 1
@__ksymtab_altera_ci_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @altera_ci_release to i32), ptr @__kstrtab_altera_ci_release, ptr @__kstrtabns_altera_ci_release }, section "___ksymtab+altera_ci_release", align 4
@altera_ci_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.7, ptr @.str.2, i32 711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"altera_ci_init\00", [17 x i8] zeroinitializer }, align 32
@altera_ci_init._entry_ptr = internal global ptr @altera_ci_init._entry, section ".printk_index", align 4
@altera_ci_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017altera_ci: %s: %s: Find Internal Structure!\0A\00", [49 x i8] zeroinitializer }, align 32
@altera_ci_init._entry_ptr.10 = internal global ptr @altera_ci_init._entry.8, section ".printk_index", align 4
@altera_ci_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&inter->fpga_mutex\00", [45 x i8] zeroinitializer }, align 32
@altera_ci_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str.2, i32 740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017altera_ci: %s: %s: Create New Internal Structure!\0A\00", [43 x i8] zeroinitializer }, align 32
@altera_ci_init._entry_ptr.14 = internal global ptr @altera_ci_init._entry.12, section ".printk_index", align 4
@altera_ci_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.7, ptr @.str.2, i32 744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017altera_ci: %s: %s: setting state = %p for ci = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@altera_ci_init._entry_ptr.17 = internal global ptr @altera_ci_init._entry.15, section ".printk_index", align 4
@altera_ci_init.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&inter->work)\00", [32 x i8] zeroinitializer }, align 32
@altera_ci_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.7, ptr @.str.2, i32 775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017altera_ci: %s: %s: CI initialized!\0A\00", [58 x i8] zeroinitializer }, align 32
@altera_ci_init._entry_ptr.22 = internal global ptr @altera_ci_init._entry.20, section ".printk_index", align 4
@altera_ci_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.7, ptr @.str.2, i32 794, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017altera_ci: %s: %s: NetUP CI Revision = 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@altera_ci_init._entry_ptr.25 = internal global ptr @altera_ci_init._entry.23, section ".printk_index", align 4
@altera_ci_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.7, ptr @.str.2, i32 800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017altera_ci: %s: %s: Cannot initialize CI: Error %d.\0A\00", [42 x i8] zeroinitializer }, align 32
@altera_ci_init._entry_ptr.28 = internal global ptr @altera_ci_init._entry.26, section ".printk_index", align 4
@__kstrtab_altera_ci_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_altera_ci_init = external dso_local constant [0 x i8], align 1
@__ksymtab_altera_ci_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @altera_ci_init to i32), ptr @__kstrtab_altera_ci_init, ptr @__kstrtabns_altera_ci_init }, section "___ksymtab+altera_ci_init", align 4
@altera_ci_tuner_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.29, ptr @.str.2, i32 815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"altera_ci_tuner_reset\00", [42 x i8] zeroinitializer }, align 32
@altera_ci_tuner_reset._entry_ptr = internal global ptr @altera_ci_tuner_reset._entry, section ".printk_index", align 4
@__kstrtab_altera_ci_tuner_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_altera_ci_tuner_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_altera_ci_tuner_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @altera_ci_tuner_reset to i32), ptr @__kstrtab_altera_ci_tuner_reset, ptr @__kstrtabns_altera_ci_tuner_reset }, section "___ksymtab+altera_ci_tuner_reset", align 4
@fpga_first_inode = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@altera_hw_filt_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.30, ptr @.str.2, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"altera_hw_filt_release\00", [41 x i8] zeroinitializer }, align 32
@altera_hw_filt_release._entry_ptr = internal global ptr @altera_hw_filt_release._entry, section ".printk_index", align 4
@altera_hw_filt_release._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.30, ptr @.str.2, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@altera_hw_filt_release._entry_ptr.32 = internal global ptr @altera_hw_filt_release._entry.31, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@altera_ci_op_cam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017altera_ci: %s: %s: %s: addr=[0x%02x], %s=%x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"altera_ci_op_cam\00", [47 x i8] zeroinitializer }, align 32
@altera_ci_op_cam._entry_ptr = internal global ptr @altera_ci_op_cam._entry, section ".printk_index", align 4
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ctl\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mem\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@altera_ci_slot_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.39, ptr @.str.2, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"altera_ci_slot_reset\00", [43 x i8] zeroinitializer }, align 32
@altera_ci_slot_reset._entry_ptr = internal global ptr @altera_ci_slot_reset._entry, section ".printk_index", align 4
@altera_ci_slot_reset._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017altera_ci: %s: %s: %d msecs\0A\00", [33 x i8] zeroinitializer }, align 32
@altera_ci_slot_reset._entry_ptr.42 = internal global ptr @altera_ci_slot_reset._entry.40, section ".printk_index", align 4
@altera_ci_slot_ts_ctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.43, ptr @.str.2, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"altera_ci_slot_ts_ctl\00", [42 x i8] zeroinitializer }, align 32
@altera_ci_slot_ts_ctl._entry_ptr = internal global ptr @altera_ci_slot_ts_ctl._entry, section ".printk_index", align 4
@altera_hw_filt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.44, ptr @.str.2, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"altera_hw_filt_init\00", [44 x i8] zeroinitializer }, align 32
@altera_hw_filt_init._entry_ptr = internal global ptr @altera_hw_filt_init._entry, section ".printk_index", align 4
@altera_hw_filt_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.44, ptr @.str.2, i32 649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@altera_hw_filt_init._entry_ptr.46 = internal global ptr @altera_hw_filt_init._entry.45, section ".printk_index", align 4
@altera_hw_filt_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@altera_hw_filt_init._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.44, ptr @.str.2, i32 667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@altera_hw_filt_init._entry_ptr.48 = internal global ptr @altera_hw_filt_init._entry.47, section ".printk_index", align 4
@altera_hw_filt_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.44, ptr @.str.2, i32 671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017altera_ci: %s: %s: setting hw pid filter = %p for ci = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@altera_hw_filt_init._entry_ptr.51 = internal global ptr @altera_hw_filt_init._entry.49, section ".printk_index", align 4
@altera_hw_filt_init._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.44, ptr @.str.2, i32 693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017altera_ci: %s: %s: Can't init hardware filter: Error %d\0A\00", [37 x i8] zeroinitializer }, align 32
@altera_hw_filt_init._entry_ptr.54 = internal global ptr @altera_hw_filt_init._entry.52, section ".printk_index", align 4
@altera_pid_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017altera_ci: %s: %s: (%d) set pid: %5d 0x%04x '%s'\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"altera_pid_control\00", [45 x i8] zeroinitializer }, align 32
@altera_pid_control._entry_ptr = internal global ptr @altera_pid_control._entry, section ".printk_index", align 4
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@altera_toggle_fullts_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017altera_ci: %s: %s: pid_filt->nr[%d]  now %s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"altera_toggle_fullts_streaming\00", [33 x i8] zeroinitializer }, align 32
@altera_toggle_fullts_streaming._entry_ptr = internal global ptr @altera_toggle_fullts_streaming._entry, section ".printk_index", align 4
@netup_read_ci_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.61, ptr @.str.2, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"netup_read_ci_status\00", [43 x i8] zeroinitializer }, align 32
@netup_read_ci_status._entry_ptr = internal global ptr @netup_read_ci_status._entry, section ".printk_index", align 4
@netup_read_ci_status._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.2, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017altera_ci: %s: %s: setting CI[1] status = 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@netup_read_ci_status._entry_ptr.64 = internal global ptr @netup_read_ci_status._entry.62, section ".printk_index", align 4
@netup_read_ci_status._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.61, ptr @.str.2, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017altera_ci: %s: %s: setting CI[0] status = 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@netup_read_ci_status._entry_ptr.67 = internal global ptr @netup_read_ci_status._entry.65, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"ci_dbg\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 68, i32 21 }
@___asan_gen_.71 = private unnamed_addr constant [8 x i8] c"pid_dbg\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 72, i32 21 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 429, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 487, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 497, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 711, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 722, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 738, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 740, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 743, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 771, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 775, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 794, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 800, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 815, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [17 x i8] c"fpga_first_inode\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 137, i32 27 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 459, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 470, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 284, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 325, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 354, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 372, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 639, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 649, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 665, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 667, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 670, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 692, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 541, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 552, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 395, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 409, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.275 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.276 = private constant [41 x i8] c"../drivers/media/pci/cx23885/altera-ci.c\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 418, i32 3 }
@llvm.compiler.used = appending global [111 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_ci_dbg291, ptr @__UNIQUE_ID_ci_dbgtype290, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__UNIQUE_ID_pid_dbg293, ptr @__UNIQUE_ID_pid_dbgtype292, ptr @__ksymtab_altera_ci_init, ptr @__ksymtab_altera_ci_irq, ptr @__ksymtab_altera_ci_release, ptr @__ksymtab_altera_ci_tuner_reset, ptr @__param_ci_dbg, ptr @__param_pid_dbg, ptr @altera_ci_init._entry, ptr @altera_ci_init._entry.12, ptr @altera_ci_init._entry.15, ptr @altera_ci_init._entry.20, ptr @altera_ci_init._entry.23, ptr @altera_ci_init._entry.26, ptr @altera_ci_init._entry.8, ptr @altera_ci_init._entry_ptr, ptr @altera_ci_init._entry_ptr.10, ptr @altera_ci_init._entry_ptr.14, ptr @altera_ci_init._entry_ptr.17, ptr @altera_ci_init._entry_ptr.22, ptr @altera_ci_init._entry_ptr.25, ptr @altera_ci_init._entry_ptr.28, ptr @altera_ci_irq._entry, ptr @altera_ci_irq._entry_ptr, ptr @altera_ci_op_cam._entry, ptr @altera_ci_op_cam._entry_ptr, ptr @altera_ci_release._entry, ptr @altera_ci_release._entry.4, ptr @altera_ci_release._entry_ptr, ptr @altera_ci_release._entry_ptr.6, ptr @altera_ci_slot_reset._entry, ptr @altera_ci_slot_reset._entry.40, ptr @altera_ci_slot_reset._entry_ptr, ptr @altera_ci_slot_reset._entry_ptr.42, ptr @altera_ci_slot_ts_ctl._entry, ptr @altera_ci_slot_ts_ctl._entry_ptr, ptr @altera_ci_tuner_reset._entry, ptr @altera_ci_tuner_reset._entry_ptr, ptr @altera_hw_filt_init._entry, ptr @altera_hw_filt_init._entry.45, ptr @altera_hw_filt_init._entry.47, ptr @altera_hw_filt_init._entry.49, ptr @altera_hw_filt_init._entry.52, ptr @altera_hw_filt_init._entry_ptr, ptr @altera_hw_filt_init._entry_ptr.46, ptr @altera_hw_filt_init._entry_ptr.48, ptr @altera_hw_filt_init._entry_ptr.51, ptr @altera_hw_filt_init._entry_ptr.54, ptr @altera_hw_filt_release._entry, ptr @altera_hw_filt_release._entry.31, ptr @altera_hw_filt_release._entry_ptr, ptr @altera_hw_filt_release._entry_ptr.32, ptr @altera_pid_control._entry, ptr @altera_pid_control._entry_ptr, ptr @altera_toggle_fullts_streaming._entry, ptr @altera_toggle_fullts_streaming._entry_ptr, ptr @netup_read_ci_status._entry, ptr @netup_read_ci_status._entry.62, ptr @netup_read_ci_status._entry.65, ptr @netup_read_ci_status._entry_ptr, ptr @netup_read_ci_status._entry_ptr.64, ptr @netup_read_ci_status._entry_ptr.67, ptr @ci_dbg, ptr @pid_dbg, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @altera_ci_init.__key, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @altera_ci_init.__key.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @fpga_first_inode, ptr @.str.30, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @altera_hw_filt_init.__key, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_dbg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pid_dbg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ci_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ci_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ci_release._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ci_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ci_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ci_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ci_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ci_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ci_init.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ci_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ci_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ci_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ci_tuner_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_first_inode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_hw_filt_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_hw_filt_release._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ci_op_cam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ci_slot_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ci_slot_reset._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_ci_slot_ts_ctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_hw_filt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_hw_filt_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_hw_filt_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_hw_filt_init._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_hw_filt_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_hw_filt_init._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_pid_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_toggle_fullts_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_read_ci_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_read_ci_status._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_read_ci_status._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @altera_ci_irq(ptr noundef readnone %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.1) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %cmp.not = icmp eq ptr %dev, null
  br i1 %cmp.not, label %do.end3.if.end10_crit_edge, label %if.then4

do.end3.if.end10_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then4:                                         ; preds = %do.end3
  %1 = load ptr, ptr @fpga_first_inode, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %if.then4.if.end10_crit_edge, label %if.then4.land.rhs.i_crit_edge

if.then4.land.rhs.i_crit_edge:                    ; preds = %if.then4
  br label %land.rhs.i

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.then4.land.rhs.i_crit_edge
  %temp_chip.010.i = phi ptr [ %7, %while.body.i.land.rhs.i_crit_edge ], [ %1, %if.then4.land.rhs.i_crit_edge ]
  %2 = ptrtoint ptr %temp_chip.010.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %temp_chip.010.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cmp3.not.i = icmp eq ptr %5, %dev
  br i1 %cmp3.not.i, label %if.then7, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  %next_inode.i = getelementptr inbounds %struct.fpga_inode, ptr %temp_chip.010.i, i32 0, i32 1
  %6 = ptrtoint ptr %next_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next_inode.i, align 4
  %cmp1.not.i = icmp eq ptr %7, null
  br i1 %cmp1.not.i, label %while.body.i.if.end10_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

while.body.i.if.end10_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then7:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %temp_chip.010.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %temp_chip.010.i, align 4
  %work = getelementptr inbounds %struct.fpga_internal, ptr %9, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %work) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %while.body.i.if.end10_crit_edge, %if.then4.if.end10_crit_edge, %do.end3.if.end10_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @altera_ci_release(ptr noundef readnone %dev, i32 noundef %ci_nr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @fpga_first_inode, align 4
  %cmp.i = icmp eq ptr %0, null
  br i1 %cmp.i, label %entry.find_inode.exit_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.find_inode.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_inode.exit

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %temp_chip.010.i = phi ptr [ %6, %while.body.i.land.rhs.i_crit_edge ], [ %0, %entry.land.rhs.i_crit_edge ]
  %1 = ptrtoint ptr %temp_chip.010.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %temp_chip.010.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %cmp3.not.i = icmp eq ptr %4, %dev
  br i1 %cmp3.not.i, label %land.rhs.i.find_inode.exit_crit_edge, label %while.body.i

land.rhs.i.find_inode.exit_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_inode.exit

while.body.i:                                     ; preds = %land.rhs.i
  %next_inode.i = getelementptr inbounds %struct.fpga_inode, ptr %temp_chip.010.i, i32 0, i32 1
  %5 = ptrtoint ptr %next_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %next_inode.i, align 4
  %cmp1.not.i = icmp eq ptr %6, null
  br i1 %cmp1.not.i, label %while.body.i.find_inode.exit_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

while.body.i.find_inode.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_inode.exit

find_inode.exit:                                  ; preds = %while.body.i.find_inode.exit_crit_edge, %land.rhs.i.find_inode.exit_crit_edge, %entry.find_inode.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.find_inode.exit_crit_edge ], [ %temp_chip.010.i, %land.rhs.i.find_inode.exit_crit_edge ], [ null, %while.body.i.find_inode.exit_crit_edge ]
  %7 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %find_inode.exit.do.end4_crit_edge, label %do.end

find_inode.exit.do.end4_crit_edge:                ; preds = %find_inode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %find_inode.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %find_inode.exit.do.end4_crit_edge
  %cmp.not = icmp eq ptr %retval.0.i, null
  br i1 %cmp.not, label %do.end4.if.end33_crit_edge, label %if.then5

do.end4.if.end33_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then5:                                         ; preds = %do.end4
  %8 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %retval.0.i, align 4
  %sub = add i32 %ci_nr, -1
  %arrayidx = getelementptr %struct.fpga_internal, ptr %9, i32 0, i32 3, i32 %sub
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %12 = load ptr, ptr @fpga_first_inode, align 4
  %cmp.i.i = icmp eq ptr %12, null
  br i1 %cmp.i.i, label %if.then5.find_inode.exit.i_crit_edge, label %if.then5.land.rhs.i.i_crit_edge

if.then5.land.rhs.i.i_crit_edge:                  ; preds = %if.then5
  br label %land.rhs.i.i

if.then5.find_inode.exit.i_crit_edge:             ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_inode.exit.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %if.then5.land.rhs.i.i_crit_edge
  %temp_chip.010.i.i = phi ptr [ %18, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %12, %if.then5.land.rhs.i.i_crit_edge ]
  %13 = ptrtoint ptr %temp_chip.010.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %temp_chip.010.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %cmp3.not.i.i = icmp eq ptr %16, %dev
  br i1 %cmp3.not.i.i, label %land.rhs.i.i.find_inode.exit.i_crit_edge, label %while.body.i.i

land.rhs.i.i.find_inode.exit.i_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_inode.exit.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %next_inode.i.i = getelementptr inbounds %struct.fpga_inode, ptr %temp_chip.010.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %next_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %next_inode.i.i, align 4
  %cmp1.not.i.i = icmp eq ptr %18, null
  br i1 %cmp1.not.i.i, label %while.body.i.i.find_inode.exit.i_crit_edge, label %while.body.i.i.land.rhs.i.i_crit_edge

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i.i

while.body.i.i.find_inode.exit.i_crit_edge:       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_inode.exit.i

find_inode.exit.i:                                ; preds = %while.body.i.i.find_inode.exit.i_crit_edge, %land.rhs.i.i.find_inode.exit.i_crit_edge, %if.then5.find_inode.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ null, %if.then5.find_inode.exit.i_crit_edge ], [ null, %while.body.i.i.find_inode.exit.i_crit_edge ], [ %temp_chip.010.i.i, %land.rhs.i.i.find_inode.exit.i_crit_edge ]
  %19 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %find_inode.exit.i.do.end4.i_crit_edge, label %do.end.i

find_inode.exit.i.do.end4.i_crit_edge:            ; preds = %find_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i

do.end.i:                                         ; preds = %find_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.30) #9
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %find_inode.exit.i.do.end4.i_crit_edge
  %cmp.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %cmp.not.i, label %do.end4.i.altera_hw_filt_release.exit_crit_edge, label %if.then5.i

do.end4.i.altera_hw_filt_release.exit_crit_edge:  ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %altera_hw_filt_release.exit

if.then5.i:                                       ; preds = %do.end4.i
  %20 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %retval.0.i.i, align 4
  %arrayidx.i = getelementptr %struct.fpga_internal, ptr %21, i32 0, i32 2, i32 %sub
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %start_feed.i = getelementptr inbounds %struct.netup_hw_pid_filter, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %start_feed.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %start_feed.i, align 4
  %demux.i = getelementptr inbounds %struct.netup_hw_pid_filter, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %demux.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %demux.i, align 4
  %start_feed7.i = getelementptr inbounds %struct.dvb_demux, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %start_feed7.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %start_feed7.i, align 8
  %stop_feed.i = getelementptr inbounds %struct.netup_hw_pid_filter, ptr %23, i32 0, i32 3
  %29 = ptrtoint ptr %stop_feed.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stop_feed.i, align 4
  %31 = load ptr, ptr %demux.i, align 4
  %stop_feed9.i = getelementptr inbounds %struct.dvb_demux, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %stop_feed9.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %stop_feed9.i, align 4
  %33 = load ptr, ptr %retval.0.i.i, align 4
  %filts_used.i = getelementptr inbounds %struct.fpga_internal, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %filts_used.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %filts_used.i, align 4
  %dec.i = add i32 %35, -1
  store i32 %dec.i, ptr %filts_used.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp11.i = icmp slt i32 %dec.i, 1
  br i1 %cmp11.i, label %land.lhs.true.i, label %if.then5.i.if.end28.i_crit_edge

if.then5.i.if.end28.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

land.lhs.true.i:                                  ; preds = %if.then5.i
  %36 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %retval.0.i.i, align 4
  %cis_used.i = getelementptr inbounds %struct.fpga_internal, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %cis_used.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cis_used.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp13.i = icmp slt i32 %39, 1
  br i1 %cmp13.i, label %do.body15.i, label %land.lhs.true.i.if.end28.i_crit_edge

land.lhs.true.i.if.end28.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

do.body15.i:                                      ; preds = %land.lhs.true.i
  %40 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool16.not.i = icmp eq i32 %40, 0
  br i1 %tobool16.not.i, label %do.body15.i.do.end25.i_crit_edge, label %do.end20.i

do.body15.i.do.end25.i_crit_edge:                 ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end25.i

do.end20.i:                                       ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #8
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.30) #9
  br label %do.end25.i

do.end25.i:                                       ; preds = %do.end20.i, %do.body15.i.do.end25.i_crit_edge
  %41 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %retval.0.i.i, align 4
  %43 = load ptr, ptr @fpga_first_inode, align 4
  %44 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %42, align 4
  %cmp.i.i.i = icmp eq ptr %43, null
  br i1 %cmp.i.i.i, label %do.end25.i.remove_inode.exit.i_crit_edge, label %do.end25.i.land.rhs.i.i.i_crit_edge

do.end25.i.land.rhs.i.i.i_crit_edge:              ; preds = %do.end25.i
  br label %land.rhs.i.i.i

do.end25.i.remove_inode.exit.i_crit_edge:         ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %remove_inode.exit.i

land.rhs.i.i.i:                                   ; preds = %while.body.i.i.i.land.rhs.i.i.i_crit_edge, %do.end25.i.land.rhs.i.i.i_crit_edge
  %temp_chip.010.i.i.i = phi ptr [ %51, %while.body.i.i.i.land.rhs.i.i.i_crit_edge ], [ %43, %do.end25.i.land.rhs.i.i.i_crit_edge ]
  %46 = ptrtoint ptr %temp_chip.010.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %temp_chip.010.i.i.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %cmp3.not.i.i.i = icmp eq ptr %49, %45
  br i1 %cmp3.not.i.i.i, label %if.then.i.i, label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %next_inode.i.i.i = getelementptr inbounds %struct.fpga_inode, ptr %temp_chip.010.i.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %next_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %next_inode.i.i.i, align 4
  %cmp1.not.i.i.i = icmp eq ptr %51, null
  br i1 %cmp1.not.i.i.i, label %while.body.i.i.i.remove_inode.exit.i_crit_edge, label %while.body.i.i.i.land.rhs.i.i.i_crit_edge

while.body.i.i.i.land.rhs.i.i.i_crit_edge:        ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i.i.i

while.body.i.i.i.remove_inode.exit.i_crit_edge:   ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %remove_inode.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i.i
  %cmp1.i.i = icmp eq ptr %temp_chip.010.i.i.i, %43
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.then.i.i.while.cond.i.i_crit_edge

if.then.i.i.while.cond.i.i_crit_edge:             ; preds = %if.then.i.i
  br label %while.cond.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %next_inode.i39.i = getelementptr inbounds %struct.fpga_inode, ptr %43, i32 0, i32 1
  %52 = ptrtoint ptr %next_inode.i39.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %next_inode.i39.i, align 4
  store ptr %53, ptr @fpga_first_inode, align 4
  br label %if.end14.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.then.i.i.while.cond.i.i_crit_edge
  %prev_node.0.i.i = phi ptr [ %55, %while.cond.i.i.while.cond.i.i_crit_edge ], [ %43, %if.then.i.i.while.cond.i.i_crit_edge ]
  %next_inode3.i.i = getelementptr inbounds %struct.fpga_inode, ptr %prev_node.0.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %next_inode3.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %next_inode3.i.i, align 4
  %cmp4.not.i.i = icmp eq ptr %55, %temp_chip.010.i.i.i
  br i1 %cmp4.not.i.i, label %while.end.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %next_inode3.i.i.le = getelementptr inbounds %struct.fpga_inode, ptr %prev_node.0.i.i, i32 0, i32 1
  %next_inode6.i.i = getelementptr inbounds %struct.fpga_inode, ptr %temp_chip.010.i.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %next_inode6.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %next_inode6.i.i, align 4
  %cmp7.i.i = icmp eq ptr %57, null
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.else10.i.i

if.then8.i.i:                                     ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %next_inode3.i.i.le to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %next_inode3.i.i.le, align 4
  br label %if.end14.i.i

if.else10.i.i:                                    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %next_inode3.i.i.le to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %57, ptr %next_inode3.i.i.le, align 4
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.else10.i.i, %if.then8.i.i, %if.then2.i.i
  tail call void @kfree(ptr noundef nonnull %temp_chip.010.i.i.i) #6
  br label %remove_inode.exit.i

remove_inode.exit.i:                              ; preds = %if.end14.i.i, %while.body.i.i.i.remove_inode.exit.i_crit_edge, %do.end25.i.remove_inode.exit.i_crit_edge
  %60 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %23, align 4
  tail call void @kfree(ptr noundef %61) #6
  br label %if.end28.i

if.end28.i:                                       ; preds = %remove_inode.exit.i, %land.lhs.true.i.if.end28.i_crit_edge, %if.then5.i.if.end28.i_crit_edge
  tail call void @kfree(ptr noundef %23) #6
  br label %altera_hw_filt_release.exit

altera_hw_filt_release.exit:                      ; preds = %if.end28.i, %do.end4.i.altera_hw_filt_release.exit_crit_edge
  %62 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %retval.0.i, align 4
  %filts_used = getelementptr inbounds %struct.fpga_internal, ptr %63, i32 0, i32 7
  %64 = ptrtoint ptr %filts_used to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %filts_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp8 = icmp slt i32 %65, 1
  br i1 %cmp8, label %land.lhs.true, label %altera_hw_filt_release.exit.if.end25_crit_edge

altera_hw_filt_release.exit.if.end25_crit_edge:   ; preds = %altera_hw_filt_release.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

land.lhs.true:                                    ; preds = %altera_hw_filt_release.exit
  %cis_used = getelementptr inbounds %struct.fpga_internal, ptr %63, i32 0, i32 6
  %66 = ptrtoint ptr %cis_used to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cis_used, align 4
  %dec = add i32 %67, -1
  store i32 %dec, ptr %cis_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp10 = icmp slt i32 %dec, 1
  br i1 %cmp10, label %do.body12, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

do.body12:                                        ; preds = %land.lhs.true
  %68 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool13.not = icmp eq i32 %68, 0
  br i1 %tobool13.not, label %do.body12.do.end22_crit_edge, label %do.end17

do.body12.do.end22_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22

do.end17:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3) #9
  br label %do.end22

do.end22:                                         ; preds = %do.end17, %do.body12.do.end22_crit_edge
  %69 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %retval.0.i, align 4
  %71 = load ptr, ptr @fpga_first_inode, align 4
  %72 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %70, align 4
  %cmp.i.i44 = icmp eq ptr %71, null
  br i1 %cmp.i.i44, label %do.end22.remove_inode.exit_crit_edge, label %do.end22.land.rhs.i.i47_crit_edge

do.end22.land.rhs.i.i47_crit_edge:                ; preds = %do.end22
  br label %land.rhs.i.i47

do.end22.remove_inode.exit_crit_edge:             ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %remove_inode.exit

land.rhs.i.i47:                                   ; preds = %while.body.i.i50.land.rhs.i.i47_crit_edge, %do.end22.land.rhs.i.i47_crit_edge
  %temp_chip.010.i.i45 = phi ptr [ %79, %while.body.i.i50.land.rhs.i.i47_crit_edge ], [ %71, %do.end22.land.rhs.i.i47_crit_edge ]
  %74 = ptrtoint ptr %temp_chip.010.i.i45 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %temp_chip.010.i.i45, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %cmp3.not.i.i46 = icmp eq ptr %77, %73
  br i1 %cmp3.not.i.i46, label %if.then.i, label %while.body.i.i50

while.body.i.i50:                                 ; preds = %land.rhs.i.i47
  %next_inode.i.i48 = getelementptr inbounds %struct.fpga_inode, ptr %temp_chip.010.i.i45, i32 0, i32 1
  %78 = ptrtoint ptr %next_inode.i.i48 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %next_inode.i.i48, align 4
  %cmp1.not.i.i49 = icmp eq ptr %79, null
  br i1 %cmp1.not.i.i49, label %while.body.i.i50.remove_inode.exit_crit_edge, label %while.body.i.i50.land.rhs.i.i47_crit_edge

while.body.i.i50.land.rhs.i.i47_crit_edge:        ; preds = %while.body.i.i50
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i.i47

while.body.i.i50.remove_inode.exit_crit_edge:     ; preds = %while.body.i.i50
  call void @__sanitizer_cov_trace_pc() #8
  br label %remove_inode.exit

if.then.i:                                        ; preds = %land.rhs.i.i47
  %cmp1.i = icmp eq ptr %temp_chip.010.i.i45, %71
  br i1 %cmp1.i, label %if.then2.i, label %if.then.i.while.cond.i_crit_edge

if.then.i.while.cond.i_crit_edge:                 ; preds = %if.then.i
  br label %while.cond.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %next_inode.i51 = getelementptr inbounds %struct.fpga_inode, ptr %71, i32 0, i32 1
  %80 = ptrtoint ptr %next_inode.i51 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %next_inode.i51, align 4
  store ptr %81, ptr @fpga_first_inode, align 4
  br label %if.end14.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.then.i.while.cond.i_crit_edge
  %prev_node.0.i = phi ptr [ %83, %while.cond.i.while.cond.i_crit_edge ], [ %71, %if.then.i.while.cond.i_crit_edge ]
  %next_inode3.i = getelementptr inbounds %struct.fpga_inode, ptr %prev_node.0.i, i32 0, i32 1
  %82 = ptrtoint ptr %next_inode3.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %next_inode3.i, align 4
  %cmp4.not.i = icmp eq ptr %83, %temp_chip.010.i.i45
  br i1 %cmp4.not.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %next_inode3.i.le = getelementptr inbounds %struct.fpga_inode, ptr %prev_node.0.i, i32 0, i32 1
  %next_inode6.i = getelementptr inbounds %struct.fpga_inode, ptr %temp_chip.010.i.i45, i32 0, i32 1
  %84 = ptrtoint ptr %next_inode6.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %next_inode6.i, align 4
  %cmp7.i = icmp eq ptr %85, null
  br i1 %cmp7.i, label %if.then8.i, label %if.else10.i

if.then8.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %86 = ptrtoint ptr %next_inode3.i.le to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %next_inode3.i.le, align 4
  br label %if.end14.i

if.else10.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %next_inode3.i.le to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %85, ptr %next_inode3.i.le, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else10.i, %if.then8.i, %if.then2.i
  tail call void @kfree(ptr noundef nonnull %temp_chip.010.i.i45) #6
  br label %remove_inode.exit

remove_inode.exit:                                ; preds = %if.end14.i, %while.body.i.i50.remove_inode.exit_crit_edge, %do.end22.remove_inode.exit_crit_edge
  %88 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %11, align 4
  tail call void @kfree(ptr noundef %89) #6
  br label %if.end25

if.end25:                                         ; preds = %remove_inode.exit, %land.lhs.true.if.end25_crit_edge, %altera_hw_filt_release.exit.if.end25_crit_edge
  %cmp26.not = icmp eq ptr %11, null
  br i1 %cmp26.not, label %if.end25.if.end33_crit_edge, label %if.then27

if.end25.if.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then27:                                        ; preds = %if.end25
  %data = getelementptr inbounds %struct.altera_ci_state, ptr %11, i32 0, i32 1, i32 11
  %90 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %data, align 4
  %cmp28.not = icmp eq ptr %91, null
  br i1 %cmp28.not, label %if.then27.if.end31_crit_edge, label %if.then29

if.then27.if.end31_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then29:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  %ca = getelementptr inbounds %struct.altera_ci_state, ptr %11, i32 0, i32 1
  tail call void @dvb_ca_en50221_release(ptr noundef %ca) #6
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.then27.if.end31_crit_edge
  tail call void @kfree(ptr noundef nonnull %11) #6
  br label %if.end33

if.end33:                                         ; preds = %if.end31, %if.end25.if.end33_crit_edge, %do.end4.if.end33_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ca_en50221_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @altera_ci_init(ptr nocapture noundef readonly %config, i32 noundef %ci_nr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %2 = load ptr, ptr @fpga_first_inode, align 4
  %cmp.i = icmp eq ptr %2, null
  br i1 %cmp.i, label %entry.find_inode.exit_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.find_inode.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_inode.exit

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %temp_chip.010.i = phi ptr [ %8, %while.body.i.land.rhs.i_crit_edge ], [ %2, %entry.land.rhs.i_crit_edge ]
  %3 = ptrtoint ptr %temp_chip.010.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %temp_chip.010.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %cmp3.not.i = icmp eq ptr %6, %1
  br i1 %cmp3.not.i, label %land.rhs.i.find_inode.exit_crit_edge, label %while.body.i

land.rhs.i.find_inode.exit_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_inode.exit

while.body.i:                                     ; preds = %land.rhs.i
  %next_inode.i = getelementptr inbounds %struct.fpga_inode, ptr %temp_chip.010.i, i32 0, i32 1
  %7 = ptrtoint ptr %next_inode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %next_inode.i, align 4
  %cmp1.not.i = icmp eq ptr %8, null
  br i1 %cmp1.not.i, label %while.body.i.find_inode.exit_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

while.body.i.find_inode.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_inode.exit

find_inode.exit:                                  ; preds = %while.body.i.find_inode.exit_crit_edge, %land.rhs.i.find_inode.exit_crit_edge, %entry.find_inode.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.find_inode.exit_crit_edge ], [ %temp_chip.010.i, %land.rhs.i.find_inode.exit_crit_edge ], [ null, %while.body.i.find_inode.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 64) #10
  %10 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %find_inode.exit.do.end5_crit_edge, label %do.end

find_inode.exit.do.end5_crit_edge:                ; preds = %find_inode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

do.end:                                           ; preds = %find_inode.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.7) #9
  br label %do.end5

do.end5:                                          ; preds = %do.end, %find_inode.exit.do.end5_crit_edge
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %do.end5.do.body128_crit_edge, label %if.end8

do.end5.do.body128_crit_edge:                     ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body128

if.end8:                                          ; preds = %do.end5
  %cmp.not = icmp eq ptr %retval.0.i, null
  br i1 %cmp.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end8
  %11 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %retval.0.i, align 4
  %cis_used = getelementptr inbounds %struct.fpga_internal, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %cis_used to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cis_used, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %cis_used, align 4
  %fpga_rw = getelementptr inbounds %struct.altera_ci_config, ptr %config, i32 0, i32 3
  %15 = ptrtoint ptr %fpga_rw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fpga_rw, align 4
  %fpga_rw10 = getelementptr inbounds %struct.fpga_internal, ptr %12, i32 0, i32 5
  %17 = ptrtoint ptr %fpga_rw10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %fpga_rw10, align 4
  %18 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool12.not = icmp eq i32 %18, 0
  br i1 %tobool12.not, label %if.then9.do.end60_crit_edge, label %if.then9.do.body50_crit_edge

if.then9.do.body50_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body50

if.then9.do.end60_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end60

if.else:                                          ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i201 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 172) #10
  %tobool23.not = icmp eq ptr %call7.i.i201, null
  br i1 %tobool23.not, label %if.else.do.body128_crit_edge, label %if.end25

if.else.do.body128_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body128

if.end25:                                         ; preds = %if.else
  %20 = load ptr, ptr @fpga_first_inode, align 4
  %cmp.i202 = icmp eq ptr %20, null
  br i1 %cmp.i202, label %if.then.i, label %if.end25.while.cond.i_crit_edge

if.end25.while.cond.i_crit_edge:                  ; preds = %if.end25
  br label %while.cond.i

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i203 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3264, i32 noundef 8) #10
  store ptr %call7.i.i203, ptr @fpga_first_inode, align 4
  br label %if.end10.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end25.while.cond.i_crit_edge
  %new_node.0.i = phi ptr [ %23, %while.cond.i.while.cond.i_crit_edge ], [ %20, %if.end25.while.cond.i_crit_edge ]
  %next_inode.i204 = getelementptr inbounds %struct.fpga_inode, ptr %new_node.0.i, i32 0, i32 1
  %22 = ptrtoint ptr %next_inode.i204 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %next_inode.i204, align 4
  %cmp1.not.i205 = icmp eq ptr %23, null
  br i1 %cmp1.not.i205, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %next_inode.i204.le = getelementptr inbounds %struct.fpga_inode, ptr %new_node.0.i, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i27.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3264, i32 noundef 8) #10
  %25 = ptrtoint ptr %next_inode.i204.le to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i27.i, ptr %next_inode.i204.le, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %while.end.i, %if.then.i
  %new_node.1.i = phi ptr [ %call7.i.i203, %if.then.i ], [ %call7.i27.i, %while.end.i ]
  %cmp11.not.i = icmp eq ptr %new_node.1.i, null
  br i1 %cmp11.not.i, label %if.end10.i.do.body128_crit_edge, label %if.end29

if.end10.i.do.body128_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body128

if.end29:                                         ; preds = %if.end10.i
  %26 = ptrtoint ptr %new_node.1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i201, ptr %new_node.1.i, align 8
  %next_inode14.i = getelementptr inbounds %struct.fpga_inode, ptr %new_node.1.i, i32 0, i32 1
  %27 = ptrtoint ptr %next_inode14.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %next_inode14.i, align 4
  %cis_used30 = getelementptr inbounds %struct.fpga_internal, ptr %call7.i.i201, i32 0, i32 6
  %28 = ptrtoint ptr %cis_used30 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %cis_used30, align 8
  %29 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %config, align 4
  %31 = ptrtoint ptr %call7.i.i201 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %call7.i.i201, align 8
  %fpga_rw33 = getelementptr inbounds %struct.altera_ci_config, ptr %config, i32 0, i32 3
  %32 = ptrtoint ptr %fpga_rw33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fpga_rw33, align 4
  %fpga_rw34 = getelementptr inbounds %struct.fpga_internal, ptr %call7.i.i201, i32 0, i32 5
  %34 = ptrtoint ptr %fpga_rw34 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %fpga_rw34, align 4
  %fpga_mutex = getelementptr inbounds %struct.fpga_internal, ptr %call7.i.i201, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %fpga_mutex, ptr noundef nonnull @.str.11, ptr noundef nonnull @altera_ci_init.__key) #6
  %strt_wrk = getelementptr inbounds %struct.fpga_internal, ptr %call7.i.i201, i32 0, i32 8
  %35 = ptrtoint ptr %strt_wrk to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %strt_wrk, align 8
  %36 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool39.not = icmp eq i32 %36, 0
  br i1 %tobool39.not, label %if.end29.do.end60_crit_edge, label %if.end29.do.body50_crit_edge

if.end29.do.body50_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body50

if.end29.do.end60_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end60

do.body50:                                        ; preds = %if.end29.do.body50_crit_edge, %if.then9.do.body50_crit_edge
  %.str.9.sink = phi ptr [ @.str.9, %if.then9.do.body50_crit_edge ], [ @.str.13, %if.end29.do.body50_crit_edge ]
  %inter.0.ph = phi ptr [ %12, %if.then9.do.body50_crit_edge ], [ %call7.i.i201, %if.end29.do.body50_crit_edge ]
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.9.sink, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.7) #9
  %.pr = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool51.not = icmp eq i32 %.pr, 0
  br i1 %tobool51.not, label %do.body50.do.end60_crit_edge, label %do.end55

do.body50.do.end60_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end60

do.end55:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %ci_nr, -1
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.7, ptr noundef nonnull %call7.i.i, i32 noundef %sub) #9
  br label %do.end60

do.end60:                                         ; preds = %do.end55, %do.body50.do.end60_crit_edge, %if.end29.do.end60_crit_edge, %if.then9.do.end60_crit_edge
  %inter.0225 = phi ptr [ %inter.0.ph, %do.end55 ], [ %inter.0.ph, %do.body50.do.end60_crit_edge ], [ %call7.i.i201, %if.end29.do.end60_crit_edge ], [ %12, %if.then9.do.end60_crit_edge ]
  %37 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %inter.0225, ptr %call7.i.i, align 8
  %sub62 = add i32 %ci_nr, -1
  %nr = getelementptr inbounds %struct.altera_ci_state, ptr %call7.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub62, ptr %nr, align 4
  %ca = getelementptr inbounds %struct.altera_ci_state, ptr %call7.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %ca to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %ca, align 4
  %read_attribute_mem = getelementptr inbounds %struct.altera_ci_state, ptr %call7.i.i, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %read_attribute_mem to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @altera_ci_read_attribute_mem, ptr %read_attribute_mem, align 8
  %write_attribute_mem = getelementptr inbounds %struct.altera_ci_state, ptr %call7.i.i, i32 0, i32 1, i32 2
  %41 = ptrtoint ptr %write_attribute_mem to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @altera_ci_write_attribute_mem, ptr %write_attribute_mem, align 4
  %read_cam_control = getelementptr inbounds %struct.altera_ci_state, ptr %call7.i.i, i32 0, i32 1, i32 3
  %42 = ptrtoint ptr %read_cam_control to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @altera_ci_read_cam_ctl, ptr %read_cam_control, align 8
  %write_cam_control = getelementptr inbounds %struct.altera_ci_state, ptr %call7.i.i, i32 0, i32 1, i32 4
  %43 = ptrtoint ptr %write_cam_control to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @altera_ci_write_cam_ctl, ptr %write_cam_control, align 4
  %slot_reset = getelementptr inbounds %struct.altera_ci_state, ptr %call7.i.i, i32 0, i32 1, i32 7
  %44 = ptrtoint ptr %slot_reset to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @altera_ci_slot_reset, ptr %slot_reset, align 8
  %slot_shutdown = getelementptr inbounds %struct.altera_ci_state, ptr %call7.i.i, i32 0, i32 1, i32 8
  %45 = ptrtoint ptr %slot_shutdown to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @altera_ci_slot_shutdown, ptr %slot_shutdown, align 4
  %slot_ts_enable = getelementptr inbounds %struct.altera_ci_state, ptr %call7.i.i, i32 0, i32 1, i32 9
  %46 = ptrtoint ptr %slot_ts_enable to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @altera_ci_slot_ts_ctl, ptr %slot_ts_enable, align 8
  %poll_slot_status = getelementptr inbounds %struct.altera_ci_state, ptr %call7.i.i, i32 0, i32 1, i32 10
  %47 = ptrtoint ptr %poll_slot_status to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @altera_poll_ci_slot_status, ptr %poll_slot_status, align 4
  %data = getelementptr inbounds %struct.altera_ci_state, ptr %call7.i.i, i32 0, i32 1, i32 11
  %48 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call7.i.i, ptr %data, align 8
  %adapter = getelementptr inbounds %struct.altera_ci_config, ptr %config, i32 0, i32 1
  %49 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %adapter, align 4
  %call73 = tail call i32 @dvb_ca_en50221_init(ptr noundef %50, ptr noundef %ca, i32 noundef 0, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74.not = icmp eq i32 %call73, 0
  br i1 %cmp74.not, label %if.end76, label %do.end60.do.body128_crit_edge

do.end60.do.body128_crit_edge:                    ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body128

if.end76:                                         ; preds = %do.end60
  %arrayidx = getelementptr %struct.fpga_internal, ptr %inter.0225, i32 0, i32 3, i32 %sub62
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  %52 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %config, align 4
  %54 = load ptr, ptr @fpga_first_inode, align 4
  %cmp.i.i = icmp eq ptr %54, null
  br i1 %cmp.i.i, label %if.end76.find_inode.exit.i_crit_edge, label %if.end76.land.rhs.i.i_crit_edge

if.end76.land.rhs.i.i_crit_edge:                  ; preds = %if.end76
  br label %land.rhs.i.i

if.end76.find_inode.exit.i_crit_edge:             ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_inode.exit.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %if.end76.land.rhs.i.i_crit_edge
  %temp_chip.010.i.i = phi ptr [ %60, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %54, %if.end76.land.rhs.i.i_crit_edge ]
  %55 = ptrtoint ptr %temp_chip.010.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %temp_chip.010.i.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %cmp3.not.i.i = icmp eq ptr %58, %53
  br i1 %cmp3.not.i.i, label %land.rhs.i.i.find_inode.exit.i_crit_edge, label %while.body.i.i

land.rhs.i.i.find_inode.exit.i_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_inode.exit.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %next_inode.i.i = getelementptr inbounds %struct.fpga_inode, ptr %temp_chip.010.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %next_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %next_inode.i.i, align 4
  %cmp1.not.i.i = icmp eq ptr %60, null
  br i1 %cmp1.not.i.i, label %while.body.i.i.find_inode.exit.i_crit_edge, label %while.body.i.i.land.rhs.i.i_crit_edge

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i.i

while.body.i.i.find_inode.exit.i_crit_edge:       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_inode.exit.i

find_inode.exit.i:                                ; preds = %while.body.i.i.find_inode.exit.i_crit_edge, %land.rhs.i.i.find_inode.exit.i_crit_edge, %if.end76.find_inode.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ null, %if.end76.find_inode.exit.i_crit_edge ], [ null, %while.body.i.i.find_inode.exit.i_crit_edge ], [ %temp_chip.010.i.i, %land.rhs.i.i.find_inode.exit.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %61 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %61, i32 noundef 3520, i32 noundef 24) #10
  %62 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i = icmp eq i32 %62, 0
  br i1 %tobool.not.i, label %find_inode.exit.i.do.end5.i_crit_edge, label %do.end.i

find_inode.exit.i.do.end5.i_crit_edge:            ; preds = %find_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5.i

do.end.i:                                         ; preds = %find_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.44) #9
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %find_inode.exit.i.do.end5.i_crit_edge
  %tobool6.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool6.not.i, label %do.end5.i.do.body83.i_crit_edge, label %if.end8.i

do.end5.i.do.body83.i_crit_edge:                  ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body83.i

if.end8.i:                                        ; preds = %do.end5.i
  %cmp.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %cmp.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end8.i
  %63 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %retval.0.i.i, align 4
  %filts_used.i = getelementptr inbounds %struct.fpga_internal, ptr %64, i32 0, i32 7
  %65 = ptrtoint ptr %filts_used.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %filts_used.i, align 4
  %inc.i = add i32 %66, 1
  store i32 %inc.i, ptr %filts_used.i, align 4
  %67 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool11.not.i = icmp eq i32 %67, 0
  br i1 %tobool11.not.i, label %if.then9.i.do.end58.i_crit_edge, label %if.then9.i.do.body48.i_crit_edge

if.then9.i.do.body48.i_crit_edge:                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body48.i

if.then9.i.do.end58.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end58.i

if.else.i:                                        ; preds = %if.end8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %68 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i1.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %68, i32 noundef 3520, i32 noundef 172) #10
  %tobool22.not.i = icmp eq ptr %call7.i.i1.i, null
  br i1 %tobool22.not.i, label %if.else.i.do.body83.i_crit_edge, label %if.end24.i

if.else.i.do.body83.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body83.i

if.end24.i:                                       ; preds = %if.else.i
  %69 = load ptr, ptr @fpga_first_inode, align 4
  %cmp.i2.i = icmp eq ptr %69, null
  br i1 %cmp.i2.i, label %if.then.i.i, label %if.end24.i.while.cond.i.i_crit_edge

if.end24.i.while.cond.i.i_crit_edge:              ; preds = %if.end24.i
  br label %while.cond.i.i

if.then.i.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %70 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i3.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 3264, i32 noundef 8) #10
  store ptr %call7.i.i3.i, ptr @fpga_first_inode, align 4
  br label %if.end10.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.end24.i.while.cond.i.i_crit_edge
  %new_node.0.i.i = phi ptr [ %72, %while.cond.i.i.while.cond.i.i_crit_edge ], [ %69, %if.end24.i.while.cond.i.i_crit_edge ]
  %next_inode.i4.i = getelementptr inbounds %struct.fpga_inode, ptr %new_node.0.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %next_inode.i4.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %next_inode.i4.i, align 4
  %cmp1.not.i5.i = icmp eq ptr %72, null
  br i1 %cmp1.not.i5.i, label %while.end.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %next_inode.i4.i.le = getelementptr inbounds %struct.fpga_inode, ptr %new_node.0.i.i, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %73 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i27.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %73, i32 noundef 3264, i32 noundef 8) #10
  %74 = ptrtoint ptr %next_inode.i4.i.le to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call7.i27.i.i, ptr %next_inode.i4.i.le, align 4
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %while.end.i.i, %if.then.i.i
  %new_node.1.i.i = phi ptr [ %call7.i.i3.i, %if.then.i.i ], [ %call7.i27.i.i, %while.end.i.i ]
  %cmp11.not.i.i = icmp eq ptr %new_node.1.i.i, null
  br i1 %cmp11.not.i.i, label %if.end10.i.i.do.body83.i_crit_edge, label %if.end28.i

if.end10.i.i.do.body83.i_crit_edge:               ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body83.i

if.end28.i:                                       ; preds = %if.end10.i.i
  %75 = ptrtoint ptr %new_node.1.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call7.i.i1.i, ptr %new_node.1.i.i, align 8
  %next_inode14.i.i = getelementptr inbounds %struct.fpga_inode, ptr %new_node.1.i.i, i32 0, i32 1
  %76 = ptrtoint ptr %next_inode14.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %next_inode14.i.i, align 4
  %filts_used29.i = getelementptr inbounds %struct.fpga_internal, ptr %call7.i.i1.i, i32 0, i32 7
  %77 = ptrtoint ptr %filts_used29.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %filts_used29.i, align 4
  %78 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %config, align 4
  %80 = ptrtoint ptr %call7.i.i1.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %79, ptr %call7.i.i1.i, align 8
  %fpga_rw.i = getelementptr inbounds %struct.altera_ci_config, ptr %config, i32 0, i32 3
  %81 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %fpga_rw.i, align 4
  %fpga_rw32.i = getelementptr inbounds %struct.fpga_internal, ptr %call7.i.i1.i, i32 0, i32 5
  %83 = ptrtoint ptr %fpga_rw32.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %82, ptr %fpga_rw32.i, align 4
  %fpga_mutex.i = getelementptr inbounds %struct.fpga_internal, ptr %call7.i.i1.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %fpga_mutex.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @altera_hw_filt_init.__key) #6
  %strt_wrk.i = getelementptr inbounds %struct.fpga_internal, ptr %call7.i.i1.i, i32 0, i32 8
  %84 = ptrtoint ptr %strt_wrk.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %strt_wrk.i, align 8
  %85 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool37.not.i = icmp eq i32 %85, 0
  br i1 %tobool37.not.i, label %if.end28.i.do.end58.i_crit_edge, label %if.end28.i.do.body48.i_crit_edge

if.end28.i.do.body48.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body48.i

if.end28.i.do.end58.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end58.i

do.body48.i:                                      ; preds = %if.end28.i.do.body48.i_crit_edge, %if.then9.i.do.body48.i_crit_edge
  %.str.9.sink.i = phi ptr [ @.str.9, %if.then9.i.do.body48.i_crit_edge ], [ @.str.13, %if.end28.i.do.body48.i_crit_edge ]
  %inter.0.ph.i = phi ptr [ %64, %if.then9.i.do.body48.i_crit_edge ], [ %call7.i.i1.i, %if.end28.i.do.body48.i_crit_edge ]
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.9.sink.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.44) #9
  %.pr.i = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool49.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool49.not.i, label %do.body48.i.do.end58.i_crit_edge, label %do.end53.i

do.body48.i.do.end58.i_crit_edge:                 ; preds = %do.body48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end58.i

do.end53.i:                                       ; preds = %do.body48.i
  call void @__sanitizer_cov_trace_pc() #8
  %call55.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.44, ptr noundef nonnull %call7.i.i.i, i32 noundef %sub62) #9
  br label %do.end58.i

do.end58.i:                                       ; preds = %do.end53.i, %do.body48.i.do.end58.i_crit_edge, %if.end28.i.do.end58.i_crit_edge, %if.then9.i.do.end58.i_crit_edge
  %inter.09.i = phi ptr [ %inter.0.ph.i, %do.end53.i ], [ %inter.0.ph.i, %do.body48.i.do.end58.i_crit_edge ], [ %call7.i.i1.i, %if.end28.i.do.end58.i_crit_edge ], [ %64, %if.then9.i.do.end58.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.fpga_internal, ptr %inter.09.i, i32 0, i32 2, i32 %sub62
  %86 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  %demux.i = getelementptr inbounds %struct.altera_ci_config, ptr %config, i32 0, i32 2
  %87 = ptrtoint ptr %demux.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %demux.i, align 4
  %demux61.i = getelementptr inbounds %struct.netup_hw_pid_filter, ptr %call7.i.i.i, i32 0, i32 1
  %89 = ptrtoint ptr %demux61.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %88, ptr %demux61.i, align 4
  %90 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %inter.09.i, ptr %call7.i.i.i, align 8
  %nr.i = getelementptr inbounds %struct.netup_hw_pid_filter, ptr %call7.i.i.i, i32 0, i32 5
  %91 = ptrtoint ptr %nr.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %sub62, ptr %nr.i, align 4
  %start_feed.i = getelementptr inbounds %struct.dvb_demux, ptr %88, i32 0, i32 4
  %92 = ptrtoint ptr %start_feed.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %start_feed.i, align 8
  %start_feed65.i = getelementptr inbounds %struct.netup_hw_pid_filter, ptr %call7.i.i.i, i32 0, i32 2
  %94 = ptrtoint ptr %start_feed65.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %93, ptr %start_feed65.i, align 8
  %stop_feed.i = getelementptr inbounds %struct.dvb_demux, ptr %88, i32 0, i32 5
  %95 = ptrtoint ptr %stop_feed.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %stop_feed.i, align 4
  %stop_feed67.i = getelementptr inbounds %struct.netup_hw_pid_filter, ptr %call7.i.i.i, i32 0, i32 3
  %97 = ptrtoint ptr %stop_feed67.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %96, ptr %stop_feed67.i, align 4
  %98 = zext i32 %ci_nr to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ci_nr, label %do.end58.i.if.end82.i_crit_edge [
    i32 1, label %do.end58.i.if.end82.sink.split.i_crit_edge
    i32 2, label %if.then76.i
  ]

do.end58.i.if.end82.sink.split.i_crit_edge:       ; preds = %do.end58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82.sink.split.i

do.end58.i.if.end82.i_crit_edge:                  ; preds = %do.end58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82.i

if.then76.i:                                      ; preds = %do.end58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82.sink.split.i

if.end82.sink.split.i:                            ; preds = %if.then76.i, %do.end58.i.if.end82.sink.split.i_crit_edge
  %altera_ci_start_feed_2.sink.i = phi ptr [ @altera_ci_start_feed_2, %if.then76.i ], [ @altera_ci_start_feed_1, %do.end58.i.if.end82.sink.split.i_crit_edge ]
  %altera_ci_stop_feed_2.sink.i = phi ptr [ @altera_ci_stop_feed_2, %if.then76.i ], [ @altera_ci_stop_feed_1, %do.end58.i.if.end82.sink.split.i_crit_edge ]
  %99 = ptrtoint ptr %start_feed.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %altera_ci_start_feed_2.sink.i, ptr %start_feed.i, align 8
  %100 = ptrtoint ptr %demux61.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %demux61.i, align 4
  %stop_feed80.i = getelementptr inbounds %struct.dvb_demux, ptr %101, i32 0, i32 5
  %102 = ptrtoint ptr %stop_feed80.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %altera_ci_stop_feed_2.sink.i, ptr %stop_feed80.i, align 4
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.end82.sink.split.i, %do.end58.i.if.end82.i_crit_edge
  tail call fastcc void @altera_toggle_fullts_streaming(ptr noundef nonnull %call7.i.i.i, i32 noundef 1) #6
  br label %altera_hw_filt_init.exit

do.body83.i:                                      ; preds = %if.end10.i.i.do.body83.i_crit_edge, %if.else.i.do.body83.i_crit_edge, %do.end5.i.do.body83.i_crit_edge
  %inter.1.i = phi ptr [ null, %do.end5.i.do.body83.i_crit_edge ], [ null, %if.else.i.do.body83.i_crit_edge ], [ %call7.i.i1.i, %if.end10.i.i.do.body83.i_crit_edge ]
  %103 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool84.not.i = icmp eq i32 %103, 0
  br i1 %tobool84.not.i, label %do.body83.i.do.end93.i_crit_edge, label %do.end88.i

do.body83.i.do.end93.i_crit_edge:                 ; preds = %do.body83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end93.i

do.end88.i:                                       ; preds = %do.body83.i
  call void @__sanitizer_cov_trace_pc() #8
  %call90.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.44, i32 noundef -12) #9
  br label %do.end93.i

do.end93.i:                                       ; preds = %do.end88.i, %do.body83.i.do.end93.i_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i.i) #6
  tail call void @kfree(ptr noundef %inter.1.i) #6
  br label %altera_hw_filt_init.exit

altera_hw_filt_init.exit:                         ; preds = %do.end93.i, %if.end82.i
  %strt_wrk80 = getelementptr inbounds %struct.fpga_internal, ptr %inter.0225, i32 0, i32 8
  %104 = ptrtoint ptr %strt_wrk80 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %strt_wrk80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool81.not = icmp eq i32 %105, 0
  br i1 %tobool81.not, label %altera_hw_filt_init.exit.do.body94_crit_edge, label %do.body83

altera_hw_filt_init.exit.do.body94_crit_edge:     ; preds = %altera_hw_filt_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body94

do.body83:                                        ; preds = %altera_hw_filt_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %work = getelementptr inbounds %struct.fpga_internal, ptr %inter.0225, i32 0, i32 4
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #6
  %106 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.fpga_internal, ptr %inter.0225, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.19, ptr noundef nonnull @altera_ci_init.__key.18, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry88 = getelementptr inbounds %struct.fpga_internal, ptr %inter.0225, i32 0, i32 4, i32 1
  %107 = ptrtoint ptr %entry88 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %entry88, ptr %entry88, align 4
  %prev.i = getelementptr inbounds %struct.fpga_internal, ptr %inter.0225, i32 0, i32 4, i32 1, i32 1
  %108 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %entry88, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.fpga_internal, ptr %inter.0225, i32 0, i32 4, i32 2
  %109 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @netup_read_ci_status, ptr %func, align 4
  %110 = ptrtoint ptr %strt_wrk80 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %strt_wrk80, align 4
  br label %do.body94

do.body94:                                        ; preds = %do.body83, %altera_hw_filt_init.exit.do.body94_crit_edge
  %111 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool95.not = icmp eq i32 %111, 0
  br i1 %tobool95.not, label %do.body94.do.end104_crit_edge, label %do.end99

do.body94.do.end104_crit_edge:                    ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end104

do.end99:                                         ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #8
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.7) #9
  br label %do.end104

do.end104:                                        ; preds = %do.end99, %do.body94.do.end104_crit_edge
  %fpga_mutex105 = getelementptr inbounds %struct.fpga_internal, ptr %inter.0225, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %fpga_mutex105, i32 noundef 0) #6
  %fpga_rw.i206 = getelementptr inbounds %struct.fpga_internal, ptr %inter.0225, i32 0, i32 5
  %112 = ptrtoint ptr %fpga_rw.i206 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %fpga_rw.i206, align 4
  %114 = ptrtoint ptr %inter.0225 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %inter.0225, align 4
  %call.i = tail call i32 %113(ptr noundef %115, i32 noundef 1, i32 noundef 12, i32 noundef 0) #6
  %116 = ptrtoint ptr %fpga_rw.i206 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %fpga_rw.i206, align 4
  %118 = ptrtoint ptr %inter.0225 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %inter.0225, align 4
  %call4.i = tail call i32 %117(ptr noundef %119, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %120 = ptrtoint ptr %fpga_rw.i206 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %fpga_rw.i206, align 4
  %122 = ptrtoint ptr %inter.0225 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %inter.0225, align 4
  %call.i208 = tail call i32 %121(ptr noundef %123, i32 noundef 1, i32 noundef 13, i32 noundef 0) #6
  %124 = ptrtoint ptr %fpga_rw.i206 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %fpga_rw.i206, align 4
  %126 = ptrtoint ptr %inter.0225 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %inter.0225, align 4
  %call4.i209 = tail call i32 %125(ptr noundef %127, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %128 = ptrtoint ptr %fpga_rw.i206 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %fpga_rw.i206, align 4
  %130 = ptrtoint ptr %inter.0225 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %inter.0225, align 4
  %call.i211 = tail call i32 %129(ptr noundef %131, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  %132 = ptrtoint ptr %fpga_rw.i206 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %fpga_rw.i206, align 4
  %134 = ptrtoint ptr %inter.0225 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %inter.0225, align 4
  %call4.i212 = tail call i32 %133(ptr noundef %135, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  %136 = ptrtoint ptr %fpga_rw.i206 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %fpga_rw.i206, align 4
  %138 = ptrtoint ptr %inter.0225 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %inter.0225, align 4
  %call.i214 = tail call i32 %137(ptr noundef %139, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  %140 = ptrtoint ptr %fpga_rw.i206 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %fpga_rw.i206, align 4
  %142 = ptrtoint ptr %inter.0225 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %inter.0225, align 4
  %conv110 = and i32 %call4.i212, 207
  %conv.i = or i32 %conv110, 48
  %call4.i215 = tail call i32 %141(ptr noundef %143, i32 noundef 0, i32 noundef %conv.i, i32 noundef 0) #6
  %144 = ptrtoint ptr %fpga_rw.i206 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %fpga_rw.i206, align 4
  %146 = ptrtoint ptr %inter.0225 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %inter.0225, align 4
  %call.i217 = tail call i32 %145(ptr noundef %147, i32 noundef 1, i32 noundef 15, i32 noundef 0) #6
  %148 = ptrtoint ptr %fpga_rw.i206 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %fpga_rw.i206, align 4
  %150 = ptrtoint ptr %inter.0225 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %inter.0225, align 4
  %call4.i218 = tail call i32 %149(ptr noundef %151, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  %152 = ptrtoint ptr %fpga_rw.i206 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %fpga_rw.i206, align 4
  %154 = ptrtoint ptr %inter.0225 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %inter.0225, align 4
  %call.i220 = tail call i32 %153(ptr noundef %155, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %156 = ptrtoint ptr %fpga_rw.i206 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %fpga_rw.i206, align 4
  %158 = ptrtoint ptr %inter.0225 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %inter.0225, align 4
  %call4.i221 = tail call i32 %157(ptr noundef %159, i32 noundef 0, i32 noundef 68, i32 noundef 0) #6
  tail call void @mutex_unlock(ptr noundef %fpga_mutex105) #6
  %160 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool116.not = icmp eq i32 %160, 0
  br i1 %tobool116.not, label %do.end104.do.end125_crit_edge, label %do.end120

do.end104.do.end125_crit_edge:                    ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end125

do.end120:                                        ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #8
  %call122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.7, i32 noundef %call4.i218) #9
  br label %do.end125

do.end125:                                        ; preds = %do.end120, %do.end104.do.end125_crit_edge
  %work126 = getelementptr inbounds %struct.fpga_internal, ptr %inter.0225, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %161 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %161, ptr noundef %work126) #6
  br label %cleanup

do.body128:                                       ; preds = %do.end60.do.body128_crit_edge, %if.end10.i.do.body128_crit_edge, %if.else.do.body128_crit_edge, %do.end5.do.body128_crit_edge
  %ret.0 = phi i32 [ %call73, %do.end60.do.body128_crit_edge ], [ -12, %do.end5.do.body128_crit_edge ], [ -12, %if.else.do.body128_crit_edge ], [ -12, %if.end10.i.do.body128_crit_edge ]
  %inter.1 = phi ptr [ %inter.0225, %do.end60.do.body128_crit_edge ], [ null, %do.end5.do.body128_crit_edge ], [ null, %if.else.do.body128_crit_edge ], [ %call7.i.i201, %if.end10.i.do.body128_crit_edge ]
  %162 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool129.not = icmp eq i32 %162, 0
  br i1 %tobool129.not, label %do.body128.do.end138_crit_edge, label %do.end133

do.body128.do.end138_crit_edge:                   ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end138

do.end133:                                        ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #8
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.7, i32 noundef %ret.0) #9
  br label %do.end138

do.end138:                                        ; preds = %do.end133, %do.body128.do.end138_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i) #6
  tail call void @kfree(ptr noundef %inter.1) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end138, %do.end125
  %retval.0 = phi i32 [ %ret.0, %do.end138 ], [ 0, %do.end125 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_ci_read_attribute_mem(ptr nocapture noundef readonly %en50221, i32 noundef %slot, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @altera_ci_op_cam(ptr noundef %en50221, i32 noundef %slot, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef %addr, i8 noundef zeroext 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_ci_write_attribute_mem(ptr nocapture noundef readonly %en50221, i32 noundef %slot, i32 noundef %addr, i8 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @altera_ci_op_cam(ptr noundef %en50221, i32 noundef %slot, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef %addr, i8 noundef zeroext %data)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_ci_read_cam_ctl(ptr nocapture noundef readonly %en50221, i32 noundef %slot, i8 noundef zeroext %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %addr to i32
  %call = tail call fastcc i32 @altera_ci_op_cam(ptr noundef %en50221, i32 noundef %slot, i8 noundef zeroext 1, i8 noundef zeroext 1, i32 noundef %conv, i8 noundef zeroext 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_ci_write_cam_ctl(ptr nocapture noundef readonly %en50221, i32 noundef %slot, i8 noundef zeroext %addr, i8 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %addr to i32
  %call = tail call fastcc i32 @altera_ci_op_cam(ptr noundef %en50221, i32 noundef %slot, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef %conv, i8 noundef zeroext %data)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_ci_slot_reset(ptr nocapture noundef readonly %en50221, i32 noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %en50221, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %4, 1000
  %5 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.39) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end6, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %do.end4
  %fpga_mutex = getelementptr inbounds %struct.fpga_internal, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %fpga_mutex, i32 noundef 0) #6
  %fpga_rw.i = getelementptr inbounds %struct.fpga_internal, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fpga_rw.i, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %call.i = tail call i32 %7(ptr noundef %9, i32 noundef 1, i32 noundef 7, i32 noundef 0) #6
  %10 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fpga_rw.i, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %call4.i = tail call i32 %11(ptr noundef %13, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  %and = and i32 %call4.i, 207
  %nr = getelementptr inbounds %struct.altera_ci_state, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr, align 4
  %sub = sub i32 5, %15
  %shl = shl nuw i32 1, %sub
  %16 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fpga_rw.i, align 4
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %call.i55 = tail call i32 %17(ptr noundef %19, i32 noundef 1, i32 noundef 7, i32 noundef 0) #6
  %20 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fpga_rw.i, align 4
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %shl.masked = and i32 %shl, 255
  %conv.i = or i32 %shl.masked, %and
  %call4.i56 = tail call i32 %21(ptr noundef %23, i32 noundef 0, i32 noundef %conv.i, i32 noundef 0) #6
  tail call void @mutex_unlock(ptr noundef %fpga_mutex) #6
  br label %for.cond

for.cond:                                         ; preds = %if.end20.for.cond_crit_edge, %if.end6
  tail call void @msleep(i32 noundef 50) #6
  tail call void @mutex_lock_nested(ptr noundef %fpga_mutex, i32 noundef 0) #6
  %24 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fpga_rw.i, align 4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %call.i58 = tail call i32 %25(ptr noundef %27, i32 noundef 1, i32 noundef 7, i32 noundef 0) #6
  %28 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fpga_rw.i, align 4
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %call4.i59 = tail call i32 %29(ptr noundef %31, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %fpga_mutex) #6
  %32 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr, align 4
  %sub14 = sub i32 5, %33
  %shl15 = shl nuw i32 1, %sub14
  %and16 = and i32 %shl15, %call4.i59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %cmp17 = icmp eq i32 %and16, 0
  br i1 %cmp17, label %for.cond.do.body26_crit_edge, label %if.end20

for.cond.do.body26_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body26

if.end20:                                         ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %sub21 = sub i32 %add, %34
  %cmp22 = icmp slt i32 %sub21, 0
  br i1 %cmp22, label %if.end20.do.body26_crit_edge, label %if.end20.for.cond_crit_edge

if.end20.for.cond_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

if.end20.do.body26_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body26

do.body26:                                        ; preds = %if.end20.do.body26_crit_edge, %for.cond.do.body26_crit_edge
  %35 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool27.not = icmp eq i32 %35, 0
  br i1 %tobool27.not, label %do.body26.cleanup_crit_edge, label %do.end31

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end31:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %sub35 = sub i32 %36, %4
  %call36 = tail call i32 @jiffies_to_msecs(i32 noundef %sub35) #6
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.39, i32 noundef %call36) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %do.body26.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end4.cleanup_crit_edge ], [ 0, %do.end31 ], [ 0, %do.body26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @altera_ci_slot_shutdown(ptr nocapture noundef readnone %en50221, i32 noundef %slot) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_ci_slot_ts_ctl(ptr nocapture noundef readonly %en50221, i32 noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %en50221, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.43) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end5, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  %fpga_mutex = getelementptr inbounds %struct.fpga_internal, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %fpga_mutex, i32 noundef 0) #6
  %fpga_rw.i = getelementptr inbounds %struct.fpga_internal, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fpga_rw.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %call.i = tail call i32 %6(ptr noundef %8, i32 noundef 1, i32 noundef 7, i32 noundef 0) #6
  %9 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fpga_rw.i, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %call4.i = tail call i32 %10(ptr noundef %12, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  %and = and i32 %call4.i, 15
  %nr = getelementptr inbounds %struct.altera_ci_state, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr, align 4
  %sub = sub i32 3, %14
  %shl = shl nuw i32 1, %sub
  %15 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fpga_rw.i, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %call.i16 = tail call i32 %16(ptr noundef %18, i32 noundef 1, i32 noundef 7, i32 noundef 0) #6
  %19 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fpga_rw.i, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %shl.masked = and i32 %shl, 255
  %conv.i = or i32 %shl.masked, %and
  %call4.i17 = tail call i32 %20(ptr noundef %22, i32 noundef 0, i32 noundef %conv.i, i32 noundef 0) #6
  tail call void @mutex_unlock(ptr noundef %fpga_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %do.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @altera_poll_ci_slot_status(ptr nocapture noundef readonly %en50221, i32 noundef %slot, i32 noundef %open) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %en50221, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %status = getelementptr inbounds %struct.altera_ci_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ca_en50221_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netup_read_ci_status(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -112
  %0 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.61) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %fpga_mutex = getelementptr i8, ptr %work, i32 -108
  tail call void @mutex_lock_nested(ptr noundef %fpga_mutex, i32 noundef 0) #6
  %fpga_rw.i = getelementptr i8, ptr %work, i32 44
  %1 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fpga_rw.i, align 4
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call i32 %2(ptr noundef %4, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %5 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fpga_rw.i, align 4
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %call4.i = tail call i32 %6(ptr noundef %8, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  %9 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fpga_rw.i, align 4
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %call.i64 = tail call i32 %10(ptr noundef %12, i32 noundef 1, i32 noundef 7, i32 noundef 0) #6
  %13 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fpga_rw.i, align 4
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 4
  %call4.i65 = tail call i32 %14(ptr noundef %16, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %fpga_mutex) #6
  %state = getelementptr i8, ptr %work, i32 -8
  %arrayidx = getelementptr i8, ptr %work, i32 -4
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %cmp.not = icmp eq ptr %18, null
  br i1 %cmp.not, label %do.end4.if.end26_crit_edge, label %if.then8

do.end4.if.end26_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then8:                                         ; preds = %do.end4
  %and = and i32 %call4.i65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp9 = icmp eq i32 %and, 0
  %cond = select i1 %cmp9, i32 5, i32 0
  %status = getelementptr inbounds %struct.altera_ci_state, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond, ptr %status, align 4
  %20 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool13.not = icmp eq i32 %20, 0
  br i1 %tobool13.not, label %if.then8.if.end26_crit_edge, label %do.end17

if.then8.if.end26_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

do.end17:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %status21 = getelementptr inbounds %struct.altera_ci_state, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %status21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %status21, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.61, i32 noundef %24) #9
  br label %if.end26

if.end26:                                         ; preds = %do.end17, %if.then8.if.end26_crit_edge, %do.end4.if.end26_crit_edge
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %state, align 4
  %cmp29.not = icmp eq ptr %26, null
  br i1 %cmp29.not, label %if.end26.if.end51_crit_edge, label %if.then30

if.end26.if.end51_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then30:                                        ; preds = %if.end26
  %and31 = and i32 %call4.i65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %cmp32 = icmp eq i32 %and31, 0
  %cond33 = select i1 %cmp32, i32 5, i32 0
  %status36 = getelementptr inbounds %struct.altera_ci_state, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %status36 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond33, ptr %status36, align 4
  %28 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool38.not = icmp eq i32 %28, 0
  br i1 %tobool38.not, label %if.then30.if.end51_crit_edge, label %do.end42

if.then30.if.end51_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

do.end42:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %state, align 4
  %status46 = getelementptr inbounds %struct.altera_ci_state, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %status46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %status46, align 4
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.61, i32 noundef %32) #9
  br label %if.end51

if.end51:                                         ; preds = %do.end42, %if.then30.if.end51_crit_edge, %if.end26.if.end51_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @altera_ci_tuner_reset(ptr noundef readnone %dev, i32 noundef %ci_nr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @fpga_first_inode, align 4
  %cmp.i = icmp eq ptr %0, null
  br i1 %cmp.i, label %entry.find_inode.exit_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.find_inode.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_inode.exit

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %temp_chip.010.i = phi ptr [ %6, %while.body.i.land.rhs.i_crit_edge ], [ %0, %entry.land.rhs.i_crit_edge ]
  %1 = ptrtoint ptr %temp_chip.010.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %temp_chip.010.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %cmp3.not.i = icmp eq ptr %4, %dev
  br i1 %cmp3.not.i, label %land.rhs.i.find_inode.exit_crit_edge, label %while.body.i

land.rhs.i.find_inode.exit_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_inode.exit

while.body.i:                                     ; preds = %land.rhs.i
  %next_inode.i = getelementptr inbounds %struct.fpga_inode, ptr %temp_chip.010.i, i32 0, i32 1
  %5 = ptrtoint ptr %next_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %next_inode.i, align 4
  %cmp1.not.i = icmp eq ptr %6, null
  br i1 %cmp1.not.i, label %while.body.i.find_inode.exit_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

while.body.i.find_inode.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_inode.exit

find_inode.exit:                                  ; preds = %while.body.i.find_inode.exit_crit_edge, %land.rhs.i.find_inode.exit_crit_edge, %entry.find_inode.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.find_inode.exit_crit_edge ], [ %temp_chip.010.i, %land.rhs.i.find_inode.exit_crit_edge ], [ null, %while.body.i.find_inode.exit_crit_edge ]
  %7 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %find_inode.exit.do.end4_crit_edge, label %do.end

find_inode.exit.do.end4_crit_edge:                ; preds = %find_inode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %find_inode.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.29) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %find_inode.exit.do.end4_crit_edge
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %do.end4.cleanup_crit_edge, label %if.end6

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %do.end4
  %8 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %retval.0.i, align 4
  %cmp7 = icmp eq ptr %9, null
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %fpga_mutex = getelementptr inbounds %struct.fpga_internal, ptr %9, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %fpga_mutex, i32 noundef 0) #6
  %fpga_rw.i = getelementptr inbounds %struct.fpga_internal, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fpga_rw.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %call.i = tail call i32 %11(ptr noundef %13, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  %14 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fpga_rw.i, align 4
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %9, align 4
  %call4.i = tail call i32 %15(ptr noundef %17, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  %sub = sub i32 2, %ci_nr
  %shl = shl i32 4, %sub
  %18 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fpga_rw.i, align 4
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %9, align 4
  %call.i34 = tail call i32 %19(ptr noundef %21, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  %22 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fpga_rw.i, align 4
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %9, align 4
  %neg = and i32 %shl, 252
  %and = xor i32 %neg, 255
  %conv.i = and i32 %and, %call4.i
  %call4.i35 = tail call i32 %23(ptr noundef %25, i32 noundef 0, i32 noundef %conv.i, i32 noundef 0) #6
  tail call void @msleep(i32 noundef 100) #6
  %or = or i32 %call4.i, %shl
  %26 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fpga_rw.i, align 4
  %28 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %9, align 4
  %call.i37 = tail call i32 %27(ptr noundef %29, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  %30 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fpga_rw.i, align 4
  %32 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %9, align 4
  %conv.i38 = and i32 %or, 255
  %call4.i39 = tail call i32 %31(ptr noundef %33, i32 noundef 0, i32 noundef %conv.i38, i32 noundef 0) #6
  tail call void @mutex_unlock(ptr noundef %fpga_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end6.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -1, %do.end4.cleanup_crit_edge ], [ -1, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @altera_ci_op_cam(ptr nocapture noundef readonly %en50221, i32 noundef %slot, i8 noundef zeroext %flag, i8 noundef zeroext %read, i32 noundef %addr, i8 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %en50221, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %fpga_mutex = getelementptr inbounds %struct.fpga_internal, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %fpga_mutex, i32 noundef 0) #6
  %conv = shl i32 %addr, 1
  %fpga_rw.i = getelementptr inbounds %struct.fpga_internal, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fpga_rw.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call.i = tail call i32 %5(ptr noundef %7, i32 noundef 1, i32 noundef 4, i32 noundef 0) #6
  %8 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fpga_rw.i, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %conv.i = and i32 %conv, 254
  %call4.i = tail call i32 %9(ptr noundef %11, i32 noundef 0, i32 noundef %conv.i, i32 noundef 0) #6
  %12 = lshr i32 %addr, 7
  %conv2 = and i32 %12, 127
  %13 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fpga_rw.i, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %call.i54 = tail call i32 %14(ptr noundef %16, i32 noundef 1, i32 noundef 5, i32 noundef 0) #6
  %17 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fpga_rw.i, align 4
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 4
  %call4.i56 = tail call i32 %18(ptr noundef %20, i32 noundef 0, i32 noundef %conv2, i32 noundef 0) #6
  %21 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fpga_rw.i, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %call.i58 = tail call i32 %22(ptr noundef %24, i32 noundef 1, i32 noundef 7, i32 noundef 0) #6
  %25 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fpga_rw.i, align 4
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %call4.i59 = tail call i32 %26(ptr noundef %28, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  %conv8 = and i32 %call4.i59, 15
  %nr = getelementptr inbounds %struct.altera_ci_state, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr, align 4
  %shl9 = shl i32 %30, 7
  %conv10 = zext i8 %flag to i32
  %shl11 = shl nuw nsw i32 %conv10, 6
  %or = or i32 %shl9, %shl11
  %31 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fpga_rw.i, align 4
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 4
  %call.i61 = tail call i32 %32(ptr noundef %34, i32 noundef 1, i32 noundef 7, i32 noundef 0) #6
  %35 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fpga_rw.i, align 4
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %3, align 4
  %or.masked = and i32 %or, 192
  %conv.i62 = or i32 %or.masked, %conv8
  %call4.i63 = tail call i32 %36(ptr noundef %38, i32 noundef 0, i32 noundef %conv.i62, i32 noundef 0) #6
  %39 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fpga_rw.i, align 4
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %3, align 4
  %call.i65 = tail call i32 %40(ptr noundef %42, i32 noundef 1, i32 noundef 6, i32 noundef 0) #6
  %43 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fpga_rw.i, align 4
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %3, align 4
  %conv.i66 = zext i8 %val to i32
  %conv3.i = zext i8 %read to i32
  %call4.i67 = tail call i32 %44(ptr noundef %46, i32 noundef 0, i32 noundef %conv.i66, i32 noundef %conv3.i) #6
  tail call void @mutex_unlock(ptr noundef %fpga_mutex) #6
  %47 = load i32, ptr @ci_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not = icmp eq i32 %47, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read)
  %tobool21.not = icmp eq i8 %read, 0
  %cond = select i1 %tobool21.not, ptr @.str.36, ptr @.str.35
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %flag)
  %cmp23 = icmp eq i8 %flag, 1
  %cond25 = select i1 %cmp23, ptr @.str.37, ptr @.str.38
  %cond29 = select i1 %tobool21.not, i32 %conv.i66, i32 %call4.i67
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.34, ptr noundef nonnull %cond, i32 noundef %addr, ptr noundef nonnull %cond25, i32 noundef %cond29) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call4.i67, %do.end ], [ %call4.i67, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_ci_start_feed_1(ptr noundef %feed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demux.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux.i, align 4
  tail call fastcc void @altera_pid_feed_control(ptr noundef %1, i32 noundef 1, ptr noundef %feed, i32 noundef 1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_ci_stop_feed_1(ptr noundef %feed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demux.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux.i, align 4
  tail call fastcc void @altera_pid_feed_control(ptr noundef %1, i32 noundef 1, ptr noundef %feed, i32 noundef 0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_ci_start_feed_2(ptr noundef %feed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demux.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux.i, align 4
  tail call fastcc void @altera_pid_feed_control(ptr noundef %1, i32 noundef 2, ptr noundef %feed, i32 noundef 1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_ci_stop_feed_2(ptr noundef %feed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demux.i = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux.i, align 4
  tail call fastcc void @altera_pid_feed_control(ptr noundef %1, i32 noundef 2, ptr noundef %feed, i32 noundef 0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @altera_toggle_fullts_streaming(ptr nocapture noundef readonly %pid_filt, i32 noundef %onoff) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pid_filt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pid_filt, align 4
  %2 = load i32, ptr @pid_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %nr = getelementptr inbounds %struct.netup_hw_pid_filter, ptr %pid_filt, i32 0, i32 5
  %3 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool2.not = icmp eq i32 %onoff, 0
  %cond = select i1 %tobool2.not, ptr @.str.58, ptr @.str.57
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.60, i32 noundef %4, ptr noundef nonnull %cond) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool5.not = icmp ne i32 %onoff, 0
  %fpga_mutex = getelementptr inbounds %struct.fpga_internal, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %fpga_mutex, i32 noundef 0) #6
  %fpga_rw.i = getelementptr inbounds %struct.fpga_internal, ptr %1, i32 0, i32 5
  %nr10 = getelementptr inbounds %struct.netup_hw_pid_filter, ptr %pid_filt, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end4
  %i.09 = phi i32 [ 0, %do.end4 ], [ %inc, %for.body.for.body_crit_edge ]
  %5 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fpga_rw.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call.i = tail call i32 %6(ptr noundef %8, i32 noundef 1, i32 noundef 8, i32 noundef 0) #6
  %9 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fpga_rw.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %conv.i = and i32 %i.09, 255
  %call4.i = tail call i32 %10(ptr noundef %12, i32 noundef 0, i32 noundef %conv.i, i32 noundef 0) #6
  %13 = lshr i32 %i.09, 8
  %and9 = and i32 %13, 3
  %14 = ptrtoint ptr %nr10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr10, align 4
  %shl = shl i32 %15, 2
  %16 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fpga_rw.i, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call.i2 = tail call i32 %17(ptr noundef %19, i32 noundef 1, i32 noundef 9, i32 noundef 0) #6
  %20 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fpga_rw.i, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %shl.masked = and i32 %shl, 252
  %conv.i3 = or i32 %shl.masked, %and9
  %call4.i4 = tail call i32 %21(ptr noundef %23, i32 noundef 0, i32 noundef %conv.i3, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.09)
  %cmp13 = icmp ugt i32 %i.09, 3
  %narrow = and i1 %tobool5.not, %cmp13
  %24 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fpga_rw.i, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %call.i6 = tail call i32 %25(ptr noundef %27, i32 noundef 1, i32 noundef 10, i32 noundef 0) #6
  %28 = ptrtoint ptr %fpga_rw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fpga_rw.i, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %conv.i7 = select i1 %narrow, i32 255, i32 0
  %call4.i8 = tail call i32 %29(ptr noundef %31, i32 noundef 0, i32 noundef %conv.i7, i32 noundef 0) #6
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %fpga_mutex) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @altera_pid_feed_control(ptr noundef readnone %demux_dev, i32 noundef %filt_nr, ptr noundef %feed, i32 noundef %onoff) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %temp_chip.030.i = load ptr, ptr @fpga_first_inode, align 4
  %cmp.not31.i = icmp eq ptr %temp_chip.030.i, null
  br i1 %cmp.not31.i, label %entry.find_dinode.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.find_dinode.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_dinode.exit

while.body.i:                                     ; preds = %if.end8.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %temp_chip.032.i = phi ptr [ %temp_chip.0.i, %if.end8.i.while.body.i_crit_edge ], [ %temp_chip.030.i, %entry.while.body.i_crit_edge ]
  %0 = ptrtoint ptr %temp_chip.032.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %temp_chip.032.i, align 4
  %cmp1.not.i = icmp eq ptr %1, null
  br i1 %cmp1.not.i, label %while.body.i.if.end8.i_crit_edge, label %if.end.i.i

while.body.i.if.end8.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.end.i.i:                                       ; preds = %while.body.i
  %arrayidx.i.i = getelementptr %struct.fpga_internal, ptr %1, i32 0, i32 2, i32 0
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp1.i.i = icmp eq ptr %3, null
  br i1 %cmp1.i.i, label %if.end.i.i.if.end.i18.i_crit_edge, label %if.end3.i.i

if.end.i.i.if.end.i18.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i18.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %demux.i.i = getelementptr inbounds %struct.netup_hw_pid_filter, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %demux.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %demux.i.i, align 4
  %cmp6.i.i = icmp eq ptr %5, %demux_dev
  br i1 %cmp6.i.i, label %if.end3.i.i.find_dinode.exit_crit_edge, label %if.end3.i.i.if.end.i18.i_crit_edge

if.end3.i.i.if.end.i18.i_crit_edge:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i18.i

if.end3.i.i.find_dinode.exit_crit_edge:           ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_dinode.exit

if.end.i18.i:                                     ; preds = %if.end3.i.i.if.end.i18.i_crit_edge, %if.end.i.i.if.end.i18.i_crit_edge
  %arrayidx.i16.i = getelementptr %struct.fpga_internal, ptr %1, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx.i16.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i16.i, align 4
  %cmp1.i17.i = icmp eq ptr %7, null
  br i1 %cmp1.i17.i, label %if.end.i18.i.if.end8.i_crit_edge, label %if.end3.i22.i

if.end.i18.i.if.end8.i_crit_edge:                 ; preds = %if.end.i18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.end3.i22.i:                                    ; preds = %if.end.i18.i
  %demux.i19.i = getelementptr inbounds %struct.netup_hw_pid_filter, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %demux.i19.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %demux.i19.i, align 4
  %cmp6.i20.i = icmp eq ptr %9, %demux_dev
  br i1 %cmp6.i20.i, label %if.end3.i22.i.find_dinode.exit_crit_edge, label %if.end3.i22.i.if.end8.i_crit_edge

if.end3.i22.i.if.end8.i_crit_edge:                ; preds = %if.end3.i22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.end3.i22.i.find_dinode.exit_crit_edge:         ; preds = %if.end3.i22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_dinode.exit

if.end8.i:                                        ; preds = %if.end3.i22.i.if.end8.i_crit_edge, %if.end.i18.i.if.end8.i_crit_edge, %while.body.i.if.end8.i_crit_edge
  %next_inode.i = getelementptr inbounds %struct.fpga_inode, ptr %temp_chip.032.i, i32 0, i32 1
  %10 = ptrtoint ptr %next_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %temp_chip.0.i = load ptr, ptr %next_inode.i, align 4
  %cmp.not.i = icmp eq ptr %temp_chip.0.i, null
  br i1 %cmp.not.i, label %if.end8.i.find_dinode.exit_crit_edge, label %if.end8.i.while.body.i_crit_edge

if.end8.i.while.body.i_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end8.i.find_dinode.exit_crit_edge:             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %find_dinode.exit

find_dinode.exit:                                 ; preds = %if.end8.i.find_dinode.exit_crit_edge, %if.end3.i22.i.find_dinode.exit_crit_edge, %if.end3.i.i.find_dinode.exit_crit_edge, %entry.find_dinode.exit_crit_edge
  %temp_chip.0.lcssa.i = phi ptr [ null, %entry.find_dinode.exit_crit_edge ], [ null, %if.end8.i.find_dinode.exit_crit_edge ], [ %temp_chip.032.i, %if.end3.i.i.find_dinode.exit_crit_edge ], [ %temp_chip.032.i, %if.end3.i22.i.find_dinode.exit_crit_edge ]
  %11 = ptrtoint ptr %temp_chip.0.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %temp_chip.0.lcssa.i, align 4
  %sub = add i32 %filt_nr, -1
  %arrayidx = getelementptr %struct.fpga_internal, ptr %12, i32 0, i32 2, i32 %sub
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %pid = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 6
  %15 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  %cond = zext i1 %tobool.not to i32
  %conv.i = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %16)
  %cmp.i = icmp eq i16 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %16)
  %cmp3.i = icmp ult i16 %16, 32
  %or.cond.i = or i1 %cmp.i, %cmp3.i
  br i1 %or.cond.i, label %find_dinode.exit.altera_pid_control.exit_crit_edge, label %if.end.i

find_dinode.exit.altera_pid_control.exit_crit_edge: ; preds = %find_dinode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %altera_pid_control.exit

if.end.i:                                         ; preds = %find_dinode.exit
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  %fpga_mutex.i = getelementptr inbounds %struct.fpga_internal, ptr %18, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %fpga_mutex.i, i32 noundef 0) #6
  %19 = lshr i16 %16, 3
  %fpga_rw.i.i = getelementptr inbounds %struct.fpga_internal, ptr %18, i32 0, i32 5
  %20 = ptrtoint ptr %fpga_rw.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fpga_rw.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %18, align 4
  %call.i.i = tail call i32 %21(ptr noundef %23, i32 noundef 1, i32 noundef 8, i32 noundef 0) #6
  %24 = ptrtoint ptr %fpga_rw.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fpga_rw.i.i, align 4
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %18, align 4
  %28 = and i16 %19, 255
  %conv.i.i = zext i16 %28 to i32
  %call4.i.i = tail call i32 %25(ptr noundef %27, i32 noundef 0, i32 noundef %conv.i.i, i32 noundef 0) #6
  %29 = lshr i32 %conv.i, 11
  %and9.i = and i32 %29, 3
  %nr.i = getelementptr inbounds %struct.netup_hw_pid_filter, ptr %14, i32 0, i32 5
  %30 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr.i, align 4
  %shl.i = shl i32 %31, 2
  %32 = ptrtoint ptr %fpga_rw.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fpga_rw.i.i, align 4
  %34 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %18, align 4
  %call.i60.i = tail call i32 %33(ptr noundef %35, i32 noundef 1, i32 noundef 9, i32 noundef 0) #6
  %36 = ptrtoint ptr %fpga_rw.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fpga_rw.i.i, align 4
  %38 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %18, align 4
  %shl.masked.i = and i32 %shl.i, 252
  %conv.i61.i = or i32 %shl.masked.i, %and9.i
  %call4.i62.i = tail call i32 %37(ptr noundef %39, i32 noundef 0, i32 noundef %conv.i61.i, i32 noundef 0) #6
  %40 = ptrtoint ptr %fpga_rw.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fpga_rw.i.i, align 4
  %42 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %18, align 4
  %call.i64.i = tail call i32 %41(ptr noundef %43, i32 noundef 1, i32 noundef 10, i32 noundef 0) #6
  %44 = ptrtoint ptr %fpga_rw.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fpga_rw.i.i, align 4
  %46 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %18, align 4
  %call4.i65.i = tail call i32 %45(ptr noundef %47, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  %and22.i = and i32 %conv.i, 7
  %shl23.i = shl nuw nsw i32 1, %and22.i
  %or19.i = or i32 %call4.i65.i, %shl23.i
  %neg.i = xor i32 %shl23.i, -1
  %and25.i = and i32 %call4.i65.i, %neg.i
  %store.0.in.i = select i1 %tobool.not, i32 %or19.i, i32 %and25.i
  %48 = ptrtoint ptr %fpga_rw.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fpga_rw.i.i, align 4
  %50 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %18, align 4
  %call.i67.i = tail call i32 %49(ptr noundef %51, i32 noundef 1, i32 noundef 10, i32 noundef 0) #6
  %52 = ptrtoint ptr %fpga_rw.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fpga_rw.i.i, align 4
  %54 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %18, align 4
  %conv.i68.i = and i32 %store.0.in.i, 255
  %call4.i69.i = tail call i32 %53(ptr noundef %55, i32 noundef 0, i32 noundef %conv.i68.i, i32 noundef 0) #6
  tail call void @mutex_unlock(ptr noundef %fpga_mutex.i) #6
  %56 = load i32, ptr @pid_dbg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool30.not.i = icmp eq i32 %56, 0
  br i1 %tobool30.not.i, label %if.end.i.altera_pid_control.exit_crit_edge, label %do.end.i

if.end.i.altera_pid_control.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %altera_pid_control.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nr.i, align 4
  %cond.i = select i1 %tobool.not, ptr @.str.57, ptr @.str.58
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.56, i32 noundef %58, i32 noundef %conv.i, i32 noundef %conv.i, ptr noundef nonnull %cond.i) #9
  br label %altera_pid_control.exit

altera_pid_control.exit:                          ; preds = %do.end.i, %if.end.i.altera_pid_control.exit_crit_edge, %find_dinode.exit.altera_pid_control.exit_crit_edge
  %stop_feed = getelementptr inbounds %struct.netup_hw_pid_filter, ptr %14, i32 0, i32 3
  %start_feed = getelementptr inbounds %struct.netup_hw_pid_filter, ptr %14, i32 0, i32 2
  %stop_feed.sink = select i1 %tobool.not, ptr %stop_feed, ptr %start_feed
  %59 = ptrtoint ptr %stop_feed.sink to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %stop_feed.sink, align 4
  %call4 = tail call i32 %60(ptr noundef %feed) #6
  %61 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %62)
  %cmp = icmp eq i16 %62, 8192
  br i1 %cmp, label %if.then7, label %altera_pid_control.exit.if.end10_crit_edge

altera_pid_control.exit.if.end10_crit_edge:       ; preds = %altera_pid_control.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then7:                                         ; preds = %altera_pid_control.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @altera_toggle_fullts_streaming(ptr noundef %14, i32 noundef %cond)
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %altera_pid_control.exit.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !25, !27, !28, !29, !31, !32, !33, !35, !37, !38, !39, !41, !42, !43, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !74, !75, !77, !79, !81, !82, !83, !85, !87, !88, !89, !91, !92, !94, !95, !96, !97, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !122, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156}
!llvm.module.flags = !{!157, !158, !159, !160, !161, !162, !163, !164}
!llvm.ident = !{!165}

!0 = !{ptr @__param_ci_dbg, !1, !"__param_ci_dbg", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 69, i32 1}
!2 = !{ptr @__UNIQUE_ID_ci_dbgtype290, !1, !"__UNIQUE_ID_ci_dbgtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_ci_dbg291, !4, !"__UNIQUE_ID_ci_dbg291", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 70, i32 1}
!5 = !{ptr @__param_pid_dbg, !6, !"__param_pid_dbg", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 73, i32 1}
!7 = !{ptr @__UNIQUE_ID_pid_dbgtype292, !6, !"__UNIQUE_ID_pid_dbgtype292", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_pid_dbg293, !9, !"__UNIQUE_ID_pid_dbg293", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 74, i32 1}
!10 = !{ptr @__UNIQUE_ID_description294, !11, !"__UNIQUE_ID_description294", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 76, i32 1}
!12 = !{ptr @__UNIQUE_ID_author295, !13, !"__UNIQUE_ID_author295", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 77, i32 1}
!14 = !{ptr @__UNIQUE_ID_file296, !15, !"__UNIQUE_ID_file296", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 78, i32 1}
!16 = !{ptr @__UNIQUE_ID_license297, !15, !"__UNIQUE_ID_license297", i1 false, i1 false}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 429, i32 2}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @altera_ci_irq._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @altera_ci_irq._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @__ksymtab_altera_ci_irq, !24, !"__ksymtab_altera_ci_irq", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 441, i32 1}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 487, i32 2}
!27 = !{ptr @altera_ci_release._entry, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @altera_ci_release._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 497, i32 4}
!31 = !{ptr @altera_ci_release._entry.4, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @altera_ci_release._entry_ptr.6, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @__ksymtab_altera_ci_release, !34, !"__ksymtab_altera_ci_release", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 512, i32 1}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 711, i32 2}
!37 = !{ptr @altera_ci_init._entry, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @altera_ci_init._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 722, i32 3}
!41 = !{ptr @altera_ci_init._entry.8, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @altera_ci_init._entry_ptr.10, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @altera_ci_init.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 738, i32 3}
!45 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 740, i32 3}
!48 = !{ptr @altera_ci_init._entry.12, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @altera_ci_init._entry_ptr.14, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 743, i32 2}
!52 = !{ptr @altera_ci_init._entry.15, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @altera_ci_init._entry_ptr.17, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @altera_ci_init.__key.18, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 771, i32 3}
!56 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 775, i32 2}
!59 = !{ptr @altera_ci_init._entry.20, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @altera_ci_init._entry_ptr.22, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 794, i32 2}
!63 = !{ptr @altera_ci_init._entry.23, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @altera_ci_init._entry_ptr.25, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 800, i32 2}
!67 = !{ptr @altera_ci_init._entry.26, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @altera_ci_init._entry_ptr.28, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @__ksymtab_altera_ci_init, !70, !"__ksymtab_altera_ci_init", i1 false, i1 false}
!70 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 807, i32 1}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 815, i32 2}
!73 = !{ptr @altera_ci_tuner_reset._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @altera_ci_tuner_reset._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @__ksymtab_altera_ci_tuner_reset, !76, !"__ksymtab_altera_ci_tuner_reset", i1 false, i1 false}
!76 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 838, i32 1}
!77 = !{ptr @ci_dbg, !78, !"ci_dbg", i1 false, i1 false}
!78 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 68, i32 21}
!79 = !{ptr @pid_dbg, !80, !"pid_dbg", i1 false, i1 false}
!80 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 72, i32 21}
!81 = !{ptr @__param_str_ci_dbg, !1, !"__param_str_ci_dbg", i1 false, i1 false}
!82 = !{ptr @__param_str_pid_dbg, !6, !"__param_str_pid_dbg", i1 false, i1 false}
!83 = !{ptr @fpga_first_inode, !84, !"fpga_first_inode", i1 false, i1 false}
!84 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 137, i32 27}
!85 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 459, i32 2}
!87 = !{ptr @altera_hw_filt_release._entry, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @altera_hw_filt_release._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @altera_hw_filt_release._entry.31, !90, !"_entry", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 470, i32 4}
!91 = !{ptr @altera_hw_filt_release._entry_ptr.32, !90, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 284, i32 2}
!94 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @altera_ci_op_cam._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @altera_ci_op_cam._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 325, i32 2}
!103 = !{ptr @altera_ci_slot_reset._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @altera_ci_slot_reset._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 354, i32 2}
!107 = !{ptr @altera_ci_slot_reset._entry.40, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @altera_ci_slot_reset._entry_ptr.42, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 372, i32 2}
!111 = !{ptr @altera_ci_slot_ts_ctl._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @altera_ci_slot_ts_ctl._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 639, i32 2}
!115 = !{ptr @altera_hw_filt_init._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @altera_hw_filt_init._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @altera_hw_filt_init._entry.45, !118, !"_entry", i1 false, i1 false}
!118 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 649, i32 3}
!119 = !{ptr @altera_hw_filt_init._entry_ptr.46, !118, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @altera_hw_filt_init.__key, !121, !"__key", i1 false, i1 false}
!121 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 665, i32 3}
!122 = !{ptr @altera_hw_filt_init._entry.47, !123, !"_entry", i1 false, i1 false}
!123 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 667, i32 3}
!124 = !{ptr @altera_hw_filt_init._entry_ptr.48, !123, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.50, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 670, i32 2}
!127 = !{ptr @altera_hw_filt_init._entry.49, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @altera_hw_filt_init._entry_ptr.51, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 692, i32 2}
!131 = !{ptr @altera_hw_filt_init._entry.52, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @altera_hw_filt_init._entry_ptr.54, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.55, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 541, i32 2}
!135 = !{ptr @.str.56, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @altera_pid_control._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @altera_pid_control._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.57, !134, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 552, i32 2}
!142 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @altera_toggle_fullts_streaming._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @altera_toggle_fullts_streaming._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 395, i32 2}
!147 = !{ptr @netup_read_ci_status._entry, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @netup_read_ci_status._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.63, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 409, i32 3}
!151 = !{ptr @netup_read_ci_status._entry.62, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @netup_read_ci_status._entry_ptr.64, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.66, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/pci/cx23885/altera-ci.c", i32 418, i32 3}
!155 = !{ptr @netup_read_ci_status._entry.65, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @netup_read_ci_status._entry_ptr.67, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{i32 1, !"wchar_size", i32 2}
!158 = !{i32 1, !"min_enum_size", i32 4}
!159 = !{i32 8, !"branch-target-enforcement", i32 0}
!160 = !{i32 8, !"sign-return-address", i32 0}
!161 = !{i32 8, !"sign-return-address-all", i32 0}
!162 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!163 = !{i32 7, !"uwtable", i32 1}
!164 = !{i32 7, !"frame-pointer", i32 2}
!165 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
