; ModuleID = '/llk/IR_all_yes/drivers/scsi/megaraid/megaraid_sas_fp.c_pt.bc'
source_filename = "../drivers/scsi/megaraid/megaraid_sas_fp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.MR_DRV_RAID_MAP = type { i32, %union.anon.90, i8, [7 x i8], i16, i16, i16, i16, [512 x %struct.MR_DEV_HANDLE_INFO], [512 x i16], [512 x %struct.MR_ARRAY_INFO], [1 x %struct.MR_LD_SPAN_MAP] }
%union.anon.90 = type { %struct.anon.91 }
%struct.anon.91 = type { i32, i32, i32, i32, i32 }
%struct.MR_DEV_HANDLE_INFO = type { i16, i8, i8, [2 x i16] }
%struct.MR_ARRAY_INFO = type { [32 x i16] }
%struct.MR_LD_SPAN_MAP = type { %struct.MR_LD_RAID, [32 x i8], [8 x %struct.MR_SPAN_BLOCK_INFO] }
%struct.MR_LD_RAID = type { %struct.anon.83, i32, i64, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i16, %struct.anon.84, [8 x i8], i8, i8, [2 x i8], i32, %struct.anon.85, %struct.MR_IO_AFFINITY, [64 x i8] }
%struct.anon.83 = type { i32 }
%struct.anon.84 = type { i32 }
%struct.anon.85 = type { i32 }
%struct.MR_IO_AFFINITY = type { %union.anon.86, i8, [3 x i8] }
%union.anon.86 = type { i32 }
%struct.MR_SPAN_BLOCK_INFO = type { i64, %struct.MR_LD_SPAN, %struct.MR_SPAN_INFO }
%struct.MR_LD_SPAN = type { i64, i64, i16, i8, i8, [4 x i8] }
%struct.MR_SPAN_INFO = type { i32, i32, [8 x %struct.MR_QUAD_ELEMENT] }
%struct.MR_QUAD_ELEMENT = type { i64, i64, i64, i32, i32 }
%struct.megasas_instance = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, [512 x ptr], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %struct.spinlock, ptr, [16 x ptr], [256 x %struct.megasas_pd_list], [256 x %struct.megasas_pd_list], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i8, i16, i16, i16, i16, i16, i16, i16, i32, i8, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, i32, ptr, %struct.semaphore, ptr, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, ptr, %struct.tasklet_struct, %struct.work_struct, %struct.delayed_work, ptr, [48 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, %struct.atomic_t, i32, i32, i32, %struct.list_head, ptr, i32, [128 x %struct.megasas_irq_context], i64, i64, ptr, ptr, i32, i32, %struct.mutex, %struct.timer_list, i8, i8, i8, [16 x i8], i8, i8, i16, i8, i16, i8, i8, i8, i8, i32, i8, i16, i8, i32, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i8, i8, i8, i8, i8, i32, i32 }
%struct.megasas_pd_list = type { i16, i8, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.167, i32 }
%union.anon.167 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.megasas_irq_context = type { [32 x i8], ptr, i32, i32, %struct.irq_poll, i8, i8, %struct.atomic_t }
%struct.irq_poll = type { %struct.list_head, i32, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.fusion_context = type { ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, [128 x %struct.atomic_t], [128 x i32], [128 x ptr], [8 x %struct.rdpq_alloc_detail], ptr, ptr, [128 x i16], i32, i32, i32, i32, ptr, i32, i16, i16, i8, i8, [2 x ptr], [2 x i32], [2 x ptr], i32, i32, i32, i32, i32, i32, [2 x ptr], [2 x i32], i8, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, i8, i8 }
%struct.rdpq_alloc_detail = type { ptr, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.166, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.166 = type { ptr }
%struct.LOG_BLOCK_SPAN_INFO = type { [8 x %struct._LD_SPAN_SET] }
%struct._LD_SPAN_SET = type { i64, i64, i64, i64, i64, i64, i64, i64, [8 x i8], i32, i32, [2 x i32] }
%struct.LD_LOAD_BALANCE_INFO = type { i8, i8, [256 x %struct.atomic_t], [256 x i64] }
%struct.MR_FW_RAID_MAP_DYNAMIC = type { i32, i32, i32, i32, i64, [3 x i32], i8, [3 x i8], i32, i16, i16, i16, [3 x i16], %union.anon.175, [4 x %struct.MR_RAID_MAP_DESC_TABLE], [1 x i32] }
%union.anon.175 = type { [4 x i64] }
%struct.MR_RAID_MAP_DESC_TABLE = type { i32, i32, i32, i32 }
%struct.anon.176 = type { ptr, ptr, ptr, ptr }
%struct.MR_FW_RAID_MAP_EXT = type { i32, %union.anon.181, i8, [7 x i8], i16, i16, i16, i16, [256 x %struct.MR_DEV_HANDLE_INFO], [256 x i8], [256 x %struct.MR_ARRAY_INFO], [256 x %struct.MR_LD_SPAN_MAP] }
%union.anon.181 = type { %struct.anon.182 }
%struct.anon.182 = type { i32, i32, i32, i32, i32 }
%struct.MR_FW_RAID_MAP = type { i32, %union.anon.179, i32, i32, [128 x i8], i8, [7 x i8], [128 x %struct.MR_ARRAY_INFO], [256 x %struct.MR_DEV_HANDLE_INFO], [1 x %struct.MR_LD_SPAN_MAP] }
%union.anon.179 = type { %struct.anon.180 }
%struct.anon.180 = type { i32, i32, i32, i32, i32 }
%struct.IO_REQUEST_INFO = type { i64, i32, i16, i8, i16, i8, i64, i8, i8, i8, i8, i64, i8, i8, i16, i8, i8 }
%struct.RAID_CONTEXT = type { i8, i8, i16, i8, i8, i16, i64, i32, i16, i8, i8, i8, i8, i16, i8, i8, i8, i8 }
%struct.RAID_CONTEXT_G35 = type { i16, i16, i16, i16, i64, i32, %union.anon.169, i8, i8, i8, i8, i16, %union.anon.170, [2 x i8] }
%union.anon.169 = type { i16 }
%union.anon.170 = type { %struct.anon.171 }
%struct.anon.171 = type { i16 }

@__param_str_lb_pending_cmds = internal constant [29 x i8] c"megaraid_sas.lb_pending_cmds\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@lb_pending_cmds = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_lb_pending_cmds = internal constant %struct.kernel_param { ptr @__param_str_lb_pending_cmds, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @lb_pending_cmds } }, section "__param", align 4
@__UNIQUE_ID_lb_pending_cmdstype287 = internal constant [42 x i8] c"megaraid_sas.parmtype=lb_pending_cmds:int\00", section ".modinfo", align 1
@__UNIQUE_ID_lb_pending_cmds288 = internal constant [121 x i8] c"megaraid_sas.parm=lb_pending_cmds:Change raid-1 load balancing outstanding threshold. Valid Values are 1-128. Default: 4\00", section ".modinfo", align 1
@mega_mod64._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013megasas : DIVISOR is zero, in div fn\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mega_mod64\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/scsi/megaraid/megaraid_sas_fp.c\00", [56 x i8] zeroinitializer }, align 32
@mega_mod64._entry_ptr = internal global ptr @mega_mod64._entry, section ".printk_index", align 4
@MR_ValidateMapInfo.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"megaraid_sas\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MR_ValidateMapInfo\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"megasas: map info structure size 0x%x\00", [58 x i8] zeroinitializer }, align 32
@MR_ValidateMapInfo.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"is not matching expected size 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@MR_ValidateMapInfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.2, i32 340, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"megasas: span map %x, pDrvRaidMap->totalSize : %x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@MR_ValidateMapInfo._entry_ptr = internal global ptr @MR_ValidateMapInfo._entry, section ".printk_index", align 4
@MR_BuildRaidContext._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1019, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"raid->rowDataSize is 0, but has SPAN[0]rowDataSize = 0x%0x,but there is _NO_ UnevenSpanSupport\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MR_BuildRaidContext\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@MR_BuildRaidContext._entry_ptr = internal global ptr @MR_BuildRaidContext._entry, section ".printk_index", align 4
@MR_BuildRaidContext._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.2, i32 1045, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"return from %s %d.Send IO w/o region lock.\0A\00", [52 x i8] zeroinitializer }, align 32
@MR_BuildRaidContext._entry_ptr.15 = internal global ptr @MR_BuildRaidContext._entry.13, section ".printk_index", align 4
@MR_BuildRaidContext._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.2, i32 1061, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"return from %s %dfor row 0x%llx,start strip %llxendSrip %llx\0A\00", [34 x i8] zeroinitializer }, align 32
@MR_BuildRaidContext._entry_ptr.18 = internal global ptr @MR_BuildRaidContext._entry.16, section ".printk_index", align 4
@MR_PopulateDrvRaidMap.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MR_PopulateDrvRaidMap\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"offsets of desc table are not matching desc %p original %p\0A\00", [36 x i8] zeroinitializer }, align 32
@MR_PopulateDrvRaidMap.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.19, ptr @.str.2, ptr @.str.21, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"wrong number of desctableElements %d\0A\00", [58 x i8] zeroinitializer }, align 32
@MR_PopulateDrvRaidMap.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.19, ptr @.str.2, ptr @.str.22, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"megaraid_sas: LD count exposed in RAID map in not valid\0A\00", [39 x i8] zeroinitializer }, align 32
@MR_PopulateDrvRaidMap.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.19, ptr @.str.2, ptr @.str.23, i8 0, i8 69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"LD count exposed in RAID map in not valid\0A\00", [53 x i8] zeroinitializer }, align 32
@mega_div64_32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013megasas : DIVISOR is zero in mod fn\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mega_div64_32\00", [18 x i8] zeroinitializer }, align 32
@mega_div64_32._entry_ptr = internal global ptr @mega_div64_32._entry, section ".printk_index", align 4
@get_strip_from_row._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 584, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"get_strip_from_rowreturns invalid strip for ld=%x, row=%lx\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"get_strip_from_row\00", [45 x i8] zeroinitializer }, align 32
@get_strip_from_row._entry_ptr = internal global ptr @get_strip_from_row._entry, section ".printk_index", align 4
@get_arm_from_strip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 642, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"get_arm_from_stripreturns invalid arm for ld=%x strip=%lx\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"get_arm_from_strip\00", [45 x i8] zeroinitializer }, align 32
@get_arm_from_strip._entry_ptr = internal global ptr @get_arm_from_strip._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 5, i64 6]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"lb_pending_cmds\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 48, i32 21 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 76, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 334, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 336, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 338, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1015, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1043, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1056, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 183, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 236, i32 5 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 247, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 275, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 94, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 582, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private constant [43 x i8] c"../drivers/scsi/megaraid/megaraid_sas_fp.c\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 640, i32 2 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @MR_BuildRaidContext._entry, ptr @MR_BuildRaidContext._entry.13, ptr @MR_BuildRaidContext._entry.16, ptr @MR_BuildRaidContext._entry_ptr, ptr @MR_BuildRaidContext._entry_ptr.15, ptr @MR_BuildRaidContext._entry_ptr.18, ptr @MR_ValidateMapInfo._entry, ptr @MR_ValidateMapInfo._entry_ptr, ptr @__UNIQUE_ID_lb_pending_cmds288, ptr @__UNIQUE_ID_lb_pending_cmdstype287, ptr @__param_lb_pending_cmds, ptr @get_arm_from_strip._entry, ptr @get_arm_from_strip._entry_ptr, ptr @get_strip_from_row._entry, ptr @get_strip_from_row._entry_ptr, ptr @mega_div64_32._entry, ptr @mega_div64_32._entry_ptr, ptr @mega_mod64._entry, ptr @mega_mod64._entry_ptr, ptr @lb_pending_cmds, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lb_pending_cmds to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mega_mod64._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MR_ValidateMapInfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MR_BuildRaidContext._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MR_BuildRaidContext._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MR_BuildRaidContext._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mega_div64_32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_strip_from_row._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_arm_from_strip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mega_mod64(i64 noundef %dividend, i32 noundef %divisor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %divisor)
  %tobool.not = icmp eq i32 %divisor, 0
  br i1 %tobool.not, label %do.end, label %entry.if.else167_crit_edge

entry.if.else167_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else167

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %if.else167

if.else167:                                       ; preds = %do.end, %entry.if.else167_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %dividend)
  %cmp169 = icmp ult i64 %dividend, 4294967296
  br i1 %cmp169, label %if.then173, label %if.else179, !prof !79

if.then173:                                       ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #11
  %conv174 = trunc i64 %dividend to i32
  %rem175 = urem i32 %conv174, %divisor
  br label %if.end183

if.else179:                                       ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %divisor, i64 %dividend) #13, !srcloc !80
  %asmresult.i267 = extractvalue { i64, i64 } %0, 0
  %shr.i = lshr i64 %asmresult.i267, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end183

if.end183:                                        ; preds = %if.else179, %if.then173
  %__rem.0 = phi i32 [ %rem175, %if.then173 ], [ %conv.i, %if.else179 ]
  ret i32 %__rem.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @MR_LdRaidGet(i32 noundef %ld, ptr noundef readnone %map) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 11, i32 %ld
  ret ptr %arrayidx
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @MR_ArPdGet(i32 noundef %ar, i32 noundef %arm, ptr nocapture noundef readonly %map) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 10, i32 %ar
  %arrayidx1 = getelementptr [32 x i16], ptr %arrayidx, i32 0, i32 %arm
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %arrayidx1, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  ret i16 %2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @MR_LdSpanArrayGet(i32 noundef %ld, i32 noundef %span, ptr nocapture noundef readonly %map) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayRef = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 11, i32 %ld, i32 2, i32 %span, i32 1, i32 2
  %0 = ptrtoint ptr %arrayRef to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %arrayRef, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  ret i16 %2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @MR_PdDevHandleGet(i32 noundef %pd, ptr nocapture noundef readonly %map) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 8, i32 %pd
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %arrayidx, align 1
  ret i16 %1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @MR_GetLDTgtId(i32 noundef %ld, ptr nocapture noundef readonly %map) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %targetId = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 11, i32 %ld, i32 0, i32 11
  %0 = ptrtoint ptr %targetId to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %targetId, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  ret i16 %2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @MR_TargetIdToLdGet(i32 noundef %ldTgtId, ptr nocapture noundef readonly %map) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 9, i32 %ldTgtId
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %arrayidx, align 1
  ret i16 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @MR_ValidateMapInfo(ptr nocapture noundef %instance, i64 noundef %map_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @MR_PopulateDrvRaidMap(ptr noundef %instance, i64 noundef %map_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctrl_context = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 113
  %0 = ptrtoint ptr %ctrl_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_context, align 8
  %2 = trunc i64 %map_id to i32
  %idxprom = and i32 %2, 1
  %arrayidx = getelementptr %struct.fusion_context, ptr %1, i32 0, i32 29, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %load_balance_info = getelementptr inbounds %struct.fusion_context, ptr %1, i32 0, i32 39
  %5 = ptrtoint ptr %load_balance_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %load_balance_info, align 4
  %log_to_span = getelementptr inbounds %struct.fusion_context, ptr %1, i32 0, i32 41
  %7 = ptrtoint ptr %log_to_span to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %log_to_span, align 4
  %max_raid_mapsize = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 139
  %9 = ptrtoint ptr %max_raid_mapsize to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %max_raid_mapsize, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool1.not = icmp eq i16 %10, 0
  br i1 %tobool1.not, label %if.else, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.else:                                          ; preds = %if.end
  %supportmax256vd = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 102
  %11 = ptrtoint ptr %supportmax256vd to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %supportmax256vd, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool3.not = icmp eq i8 %12, 0
  br i1 %tobool3.not, label %if.else5, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %ldCount = getelementptr inbounds %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 4
  %13 = ptrtoint ptr %ldCount to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ldCount, align 8
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv = zext i16 %15 to i32
  %mul = mul nuw nsw i32 %conv, 2528
  %add = add nuw nsw i32 %mul, 10408
  br label %if.end7

if.end7:                                          ; preds = %if.else5, %if.else.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %expected_size.0 = phi i32 [ %add, %if.else5 ], [ 1332264, %if.end.if.end7_crit_edge ], [ 665896, %if.else.if.end7_crit_edge ]
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %4, align 8
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %expected_size.0)
  %cmp.not = icmp eq i32 %18, %expected_size.0
  br i1 %cmp.not, label %if.end41, label %do.body

do.body:                                          ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @MR_ValidateMapInfo.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@MR_ValidateMapInfo, %if.then14)) #9
          to label %do.body17 [label %if.then14], !srcloc !81

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 81
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %4, align 8
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @MR_ValidateMapInfo.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %23) #9
  br label %do.body17

do.body17:                                        ; preds = %if.then14, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @MR_ValidateMapInfo.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@MR_ValidateMapInfo, %if.then29)) #9
          to label %do.end37 [label %if.then29], !srcloc !81

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  %pdev30 = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 81
  %24 = ptrtoint ptr %pdev30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev30, align 8
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @MR_ValidateMapInfo.__UNIQUE_ID_ddebug294, ptr noundef %dev31, ptr noundef nonnull @.str.6, i32 noundef %expected_size.0) #9
  br label %do.end37

do.end37:                                         ; preds = %if.then29, %do.body17
  %pdev38 = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 81
  %26 = ptrtoint ptr %pdev38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev38, align 8
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %4, align 8
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39, ptr noundef nonnull @.str.7, i32 noundef 2528, i32 noundef %30) #12
  br label %cleanup

if.end41:                                         ; preds = %if.end7
  %UnevenSpanSupport = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 101
  %31 = ptrtoint ptr %UnevenSpanSupport to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %UnevenSpanSupport, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool42.not = icmp eq i8 %32, 0
  br i1 %tobool42.not, label %if.end41.if.end44_crit_edge, label %if.end41.for.body.i_crit_edge

if.end41.for.body.i_crit_edge:                    ; preds = %if.end41
  br label %for.body.i

if.end41.if.end44_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

for.body.i:                                       ; preds = %for.inc142.i.for.body.i_crit_edge, %if.end41.for.body.i_crit_edge
  %ldCount.0240.i = phi i32 [ %inc143.i, %for.inc142.i.for.body.i_crit_edge ], [ 0, %if.end41.for.body.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 9, i32 %ldCount.0240.i
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %arrayidx.i.i, align 1
  %conv.i = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %34)
  %cmp1.i = icmp ugt i16 %34, 254
  br i1 %cmp1.i, label %for.body.i.for.inc142.i_crit_edge, label %if.end.i

for.body.i.for.inc142.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc142.i

if.end.i:                                         ; preds = %for.body.i
  %arrayidx.i223.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 11, i32 %conv.i
  %spanDepth.i = getelementptr inbounds %struct.MR_LD_RAID, ptr %arrayidx.i223.i, i32 0, i32 3
  %arrayidx22.i = getelementptr %struct.LOG_BLOCK_SPAN_INFO, ptr %8, i32 %conv.i
  %stripeShift93.i = getelementptr inbounds %struct.MR_LD_RAID, ptr %arrayidx.i223.i, i32 0, i32 5
  %35 = ptrtoint ptr %spanDepth.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %.pr.i = load i8, ptr %spanDepth.i, align 8
  br label %for.cond9.preheader.i

for.cond9.preheader.i:                            ; preds = %for.end131.i.for.cond9.preheader.i_crit_edge, %if.end.i
  %36 = phi i8 [ %97, %for.end131.i.for.cond9.preheader.i_crit_edge ], [ %.pr.i, %if.end.i ]
  %element.0236.i = phi i32 [ %inc140.i, %for.end131.i.for.cond9.preheader.i_crit_edge ], [ 0, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp12229.not.i = icmp eq i8 %36, 0
  br i1 %cmp12229.not.i, label %for.cond9.preheader.i.for.end131.i_crit_edge, label %for.body14.preheader.i

for.cond9.preheader.i.for.end131.i_crit_edge:     ; preds = %for.cond9.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end131.i

for.body14.preheader.i:                           ; preds = %for.cond9.preheader.i
  %wide.trip.count.i = zext i8 %36 to i32
  br label %for.body14.i

for.body14.i:                                     ; preds = %for.inc129.i.for.body14.i_crit_edge, %for.body14.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.body14.preheader.i ], [ %indvars.iv.next.i, %for.inc129.i.for.body14.i_crit_edge ]
  %block_span_info.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 11, i32 %conv.i, i32 2, i32 %indvars.iv.i, i32 2
  %37 = ptrtoint ptr %block_span_info.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %block_span_info.i, align 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %element.0236.i)
  %cmp17.not.i = icmp ugt i32 %39, %element.0236.i
  br i1 %cmp17.not.i, label %if.end20.i, label %for.inc129.i

if.end20.i:                                       ; preds = %for.body14.i
  %40 = trunc i32 %indvars.iv.i to i8
  %arrayidx24.i = getelementptr [8 x %struct._LD_SPAN_SET], ptr %arrayidx22.i, i32 0, i32 %element.0236.i
  %arrayidx34.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 11, i32 %conv.i, i32 2, i32 %indvars.iv.i, i32 2, i32 2, i32 %element.0236.i
  %diff.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 11, i32 %conv.i, i32 2, i32 %indvars.iv.i, i32 2, i32 2, i32 %element.0236.i, i32 3
  %41 = ptrtoint ptr %diff.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %diff.i, align 8
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #9
  %diff35.i = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx24.i, i32 0, i32 10
  %44 = ptrtoint ptr %diff35.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %diff35.i, align 4
  %45 = ptrtoint ptr %spanDepth.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %spanDepth.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp40231.not.i = icmp eq i8 %46, 0
  br i1 %cmp40231.not.i, label %if.end20.i.for.end.i_crit_edge, label %if.end20.i.for.body42.i_crit_edge

if.end20.i.for.body42.i_crit_edge:                ; preds = %if.end20.i
  br label %for.body42.i

if.end20.i.for.end.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body42.i:                                     ; preds = %for.inc.i.for.body42.i_crit_edge, %if.end20.i.for.body42.i_crit_edge
  %indvars.iv243.i = phi i32 [ %indvars.iv.next244.i, %for.inc.i.for.body42.i_crit_edge ], [ 0, %if.end20.i.for.body42.i_crit_edge ]
  %span_row_width.0233.i = phi i32 [ %span_row_width.1.i, %for.inc.i.for.body42.i_crit_edge ], [ 0, %if.end20.i.for.body42.i_crit_edge ]
  %block_span_info50.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 11, i32 %conv.i, i32 2, i32 %indvars.iv243.i, i32 2
  %47 = ptrtoint ptr %block_span_info50.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %block_span_info50.i, align 1
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %element.0236.i)
  %cmp53.not.not.i = icmp ugt i32 %49, %element.0236.i
  br i1 %cmp53.not.not.i, label %if.then55.i, label %for.body42.i.for.inc.i_crit_edge

for.body42.i.for.inc.i_crit_edge:                 ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then55.i:                                      ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv56.i = trunc i32 %span_row_width.0233.i to i8
  %arrayidx58.i = getelementptr %struct._LD_SPAN_SET, ptr %arrayidx24.i, i32 0, i32 8, i32 %indvars.iv243.i
  %50 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv56.i, ptr %arrayidx58.i, align 1
  %spanRowDataSize.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 11, i32 %conv.i, i32 2, i32 %indvars.iv243.i, i32 1, i32 4
  %51 = ptrtoint ptr %spanRowDataSize.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %spanRowDataSize.i, align 1
  %conv62.i = zext i8 %52 to i32
  %add63.i = add i32 %span_row_width.0233.i, %conv62.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then55.i, %for.body42.i.for.inc.i_crit_edge
  %span_row_width.1.i = phi i32 [ %add63.i, %if.then55.i ], [ %span_row_width.0233.i, %for.body42.i.for.inc.i_crit_edge ]
  %indvars.iv.next244.i = add nuw nsw i32 %indvars.iv243.i, 1
  %53 = ptrtoint ptr %spanDepth.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %spanDepth.i, align 8
  %55 = zext i8 %54 to i32
  %cmp40.i = icmp ult i32 %indvars.iv.next244.i, %55
  br i1 %cmp40.i, label %for.inc.i.for.body42.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i.for.body42.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body42.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end20.i.for.end.i_crit_edge
  %span_row_width.0.lcssa.i = phi i32 [ 0, %if.end20.i.for.end.i_crit_edge ], [ %span_row_width.1.i, %for.inc.i.for.end.i_crit_edge ]
  %span_row_data_width.i = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx24.i, i32 0, i32 9
  %56 = ptrtoint ptr %span_row_data_width.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %span_row_width.0.lcssa.i, ptr %span_row_data_width.i, align 8
  %logEnd.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 11, i32 %conv.i, i32 2, i32 %indvars.iv.i, i32 2, i32 2, i32 %element.0236.i, i32 1
  %57 = ptrtoint ptr %logEnd.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %logEnd.i, align 8
  %59 = tail call i64 @llvm.bswap.i64(i64 %58) #9
  %60 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %arrayidx34.i, align 8
  %62 = tail call i64 @llvm.bswap.i64(i64 %61) #9
  %sub.i = sub i64 %59, %62
  %63 = ptrtoint ptr %diff.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %diff.i, align 8
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #9
  %conv66.i = zext i32 %65 to i64
  %add67.i = add i64 %sub.i, %conv66.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i.i = icmp eq i32 %64, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %for.end.i.if.else167.i.i_crit_edge

for.end.i.if.else167.i.i_crit_edge:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else167.i.i

do.end.i.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #12
  br label %if.else167.i.i

if.else167.i.i:                                   ; preds = %do.end.i.i, %for.end.i.if.else167.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add67.i)
  %cmp169.i.i = icmp ult i64 %add67.i, 4294967296
  br i1 %cmp169.i.i, label %if.then173.i.i, label %if.else179.i.i, !prof !79

if.then173.i.i:                                   ; preds = %if.else167.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv174.i.i = trunc i64 %add67.i to i32
  %div177.i.i = udiv i32 %conv174.i.i, %65
  %conv178.i.i = zext i32 %div177.i.i to i64
  br label %mega_div64_32.exit.i

if.else179.i.i:                                   ; preds = %if.else167.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %66 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %65, i64 %add67.i) #13, !srcloc !80
  %asmresult1.i.i.i = extractvalue { i64, i64 } %66, 1
  br label %mega_div64_32.exit.i

mega_div64_32.exit.i:                             ; preds = %if.else179.i.i, %if.then173.i.i
  %d.0.i.i = phi i64 [ %conv178.i.i, %if.then173.i.i ], [ %asmresult1.i.i.i, %if.else179.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %element.0236.i)
  %cmp70.i = icmp eq i32 %element.0236.i, 0
  br i1 %cmp70.i, label %if.then72.i, label %if.else.i

if.then72.i:                                      ; preds = %mega_div64_32.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 0, ptr %arrayidx24.i, align 8
  %68 = ptrtoint ptr %stripeShift93.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %stripeShift93.i, align 2
  %sh_prom.i = zext i8 %69 to i64
  %shl.i = shl i64 %d.0.i.i, %sh_prom.i
  %conv74.i = zext i32 %span_row_width.0.lcssa.i to i64
  %mul.i = mul i64 %shl.i, %conv74.i
  %sub75.i = add i64 %mul.i, -1
  %sub76.i = add i64 %d.0.i.i, -1
  %mul78.i = mul i64 %d.0.i.i, %conv74.i
  %sub79.i = add i64 %mul78.i, -1
  br label %for.end131.sink.split.i

if.else.i:                                        ; preds = %mega_div64_32.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub87.i = add nsw i32 %element.0236.i, -1
  %arrayidx88.i = getelementptr [8 x %struct._LD_SPAN_SET], ptr %arrayidx22.i, i32 0, i32 %sub87.i
  %log_end_lba89.i = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx88.i, i32 0, i32 1
  %70 = ptrtoint ptr %log_end_lba89.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %log_end_lba89.i, align 8
  %add90.i = add i64 %71, 1
  %72 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %add90.i, ptr %arrayidx24.i, align 8
  %73 = ptrtoint ptr %stripeShift93.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %stripeShift93.i, align 2
  %sh_prom95.i = zext i8 %74 to i64
  %shl96.i = shl i64 %d.0.i.i, %sh_prom95.i
  %conv97.i = zext i32 %span_row_width.0.lcssa.i to i64
  %mul98.i = mul i64 %shl96.i, %conv97.i
  %sub100.i = add i64 %mul98.i, %71
  %span_row_end102.i = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx88.i, i32 0, i32 3
  %75 = ptrtoint ptr %span_row_end102.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %span_row_end102.i, align 8
  %add103.i = add i64 %76, 1
  %sub107.i = add i64 %76, %d.0.i.i
  %data_strip_end109.i = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx88.i, i32 0, i32 5
  %77 = ptrtoint ptr %data_strip_end109.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %data_strip_end109.i, align 8
  %add110.i = add i64 %78, 1
  %mul114.i = mul i64 %d.0.i.i, %conv97.i
  %sub116.i = add i64 %78, %mul114.i
  %data_row_end118.i = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx88.i, i32 0, i32 7
  %79 = ptrtoint ptr %data_row_end118.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %data_row_end118.i, align 8
  %add119.i = add i64 %80, 1
  br label %for.end131.sink.split.i

for.inc129.i:                                     ; preds = %for.body14.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.inc129.i.for.end131.i_crit_edge, label %for.inc129.i.for.body14.i_crit_edge

for.inc129.i.for.body14.i_crit_edge:              ; preds = %for.inc129.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14.i

for.inc129.i.for.end131.i_crit_edge:              ; preds = %for.inc129.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end131.i

for.end131.sink.split.i:                          ; preds = %if.else.i, %if.then72.i
  %sub100.i.sink = phi i64 [ %sub75.i, %if.then72.i ], [ %sub100.i, %if.else.i ]
  %add103.i.sink = phi i64 [ 0, %if.then72.i ], [ %add103.i, %if.else.i ]
  %sub107.i.sink = phi i64 [ %sub76.i, %if.then72.i ], [ %sub107.i, %if.else.i ]
  %add110.i.sink = phi i64 [ 0, %if.then72.i ], [ %add110.i, %if.else.i ]
  %sub116.i.sink = phi i64 [ %sub79.i, %if.then72.i ], [ %sub116.i, %if.else.i ]
  %.sink249.i = phi i64 [ 0, %if.then72.i ], [ %add119.i, %if.else.i ]
  %.sink.i = phi i64 [ -1, %if.then72.i ], [ %80, %if.else.i ]
  %81 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx24.i, i32 0, i32 1
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %sub100.i.sink, ptr %81, align 8
  %83 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx24.i, i32 0, i32 2
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %add103.i.sink, ptr %83, align 8
  %85 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx24.i, i32 0, i32 3
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %sub107.i.sink, ptr %85, align 8
  %87 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx24.i, i32 0, i32 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %add110.i.sink, ptr %87, align 8
  %89 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx24.i, i32 0, i32 5
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %sub116.i.sink, ptr %89, align 8
  %data_row_start.i = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx24.i, i32 0, i32 6
  %91 = ptrtoint ptr %data_row_start.i to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %.sink249.i, ptr %data_row_start.i, align 8
  %92 = ptrtoint ptr %diff.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %diff.i, align 8
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #9
  %conv81.i = zext i32 %94 to i64
  %mul82.i = mul i64 %d.0.i.i, %conv81.i
  %sub83.i = add i64 %mul82.i, %.sink.i
  %data_row_end.i = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx24.i, i32 0, i32 7
  %95 = ptrtoint ptr %data_row_end.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %sub83.i, ptr %data_row_end.i, align 8
  br label %for.end131.i

for.end131.i:                                     ; preds = %for.end131.sink.split.i, %for.inc129.i.for.end131.i_crit_edge, %for.cond9.preheader.i.for.end131.i_crit_edge
  %span.0227.i = phi i8 [ 0, %for.cond9.preheader.i.for.end131.i_crit_edge ], [ %40, %for.end131.sink.split.i ], [ %36, %for.inc129.i.for.end131.i_crit_edge ]
  %96 = ptrtoint ptr %spanDepth.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %spanDepth.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %span.0227.i, i8 %97)
  %cmp135.i = icmp ne i8 %span.0227.i, %97
  %inc140.i = add nuw nsw i32 %element.0236.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %element.0236.i)
  %cmp6.i = icmp ult i32 %element.0236.i, 7
  %or.cond.i = select i1 %cmp135.i, i1 %cmp6.i, i1 false
  br i1 %or.cond.i, label %for.end131.i.for.cond9.preheader.i_crit_edge, label %for.end131.i.for.inc142.i_crit_edge

for.end131.i.for.inc142.i_crit_edge:              ; preds = %for.end131.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc142.i

for.end131.i.for.cond9.preheader.i_crit_edge:     ; preds = %for.end131.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond9.preheader.i

for.inc142.i:                                     ; preds = %for.end131.i.for.inc142.i_crit_edge, %for.body.i.for.inc142.i_crit_edge
  %inc143.i = add nuw nsw i32 %ldCount.0240.i, 1
  %exitcond245.not.i = icmp eq i32 %inc143.i, 256
  br i1 %exitcond245.not.i, label %for.inc142.i.if.end44_crit_edge, label %for.inc142.i.for.body.i_crit_edge

for.inc142.i.for.body.i_crit_edge:                ; preds = %for.inc142.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc142.i.if.end44_crit_edge:                  ; preds = %for.inc142.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.end44:                                         ; preds = %for.inc142.i.if.end44_crit_edge, %if.end41.if.end44_crit_edge
  %tobool45.not = icmp eq ptr %6, null
  br i1 %tobool45.not, label %if.end44.if.end47_crit_edge, label %if.then46

if.end44.if.end47_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then46:                                        ; preds = %if.end44
  %98 = load i32, ptr @lb_pending_cmds, align 4
  %99 = add i32 %98, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128, i32 %99)
  %100 = icmp ult i32 %99, -128
  br i1 %100, label %if.then.i, label %if.then46.for.body.i116.preheader_crit_edge

if.then46.for.body.i116.preheader_crit_edge:      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i116.preheader

if.then.i:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  store i32 4, ptr @lb_pending_cmds, align 4
  br label %for.body.i116.preheader

for.body.i116.preheader:                          ; preds = %if.then.i, %if.then46.for.body.i116.preheader_crit_edge
  br label %for.body.i116

for.body.i116:                                    ; preds = %for.inc.i120.for.body.i116_crit_edge, %for.body.i116.preheader
  %ldCount.033.i = phi i32 [ %inc.i, %for.inc.i120.for.body.i116_crit_edge ], [ 0, %for.body.i116.preheader ]
  %arrayidx.i.i115 = getelementptr %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 9, i32 %ldCount.033.i
  %101 = ptrtoint ptr %arrayidx.i.i115 to i32
  call void @__asan_loadN_noabort(i32 %101, i32 2)
  %102 = load i16, ptr %arrayidx.i.i115, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %102)
  %cmp3.i = icmp ugt i16 %102, 254
  br i1 %cmp3.i, label %for.body.i116.for.inc.i120_crit_edge, label %if.end6.i

for.body.i116.for.inc.i120_crit_edge:             ; preds = %for.body.i116
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i120

if.end6.i:                                        ; preds = %for.body.i116
  %conv.i117 = zext i16 %102 to i32
  %arrayidx.i32.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 11, i32 %conv.i117
  %level.i = getelementptr inbounds %struct.MR_LD_RAID, ptr %arrayidx.i32.i, i32 0, i32 4
  %103 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %level.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %104)
  %cmp10.not.i = icmp eq i8 %104, 1
  br i1 %cmp10.not.i, label %lor.lhs.false12.i, label %if.end6.i.for.inc.i120_crit_edge

if.end6.i.for.inc.i120_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i120

lor.lhs.false12.i:                                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %ldState.i = getelementptr inbounds %struct.MR_LD_RAID, ptr %arrayidx.i32.i, i32 0, i32 12
  %105 = ptrtoint ptr %ldState.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %ldState.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %106)
  %cmp14.not.i = icmp eq i8 %106, 3
  %spec.select.i = zext i1 %cmp14.not.i to i8
  br label %for.inc.i120

for.inc.i120:                                     ; preds = %lor.lhs.false12.i, %if.end6.i.for.inc.i120_crit_edge, %for.body.i116.for.inc.i120_crit_edge
  %.sink.i118 = phi i8 [ 0, %for.body.i116.for.inc.i120_crit_edge ], [ 0, %if.end6.i.for.inc.i120_crit_edge ], [ %spec.select.i, %lor.lhs.false12.i ]
  %arrayidx20.i = getelementptr %struct.LD_LOAD_BALANCE_INFO, ptr %6, i32 %ldCount.033.i
  %107 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %.sink.i118, ptr %arrayidx20.i, align 8
  %inc.i = add nuw nsw i32 %ldCount.033.i, 1
  %exitcond.not.i119 = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i119, label %for.inc.i120.if.end47_crit_edge, label %for.inc.i120.for.body.i116_crit_edge

for.inc.i120.for.body.i116_crit_edge:             ; preds = %for.inc.i120
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i116

for.inc.i120.if.end47_crit_edge:                  ; preds = %for.inc.i120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.end47:                                         ; preds = %for.inc.i120.if.end47_crit_edge, %if.end44.if.end47_crit_edge
  %ldCount49 = getelementptr inbounds %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 4
  %108 = ptrtoint ptr %ldCount49 to i32
  call void @__asan_loadN_noabort(i32 %108, i32 2)
  %109 = load i16, ptr %ldCount49, align 1
  %ld_ids_prev = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 53
  %ld_ids_from_raidmap = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 54
  %110 = call ptr @memcpy(ptr %ld_ids_prev, ptr %ld_ids_from_raidmap, i32 256)
  %111 = call ptr @memset(ptr %ld_ids_from_raidmap, i32 255, i32 256)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %109)
  %cmp54.not126 = icmp eq i16 %109, 0
  br i1 %cmp54.not126, label %if.end47.cleanup_crit_edge, label %land.rhs.preheader

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs.preheader:                               ; preds = %if.end47
  %112 = tail call i16 @llvm.bswap.i16(i16 %109)
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.preheader
  %indvars.iv = phi i32 [ 0, %land.rhs.preheader ], [ %indvars.iv.next, %for.inc.land.rhs_crit_edge ]
  %num_lds.0127 = phi i16 [ %112, %land.rhs.preheader ], [ %num_lds.1, %for.inc.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %indvars.iv)
  %exitcond.not = icmp eq i32 %indvars.iv, 256
  br i1 %exitcond.not, label %land.rhs.cleanup_crit_edge, label %for.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %land.rhs
  %arrayidx.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 9, i32 %indvars.iv
  %113 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %113, i32 2)
  %114 = load i16, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %114)
  %cmp62 = icmp ugt i16 %114, 254
  br i1 %cmp62, label %for.body.for.inc_crit_edge, label %if.end65

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end65:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %conv61 = zext i16 %114 to i32
  %arrayidx.i122 = getelementptr %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 11, i32 %conv61
  %115 = ptrtoint ptr %arrayidx.i122 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx.i122, align 4
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #9
  %118 = ptrtoint ptr %arrayidx.i122 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %arrayidx.i122, align 4
  %conv68 = trunc i32 %indvars.iv to i8
  %arrayidx71 = getelementptr %struct.megasas_instance, ptr %instance, i32 0, i32 54, i32 %indvars.iv
  %119 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv68, ptr %arrayidx71, align 1
  %dec = add i16 %num_lds.0127, -1
  br label %for.inc

for.inc:                                          ; preds = %if.end65, %for.body.for.inc_crit_edge
  %num_lds.1 = phi i16 [ %num_lds.0127, %for.body.for.inc_crit_edge ], [ %dec, %if.end65 ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %cmp54.not = icmp eq i16 %num_lds.1, 0
  br i1 %cmp54.not, label %for.inc.cleanup_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %do.end37, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %do.end37 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end47.cleanup_crit_edge ], [ 1, %land.rhs.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @MR_PopulateDrvRaidMap(ptr nocapture noundef readonly %instance, i64 noundef %map_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_context = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 113
  %0 = ptrtoint ptr %ctrl_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_context, align 8
  %2 = trunc i64 %map_id to i32
  %idxprom = and i32 %2, 1
  %arrayidx = getelementptr %struct.fusion_context, ptr %1, i32 0, i32 29, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %drv_map_sz = getelementptr inbounds %struct.fusion_context, ptr %1, i32 0, i32 34
  %5 = ptrtoint ptr %drv_map_sz to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %drv_map_sz, align 4
  %7 = call ptr @memset(ptr %4, i32 0, i32 %6)
  %ldTgtIdToLd = getelementptr inbounds %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 9
  %8 = call ptr @memset(ptr %ldTgtIdToLd, i32 255, i32 1024)
  %max_raid_mapsize = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 139
  %9 = ptrtoint ptr %max_raid_mapsize to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %max_raid_mapsize, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx3 = getelementptr %struct.fusion_context, ptr %1, i32 0, i32 27, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx3, align 4
  %desc_table_offset = getelementptr inbounds %struct.MR_FW_RAID_MAP_DYNAMIC, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %desc_table_offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %desc_table_offset, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %add.ptr = getelementptr i8, ptr %12, i32 %15
  %raid_map_desc_table = getelementptr inbounds %struct.MR_FW_RAID_MAP_DYNAMIC, ptr %12, i32 0, i32 14
  %cmp.not = icmp eq ptr %add.ptr, %raid_map_desc_table
  br i1 %cmp.not, label %if.then.if.end12_crit_edge, label %do.body

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @MR_PopulateDrvRaidMap.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@MR_PopulateDrvRaidMap, %if.then9)) #9
          to label %if.end12 [label %if.then9], !srcloc !81

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 81
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @MR_PopulateDrvRaidMap.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef %add.ptr, ptr noundef %raid_map_desc_table) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %do.body, %if.then.if.end12_crit_edge
  %ld_count13 = getelementptr inbounds %struct.MR_FW_RAID_MAP_DYNAMIC, ptr %12, i32 0, i32 9
  %18 = ptrtoint ptr %ld_count13 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ld_count13, align 4
  %ldCount = getelementptr inbounds %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 4
  %20 = ptrtoint ptr %ldCount to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %ldCount, align 8
  %fp_pd_io_timeout_sec = getelementptr inbounds %struct.MR_FW_RAID_MAP_DYNAMIC, ptr %12, i32 0, i32 6
  %21 = ptrtoint ptr %fp_pd_io_timeout_sec to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fp_pd_io_timeout_sec, align 4
  %fpPdIoTimeoutSec = getelementptr inbounds %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 2
  %23 = ptrtoint ptr %fpPdIoTimeoutSec to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %fpPdIoTimeoutSec, align 8
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 676598784, ptr %4, align 8
  %25 = ptrtoint ptr %desc_table_offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %desc_table_offset, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %add.ptr15 = getelementptr i8, ptr %12, i32 %27
  %desc_table_size = getelementptr inbounds %struct.MR_FW_RAID_MAP_DYNAMIC, ptr %12, i32 0, i32 2
  %28 = ptrtoint ptr %desc_table_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %desc_table_size, align 8
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %add.ptr16 = getelementptr i8, ptr %add.ptr15, i32 %30
  %desc_table_num_elements = getelementptr inbounds %struct.MR_FW_RAID_MAP_DYNAMIC, ptr %12, i32 0, i32 3
  %31 = ptrtoint ptr %desc_table_num_elements to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %desc_table_num_elements, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp17323.not = icmp eq i32 %32, 0
  br i1 %cmp17323.not, label %if.end12.cleanup_crit_edge, label %for.body.lr.ph

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end12
  %33 = getelementptr inbounds %struct.MR_FW_RAID_MAP_DYNAMIC, ptr %12, i32 0, i32 13
  %ld_span_map = getelementptr inbounds %struct.anon.176, ptr %33, i32 0, i32 3
  %ldSpanMap = getelementptr inbounds %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 11
  %ar_map_info = getelementptr inbounds %struct.MR_FW_RAID_MAP_DYNAMIC, ptr %12, i32 0, i32 13, i32 0, i32 1
  %arMapInfo = getelementptr inbounds %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 10
  %ld_tgt_id_to_ld = getelementptr inbounds %struct.anon.176, ptr %33, i32 0, i32 1
  %devHndlInfo = getelementptr inbounds %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 8
  %pdev59 = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 81
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.body.lr.ph
  %i.0326 = phi i32 [ 0, %for.body.lr.ph ], [ %inc66, %sw.epilog.for.body_crit_edge ]
  %desc_table.0324 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %incdec.ptr, %sw.epilog.for.body_crit_edge ]
  %34 = ptrtoint ptr %desc_table.0324 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %desc_table.0324, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %36, label %do.body46 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb21
    i32 2, label %sw.bb32
    i32 3, label %sw.bb39
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %raid_map_desc_offset = getelementptr inbounds %struct.MR_RAID_MAP_DESC_TABLE, ptr %desc_table.0324, i32 0, i32 1
  %38 = ptrtoint ptr %raid_map_desc_offset to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %raid_map_desc_offset, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %add.ptr18 = getelementptr i8, ptr %add.ptr16, i32 %40
  %41 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr18, ptr %33, align 8
  %raid_map_desc_elements = getelementptr inbounds %struct.MR_RAID_MAP_DESC_TABLE, ptr %desc_table.0324, i32 0, i32 3
  %42 = ptrtoint ptr %raid_map_desc_elements to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %raid_map_desc_elements, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %mul = shl i32 %44, 3
  %45 = call ptr @memcpy(ptr %devHndlInfo, ptr %add.ptr18, i32 %mul)
  br label %sw.epilog

sw.bb21:                                          ; preds = %for.body
  %raid_map_desc_offset22 = getelementptr inbounds %struct.MR_RAID_MAP_DESC_TABLE, ptr %desc_table.0324, i32 0, i32 1
  %46 = ptrtoint ptr %raid_map_desc_offset22 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %raid_map_desc_offset22, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %add.ptr23 = getelementptr i8, ptr %add.ptr16, i32 %48
  %49 = ptrtoint ptr %ld_tgt_id_to_ld to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr23, ptr %ld_tgt_id_to_ld, align 4
  %raid_map_desc_elements25 = getelementptr inbounds %struct.MR_RAID_MAP_DESC_TABLE, ptr %desc_table.0324, i32 0, i32 3
  %50 = ptrtoint ptr %raid_map_desc_elements25 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %raid_map_desc_elements25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp26321.not = icmp eq i32 %51, 0
  br i1 %cmp26321.not, label %sw.bb21.sw.epilog_crit_edge, label %sw.bb21.for.body27_crit_edge

sw.bb21.for.body27_crit_edge:                     ; preds = %sw.bb21
  br label %for.body27

sw.bb21.sw.epilog_crit_edge:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body27:                                       ; preds = %for.body27.for.body27_crit_edge, %sw.bb21.for.body27_crit_edge
  %j.0322 = phi i32 [ %inc, %for.body27.for.body27_crit_edge ], [ 0, %sw.bb21.for.body27_crit_edge ]
  %52 = ptrtoint ptr %ld_tgt_id_to_ld to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ld_tgt_id_to_ld, align 4
  %arrayidx29 = getelementptr i16, ptr %53, i32 %j.0322
  %54 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx29, align 2
  %56 = tail call i16 @llvm.bswap.i16(i16 %55)
  %arrayidx31 = getelementptr %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 9, i32 %j.0322
  %57 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %arrayidx31, align 2
  %inc = add nuw i32 %j.0322, 1
  %58 = ptrtoint ptr %raid_map_desc_elements25 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %raid_map_desc_elements25, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %cmp26 = icmp ult i32 %inc, %60
  br i1 %cmp26, label %for.body27.for.body27_crit_edge, label %for.body27.sw.epilog_crit_edge

for.body27.sw.epilog_crit_edge:                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body27.for.body27_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body27

sw.bb32:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %raid_map_desc_offset33 = getelementptr inbounds %struct.MR_RAID_MAP_DESC_TABLE, ptr %desc_table.0324, i32 0, i32 1
  %61 = ptrtoint ptr %raid_map_desc_offset33 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %raid_map_desc_offset33, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %add.ptr34 = getelementptr i8, ptr %add.ptr16, i32 %63
  %64 = ptrtoint ptr %ar_map_info to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %add.ptr34, ptr %ar_map_info, align 8
  %raid_map_desc_elements37 = getelementptr inbounds %struct.MR_RAID_MAP_DESC_TABLE, ptr %desc_table.0324, i32 0, i32 3
  %65 = ptrtoint ptr %raid_map_desc_elements37 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %raid_map_desc_elements37, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  %mul38 = shl i32 %67, 6
  %68 = call ptr @memcpy(ptr %arMapInfo, ptr %add.ptr34, i32 %mul38)
  br label %sw.epilog

sw.bb39:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %raid_map_desc_offset40 = getelementptr inbounds %struct.MR_RAID_MAP_DESC_TABLE, ptr %desc_table.0324, i32 0, i32 1
  %69 = ptrtoint ptr %raid_map_desc_offset40 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %raid_map_desc_offset40, align 4
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  %add.ptr41 = getelementptr i8, ptr %add.ptr16, i32 %71
  %72 = ptrtoint ptr %ld_span_map to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %add.ptr41, ptr %ld_span_map, align 4
  %raid_map_desc_elements44 = getelementptr inbounds %struct.MR_RAID_MAP_DESC_TABLE, ptr %desc_table.0324, i32 0, i32 3
  %73 = ptrtoint ptr %raid_map_desc_elements44 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %raid_map_desc_elements44, align 4
  %75 = tail call i32 @llvm.bswap.i32(i32 %74)
  %mul45 = mul i32 %75, 2528
  %76 = call ptr @memcpy(ptr %ldSpanMap, ptr %add.ptr41, i32 %mul45)
  br label %sw.epilog

do.body46:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @MR_PopulateDrvRaidMap.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@MR_PopulateDrvRaidMap, %if.then58)) #9
          to label %sw.epilog [label %if.then58], !srcloc !81

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %pdev59 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pdev59, align 8
  %dev60 = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 44
  %79 = ptrtoint ptr %desc_table_num_elements to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %desc_table_num_elements, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @MR_PopulateDrvRaidMap.__UNIQUE_ID_ddebug290, ptr noundef %dev60, ptr noundef nonnull @.str.21, i32 noundef %80) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then58, %do.body46, %sw.bb39, %sw.bb32, %for.body27.sw.epilog_crit_edge, %sw.bb21.sw.epilog_crit_edge, %sw.bb
  %incdec.ptr = getelementptr %struct.MR_RAID_MAP_DESC_TABLE, ptr %desc_table.0324, i32 1
  %inc66 = add nuw i32 %i.0326, 1
  %81 = ptrtoint ptr %desc_table_num_elements to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %desc_table_num_elements, align 4
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  %cmp17 = icmp ult i32 %inc66, %83
  br i1 %cmp17, label %sw.epilog.for.body_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.else:                                          ; preds = %entry
  %supportmax256vd = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 102
  %84 = ptrtoint ptr %supportmax256vd to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %supportmax256vd, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool68.not = icmp eq i8 %85, 0
  %arrayidx131 = getelementptr %struct.fusion_context, ptr %1, i32 0, i32 27, i32 %idxprom
  %86 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx131, align 4
  br i1 %tobool68.not, label %if.else127, label %if.then69

if.then69:                                        ; preds = %if.else
  %ldCount74 = getelementptr inbounds %struct.MR_FW_RAID_MAP_EXT, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %ldCount74 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %ldCount74, align 8
  %90 = tail call i16 @llvm.bswap.i16(i16 %89)
  %conv = zext i16 %90 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %90)
  %cmp75 = icmp ugt i16 %90, 256
  br i1 %cmp75, label %do.body78, label %if.end96

do.body78:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @MR_PopulateDrvRaidMap.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@MR_PopulateDrvRaidMap, %if.then90)) #9
          to label %cleanup [label %if.then90], !srcloc !81

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #11
  %pdev91 = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 81
  %91 = ptrtoint ptr %pdev91 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pdev91, align 8
  %dev92 = getelementptr inbounds %struct.pci_dev, ptr %92, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @MR_PopulateDrvRaidMap.__UNIQUE_ID_ddebug291, ptr noundef %dev92, ptr noundef nonnull @.str.22) #9
  br label %cleanup

if.end96:                                         ; preds = %if.then69
  %ldCount97 = getelementptr inbounds %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 4
  %93 = ptrtoint ptr %ldCount97 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %89, ptr %ldCount97, align 8
  %fpPdIoTimeoutSec98 = getelementptr inbounds %struct.MR_FW_RAID_MAP_EXT, ptr %87, i32 0, i32 2
  %94 = ptrtoint ptr %fpPdIoTimeoutSec98 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %fpPdIoTimeoutSec98, align 8
  %fpPdIoTimeoutSec99 = getelementptr inbounds %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 2
  %96 = ptrtoint ptr %fpPdIoTimeoutSec99 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %fpPdIoTimeoutSec99, align 8
  br label %for.body103

for.body103:                                      ; preds = %for.body103.for.body103_crit_edge, %if.end96
  %i.1327 = phi i32 [ 0, %if.end96 ], [ %inc110, %for.body103.for.body103_crit_edge ]
  %arrayidx105 = getelementptr %struct.MR_FW_RAID_MAP_EXT, ptr %87, i32 0, i32 9, i32 %i.1327
  %97 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx105, align 1
  %conv106 = zext i8 %98 to i16
  %arrayidx108 = getelementptr %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 9, i32 %i.1327
  %99 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv106, ptr %arrayidx108, align 2
  %inc110 = add nuw nsw i32 %i.1327, 1
  %exitcond.not = icmp eq i32 %inc110, 256
  br i1 %exitcond.not, label %for.end111, label %for.body103.for.body103_crit_edge

for.body103.for.body103_crit_edge:                ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body103

for.end111:                                       ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #11
  %ldSpanMap112 = getelementptr inbounds %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 11
  %ldSpanMap114 = getelementptr inbounds %struct.MR_FW_RAID_MAP_EXT, ptr %87, i32 0, i32 11
  %mul117 = mul nuw nsw i32 %conv, 2528
  %100 = call ptr @memcpy(ptr %ldSpanMap112, ptr %ldSpanMap114, i32 %mul117)
  %arMapInfo118 = getelementptr inbounds %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 10
  %arMapInfo120 = getelementptr inbounds %struct.MR_FW_RAID_MAP_EXT, ptr %87, i32 0, i32 10
  %101 = call ptr @memcpy(ptr %arMapInfo118, ptr %arMapInfo120, i32 16384)
  %devHndlInfo122 = getelementptr inbounds %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 8
  %devHndlInfo124 = getelementptr inbounds %struct.MR_FW_RAID_MAP_EXT, ptr %87, i32 0, i32 8
  %102 = call ptr @memcpy(ptr %devHndlInfo122, ptr %devHndlInfo124, i32 2048)
  %103 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 673778176, ptr %4, align 8
  br label %cleanup

if.else127:                                       ; preds = %if.else
  %ldCount133 = getelementptr inbounds %struct.MR_FW_RAID_MAP, ptr %87, i32 0, i32 2
  %104 = ptrtoint ptr %ldCount133 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %ldCount133, align 8
  %106 = and i32 %105, -65536
  %107 = tail call i32 @llvm.bswap.i32(i32 %106)
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %107)
  %cmp136 = icmp ugt i32 %107, 64
  br i1 %cmp136, label %do.body139, label %if.end157

do.body139:                                       ; preds = %if.else127
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @MR_PopulateDrvRaidMap.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@MR_PopulateDrvRaidMap, %if.then151)) #9
          to label %cleanup [label %if.then151], !srcloc !81

if.then151:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #11
  %pdev152 = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 81
  %108 = ptrtoint ptr %pdev152 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pdev152, align 8
  %dev153 = getelementptr inbounds %struct.pci_dev, ptr %109, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @MR_PopulateDrvRaidMap.__UNIQUE_ID_ddebug292, ptr noundef %dev153, ptr noundef nonnull @.str.23) #9
  br label %cleanup

if.end157:                                        ; preds = %if.else127
  %110 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %87, align 8
  %112 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %4, align 8
  %113 = lshr i32 %105, 16
  %114 = trunc i32 %113 to i16
  %ldCount160 = getelementptr inbounds %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 4
  %115 = ptrtoint ptr %ldCount160 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %114, ptr %ldCount160, align 8
  %fpPdIoTimeoutSec161 = getelementptr inbounds %struct.MR_FW_RAID_MAP, ptr %87, i32 0, i32 5
  %116 = ptrtoint ptr %fpPdIoTimeoutSec161 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %fpPdIoTimeoutSec161, align 8
  %fpPdIoTimeoutSec162 = getelementptr inbounds %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 2
  %118 = ptrtoint ptr %fpPdIoTimeoutSec162 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %117, ptr %fpPdIoTimeoutSec162, align 8
  br label %for.body166

for.cond175.preheader:                            ; preds = %for.body166
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp177329.not = icmp eq i32 %106, 0
  br i1 %cmp177329.not, label %for.cond175.preheader.for.end186_crit_edge, label %for.body179.preheader

for.cond175.preheader.for.end186_crit_edge:       ; preds = %for.cond175.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end186

for.body179.preheader:                            ; preds = %for.cond175.preheader
  %umax = call i32 @llvm.umax.i32(i32 %107, i32 1)
  br label %for.body179

for.body166:                                      ; preds = %for.body166.for.body166_crit_edge, %if.end157
  %i.2328 = phi i32 [ 0, %if.end157 ], [ %inc173, %for.body166.for.body166_crit_edge ]
  %arrayidx168 = getelementptr %struct.MR_FW_RAID_MAP, ptr %87, i32 0, i32 4, i32 %i.2328
  %119 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx168, align 1
  %conv169 = zext i8 %120 to i16
  %arrayidx171 = getelementptr %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 9, i32 %i.2328
  %121 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %conv169, ptr %arrayidx171, align 2
  %inc173 = add nuw nsw i32 %i.2328, 1
  %exitcond331.not = icmp eq i32 %inc173, 128
  br i1 %exitcond331.not, label %for.cond175.preheader, label %for.body166.for.body166_crit_edge

for.body166.for.body166_crit_edge:                ; preds = %for.body166
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body166

for.body179:                                      ; preds = %for.body179.for.body179_crit_edge, %for.body179.preheader
  %i.3330 = phi i32 [ %inc185, %for.body179.for.body179_crit_edge ], [ 0, %for.body179.preheader ]
  %arrayidx181 = getelementptr %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 11, i32 %i.3330
  %arrayidx183 = getelementptr %struct.MR_FW_RAID_MAP, ptr %87, i32 0, i32 9, i32 %i.3330
  %122 = call ptr @memcpy(ptr %arrayidx181, ptr %arrayidx183, i32 2528)
  %inc185 = add nuw nsw i32 %i.3330, 1
  %exitcond333.not = icmp eq i32 %inc185, %umax
  br i1 %exitcond333.not, label %for.body179.for.end186_crit_edge, label %for.body179.for.body179_crit_edge

for.body179.for.body179_crit_edge:                ; preds = %for.body179
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body179

for.body179.for.end186_crit_edge:                 ; preds = %for.body179
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end186

for.end186:                                       ; preds = %for.body179.for.end186_crit_edge, %for.cond175.preheader.for.end186_crit_edge
  %arMapInfo187 = getelementptr inbounds %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 10
  %arMapInfo189 = getelementptr inbounds %struct.MR_FW_RAID_MAP, ptr %87, i32 0, i32 7
  %123 = call ptr @memcpy(ptr %arMapInfo187, ptr %arMapInfo189, i32 8192)
  %devHndlInfo191 = getelementptr inbounds %struct.MR_DRV_RAID_MAP, ptr %4, i32 0, i32 8
  %devHndlInfo193 = getelementptr inbounds %struct.MR_FW_RAID_MAP, ptr %87, i32 0, i32 8
  %124 = call ptr @memcpy(ptr %devHndlInfo191, ptr %devHndlInfo193, i32 2048)
  br label %cleanup

cleanup:                                          ; preds = %for.end186, %if.then151, %do.body139, %for.end111, %if.then90, %do.body78, %sw.epilog.cleanup_crit_edge, %if.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then90 ], [ 1, %if.then151 ], [ 0, %for.end111 ], [ 0, %for.end186 ], [ 1, %do.body78 ], [ 1, %do.body139 ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mr_update_load_balance_params(ptr nocapture noundef readonly %drv_map, ptr nocapture noundef writeonly %lbInfo) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @lb_pending_cmds, align 4
  %1 = add i32 %0, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128, i32 %1)
  %2 = icmp ult i32 %1, -128
  br i1 %2, label %if.then, label %entry.for.body.preheader_crit_edge

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store i32 4, ptr @lb_pending_cmds, align 4
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %ldCount.033 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %drv_map, i32 0, i32 9, i32 %ldCount.033
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %4)
  %cmp3 = icmp ugt i16 %4, 254
  br i1 %cmp3, label %for.body.for.inc_crit_edge, label %if.end6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end6:                                          ; preds = %for.body
  %conv = zext i16 %4 to i32
  %arrayidx.i32 = getelementptr %struct.MR_DRV_RAID_MAP, ptr %drv_map, i32 0, i32 11, i32 %conv
  %level = getelementptr inbounds %struct.MR_LD_RAID, ptr %arrayidx.i32, i32 0, i32 4
  %5 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %level, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp10.not = icmp eq i8 %6, 1
  br i1 %cmp10.not, label %lor.lhs.false12, label %if.end6.for.inc_crit_edge

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false12:                                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %ldState = getelementptr inbounds %struct.MR_LD_RAID, ptr %arrayidx.i32, i32 0, i32 12
  %7 = ptrtoint ptr %ldState to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ldState, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp14.not = icmp eq i8 %8, 3
  %spec.select = zext i1 %cmp14.not to i8
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false12, %if.end6.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %.sink = phi i8 [ 0, %for.body.for.inc_crit_edge ], [ 0, %if.end6.for.inc_crit_edge ], [ %spec.select, %lor.lhs.false12 ]
  %arrayidx20 = getelementptr %struct.LD_LOAD_BALANCE_INFO, ptr %lbInfo, i32 %ldCount.033
  %9 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.sink, ptr %arrayidx20, align 8
  %inc = add nuw nsw i32 %ldCount.033, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @MR_BuildRaidContext(ptr nocapture noundef readonly %instance, ptr noundef %io_info, ptr nocapture noundef %pRAID_Context, ptr noundef %map, ptr nocapture noundef writeonly %raidLUN) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdBlock2 = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 6
  %0 = ptrtoint ptr %io_info to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %io_info, align 8
  %numBlocks4 = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 1
  %2 = ptrtoint ptr %numBlocks4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %numBlocks4, align 8
  %ldTgtId5 = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 2
  %4 = ptrtoint ptr %ldTgtId5 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ldTgtId5, align 4
  %conv = zext i16 %5 to i32
  %isRead6 = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 3
  %6 = ptrtoint ptr %isRead6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %isRead6, align 2
  %IoforUnevenSpan = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 8
  %8 = ptrtoint ptr %IoforUnevenSpan to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %IoforUnevenSpan, align 1
  %start_span = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 9
  %9 = ptrtoint ptr %start_span to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %start_span, align 2
  %ctrl_context = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 113
  %10 = ptrtoint ptr %ctrl_context to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl_context, align 8
  %arrayidx.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 9, i32 %conv
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %arrayidx.i, align 1
  %conv7 = zext i16 %13 to i32
  %arrayidx.i556 = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 11, i32 %conv7
  %14 = ptrtoint ptr %arrayidx.i556 to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load = load i32, ptr %arrayidx.i556, align 8
  %ra_capable = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 15
  %15 = trunc i32 %bf.load to i8
  %16 = lshr i8 %15, 1
  %17 = and i8 %16, 1
  %18 = ptrtoint ptr %ra_capable to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %ra_capable, align 4
  %rowDataSize = getelementptr inbounds %struct.MR_LD_RAID, ptr %arrayidx.i556, i32 0, i32 7
  %19 = ptrtoint ptr %rowDataSize to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rowDataSize, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp = icmp eq i8 %20, 0
  br i1 %cmp, label %if.then, label %entry.if.end26_crit_edge

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then:                                          ; preds = %entry
  %spanRowDataSize = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 11, i32 %conv7, i32 2, i32 0, i32 1, i32 4
  %21 = ptrtoint ptr %spanRowDataSize to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %spanRowDataSize, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp14 = icmp eq i8 %22, 0
  br i1 %cmp14, label %if.then.cleanup347_crit_edge, label %if.else

if.then.cleanup347_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup347

if.else:                                          ; preds = %if.then
  %UnevenSpanSupport = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 101
  %23 = ptrtoint ptr %UnevenSpanSupport to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %UnevenSpanSupport, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool17.not = icmp eq i8 %24, 0
  br i1 %tobool17.not, label %do.end, label %if.then18

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %IoforUnevenSpan to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %IoforUnevenSpan, align 1
  br label %if.end26

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 81
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %conv24 = zext i8 %22 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %conv24) #12
  br label %cleanup347

if.end26:                                         ; preds = %if.then18, %entry.if.end26_crit_edge
  %stripeShift = getelementptr inbounds %struct.MR_LD_RAID, ptr %arrayidx.i556, i32 0, i32 5
  %28 = ptrtoint ptr %stripeShift to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %stripeShift, align 2
  %conv27 = zext i8 %29 to i32
  %shl = shl nuw i32 1, %conv27
  %sub = add i32 %shl, -1
  %30 = ptrtoint ptr %rowDataSize to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rowDataSize, align 4
  %data_arms = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 16
  %32 = ptrtoint ptr %data_arms to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %data_arms, align 1
  %33 = load i8, ptr %stripeShift, align 2
  %sh_prom = zext i8 %33 to i64
  %shr = lshr i64 %1, %sh_prom
  %conv31 = zext i32 %sub to i64
  %and = and i64 %1, %conv31
  %conv32 = trunc i64 %and to i16
  %conv33 = zext i32 %3 to i64
  %add = add i64 %1, -1
  %sub34 = add i64 %add, %conv33
  %34 = trunc i64 %sub34 to i32
  %conv37 = and i32 %sub, %34
  %shr41 = lshr i64 %sub34, %sh_prom
  %sub42 = sub i64 %shr41, %shr
  %35 = trunc i64 %sub42 to i8
  %conv44 = add i8 %35, 1
  %36 = ptrtoint ptr %IoforUnevenSpan to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %IoforUnevenSpan, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool46.not = icmp eq i8 %37, 0
  br i1 %tobool46.not, label %if.else88, label %if.then47

if.then47:                                        ; preds = %if.end26
  %call49 = tail call fastcc i64 @get_row_from_strip(ptr noundef %instance, i32 noundef %conv7, i64 noundef %shr, ptr noundef %map)
  %call51 = tail call fastcc i64 @get_row_from_strip(ptr noundef %instance, i32 noundef %conv7, i64 noundef %shr41, ptr noundef %map)
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call49)
  %cmp52 = icmp eq i64 %call49, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call51)
  %cmp54 = icmp eq i64 %call51, -1
  %or.cond = select i1 %cmp52, i1 true, i1 %cmp54
  br i1 %or.cond, label %do.end59, label %if.end62

do.end59:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  %pdev60 = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 81
  %38 = ptrtoint ptr %pdev60 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev60, align 8
  %dev61 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev61, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11, i32 noundef 1045) #12
  br label %cleanup347

if.end62:                                         ; preds = %if.then47
  %spanDepth = getelementptr inbounds %struct.MR_LD_RAID, ptr %arrayidx.i556, i32 0, i32 3
  %40 = ptrtoint ptr %spanDepth to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %spanDepth, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %41)
  %cmp64 = icmp eq i8 %41, 1
  br i1 %cmp64, label %if.end75.thread, label %if.else71

if.end75.thread:                                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %stripeShift to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %stripeShift, align 2
  %sh_prom69 = zext i8 %43 to i64
  %shl70 = shl i64 %call49, %sh_prom69
  %44 = ptrtoint ptr %pdBlock2 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %shl70, ptr %pdBlock2, align 8
  br label %if.end85

if.else71:                                        ; preds = %if.end62
  %45 = ptrtoint ptr %ctrl_context to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctrl_context, align 8
  %log_to_span.i = getelementptr inbounds %struct.fusion_context, ptr %46, i32 0, i32 41
  %47 = ptrtoint ptr %log_to_span.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %log_to_span.i, align 4
  %arrayidx.i558 = getelementptr %struct.LOG_BLOCK_SPAN_INFO, ptr %48, i32 %conv7
  %conv.i = zext i8 %41 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp8198.not.i = icmp eq i8 %41, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc51.i.for.body.i_crit_edge, %if.else71
  %info.0201.i = phi i32 [ 0, %if.else71 ], [ %inc52.i, %for.inc51.i.for.body.i_crit_edge ]
  %arrayidx2.i = getelementptr [8 x %struct._LD_SPAN_SET], ptr %arrayidx.i558, i32 0, i32 %info.0201.i
  %span_row_data_width.i = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx2.i, i32 0, i32 9
  %49 = ptrtoint ptr %span_row_data_width.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %span_row_data_width.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp3.i = icmp eq i32 %50, 0
  br i1 %cmp3.i, label %for.body.i.do.end82_crit_edge, label %if.end.i

for.body.i.do.end82_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end82

if.end.i:                                         ; preds = %for.body.i
  %data_row_end.i = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx2.i, i32 0, i32 7
  %51 = ptrtoint ptr %data_row_end.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %data_row_end.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %52, i64 %call49)
  %cmp4.i = icmp ult i64 %52, %call49
  %brmerge = select i1 %cmp4.i, i1 true, i1 %cmp8198.not.i
  br i1 %brmerge, label %if.end.i.for.inc51.i_crit_edge, label %if.end.i.for.body10.i_crit_edge

if.end.i.for.body10.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body10.i

if.end.i.for.inc51.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc51.i

for.body10.i:                                     ; preds = %for.inc.i.for.body10.i_crit_edge, %if.end.i.for.body10.i_crit_edge
  %span.0199.i = phi i32 [ %inc.i, %for.inc.i.for.body10.i_crit_edge ], [ 0, %if.end.i.for.body10.i_crit_edge ]
  %block_span_info.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 11, i32 %conv7, i32 2, i32 %span.0199.i, i32 2
  %53 = ptrtoint ptr %block_span_info.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %block_span_info.i, align 1
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %info.0201.i)
  %cmp13.not.not.i = icmp ugt i32 %55, %info.0201.i
  br i1 %cmp13.not.not.i, label %if.then15.i, label %for.body10.i.for.inc.i_crit_edge

for.body10.i.for.inc.i_crit_edge:                 ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then15.i:                                      ; preds = %for.body10.i
  %diff.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 11, i32 %conv7, i32 2, i32 %span.0199.i, i32 2, i32 2, i32 %info.0201.i, i32 3
  %56 = ptrtoint ptr %diff.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %diff.i, align 8
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp24.i = icmp eq i32 %57, 0
  br i1 %cmp24.i, label %if.then15.i.do.end82_crit_edge, label %if.end27.i

if.then15.i.do.end82_crit_edge:                   ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end82

if.end27.i:                                       ; preds = %if.then15.i
  %arrayidx23.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 11, i32 %conv7, i32 2, i32 %span.0199.i, i32 2, i32 2, i32 %info.0201.i
  %59 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %arrayidx23.i, align 8
  %61 = tail call i64 @llvm.bswap.i64(i64 %60) #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call49, i64 %61)
  %cmp28.not.i = icmp ult i64 %call49, %61
  br i1 %cmp28.not.i, label %if.end27.i.for.inc.i_crit_edge, label %land.lhs.true.i

if.end27.i.for.inc.i_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end27.i
  %logEnd.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 11, i32 %conv7, i32 2, i32 %span.0199.i, i32 2, i32 2, i32 %info.0201.i, i32 1
  %62 = ptrtoint ptr %logEnd.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %logEnd.i, align 8
  %64 = tail call i64 @llvm.bswap.i64(i64 %63) #9
  call void @__sanitizer_cov_trace_cmp8(i64 %64, i64 %call49)
  %cmp30.not.i = icmp ult i64 %64, %call49
  br i1 %cmp30.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true32.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true32.i:                                ; preds = %land.lhs.true.i
  %sub.i = sub i64 %call49, %61
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp169.i.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp169.i.i, label %if.then173.i.i, label %if.else179.i.i, !prof !79

if.then173.i.i:                                   ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv174.i.i = trunc i64 %sub.i to i32
  %rem175.i.i = urem i32 %conv174.i.i, %58
  br label %mega_mod64.exit.i

if.else179.i.i:                                   ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #11
  %65 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %58, i64 %sub.i) #13, !srcloc !80
  %asmresult.i267.i.i = extractvalue { i64, i64 } %65, 0
  %shr.i.i.i = lshr i64 %asmresult.i267.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %mega_mod64.exit.i

mega_mod64.exit.i:                                ; preds = %if.else179.i.i, %if.then173.i.i
  %__rem.0.i.i = phi i32 [ %rem175.i.i, %if.then173.i.i ], [ %conv.i.i.i, %if.else179.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0.i.i)
  %cmp36.i = icmp eq i32 %__rem.0.i.i, 0
  br i1 %cmp36.i, label %if.then38.i, label %mega_mod64.exit.i.for.inc.i_crit_edge

mega_mod64.exit.i.for.inc.i_crit_edge:            ; preds = %mega_mod64.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then38.i:                                      ; preds = %mega_mod64.exit.i
  %cmp39.not.i = icmp eq ptr %pdBlock2, null
  br i1 %cmp39.not.i, label %if.then38.i.if.end75_crit_edge, label %if.else167.i187.i

if.then38.i.if.end75_crit_edge:                   ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.else167.i187.i:                                ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp169.i186.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp169.i186.i, label %if.then173.i189.i, label %if.else179.i190.i, !prof !79

if.then173.i189.i:                                ; preds = %if.else167.i187.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv174.i188.i = trunc i64 %sub.i to i32
  %div177.i.i = udiv i32 %conv174.i188.i, %58
  %conv178.i.i = zext i32 %div177.i.i to i64
  br label %mega_div64_32.exit.i

if.else179.i190.i:                                ; preds = %if.else167.i187.i
  call void @__sanitizer_cov_trace_pc() #11
  %66 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %58, i64 %sub.i) #13, !srcloc !80
  %asmresult1.i.i.i = extractvalue { i64, i64 } %66, 1
  br label %mega_div64_32.exit.i

mega_div64_32.exit.i:                             ; preds = %if.else179.i190.i, %if.then173.i189.i
  %d.0.i.i = phi i64 [ %conv178.i.i, %if.then173.i189.i ], [ %asmresult1.i.i.i, %if.else179.i190.i ]
  %offsetInSpan.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 11, i32 %conv7, i32 2, i32 %span.0199.i, i32 2, i32 2, i32 %info.0201.i, i32 2
  %67 = ptrtoint ptr %offsetInSpan.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %offsetInSpan.i, align 8
  %69 = tail call i64 @llvm.bswap.i64(i64 %68) #9
  %add46.i = add i64 %69, %d.0.i.i
  %70 = ptrtoint ptr %stripeShift to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %stripeShift, align 2
  %sh_prom.i = zext i8 %71 to i64
  %shl.i = shl i64 %add46.i, %sh_prom.i
  %72 = ptrtoint ptr %pdBlock2 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %shl.i, ptr %pdBlock2, align 8
  br label %if.end75

for.inc.i:                                        ; preds = %mega_mod64.exit.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %if.end27.i.for.inc.i_crit_edge, %for.body10.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %span.0199.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.for.inc51.i_crit_edge, label %for.inc.i.for.body10.i_crit_edge

for.inc.i.for.body10.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body10.i

for.inc.i.for.inc51.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc51.i

for.inc51.i:                                      ; preds = %for.inc.i.for.inc51.i_crit_edge, %if.end.i.for.inc51.i_crit_edge
  %inc52.i = add nuw nsw i32 %info.0201.i, 1
  %exitcond211.not.i = icmp eq i32 %inc52.i, 8
  br i1 %exitcond211.not.i, label %for.inc51.i.do.end82_crit_edge, label %for.inc51.i.for.body.i_crit_edge

for.inc51.i.for.body.i_crit_edge:                 ; preds = %for.inc51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc51.i.do.end82_crit_edge:                   ; preds = %for.inc51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end82

if.end75:                                         ; preds = %mega_div64_32.exit.i, %if.then38.i.if.end75_crit_edge
  %conv74 = trunc i32 %span.0199.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv74)
  %cmp77 = icmp eq i8 %conv74, -1
  br i1 %cmp77, label %if.end75.do.end82_crit_edge, label %if.end75.if.end85_crit_edge

if.end75.if.end85_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.end75.do.end82_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end82

do.end82:                                         ; preds = %if.end75.do.end82_crit_edge, %for.inc51.i.do.end82_crit_edge, %if.then15.i.do.end82_crit_edge, %for.body.i.do.end82_crit_edge
  %pdev83 = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 81
  %73 = ptrtoint ptr %pdev83 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pdev83, align 8
  %dev84 = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev84, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.11, i32 noundef 1061, i64 noundef %call49, i64 noundef %shr, i64 noundef %shr41) #12
  br label %cleanup347

if.end85:                                         ; preds = %if.end75.if.end85_crit_edge, %if.end75.thread
  %startlba_span.0825 = phi i8 [ 0, %if.end75.thread ], [ %conv74, %if.end75.if.end85_crit_edge ]
  %75 = ptrtoint ptr %start_span to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %startlba_span.0825, ptr %start_span, align 2
  %start_row87 = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 11
  %76 = ptrtoint ptr %start_row87 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %call49, ptr %start_row87, align 8
  br label %if.end95

if.else88:                                        ; preds = %if.end26
  %77 = ptrtoint ptr %rowDataSize to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %rowDataSize, align 4
  %conv90 = zext i8 %78 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i = icmp eq i8 %78, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.else88.if.else167.i_crit_edge

if.else88.if.else167.i_crit_edge:                 ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else167.i

do.end.i:                                         ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #12
  br label %if.else167.i

if.else167.i:                                     ; preds = %do.end.i, %if.else88.if.else167.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shr)
  %cmp169.i = icmp ult i64 %shr, 4294967296
  br i1 %cmp169.i, label %if.then173.i, label %if.else179.i, !prof !79

if.then173.i:                                     ; preds = %if.else167.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv174.i = trunc i64 %shr to i32
  %div177.i = udiv i32 %conv174.i, %conv90
  %conv178.i = zext i32 %div177.i to i64
  br label %mega_div64_32.exit

if.else179.i:                                     ; preds = %if.else167.i
  call void @__sanitizer_cov_trace_pc() #11
  %79 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv90, i64 %shr) #13, !srcloc !80
  %asmresult1.i.i = extractvalue { i64, i64 } %79, 1
  br label %mega_div64_32.exit

mega_div64_32.exit:                               ; preds = %if.else179.i, %if.then173.i
  %d.0.i = phi i64 [ %conv178.i, %if.then173.i ], [ %asmresult1.i.i, %if.else179.i ]
  %80 = ptrtoint ptr %rowDataSize to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %rowDataSize, align 4
  %conv93 = zext i8 %81 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i563 = icmp eq i8 %81, 0
  br i1 %tobool.not.i563, label %do.end.i565, label %mega_div64_32.exit.if.else167.i673_crit_edge

mega_div64_32.exit.if.else167.i673_crit_edge:     ; preds = %mega_div64_32.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else167.i673

do.end.i565:                                      ; preds = %mega_div64_32.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i564 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #12
  br label %if.else167.i673

if.else167.i673:                                  ; preds = %do.end.i565, %mega_div64_32.exit.if.else167.i673_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shr41)
  %cmp169.i672 = icmp ult i64 %shr41, 4294967296
  br i1 %cmp169.i672, label %if.then173.i677, label %if.else179.i679, !prof !79

if.then173.i677:                                  ; preds = %if.else167.i673
  call void @__sanitizer_cov_trace_pc() #11
  %conv174.i674 = trunc i64 %shr41 to i32
  %div177.i675 = udiv i32 %conv174.i674, %conv93
  %conv178.i676 = zext i32 %div177.i675 to i64
  br label %if.end95

if.else179.i679:                                  ; preds = %if.else167.i673
  call void @__sanitizer_cov_trace_pc() #11
  %82 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv93, i64 %shr41) #13, !srcloc !80
  %asmresult1.i.i678 = extractvalue { i64, i64 } %82, 1
  br label %if.end95

if.end95:                                         ; preds = %if.else179.i679, %if.then173.i677, %if.end85
  %endRow.0 = phi i64 [ %call51, %if.end85 ], [ %conv178.i676, %if.then173.i677 ], [ %asmresult1.i.i678, %if.else179.i679 ]
  %start_row.0 = phi i64 [ %call49, %if.end85 ], [ %d.0.i, %if.then173.i677 ], [ %d.0.i, %if.else179.i679 ]
  %startlba_span.1 = phi i8 [ %startlba_span.0825, %if.end85 ], [ -1, %if.then173.i677 ], [ -1, %if.else179.i679 ]
  %sub96 = sub i64 %endRow.0, %start_row.0
  %83 = trunc i64 %sub96 to i32
  %conv98 = add i32 %83, 1
  %84 = ptrtoint ptr %stripeShift to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %stripeShift, align 2
  %sh_prom101 = zext i8 %85 to i64
  %shl102 = shl i64 %start_row.0, %sh_prom101
  %86 = ptrtoint ptr %arrayidx.i556 to i32
  call void @__asan_load4_noabort(i32 %86)
  %bf.load104 = load i32, ptr %arrayidx.i556, align 8
  %bf.lshr105 = lshr i32 %bf.load104, 26
  %87 = trunc i32 %bf.lshr105 to i8
  %conv107 = and i8 %87, 1
  %do_fp_rlbypass = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 10
  %88 = ptrtoint ptr %do_fp_rlbypass to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv107, ptr %do_fp_rlbypass, align 1
  %bf.load109 = load i32, ptr %arrayidx.i556, align 8
  %bf.clear110 = and i32 %bf.load109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear110)
  %tobool111.not = icmp eq i32 %bf.clear110, 0
  br i1 %tobool111.not, label %if.end95.if.end153_crit_edge, label %if.then112

if.end95.if.end153_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153

if.then112:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool113.not = icmp eq i8 %7, 0
  br i1 %tobool113.not, label %if.else129, label %if.then114

if.then114:                                       ; preds = %if.then112
  %89 = and i32 %bf.load109, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool119.not = icmp eq i32 %89, 0
  br i1 %tobool119.not, label %if.then114.if.end153_crit_edge, label %land.rhs

if.then114.if.end153_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153

land.rhs:                                         ; preds = %if.then114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp121 = icmp eq i8 %35, 0
  br i1 %cmp121, label %land.rhs.if.end153_crit_edge, label %lor.rhs

land.rhs.if.end153_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153

lor.rhs:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %90 = and i32 %bf.load109, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool127 = icmp ne i32 %90, 0
  br label %if.end153

if.else129:                                       ; preds = %if.then112
  %91 = and i32 %bf.load109, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool134.not = icmp eq i32 %91, 0
  br i1 %tobool134.not, label %if.else129.if.end153_crit_edge, label %land.rhs135

if.else129.if.end153_crit_edge:                   ; preds = %if.else129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153

land.rhs135:                                      ; preds = %if.else129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp137 = icmp eq i8 %35, 0
  br i1 %cmp137, label %land.rhs135.if.end153_crit_edge, label %lor.rhs139

land.rhs135.if.end153_crit_edge:                  ; preds = %land.rhs135
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153

lor.rhs139:                                       ; preds = %land.rhs135
  call void @__sanitizer_cov_trace_pc() #11
  %92 = and i32 %bf.load109, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool144 = icmp ne i32 %92, 0
  br label %if.end153

if.end153:                                        ; preds = %lor.rhs139, %land.rhs135.if.end153_crit_edge, %if.else129.if.end153_crit_edge, %lor.rhs, %land.rhs.if.end153_crit_edge, %if.then114.if.end153_crit_edge, %if.end95.if.end153_crit_edge
  %conv128.sink.shrunk = phi i1 [ false, %if.end95.if.end153_crit_edge ], [ false, %if.then114.if.end153_crit_edge ], [ true, %land.rhs.if.end153_crit_edge ], [ %tobool127, %lor.rhs ], [ false, %if.else129.if.end153_crit_edge ], [ true, %land.rhs135.if.end153_crit_edge ], [ %tobool144, %lor.rhs139 ]
  %conv128.sink = zext i1 %conv128.sink.shrunk to i8
  %fpOkForIo = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 7
  %93 = ptrtoint ptr %fpOkForIo to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv128.sink, ptr %fpOkForIo, align 8
  %conv154 = and i32 %conv98, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv154)
  %cmp155 = icmp eq i32 %conv154, 1
  br i1 %cmp155, label %if.then157, label %if.else165

if.then157:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp159 = icmp eq i8 %35, 0
  br i1 %cmp159, label %if.then161, label %if.then157.if.end247_crit_edge

if.then157.if.end247_crit_edge:                   ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end247

if.then161:                                       ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #11
  %conv162 = and i64 %and, 65535
  %add163 = add i64 %shl102, %conv162
  br label %if.end247

if.else165:                                       ; preds = %if.end153
  %94 = ptrtoint ptr %IoforUnevenSpan to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %IoforUnevenSpan, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %cmp168 = icmp eq i8 %95, 0
  br i1 %cmp168, label %if.then170, label %if.else206

if.then170:                                       ; preds = %if.else165
  %add171 = add i64 %start_row.0, 1
  %96 = ptrtoint ptr %rowDataSize to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %rowDataSize, align 4
  %conv173 = zext i8 %97 to i64
  %mul = mul i64 %add171, %conv173
  %sub174 = add i64 %mul, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %sub174)
  %cmp175 = icmp eq i64 %shr, %sub174
  br i1 %cmp175, label %if.then177, label %if.then170.if.end182_crit_edge

if.then170.if.end182_crit_edge:                   ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end182

if.then177:                                       ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #11
  %conv178 = and i64 %and, 65535
  %add179 = add i64 %shl102, %conv178
  %98 = trunc i64 %and to i32
  %conv180 = and i32 %98, 65535
  %sub181 = sub i32 %shl, %conv180
  br label %if.end182

if.end182:                                        ; preds = %if.then177, %if.then170.if.end182_crit_edge
  %regStart.0 = phi i64 [ %add179, %if.then177 ], [ %shl102, %if.then170.if.end182_crit_edge ]
  %regSize.0 = phi i32 [ %sub181, %if.then177 ], [ %shl, %if.then170.if.end182_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv154)
  %cmp184 = icmp ugt i32 %conv154, 2
  br i1 %cmp184, label %if.then186, label %if.end182.if.end193_crit_edge

if.end182.if.end193_crit_edge:                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193

if.then186:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #11
  %sub188 = add nsw i32 %conv154, -2
  %99 = ptrtoint ptr %stripeShift to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %stripeShift, align 2
  %conv190 = zext i8 %100 to i32
  %shl191 = shl i32 %sub188, %conv190
  %add192 = add i32 %shl191, %regSize.0
  br label %if.end193

if.end193:                                        ; preds = %if.then186, %if.end182.if.end193_crit_edge
  %regSize.1 = phi i32 [ %add192, %if.then186 ], [ %regSize.0, %if.end182.if.end193_crit_edge ]
  %mul196 = mul i64 %endRow.0, %conv173
  call void @__sanitizer_cov_trace_cmp8(i64 %shr41, i64 %mul196)
  %cmp197 = icmp eq i64 %shr41, %mul196
  br i1 %cmp197, label %if.then199, label %if.else203

if.then199:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #11
  %conv200 = and i32 %conv37, 65535
  %add201 = add nuw nsw i32 %conv200, 1
  %add202 = add i32 %add201, %regSize.1
  br label %if.end247

if.else203:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #11
  %add204 = add i32 %regSize.1, %shl
  br label %if.end247

if.else206:                                       ; preds = %if.else165
  %call208 = tail call fastcc i64 @get_strip_from_row(ptr noundef %instance, i32 noundef %conv7, i64 noundef %start_row.0, ptr noundef %map)
  %conv210 = zext i8 %startlba_span.1 to i32
  %spanRowDataSize212 = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 11, i32 %conv7, i32 2, i32 %conv210, i32 1, i32 4
  %101 = ptrtoint ptr %spanRowDataSize212 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %spanRowDataSize212, align 1
  %conv213 = zext i8 %102 to i64
  %add214 = add i64 %call208, -1
  %sub215 = add i64 %add214, %conv213
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %sub215)
  %cmp216 = icmp eq i64 %shr, %sub215
  br i1 %cmp216, label %if.then218, label %if.else206.if.end223_crit_edge

if.else206.if.end223_crit_edge:                   ; preds = %if.else206
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end223

if.then218:                                       ; preds = %if.else206
  call void @__sanitizer_cov_trace_pc() #11
  %conv219 = and i64 %and, 65535
  %add220 = add i64 %shl102, %conv219
  %103 = trunc i64 %and to i32
  %conv221 = and i32 %103, 65535
  %sub222 = sub i32 %shl, %conv221
  br label %if.end223

if.end223:                                        ; preds = %if.then218, %if.else206.if.end223_crit_edge
  %regStart.1 = phi i64 [ %add220, %if.then218 ], [ %shl102, %if.else206.if.end223_crit_edge ]
  %regSize.2 = phi i32 [ %sub222, %if.then218 ], [ %shl, %if.else206.if.end223_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv154)
  %cmp225 = icmp ugt i32 %conv154, 2
  br i1 %cmp225, label %if.then227, label %if.end223.if.end234_crit_edge

if.end223.if.end234_crit_edge:                    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end234

if.then227:                                       ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #11
  %sub229 = add nsw i32 %conv154, -2
  %104 = ptrtoint ptr %stripeShift to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %stripeShift, align 2
  %conv231 = zext i8 %105 to i32
  %shl232 = shl i32 %sub229, %conv231
  %add233 = add i32 %shl232, %regSize.2
  br label %if.end234

if.end234:                                        ; preds = %if.then227, %if.end223.if.end234_crit_edge
  %regSize.3 = phi i32 [ %add233, %if.then227 ], [ %regSize.2, %if.end223.if.end234_crit_edge ]
  %call236 = tail call fastcc i64 @get_strip_from_row(ptr noundef %instance, i32 noundef %conv7, i64 noundef %endRow.0, ptr noundef %map)
  call void @__sanitizer_cov_trace_cmp8(i64 %shr41, i64 %call236)
  %cmp237 = icmp eq i64 %shr41, %call236
  br i1 %cmp237, label %if.then239, label %if.else243

if.then239:                                       ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #11
  %conv240 = and i32 %conv37, 65535
  %add241 = add nuw nsw i32 %conv240, 1
  %add242 = add i32 %add241, %regSize.3
  br label %if.end247

if.else243:                                       ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #11
  %add244 = add i32 %regSize.3, %shl
  br label %if.end247

if.end247:                                        ; preds = %if.else243, %if.then239, %if.else203, %if.then199, %if.then161, %if.then157.if.end247_crit_edge
  %regStart.2 = phi i64 [ %add163, %if.then161 ], [ %shl102, %if.then157.if.end247_crit_edge ], [ %regStart.0, %if.then199 ], [ %regStart.0, %if.else203 ], [ %regStart.1, %if.then239 ], [ %regStart.1, %if.else243 ]
  %regSize.4 = phi i32 [ %3, %if.then161 ], [ %shl, %if.then157.if.end247_crit_edge ], [ %add202, %if.then199 ], [ %add204, %if.else203 ], [ %add242, %if.then239 ], [ %add244, %if.else243 ]
  %fpIoTimeoutForLd = getelementptr inbounds %struct.MR_LD_RAID, ptr %arrayidx.i556, i32 0, i32 19
  %106 = ptrtoint ptr %fpIoTimeoutForLd to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %fpIoTimeoutForLd, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool249.not = icmp eq i8 %107, 0
  br i1 %tobool249.not, label %cond.false, label %if.end247.cond.end_crit_edge

if.end247.cond.end_crit_edge:                     ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #11
  %fpPdIoTimeoutSec = getelementptr inbounds %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 2
  %108 = ptrtoint ptr %fpPdIoTimeoutSec to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %fpPdIoTimeoutSec, align 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end247.cond.end_crit_edge
  %cond.in = phi i8 [ %109, %cond.false ], [ %107, %if.end247.cond.end_crit_edge ]
  %conv253 = zext i8 %cond.in to i16
  %110 = shl nuw i16 %conv253, 8
  %timeout_value = getelementptr inbounds %struct.RAID_CONTEXT, ptr %pRAID_Context, i32 0, i32 2
  %111 = ptrtoint ptr %timeout_value to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %110, ptr %timeout_value, align 2
  %adapter_type = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 142
  %112 = ptrtoint ptr %adapter_type to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %adapter_type, align 4
  %114 = zext i8 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %113, label %cond.end.if.end284_crit_edge [
    i8 3, label %if.then257
    i8 2, label %if.then272
  ]

cond.end.if.end284_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end284

if.then257:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool259.not = icmp eq i8 %7, 0
  %regTypeReqOnRead = getelementptr inbounds %struct.MR_LD_RAID, ptr %arrayidx.i556, i32 0, i32 15
  %regTypeReqOnWrite = getelementptr inbounds %struct.MR_LD_RAID, ptr %arrayidx.i556, i32 0, i32 13
  %cond265.in.in = select i1 %tobool259.not, ptr %regTypeReqOnWrite, ptr %regTypeReqOnRead
  br label %if.end284.sink.split.sink.split

if.then272:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool274.not = icmp eq i8 %7, 0
  br i1 %tobool274.not, label %cond.false276, label %if.then272.if.end284.sink.split_crit_edge

if.then272.if.end284.sink.split_crit_edge:        ; preds = %if.then272
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end284.sink.split

cond.false276:                                    ; preds = %if.then272
  call void @__sanitizer_cov_trace_pc() #11
  %regTypeReqOnWrite277 = getelementptr inbounds %struct.MR_LD_RAID, ptr %arrayidx.i556, i32 0, i32 13
  br label %if.end284.sink.split.sink.split

if.end284.sink.split.sink.split:                  ; preds = %cond.false276, %if.then257
  %regTypeReqOnWrite277.sink = phi ptr [ %regTypeReqOnWrite277, %cond.false276 ], [ %cond265.in.in, %if.then257 ]
  %115 = ptrtoint ptr %regTypeReqOnWrite277.sink to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %regTypeReqOnWrite277.sink, align 1
  br label %if.end284.sink.split

if.end284.sink.split:                             ; preds = %if.end284.sink.split.sink.split, %if.then272.if.end284.sink.split_crit_edge
  %cond280.sink = phi i8 [ 1, %if.then272.if.end284.sink.split_crit_edge ], [ %116, %if.end284.sink.split.sink.split ]
  %reg_lock_flags282 = getelementptr inbounds %struct.RAID_CONTEXT, ptr %pRAID_Context, i32 0, i32 3
  %117 = ptrtoint ptr %reg_lock_flags282 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %cond280.sink, ptr %reg_lock_flags282, align 4
  br label %if.end284

if.end284:                                        ; preds = %if.end284.sink.split, %cond.end.if.end284_crit_edge
  %targetId = getelementptr inbounds %struct.MR_LD_RAID, ptr %arrayidx.i556, i32 0, i32 11
  %118 = ptrtoint ptr %targetId to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %targetId, align 8
  %virtual_disk_tgt_id = getelementptr inbounds %struct.RAID_CONTEXT, ptr %pRAID_Context, i32 0, i32 5
  %120 = ptrtoint ptr %virtual_disk_tgt_id to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %119, ptr %virtual_disk_tgt_id, align 2
  %121 = tail call i64 @llvm.bswap.i64(i64 %regStart.2)
  %reg_lock_row_lba = getelementptr inbounds %struct.RAID_CONTEXT, ptr %pRAID_Context, i32 0, i32 6
  %122 = ptrtoint ptr %reg_lock_row_lba to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %121, ptr %reg_lock_row_lba, align 8
  %123 = tail call i32 @llvm.bswap.i32(i32 %regSize.4)
  %reg_lock_length = getelementptr inbounds %struct.RAID_CONTEXT, ptr %pRAID_Context, i32 0, i32 7
  %124 = ptrtoint ptr %reg_lock_length to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %reg_lock_length, align 8
  %seqNum = getelementptr inbounds %struct.MR_LD_RAID, ptr %arrayidx.i556, i32 0, i32 16
  %125 = ptrtoint ptr %seqNum to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %seqNum, align 2
  %config_seq_num = getelementptr inbounds %struct.RAID_CONTEXT, ptr %pRAID_Context, i32 0, i32 13
  %127 = ptrtoint ptr %config_seq_num to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %config_seq_num, align 2
  %LUN = getelementptr inbounds %struct.MR_LD_RAID, ptr %arrayidx.i556, i32 0, i32 18
  %128 = ptrtoint ptr %raidLUN to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %LUN, ptr %raidLUN, align 4
  %r56_div_offload = getelementptr inbounds %struct.fusion_context, ptr %11, i32 0, i32 48
  %129 = ptrtoint ptr %r56_div_offload to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %r56_div_offload, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool285.not = icmp eq i8 %130, 0
  br i1 %tobool285.not, label %if.end284.if.end294_crit_edge, label %land.lhs.true

if.end284.if.end294_crit_edge:                    ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end294

land.lhs.true:                                    ; preds = %if.end284
  %level = getelementptr inbounds %struct.MR_LD_RAID, ptr %arrayidx.i556, i32 0, i32 4
  %131 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %level, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %132)
  %cmp288 = icmp ugt i8 %132, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool291.not = icmp eq i8 %7, 0
  %or.cond555 = select i1 %cmp288, i1 %tobool291.not, i1 false
  br i1 %or.cond555, label %if.then292, label %land.lhs.true.if.end294_crit_edge

land.lhs.true.if.end294_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end294

if.then292:                                       ; preds = %land.lhs.true
  %133 = ptrtoint ptr %rowDataSize to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %rowDataSize, align 4
  %rowSize.i = getelementptr inbounds %struct.MR_LD_RAID, ptr %arrayidx.i556, i32 0, i32 6
  %135 = ptrtoint ptr %rowSize.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %rowSize.i, align 1
  %conv.i684 = zext i8 %134 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool.not.i.i = icmp eq i8 %134, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.then292.if.else167.i.i788_crit_edge

if.then292.if.else167.i.i788_crit_edge:           ; preds = %if.then292
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else167.i.i788

do.end.i.i:                                       ; preds = %if.then292
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #12
  br label %if.else167.i.i788

if.else167.i.i788:                                ; preds = %do.end.i.i, %if.then292.if.else167.i.i788_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shr)
  %cmp169.i.i787 = icmp ult i64 %shr, 4294967296
  br i1 %cmp169.i.i787, label %if.then173.i.i792, label %if.else179.i.i794, !prof !79

if.then173.i.i792:                                ; preds = %if.else167.i.i788
  call void @__sanitizer_cov_trace_pc() #11
  %conv174.i.i789 = trunc i64 %shr to i32
  %div177.i.i790 = udiv i32 %conv174.i.i789, %conv.i684
  %conv178.i.i791 = zext i32 %div177.i.i790 to i64
  br label %mega_div64_32.exit.i796

if.else179.i.i794:                                ; preds = %if.else167.i.i788
  call void @__sanitizer_cov_trace_pc() #11
  %137 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i684, i64 %shr) #13, !srcloc !80
  %asmresult1.i.i.i793 = extractvalue { i64, i64 } %137, 1
  br label %mega_div64_32.exit.i796

mega_div64_32.exit.i796:                          ; preds = %if.else179.i.i794, %if.then173.i.i792
  %d.0.i.i795 = phi i64 [ %conv178.i.i791, %if.then173.i.i792 ], [ %asmresult1.i.i.i793, %if.else179.i.i794 ]
  %conv3.i = zext i8 %136 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool.not.i2.i = icmp eq i8 %136, 0
  br i1 %tobool.not.i2.i, label %do.end.i4.i, label %mega_div64_32.exit.i796.if.else167.i100.i_crit_edge

mega_div64_32.exit.i796.if.else167.i100.i_crit_edge: ; preds = %mega_div64_32.exit.i796
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else167.i100.i

do.end.i4.i:                                      ; preds = %mega_div64_32.exit.i796
  call void @__sanitizer_cov_trace_pc() #11
  %call.i3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %if.else167.i100.i

if.else167.i100.i:                                ; preds = %do.end.i4.i, %mega_div64_32.exit.i796.if.else167.i100.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %d.0.i.i795)
  %cmp169.i99.i = icmp ult i64 %d.0.i.i795, 4294967296
  br i1 %cmp169.i99.i, label %if.then173.i102.i, label %if.else179.i103.i, !prof !79

if.then173.i102.i:                                ; preds = %if.else167.i100.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv174.i101.i = trunc i64 %d.0.i.i795 to i32
  %rem175.i.i813 = urem i32 %conv174.i101.i, %conv3.i
  br label %mega_mod64.exit.i818

if.else179.i103.i:                                ; preds = %if.else167.i100.i
  call void @__sanitizer_cov_trace_pc() #11
  %138 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv3.i, i64 %d.0.i.i795) #13, !srcloc !80
  %asmresult.i267.i.i814 = extractvalue { i64, i64 } %138, 0
  %shr.i.i.i815 = lshr i64 %asmresult.i267.i.i814, 32
  %conv.i.i.i816 = trunc i64 %shr.i.i.i815 to i32
  br label %mega_mod64.exit.i818

mega_mod64.exit.i818:                             ; preds = %if.else179.i103.i, %if.then173.i102.i
  %__rem.0.i.i817 = phi i32 [ %rem175.i.i813, %if.then173.i102.i ], [ %conv.i.i.i816, %if.else179.i103.i ]
  %139 = trunc i32 %__rem.0.i.i817 to i8
  %140 = xor i8 %139, -1
  %conv7.i = add i8 %136, %140
  br i1 %tobool.not.i.i, label %if.end.i109.thread.i, label %mega_mod64.exit.i818.if.else167.i218.i_crit_edge

mega_mod64.exit.i818.if.else167.i218.i_crit_edge: ; preds = %mega_mod64.exit.i818
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else167.i218.i

if.end.i109.thread.i:                             ; preds = %mega_mod64.exit.i818
  call void @__sanitizer_cov_trace_pc() #11
  %call.i105.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %if.else167.i218.i

if.else167.i218.i:                                ; preds = %if.end.i109.thread.i, %mega_mod64.exit.i818.if.else167.i218.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shr)
  %cmp169.i217.i = icmp ult i64 %shr, 4294967296
  br i1 %cmp169.i217.i, label %if.then173.i221.i, label %if.else179.i225.i, !prof !79

if.then173.i221.i:                                ; preds = %if.else167.i218.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv174.i219.i = trunc i64 %shr to i32
  %rem175.i220.i = urem i32 %conv174.i219.i, %conv.i684
  br label %mega_mod64.exit227.i

if.else179.i225.i:                                ; preds = %if.else167.i218.i
  call void @__sanitizer_cov_trace_pc() #11
  %141 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i684, i64 %shr) #13, !srcloc !80
  %asmresult.i267.i222.i = extractvalue { i64, i64 } %141, 0
  %shr.i.i223.i = lshr i64 %asmresult.i267.i222.i, 32
  %conv.i.i224.i = trunc i64 %shr.i.i223.i to i32
  br label %mega_mod64.exit227.i

mega_mod64.exit227.i:                             ; preds = %if.else179.i225.i, %if.then173.i221.i
  %__rem.0.i226.i = phi i32 [ %rem175.i220.i, %if.then173.i221.i ], [ %conv.i.i224.i, %if.else179.i225.i ]
  %conv11.i = sext i8 %conv7.i to i32
  %add.i819 = add nsw i32 %conv11.i, 1
  %conv12.i = and i32 %__rem.0.i226.i, 255
  %add13.i = add nsw i32 %add.i819, %conv12.i
  %conv14.i = sext i32 %add13.i to i64
  br i1 %tobool.not.i2.i, label %if.end.i233.thread.i, label %mega_mod64.exit227.i.if.else167.i341.i_crit_edge

mega_mod64.exit227.i.if.else167.i341.i_crit_edge: ; preds = %mega_mod64.exit227.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else167.i341.i

if.end.i233.thread.i:                             ; preds = %mega_mod64.exit227.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i229.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %if.else167.i341.i

if.else167.i341.i:                                ; preds = %if.end.i233.thread.i, %mega_mod64.exit227.i.if.else167.i341.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add13.i)
  %cmp169.i340.i = icmp sgt i32 %add13.i, -1
  br i1 %cmp169.i340.i, label %if.then173.i343.i, label %if.else179.i347.i, !prof !79

if.then173.i343.i:                                ; preds = %if.else167.i341.i
  call void @__sanitizer_cov_trace_pc() #11
  %rem175.i342.lhs.trunc.i = trunc i32 %add13.i to i16
  %rem175.i342.rhs.trunc.i = zext i8 %136 to i16
  %rem175.i342479.i = urem i16 %rem175.i342.lhs.trunc.i, %rem175.i342.rhs.trunc.i
  %rem175.i342.zext.i = zext i16 %rem175.i342479.i to i32
  br label %mega_mod64.exit349.i

if.else179.i347.i:                                ; preds = %if.else167.i341.i
  call void @__sanitizer_cov_trace_pc() #11
  %142 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv3.i, i64 %conv14.i) #13, !srcloc !80
  %asmresult.i267.i344.i = extractvalue { i64, i64 } %142, 0
  %shr.i.i345.i = lshr i64 %asmresult.i267.i344.i, 32
  %conv.i.i346.i = trunc i64 %shr.i.i345.i to i32
  br label %mega_mod64.exit349.i

mega_mod64.exit349.i:                             ; preds = %if.else179.i347.i, %if.then173.i343.i
  %__rem.0.i348.i = phi i32 [ %rem175.i342.zext.i, %if.then173.i343.i ], [ %conv.i.i346.i, %if.else179.i347.i ]
  %spanDepth.i820 = getelementptr inbounds %struct.MR_LD_RAID, ptr %arrayidx.i556, i32 0, i32 3
  %143 = ptrtoint ptr %spanDepth.i820 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %spanDepth.i820, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %144)
  %cmp.i821 = icmp eq i8 %144, 1
  br i1 %cmp.i821, label %mega_mod64.exit349.i.if.end26.i_crit_edge, label %if.else.i

mega_mod64.exit349.i.if.end26.i_crit_edge:        ; preds = %mega_mod64.exit349.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.else.i:                                        ; preds = %mega_mod64.exit349.i
  %call20.i = tail call fastcc i32 @MR_GetSpanBlock(i32 noundef %conv7, i64 noundef %d.0.i.i795, ptr noundef %pdBlock2, ptr noundef %map) #9
  %conv22.i = and i32 %call20.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %conv22.i)
  %cmp23.i = icmp eq i32 %conv22.i, 255
  br i1 %cmp23.i, label %if.else.i.cleanup347_crit_edge, label %if.else.i.if.end26.i_crit_edge

if.else.i.if.end26.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.else.i.cleanup347_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup347

if.end26.i:                                       ; preds = %if.else.i.if.end26.i_crit_edge, %mega_mod64.exit349.i.if.end26.i_crit_edge
  %span.0.i = phi i32 [ %call20.i, %if.else.i.if.end26.i_crit_edge ], [ 0, %mega_mod64.exit349.i.if.end26.i_crit_edge ]
  %145 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %level, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %146)
  %cmp28.i = icmp eq i8 %146, 6
  br i1 %cmp28.i, label %if.then30.i, label %if.else53.i

if.then30.i:                                      ; preds = %if.end26.i
  %sub32.i = add nuw nsw i32 %conv3.i, 254
  br i1 %tobool.not.i2.i, label %if.end.i355.thread.i, label %if.then30.i.if.else167.i464.i_crit_edge

if.then30.i.if.else167.i464.i_crit_edge:          ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else167.i464.i

if.end.i355.thread.i:                             ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i351.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %if.else167.i464.i

if.else167.i464.i:                                ; preds = %if.end.i355.thread.i, %if.then30.i.if.else167.i464.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %d.0.i.i795)
  %cmp169.i463.i = icmp ult i64 %d.0.i.i795, 4294967296
  br i1 %cmp169.i463.i, label %if.then173.i467.i, label %if.else179.i471.i, !prof !79

if.then173.i467.i:                                ; preds = %if.else167.i464.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv174.i465.i = trunc i64 %d.0.i.i795 to i32
  %rem175.i466.i = urem i32 %conv174.i465.i, %conv3.i
  br label %mega_mod64.exit473.i

if.else179.i471.i:                                ; preds = %if.else167.i464.i
  call void @__sanitizer_cov_trace_pc() #11
  %147 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv3.i, i64 %d.0.i.i795) #13, !srcloc !80
  %asmresult.i267.i468.i = extractvalue { i64, i64 } %147, 0
  %shr.i.i469.i = lshr i64 %asmresult.i267.i468.i, 32
  %conv.i.i470.i = trunc i64 %shr.i.i469.i to i32
  br label %mega_mod64.exit473.i

mega_mod64.exit473.i:                             ; preds = %if.else179.i471.i, %if.then173.i467.i
  %__rem.0.i472.i = phi i32 [ %rem175.i466.i, %if.then173.i467.i ], [ %conv.i.i470.i, %if.else179.i471.i ]
  %sub35.i = sub i32 %sub32.i, %__rem.0.i472.i
  %sext.mask.i = and i32 %sub35.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask.i)
  %cmp38.not.i = icmp eq i32 %sext.mask.i, 0
  %add43.i = select i1 %cmp38.not.i, i32 0, i32 %conv3.i
  %PParityArm.0.in.i = add i32 %add43.i, %sub35.i
  %flow_specific.i = getelementptr inbounds %struct.RAID_CONTEXT_G35, ptr %pRAID_Context, i32 0, i32 6
  %sext1.i = shl i32 %PParityArm.0.in.i, 24
  %shl.i822 = ashr exact i32 %sext1.i, 19
  %or.i = or i32 %shl.i822, %conv11.i
  %conv52.i = trunc i32 %or.i to i16
  %148 = ptrtoint ptr %flow_specific.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %conv52.i, ptr %flow_specific.i, align 4
  br label %if.end62.i

if.else53.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv11.tr.i = sext i8 %conv7.i to i16
  %conv56.i = shl nsw i16 %conv11.tr.i, 5
  %flow_specific58.i = getelementptr inbounds %struct.RAID_CONTEXT_G35, ptr %pRAID_Context, i32 0, i32 6
  %149 = ptrtoint ptr %flow_specific58.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %flow_specific58.i, align 4
  %or60.i = or i16 %150, %conv56.i
  store i16 %or60.i, ptr %flow_specific58.i, align 4
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.else53.i, %mega_mod64.exit473.i
  %151 = tail call i64 @llvm.bswap.i64(i64 %d.0.i.i795) #9
  %152 = ptrtoint ptr %reg_lock_row_lba to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 %151, ptr %reg_lock_row_lba, align 8
  %flow_specific67.i = getelementptr inbounds %struct.RAID_CONTEXT_G35, ptr %pRAID_Context, i32 0, i32 6
  %153 = ptrtoint ptr %flow_specific67.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %flow_specific67.i, align 4
  %call9.tr.i = trunc i32 %__rem.0.i226.i to i16
  %155 = shl i16 %call9.tr.i, 10
  %conv70.i = or i16 %154, %155
  %156 = tail call i16 @llvm.bswap.i16(i16 %conv70.i) #9
  %157 = ptrtoint ptr %flow_specific67.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %156, ptr %flow_specific67.i, align 2
  %conv72.i = shl i32 %span.0.i, 5
  %or75.i = or i32 %conv72.i, %__rem.0.i348.i
  %conv76.i = trunc i32 %or75.i to i8
  %span_arm.i = getelementptr inbounds %struct.RAID_CONTEXT_G35, ptr %pRAID_Context, i32 0, i32 10
  %158 = ptrtoint ptr %span_arm.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %conv76.i, ptr %span_arm.i, align 1
  %raid_flags.i = getelementptr inbounds %struct.RAID_CONTEXT_G35, ptr %pRAID_Context, i32 0, i32 9
  %159 = ptrtoint ptr %raid_flags.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 -128, ptr %raid_flags.i, align 8
  br label %cleanup347

if.end294:                                        ; preds = %land.lhs.true.if.end294_crit_edge, %if.end284.if.end294_crit_edge
  %fpOkForIo295 = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 7
  %160 = ptrtoint ptr %fpOkForIo295 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %fpOkForIo295, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool296.not = icmp eq i8 %161, 0
  br i1 %tobool296.not, label %if.else318, label %if.then297

if.then297:                                       ; preds = %if.end294
  %162 = ptrtoint ptr %IoforUnevenSpan to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %IoforUnevenSpan, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool300.not = icmp eq i8 %163, 0
  br i1 %tobool300.not, label %cond.false305, label %cond.true301

cond.true301:                                     ; preds = %if.then297
  call void @__sanitizer_cov_trace_pc() #11
  %call303 = tail call fastcc zeroext i8 @mr_spanset_get_phy_params(ptr noundef %instance, i32 noundef %conv7, i64 noundef %shr, i16 noundef zeroext %conv32, ptr noundef %io_info, ptr noundef %pRAID_Context, ptr noundef %map)
  br label %cond.end309

cond.false305:                                    ; preds = %if.then297
  call void @__sanitizer_cov_trace_pc() #11
  %call307 = tail call fastcc zeroext i8 @MR_GetPhyParams(ptr noundef %instance, i32 noundef %conv7, i64 noundef %shr, i16 noundef zeroext %conv32, ptr noundef %io_info, ptr noundef %pRAID_Context, ptr noundef %map)
  br label %cond.end309

cond.end309:                                      ; preds = %cond.false305, %cond.true301
  %cond310.in = phi i8 [ %call303, %cond.true301 ], [ %call307, %cond.false305 ]
  %devHandle = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 4
  %164 = ptrtoint ptr %devHandle to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %devHandle, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %165)
  %cmp313 = icmp eq i16 %165, -1
  br i1 %cmp313, label %if.then315, label %cond.end309.cleanup347_crit_edge

cond.end309.cleanup347_crit_edge:                 ; preds = %cond.end309
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup347

if.then315:                                       ; preds = %cond.end309
  call void @__sanitizer_cov_trace_pc() #11
  %166 = ptrtoint ptr %fpOkForIo295 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 0, ptr %fpOkForIo295, align 8
  br label %cleanup347

if.else318:                                       ; preds = %if.end294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool319.not = icmp eq i8 %7, 0
  br i1 %tobool319.not, label %if.else318.cleanup347_crit_edge, label %for.cond.preheader

if.else318.cleanup347_crit_edge:                  ; preds = %if.else318
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup347

for.cond.preheader:                               ; preds = %if.else318
  %conv321 = zext i8 %conv44 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv44)
  %cmp322841.not = icmp eq i8 %conv44, 0
  br i1 %cmp322841.not, label %for.cond.preheader.cleanup347_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup347_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup347

for.body:                                         ; preds = %cond.end339.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %stripIdx.0842 = phi i32 [ %inc, %cond.end339.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %167 = ptrtoint ptr %IoforUnevenSpan to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %IoforUnevenSpan, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool326.not = icmp eq i8 %168, 0
  %conv335 = zext i32 %stripIdx.0842 to i64
  %add336 = add i64 %shr, %conv335
  br i1 %tobool326.not, label %cond.false333, label %cond.true327

cond.true327:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call331 = tail call fastcc zeroext i8 @mr_spanset_get_phy_params(ptr noundef %instance, i32 noundef %conv7, i64 noundef %add336, i16 noundef zeroext %conv32, ptr noundef %io_info, ptr noundef %pRAID_Context, ptr noundef %map)
  br label %cond.end339

cond.false333:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call337 = tail call fastcc zeroext i8 @MR_GetPhyParams(ptr noundef %instance, i32 noundef %conv7, i64 noundef %add336, i16 noundef zeroext %conv32, ptr noundef %io_info, ptr noundef %pRAID_Context, ptr noundef %map)
  br label %cond.end339

cond.end339:                                      ; preds = %cond.false333, %cond.true327
  %cond340.in = phi i8 [ %call331, %cond.true327 ], [ %call337, %cond.false333 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cond340.in)
  %tobool342.not = icmp eq i8 %cond340.in, 0
  %inc = add nuw nsw i32 %stripIdx.0842, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv321)
  %exitcond.not = icmp eq i32 %inc, %conv321
  %or.cond862 = select i1 %tobool342.not, i1 true, i1 %exitcond.not
  br i1 %or.cond862, label %cond.end339.cleanup347_crit_edge, label %cond.end339.for.body_crit_edge

cond.end339.for.body_crit_edge:                   ; preds = %cond.end339
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cond.end339.cleanup347_crit_edge:                 ; preds = %cond.end339
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup347

cleanup347:                                       ; preds = %cond.end339.cleanup347_crit_edge, %for.cond.preheader.cleanup347_crit_edge, %if.else318.cleanup347_crit_edge, %if.then315, %cond.end309.cleanup347_crit_edge, %if.end62.i, %if.else.i.cleanup347_crit_edge, %do.end82, %do.end59, %do.end, %if.then.cleanup347_crit_edge
  %retval.1 = phi i8 [ 0, %do.end59 ], [ 0, %do.end82 ], [ 0, %do.end ], [ 0, %if.then.cleanup347_crit_edge ], [ %cond310.in, %if.then315 ], [ %cond310.in, %cond.end309.cleanup347_crit_edge ], [ 1, %if.else318.cleanup347_crit_edge ], [ 1, %if.else.i.cleanup347_crit_edge ], [ 1, %if.end62.i ], [ 1, %for.cond.preheader.cleanup347_crit_edge ], [ 1, %cond.end339.cleanup347_crit_edge ]
  ret i8 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @get_row_from_strip(ptr nocapture noundef readonly %instance, i32 noundef %ld, i64 noundef %strip, ptr nocapture noundef readonly %map) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_context = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 113
  %0 = ptrtoint ptr %ctrl_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_context, align 8
  %log_to_span = getelementptr inbounds %struct.fusion_context, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %log_to_span to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %log_to_span, align 4
  %arrayidx = getelementptr %struct.LOG_BLOCK_SPAN_INFO, ptr %3, i32 %ld
  %span_row_data_width = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx, i32 0, i32 9
  %4 = ptrtoint ptr %span_row_data_width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %span_row_data_width, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %data_strip_end = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx, i32 0, i32 5
  %6 = ptrtoint ptr %data_strip_end to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %data_strip_end, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %strip)
  %cmp5 = icmp ult i64 %7, %strip
  br i1 %cmp5, label %for.inc35, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.7.if.end.i_crit_edge, %if.end.6.if.end.i_crit_edge, %if.end.5.if.end.i_crit_edge, %if.end.4.if.end.i_crit_edge, %if.end.3.if.end.i_crit_edge, %if.end.2.if.end.i_crit_edge, %if.end.1.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %info.0171.lcssa179 = phi i32 [ 0, %if.end.if.end.i_crit_edge ], [ 1, %if.end.1.if.end.i_crit_edge ], [ 2, %if.end.2.if.end.i_crit_edge ], [ 3, %if.end.3.if.end.i_crit_edge ], [ 4, %if.end.4.if.end.i_crit_edge ], [ 5, %if.end.5.if.end.i_crit_edge ], [ 6, %if.end.6.if.end.i_crit_edge ], [ 7, %if.end.7.if.end.i_crit_edge ]
  %arrayidx3.lcssa178 = phi ptr [ %arrayidx, %if.end.if.end.i_crit_edge ], [ %arrayidx3.1, %if.end.1.if.end.i_crit_edge ], [ %arrayidx3.2, %if.end.2.if.end.i_crit_edge ], [ %arrayidx3.3, %if.end.3.if.end.i_crit_edge ], [ %arrayidx3.4, %if.end.4.if.end.i_crit_edge ], [ %arrayidx3.5, %if.end.5.if.end.i_crit_edge ], [ %arrayidx3.6, %if.end.6.if.end.i_crit_edge ], [ %arrayidx3.7, %if.end.7.if.end.i_crit_edge ]
  %.lcssa177 = phi i32 [ %5, %if.end.if.end.i_crit_edge ], [ %26, %if.end.1.if.end.i_crit_edge ], [ %30, %if.end.2.if.end.i_crit_edge ], [ %34, %if.end.3.if.end.i_crit_edge ], [ %38, %if.end.4.if.end.i_crit_edge ], [ %42, %if.end.5.if.end.i_crit_edge ], [ %46, %if.end.6.if.end.i_crit_edge ], [ %50, %if.end.7.if.end.i_crit_edge ]
  %span_row_data_width.le = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.lcssa178, i32 0, i32 9
  %data_strip_start = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.lcssa178, i32 0, i32 4
  %8 = ptrtoint ptr %data_strip_start to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %data_strip_start, align 8
  %sub = sub i64 %strip, %9
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp169.i = icmp ult i64 %sub, 4294967296
  br i1 %cmp169.i, label %if.then173.i, label %if.else179.i, !prof !79

if.then173.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv174.i = trunc i64 %sub to i32
  %rem175.i = urem i32 %conv174.i, %.lcssa177
  br label %mega_mod64.exit

if.else179.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %.lcssa177, i64 %sub) #13, !srcloc !80
  %asmresult.i267.i = extractvalue { i64, i64 } %10, 0
  %shr.i.i = lshr i64 %asmresult.i267.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %mega_mod64.exit

mega_mod64.exit:                                  ; preds = %if.else179.i, %if.then173.i
  %__rem.0.i = phi i32 [ %rem175.i, %if.then173.i ], [ %conv.i.i, %if.else179.i ]
  %11 = ptrtoint ptr %span_row_data_width.le to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %span_row_data_width.le, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i67 = icmp eq i32 %12, 0
  br i1 %tobool.not.i67, label %do.end.i69, label %mega_mod64.exit.if.else167.i165_crit_edge

mega_mod64.exit.if.else167.i165_crit_edge:        ; preds = %mega_mod64.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else167.i165

do.end.i69:                                       ; preds = %mega_mod64.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #12
  br label %if.else167.i165

if.else167.i165:                                  ; preds = %do.end.i69, %mega_mod64.exit.if.else167.i165_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp169.i164 = icmp ult i64 %sub, 4294967296
  br i1 %cmp169.i164, label %if.then173.i167, label %if.else179.i168, !prof !79

if.then173.i167:                                  ; preds = %if.else167.i165
  call void @__sanitizer_cov_trace_pc() #11
  %conv174.i166 = trunc i64 %sub to i32
  %div177.i = udiv i32 %conv174.i166, %12
  %conv178.i = zext i32 %div177.i to i64
  br label %mega_div64_32.exit

if.else179.i168:                                  ; preds = %if.else167.i165
  call void @__sanitizer_cov_trace_pc() #11
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %sub) #13, !srcloc !80
  %asmresult1.i.i = extractvalue { i64, i64 } %13, 1
  br label %mega_div64_32.exit

mega_div64_32.exit:                               ; preds = %if.else179.i168, %if.then173.i167
  %d.0.i = phi i64 [ %conv178.i, %if.then173.i167 ], [ %asmresult1.i.i, %if.else179.i168 ]
  %diff = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.lcssa178, i32 0, i32 10
  %14 = ptrtoint ptr %diff to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %diff, align 4
  %conv = zext i32 %15 to i64
  %mul = mul i64 %d.0.i, %conv
  %spanDepth = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 11, i32 %ld, i32 0, i32 3
  %16 = ptrtoint ptr %spanDepth to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %spanDepth, align 8
  %conv13 = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp14172.not = icmp eq i8 %17, 0
  br i1 %cmp14172.not, label %mega_div64_32.exit.for.end_crit_edge, label %mega_div64_32.exit.for.body16_crit_edge

mega_div64_32.exit.for.body16_crit_edge:          ; preds = %mega_div64_32.exit
  br label %for.body16

mega_div64_32.exit.for.end_crit_edge:             ; preds = %mega_div64_32.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body16:                                       ; preds = %for.inc.for.body16_crit_edge, %mega_div64_32.exit.for.body16_crit_edge
  %span_offset.0175 = phi i32 [ %span_offset.1, %for.inc.for.body16_crit_edge ], [ 0, %mega_div64_32.exit.for.body16_crit_edge ]
  %span.0173 = phi i32 [ %inc30, %for.inc.for.body16_crit_edge ], [ 0, %mega_div64_32.exit.for.body16_crit_edge ]
  %block_span_info = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 11, i32 %ld, i32 2, i32 %span.0173, i32 2
  %18 = ptrtoint ptr %block_span_info to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %block_span_info, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %info.0171.lcssa179)
  %cmp19.not.not = icmp ugt i32 %20, %info.0171.lcssa179
  br i1 %cmp19.not.not, label %if.then21, label %for.body16.for.inc_crit_edge

for.body16.for.inc_crit_edge:                     ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then21:                                        ; preds = %for.body16
  %arrayidx23 = getelementptr %struct._LD_SPAN_SET, ptr %arrayidx3.lcssa178, i32 0, i32 8, i32 %span.0173
  %21 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %__rem.0.i, i32 %conv24)
  %cmp25.not = icmp ult i32 %__rem.0.i, %conv24
  br i1 %cmp25.not, label %if.then21.for.end_crit_edge, label %if.then27

if.then21.for.end_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then27:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add i32 %span_offset.0175, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then27, %for.body16.for.inc_crit_edge
  %span_offset.1 = phi i32 [ %inc, %if.then27 ], [ %span_offset.0175, %for.body16.for.inc_crit_edge ]
  %inc30 = add nuw nsw i32 %span.0173, 1
  %exitcond.not = icmp eq i32 %inc30, %conv13
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body16_crit_edge

for.inc.for.body16_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body16

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then21.for.end_crit_edge, %mega_div64_32.exit.for.end_crit_edge
  %span_offset.0.lcssa = phi i32 [ 0, %mega_div64_32.exit.for.end_crit_edge ], [ %span_offset.0175, %if.then21.for.end_crit_edge ], [ %span_offset.1, %for.inc.for.end_crit_edge ]
  %data_row_start = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.lcssa178, i32 0, i32 6
  %23 = ptrtoint ptr %data_row_start to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %data_row_start, align 8
  %sub32 = add i32 %span_offset.0.lcssa, -1
  %conv33 = zext i32 %sub32 to i64
  %add31 = add i64 %mul, %conv33
  %add34 = add i64 %add31, %24
  br label %cleanup

for.inc35:                                        ; preds = %if.end
  %arrayidx3.1 = getelementptr [8 x %struct._LD_SPAN_SET], ptr %arrayidx, i32 0, i32 1
  %span_row_data_width.1 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.1, i32 0, i32 9
  %25 = ptrtoint ptr %span_row_data_width.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %span_row_data_width.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp4.1 = icmp eq i32 %26, 0
  br i1 %cmp4.1, label %for.inc35.cleanup_crit_edge, label %if.end.1

for.inc35.cleanup_crit_edge:                      ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.1:                                         ; preds = %for.inc35
  %data_strip_end.1 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.1, i32 0, i32 5
  %27 = ptrtoint ptr %data_strip_end.1 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %data_strip_end.1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %strip)
  %cmp5.1 = icmp ult i64 %28, %strip
  br i1 %cmp5.1, label %for.inc35.1, label %if.end.1.if.end.i_crit_edge

if.end.1.if.end.i_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.inc35.1:                                      ; preds = %if.end.1
  %arrayidx3.2 = getelementptr [8 x %struct._LD_SPAN_SET], ptr %arrayidx, i32 0, i32 2
  %span_row_data_width.2 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.2, i32 0, i32 9
  %29 = ptrtoint ptr %span_row_data_width.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %span_row_data_width.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp4.2 = icmp eq i32 %30, 0
  br i1 %cmp4.2, label %for.inc35.1.cleanup_crit_edge, label %if.end.2

for.inc35.1.cleanup_crit_edge:                    ; preds = %for.inc35.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.2:                                         ; preds = %for.inc35.1
  %data_strip_end.2 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.2, i32 0, i32 5
  %31 = ptrtoint ptr %data_strip_end.2 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %data_strip_end.2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %strip)
  %cmp5.2 = icmp ult i64 %32, %strip
  br i1 %cmp5.2, label %for.inc35.2, label %if.end.2.if.end.i_crit_edge

if.end.2.if.end.i_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.inc35.2:                                      ; preds = %if.end.2
  %arrayidx3.3 = getelementptr [8 x %struct._LD_SPAN_SET], ptr %arrayidx, i32 0, i32 3
  %span_row_data_width.3 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.3, i32 0, i32 9
  %33 = ptrtoint ptr %span_row_data_width.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %span_row_data_width.3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp4.3 = icmp eq i32 %34, 0
  br i1 %cmp4.3, label %for.inc35.2.cleanup_crit_edge, label %if.end.3

for.inc35.2.cleanup_crit_edge:                    ; preds = %for.inc35.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.3:                                         ; preds = %for.inc35.2
  %data_strip_end.3 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.3, i32 0, i32 5
  %35 = ptrtoint ptr %data_strip_end.3 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %data_strip_end.3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %strip)
  %cmp5.3 = icmp ult i64 %36, %strip
  br i1 %cmp5.3, label %for.inc35.3, label %if.end.3.if.end.i_crit_edge

if.end.3.if.end.i_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.inc35.3:                                      ; preds = %if.end.3
  %arrayidx3.4 = getelementptr [8 x %struct._LD_SPAN_SET], ptr %arrayidx, i32 0, i32 4
  %span_row_data_width.4 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.4, i32 0, i32 9
  %37 = ptrtoint ptr %span_row_data_width.4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %span_row_data_width.4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp4.4 = icmp eq i32 %38, 0
  br i1 %cmp4.4, label %for.inc35.3.cleanup_crit_edge, label %if.end.4

for.inc35.3.cleanup_crit_edge:                    ; preds = %for.inc35.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.4:                                         ; preds = %for.inc35.3
  %data_strip_end.4 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.4, i32 0, i32 5
  %39 = ptrtoint ptr %data_strip_end.4 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %data_strip_end.4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %40, i64 %strip)
  %cmp5.4 = icmp ult i64 %40, %strip
  br i1 %cmp5.4, label %for.inc35.4, label %if.end.4.if.end.i_crit_edge

if.end.4.if.end.i_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.inc35.4:                                      ; preds = %if.end.4
  %arrayidx3.5 = getelementptr [8 x %struct._LD_SPAN_SET], ptr %arrayidx, i32 0, i32 5
  %span_row_data_width.5 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.5, i32 0, i32 9
  %41 = ptrtoint ptr %span_row_data_width.5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %span_row_data_width.5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp4.5 = icmp eq i32 %42, 0
  br i1 %cmp4.5, label %for.inc35.4.cleanup_crit_edge, label %if.end.5

for.inc35.4.cleanup_crit_edge:                    ; preds = %for.inc35.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.5:                                         ; preds = %for.inc35.4
  %data_strip_end.5 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.5, i32 0, i32 5
  %43 = ptrtoint ptr %data_strip_end.5 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %data_strip_end.5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %44, i64 %strip)
  %cmp5.5 = icmp ult i64 %44, %strip
  br i1 %cmp5.5, label %for.inc35.5, label %if.end.5.if.end.i_crit_edge

if.end.5.if.end.i_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.inc35.5:                                      ; preds = %if.end.5
  %arrayidx3.6 = getelementptr [8 x %struct._LD_SPAN_SET], ptr %arrayidx, i32 0, i32 6
  %span_row_data_width.6 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.6, i32 0, i32 9
  %45 = ptrtoint ptr %span_row_data_width.6 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %span_row_data_width.6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp4.6 = icmp eq i32 %46, 0
  br i1 %cmp4.6, label %for.inc35.5.cleanup_crit_edge, label %if.end.6

for.inc35.5.cleanup_crit_edge:                    ; preds = %for.inc35.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.6:                                         ; preds = %for.inc35.5
  %data_strip_end.6 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.6, i32 0, i32 5
  %47 = ptrtoint ptr %data_strip_end.6 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %data_strip_end.6, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %strip)
  %cmp5.6 = icmp ult i64 %48, %strip
  br i1 %cmp5.6, label %for.inc35.6, label %if.end.6.if.end.i_crit_edge

if.end.6.if.end.i_crit_edge:                      ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.inc35.6:                                      ; preds = %if.end.6
  %arrayidx3.7 = getelementptr [8 x %struct._LD_SPAN_SET], ptr %arrayidx, i32 0, i32 7
  %span_row_data_width.7 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.7, i32 0, i32 9
  %49 = ptrtoint ptr %span_row_data_width.7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %span_row_data_width.7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp4.7 = icmp eq i32 %50, 0
  br i1 %cmp4.7, label %for.inc35.6.cleanup_crit_edge, label %if.end.7

for.inc35.6.cleanup_crit_edge:                    ; preds = %for.inc35.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.7:                                         ; preds = %for.inc35.6
  %data_strip_end.7 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.7, i32 0, i32 5
  %51 = ptrtoint ptr %data_strip_end.7 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %data_strip_end.7, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %52, i64 %strip)
  %cmp5.7 = icmp ult i64 %52, %strip
  br i1 %cmp5.7, label %if.end.7.cleanup_crit_edge, label %if.end.7.if.end.i_crit_edge

if.end.7.if.end.i_crit_edge:                      ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.7.cleanup_crit_edge, %for.inc35.6.cleanup_crit_edge, %for.inc35.5.cleanup_crit_edge, %for.inc35.4.cleanup_crit_edge, %for.inc35.3.cleanup_crit_edge, %for.inc35.2.cleanup_crit_edge, %for.inc35.1.cleanup_crit_edge, %for.inc35.cleanup_crit_edge, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %add34, %for.end ], [ -1, %if.end.7.cleanup_crit_edge ], [ -1, %for.inc35.6.cleanup_crit_edge ], [ -1, %for.inc35.5.cleanup_crit_edge ], [ -1, %for.inc35.4.cleanup_crit_edge ], [ -1, %for.inc35.3.cleanup_crit_edge ], [ -1, %for.inc35.2.cleanup_crit_edge ], [ -1, %for.inc35.1.cleanup_crit_edge ], [ -1, %for.inc35.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @get_strip_from_row(ptr nocapture noundef readonly %instance, i32 noundef %ld, i64 noundef %row, ptr nocapture noundef readonly %map) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_context = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 113
  %0 = ptrtoint ptr %ctrl_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_context, align 8
  %log_to_span = getelementptr inbounds %struct.fusion_context, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %log_to_span to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %log_to_span, align 4
  %arrayidx = getelementptr %struct.LOG_BLOCK_SPAN_INFO, ptr %3, i32 %ld
  %spanDepth = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 11, i32 %ld, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc47.for.body_crit_edge, %entry
  %info.0201 = phi i32 [ 0, %entry ], [ %inc48, %for.inc47.for.body_crit_edge ]
  %arrayidx2 = getelementptr [8 x %struct._LD_SPAN_SET], ptr %arrayidx, i32 0, i32 %info.0201
  %span_row_data_width = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx2, i32 0, i32 9
  %4 = ptrtoint ptr %span_row_data_width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %span_row_data_width, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %for.body.do.end_crit_edge, label %if.end

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end:                                           ; preds = %for.body
  %data_row_end = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx2, i32 0, i32 7
  %6 = ptrtoint ptr %data_row_end to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %data_row_end, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %row)
  %cmp4 = icmp ult i64 %7, %row
  br i1 %cmp4, label %if.end.for.inc47_crit_edge, label %for.cond7.preheader

if.end.for.inc47_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc47

for.cond7.preheader:                              ; preds = %if.end
  %8 = ptrtoint ptr %spanDepth to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %spanDepth, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp8197.not = icmp eq i8 %9, 0
  br i1 %cmp8197.not, label %for.cond7.preheader.for.inc47_crit_edge, label %for.cond7.preheader.for.body10_crit_edge

for.cond7.preheader.for.body10_crit_edge:         ; preds = %for.cond7.preheader
  br label %for.body10

for.cond7.preheader.for.inc47_crit_edge:          ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc47

for.body10:                                       ; preds = %for.inc.for.body10_crit_edge, %for.cond7.preheader.for.body10_crit_edge
  %span.0198 = phi i32 [ %inc, %for.inc.for.body10_crit_edge ], [ 0, %for.cond7.preheader.for.body10_crit_edge ]
  %block_span_info = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 11, i32 %ld, i32 2, i32 %span.0198, i32 2
  %10 = ptrtoint ptr %block_span_info to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %block_span_info, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %info.0201)
  %cmp13.not.not = icmp ugt i32 %12, %info.0201
  br i1 %cmp13.not.not, label %if.then15, label %for.body10.for.inc_crit_edge

for.body10.for.inc_crit_edge:                     ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then15:                                        ; preds = %for.body10
  %arrayidx23 = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 11, i32 %ld, i32 2, i32 %span.0198, i32 2, i32 2, i32 %info.0201
  %13 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx23, align 8
  %15 = tail call i64 @llvm.bswap.i64(i64 %14)
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %row)
  %cmp24.not = icmp ugt i64 %15, %row
  br i1 %cmp24.not, label %if.then15.for.inc_crit_edge, label %land.lhs.true

if.then15.for.inc_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %if.then15
  %logEnd = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 11, i32 %ld, i32 2, i32 %span.0198, i32 2, i32 2, i32 %info.0201, i32 1
  %16 = ptrtoint ptr %logEnd to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %logEnd, align 8
  %18 = tail call i64 @llvm.bswap.i64(i64 %17)
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %row)
  %cmp26.not = icmp ult i64 %18, %row
  br i1 %cmp26.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true28

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true28:                                  ; preds = %land.lhs.true
  %sub = sub i64 %row, %15
  %diff = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 11, i32 %ld, i32 2, i32 %span.0198, i32 2, i32 2, i32 %info.0201, i32 3
  %19 = ptrtoint ptr %diff to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %diff, align 8
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %do.end.i, label %land.lhs.true28.if.else167.i_crit_edge

land.lhs.true28.if.else167.i_crit_edge:           ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else167.i

do.end.i:                                         ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %if.else167.i

if.else167.i:                                     ; preds = %do.end.i, %land.lhs.true28.if.else167.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp169.i = icmp ult i64 %sub, 4294967296
  br i1 %cmp169.i, label %if.then173.i, label %if.else179.i, !prof !79

if.then173.i:                                     ; preds = %if.else167.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv174.i = trunc i64 %sub to i32
  %rem175.i = urem i32 %conv174.i, %21
  br label %mega_mod64.exit

if.else179.i:                                     ; preds = %if.else167.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %21, i64 %sub) #13, !srcloc !80
  %asmresult.i267.i = extractvalue { i64, i64 } %22, 0
  %shr.i.i = lshr i64 %asmresult.i267.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %mega_mod64.exit

mega_mod64.exit:                                  ; preds = %if.else179.i, %if.then173.i
  %__rem.0.i = phi i32 [ %rem175.i, %if.then173.i ], [ %conv.i.i, %if.else179.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0.i)
  %cmp31 = icmp eq i32 %__rem.0.i, 0
  br i1 %cmp31, label %if.then33, label %mega_mod64.exit.for.inc_crit_edge

mega_mod64.exit.for.inc_crit_edge:                ; preds = %mega_mod64.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then33:                                        ; preds = %mega_mod64.exit
  %span_row_data_width.le = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx2, i32 0, i32 9
  %data_row_start = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx2, i32 0, i32 6
  %23 = ptrtoint ptr %data_row_start to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %data_row_start, align 8
  %25 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx23, align 8
  %27 = tail call i64 @llvm.bswap.i64(i64 %26)
  %28 = add i64 %24, %27
  %sub36 = sub i64 %row, %28
  %29 = ptrtoint ptr %diff to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %diff, align 8
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i91 = icmp eq i32 %30, 0
  br i1 %tobool.not.i91, label %do.end.i93, label %if.then33.if.else167.i189_crit_edge

if.then33.if.else167.i189_crit_edge:              ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else167.i189

do.end.i93:                                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  %call.i92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #12
  br label %if.else167.i189

if.else167.i189:                                  ; preds = %do.end.i93, %if.then33.if.else167.i189_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub36)
  %cmp169.i188 = icmp ult i64 %sub36, 4294967296
  br i1 %cmp169.i188, label %if.then173.i191, label %if.else179.i192, !prof !79

if.then173.i191:                                  ; preds = %if.else167.i189
  call void @__sanitizer_cov_trace_pc() #11
  %conv174.i190 = trunc i64 %sub36 to i32
  %div177.i = udiv i32 %conv174.i190, %31
  %conv178.i = zext i32 %div177.i to i64
  br label %mega_div64_32.exit

if.else179.i192:                                  ; preds = %if.else167.i189
  call void @__sanitizer_cov_trace_pc() #11
  %32 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %31, i64 %sub36) #13, !srcloc !80
  %asmresult1.i.i = extractvalue { i64, i64 } %32, 1
  br label %mega_div64_32.exit

mega_div64_32.exit:                               ; preds = %if.else179.i192, %if.then173.i191
  %d.0.i = phi i64 [ %conv178.i, %if.then173.i191 ], [ %asmresult1.i.i, %if.else179.i192 ]
  %33 = ptrtoint ptr %span_row_data_width.le to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %span_row_data_width.le, align 8
  %conv40 = zext i32 %34 to i64
  %mul = mul i64 %d.0.i, %conv40
  %data_strip_start = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx2, i32 0, i32 4
  %35 = ptrtoint ptr %data_strip_start to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %data_strip_start, align 8
  %add41 = add i64 %mul, %36
  %arrayidx42 = getelementptr %struct._LD_SPAN_SET, ptr %arrayidx2, i32 0, i32 8, i32 %span.0198
  %37 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %38 to i64
  %add44 = add i64 %add41, %conv43
  br label %cleanup

for.inc:                                          ; preds = %mega_mod64.exit.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.then15.for.inc_crit_edge, %for.body10.for.inc_crit_edge
  %inc = add nuw nsw i32 %span.0198, 1
  %39 = ptrtoint ptr %spanDepth to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %spanDepth, align 8
  %conv = zext i8 %40 to i32
  %cmp8 = icmp ult i32 %inc, %conv
  br i1 %cmp8, label %for.inc.for.body10_crit_edge, label %for.inc.for.inc47_crit_edge

for.inc.for.inc47_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc47

for.inc.for.body10_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body10

for.inc47:                                        ; preds = %for.inc.for.inc47_crit_edge, %for.cond7.preheader.for.inc47_crit_edge, %if.end.for.inc47_crit_edge
  %inc48 = add nuw nsw i32 %info.0201, 1
  %exitcond.not = icmp eq i32 %inc48, 8
  br i1 %exitcond.not, label %for.inc47.do.end_crit_edge, label %for.inc47.for.body_crit_edge

for.inc47.for.body_crit_edge:                     ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc47.do.end_crit_edge:                       ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %for.inc47.do.end_crit_edge, %for.body.do.end_crit_edge
  %pdev = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 81
  %41 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %conv50 = trunc i64 %row to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %ld, i32 noundef %conv50) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %mega_div64_32.exit
  %retval.0 = phi i64 [ -1, %do.end ], [ %add44, %mega_div64_32.exit ]
  ret i64 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @mr_spanset_get_phy_params(ptr nocapture noundef readonly %instance, i32 noundef %ld, i64 noundef %stripRow, i16 noundef zeroext %stripRef, ptr nocapture noundef %io_info, ptr nocapture noundef writeonly %pRAID_Context, ptr nocapture noundef readonly %map) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 11, i32 %ld
  %pdBlock2 = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 6
  %devHandle = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 4
  %pd_interface = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 5
  %0 = ptrtoint ptr %devHandle to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %devHandle, align 2
  %start_row = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 11
  %1 = ptrtoint ptr %start_row to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %start_row, align 8
  %start_span = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 9
  %3 = ptrtoint ptr %start_span to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %start_span, align 2
  %level = getelementptr inbounds %struct.MR_LD_RAID, ptr %arrayidx.i, i32 0, i32 4
  %5 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %level, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %6)
  %cmp = icmp eq i8 %6, 6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call4 = tail call fastcc i32 @get_arm_from_strip(ptr noundef %instance, i32 noundef %ld, i64 noundef %stripRow, ptr noundef %map)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp5 = icmp eq i32 %call4, -1
  br i1 %cmp5, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %conv8 = zext i8 %4 to i32
  %spanRowSize = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 11, i32 %ld, i32 2, i32 %conv8, i32 1, i32 3
  %7 = ptrtoint ptr %spanRowSize to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %spanRowSize, align 2
  %conv10 = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.if.else167.i_crit_edge

if.end.if.else167.i_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else167.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %if.else167.i

if.else167.i:                                     ; preds = %do.end.i, %if.end.if.else167.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %2)
  %cmp169.i = icmp ult i64 %2, 4294967296
  br i1 %cmp169.i, label %if.then173.i, label %if.else179.i, !prof !79

if.then173.i:                                     ; preds = %if.else167.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv174.i = trunc i64 %2 to i32
  %rem175.i = urem i32 %conv174.i, %conv10
  br label %mega_mod64.exit

if.else179.i:                                     ; preds = %if.else167.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv10, i64 %2) #13, !srcloc !80
  %asmresult.i267.i = extractvalue { i64, i64 } %9, 0
  %shr.i.i = lshr i64 %asmresult.i267.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %mega_mod64.exit

mega_mod64.exit:                                  ; preds = %if.else179.i, %if.then173.i
  %__rem.0.i = phi i32 [ %rem175.i, %if.then173.i ], [ %conv.i.i, %if.else179.i ]
  %10 = ptrtoint ptr %spanRowSize to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %spanRowSize, align 2
  %conv15 = zext i8 %11 to i32
  %add = sub i32 %conv15, %__rem.0.i
  %add17 = add i32 %add, %call4
  call void @__sanitizer_cov_trace_cmp4(i32 %add17, i32 %conv15)
  %cmp22.not = icmp ult i32 %add17, %conv15
  %sub29 = select i1 %cmp22.not, i32 0, i32 %conv15
  %spec.select = sub i32 %add17, %sub29
  br label %if.end33

if.else:                                          ; preds = %entry
  %level.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 11, i32 %ld, i32 0, i32 4
  %12 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %level.i, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %13, label %if.else.if.end38_crit_edge [
    i8 0, label %if.else.sw.bb.i_crit_edge
    i8 5, label %if.else.sw.bb.i_crit_edge259
    i8 6, label %if.else.sw.bb.i_crit_edge260
    i8 1, label %sw.bb5.i
  ]

if.else.sw.bb.i_crit_edge260:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.else.sw.bb.i_crit_edge259:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.else.sw.bb.i_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

sw.bb.i:                                          ; preds = %if.else.sw.bb.i_crit_edge, %if.else.sw.bb.i_crit_edge259, %if.else.sw.bb.i_crit_edge260
  %conv1.i = zext i8 %4 to i32
  %spanRowSize.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 11, i32 %ld, i32 2, i32 %conv1.i, i32 1, i32 3
  %15 = ptrtoint ptr %spanRowSize.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %spanRowSize.i, align 2
  %conv3.i238 = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %sw.bb.i.if.else167.i.i_crit_edge

sw.bb.i.if.else167.i.i_crit_edge:                 ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else167.i.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %if.else167.i.i

if.else167.i.i:                                   ; preds = %do.end.i.i, %sw.bb.i.if.else167.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %stripRow)
  %cmp169.i.i = icmp ult i64 %stripRow, 4294967296
  br i1 %cmp169.i.i, label %if.then173.i.i, label %if.else179.i.i, !prof !79

if.then173.i.i:                                   ; preds = %if.else167.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv174.i.i = trunc i64 %stripRow to i32
  %rem175.i.i = urem i32 %conv174.i.i, %conv3.i238
  br label %if.end33

if.else179.i.i:                                   ; preds = %if.else167.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv3.i238, i64 %stripRow) #13, !srcloc !80
  %asmresult.i267.i.i = extractvalue { i64, i64 } %17, 0
  %shr.i.i.i = lshr i64 %asmresult.i267.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %if.end33

sw.bb5.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i = tail call fastcc i32 @get_arm_from_strip(ptr noundef %instance, i32 noundef %ld, i64 noundef %stripRow, ptr noundef %map) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6.i)
  %cmp.not.i = icmp eq i32 %call6.i, -1
  %mul.i239 = shl i32 %call6.i, 1
  %spec.select.i = select i1 %cmp.not.i, i32 -1, i32 %mul.i239
  br label %if.end33

if.end33:                                         ; preds = %sw.bb5.i, %if.else179.i.i, %if.then173.i.i, %mega_mod64.exit
  %physArm.0.in = phi i32 [ %spec.select, %mega_mod64.exit ], [ %spec.select.i, %sw.bb5.i ], [ %rem175.i.i, %if.then173.i.i ], [ %conv.i.i.i, %if.else179.i.i ]
  %physArm.0 = trunc i32 %physArm.0.in to i8
  %conv34 = and i32 %physArm.0.in, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %physArm.0)
  %cmp35 = icmp eq i8 %physArm.0, -1
  br i1 %cmp35, label %if.end33.cleanup_crit_edge, label %if.end33.if.end38_crit_edge

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38:                                         ; preds = %if.end33.if.end38_crit_edge, %if.else.if.end38_crit_edge
  %conv34258 = phi i32 [ %conv34, %if.end33.if.end38_crit_edge ], [ 0, %if.else.if.end38_crit_edge ]
  %physArm.0256 = phi i8 [ %physArm.0, %if.end33.if.end38_crit_edge ], [ 0, %if.else.if.end38_crit_edge ]
  %conv39 = zext i8 %4 to i32
  %arrayRef.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 11, i32 %ld, i32 2, i32 %conv39, i32 1, i32 2
  %18 = ptrtoint ptr %arrayRef.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %arrayRef.i, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #9
  %conv41 = zext i16 %20 to i32
  %arrayidx.i240 = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 10, i32 %conv41
  %arrayidx1.i = getelementptr [32 x i16], ptr %arrayidx.i240, i32 0, i32 %conv34258
  %21 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %arrayidx1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %22)
  %cmp45.not = icmp eq i16 %22, -1
  br i1 %cmp45.not, label %if.else69, label %if.then47

if.then47:                                        ; preds = %if.end38
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #9
  %conv44 = zext i16 %23 to i32
  %arrayidx.i241 = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 8, i32 %conv44
  %24 = ptrtoint ptr %arrayidx.i241 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %arrayidx.i241, align 1
  %26 = ptrtoint ptr %devHandle to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %devHandle, align 2
  %interfaceType.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 8, i32 %conv44, i32 2
  %27 = ptrtoint ptr %interfaceType.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %interfaceType.i, align 1
  %29 = ptrtoint ptr %pd_interface to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %pd_interface, align 1
  %adapter_type = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 142
  %30 = ptrtoint ptr %adapter_type to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %adapter_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %31)
  %cmp51 = icmp ugt i8 %31, 3
  %extract.t233 = trunc i16 %23 to i8
  br i1 %cmp51, label %land.lhs.true, label %if.then47.if.end108_crit_edge

if.then47.if.end108_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

land.lhs.true:                                    ; preds = %if.then47
  %32 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %level, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %33)
  %cmp55 = icmp eq i8 %33, 1
  br i1 %cmp55, label %land.lhs.true57, label %land.lhs.true.if.end108_crit_edge

land.lhs.true.if.end108_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

land.lhs.true57:                                  ; preds = %land.lhs.true
  %isRead = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 3
  %34 = ptrtoint ptr %isRead to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %isRead, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not = icmp eq i8 %35, 0
  br i1 %tobool.not, label %if.then58, label %land.lhs.true57.if.end108_crit_edge

land.lhs.true57.if.end108_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

if.then58:                                        ; preds = %land.lhs.true57
  %add60 = add nuw nsw i32 %conv34258, 1
  %arrayidx1.i243 = getelementptr [32 x i16], ptr %arrayidx.i240, i32 0, i32 %add60
  %36 = ptrtoint ptr %arrayidx1.i243 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %arrayidx1.i243, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %37)
  %cmp63.not = icmp eq i16 %37, -1
  br i1 %cmp63.not, label %if.then58.if.end108_crit_edge, label %if.then65

if.then58.if.end108_crit_edge:                    ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

if.then65:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #9
  %conv62 = zext i16 %38 to i32
  %arrayidx.i244 = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 8, i32 %conv62
  %39 = ptrtoint ptr %arrayidx.i244 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %arrayidx.i244, align 1
  %r1_alt_dev_handle = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 14
  %41 = ptrtoint ptr %r1_alt_dev_handle to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %r1_alt_dev_handle, align 2
  br label %if.end108

if.else69:                                        ; preds = %if.end38
  %42 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %level, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %43)
  %cmp72 = icmp ugt i8 %43, 4
  br i1 %cmp72, label %land.lhs.true74, label %if.else88

land.lhs.true74:                                  ; preds = %if.else69
  %adapter_type75 = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 142
  %44 = ptrtoint ptr %adapter_type75 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %adapter_type75, align 4
  %46 = zext i8 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %45, label %land.lhs.true74.if.end108_crit_edge [
    i8 2, label %land.lhs.true74.if.then87_crit_edge
    i8 3, label %land.lhs.true83
  ]

land.lhs.true74.if.then87_crit_edge:              ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then87

land.lhs.true74.if.end108_crit_edge:              ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

land.lhs.true83:                                  ; preds = %land.lhs.true74
  %regTypeReqOnRead = getelementptr inbounds %struct.MR_LD_RAID, ptr %arrayidx.i, i32 0, i32 15
  %47 = ptrtoint ptr %regTypeReqOnRead to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %regTypeReqOnRead, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp85.not = icmp eq i8 %48, 0
  br i1 %cmp85.not, label %land.lhs.true83.if.end108_crit_edge, label %land.lhs.true83.if.then87_crit_edge

land.lhs.true83.if.then87_crit_edge:              ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then87

land.lhs.true83.if.end108_crit_edge:              ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

if.then87:                                        ; preds = %land.lhs.true83.if.then87_crit_edge, %land.lhs.true74.if.then87_crit_edge
  %reg_lock_flags = getelementptr inbounds %struct.RAID_CONTEXT, ptr %pRAID_Context, i32 0, i32 3
  %49 = ptrtoint ptr %reg_lock_flags to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 3, ptr %reg_lock_flags, align 4
  br label %if.end108

if.else88:                                        ; preds = %if.else69
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %43)
  %cmp91 = icmp eq i8 %43, 1
  br i1 %cmp91, label %if.then93, label %if.else88.if.end108_crit_edge

if.else88.if.end108_crit_edge:                    ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

if.then93:                                        ; preds = %if.else88
  %add95 = add nuw i8 %physArm.0256, 1
  %conv97 = zext i8 %add95 to i32
  %arrayidx1.i246 = getelementptr [32 x i16], ptr %arrayidx.i240, i32 0, i32 %conv97
  %50 = ptrtoint ptr %arrayidx1.i246 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %arrayidx1.i246, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %51)
  %cmp100.not = icmp eq i16 %51, -1
  br i1 %cmp100.not, label %if.then93.if.end108_crit_edge, label %if.then102

if.then93.if.end108_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

if.then102:                                       ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #11
  %52 = tail call i16 @llvm.bswap.i16(i16 %51) #9
  %conv99 = zext i16 %52 to i32
  %arrayidx.i247 = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 8, i32 %conv99
  %53 = ptrtoint ptr %arrayidx.i247 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %arrayidx.i247, align 1
  %55 = ptrtoint ptr %devHandle to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %devHandle, align 2
  %interfaceType.i248 = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 8, i32 %conv99, i32 2
  %56 = ptrtoint ptr %interfaceType.i248 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %interfaceType.i248, align 1
  %58 = ptrtoint ptr %pd_interface to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %pd_interface, align 1
  %extract.t234 = trunc i16 %52 to i8
  br label %if.end108

if.end108:                                        ; preds = %if.then102, %if.then93.if.end108_crit_edge, %if.else88.if.end108_crit_edge, %if.then87, %land.lhs.true83.if.end108_crit_edge, %land.lhs.true74.if.end108_crit_edge, %if.then65, %if.then58.if.end108_crit_edge, %land.lhs.true57.if.end108_crit_edge, %land.lhs.true.if.end108_crit_edge, %if.then47.if.end108_crit_edge
  %pd.0.off0 = phi i8 [ %extract.t233, %land.lhs.true57.if.end108_crit_edge ], [ %extract.t233, %if.then65 ], [ %extract.t233, %if.then58.if.end108_crit_edge ], [ %extract.t233, %land.lhs.true.if.end108_crit_edge ], [ %extract.t233, %if.then47.if.end108_crit_edge ], [ -1, %if.then87 ], [ %extract.t234, %if.then102 ], [ -1, %if.then93.if.end108_crit_edge ], [ -1, %if.else88.if.end108_crit_edge ], [ -1, %land.lhs.true74.if.end108_crit_edge ], [ -1, %land.lhs.true83.if.end108_crit_edge ]
  %physArm.1 = phi i8 [ %physArm.0256, %land.lhs.true57.if.end108_crit_edge ], [ %physArm.0256, %if.then65 ], [ %physArm.0256, %if.then58.if.end108_crit_edge ], [ %physArm.0256, %land.lhs.true.if.end108_crit_edge ], [ %physArm.0256, %if.then47.if.end108_crit_edge ], [ %physArm.0256, %if.then87 ], [ %add95, %if.then102 ], [ %add95, %if.then93.if.end108_crit_edge ], [ %physArm.0256, %if.else88.if.end108_crit_edge ], [ %physArm.0256, %land.lhs.true74.if.end108_crit_edge ], [ %physArm.0256, %land.lhs.true83.if.end108_crit_edge ]
  %conv109 = zext i16 %stripRef to i64
  %span2.i249 = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 11, i32 %ld, i32 2, i32 %conv39, i32 1
  %59 = ptrtoint ptr %span2.i249 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %span2.i249, align 8
  %61 = tail call i64 @llvm.bswap.i64(i64 %60)
  %add112 = add i64 %61, %conv109
  %62 = ptrtoint ptr %pdBlock2 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %pdBlock2, align 8
  %add113 = add i64 %add112, %63
  store i64 %add113, ptr %pdBlock2, align 8
  %adapter_type114 = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 142
  %64 = ptrtoint ptr %adapter_type114 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %adapter_type114, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %65)
  %cmp116 = icmp ugt i8 %65, 3
  %shl = shl i8 %4, 5
  %or = or i8 %physArm.1, %shl
  br i1 %cmp116, label %if.then118, label %if.else128

if.then118:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  %span_arm = getelementptr inbounds %struct.RAID_CONTEXT_G35, ptr %pRAID_Context, i32 0, i32 10
  %66 = ptrtoint ptr %span_arm to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %or, ptr %span_arm, align 1
  br label %if.end137

if.else128:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  %span_arm134 = getelementptr inbounds %struct.RAID_CONTEXT, ptr %pRAID_Context, i32 0, i32 14
  %67 = ptrtoint ptr %span_arm134 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %or, ptr %span_arm134, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.else128, %if.then118
  %68 = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 12
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %or, ptr %68, align 8
  %pd_after_lb = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 13
  %70 = ptrtoint ptr %pd_after_lb to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %pd.0.off0, ptr %pd_after_lb, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end137, %if.end33.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i8 [ 1, %if.end137 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @MR_GetPhyParams(ptr nocapture noundef readonly %instance, i32 noundef %ld, i64 noundef %stripRow, i16 noundef zeroext %stripRef, ptr noundef %io_info, ptr nocapture noundef writeonly %pRAID_Context, ptr nocapture noundef readonly %map) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 11, i32 %ld
  %pdBlock2 = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 6
  %devHandle = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 4
  %pd_interface = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 5
  %0 = ptrtoint ptr %devHandle to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %devHandle, align 2
  %rowDataSize = getelementptr inbounds %struct.MR_LD_RAID, ptr %arrayidx.i, i32 0, i32 7
  %1 = ptrtoint ptr %rowDataSize to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %rowDataSize, align 4
  %conv = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.if.else167.i_crit_edge

entry.if.else167.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else167.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #12
  br label %if.else167.i

if.else167.i:                                     ; preds = %do.end.i, %entry.if.else167.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %stripRow)
  %cmp169.i = icmp ult i64 %stripRow, 4294967296
  br i1 %cmp169.i, label %if.then173.i, label %if.else179.i, !prof !79

if.then173.i:                                     ; preds = %if.else167.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv174.i = trunc i64 %stripRow to i32
  %div177.i = udiv i32 %conv174.i, %conv
  %conv178.i = zext i32 %div177.i to i64
  br label %mega_div64_32.exit

if.else179.i:                                     ; preds = %if.else167.i
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv, i64 %stripRow) #13, !srcloc !80
  %asmresult1.i.i = extractvalue { i64, i64 } %3, 1
  br label %mega_div64_32.exit

mega_div64_32.exit:                               ; preds = %if.else179.i, %if.then173.i
  %d.0.i = phi i64 [ %conv178.i, %if.then173.i ], [ %asmresult1.i.i, %if.else179.i ]
  %level = getelementptr inbounds %struct.MR_LD_RAID, ptr %arrayidx.i, i32 0, i32 4
  %4 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %level, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %5)
  %cmp = icmp eq i8 %5, 6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %mega_div64_32.exit
  %6 = ptrtoint ptr %rowDataSize to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rowDataSize, align 4
  %conv7 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i250 = icmp eq i8 %7, 0
  br i1 %tobool.not.i250, label %do.end.i252, label %if.then.if.else167.i348_crit_edge

if.then.if.else167.i348_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else167.i348

do.end.i252:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call.i251 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %if.else167.i348

if.else167.i348:                                  ; preds = %do.end.i252, %if.then.if.else167.i348_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %stripRow)
  %cmp169.i347 = icmp ult i64 %stripRow, 4294967296
  br i1 %cmp169.i347, label %if.then173.i350, label %if.else179.i351, !prof !79

if.then173.i350:                                  ; preds = %if.else167.i348
  call void @__sanitizer_cov_trace_pc() #11
  %conv174.i349 = trunc i64 %stripRow to i32
  %rem175.i = urem i32 %conv174.i349, %conv7
  br label %mega_mod64.exit

if.else179.i351:                                  ; preds = %if.else167.i348
  call void @__sanitizer_cov_trace_pc() #11
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv7, i64 %stripRow) #13, !srcloc !80
  %asmresult.i267.i = extractvalue { i64, i64 } %8, 0
  %shr.i.i = lshr i64 %asmresult.i267.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %mega_mod64.exit

mega_mod64.exit:                                  ; preds = %if.else179.i351, %if.then173.i350
  %__rem.0.i = phi i32 [ %rem175.i, %if.then173.i350 ], [ %conv.i.i, %if.else179.i351 ]
  %rowSize = getelementptr inbounds %struct.MR_LD_RAID, ptr %arrayidx.i, i32 0, i32 6
  %9 = ptrtoint ptr %rowSize to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rowSize, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp10 = icmp eq i8 %10, 0
  br i1 %cmp10, label %mega_mod64.exit.cleanup158_crit_edge, label %if.end.i357

mega_mod64.exit.cleanup158_crit_edge:             ; preds = %mega_mod64.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup158

if.end.i357:                                      ; preds = %mega_mod64.exit
  %conv9 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %d.0.i)
  %cmp169.i465 = icmp ult i64 %d.0.i, 4294967296
  br i1 %cmp169.i465, label %if.then173.i469, label %if.else179.i473, !prof !79

if.then173.i469:                                  ; preds = %if.end.i357
  call void @__sanitizer_cov_trace_pc() #11
  %conv174.i467 = trunc i64 %d.0.i to i32
  %rem175.i468 = urem i32 %conv174.i467, %conv9
  br label %cleanup

if.else179.i473:                                  ; preds = %if.end.i357
  call void @__sanitizer_cov_trace_pc() #11
  %11 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv9, i64 %d.0.i) #13, !srcloc !80
  %asmresult.i267.i470 = extractvalue { i64, i64 } %11, 0
  %shr.i.i471 = lshr i64 %asmresult.i267.i470, 32
  %conv.i.i472 = trunc i64 %shr.i.i471 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else179.i473, %if.then173.i469
  %__rem.0.i474 = phi i32 [ %rem175.i468, %if.then173.i469 ], [ %conv.i.i472, %if.else179.i473 ]
  %12 = ptrtoint ptr %rowSize to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rowSize, align 1
  %conv17 = zext i8 %13 to i32
  %add = sub i32 %conv17, %__rem.0.i474
  %add19 = add i32 %add, %__rem.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add19, i32 %conv17)
  %cmp22.not = icmp ult i32 %add19, %conv17
  %sub27 = select i1 %cmp22.not, i32 0, i32 %conv17
  %spec.select = sub i32 %add19, %sub27
  %conv29 = trunc i32 %spec.select to i8
  br label %if.end42

if.else:                                          ; preds = %mega_div64_32.exit
  %modFactor = getelementptr inbounds %struct.MR_LD_RAID, ptr %arrayidx.i, i32 0, i32 14
  %14 = ptrtoint ptr %modFactor to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %modFactor, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp34 = icmp eq i8 %15, 0
  br i1 %cmp34, label %if.else.cleanup158_crit_edge, label %if.end.i481

if.else.cleanup158_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup158

if.end.i481:                                      ; preds = %if.else
  %conv33 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %stripRow)
  %cmp169.i589 = icmp ult i64 %stripRow, 4294967296
  br i1 %cmp169.i589, label %if.then173.i593, label %if.else179.i597, !prof !79

if.then173.i593:                                  ; preds = %if.end.i481
  call void @__sanitizer_cov_trace_pc() #11
  %conv174.i591 = trunc i64 %stripRow to i32
  %rem175.i592 = urem i32 %conv174.i591, %conv33
  br label %mega_mod64.exit599

if.else179.i597:                                  ; preds = %if.end.i481
  call void @__sanitizer_cov_trace_pc() #11
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv33, i64 %stripRow) #13, !srcloc !80
  %asmresult.i267.i594 = extractvalue { i64, i64 } %16, 0
  %shr.i.i595 = lshr i64 %asmresult.i267.i594, 32
  %conv.i.i596 = trunc i64 %shr.i.i595 to i32
  br label %mega_mod64.exit599

mega_mod64.exit599:                               ; preds = %if.else179.i597, %if.then173.i593
  %__rem.0.i598 = phi i32 [ %rem175.i592, %if.then173.i593 ], [ %conv.i.i596, %if.else179.i597 ]
  %arrayidx1.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 11, i32 %ld, i32 1, i32 %__rem.0.i598
  %17 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx1.i, align 1
  br label %if.end42

if.end42:                                         ; preds = %mega_mod64.exit599, %cleanup
  %physArm.1 = phi i8 [ %conv29, %cleanup ], [ %18, %mega_mod64.exit599 ]
  %spanDepth = getelementptr inbounds %struct.MR_LD_RAID, ptr %arrayidx.i, i32 0, i32 3
  %19 = ptrtoint ptr %spanDepth to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %spanDepth, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp44 = icmp eq i8 %20, 1
  br i1 %cmp44, label %if.then46, label %if.else48

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %stripeShift = getelementptr inbounds %struct.MR_LD_RAID, ptr %arrayidx.i, i32 0, i32 5
  %21 = ptrtoint ptr %stripeShift to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %stripeShift, align 2
  %sh_prom = zext i8 %22 to i64
  %shl = shl i64 %d.0.i, %sh_prom
  %23 = ptrtoint ptr %pdBlock2 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %shl, ptr %pdBlock2, align 8
  br label %if.end56

if.else48:                                        ; preds = %if.end42
  %call49 = tail call fastcc i32 @MR_GetSpanBlock(i32 noundef %ld, i64 noundef %d.0.i, ptr noundef %pdBlock2, ptr noundef %map)
  %conv51 = and i32 %call49, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %conv51)
  %cmp52 = icmp eq i32 %conv51, 255
  br i1 %cmp52, label %if.else48.cleanup158_crit_edge, label %if.else48.if.end56_crit_edge

if.else48.if.end56_crit_edge:                     ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.else48.cleanup158_crit_edge:                   ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup158

if.end56:                                         ; preds = %if.else48.if.end56_crit_edge, %if.then46
  %span.0 = phi i32 [ 0, %if.then46 ], [ %call49, %if.else48.if.end56_crit_edge ]
  %conv57 = and i32 %span.0, 255
  %arrayRef.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 11, i32 %ld, i32 2, i32 %conv57, i32 1, i32 2
  %24 = ptrtoint ptr %arrayRef.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %arrayRef.i, align 1
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #9
  %conv59 = zext i16 %26 to i32
  %conv60 = zext i8 %physArm.1 to i32
  %arrayidx.i600 = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 10, i32 %conv59
  %arrayidx1.i601 = getelementptr [32 x i16], ptr %arrayidx.i600, i32 0, i32 %conv60
  %27 = ptrtoint ptr %arrayidx1.i601 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %arrayidx1.i601, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %28)
  %cmp63.not = icmp eq i16 %28, -1
  br i1 %cmp63.not, label %if.else87, label %if.then65

if.then65:                                        ; preds = %if.end56
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #9
  %conv62 = zext i16 %29 to i32
  %arrayidx.i602 = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 8, i32 %conv62
  %30 = ptrtoint ptr %arrayidx.i602 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %arrayidx.i602, align 1
  %32 = ptrtoint ptr %devHandle to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %devHandle, align 2
  %interfaceType.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 8, i32 %conv62, i32 2
  %33 = ptrtoint ptr %interfaceType.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %interfaceType.i, align 1
  %35 = ptrtoint ptr %pd_interface to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %pd_interface, align 1
  %adapter_type = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 142
  %36 = ptrtoint ptr %adapter_type to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %adapter_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %37)
  %cmp69 = icmp ugt i8 %37, 3
  %extract.t247 = trunc i16 %29 to i8
  br i1 %cmp69, label %land.lhs.true, label %if.then65.if.end126_crit_edge

if.then65.if.end126_crit_edge:                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126

land.lhs.true:                                    ; preds = %if.then65
  %38 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %level, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %39)
  %cmp73 = icmp eq i8 %39, 1
  br i1 %cmp73, label %land.lhs.true75, label %land.lhs.true.if.end126_crit_edge

land.lhs.true.if.end126_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126

land.lhs.true75:                                  ; preds = %land.lhs.true
  %isRead = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 3
  %40 = ptrtoint ptr %isRead to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %isRead, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not = icmp eq i8 %41, 0
  br i1 %tobool.not, label %if.then76, label %land.lhs.true75.if.end126_crit_edge

land.lhs.true75.if.end126_crit_edge:              ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126

if.then76:                                        ; preds = %land.lhs.true75
  %add78 = add nuw nsw i32 %conv60, 1
  %arrayidx1.i604 = getelementptr [32 x i16], ptr %arrayidx.i600, i32 0, i32 %add78
  %42 = ptrtoint ptr %arrayidx1.i604 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %arrayidx1.i604, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %43)
  %cmp81.not = icmp eq i16 %43, -1
  br i1 %cmp81.not, label %if.then76.if.end126_crit_edge, label %if.then83

if.then76.if.end126_crit_edge:                    ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126

if.then83:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  %44 = tail call i16 @llvm.bswap.i16(i16 %43) #9
  %conv80 = zext i16 %44 to i32
  %arrayidx.i605 = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 8, i32 %conv80
  %45 = ptrtoint ptr %arrayidx.i605 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %arrayidx.i605, align 1
  %r1_alt_dev_handle = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 14
  %47 = ptrtoint ptr %r1_alt_dev_handle to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %r1_alt_dev_handle, align 2
  br label %if.end126

if.else87:                                        ; preds = %if.end56
  %48 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %level, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %49)
  %cmp90 = icmp ugt i8 %49, 4
  br i1 %cmp90, label %land.lhs.true92, label %if.else106

land.lhs.true92:                                  ; preds = %if.else87
  %adapter_type93 = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 142
  %50 = ptrtoint ptr %adapter_type93 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %adapter_type93, align 4
  %52 = zext i8 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %51, label %land.lhs.true92.if.end126_crit_edge [
    i8 2, label %land.lhs.true92.if.then105_crit_edge
    i8 3, label %land.lhs.true101
  ]

land.lhs.true92.if.then105_crit_edge:             ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then105

land.lhs.true92.if.end126_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126

land.lhs.true101:                                 ; preds = %land.lhs.true92
  %regTypeReqOnRead = getelementptr inbounds %struct.MR_LD_RAID, ptr %arrayidx.i, i32 0, i32 15
  %53 = ptrtoint ptr %regTypeReqOnRead to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %regTypeReqOnRead, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp103.not = icmp eq i8 %54, 0
  br i1 %cmp103.not, label %land.lhs.true101.if.end126_crit_edge, label %land.lhs.true101.if.then105_crit_edge

land.lhs.true101.if.then105_crit_edge:            ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then105

land.lhs.true101.if.end126_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126

if.then105:                                       ; preds = %land.lhs.true101.if.then105_crit_edge, %land.lhs.true92.if.then105_crit_edge
  %reg_lock_flags = getelementptr inbounds %struct.RAID_CONTEXT, ptr %pRAID_Context, i32 0, i32 3
  %55 = ptrtoint ptr %reg_lock_flags to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 3, ptr %reg_lock_flags, align 4
  br label %if.end126

if.else106:                                       ; preds = %if.else87
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %49)
  %cmp109 = icmp eq i8 %49, 1
  br i1 %cmp109, label %if.then111, label %if.else106.if.end126_crit_edge

if.else106.if.end126_crit_edge:                   ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126

if.then111:                                       ; preds = %if.else106
  %add113 = add i8 %physArm.1, 1
  %conv115 = zext i8 %add113 to i32
  %arrayidx1.i607 = getelementptr [32 x i16], ptr %arrayidx.i600, i32 0, i32 %conv115
  %56 = ptrtoint ptr %arrayidx1.i607 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %arrayidx1.i607, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %57)
  %cmp118.not = icmp eq i16 %57, -1
  br i1 %cmp118.not, label %if.then111.if.end126_crit_edge, label %if.then120

if.then111.if.end126_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126

if.then120:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #11
  %58 = tail call i16 @llvm.bswap.i16(i16 %57) #9
  %conv117 = zext i16 %58 to i32
  %arrayidx.i608 = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 8, i32 %conv117
  %59 = ptrtoint ptr %arrayidx.i608 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %arrayidx.i608, align 1
  %61 = ptrtoint ptr %devHandle to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %devHandle, align 2
  %interfaceType.i609 = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 8, i32 %conv117, i32 2
  %62 = ptrtoint ptr %interfaceType.i609 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %interfaceType.i609, align 1
  %64 = ptrtoint ptr %pd_interface to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %pd_interface, align 1
  %extract.t248 = trunc i16 %58 to i8
  br label %if.end126

if.end126:                                        ; preds = %if.then120, %if.then111.if.end126_crit_edge, %if.else106.if.end126_crit_edge, %if.then105, %land.lhs.true101.if.end126_crit_edge, %land.lhs.true92.if.end126_crit_edge, %if.then83, %if.then76.if.end126_crit_edge, %land.lhs.true75.if.end126_crit_edge, %land.lhs.true.if.end126_crit_edge, %if.then65.if.end126_crit_edge
  %pd.0.off0 = phi i8 [ %extract.t247, %land.lhs.true75.if.end126_crit_edge ], [ %extract.t247, %if.then83 ], [ %extract.t247, %if.then76.if.end126_crit_edge ], [ %extract.t247, %land.lhs.true.if.end126_crit_edge ], [ %extract.t247, %if.then65.if.end126_crit_edge ], [ -1, %if.then105 ], [ %extract.t248, %if.then120 ], [ -1, %if.then111.if.end126_crit_edge ], [ -1, %if.else106.if.end126_crit_edge ], [ -1, %land.lhs.true92.if.end126_crit_edge ], [ -1, %land.lhs.true101.if.end126_crit_edge ]
  %physArm.2 = phi i8 [ %physArm.1, %land.lhs.true75.if.end126_crit_edge ], [ %physArm.1, %if.then83 ], [ %physArm.1, %if.then76.if.end126_crit_edge ], [ %physArm.1, %land.lhs.true.if.end126_crit_edge ], [ %physArm.1, %if.then65.if.end126_crit_edge ], [ %physArm.1, %if.then105 ], [ %add113, %if.then120 ], [ %add113, %if.then111.if.end126_crit_edge ], [ %physArm.1, %if.else106.if.end126_crit_edge ], [ %physArm.1, %land.lhs.true92.if.end126_crit_edge ], [ %physArm.1, %land.lhs.true101.if.end126_crit_edge ]
  %conv127 = zext i16 %stripRef to i64
  %span2.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 11, i32 %ld, i32 2, i32 %conv57, i32 1
  %65 = ptrtoint ptr %span2.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %span2.i, align 8
  %67 = tail call i64 @llvm.bswap.i64(i64 %66)
  %add130 = add i64 %67, %conv127
  %68 = ptrtoint ptr %pdBlock2 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %pdBlock2, align 8
  %add131 = add i64 %add130, %69
  store i64 %add131, ptr %pdBlock2, align 8
  %adapter_type132 = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 142
  %70 = ptrtoint ptr %adapter_type132 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %adapter_type132, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %71)
  %cmp134 = icmp ugt i8 %71, 3
  %conv57.tr249 = trunc i32 %span.0 to i8
  %72 = shl i8 %conv57.tr249, 5
  %conv140 = or i8 %physArm.2, %72
  br i1 %cmp134, label %if.then136, label %if.else147

if.then136:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  %span_arm = getelementptr inbounds %struct.RAID_CONTEXT_G35, ptr %pRAID_Context, i32 0, i32 10
  %73 = ptrtoint ptr %span_arm to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv140, ptr %span_arm, align 1
  br label %if.end156

if.else147:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  %span_arm153 = getelementptr inbounds %struct.RAID_CONTEXT, ptr %pRAID_Context, i32 0, i32 14
  %74 = ptrtoint ptr %span_arm153 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv140, ptr %span_arm153, align 4
  br label %if.end156

if.end156:                                        ; preds = %if.else147, %if.then136
  %75 = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 12
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv140, ptr %75, align 8
  %pd_after_lb = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 13
  %77 = ptrtoint ptr %pd_after_lb to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %pd.0.off0, ptr %pd_after_lb, align 1
  br label %cleanup158

cleanup158:                                       ; preds = %if.end156, %if.else48.cleanup158_crit_edge, %if.else.cleanup158_crit_edge, %mega_mod64.exit.cleanup158_crit_edge
  %retval.1 = phi i8 [ 1, %if.end156 ], [ 0, %if.else.cleanup158_crit_edge ], [ 0, %if.else48.cleanup158_crit_edge ], [ 0, %mega_mod64.exit.cleanup158_crit_edge ]
  ret i8 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @get_updated_dev_handle(ptr nocapture noundef readonly %instance, ptr noundef %lbInfo, ptr nocapture noundef %io_info, ptr nocapture noundef readonly %drv_map) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io_info to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %io_info, align 8
  %numBlocks.i = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 1
  %2 = ptrtoint ptr %numBlocks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %numBlocks.i, align 8
  %span_arm.i = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 12
  %4 = ptrtoint ptr %span_arm.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %span_arm.i, align 8
  %6 = lshr i8 %5, 5
  %7 = and i8 %5, 31
  %ldTgtId.i = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 2
  %8 = ptrtoint ptr %ldTgtId.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ldTgtId.i, align 4
  %conv6.i = zext i16 %9 to i32
  %arrayidx.i.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %drv_map, i32 0, i32 9, i32 %conv6.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %arrayidx.i.i, align 1
  %conv7.i = zext i16 %11 to i32
  %UnevenSpanSupport.i = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 101
  %12 = ptrtoint ptr %UnevenSpanSupport.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %UnevenSpanSupport.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  %conv11.i = zext i8 %6 to i32
  %spanRowSize.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %drv_map, i32 0, i32 11, i32 %conv7.i, i32 2, i32 %conv11.i, i32 1, i32 3
  %rowSize.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %drv_map, i32 0, i32 11, i32 %conv7.i, i32 0, i32 6
  %cond.in.in.i = select i1 %tobool.not.i, ptr %rowSize.i, ptr %spanRowSize.i
  %14 = ptrtoint ptr %cond.in.in.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %cond.in.i = load i8, ptr %cond.in.in.i, align 1
  %cond.i = zext i8 %cond.in.i to i32
  %arrayRef.i.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %drv_map, i32 0, i32 11, i32 %conv7.i, i32 2, i32 %conv11.i, i32 1, i32 2
  %15 = ptrtoint ptr %arrayRef.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %arrayRef.i.i, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #9
  %conv18.i = zext i16 %17 to i32
  %conv19.i = zext i8 %7 to i32
  %arrayidx.i200.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %drv_map, i32 0, i32 10, i32 %conv18.i
  %arrayidx1.i.i = getelementptr [32 x i16], ptr %arrayidx.i200.i, i32 0, i32 %conv19.i
  %18 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %arrayidx1.i.i, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #9
  %add.i = add nuw nsw i32 %conv19.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %cond.i)
  %cmp.not.i = icmp ult i32 %add.i, %cond.i
  %sub.i = select i1 %cmp.not.i, i32 0, i32 %cond.i
  %cond31.i = sub nsw i32 %add.i, %sub.i
  %arrayidx1.i202.i = getelementptr [32 x i16], ptr %arrayidx.i200.i, i32 0, i32 %cond31.i
  %21 = ptrtoint ptr %arrayidx1.i202.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %arrayidx1.i202.i, align 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #9
  %24 = and i16 %23, 255
  %conv34.i = zext i16 %24 to i32
  %arrayidx.i203.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %drv_map, i32 0, i32 8, i32 %conv34.i
  %25 = ptrtoint ptr %arrayidx.i203.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %arrayidx.i203.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %26)
  %cmp37.i = icmp eq i16 %26, -1
  br i1 %cmp37.i, label %entry.megasas_get_best_arm_pd.exit_crit_edge, label %if.else.i

entry.megasas_get_best_arm_pd.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %megasas_get_best_arm_pd.exit

if.else.i:                                        ; preds = %entry
  %27 = and i16 %20, 255
  %idxprom.i = zext i16 %27 to i32
  %arrayidx.i = getelementptr %struct.LD_LOAD_BALANCE_INFO, ptr %lbInfo, i32 0, i32 2, i32 %idxprom.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i, i32 noundef 4) #9
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %arrayidx.i, align 4
  %arrayidx43.i = getelementptr %struct.LD_LOAD_BALANCE_INFO, ptr %lbInfo, i32 0, i32 2, i32 %conv34.i
  %call.i.i198.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx43.i, i32 noundef 4) #9
  %30 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %arrayidx43.i, align 4
  %arrayidx47.i = getelementptr %struct.LD_LOAD_BALANCE_INFO, ptr %lbInfo, i32 0, i32 3, i32 %idxprom.i
  %32 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx47.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %33)
  %cmp48.i = icmp ugt i64 %1, %33
  %sub54.i = sub i64 %1, %33
  %sub59.i = sub i64 %33, %1
  %cond61.i = select i1 %cmp48.i, i64 %sub54.i, i64 %sub59.i
  %arrayidx64.i = getelementptr %struct.LD_LOAD_BALANCE_INFO, ptr %lbInfo, i32 0, i32 3, i32 %conv34.i
  %34 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx64.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %35)
  %cmp65.i = icmp ugt i64 %1, %35
  %sub71.i = sub i64 %1, %35
  %sub76.i = sub i64 %35, %1
  %cond78.i = select i1 %cmp65.i, i64 %sub71.i, i64 %sub76.i
  call void @__sanitizer_cov_trace_cmp8(i64 %cond61.i, i64 %cond78.i)
  %cmp79.not.i = icmp ugt i64 %cond61.i, %cond78.i
  %xor.i = zext i1 %cmp79.not.i to i8
  %cond86.i = xor i8 %7, %xor.i
  br i1 %cmp79.not.i, label %land.lhs.true101.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %conv92.i = and i32 %29, 65535
  %conv93.i = and i32 %31, 65535
  %36 = load i32, ptr @lb_pending_cmds, align 4
  %add94.i = add i32 %36, %conv93.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv92.i, i32 %add94.i)
  %cmp95.i = icmp ugt i32 %conv92.i, %add94.i
  br i1 %cmp95.i, label %land.lhs.true.i.if.then107.i_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i.if.then107.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then107.i

land.lhs.true101.i:                               ; preds = %if.else.i
  %conv102.i = and i32 %31, 65535
  %conv103.i = and i32 %29, 65535
  %37 = load i32, ptr @lb_pending_cmds, align 4
  %add104.i = add i32 %37, %conv103.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv102.i, i32 %add104.i)
  %cmp105.i = icmp ugt i32 %conv102.i, %add104.i
  br i1 %cmp105.i, label %land.lhs.true101.i.if.then107.i_crit_edge, label %land.lhs.true101.i.if.end.i_crit_edge

land.lhs.true101.i.if.end.i_crit_edge:            ; preds = %land.lhs.true101.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true101.i.if.then107.i_crit_edge:        ; preds = %land.lhs.true101.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then107.i

if.then107.i:                                     ; preds = %land.lhs.true101.i.if.then107.i_crit_edge, %land.lhs.true.i.if.then107.i_crit_edge
  %38 = xor i8 %cond86.i, 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then107.i, %land.lhs.true101.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge
  %bestArm.0.i = phi i8 [ %38, %if.then107.i ], [ %cond86.i, %land.lhs.true101.i.if.end.i_crit_edge ], [ %cond86.i, %land.lhs.true.i.if.end.i_crit_edge ]
  %shl.i = and i8 %5, -32
  %or.i = or i8 %bestArm.0.i, %shl.i
  %39 = ptrtoint ptr %span_arm.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %or.i, ptr %span_arm.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %bestArm.0.i, i8 %7)
  %cmp117.i = icmp eq i8 %bestArm.0.i, %7
  %cond124.off0.v.i = select i1 %cmp117.i, i16 %20, i16 %23
  %cond124.off0.i = trunc i16 %cond124.off0.v.i to i8
  %pd_after_lb.i = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 13
  %40 = ptrtoint ptr %pd_after_lb.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %cond124.off0.i, ptr %pd_after_lb.i, align 1
  br label %megasas_get_best_arm_pd.exit

megasas_get_best_arm_pd.exit:                     ; preds = %if.end.i, %entry.megasas_get_best_arm_pd.exit_crit_edge
  %conv127.i = zext i32 %3 to i64
  %add128.i = add i64 %1, -1
  %sub129.i = add i64 %add128.i, %conv127.i
  %pd_after_lb131.i = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 13
  %41 = ptrtoint ptr %pd_after_lb131.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %pd_after_lb131.i, align 1
  %idxprom132.i = zext i8 %42 to i32
  %arrayidx133.i = getelementptr %struct.LD_LOAD_BALANCE_INFO, ptr %lbInfo, i32 0, i32 3, i32 %idxprom132.i
  %43 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %sub129.i, ptr %arrayidx133.i, align 8
  %44 = load i8, ptr %pd_after_lb131.i, align 1
  %conv = zext i8 %44 to i32
  %arrayidx.i10 = getelementptr %struct.MR_DRV_RAID_MAP, ptr %drv_map, i32 0, i32 8, i32 %conv
  %45 = ptrtoint ptr %arrayidx.i10 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %arrayidx.i10, align 1
  %interfaceType.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %drv_map, i32 0, i32 8, i32 %conv, i32 2
  %47 = ptrtoint ptr %interfaceType.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %interfaceType.i, align 1
  %pd_interface = getelementptr inbounds %struct.IO_REQUEST_INFO, ptr %io_info, i32 0, i32 5
  %49 = ptrtoint ptr %pd_interface to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %pd_interface, align 2
  %arrayidx = getelementptr %struct.LD_LOAD_BALANCE_INFO, ptr %lbInfo, i32 0, i32 2, i32 %conv
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #9
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #9, !srcloc !83
  ret i16 %46
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @MR_GetSpanBlock(i32 noundef %ld, i64 noundef %row, ptr noundef writeonly %span_blk, ptr nocapture noundef readonly %map) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 11, i32 %ld
  %spanDepth = getelementptr inbounds %struct.MR_LD_RAID, ptr %arrayidx.i, i32 0, i32 3
  %0 = ptrtoint ptr %spanDepth to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %spanDepth, align 8
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp175.not = icmp eq i8 %1, 0
  br i1 %cmp175.not, label %entry.cleanup_crit_edge, label %for.cond3.preheader.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond3.preheader.preheader:                    ; preds = %entry
  %spanBlock.i = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 11, i32 %ld, i32 2
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.inc32.for.cond3.preheader_crit_edge, %for.cond3.preheader.preheader
  %span.0178 = phi i32 [ %inc33, %for.inc32.for.cond3.preheader_crit_edge ], [ 0, %for.cond3.preheader.preheader ]
  %pSpanBlock.0176 = phi ptr [ %incdec.ptr, %for.inc32.for.cond3.preheader_crit_edge ], [ %spanBlock.i, %for.cond3.preheader.preheader ]
  %block_span_info = getelementptr inbounds %struct.MR_SPAN_BLOCK_INFO, ptr %pSpanBlock.0176, i32 0, i32 2
  %2 = ptrtoint ptr %block_span_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %block_span_info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4172.not = icmp eq i32 %3, 0
  br i1 %cmp4172.not, label %for.cond3.preheader.for.inc32_crit_edge, label %for.body6.preheader

for.cond3.preheader.for.inc32_crit_edge:          ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc32

for.body6.preheader:                              ; preds = %for.cond3.preheader
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %umax = call i32 @llvm.umax.i32(i32 %4, i32 1)
  br label %for.body6

for.body6:                                        ; preds = %for.inc.for.body6_crit_edge, %for.body6.preheader
  %j.0173 = phi i32 [ %inc, %for.inc.for.body6_crit_edge ], [ 0, %for.body6.preheader ]
  %arrayidx = getelementptr %struct.MR_SPAN_BLOCK_INFO, ptr %pSpanBlock.0176, i32 0, i32 2, i32 2, i32 %j.0173
  %diff = getelementptr %struct.MR_SPAN_BLOCK_INFO, ptr %pSpanBlock.0176, i32 0, i32 2, i32 2, i32 %j.0173, i32 3
  %5 = ptrtoint ptr %diff to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %diff, align 8
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp9 = icmp eq i32 %6, 0
  br i1 %cmp9, label %for.body6.cleanup_crit_edge, label %if.end

for.body6.cleanup_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body6
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx, align 8
  %10 = tail call i64 @llvm.bswap.i64(i64 %9)
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %row)
  %cmp11.not = icmp ugt i64 %10, %row
  br i1 %cmp11.not, label %if.end.for.inc_crit_edge, label %land.lhs.true

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %logEnd = getelementptr %struct.MR_SPAN_BLOCK_INFO, ptr %pSpanBlock.0176, i32 0, i32 2, i32 2, i32 %j.0173, i32 1
  %11 = ptrtoint ptr %logEnd to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %logEnd, align 8
  %13 = tail call i64 @llvm.bswap.i64(i64 %12)
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %row)
  %cmp13.not = icmp ult i64 %13, %row
  br i1 %cmp13.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true15

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true15:                                  ; preds = %land.lhs.true
  %sub = sub i64 %row, %10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp169.i = icmp ult i64 %sub, 4294967296
  br i1 %cmp169.i, label %if.then173.i, label %if.else179.i, !prof !79

if.then173.i:                                     ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  %conv174.i = trunc i64 %sub to i32
  %rem175.i = urem i32 %conv174.i, %7
  br label %mega_mod64.exit

if.else179.i:                                     ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %sub) #13, !srcloc !80
  %asmresult.i267.i = extractvalue { i64, i64 } %14, 0
  %shr.i.i = lshr i64 %asmresult.i267.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %mega_mod64.exit

mega_mod64.exit:                                  ; preds = %if.else179.i, %if.then173.i
  %__rem.0.i = phi i32 [ %rem175.i, %if.then173.i ], [ %conv.i.i, %if.else179.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0.i)
  %cmp19 = icmp eq i32 %__rem.0.i, 0
  br i1 %cmp19, label %if.then21, label %mega_mod64.exit.for.inc_crit_edge

mega_mod64.exit.for.inc_crit_edge:                ; preds = %mega_mod64.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then21:                                        ; preds = %mega_mod64.exit
  %cmp22.not = icmp eq ptr %span_blk, null
  br i1 %cmp22.not, label %if.then21.cleanup_crit_edge, label %if.then24

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then24:                                        ; preds = %if.then21
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx, align 8
  %17 = tail call i64 @llvm.bswap.i64(i64 %16)
  %sub26 = sub i64 %row, %17
  %18 = ptrtoint ptr %diff to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %diff, align 8
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i61 = icmp eq i32 %19, 0
  br i1 %tobool.not.i61, label %do.end.i63, label %if.then24.if.else167.i159_crit_edge

if.then24.if.else167.i159_crit_edge:              ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else167.i159

do.end.i63:                                       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %call.i62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #12
  br label %if.else167.i159

if.else167.i159:                                  ; preds = %do.end.i63, %if.then24.if.else167.i159_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub26)
  %cmp169.i158 = icmp ult i64 %sub26, 4294967296
  br i1 %cmp169.i158, label %if.then173.i161, label %if.else179.i162, !prof !79

if.then173.i161:                                  ; preds = %if.else167.i159
  call void @__sanitizer_cov_trace_pc() #11
  %conv174.i160 = trunc i64 %sub26 to i32
  %div177.i = udiv i32 %conv174.i160, %20
  %conv178.i = zext i32 %div177.i to i64
  br label %mega_div64_32.exit

if.else179.i162:                                  ; preds = %if.else167.i159
  call void @__sanitizer_cov_trace_pc() #11
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %20, i64 %sub26) #13, !srcloc !80
  %asmresult1.i.i = extractvalue { i64, i64 } %21, 1
  br label %mega_div64_32.exit

mega_div64_32.exit:                               ; preds = %if.else179.i162, %if.then173.i161
  %d.0.i = phi i64 [ %conv178.i, %if.then173.i161 ], [ %asmresult1.i.i, %if.else179.i162 ]
  %offsetInSpan = getelementptr %struct.MR_SPAN_BLOCK_INFO, ptr %pSpanBlock.0176, i32 0, i32 2, i32 2, i32 %j.0173, i32 2
  %22 = ptrtoint ptr %offsetInSpan to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %offsetInSpan, align 8
  %24 = tail call i64 @llvm.bswap.i64(i64 %23)
  %add = add i64 %24, %d.0.i
  %stripeShift = getelementptr inbounds %struct.MR_LD_RAID, ptr %arrayidx.i, i32 0, i32 5
  %25 = ptrtoint ptr %stripeShift to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %stripeShift, align 2
  %sh_prom = zext i8 %26 to i64
  %shl = shl i64 %add, %sh_prom
  %27 = ptrtoint ptr %span_blk to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %shl, ptr %span_blk, align 8
  br label %cleanup

for.inc:                                          ; preds = %mega_mod64.exit.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %j.0173, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.for.inc32_crit_edge, label %for.inc.for.body6_crit_edge

for.inc.for.body6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body6

for.inc.for.inc32_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc32

for.inc32:                                        ; preds = %for.inc.for.inc32_crit_edge, %for.cond3.preheader.for.inc32_crit_edge
  %inc33 = add nuw nsw i32 %span.0178, 1
  %incdec.ptr = getelementptr %struct.MR_SPAN_BLOCK_INFO, ptr %pSpanBlock.0176, i32 1
  %exitcond191.not = icmp eq i32 %inc33, %conv
  br i1 %exitcond191.not, label %for.inc32.cleanup_crit_edge, label %for.inc32.for.cond3.preheader_crit_edge

for.inc32.for.cond3.preheader_crit_edge:          ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond3.preheader

for.inc32.cleanup_crit_edge:                      ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc32.cleanup_crit_edge, %mega_div64_32.exit, %if.then21.cleanup_crit_edge, %for.body6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %span.0178, %mega_div64_32.exit ], [ %span.0178, %if.then21.cleanup_crit_edge ], [ 255, %entry.cleanup_crit_edge ], [ 255, %for.body6.cleanup_crit_edge ], [ 255, %for.inc32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_arm_from_strip(ptr nocapture noundef readonly %instance, i32 noundef %ld, i64 noundef %strip, ptr nocapture noundef readonly %map) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_context = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 113
  %0 = ptrtoint ptr %ctrl_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_context, align 8
  %log_to_span = getelementptr inbounds %struct.fusion_context, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %log_to_span to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %log_to_span, align 4
  %arrayidx = getelementptr %struct.LOG_BLOCK_SPAN_INFO, ptr %3, i32 %ld
  %span_row_data_width = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx, i32 0, i32 9
  %4 = ptrtoint ptr %span_row_data_width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %span_row_data_width, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end:                                           ; preds = %entry
  %data_strip_end = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx, i32 0, i32 5
  %6 = ptrtoint ptr %data_strip_end to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %data_strip_end, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %strip)
  %cmp5 = icmp ult i64 %7, %strip
  br i1 %cmp5, label %for.inc31, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.7.if.end.i_crit_edge, %if.end.6.if.end.i_crit_edge, %if.end.5.if.end.i_crit_edge, %if.end.4.if.end.i_crit_edge, %if.end.3.if.end.i_crit_edge, %if.end.2.if.end.i_crit_edge, %if.end.1.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %info.064.lcssa72 = phi i32 [ 0, %if.end.if.end.i_crit_edge ], [ 1, %if.end.1.if.end.i_crit_edge ], [ 2, %if.end.2.if.end.i_crit_edge ], [ 3, %if.end.3.if.end.i_crit_edge ], [ 4, %if.end.4.if.end.i_crit_edge ], [ 5, %if.end.5.if.end.i_crit_edge ], [ 6, %if.end.6.if.end.i_crit_edge ], [ 7, %if.end.7.if.end.i_crit_edge ]
  %arrayidx3.lcssa71 = phi ptr [ %arrayidx, %if.end.if.end.i_crit_edge ], [ %arrayidx3.1, %if.end.1.if.end.i_crit_edge ], [ %arrayidx3.2, %if.end.2.if.end.i_crit_edge ], [ %arrayidx3.3, %if.end.3.if.end.i_crit_edge ], [ %arrayidx3.4, %if.end.4.if.end.i_crit_edge ], [ %arrayidx3.5, %if.end.5.if.end.i_crit_edge ], [ %arrayidx3.6, %if.end.6.if.end.i_crit_edge ], [ %arrayidx3.7, %if.end.7.if.end.i_crit_edge ]
  %.lcssa70 = phi i32 [ %5, %if.end.if.end.i_crit_edge ], [ %19, %if.end.1.if.end.i_crit_edge ], [ %23, %if.end.2.if.end.i_crit_edge ], [ %27, %if.end.3.if.end.i_crit_edge ], [ %31, %if.end.4.if.end.i_crit_edge ], [ %35, %if.end.5.if.end.i_crit_edge ], [ %39, %if.end.6.if.end.i_crit_edge ], [ %43, %if.end.7.if.end.i_crit_edge ]
  %data_strip_start = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.lcssa71, i32 0, i32 4
  %8 = ptrtoint ptr %data_strip_start to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %data_strip_start, align 8
  %sub = sub i64 %strip, %9
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp169.i = icmp ult i64 %sub, 4294967296
  br i1 %cmp169.i, label %if.then173.i, label %if.else179.i, !prof !79

if.then173.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv174.i = trunc i64 %sub to i32
  %rem175.i = urem i32 %conv174.i, %.lcssa70
  br label %mega_mod64.exit

if.else179.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %.lcssa70, i64 %sub) #13, !srcloc !80
  %asmresult.i267.i = extractvalue { i64, i64 } %10, 0
  %shr.i.i = lshr i64 %asmresult.i267.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %mega_mod64.exit

mega_mod64.exit:                                  ; preds = %if.else179.i, %if.then173.i
  %__rem.0.i = phi i32 [ %rem175.i, %if.then173.i ], [ %conv.i.i, %if.else179.i ]
  %spanDepth = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 11, i32 %ld, i32 0, i32 3
  %11 = ptrtoint ptr %spanDepth to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %spanDepth, align 8
  %conv = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp1165.not = icmp eq i8 %12, 0
  br i1 %cmp1165.not, label %mega_mod64.exit.for.end_crit_edge, label %mega_mod64.exit.for.body13_crit_edge

mega_mod64.exit.for.body13_crit_edge:             ; preds = %mega_mod64.exit
  br label %for.body13

mega_mod64.exit.for.end_crit_edge:                ; preds = %mega_mod64.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body13:                                       ; preds = %for.inc.for.body13_crit_edge, %mega_mod64.exit.for.body13_crit_edge
  %span_offset.068 = phi i32 [ %span_offset.1, %for.inc.for.body13_crit_edge ], [ 0, %mega_mod64.exit.for.body13_crit_edge ]
  %span.066 = phi i32 [ %inc, %for.inc.for.body13_crit_edge ], [ 0, %mega_mod64.exit.for.body13_crit_edge ]
  %block_span_info = getelementptr %struct.MR_DRV_RAID_MAP, ptr %map, i32 0, i32 11, i32 %ld, i32 2, i32 %span.066, i32 2
  %13 = ptrtoint ptr %block_span_info to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %block_span_info, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %info.064.lcssa72)
  %cmp16.not.not = icmp ugt i32 %15, %info.064.lcssa72
  br i1 %cmp16.not.not, label %if.then18, label %for.body13.for.inc_crit_edge

for.body13.for.inc_crit_edge:                     ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then18:                                        ; preds = %for.body13
  %arrayidx20 = getelementptr %struct._LD_SPAN_SET, ptr %arrayidx3.lcssa71, i32 0, i32 8, i32 %span.066
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %__rem.0.i, i32 %conv21)
  %cmp22.not = icmp ult i32 %__rem.0.i, %conv21
  br i1 %cmp22.not, label %if.then18.for.end_crit_edge, label %if.then18.for.inc_crit_edge

if.then18.for.inc_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then18.for.end_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %if.then18.for.inc_crit_edge, %for.body13.for.inc_crit_edge
  %span_offset.1 = phi i32 [ %span_offset.068, %for.body13.for.inc_crit_edge ], [ %conv21, %if.then18.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %span.066, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body13_crit_edge

for.inc.for.body13_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body13

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then18.for.end_crit_edge, %mega_mod64.exit.for.end_crit_edge
  %span_offset.0.lcssa = phi i32 [ 0, %mega_mod64.exit.for.end_crit_edge ], [ %span_offset.068, %if.then18.for.end_crit_edge ], [ %span_offset.1, %for.inc.for.end_crit_edge ]
  %sub30 = sub i32 %__rem.0.i, %span_offset.0.lcssa
  br label %cleanup

for.inc31:                                        ; preds = %if.end
  %arrayidx3.1 = getelementptr [8 x %struct._LD_SPAN_SET], ptr %arrayidx, i32 0, i32 1
  %span_row_data_width.1 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.1, i32 0, i32 9
  %18 = ptrtoint ptr %span_row_data_width.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %span_row_data_width.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp4.1 = icmp eq i32 %19, 0
  br i1 %cmp4.1, label %for.inc31.do.end_crit_edge, label %if.end.1

for.inc31.do.end_crit_edge:                       ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.1:                                         ; preds = %for.inc31
  %data_strip_end.1 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.1, i32 0, i32 5
  %20 = ptrtoint ptr %data_strip_end.1 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %data_strip_end.1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %strip)
  %cmp5.1 = icmp ult i64 %21, %strip
  br i1 %cmp5.1, label %for.inc31.1, label %if.end.1.if.end.i_crit_edge

if.end.1.if.end.i_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.inc31.1:                                      ; preds = %if.end.1
  %arrayidx3.2 = getelementptr [8 x %struct._LD_SPAN_SET], ptr %arrayidx, i32 0, i32 2
  %span_row_data_width.2 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.2, i32 0, i32 9
  %22 = ptrtoint ptr %span_row_data_width.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %span_row_data_width.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp4.2 = icmp eq i32 %23, 0
  br i1 %cmp4.2, label %for.inc31.1.do.end_crit_edge, label %if.end.2

for.inc31.1.do.end_crit_edge:                     ; preds = %for.inc31.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.2:                                         ; preds = %for.inc31.1
  %data_strip_end.2 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.2, i32 0, i32 5
  %24 = ptrtoint ptr %data_strip_end.2 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %data_strip_end.2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %strip)
  %cmp5.2 = icmp ult i64 %25, %strip
  br i1 %cmp5.2, label %for.inc31.2, label %if.end.2.if.end.i_crit_edge

if.end.2.if.end.i_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.inc31.2:                                      ; preds = %if.end.2
  %arrayidx3.3 = getelementptr [8 x %struct._LD_SPAN_SET], ptr %arrayidx, i32 0, i32 3
  %span_row_data_width.3 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.3, i32 0, i32 9
  %26 = ptrtoint ptr %span_row_data_width.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %span_row_data_width.3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp4.3 = icmp eq i32 %27, 0
  br i1 %cmp4.3, label %for.inc31.2.do.end_crit_edge, label %if.end.3

for.inc31.2.do.end_crit_edge:                     ; preds = %for.inc31.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.3:                                         ; preds = %for.inc31.2
  %data_strip_end.3 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.3, i32 0, i32 5
  %28 = ptrtoint ptr %data_strip_end.3 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %data_strip_end.3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %strip)
  %cmp5.3 = icmp ult i64 %29, %strip
  br i1 %cmp5.3, label %for.inc31.3, label %if.end.3.if.end.i_crit_edge

if.end.3.if.end.i_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.inc31.3:                                      ; preds = %if.end.3
  %arrayidx3.4 = getelementptr [8 x %struct._LD_SPAN_SET], ptr %arrayidx, i32 0, i32 4
  %span_row_data_width.4 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.4, i32 0, i32 9
  %30 = ptrtoint ptr %span_row_data_width.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %span_row_data_width.4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp4.4 = icmp eq i32 %31, 0
  br i1 %cmp4.4, label %for.inc31.3.do.end_crit_edge, label %if.end.4

for.inc31.3.do.end_crit_edge:                     ; preds = %for.inc31.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.4:                                         ; preds = %for.inc31.3
  %data_strip_end.4 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.4, i32 0, i32 5
  %32 = ptrtoint ptr %data_strip_end.4 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %data_strip_end.4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %strip)
  %cmp5.4 = icmp ult i64 %33, %strip
  br i1 %cmp5.4, label %for.inc31.4, label %if.end.4.if.end.i_crit_edge

if.end.4.if.end.i_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.inc31.4:                                      ; preds = %if.end.4
  %arrayidx3.5 = getelementptr [8 x %struct._LD_SPAN_SET], ptr %arrayidx, i32 0, i32 5
  %span_row_data_width.5 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.5, i32 0, i32 9
  %34 = ptrtoint ptr %span_row_data_width.5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %span_row_data_width.5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp4.5 = icmp eq i32 %35, 0
  br i1 %cmp4.5, label %for.inc31.4.do.end_crit_edge, label %if.end.5

for.inc31.4.do.end_crit_edge:                     ; preds = %for.inc31.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.5:                                         ; preds = %for.inc31.4
  %data_strip_end.5 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.5, i32 0, i32 5
  %36 = ptrtoint ptr %data_strip_end.5 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %data_strip_end.5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %strip)
  %cmp5.5 = icmp ult i64 %37, %strip
  br i1 %cmp5.5, label %for.inc31.5, label %if.end.5.if.end.i_crit_edge

if.end.5.if.end.i_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.inc31.5:                                      ; preds = %if.end.5
  %arrayidx3.6 = getelementptr [8 x %struct._LD_SPAN_SET], ptr %arrayidx, i32 0, i32 6
  %span_row_data_width.6 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.6, i32 0, i32 9
  %38 = ptrtoint ptr %span_row_data_width.6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %span_row_data_width.6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp4.6 = icmp eq i32 %39, 0
  br i1 %cmp4.6, label %for.inc31.5.do.end_crit_edge, label %if.end.6

for.inc31.5.do.end_crit_edge:                     ; preds = %for.inc31.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.6:                                         ; preds = %for.inc31.5
  %data_strip_end.6 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.6, i32 0, i32 5
  %40 = ptrtoint ptr %data_strip_end.6 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %data_strip_end.6, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %strip)
  %cmp5.6 = icmp ult i64 %41, %strip
  br i1 %cmp5.6, label %for.inc31.6, label %if.end.6.if.end.i_crit_edge

if.end.6.if.end.i_crit_edge:                      ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.inc31.6:                                      ; preds = %if.end.6
  %arrayidx3.7 = getelementptr [8 x %struct._LD_SPAN_SET], ptr %arrayidx, i32 0, i32 7
  %span_row_data_width.7 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.7, i32 0, i32 9
  %42 = ptrtoint ptr %span_row_data_width.7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %span_row_data_width.7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp4.7 = icmp eq i32 %43, 0
  br i1 %cmp4.7, label %for.inc31.6.do.end_crit_edge, label %if.end.7

for.inc31.6.do.end_crit_edge:                     ; preds = %for.inc31.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.7:                                         ; preds = %for.inc31.6
  %data_strip_end.7 = getelementptr inbounds %struct._LD_SPAN_SET, ptr %arrayidx3.7, i32 0, i32 5
  %44 = ptrtoint ptr %data_strip_end.7 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %data_strip_end.7, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %45, i64 %strip)
  %cmp5.7 = icmp ult i64 %45, %strip
  br i1 %cmp5.7, label %if.end.7.do.end_crit_edge, label %if.end.7.if.end.i_crit_edge

if.end.7.if.end.i_crit_edge:                      ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.7.do.end_crit_edge:                        ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %if.end.7.do.end_crit_edge, %for.inc31.6.do.end_crit_edge, %for.inc31.5.do.end_crit_edge, %for.inc31.4.do.end_crit_edge, %for.inc31.3.do.end_crit_edge, %for.inc31.2.do.end_crit_edge, %for.inc31.1.do.end_crit_edge, %for.inc31.do.end_crit_edge, %entry.do.end_crit_edge
  %pdev = getelementptr inbounds %struct.megasas_instance, ptr %instance, i32 0, i32 81
  %46 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %conv34 = trunc i64 %strip to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %ld, i32 noundef %conv34) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end
  %retval.0 = phi i32 [ -1, %do.end ], [ %sub30, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !21, !22, !23, !24, !25, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !44, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__param_lb_pending_cmds, !1, !"__param_lb_pending_cmds", i1 false, i1 false}
!1 = !{!"../drivers/scsi/megaraid/megaraid_sas_fp.c", i32 49, i32 1}
!2 = !{ptr @__UNIQUE_ID_lb_pending_cmdstype287, !1, !"__UNIQUE_ID_lb_pending_cmdstype287", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_lb_pending_cmds288, !4, !"__UNIQUE_ID_lb_pending_cmds288", i1 false, i1 false}
!4 = !{!"../drivers/scsi/megaraid/megaraid_sas_fp.c", i32 50, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/scsi/megaraid/megaraid_sas_fp.c", i32 76, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mega_mod64._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @mega_mod64._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/scsi/megaraid/megaraid_sas_fp.c", i32 334, i32 3}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @MR_ValidateMapInfo.__UNIQUE_ID_ddebug293, !12, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/megaraid/megaraid_sas_fp.c", i32 336, i32 3}
!18 = !{ptr @MR_ValidateMapInfo.__UNIQUE_ID_ddebug294, !17, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/scsi/megaraid/megaraid_sas_fp.c", i32 338, i32 3}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @MR_ValidateMapInfo._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @MR_ValidateMapInfo._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/megaraid/megaraid_sas_fp.c", i32 1015, i32 4}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @MR_BuildRaidContext._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @MR_BuildRaidContext._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/megaraid/megaraid_sas_fp.c", i32 1043, i32 4}
!33 = !{ptr @MR_BuildRaidContext._entry.13, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @MR_BuildRaidContext._entry_ptr.15, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/megaraid/megaraid_sas_fp.c", i32 1056, i32 4}
!37 = !{ptr @MR_BuildRaidContext._entry.16, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @MR_BuildRaidContext._entry_ptr.18, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @__param_str_lb_pending_cmds, !1, !"__param_str_lb_pending_cmds", i1 false, i1 false}
!40 = !{ptr @lb_pending_cmds, !41, !"lb_pending_cmds", i1 false, i1 false}
!41 = !{!"../drivers/scsi/megaraid/megaraid_sas_fp.c", i32 48, i32 21}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/megaraid/megaraid_sas_fp.c", i32 183, i32 4}
!44 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @MR_PopulateDrvRaidMap.__UNIQUE_ID_ddebug289, !43, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/megaraid/megaraid_sas_fp.c", i32 236, i32 5}
!48 = !{ptr @MR_PopulateDrvRaidMap.__UNIQUE_ID_ddebug290, !47, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/megaraid/megaraid_sas_fp.c", i32 247, i32 4}
!51 = !{ptr @MR_PopulateDrvRaidMap.__UNIQUE_ID_ddebug291, !50, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/megaraid/megaraid_sas_fp.c", i32 275, i32 4}
!54 = !{ptr @MR_PopulateDrvRaidMap.__UNIQUE_ID_ddebug292, !53, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/megaraid/megaraid_sas_fp.c", i32 94, i32 3}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @mega_div64_32._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @mega_div64_32._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/megaraid/megaraid_sas_fp.c", i32 582, i32 2}
!62 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @get_strip_from_row._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @get_strip_from_row._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/megaraid/megaraid_sas_fp.c", i32 640, i32 2}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @get_arm_from_strip._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @get_arm_from_strip._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!"branch_weights", i32 2000, i32 1}
!80 = !{i64 2148641717, i64 2148641997, i64 2148642331, i64 2148642665}
!81 = !{i64 2148732998, i64 2148733003, i64 2148733016, i64 2148733060, i64 2148733094, i64 2148733115}
!82 = !{i8 0, i8 2}
!83 = !{i64 2148251183, i64 2148251209, i64 2148251238, i64 2148251272, i64 2148251303, i64 2148251326}
