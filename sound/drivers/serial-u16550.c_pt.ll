; ModuleID = '/llk/IR_all_yes/sound/drivers/serial-u16550.c_pt.bc'
source_filename = "../sound/drivers/serial-u16550.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.snd_rawmidi_ops = type { ptr, ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_uart16550 = type { ptr, ptr, [16 x ptr], [16 x ptr], i32, %struct.spinlock, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i8, i32, [16 x i8], [32768 x i8], i32, i32, i32, i32, i8, %struct.timer_list }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.snd_rawmidi_substream = type { %struct.list_head, i32, i32, i8, i8, i8, i32, i32, i32, i32, ptr, ptr, [32 x i8], ptr, ptr, ptr }

@__UNIQUE_ID_description189 = internal constant [49 x i8] c"snd_serial_u16550.description=MIDI serial u16550\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [55 x i8] c"snd_serial_u16550.file=sound/drivers/snd-serial-u16550\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [30 x i8] c"snd_serial_u16550.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [24 x i8] c"snd_serial_u16550.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype192 = internal constant [46 x i8] c"snd_serial_u16550.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index193 = internal constant [58 x i8] c"snd_serial_u16550.parm=index:Index value for Serial MIDI.\00", section ".modinfo", align 1
@__param_str_id = internal constant [21 x i8] c"snd_serial_u16550.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype194 = internal constant [45 x i8] c"snd_serial_u16550.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id195 = internal constant [53 x i8] c"snd_serial_u16550.parm=id:ID string for Serial MIDI.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [25 x i8] c"snd_serial_u16550.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype196 = internal constant [48 x i8] c"snd_serial_u16550.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable197 = internal constant [54 x i8] c"snd_serial_u16550.parm=enable:Enable UART16550A chip.\00", section ".modinfo", align 1
@__param_str_port = internal constant [23 x i8] c"snd_serial_u16550.port\00", align 1
@__param_arr_port = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_long, ptr @port }, align 4
@__param_port = internal constant %struct.kernel_param { ptr @__param_str_port, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 2, %union.anon.41 { ptr @__param_arr_port } }, section "__param", align 4
@__UNIQUE_ID_porttype198 = internal constant [46 x i8] c"snd_serial_u16550.parmtype=port:array of long\00", section ".modinfo", align 1
@__UNIQUE_ID_port199 = internal constant [56 x i8] c"snd_serial_u16550.parm=port:Port # for UART16550A chip.\00", section ".modinfo", align 1
@__param_str_irq = internal constant [22 x i8] c"snd_serial_u16550.irq\00", align 1
@__param_arr_irq = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @irq }, align 4
@__param_irq = internal constant %struct.kernel_param { ptr @__param_str_irq, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 2, %union.anon.41 { ptr @__param_arr_irq } }, section "__param", align 4
@__UNIQUE_ID_irqtype200 = internal constant [44 x i8] c"snd_serial_u16550.parmtype=irq:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_irq201 = internal constant [54 x i8] c"snd_serial_u16550.parm=irq:IRQ # for UART16550A chip.\00", section ".modinfo", align 1
@__param_str_speed = internal constant [24 x i8] c"snd_serial_u16550.speed\00", align 1
@__param_arr_speed = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @speed }, align 4
@__param_speed = internal constant %struct.kernel_param { ptr @__param_str_speed, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @__param_arr_speed } }, section "__param", align 4
@__UNIQUE_ID_speedtype202 = internal constant [46 x i8] c"snd_serial_u16550.parmtype=speed:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_speed203 = internal constant [45 x i8] c"snd_serial_u16550.parm=speed:Speed in bauds.\00", section ".modinfo", align 1
@__param_str_base = internal constant [23 x i8] c"snd_serial_u16550.base\00", align 1
@__param_arr_base = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @base }, align 4
@__param_base = internal constant %struct.kernel_param { ptr @__param_str_base, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @__param_arr_base } }, section "__param", align 4
@__UNIQUE_ID_basetype204 = internal constant [45 x i8] c"snd_serial_u16550.parmtype=base:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_base205 = internal constant [55 x i8] c"snd_serial_u16550.parm=base:Base for divisor in bauds.\00", section ".modinfo", align 1
@__param_str_outs = internal constant [23 x i8] c"snd_serial_u16550.outs\00", align 1
@__param_arr_outs = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @outs }, align 4
@__param_outs = internal constant %struct.kernel_param { ptr @__param_str_outs, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @__param_arr_outs } }, section "__param", align 4
@__UNIQUE_ID_outstype206 = internal constant [45 x i8] c"snd_serial_u16550.parmtype=outs:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_outs207 = internal constant [52 x i8] c"snd_serial_u16550.parm=outs:Number of MIDI outputs.\00", section ".modinfo", align 1
@__param_str_ins = internal constant [22 x i8] c"snd_serial_u16550.ins\00", align 1
@__param_arr_ins = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @ins }, align 4
@__param_ins = internal constant %struct.kernel_param { ptr @__param_str_ins, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @__param_arr_ins } }, section "__param", align 4
@__UNIQUE_ID_instype208 = internal constant [44 x i8] c"snd_serial_u16550.parmtype=ins:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_ins209 = internal constant [50 x i8] c"snd_serial_u16550.parm=ins:Number of MIDI inputs.\00", section ".modinfo", align 1
@__param_str_droponfull = internal constant [29 x i8] c"snd_serial_u16550.droponfull\00", align 1
@__param_arr_droponfull = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @droponfull }, align 4
@__param_droponfull = internal constant %struct.kernel_param { ptr @__param_str_droponfull, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @__param_arr_droponfull } }, section "__param", align 4
@__UNIQUE_ID_droponfulltype210 = internal constant [52 x i8] c"snd_serial_u16550.parmtype=droponfull:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_droponfull211 = internal constant [74 x i8] c"snd_serial_u16550.parm=droponfull:Flag to enable drop-on-full buffer mode\00", section ".modinfo", align 1
@__param_str_adaptor = internal constant [26 x i8] c"snd_serial_u16550.adaptor\00", align 1
@__param_arr_adaptor = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @adaptor }, align 4
@__param_adaptor = internal constant %struct.kernel_param { ptr @__param_str_adaptor, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @__param_arr_adaptor } }, section "__param", align 4
@__UNIQUE_ID_adaptortype212 = internal constant [48 x i8] c"snd_serial_u16550.parmtype=adaptor:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_adaptor213 = internal constant [48 x i8] c"snd_serial_u16550.parm=adaptor:Type of adaptor.\00", section ".modinfo", align 1
@__initcall__kmod_snd_serial_u16550__214_991_alsa_card_serial_init6 = internal global ptr @alsa_card_serial_init, section ".initcall6.init", align 4
@__exitcall_alsa_card_serial_exit = internal global ptr @alsa_card_serial_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { <{ i8, [31 x i8] }>, [32 x i8] } { <{ i8, [31 x i8] }> <{ i8 1, [31 x i8] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@param_ops_long = external dso_local constant %struct.kernel_param_ops, align 4
@port = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [32 x i8] zeroinitializer }, align 32
@irq = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535], [32 x i8] zeroinitializer }, align 32
@speed = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 38400, i32 38400, i32 38400, i32 38400, i32 38400, i32 38400, i32 38400, i32 38400, i32 38400, i32 38400, i32 38400, i32 38400, i32 38400, i32 38400, i32 38400, i32 38400, i32 38400, i32 38400, i32 38400, i32 38400, i32 38400, i32 38400, i32 38400, i32 38400, i32 38400, i32 38400, i32 38400, i32 38400, i32 38400, i32 38400, i32 38400, i32 38400], [32 x i8] zeroinitializer }, align 32
@base = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 115200, i32 115200, i32 115200, i32 115200, i32 115200, i32 115200, i32 115200, i32 115200, i32 115200, i32 115200, i32 115200, i32 115200, i32 115200, i32 115200, i32 115200, i32 115200, i32 115200, i32 115200, i32 115200, i32 115200, i32 115200, i32 115200, i32 115200, i32 115200, i32 115200, i32 115200, i32 115200, i32 115200, i32 115200, i32 115200, i32 115200, i32 115200], [32 x i8] zeroinitializer }, align 32
@outs = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [32 x i8] zeroinitializer }, align 32
@ins = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [32 x i8] zeroinitializer }, align 32
@droponfull = internal global { [32 x i8], [32 x i8] } zeroinitializer, align 32
@adaptor = internal global { [32 x i32], [32 x i8] } zeroinitializer, align 32
@devices = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@snd_serial_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @snd_serial_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_serial_u16550\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/drivers/serial-u16550.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Adaptor type is out of range 0-%d (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Count of outputs is out of range 1-%d (%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Count of inputs is out of range 1-%d (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Serial\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Serial MIDI (UART16550A)\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s [%s] at %#lx, irq %d\00", [40 x i8] zeroinitializer }, align 32
@adaptor_names = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], [44 x i8] zeroinitializer }, align 32
@snd_uart16550_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&uart->open_lock\00", [47 x i8] zeroinitializer }, align 32
@snd_uart16550_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 778, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013no UART detected at 0x%lx\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_uart16550_create\00", [43 x i8] zeroinitializer }, align 32
@snd_uart16550_create._entry_ptr = internal global ptr @snd_uart16550_create._entry, section ".printk_index", align 4
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Serial MIDI\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014irq %d busy. Using Polling.\0A\00", [33 x i8] zeroinitializer }, align 32
@snd_uart16550_create.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&uart->buffer_timer)\00", [42 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013u16550: can't grab port 0x%lx\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s: Overrun on device at 0x%lx\0A\00", [62 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"UART Serial MIDI\00", [47 x i8] zeroinitializer }, align 32
@snd_uart16550_input = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @snd_uart16550_input_open, ptr @snd_uart16550_input_close, ptr @snd_uart16550_input_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@snd_uart16550_output = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @snd_uart16550_output_open, ptr @snd_uart16550_output_close, ptr @snd_uart16550_output_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@snd_uart16550_output_write.lasttime = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014%s: Buffer overrun on device at 0x%lx\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Serial MIDI %d\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Soundcanvas\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MS-124T\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MS-124W S/A\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MS-124W M/B\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Generic\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 55, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 56, i32 14 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 57, i32 13 }
@___asan_gen_.41 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 58, i32 13 }
@___asan_gen_.44 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 59, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 60, i32 12 }
@___asan_gen_.50 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 61, i32 12 }
@___asan_gen_.53 = private unnamed_addr constant [5 x i8] c"outs\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 62, i32 12 }
@___asan_gen_.56 = private unnamed_addr constant [4 x i8] c"ins\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 63, i32 12 }
@___asan_gen_.59 = private unnamed_addr constant [11 x i8] c"droponfull\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 65, i32 13 }
@___asan_gen_.62 = private unnamed_addr constant [8 x i8] c"adaptor\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 64, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 155, i32 32 }
@___asan_gen_.68 = private unnamed_addr constant [18 x i8] c"snd_serial_driver\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 936, i32 31 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 939, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 882, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 889, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 896, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 907, i32 23 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 908, i32 26 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 920, i32 26 }
@___asan_gen_.95 = private unnamed_addr constant [14 x i8] c"adaptor_names\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 44, i32 27 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 771, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 778, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 784, i32 13 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 785, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 798, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 326, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 227, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 839, i32 36 }
@___asan_gen_.134 = private unnamed_addr constant [20 x i8] c"snd_uart16550_input\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 746, i32 37 }
@___asan_gen_.137 = private unnamed_addr constant [21 x i8] c"snd_uart16550_output\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 739, i32 37 }
@___asan_gen_.140 = private unnamed_addr constant [9 x i8] c"lasttime\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 638, i32 23 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 622, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 828, i32 28 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 45, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 46, i32 9 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 47, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 48, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.162 = private constant [33 x i8] c"../sound/drivers/serial-u16550.c\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 49, i32 2 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @__UNIQUE_ID_adaptor213, ptr @__UNIQUE_ID_adaptortype212, ptr @__UNIQUE_ID_base205, ptr @__UNIQUE_ID_basetype204, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_droponfull211, ptr @__UNIQUE_ID_droponfulltype210, ptr @__UNIQUE_ID_enable197, ptr @__UNIQUE_ID_enabletype196, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_id195, ptr @__UNIQUE_ID_idtype194, ptr @__UNIQUE_ID_index193, ptr @__UNIQUE_ID_indextype192, ptr @__UNIQUE_ID_ins209, ptr @__UNIQUE_ID_instype208, ptr @__UNIQUE_ID_irq201, ptr @__UNIQUE_ID_irqtype200, ptr @__UNIQUE_ID_license191, ptr @__UNIQUE_ID_outs207, ptr @__UNIQUE_ID_outstype206, ptr @__UNIQUE_ID_port199, ptr @__UNIQUE_ID_porttype198, ptr @__UNIQUE_ID_speed203, ptr @__UNIQUE_ID_speedtype202, ptr @__exitcall_alsa_card_serial_exit, ptr @__initcall__kmod_snd_serial_u16550__214_991_alsa_card_serial_init6, ptr @__param_adaptor, ptr @__param_base, ptr @__param_droponfull, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @__param_ins, ptr @__param_irq, ptr @__param_outs, ptr @__param_port, ptr @__param_speed, ptr @alsa_card_serial_exit, ptr @snd_uart16550_create._entry, ptr @snd_uart16550_create._entry_ptr, ptr @index, ptr @id, ptr @enable, ptr @port, ptr @irq, ptr @speed, ptr @base, ptr @outs, ptr @ins, ptr @droponfull, ptr @adaptor, ptr @devices, ptr @snd_serial_driver, ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @adaptor_names, ptr @snd_uart16550_create.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @snd_uart16550_create.__key.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @snd_uart16550_input, ptr @snd_uart16550_output, ptr @snd_uart16550_output_write.lasttime, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speed to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @base to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @outs to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ins to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @droponfull to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adaptor to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devices to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_serial_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adaptor_names to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_uart16550_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_uart16550_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_uart16550_create.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_uart16550_input to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_uart16550_output to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_uart16550_output_write.lasttime to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @alsa_card_serial_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @snd_serial_unregister_all()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_serial_unregister_all() unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr @devices, i32 0, i32 %i.03
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @platform_device_unregister(ptr noundef %1) #6
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @snd_serial_driver) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @alsa_card_serial_init() #0 section ".init.text" align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @snd_serial_driver, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup17_crit_edge, label %for.cond.preheader

entry.cleanup17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup17

for.cond.preheader:                               ; preds = %entry
  %0 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader
  %cards.031 = phi i32 [ 0, %for.cond.preheader ], [ %cards.1, %cleanup.for.body_crit_edge ]
  %i.029 = phi i32 [ 0, %for.cond.preheader ], [ %inc13, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %i.029
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end3

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #6
  %3 = call ptr @memset(ptr %0, i32 255, i32 48)
  %4 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %5 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %fwnode.i.i, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %0, align 8
  %7 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str, ptr %name2.i.i, align 4
  %8 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %i.029, ptr %id3.i.i, align 8
  %9 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %dma_mask.i.i, align 8
  %10 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %properties.i.i, align 8
  %11 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #6
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call.i.i, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  call void @platform_device_unregister(ptr noundef %call.i.i) #6
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx12 = getelementptr [32 x ptr], ptr @devices, i32 0, i32 %i.029
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i, ptr %arrayidx12, align 4
  %inc = add i32 %cards.031, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10, %if.end3.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %cards.1 = phi i32 [ %inc, %if.end11 ], [ %cards.031, %if.then10 ], [ %cards.031, %for.body.cleanup_crit_edge ], [ %cards.031, %if.end3.cleanup_crit_edge ]
  %inc13 = add nuw nsw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc13, 32
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cards.1)
  %tobool14.not = icmp eq i32 %cards.1, 0
  br i1 %tobool14.not, label %if.then15, label %for.end.cleanup17_crit_edge

for.end.cleanup17_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup17

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @snd_serial_unregister_all()
  br label %cleanup17

cleanup17:                                        ; preds = %if.then15, %for.end.cleanup17_crit_edge, %entry.cleanup17_crit_edge
  %retval.0 = phi i32 [ -19, %if.then15 ], [ %call, %entry.cleanup17_crit_edge ], [ 0, %for.end.cleanup17_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_serial_probe(ptr noundef %devptr) #1 align 64 {
entry:
  %rrawmidi.i = alloca ptr, align 4
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #6
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !180
  %id = getelementptr inbounds %struct.platform_device, ptr %devptr, i32 0, i32 1
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [32 x i32], ptr @adaptor, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %sw.default [
    i32 0, label %entry.sw.epilog.sink.split_crit_edge
    i32 1, label %entry.sw.epilog.sink.split.sink.split_crit_edge
    i32 2, label %entry.sw.epilog.sink.split.sink.split_crit_edge109
    i32 3, label %sw.bb5
    i32 4, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog.sink.split.sink.split_crit_edge109: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.sink.split

entry.sw.epilog.sink.split.sink.split_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.sink.split

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.sink.split

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 884, ptr noundef nonnull @.str.3, i32 noundef 4, i32 noundef %4) #6
  br label %cleanup

sw.epilog.sink.split.sink.split:                  ; preds = %sw.bb5, %entry.sw.epilog.sink.split.sink.split_crit_edge, %entry.sw.epilog.sink.split.sink.split_crit_edge109
  %.sink = phi i32 [ 16, %sw.bb5 ], [ 1, %entry.sw.epilog.sink.split.sink.split_crit_edge ], [ 1, %entry.sw.epilog.sink.split.sink.split_crit_edge109 ]
  %arrayidx3 = getelementptr [32 x i32], ptr @outs, i32 0, i32 %2
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %arrayidx3, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.epilog.sink.split.sink.split, %entry.sw.epilog.sink.split_crit_edge
  %arrayidx7 = getelementptr [32 x i32], ptr @ins, i32 0, i32 %2
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %arrayidx7, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %arrayidx9 = getelementptr [32 x i32], ptr @outs, i32 0, i32 %2
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx9, align 4
  %10 = add i32 %9, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %10)
  %11 = icmp ult i32 %10, -16
  br i1 %11, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 891, ptr noundef nonnull @.str.4, i32 noundef 16, i32 noundef %9) #6
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %arrayidx13 = getelementptr [32 x i32], ptr @ins, i32 0, i32 %2
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx13, align 4
  %14 = add i32 %13, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %14)
  %15 = icmp ult i32 %14, -16
  br i1 %15, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 898, ptr noundef nonnull @.str.5, i32 noundef 16, i32 noundef %13) #6
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %dev21 = getelementptr inbounds %struct.platform_device, ptr %devptr, i32 0, i32 3
  %arrayidx22 = getelementptr [32 x i32], ptr @index, i32 0, i32 %2
  %16 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx22, align 4
  %arrayidx23 = getelementptr [32 x ptr], ptr @id, i32 0, i32 %2
  %18 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx23, align 4
  %call = call i32 @snd_devm_card_new(ptr noundef %dev21, i32 noundef %17, ptr noundef %19, ptr noundef null, i32 noundef 0, ptr noundef nonnull %card) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp24 = icmp slt i32 %call, 0
  br i1 %cmp24, label %if.end20.cleanup_crit_edge, label %if.end26

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  %20 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 2
  %22 = call ptr @memcpy(ptr %driver, ptr @.str.6, i32 7)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 3
  %23 = call ptr @memcpy(ptr %shortname, ptr @.str.7, i32 25)
  %arrayidx30 = getelementptr [32 x i32], ptr @port, i32 0, i32 %2
  %24 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx30, align 4
  %arrayidx31 = getelementptr [32 x i32], ptr @irq, i32 0, i32 %2
  %26 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx31, align 4
  %arrayidx32 = getelementptr [32 x i32], ptr @speed, i32 0, i32 %2
  %28 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx32, align 4
  %arrayidx33 = getelementptr [32 x i32], ptr @base, i32 0, i32 %2
  %30 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx33, align 4
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  %arrayidx35 = getelementptr [32 x i8], ptr @droponfull, i32 0, i32 %2
  %34 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx35, align 1, !range !179
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 27
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 8
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %37, i32 noundef 33076, i32 noundef 3520) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end26.cleanup_crit_edge, label %if.end.i

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end26
  %38 = zext i8 %35 to i32
  %adaptor1.i = getelementptr inbounds %struct.snd_uart16550, ptr %call.i.i, i32 0, i32 16
  %39 = ptrtoint ptr %adaptor1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %33, ptr %adaptor1.i, align 4
  %40 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %21, ptr %call.i.i, align 4
  %open_lock.i = getelementptr inbounds %struct.snd_uart16550, ptr %call.i.i, i32 0, i32 5
  call void @__raw_spin_lock_init(ptr noundef %open_lock.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @snd_uart16550_create.__key, i16 noundef signext 3) #6
  %irq4.i = getelementptr inbounds %struct.snd_uart16550, ptr %call.i.i, i32 0, i32 6
  %41 = ptrtoint ptr %irq4.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %irq4.i, align 4
  %base5.i = getelementptr inbounds %struct.snd_uart16550, ptr %call.i.i, i32 0, i32 7
  %42 = ptrtoint ptr %base5.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %25, ptr %base5.i, align 4
  %drop_on_full.i = getelementptr inbounds %struct.snd_uart16550, ptr %call.i.i, i32 0, i32 25
  %43 = ptrtoint ptr %drop_on_full.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %38, ptr %drop_on_full.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %switch.i.i = icmp ult i32 %25, 2
  br i1 %switch.i.i, label %if.end.i.do.end10.i_crit_edge, label %if.end.i.i

if.end.i.do.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10.i

if.end.i.i:                                       ; preds = %if.end.i
  %44 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %45, i32 0, i32 27
  %46 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i.i, align 8
  %call.i83.i = call ptr @__devm_request_region(ptr noundef %47, ptr noundef nonnull @ioport_resource, i32 noundef %25, i32 noundef 8, ptr noundef nonnull @.str.12) #6
  %tobool.not.i.i = icmp eq ptr %call.i83.i, null
  br i1 %tobool.not.i.i, label %if.then2.i.i, label %snd_uart16550_detect.exit.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 326, ptr noundef nonnull @.str.16, i32 noundef %25) #6
  br label %do.end10.i

snd_uart16550_detect.exit.i:                      ; preds = %if.end.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !181
  call void @arm_heavy_mb() #6
  %add.i.i = add i32 %25, 3
  %and.i.i = and i32 %add.i.i, 1048575
  %add4.i.i = or i32 %and.i.i, -18874368
  %48 = inttoptr i32 %add4.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 3) #6, !srcloc !182
  %add6.i.i = add i32 %25, 1
  %and7.i.i = and i32 %add6.i.i, 1048575
  %add8.i.i = or i32 %and7.i.i, -18874368
  %49 = inttoptr i32 %add8.i.i to ptr
  %50 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %49) #6, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %50)
  %cmp12.not.i.i = icmp ult i8 %50, 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !185
  call void @arm_heavy_mb() #6
  %add19.i.i = add i32 %25, 7
  %and20.i.i = and i32 %add19.i.i, 1048575
  %add21.i.i = or i32 %and20.i.i, -18874368
  %51 = inttoptr i32 %add21.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 -86) #6, !srcloc !182
  %52 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %51) #6, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %52)
  %cmp31.not.i.i = icmp eq i8 %52, -86
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !187
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 85) #6, !srcloc !182
  %53 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %51) #6, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %53)
  %cmp50.not.i.i = icmp eq i8 %53, 85
  %54 = select i1 %cmp50.not.i.i, i1 %cmp31.not.i.i, i1 false
  %narrow68.i.i = select i1 %54, i1 %cmp12.not.i.i, i1 false
  br i1 %narrow68.i.i, label %if.end12.i, label %snd_uart16550_detect.exit.i.do.end10.i_crit_edge

snd_uart16550_detect.exit.i.do.end10.i_crit_edge: ; preds = %snd_uart16550_detect.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10.i

do.end10.i:                                       ; preds = %snd_uart16550_detect.exit.i.do.end10.i_crit_edge, %if.then2.i.i, %if.end.i.do.end10.i_crit_edge
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %25) #9
  br label %cleanup

if.end12.i:                                       ; preds = %snd_uart16550_detect.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp13.i = icmp slt i32 %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %27)
  %cmp14.not.i = icmp eq i32 %27, 65535
  %or.cond.i = or i1 %cmp13.i, %cmp14.not.i
  br i1 %or.cond.i, label %if.end12.i.if.end22.i_crit_edge, label %if.then15.i

if.end12.i.if.end22.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

if.then15.i:                                      ; preds = %if.end12.i
  %55 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i, align 8
  %call.i84.i = call i32 @devm_request_threaded_irq(ptr noundef %56, i32 noundef %27, ptr noundef nonnull @snd_uart16550_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull %call.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84.i)
  %tobool18.not.i = icmp eq i32 %call.i84.i, 0
  br i1 %tobool18.not.i, label %if.else.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 786, ptr noundef nonnull @.str.13, i32 noundef %27) #6
  br label %if.end22.i

if.else.i:                                        ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %irq4.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %27, ptr %irq4.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else.i, %if.then19.i, %if.end12.i.if.end22.i_crit_edge
  %div.i = udiv i32 %31, %29
  %conv.i = trunc i32 %div.i to i8
  %divisor.i = getelementptr inbounds %struct.snd_uart16550, ptr %call.i.i, i32 0, i32 10
  %58 = ptrtoint ptr %divisor.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv.i, ptr %divisor.i, align 4
  %conv24.i = and i32 %div.i, 255
  %div25.i = udiv i32 %31, %conv24.i
  %speed26.i = getelementptr inbounds %struct.snd_uart16550, ptr %call.i.i, i32 0, i32 8
  %59 = ptrtoint ptr %speed26.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %div25.i, ptr %speed26.i, align 4
  %speed_base.i = getelementptr inbounds %struct.snd_uart16550, ptr %call.i.i, i32 0, i32 9
  %60 = ptrtoint ptr %speed_base.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %31, ptr %speed_base.i, align 4
  %prev_out.i = getelementptr inbounds %struct.snd_uart16550, ptr %call.i.i, i32 0, i32 19
  %61 = ptrtoint ptr %prev_out.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %prev_out.i, align 4
  %prev_in.i = getelementptr inbounds %struct.snd_uart16550, ptr %call.i.i, i32 0, i32 17
  %62 = ptrtoint ptr %prev_in.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %prev_in.i, align 4
  %rstatus.i = getelementptr inbounds %struct.snd_uart16550, ptr %call.i.i, i32 0, i32 18
  %63 = ptrtoint ptr %rstatus.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %rstatus.i, align 4
  %prev_status.i = getelementptr inbounds %struct.snd_uart16550, ptr %call.i.i, i32 0, i32 20
  %64 = call ptr @memset(ptr %prev_status.i, i32 128, i32 16)
  %buffer_timer.i = getelementptr inbounds %struct.snd_uart16550, ptr %call.i.i, i32 0, i32 27
  call void @init_timer_key(ptr noundef %buffer_timer.i, ptr noundef nonnull @snd_uart16550_buffer_timer, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull @snd_uart16550_create.__key.14) #6
  %timer_running.i = getelementptr inbounds %struct.snd_uart16550, ptr %call.i.i, i32 0, i32 26
  %65 = ptrtoint ptr %timer_running.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load.i = load i8, ptr %timer_running.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %timer_running.i, align 4
  %66 = ptrtoint ptr %adaptor1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %adaptor1.i, align 4
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %67, label %if.end22.i.if.end40_crit_edge [
    i32 2, label %if.end22.i.do.body31.i_crit_edge
    i32 3, label %if.end22.i.do.body31.i_crit_edge110
    i32 1, label %do.body38.i
  ]

if.end22.i.do.body31.i_crit_edge110:              ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31.i

if.end22.i.do.body31.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31.i

if.end22.i.if.end40_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

do.body31.i:                                      ; preds = %if.end22.i.do.body31.i_crit_edge, %if.end22.i.do.body31.i_crit_edge110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !189
  call void @arm_heavy_mb() #6
  %69 = ptrtoint ptr %base5.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %base5.i, align 4
  %add.i = add i32 %70, 4
  %and.i = and i32 %add.i, 1048575
  %add35.i = or i32 %and.i, -18874368
  %71 = inttoptr i32 %add35.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %71, i8 2) #6, !srcloc !182
  br label %if.end40

do.body38.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !190
  call void @arm_heavy_mb() #6
  %72 = ptrtoint ptr %base5.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %base5.i, align 4
  %add42.i = add i32 %73, 4
  %and43.i = and i32 %add42.i, 1048575
  %add44.i = or i32 %and43.i, -18874368
  %74 = inttoptr i32 %add44.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %74, i8 3) #6, !srcloc !182
  br label %if.end40

if.end40:                                         ; preds = %do.body38.i, %do.body31.i, %if.end22.i.if.end40_crit_edge
  %75 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx9, align 4
  %77 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx13, align 4
  %rmidi = getelementptr inbounds %struct.snd_uart16550, ptr %call.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rrawmidi.i) #6
  %79 = ptrtoint ptr %rrawmidi.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr inttoptr (i32 -1 to ptr), ptr %rrawmidi.i, align 4, !annotation !180
  %80 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %call.i.i, align 4
  %call.i = call i32 @snd_rawmidi_new(ptr noundef %81, ptr noundef nonnull @.str.18, i32 noundef 0, i32 noundef %76, i32 noundef %78, ptr noundef nonnull %rrawmidi.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %snd_uart16550_rmidi.exit, label %if.end.i94

if.end.i94:                                       ; preds = %if.end40
  %82 = ptrtoint ptr %rrawmidi.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rrawmidi.i, align 4
  call void @snd_rawmidi_set_ops(ptr noundef %83, i32 noundef 1, ptr noundef nonnull @snd_uart16550_input) #6
  %84 = ptrtoint ptr %rrawmidi.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rrawmidi.i, align 4
  call void @snd_rawmidi_set_ops(ptr noundef %85, i32 noundef 0, ptr noundef nonnull @snd_uart16550_output) #6
  %86 = ptrtoint ptr %rrawmidi.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rrawmidi.i, align 4
  %name.i = getelementptr inbounds %struct.snd_rawmidi, ptr %87, i32 0, i32 5
  %88 = call ptr @memcpy(ptr %name.i, ptr @.str.12, i32 12)
  %substreams.i.i = getelementptr inbounds %struct.snd_rawmidi, ptr %87, i32 0, i32 8, i32 0, i32 2
  %89 = ptrtoint ptr %substreams.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %substream.011.i.i = load ptr, ptr %substreams.i.i, align 4
  %cmp.not12.i.i = icmp eq ptr %substream.011.i.i, %substreams.i.i
  br i1 %cmp.not12.i.i, label %if.end.i94.snd_uart16550_substreams.exit.i_crit_edge, label %if.end.i94.for.body.i.i_crit_edge

if.end.i94.for.body.i.i_crit_edge:                ; preds = %if.end.i94
  br label %for.body.i.i

if.end.i94.snd_uart16550_substreams.exit.i_crit_edge: ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_uart16550_substreams.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i94.for.body.i.i_crit_edge
  %substream.013.i.i = phi ptr [ %substream.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %substream.011.i.i, %if.end.i94.for.body.i.i_crit_edge ]
  %name.i.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream.013.i.i, i32 0, i32 12
  %number.i.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream.013.i.i, i32 0, i32 2
  %90 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %number.i.i, align 4
  %add.i.i95 = add i32 %91, 1
  %call.i.i96 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name.i.i, ptr noundef nonnull @.str.20, i32 noundef %add.i.i95) #6
  %92 = ptrtoint ptr %substream.013.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %substream.0.i.i = load ptr, ptr %substream.013.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %substream.0.i.i, %substreams.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.snd_uart16550_substreams.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body.i.i.snd_uart16550_substreams.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_uart16550_substreams.exit.i

snd_uart16550_substreams.exit.i:                  ; preds = %for.body.i.i.snd_uart16550_substreams.exit.i_crit_edge, %if.end.i94.snd_uart16550_substreams.exit.i_crit_edge
  %93 = ptrtoint ptr %rrawmidi.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rrawmidi.i, align 4
  %substreams.i1.i = getelementptr %struct.snd_rawmidi, ptr %94, i32 0, i32 8, i32 1, i32 2
  %95 = ptrtoint ptr %substreams.i1.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %substream.011.i2.i = load ptr, ptr %substreams.i1.i, align 4
  %cmp.not12.i3.i = icmp eq ptr %substream.011.i2.i, %substreams.i1.i
  br i1 %cmp.not12.i3.i, label %snd_uart16550_substreams.exit.i.snd_uart16550_substreams.exit12.i_crit_edge, label %snd_uart16550_substreams.exit.i.for.body.i11.i_crit_edge

snd_uart16550_substreams.exit.i.for.body.i11.i_crit_edge: ; preds = %snd_uart16550_substreams.exit.i
  br label %for.body.i11.i

snd_uart16550_substreams.exit.i.snd_uart16550_substreams.exit12.i_crit_edge: ; preds = %snd_uart16550_substreams.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_uart16550_substreams.exit12.i

for.body.i11.i:                                   ; preds = %for.body.i11.i.for.body.i11.i_crit_edge, %snd_uart16550_substreams.exit.i.for.body.i11.i_crit_edge
  %substream.013.i4.i = phi ptr [ %substream.0.i9.i, %for.body.i11.i.for.body.i11.i_crit_edge ], [ %substream.011.i2.i, %snd_uart16550_substreams.exit.i.for.body.i11.i_crit_edge ]
  %name.i5.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream.013.i4.i, i32 0, i32 12
  %number.i6.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream.013.i4.i, i32 0, i32 2
  %96 = ptrtoint ptr %number.i6.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %number.i6.i, align 4
  %add.i7.i = add i32 %97, 1
  %call.i8.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name.i5.i, ptr noundef nonnull @.str.20, i32 noundef %add.i7.i) #6
  %98 = ptrtoint ptr %substream.013.i4.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %substream.0.i9.i = load ptr, ptr %substream.013.i4.i, align 4
  %cmp.not.i10.i = icmp eq ptr %substream.0.i9.i, %substreams.i1.i
  br i1 %cmp.not.i10.i, label %for.body.i11.i.snd_uart16550_substreams.exit12.i_crit_edge, label %for.body.i11.i.for.body.i11.i_crit_edge

for.body.i11.i.for.body.i11.i_crit_edge:          ; preds = %for.body.i11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i11.i

for.body.i11.i.snd_uart16550_substreams.exit12.i_crit_edge: ; preds = %for.body.i11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_uart16550_substreams.exit12.i

snd_uart16550_substreams.exit12.i:                ; preds = %for.body.i11.i.snd_uart16550_substreams.exit12.i_crit_edge, %snd_uart16550_substreams.exit.i.snd_uart16550_substreams.exit12.i_crit_edge
  %99 = ptrtoint ptr %rrawmidi.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rrawmidi.i, align 4
  %info_flags.i = getelementptr inbounds %struct.snd_rawmidi, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %info_flags.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 7, ptr %info_flags.i, align 8
  %private_data.i = getelementptr inbounds %struct.snd_rawmidi, ptr %100, i32 0, i32 9
  %102 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call.i.i, ptr %private_data.i, align 4
  %tobool.not.i97 = icmp eq ptr %rmidi, null
  br i1 %tobool.not.i97, label %snd_uart16550_substreams.exit12.i.if.end47_crit_edge, label %if.then4.i

snd_uart16550_substreams.exit12.i.if.end47_crit_edge: ; preds = %snd_uart16550_substreams.exit12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then4.i:                                       ; preds = %snd_uart16550_substreams.exit12.i
  call void @__sanitizer_cov_trace_pc() #8
  %103 = ptrtoint ptr %rmidi to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %100, ptr %rmidi, align 4
  br label %if.end47

snd_uart16550_rmidi.exit:                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rrawmidi.i) #6
  br label %cleanup

if.end47:                                         ; preds = %if.then4.i, %snd_uart16550_substreams.exit12.i.if.end47_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rrawmidi.i) #6
  %104 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %105, i32 0, i32 4
  %shortname49 = getelementptr inbounds %struct.snd_card, ptr %105, i32 0, i32 3
  %106 = ptrtoint ptr %adaptor1.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %adaptor1.i, align 4
  %arrayidx51 = getelementptr [5 x ptr], ptr @adaptor_names, i32 0, i32 %107
  %108 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx51, align 4
  %110 = ptrtoint ptr %base5.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %base5.i, align 4
  %112 = ptrtoint ptr %irq4.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %irq4.i, align 4
  %call52 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.8, ptr noundef %shortname49, ptr noundef %109, i32 noundef %111, i32 noundef %113)
  %114 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %card, align 4
  %call53 = call i32 @snd_card_register(ptr noundef %115) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.end47.cleanup_crit_edge, label %if.end57

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end57:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %116 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %devptr, i32 0, i32 3, i32 8
  %118 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %117, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.end47.cleanup_crit_edge, %snd_uart16550_rmidi.exit, %do.end10.i, %if.end26.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.then18, %if.then, %sw.default
  %retval.0 = phi i32 [ -19, %sw.default ], [ -19, %if.then ], [ -19, %if.then18 ], [ 0, %if.end57 ], [ %call, %if.end20.cleanup_crit_edge ], [ %call.i, %snd_uart16550_rmidi.exit ], [ %call53, %if.end47.cleanup_crit_edge ], [ -19, %do.end10.i ], [ -12, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_printk(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_uart16550_interrupt(i32 noundef %irq, ptr noundef %dev_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %open_lock = getelementptr inbounds %struct.snd_uart16550, ptr %dev_id, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %open_lock) #6
  %filemode = getelementptr inbounds %struct.snd_uart16550, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %filemode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %filemode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %base = getelementptr inbounds %struct.snd_uart16550, ptr %dev_id, i32 0, i32 7
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %add = add i32 %3, 2
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %4 = inttoptr i32 %add2 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #6, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !191
  tail call fastcc void @snd_uart16550_io_loop(ptr noundef %dev_id)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %open_lock) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_uart16550_buffer_timer(ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %open_lock = getelementptr i8, ptr %t, i32 -32888
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %open_lock) #6
  %timer_running.i = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %timer_running.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %timer_running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.snd_uart16550_del_timer.exit_crit_edge, label %if.then.i

entry.snd_uart16550_del_timer.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_uart16550_del_timer.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @del_timer(ptr noundef %t) #6
  %1 = ptrtoint ptr %timer_running.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load2.i = load i8, ptr %timer_running.i, align 4
  %bf.clear.i = and i8 %bf.load2.i, 127
  store i8 %bf.clear.i, ptr %timer_running.i, align 4
  br label %snd_uart16550_del_timer.exit

snd_uart16550_del_timer.exit:                     ; preds = %if.then.i, %entry.snd_uart16550_del_timer.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %t, i32 -33028
  tail call fastcc void @snd_uart16550_io_loop(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %open_lock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_uart16550_io_loop(ptr noundef %uart) unnamed_addr #1 align 64 {
entry:
  %c = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c) #6
  %0 = ptrtoint ptr %c to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %c, align 1, !annotation !180
  %prev_in = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 17
  %1 = ptrtoint ptr %prev_in to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %prev_in, align 4
  %base = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 7
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base, align 4
  %add187 = add i32 %4, 5
  %and188 = and i32 %add187, 1048575
  %add1189 = or i32 %and188, -18874368
  %5 = inttoptr i32 %add1189 to ptr
  %6 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #6, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !192
  %conv190 = zext i8 %6 to i32
  %and3191 = and i32 %conv190, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3191)
  %tobool.not192 = icmp eq i32 %and3191, 0
  br i1 %tobool.not192, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %rstatus = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 18
  %adaptor = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 16
  %filemode48 = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 4
  %rmidi = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end66.while.body_crit_edge, %while.body.lr.ph
  %conv194 = phi i32 [ %conv190, %while.body.lr.ph ], [ %conv, %if.end66.while.body_crit_edge ]
  %substream.0193 = phi i32 [ %2, %while.body.lr.ph ], [ %substream.2, %if.end66.while.body_crit_edge ]
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base, align 4
  %and7 = and i32 %8, 1048575
  %add8 = or i32 %and7, -18874368
  %9 = inttoptr i32 %add8 to ptr
  %10 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #6, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !193
  %11 = ptrtoint ptr %c to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %c, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %tobool14.not = icmp sgt i8 %10, -1
  br i1 %tobool14.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %rstatus to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %10, ptr %rstatus, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %13 = ptrtoint ptr %adaptor to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %adaptor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp = icmp eq i32 %14, 4
  br i1 %cmp, label %if.then16, label %if.else47

if.then16:                                        ; preds = %if.end
  %15 = ptrtoint ptr %rstatus to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rstatus, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -11, i8 %16)
  %cmp19 = icmp eq i8 %16, -11
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then16
  %conv22 = zext i8 %10 to i32
  %17 = add i8 %10, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %17)
  %18 = icmp ult i8 %17, -16
  %sub = add nsw i32 %conv22, -1
  %substream.1 = select i1 %18, i32 %substream.0193, i32 %sub
  call void @__sanitizer_cov_trace_const_cmp1(i8 -11, i8 %10)
  %cmp32.not = icmp eq i8 %10, -11
  br i1 %cmp32.not, label %if.then21.if.end60_crit_edge, label %if.then34

if.then21.if.end60_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then34:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %rstatus to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %rstatus, align 4
  br label %if.end60

if.else:                                          ; preds = %if.then16
  %20 = ptrtoint ptr %filemode48 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %filemode48, align 4
  %and37 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.else.if.end60_crit_edge, label %land.lhs.true39

if.else.if.end60_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

land.lhs.true39:                                  ; preds = %if.else
  %arrayidx = getelementptr %struct.snd_uart16550, ptr %uart, i32 0, i32 3, i32 %substream.0193
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %tobool40.not = icmp eq ptr %23, null
  br i1 %tobool40.not, label %land.lhs.true39.if.end60_crit_edge, label %if.then41

land.lhs.true39.if.end60_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then41:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #8
  %call44 = call i32 @snd_rawmidi_receive(ptr noundef nonnull %23, ptr noundef nonnull %c, i32 noundef 1) #6
  br label %if.end60

if.else47:                                        ; preds = %if.end
  %24 = ptrtoint ptr %filemode48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %filemode48, align 4
  %and49 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.else47.if.end60_crit_edge, label %land.lhs.true51

if.else47.if.end60_crit_edge:                     ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

land.lhs.true51:                                  ; preds = %if.else47
  %arrayidx53 = getelementptr %struct.snd_uart16550, ptr %uart, i32 0, i32 3, i32 %substream.0193
  %26 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx53, align 4
  %tobool54.not = icmp eq ptr %27, null
  br i1 %tobool54.not, label %land.lhs.true51.if.end60_crit_edge, label %if.then55

land.lhs.true51.if.end60_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then55:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #8
  %call58 = call i32 @snd_rawmidi_receive(ptr noundef nonnull %27, ptr noundef nonnull %c, i32 noundef 1) #6
  br label %if.end60

if.end60:                                         ; preds = %if.then55, %land.lhs.true51.if.end60_crit_edge, %if.else47.if.end60_crit_edge, %if.then41, %land.lhs.true39.if.end60_crit_edge, %if.else.if.end60_crit_edge, %if.then34, %if.then21.if.end60_crit_edge
  %substream.2 = phi i32 [ %substream.1, %if.then34 ], [ %substream.1, %if.then21.if.end60_crit_edge ], [ %substream.0193, %if.then41 ], [ %substream.0193, %land.lhs.true39.if.end60_crit_edge ], [ %substream.0193, %if.else.if.end60_crit_edge ], [ %substream.0193, %if.then55 ], [ %substream.0193, %land.lhs.true51.if.end60_crit_edge ], [ %substream.0193, %if.else47.if.end60_crit_edge ]
  %and62 = and i32 %conv194, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end60.if.end66_crit_edge, label %if.then64

if.end60.if.end66_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmidi, align 4
  %name = getelementptr inbounds %struct.snd_rawmidi, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %base, align 4
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 229, ptr noundef nonnull @.str.17, ptr noundef %name, i32 noundef %31) #6
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.end60.if.end66_crit_edge
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %base, align 4
  %add = add i32 %33, 5
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %34 = inttoptr i32 %add1 to ptr
  %35 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %34) #6, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !192
  %conv = zext i8 %35 to i32
  %and3 = and i32 %conv, 1
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.end66.while.end_crit_edge, label %if.end66.while.body_crit_edge

if.end66.while.body_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end66.while.end_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end66.while.end_crit_edge, %entry.while.end_crit_edge
  %substream.0.lcssa = phi i32 [ %2, %entry.while.end_crit_edge ], [ %substream.2, %if.end66.while.end_crit_edge ]
  %conv.lcssa = phi i32 [ %conv190, %entry.while.end_crit_edge ], [ %conv, %if.end66.while.end_crit_edge ]
  %36 = ptrtoint ptr %prev_in to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %substream.0.lcssa, ptr %prev_in, align 4
  %and69 = and i32 %conv.lcssa, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %while.end.if.end72_crit_edge, label %if.then71

while.end.if.end72_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then71:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %fifo_count = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 15
  %37 = ptrtoint ptr %fifo_count to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %fifo_count, align 2
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %while.end.if.end72_crit_edge
  %adaptor73 = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 16
  %38 = ptrtoint ptr %adaptor73 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %adaptor73, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %39, label %while.cond110.preheader [
    i32 2, label %if.end72.if.then79_crit_edge
    i32 4, label %if.end72.if.then79_crit_edge210
  ]

if.end72.if.then79_crit_edge210:                  ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then79

if.end72.if.then79_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then79

while.cond110.preheader:                          ; preds = %if.end72
  %buff_in_count117 = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 22
  %fifo_count111 = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 15
  %fifo_limit = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 14
  %41 = ptrtoint ptr %fifo_count111 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %fifo_count111, align 2
  %43 = ptrtoint ptr %fifo_limit to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %fifo_limit, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %42, i16 %44)
  %cmp114200 = icmp slt i16 %42, %44
  br i1 %cmp114200, label %land.rhs116.lr.ph, label %while.cond110.preheader.if.end123_crit_edge

while.cond110.preheader.if.end123_crit_edge:      ; preds = %while.cond110.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

land.rhs116.lr.ph:                                ; preds = %while.cond110.preheader
  %buff_out1.i174 = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 24
  %45 = ptrtoint ptr %buff_in_count117 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr = load i32, ptr %buff_in_count117, align 4
  br label %land.rhs116

if.then79:                                        ; preds = %if.end72.if.then79_crit_edge, %if.end72.if.then79_crit_edge210
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %base, align 4
  %add82 = add i32 %47, 6
  %and83 = and i32 %add82, 1048575
  %add84 = or i32 %and83, -18874368
  %48 = inttoptr i32 %add84 to ptr
  %49 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %48) #6, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !194
  %buff_in_count = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 22
  %fifo_count89 = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 15
  %50 = ptrtoint ptr %fifo_count89 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %fifo_count89, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %cmp91197 = icmp ne i16 %51, 0
  %52 = and i8 %49, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool96.not198 = icmp eq i8 %52, 0
  %or.cond171199 = select i1 %cmp91197, i1 true, i1 %tobool96.not198
  br i1 %or.cond171199, label %if.then79.if.end123_crit_edge, label %land.rhs.lr.ph

if.then79.if.end123_crit_edge:                    ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

land.rhs.lr.ph:                                   ; preds = %if.then79
  %buff_out1.i = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 24
  br label %land.rhs

land.rhs:                                         ; preds = %snd_uart16550_buffer_output.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %53 = ptrtoint ptr %buff_in_count to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %buff_in_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp97 = icmp sgt i32 %54, 0
  br i1 %cmp97, label %snd_uart16550_buffer_output.exit, label %land.rhs.if.end123_crit_edge

land.rhs.if.end123_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

snd_uart16550_buffer_output.exit:                 ; preds = %land.rhs
  %55 = ptrtoint ptr %buff_out1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %buff_out1.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !195
  call void @arm_heavy_mb() #6
  %idxprom.i = and i32 %56, 65535
  %arrayidx.i = getelementptr %struct.snd_uart16550, ptr %uart, i32 0, i32 21, i32 %idxprom.i
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i, align 1
  %59 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %base, align 4
  %and.i = and i32 %60, 1048575
  %add3.i = or i32 %and.i, -18874368
  %61 = inttoptr i32 %add3.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 %58) #6, !srcloc !182
  %62 = ptrtoint ptr %fifo_count89 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %fifo_count89, align 2
  %inc.i = add i16 %63, 1
  store i16 %inc.i, ptr %fifo_count89, align 2
  %64 = add i32 %56, 1
  %conv7.i = and i32 %64, 32767
  %65 = ptrtoint ptr %buff_out1.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv7.i, ptr %buff_out1.i, align 4
  %66 = ptrtoint ptr %buff_in_count to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %buff_in_count, align 4
  %dec.i = add i32 %67, -1
  store i32 %dec.i, ptr %buff_in_count, align 4
  %68 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %base, align 4
  %add102 = add i32 %69, 6
  %and103 = and i32 %add102, 1048575
  %add104 = or i32 %and103, -18874368
  %70 = inttoptr i32 %add104 to ptr
  %71 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %70) #6, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !196
  %72 = ptrtoint ptr %fifo_count89 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %fifo_count89, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %cmp91 = icmp ne i16 %73, 0
  %74 = and i8 %71, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool96.not = icmp eq i8 %74, 0
  %or.cond171 = select i1 %cmp91, i1 true, i1 %tobool96.not
  br i1 %or.cond171, label %snd_uart16550_buffer_output.exit.if.end123_crit_edge, label %snd_uart16550_buffer_output.exit.land.rhs_crit_edge

snd_uart16550_buffer_output.exit.land.rhs_crit_edge: ; preds = %snd_uart16550_buffer_output.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

snd_uart16550_buffer_output.exit.if.end123_crit_edge: ; preds = %snd_uart16550_buffer_output.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

land.rhs116:                                      ; preds = %snd_uart16550_buffer_output.exit185.land.rhs116_crit_edge, %land.rhs116.lr.ph
  %75 = phi i32 [ %.pr, %land.rhs116.lr.ph ], [ %dec.i183, %snd_uart16550_buffer_output.exit185.land.rhs116_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp118 = icmp sgt i32 %75, 0
  br i1 %cmp118, label %snd_uart16550_buffer_output.exit185, label %land.rhs116.if.end123_crit_edge

land.rhs116.if.end123_crit_edge:                  ; preds = %land.rhs116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

snd_uart16550_buffer_output.exit185:              ; preds = %land.rhs116
  %76 = ptrtoint ptr %buff_out1.i174 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %buff_out1.i174, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !195
  call void @arm_heavy_mb() #6
  %idxprom.i175 = and i32 %77, 65535
  %arrayidx.i176 = getelementptr %struct.snd_uart16550, ptr %uart, i32 0, i32 21, i32 %idxprom.i175
  %78 = ptrtoint ptr %arrayidx.i176 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.i176, align 1
  %80 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %base, align 4
  %and.i178 = and i32 %81, 1048575
  %add3.i179 = or i32 %and.i178, -18874368
  %82 = inttoptr i32 %add3.i179 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %82, i8 %79) #6, !srcloc !182
  %83 = ptrtoint ptr %fifo_count111 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %fifo_count111, align 2
  %inc.i181 = add i16 %84, 1
  store i16 %inc.i181, ptr %fifo_count111, align 2
  %85 = add i32 %77, 1
  %conv7.i182 = and i32 %85, 32767
  %86 = ptrtoint ptr %buff_out1.i174 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %conv7.i182, ptr %buff_out1.i174, align 4
  %87 = ptrtoint ptr %buff_in_count117 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %buff_in_count117, align 4
  %dec.i183 = add i32 %88, -1
  store i32 %dec.i183, ptr %buff_in_count117, align 4
  %89 = ptrtoint ptr %fifo_limit to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %fifo_limit, align 4
  %cmp114 = icmp slt i16 %inc.i181, %90
  br i1 %cmp114, label %snd_uart16550_buffer_output.exit185.land.rhs116_crit_edge, label %snd_uart16550_buffer_output.exit185.if.end123_crit_edge

snd_uart16550_buffer_output.exit185.if.end123_crit_edge: ; preds = %snd_uart16550_buffer_output.exit185
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

snd_uart16550_buffer_output.exit185.land.rhs116_crit_edge: ; preds = %snd_uart16550_buffer_output.exit185
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs116

if.end123:                                        ; preds = %snd_uart16550_buffer_output.exit185.if.end123_crit_edge, %land.rhs116.if.end123_crit_edge, %snd_uart16550_buffer_output.exit.if.end123_crit_edge, %land.rhs.if.end123_crit_edge, %if.then79.if.end123_crit_edge, %while.cond110.preheader.if.end123_crit_edge
  %irq = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 6
  %91 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp124 = icmp slt i32 %92, 0
  br i1 %cmp124, label %land.lhs.true126, label %if.end123.if.end131_crit_edge

if.end123.if.end131_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131

land.lhs.true126:                                 ; preds = %if.end123
  %buff_in_count127 = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 22
  %93 = ptrtoint ptr %buff_in_count127 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %buff_in_count127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp128 = icmp sgt i32 %94, 0
  br i1 %cmp128, label %if.then130, label %land.lhs.true126.if.end131_crit_edge

land.lhs.true126.if.end131_crit_edge:             ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131

if.then130:                                       ; preds = %land.lhs.true126
  %timer_running.i = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 26
  %95 = ptrtoint ptr %timer_running.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %bf.load.i = load i8, ptr %timer_running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then.i, label %if.then130.if.end131_crit_edge

if.then130.if.end131_crit_edge:                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131

if.then.i:                                        ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #8
  %buffer_timer.i = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %96 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %96, 1
  %call.i = call i32 @mod_timer(ptr noundef %buffer_timer.i, i32 noundef %add.i) #6
  %97 = ptrtoint ptr %timer_running.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %bf.load2.i = load i8, ptr %timer_running.i, align 4
  %bf.set.i = or i8 %bf.load2.i, -128
  store i8 %bf.set.i, ptr %timer_running.i, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.then.i, %if.then130.if.end131_crit_edge, %land.lhs.true126.if.end131_crit_edge, %if.end123.if.end131_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_receive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_rawmidi_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_uart16550_input_open(ptr noundef %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %open_lock = getelementptr inbounds %struct.snd_uart16550, ptr %3, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %open_lock) #6
  %filemode = getelementptr inbounds %struct.snd_uart16550, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %filemode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %filemode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5 = icmp eq i32 %5, 0
  br i1 %cmp5, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @snd_uart16550_do_open(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %filemode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %filemode, align 4
  %or = or i32 %7, 1
  store i32 %or, ptr %filemode, align 4
  %number = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 2
  %8 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %number, align 4
  %arrayidx = getelementptr %struct.snd_uart16550, ptr %3, i32 0, i32 3, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %substream, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %open_lock, i32 noundef %call2) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_uart16550_input_close(ptr nocapture noundef readonly %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %open_lock = getelementptr inbounds %struct.snd_uart16550, ptr %3, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %open_lock) #6
  %filemode = getelementptr inbounds %struct.snd_uart16550, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %filemode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %filemode, align 4
  %and = and i32 %5, -2
  store i32 %and, ptr %filemode, align 4
  %number = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 2
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number, align 4
  %arrayidx = getelementptr %struct.snd_uart16550, ptr %3, i32 0, i32 3, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx, align 4
  %9 = load i32, ptr %filemode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp6 = icmp eq i32 %9, 0
  br i1 %cmp6, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @snd_uart16550_do_close(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %open_lock, i32 noundef %call2) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_uart16550_input_trigger(ptr nocapture noundef readonly %substream, i32 noundef %up) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %open_lock = getelementptr inbounds %struct.snd_uart16550, ptr %3, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %open_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp eq i32 %up, 0
  %filemode5 = getelementptr inbounds %struct.snd_uart16550, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %filemode5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %filemode5, align 4
  %and = and i32 %5, -5
  %masksel = select i1 %tobool.not, i32 0, i32 4
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %filemode5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %open_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_uart16550_do_open(ptr nocapture noundef %uart) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %buff_in_count = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 22
  %0 = ptrtoint ptr %buff_in_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %buff_in_count, align 4
  %buff_in = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 23
  %1 = ptrtoint ptr %buff_in to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %buff_in, align 4
  %buff_out = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 24
  %2 = ptrtoint ptr %buff_out to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %buff_out, align 4
  %fifo_limit = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 14
  %3 = ptrtoint ptr %fifo_limit to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 1, ptr %fifo_limit, align 4
  %fifo_count = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 15
  %4 = ptrtoint ptr %fifo_count to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %fifo_count, align 2
  %timer_running = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 26
  %5 = ptrtoint ptr %timer_running to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %timer_running, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %timer_running, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !197
  tail call void @arm_heavy_mb() #6
  %base = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 7
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base, align 4
  %add = add i32 %7, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %8 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 71) #6, !srcloc !182
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base, align 4
  %add3 = add i32 %10, 2
  %and4 = and i32 %add3, 1048575
  %add5 = or i32 %and4, -18874368
  %11 = inttoptr i32 %add5 to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #6, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !198
  %13 = and i8 %12, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %13)
  %cmp = icmp eq i8 %13, -64
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %fifo_limit to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 16, ptr %fifo_limit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %divisor = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 10
  %15 = ptrtoint ptr %divisor to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %divisor, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp12.not = icmp eq i8 %16, 0
  br i1 %cmp12.not, label %if.end.do.body65_crit_edge, label %if.then14

if.end.do.body65_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body65

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base, align 4
  %add17 = add i32 %18, 3
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %19 = inttoptr i32 %add19 to ptr
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #6, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !199
  %old_line_ctrl_reg = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 13
  %21 = ptrtoint ptr %old_line_ctrl_reg to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %old_line_ctrl_reg, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !200
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base, align 4
  %add27 = add i32 %23, 3
  %and28 = and i32 %add27, 1048575
  %add29 = or i32 %and28, -18874368
  %24 = inttoptr i32 %add29 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 -128) #6, !srcloc !182
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %base, align 4
  %and34 = and i32 %26, 1048575
  %add35 = or i32 %and34, -18874368
  %27 = inttoptr i32 %add35 to ptr
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #6, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !201
  %old_divisor_lsb = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 11
  %29 = ptrtoint ptr %old_divisor_lsb to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %old_divisor_lsb, align 1
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %base, align 4
  %add41 = add i32 %31, 1
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %32 = inttoptr i32 %add43 to ptr
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %32) #6, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !202
  %old_divisor_msb = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 12
  %34 = ptrtoint ptr %old_divisor_msb to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %old_divisor_msb, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !203
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %divisor to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %divisor, align 4
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %base, align 4
  %and53 = and i32 %38, 1048575
  %add54 = or i32 %and53, -18874368
  %39 = inttoptr i32 %add54 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 %36) #6, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !204
  tail call void @arm_heavy_mb() #6
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %base, align 4
  %add60 = add i32 %41, 1
  %and61 = and i32 %add60, 1048575
  %add62 = or i32 %and61, -18874368
  %42 = inttoptr i32 %add62 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 0) #6, !srcloc !182
  br label %do.body65

do.body65:                                        ; preds = %if.then14, %if.end.do.body65_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !205
  tail call void @arm_heavy_mb() #6
  %43 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %base, align 4
  %add69 = add i32 %44, 3
  %and70 = and i32 %add69, 1048575
  %add71 = or i32 %and70, -18874368
  %45 = inttoptr i32 %add71 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 3) #6, !srcloc !182
  %adaptor = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 16
  %46 = ptrtoint ptr %adaptor to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %adaptor, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %47, label %do.body73 [
    i32 2, label %do.body65.do.body81_crit_edge
    i32 3, label %do.body65.do.body81_crit_edge179
    i32 1, label %do.body90
  ]

do.body65.do.body81_crit_edge179:                 ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body81

do.body65.do.body81_crit_edge:                    ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body81

do.body73:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !206
  tail call void @arm_heavy_mb() #6
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %base, align 4
  %add77 = add i32 %50, 4
  %and78 = and i32 %add77, 1048575
  %add79 = or i32 %and78, -18874368
  %51 = inttoptr i32 %add79 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 11) #6, !srcloc !182
  br label %sw.epilog

do.body81:                                        ; preds = %do.body65.do.body81_crit_edge, %do.body65.do.body81_crit_edge179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !207
  tail call void @arm_heavy_mb() #6
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %base, align 4
  %add85 = add i32 %53, 4
  %and86 = and i32 %add85, 1048575
  %add87 = or i32 %and86, -18874368
  %54 = inttoptr i32 %add87 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 10) #6, !srcloc !182
  br label %sw.epilog

do.body90:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  tail call void @arm_heavy_mb() #6
  %55 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %base, align 4
  %add94 = add i32 %56, 4
  %and95 = and i32 %add94, 1048575
  %add96 = or i32 %and95, -18874368
  %57 = inttoptr i32 %add96 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 11) #6, !srcloc !182
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body90, %do.body81, %do.body73
  %irq = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 6
  %58 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp98 = icmp slt i32 %59, 0
  br i1 %cmp98, label %sw.epilog.do.body114_crit_edge, label %if.else

sw.epilog.do.body114_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body114

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %adaptor to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %adaptor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %61)
  %switch.selectcmp = icmp eq i32 %61, 4
  %switch.select = select i1 %switch.selectcmp, i8 11, i8 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %switch.selectcmp177 = icmp eq i32 %61, 2
  %switch.select178 = select i1 %switch.selectcmp177, i8 9, i8 %switch.select
  br label %do.body114

do.body114:                                       ; preds = %if.else, %sw.epilog.do.body114_crit_edge
  %byte.0 = phi i8 [ 0, %sw.epilog.do.body114_crit_edge ], [ %switch.select178, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %62 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %base, align 4
  %add118 = add i32 %63, 1
  %and119 = and i32 %add118, 1048575
  %add120 = or i32 %and119, -18874368
  %64 = inttoptr i32 %add120 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %64, i8 %byte.0) #6, !srcloc !182
  %65 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %base, align 4
  %add124 = add i32 %66, 5
  %and125 = and i32 %add124, 1048575
  %add126 = or i32 %and125, -18874368
  %67 = inttoptr i32 %add126 to ptr
  %68 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %67) #6, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  %69 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %base, align 4
  %add132 = add i32 %70, 2
  %and133 = and i32 %add132, 1048575
  %add134 = or i32 %and133, -18874368
  %71 = inttoptr i32 %add134 to ptr
  %72 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %71) #6, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !211
  %73 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %base, align 4
  %and141 = and i32 %74, 1048575
  %add142 = or i32 %and141, -18874368
  %75 = inttoptr i32 %add142 to ptr
  %76 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %75) #6, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_uart16550_do_close(ptr noundef %uart) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 6
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %entry
  %timer_running.i = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 26
  %2 = ptrtoint ptr %timer_running.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %timer_running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then.do.body_crit_edge, label %if.then.i

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %buffer_timer.i = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 27
  %call.i = tail call i32 @del_timer(ptr noundef %buffer_timer.i) #6
  %3 = ptrtoint ptr %timer_running.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load2.i = load i8, ptr %timer_running.i, align 4
  %bf.clear.i = and i8 %bf.load2.i, 127
  store i8 %bf.clear.i, ptr %timer_running.i, align 4
  br label %do.body

do.body:                                          ; preds = %if.then.i, %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !213
  tail call void @arm_heavy_mb() #6
  %base = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 7
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base, align 4
  %add = add i32 %5, 1
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %6 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 0) #6, !srcloc !182
  %adaptor = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 16
  %7 = ptrtoint ptr %adaptor to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %adaptor, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %8, label %do.body2 [
    i32 2, label %do.body.do.body9_crit_edge
    i32 3, label %do.body.do.body9_crit_edge77
    i32 1, label %do.body17
  ]

do.body.do.body9_crit_edge77:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body9

do.body.do.body9_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body9

do.body2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !214
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base, align 4
  %add5 = add i32 %11, 4
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %12 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 0) #6, !srcloc !182
  br label %sw.epilog

do.body9:                                         ; preds = %do.body.do.body9_crit_edge, %do.body.do.body9_crit_edge77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !215
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base, align 4
  %add12 = add i32 %14, 4
  %and13 = and i32 %add12, 1048575
  %add14 = or i32 %and13, -18874368
  %15 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 2) #6, !srcloc !182
  br label %sw.epilog

do.body17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !216
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base, align 4
  %add20 = add i32 %17, 4
  %and21 = and i32 %add20, 1048575
  %add22 = or i32 %and21, -18874368
  %18 = inttoptr i32 %add22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 3) #6, !srcloc !182
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body17, %do.body9, %do.body2
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %base, align 4
  %add25 = add i32 %20, 2
  %and26 = and i32 %add25, 1048575
  %add27 = or i32 %and26, -18874368
  %21 = inttoptr i32 %add27 to ptr
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #6, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !217
  %divisor = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 10
  %23 = ptrtoint ptr %divisor to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %divisor, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp30.not = icmp eq i8 %24, 0
  br i1 %cmp30.not, label %sw.epilog.if.end61_crit_edge, label %do.body33

sw.epilog.if.end61_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

do.body33:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !218
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %base, align 4
  %add36 = add i32 %26, 3
  %and37 = and i32 %add36, 1048575
  %add38 = or i32 %and37, -18874368
  %27 = inttoptr i32 %add38 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 -128) #6, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !219
  tail call void @arm_heavy_mb() #6
  %old_divisor_lsb = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 11
  %28 = ptrtoint ptr %old_divisor_lsb to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %old_divisor_lsb, align 1
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %base, align 4
  %and44 = and i32 %31, 1048575
  %add45 = or i32 %and44, -18874368
  %32 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %29) #6, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !220
  tail call void @arm_heavy_mb() #6
  %old_divisor_msb = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 12
  %33 = ptrtoint ptr %old_divisor_msb to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %old_divisor_msb, align 2
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %base, align 4
  %add50 = add i32 %36, 1
  %and51 = and i32 %add50, 1048575
  %add52 = or i32 %and51, -18874368
  %37 = inttoptr i32 %add52 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %34) #6, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  tail call void @arm_heavy_mb() #6
  %old_line_ctrl_reg = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 13
  %38 = ptrtoint ptr %old_line_ctrl_reg to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %old_line_ctrl_reg, align 1
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %base, align 4
  %add57 = add i32 %41, 3
  %and58 = and i32 %add57, 1048575
  %add59 = or i32 %and58, -18874368
  %42 = inttoptr i32 %add59 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %39) #6, !srcloc !182
  br label %if.end61

if.end61:                                         ; preds = %do.body33, %sw.epilog.if.end61_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_uart16550_output_open(ptr noundef %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %open_lock = getelementptr inbounds %struct.snd_uart16550, ptr %3, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %open_lock) #6
  %filemode = getelementptr inbounds %struct.snd_uart16550, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %filemode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %filemode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5 = icmp eq i32 %5, 0
  br i1 %cmp5, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @snd_uart16550_do_open(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %filemode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %filemode, align 4
  %or = or i32 %7, 2
  store i32 %or, ptr %filemode, align 4
  %number = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 2
  %8 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %number, align 4
  %arrayidx = getelementptr %struct.snd_uart16550, ptr %3, i32 0, i32 2, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %substream, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %open_lock, i32 noundef %call2) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_uart16550_output_close(ptr nocapture noundef readonly %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %open_lock = getelementptr inbounds %struct.snd_uart16550, ptr %3, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %open_lock) #6
  %filemode = getelementptr inbounds %struct.snd_uart16550, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %filemode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %filemode, align 4
  %and = and i32 %5, -3
  store i32 %and, ptr %filemode, align 4
  %number = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 2
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number, align 4
  %arrayidx = getelementptr %struct.snd_uart16550, ptr %3, i32 0, i32 2, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx, align 4
  %9 = load i32, ptr %filemode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp6 = icmp eq i32 %9, 0
  br i1 %cmp6, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @snd_uart16550_do_close(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %open_lock, i32 noundef %call2) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_uart16550_output_trigger(ptr noundef %substream, i32 noundef %up) #1 align 64 {
entry:
  %midi_byte.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %open_lock = getelementptr inbounds %struct.snd_uart16550, ptr %3, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %open_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp eq i32 %up, 0
  %filemode5 = getelementptr inbounds %struct.snd_uart16550, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %filemode5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %filemode5, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %or = or i32 %5, 8
  %6 = ptrtoint ptr %filemode5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %filemode5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %open_lock, i32 noundef %call2) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %midi_byte.i) #6
  %7 = ptrtoint ptr %midi_byte.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %midi_byte.i, align 1, !annotation !180
  %8 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmidi, align 4
  %private_data.i = getelementptr inbounds %struct.snd_rawmidi, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data.i, align 4
  %open_lock.i = getelementptr inbounds %struct.snd_uart16550, ptr %11, i32 0, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %open_lock.i) #6
  %irq.i = getelementptr inbounds %struct.snd_uart16550, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp5.i = icmp slt i32 %13, 0
  br i1 %cmp5.i, label %if.then.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @snd_uart16550_io_loop(ptr noundef %11) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %adaptor.i = getelementptr inbounds %struct.snd_uart16550, ptr %11, i32 0, i32 16
  %14 = ptrtoint ptr %adaptor.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %adaptor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp7.i = icmp eq i32 %15, 3
  br i1 %cmp7.i, label %while.cond.preheader.i, label %while.cond27.preheader.i

while.cond27.preheader.i:                         ; preds = %if.end.i
  %drop_on_full.i = getelementptr inbounds %struct.snd_uart16550, ptr %11, i32 0, i32 25
  %call28135.i = call i32 @snd_rawmidi_transmit_peek(ptr noundef %substream, ptr noundef nonnull %midi_byte.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call28135.i)
  %cmp29136.i = icmp eq i32 %call28135.i, 1
  br i1 %cmp29136.i, label %while.body31.lr.ph.i, label %while.cond27.preheader.i.while.end95.i_crit_edge

while.cond27.preheader.i.while.end95.i_crit_edge: ; preds = %while.cond27.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end95.i

while.body31.lr.ph.i:                             ; preds = %while.cond27.preheader.i
  %prev_out.i = getelementptr inbounds %struct.snd_uart16550, ptr %11, i32 0, i32 19
  %buff_in_count.i.i = getelementptr inbounds %struct.snd_uart16550, ptr %11, i32 0, i32 22
  %16 = ptrtoint ptr %adaptor.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %adaptor.i, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %17, label %while.body31.lr.ph.i.if.end74.i.preheader_crit_edge [
    i32 0, label %while.body31.lr.ph.i.land.lhs.true41.i_crit_edge
    i32 4, label %while.body31.lr.ph.i.land.lhs.true41.i_crit_edge15
  ]

while.body31.lr.ph.i.land.lhs.true41.i_crit_edge15: ; preds = %while.body31.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true41.i

while.body31.lr.ph.i.land.lhs.true41.i_crit_edge: ; preds = %while.body31.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true41.i

while.body31.lr.ph.i.if.end74.i.preheader_crit_edge: ; preds = %while.body31.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74.i.preheader

while.cond.preheader.i:                           ; preds = %if.end.i
  %buff_in_count.i = getelementptr inbounds %struct.snd_uart16550, ptr %11, i32 0, i32 22
  %19 = ptrtoint ptr %buff_in_count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buff_in_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32766, i32 %20)
  %cmp10138.i = icmp sgt i32 %20, 32766
  br i1 %cmp10138.i, label %while.cond.preheader.i.snd_uart16550_output_write.exit_crit_edge, label %if.end13.lr.ph.i

while.cond.preheader.i.snd_uart16550_output_write.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_uart16550_output_write.exit

if.end13.lr.ph.i:                                 ; preds = %while.cond.preheader.i
  %number.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 2
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end18.i.if.end13.i_crit_edge, %if.end13.lr.ph.i
  %call14.i = call i32 @snd_rawmidi_transmit(ptr noundef %substream, ptr noundef nonnull %midi_byte.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14.i)
  %cmp15.not.i = icmp eq i32 %call14.i, 1
  br i1 %cmp15.not.i, label %if.end18.i, label %if.end13.i.snd_uart16550_output_write.exit_crit_edge

if.end13.i.snd_uart16550_output_write.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_uart16550_output_write.exit

if.end18.i:                                       ; preds = %if.end13.i
  %21 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %number.i, align 4
  %.tr.i = trunc i32 %22 to i8
  %23 = shl i8 %.tr.i, 4
  %conv19.i = or i8 %23, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv19.i)
  %cmp21.i = icmp eq i8 %conv19.i, 8
  %spec.store.select.i = select i1 %cmp21.i, i8 -8, i8 %conv19.i
  %24 = call fastcc i32 @snd_uart16550_output_byte(ptr noundef %11, i8 noundef zeroext %spec.store.select.i) #6
  %25 = ptrtoint ptr %midi_byte.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %midi_byte.i, align 1
  %27 = call fastcc i32 @snd_uart16550_output_byte(ptr noundef %11, i8 noundef zeroext %26) #6
  %28 = ptrtoint ptr %buff_in_count.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %buff_in_count.i, align 4
  %cmp10.i = icmp sgt i32 %29, 32766
  br i1 %cmp10.i, label %if.end18.i.snd_uart16550_output_write.exit_crit_edge, label %if.end18.i.if.end13.i_crit_edge

if.end18.i.if.end13.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.end18.i.snd_uart16550_output_write.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_uart16550_output_write.exit

land.lhs.true41.i:                                ; preds = %while.body31.lr.ph.i.land.lhs.true41.i_crit_edge, %while.body31.lr.ph.i.land.lhs.true41.i_crit_edge15
  %number42.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 2
  %30 = ptrtoint ptr %prev_out.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %prev_out.i, align 4
  %32 = ptrtoint ptr %number42.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %number42.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp43.not.i = icmp eq i32 %31, %33
  br i1 %cmp43.not.i, label %lor.lhs.false45.i, label %land.lhs.true41.i.if.then48.i_crit_edge

land.lhs.true41.i.if.then48.i_crit_edge:          ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then48.i

lor.lhs.false45.i:                                ; preds = %land.lhs.true41.i
  %34 = load i32, ptr @snd_uart16550_output_write.lasttime, align 4
  %add.i = add i32 %34, 300
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp46.i = icmp slt i32 %sub.i, 0
  br i1 %cmp46.i, label %lor.lhs.false45.i.if.then48.i_crit_edge, label %lor.lhs.false45.i.if.end74.i.preheader_crit_edge

lor.lhs.false45.i.if.end74.i.preheader_crit_edge: ; preds = %lor.lhs.false45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74.i.preheader

lor.lhs.false45.i.if.then48.i_crit_edge:          ; preds = %lor.lhs.false45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then48.i

if.then48.i:                                      ; preds = %lor.lhs.false45.i.if.then48.i_crit_edge, %land.lhs.true41.i.if.then48.i_crit_edge
  %36 = ptrtoint ptr %buff_in_count.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buff_in_count.i.i, align 4
  %add.i.i = add i32 %37, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %add.i.i)
  %cmp.i.i = icmp sgt i32 %add.i.i, 32767
  br i1 %cmp.i.i, label %if.else69.i, label %if.then50.i

if.then50.i:                                      ; preds = %if.then48.i
  %38 = ptrtoint ptr %prev_out.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %33, ptr %prev_out.i, align 4
  %39 = call fastcc i32 @snd_uart16550_output_byte(ptr noundef %11, i8 noundef zeroext -11) #6
  %40 = ptrtoint ptr %prev_out.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %prev_out.i, align 4
  %42 = trunc i32 %41 to i8
  %conv56.i = add i8 %42, 1
  %43 = call fastcc i32 @snd_uart16550_output_byte(ptr noundef %11, i8 noundef zeroext %conv56.i) #6
  %44 = ptrtoint ptr %midi_byte.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %midi_byte.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %45)
  %cmp59.i = icmp sgt i8 %45, -1
  br i1 %cmp59.i, label %land.lhs.true61.i, label %if.then50.i.if.end74.i.preheader_crit_edge

if.then50.i.if.end74.i.preheader_crit_edge:       ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74.i.preheader

land.lhs.true61.i:                                ; preds = %if.then50.i
  %46 = ptrtoint ptr %adaptor.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %adaptor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp63.i = icmp eq i32 %47, 0
  br i1 %cmp63.i, label %if.then65.i, label %land.lhs.true61.i.if.end74.i.preheader_crit_edge

land.lhs.true61.i.if.end74.i.preheader_crit_edge: ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74.i.preheader

if.then65.i:                                      ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %prev_out.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %prev_out.i, align 4
  %arrayidx.i = getelementptr %struct.snd_uart16550, ptr %11, i32 0, i32 20, i32 %49
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i, align 1
  %52 = call fastcc i32 @snd_uart16550_output_byte(ptr noundef %11, i8 noundef zeroext %51) #6
  br label %if.end74.i.preheader

if.else69.i:                                      ; preds = %if.then48.i
  %53 = ptrtoint ptr %drop_on_full.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %drop_on_full.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool70.not.i = icmp eq i32 %54, 0
  br i1 %tobool70.not.i, label %if.else69.i.while.end95.i_crit_edge, label %if.else69.i.if.end74.i.preheader_crit_edge

if.else69.i.if.end74.i.preheader_crit_edge:       ; preds = %if.else69.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74.i.preheader

if.else69.i.while.end95.i_crit_edge:              ; preds = %if.else69.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end95.i

if.end74.i.preheader:                             ; preds = %if.else69.i.if.end74.i.preheader_crit_edge, %if.then65.i, %land.lhs.true61.i.if.end74.i.preheader_crit_edge, %if.then50.i.if.end74.i.preheader_crit_edge, %lor.lhs.false45.i.if.end74.i.preheader_crit_edge, %while.body31.lr.ph.i.if.end74.i.preheader_crit_edge
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.end93.i.if.end74.i_crit_edge, %if.end74.i.preheader
  %55 = ptrtoint ptr %midi_byte.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %midi_byte.i, align 1
  %call75.i = call fastcc i32 @snd_uart16550_output_byte(ptr noundef %11, i8 noundef zeroext %56) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %tobool76.not.i = icmp eq i32 %call75.i, 0
  br i1 %tobool76.not.i, label %land.lhs.true77.i, label %if.end74.i.if.end81.i_crit_edge

if.end74.i.if.end81.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81.i

land.lhs.true77.i:                                ; preds = %if.end74.i
  %57 = ptrtoint ptr %drop_on_full.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %drop_on_full.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool79.not.i = icmp eq i32 %58, 0
  br i1 %tobool79.not.i, label %land.lhs.true77.i.while.end95.i_crit_edge, label %land.lhs.true77.i.if.end81.i_crit_edge

land.lhs.true77.i.if.end81.i_crit_edge:           ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81.i

land.lhs.true77.i.while.end95.i_crit_edge:        ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end95.i

if.end81.i:                                       ; preds = %land.lhs.true77.i.if.end81.i_crit_edge, %if.end74.i.if.end81.i_crit_edge
  %59 = ptrtoint ptr %midi_byte.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %midi_byte.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %60)
  %61 = icmp slt i8 %60, -16
  br i1 %61, label %if.then89.i, label %if.end81.i.if.end93.i_crit_edge

if.end81.i.if.end93.i_crit_edge:                  ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93.i

if.then89.i:                                      ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %prev_out.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %prev_out.i, align 4
  %arrayidx92.i = getelementptr %struct.snd_uart16550, ptr %11, i32 0, i32 20, i32 %63
  %64 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %60, ptr %arrayidx92.i, align 1
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.then89.i, %if.end81.i.if.end93.i_crit_edge
  %call94.i = call i32 @snd_rawmidi_transmit_ack(ptr noundef %substream, i32 noundef 1) #6
  %call28.i = call i32 @snd_rawmidi_transmit_peek(ptr noundef %substream, ptr noundef nonnull %midi_byte.i, i32 noundef 1) #6
  %cmp29.i = icmp eq i32 %call28.i, 1
  br i1 %cmp29.i, label %if.end93.i.if.end74.i_crit_edge, label %if.end93.i.while.end95.i_crit_edge

if.end93.i.while.end95.i_crit_edge:               ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end95.i

if.end93.i.if.end74.i_crit_edge:                  ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74.i

while.end95.i:                                    ; preds = %if.end93.i.while.end95.i_crit_edge, %land.lhs.true77.i.while.end95.i_crit_edge, %if.else69.i.while.end95.i_crit_edge, %while.cond27.preheader.i.while.end95.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %65 = load volatile i32, ptr @jiffies, align 128
  store i32 %65, ptr @snd_uart16550_output_write.lasttime, align 4
  br label %snd_uart16550_output_write.exit

snd_uart16550_output_write.exit:                  ; preds = %while.end95.i, %if.end18.i.snd_uart16550_output_write.exit_crit_edge, %if.end13.i.snd_uart16550_output_write.exit_crit_edge, %while.cond.preheader.i.snd_uart16550_output_write.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %open_lock.i, i32 noundef %call2.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %midi_byte.i) #6
  br label %if.end9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %5, -9
  %66 = ptrtoint ptr %filemode5 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %and, ptr %filemode5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %open_lock, i32 noundef %call2) #6
  br label %if.end9

if.end9:                                          ; preds = %if.else, %snd_uart16550_output_write.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_uart16550_output_byte(ptr noundef %uart, i8 noundef zeroext %midi_byte) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %buff_in_count = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 22
  %0 = ptrtoint ptr %buff_in_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buff_in_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.else48_crit_edge

entry.if.else48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else48

land.lhs.true:                                    ; preds = %entry
  %adaptor = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 16
  %2 = ptrtoint ptr %adaptor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %adaptor, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %3, label %land.lhs.true.if.then_crit_edge [
    i32 2, label %land.lhs.true.lor.lhs.false_crit_edge
    i32 4, label %land.lhs.true.lor.lhs.false_crit_edge25
  ]

land.lhs.true.lor.lhs.false_crit_edge25:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %land.lhs.true.lor.lhs.false_crit_edge25
  %fifo_count = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 15
  %5 = ptrtoint ptr %fifo_count to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %fifo_count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp5 = icmp eq i16 %6, 0
  br i1 %cmp5, label %land.lhs.true7, label %lor.lhs.false.if.else48thread-pre-split_crit_edge

lor.lhs.false.if.else48thread-pre-split_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else48thread-pre-split

land.lhs.true7:                                   ; preds = %lor.lhs.false
  %base = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 7
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base, align 4
  %add = add i32 %8, 6
  %and = and i32 %add, 1048575
  %add8 = or i32 %and, -18874368
  %9 = inttoptr i32 %add8 to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #6, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  %11 = and i8 %10, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %land.lhs.true7.if.else48thread-pre-split_crit_edge, label %land.lhs.true7.if.then_crit_edge

land.lhs.true7.if.then_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.lhs.true7.if.else48thread-pre-split_crit_edge: ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else48thread-pre-split

if.then:                                          ; preds = %land.lhs.true7.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %base13 = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 7
  %12 = ptrtoint ptr %base13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base13, align 4
  %add14 = add i32 %13, 5
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %14 = inttoptr i32 %add16 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #6, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !223
  %16 = and i8 %15, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp22.not = icmp eq i8 %16, 0
  %fifo_count31 = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 15
  br i1 %cmp22.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %fifo_count31 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %fifo_count31, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !224
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %base13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base13, align 4
  %and28 = and i32 %19, 1048575
  %add29 = or i32 %and28, -18874368
  %20 = inttoptr i32 %add29 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %midi_byte) #6, !srcloc !182
  br label %return

if.else:                                          ; preds = %if.then
  %21 = ptrtoint ptr %fifo_count31 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %fifo_count31, align 2
  %fifo_limit = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 14
  %23 = ptrtoint ptr %fifo_limit to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %fifo_limit, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %24)
  %cmp34 = icmp slt i16 %22, %24
  br i1 %cmp34, label %if.then36, label %if.else45

if.then36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add nsw i16 %22, 1
  %25 = ptrtoint ptr %fifo_count31 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %inc, ptr %fifo_count31, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !225
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %base13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %base13, align 4
  %and42 = and i32 %27, 1048575
  %add43 = or i32 %and42, -18874368
  %28 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %midi_byte) #6, !srcloc !182
  br label %return

if.else45:                                        ; preds = %if.else
  %29 = ptrtoint ptr %buff_in_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buff_in_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %30)
  %cmp.i = icmp slt i32 %30, 32768
  br i1 %cmp.i, label %if.then.i, label %if.else45.return_crit_edge

if.else45.return_crit_edge:                       ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then.i:                                        ; preds = %if.else45
  %buff_in1.i = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 23
  %31 = ptrtoint ptr %buff_in1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buff_in1.i, align 4
  %idxprom.i = and i32 %32, 65535
  %arrayidx.i = getelementptr %struct.snd_uart16550, ptr %uart, i32 0, i32 21, i32 %idxprom.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %midi_byte, ptr %arrayidx.i, align 1
  %34 = add i32 %32, 1
  %conv4.i = and i32 %34, 32767
  store i32 %conv4.i, ptr %buff_in1.i, align 4
  %35 = ptrtoint ptr %buff_in_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %buff_in_count, align 4
  %inc8.i = add i32 %36, 1
  store i32 %inc8.i, ptr %buff_in_count, align 4
  %irq.i = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 6
  %37 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp9.i = icmp slt i32 %38, 0
  br i1 %cmp9.i, label %if.then11.i, label %if.then.i.return_crit_edge

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then11.i:                                      ; preds = %if.then.i
  %timer_running.i.i = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 26
  %39 = ptrtoint ptr %timer_running.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.i.i = load i8, ptr %timer_running.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then11.i.return_crit_edge

if.then11.i.return_crit_edge:                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then.i.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  %buffer_timer.i.i = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %40, 1
  %call.i.i = tail call i32 @mod_timer(ptr noundef %buffer_timer.i.i, i32 noundef %add.i.i) #6
  %41 = ptrtoint ptr %timer_running.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load2.i.i = load i8, ptr %timer_running.i.i, align 4
  %bf.set.i.i = or i8 %bf.load2.i.i, -128
  store i8 %bf.set.i.i, ptr %timer_running.i.i, align 4
  br label %return

if.else48thread-pre-split:                        ; preds = %land.lhs.true7.if.else48thread-pre-split_crit_edge, %lor.lhs.false.if.else48thread-pre-split_crit_edge
  %42 = ptrtoint ptr %buff_in_count to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr = load i32, ptr %buff_in_count, align 4
  br label %if.else48

if.else48:                                        ; preds = %if.else48thread-pre-split, %entry.if.else48_crit_edge
  %43 = phi i32 [ %.pr, %if.else48thread-pre-split ], [ %1, %entry.if.else48_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %43)
  %cmp.i2 = icmp slt i32 %43, 32768
  br i1 %cmp.i2, label %if.then.i10, label %if.then51

if.then.i10:                                      ; preds = %if.else48
  %buff_in1.i3 = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 23
  %44 = ptrtoint ptr %buff_in1.i3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %buff_in1.i3, align 4
  %idxprom.i4 = and i32 %45, 65535
  %arrayidx.i5 = getelementptr %struct.snd_uart16550, ptr %uart, i32 0, i32 21, i32 %idxprom.i4
  %46 = ptrtoint ptr %arrayidx.i5 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %midi_byte, ptr %arrayidx.i5, align 1
  %47 = add i32 %45, 1
  %conv4.i6 = and i32 %47, 32767
  store i32 %conv4.i6, ptr %buff_in1.i3, align 4
  %48 = ptrtoint ptr %buff_in_count to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %buff_in_count, align 4
  %inc8.i7 = add i32 %49, 1
  store i32 %inc8.i7, ptr %buff_in_count, align 4
  %irq.i8 = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 6
  %50 = ptrtoint ptr %irq.i8 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq.i8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp9.i9 = icmp slt i32 %51, 0
  br i1 %cmp9.i9, label %if.then11.i14, label %if.then.i10.return_crit_edge

if.then.i10.return_crit_edge:                     ; preds = %if.then.i10
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then11.i14:                                    ; preds = %if.then.i10
  %timer_running.i.i11 = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 26
  %52 = ptrtoint ptr %timer_running.i.i11 to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load.i.i12 = load i8, ptr %timer_running.i.i11, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i12)
  %tobool.not.i.i13 = icmp sgt i8 %bf.load.i.i12, -1
  br i1 %tobool.not.i.i13, label %if.then.i.i20, label %if.then11.i14.return_crit_edge

if.then11.i14.return_crit_edge:                   ; preds = %if.then11.i14
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then.i.i20:                                    ; preds = %if.then11.i14
  call void @__sanitizer_cov_trace_pc() #8
  %buffer_timer.i.i15 = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %add.i.i16 = add i32 %53, 1
  %call.i.i17 = tail call i32 @mod_timer(ptr noundef %buffer_timer.i.i15, i32 noundef %add.i.i16) #6
  %54 = ptrtoint ptr %timer_running.i.i11 to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load2.i.i18 = load i8, ptr %timer_running.i.i11, align 4
  %bf.set.i.i19 = or i8 %bf.load2.i.i18, -128
  store i8 %bf.set.i.i19, ptr %timer_running.i.i11, align 4
  br label %return

if.then51:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #8
  %rmidi = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 1
  %55 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rmidi, align 4
  %name = getelementptr inbounds %struct.snd_rawmidi, ptr %56, i32 0, i32 5
  %base52 = getelementptr inbounds %struct.snd_uart16550, ptr %uart, i32 0, i32 7
  %57 = ptrtoint ptr %base52 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %base52, align 4
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 624, ptr noundef nonnull @.str.19, ptr noundef %name, i32 noundef %58) #6
  br label %return

return:                                           ; preds = %if.then51, %if.then.i.i20, %if.then11.i14.return_crit_edge, %if.then.i10.return_crit_edge, %if.then.i.i, %if.then11.i.return_crit_edge, %if.then.i.return_crit_edge, %if.else45.return_crit_edge, %if.then36, %if.then24
  %retval.0 = phi i32 [ 0, %if.then51 ], [ 1, %if.then24 ], [ 1, %if.then36 ], [ 1, %if.else45.return_crit_edge ], [ 1, %if.then.i.return_crit_edge ], [ 1, %if.then11.i.return_crit_edge ], [ 1, %if.then.i.i ], [ 1, %if.then.i10.return_crit_edge ], [ 1, %if.then11.i14.return_crit_edge ], [ 1, %if.then.i.i20 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit_peek(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit_ack(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !42, !43, !45, !47, !48, !50, !52, !53, !55, !57, !58, !60, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !110, !112, !114, !116, !117, !119, !121, !123, !125, !127, !129, !130, !132, !133, !134, !135, !137, !139, !141, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168}
!llvm.module.flags = !{!170, !171, !172, !173, !174, !175, !176, !177}
!llvm.ident = !{!178}

!0 = !{ptr @__UNIQUE_ID_description189, !1, !"__UNIQUE_ID_description189", i1 false, i1 false}
!1 = !{!"../sound/drivers/serial-u16550.c", i32 35, i32 1}
!2 = !{ptr @__UNIQUE_ID_file190, !3, !"__UNIQUE_ID_file190", i1 false, i1 false}
!3 = !{!"../sound/drivers/serial-u16550.c", i32 36, i32 1}
!4 = !{ptr @__UNIQUE_ID_license191, !3, !"__UNIQUE_ID_license191", i1 false, i1 false}
!5 = !{ptr @__param_index, !6, !"__param_index", i1 false, i1 false}
!6 = !{!"../sound/drivers/serial-u16550.c", i32 67, i32 1}
!7 = !{ptr @__UNIQUE_ID_indextype192, !6, !"__UNIQUE_ID_indextype192", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_index193, !9, !"__UNIQUE_ID_index193", i1 false, i1 false}
!9 = !{!"../sound/drivers/serial-u16550.c", i32 68, i32 1}
!10 = !{ptr @__param_id, !11, !"__param_id", i1 false, i1 false}
!11 = !{!"../sound/drivers/serial-u16550.c", i32 69, i32 1}
!12 = !{ptr @__UNIQUE_ID_idtype194, !11, !"__UNIQUE_ID_idtype194", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_id195, !14, !"__UNIQUE_ID_id195", i1 false, i1 false}
!14 = !{!"../sound/drivers/serial-u16550.c", i32 70, i32 1}
!15 = !{ptr @__param_enable, !16, !"__param_enable", i1 false, i1 false}
!16 = !{!"../sound/drivers/serial-u16550.c", i32 71, i32 1}
!17 = !{ptr @__UNIQUE_ID_enabletype196, !16, !"__UNIQUE_ID_enabletype196", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_enable197, !19, !"__UNIQUE_ID_enable197", i1 false, i1 false}
!19 = !{!"../sound/drivers/serial-u16550.c", i32 72, i32 1}
!20 = !{ptr @__param_port, !21, !"__param_port", i1 false, i1 false}
!21 = !{!"../sound/drivers/serial-u16550.c", i32 73, i32 1}
!22 = !{ptr @__UNIQUE_ID_porttype198, !21, !"__UNIQUE_ID_porttype198", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_port199, !24, !"__UNIQUE_ID_port199", i1 false, i1 false}
!24 = !{!"../sound/drivers/serial-u16550.c", i32 74, i32 1}
!25 = !{ptr @__param_irq, !26, !"__param_irq", i1 false, i1 false}
!26 = !{!"../sound/drivers/serial-u16550.c", i32 75, i32 1}
!27 = !{ptr @__UNIQUE_ID_irqtype200, !26, !"__UNIQUE_ID_irqtype200", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_irq201, !29, !"__UNIQUE_ID_irq201", i1 false, i1 false}
!29 = !{!"../sound/drivers/serial-u16550.c", i32 76, i32 1}
!30 = !{ptr @__param_speed, !31, !"__param_speed", i1 false, i1 false}
!31 = !{!"../sound/drivers/serial-u16550.c", i32 77, i32 1}
!32 = !{ptr @__UNIQUE_ID_speedtype202, !31, !"__UNIQUE_ID_speedtype202", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_speed203, !34, !"__UNIQUE_ID_speed203", i1 false, i1 false}
!34 = !{!"../sound/drivers/serial-u16550.c", i32 78, i32 1}
!35 = !{ptr @__param_base, !36, !"__param_base", i1 false, i1 false}
!36 = !{!"../sound/drivers/serial-u16550.c", i32 79, i32 1}
!37 = !{ptr @__UNIQUE_ID_basetype204, !36, !"__UNIQUE_ID_basetype204", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_base205, !39, !"__UNIQUE_ID_base205", i1 false, i1 false}
!39 = !{!"../sound/drivers/serial-u16550.c", i32 80, i32 1}
!40 = !{ptr @__param_outs, !41, !"__param_outs", i1 false, i1 false}
!41 = !{!"../sound/drivers/serial-u16550.c", i32 81, i32 1}
!42 = !{ptr @__UNIQUE_ID_outstype206, !41, !"__UNIQUE_ID_outstype206", i1 false, i1 false}
!43 = !{ptr @__UNIQUE_ID_outs207, !44, !"__UNIQUE_ID_outs207", i1 false, i1 false}
!44 = !{!"../sound/drivers/serial-u16550.c", i32 82, i32 1}
!45 = !{ptr @__param_ins, !46, !"__param_ins", i1 false, i1 false}
!46 = !{!"../sound/drivers/serial-u16550.c", i32 83, i32 1}
!47 = !{ptr @__UNIQUE_ID_instype208, !46, !"__UNIQUE_ID_instype208", i1 false, i1 false}
!48 = !{ptr @__UNIQUE_ID_ins209, !49, !"__UNIQUE_ID_ins209", i1 false, i1 false}
!49 = !{!"../sound/drivers/serial-u16550.c", i32 84, i32 1}
!50 = !{ptr @__param_droponfull, !51, !"__param_droponfull", i1 false, i1 false}
!51 = !{!"../sound/drivers/serial-u16550.c", i32 85, i32 1}
!52 = !{ptr @__UNIQUE_ID_droponfulltype210, !51, !"__UNIQUE_ID_droponfulltype210", i1 false, i1 false}
!53 = !{ptr @__UNIQUE_ID_droponfull211, !54, !"__UNIQUE_ID_droponfull211", i1 false, i1 false}
!54 = !{!"../sound/drivers/serial-u16550.c", i32 86, i32 1}
!55 = !{ptr @__param_adaptor, !56, !"__param_adaptor", i1 false, i1 false}
!56 = !{!"../sound/drivers/serial-u16550.c", i32 88, i32 1}
!57 = !{ptr @__UNIQUE_ID_adaptortype212, !56, !"__UNIQUE_ID_adaptortype212", i1 false, i1 false}
!58 = !{ptr @__UNIQUE_ID_adaptor213, !59, !"__UNIQUE_ID_adaptor213", i1 false, i1 false}
!59 = !{!"../sound/drivers/serial-u16550.c", i32 89, i32 1}
!60 = !{ptr @__initcall__kmod_snd_serial_u16550__214_991_alsa_card_serial_init6, !61, !"__initcall__kmod_snd_serial_u16550__214_991_alsa_card_serial_init6", i1 false, i1 false}
!61 = !{!"../sound/drivers/serial-u16550.c", i32 991, i32 1}
!62 = !{ptr @__exitcall_alsa_card_serial_exit, !63, !"__exitcall_alsa_card_serial_exit", i1 false, i1 false}
!63 = !{!"../sound/drivers/serial-u16550.c", i32 992, i32 1}
!64 = !{ptr @__param_str_index, !6, !"__param_str_index", i1 false, i1 false}
!65 = !{ptr @__param_arr_index, !6, !"__param_arr_index", i1 false, i1 false}
!66 = !{ptr @index, !67, !"index", i1 false, i1 false}
!67 = !{!"../sound/drivers/serial-u16550.c", i32 55, i32 12}
!68 = !{ptr @__param_str_id, !11, !"__param_str_id", i1 false, i1 false}
!69 = !{ptr @__param_arr_id, !11, !"__param_arr_id", i1 false, i1 false}
!70 = !{ptr @id, !71, !"id", i1 false, i1 false}
!71 = !{!"../sound/drivers/serial-u16550.c", i32 56, i32 14}
!72 = !{ptr @__param_str_enable, !16, !"__param_str_enable", i1 false, i1 false}
!73 = !{ptr @__param_arr_enable, !16, !"__param_arr_enable", i1 false, i1 false}
!74 = !{ptr @enable, !75, !"enable", i1 false, i1 false}
!75 = !{!"../sound/drivers/serial-u16550.c", i32 57, i32 13}
!76 = !{ptr @__param_str_port, !21, !"__param_str_port", i1 false, i1 false}
!77 = !{ptr @__param_arr_port, !21, !"__param_arr_port", i1 false, i1 false}
!78 = !{ptr @port, !79, !"port", i1 false, i1 false}
!79 = !{!"../sound/drivers/serial-u16550.c", i32 58, i32 13}
!80 = !{ptr @__param_str_irq, !26, !"__param_str_irq", i1 false, i1 false}
!81 = !{ptr @__param_arr_irq, !26, !"__param_arr_irq", i1 false, i1 false}
!82 = !{ptr @irq, !83, !"irq", i1 false, i1 false}
!83 = !{!"../sound/drivers/serial-u16550.c", i32 59, i32 12}
!84 = !{ptr @__param_str_speed, !31, !"__param_str_speed", i1 false, i1 false}
!85 = !{ptr @__param_arr_speed, !31, !"__param_arr_speed", i1 false, i1 false}
!86 = !{ptr @speed, !87, !"speed", i1 false, i1 false}
!87 = !{!"../sound/drivers/serial-u16550.c", i32 60, i32 12}
!88 = !{ptr @__param_str_base, !36, !"__param_str_base", i1 false, i1 false}
!89 = !{ptr @__param_arr_base, !36, !"__param_arr_base", i1 false, i1 false}
!90 = !{ptr @base, !91, !"base", i1 false, i1 false}
!91 = !{!"../sound/drivers/serial-u16550.c", i32 61, i32 12}
!92 = !{ptr @__param_str_outs, !41, !"__param_str_outs", i1 false, i1 false}
!93 = !{ptr @__param_arr_outs, !41, !"__param_arr_outs", i1 false, i1 false}
!94 = !{ptr @outs, !95, !"outs", i1 false, i1 false}
!95 = !{!"../sound/drivers/serial-u16550.c", i32 62, i32 12}
!96 = !{ptr @__param_str_ins, !46, !"__param_str_ins", i1 false, i1 false}
!97 = !{ptr @__param_arr_ins, !46, !"__param_arr_ins", i1 false, i1 false}
!98 = !{ptr @ins, !99, !"ins", i1 false, i1 false}
!99 = !{!"../sound/drivers/serial-u16550.c", i32 63, i32 12}
!100 = !{ptr @__param_str_droponfull, !51, !"__param_str_droponfull", i1 false, i1 false}
!101 = !{ptr @__param_arr_droponfull, !51, !"__param_arr_droponfull", i1 false, i1 false}
!102 = !{ptr @droponfull, !103, !"droponfull", i1 false, i1 false}
!103 = !{!"../sound/drivers/serial-u16550.c", i32 65, i32 13}
!104 = !{ptr @__param_str_adaptor, !56, !"__param_str_adaptor", i1 false, i1 false}
!105 = !{ptr @__param_arr_adaptor, !56, !"__param_arr_adaptor", i1 false, i1 false}
!106 = !{ptr @adaptor, !107, !"adaptor", i1 false, i1 false}
!107 = !{!"../sound/drivers/serial-u16550.c", i32 64, i32 12}
!108 = !{ptr @devices, !109, !"devices", i1 false, i1 false}
!109 = !{!"../sound/drivers/serial-u16550.c", i32 155, i32 32}
!110 = !{ptr @.str, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/drivers/serial-u16550.c", i32 939, i32 11}
!112 = !{ptr @snd_serial_driver, !113, !"snd_serial_driver", i1 false, i1 false}
!113 = !{!"../sound/drivers/serial-u16550.c", i32 936, i32 31}
!114 = !{ptr @.str.2, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/drivers/serial-u16550.c", i32 882, i32 3}
!116 = !{ptr @.str.3, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.4, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/drivers/serial-u16550.c", i32 889, i32 3}
!119 = !{ptr @.str.5, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/drivers/serial-u16550.c", i32 896, i32 3}
!121 = !{ptr @.str.6, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/drivers/serial-u16550.c", i32 907, i32 23}
!123 = !{ptr @.str.7, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/drivers/serial-u16550.c", i32 908, i32 26}
!125 = !{ptr @.str.8, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/drivers/serial-u16550.c", i32 920, i32 26}
!127 = !{ptr @snd_uart16550_create.__key, !128, !"__key", i1 false, i1 false}
!128 = !{!"../sound/drivers/serial-u16550.c", i32 771, i32 2}
!129 = !{ptr @.str.9, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.10, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/drivers/serial-u16550.c", i32 778, i32 3}
!132 = !{ptr @.str.11, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @snd_uart16550_create._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @snd_uart16550_create._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.12, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/drivers/serial-u16550.c", i32 784, i32 13}
!137 = !{ptr @.str.13, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/drivers/serial-u16550.c", i32 785, i32 4}
!139 = !{ptr @snd_uart16550_create.__key.14, !140, !"__key", i1 false, i1 false}
!140 = !{!"../sound/drivers/serial-u16550.c", i32 798, i32 2}
!141 = !{ptr @.str.15, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.16, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/drivers/serial-u16550.c", i32 326, i32 3}
!144 = !{ptr @.str.17, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/drivers/serial-u16550.c", i32 227, i32 4}
!146 = !{ptr @.str.18, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/drivers/serial-u16550.c", i32 839, i32 36}
!148 = !{ptr @snd_uart16550_input, !149, !"snd_uart16550_input", i1 false, i1 false}
!149 = !{!"../sound/drivers/serial-u16550.c", i32 746, i32 37}
!150 = !{ptr @snd_uart16550_output, !151, !"snd_uart16550_output", i1 false, i1 false}
!151 = !{!"../sound/drivers/serial-u16550.c", i32 739, i32 37}
!152 = !{ptr @snd_uart16550_output_write.lasttime, !153, !"lasttime", i1 false, i1 false}
!153 = !{!"../sound/drivers/serial-u16550.c", i32 638, i32 23}
!154 = !{ptr @.str.19, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/drivers/serial-u16550.c", i32 622, i32 4}
!156 = !{ptr @.str.20, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/drivers/serial-u16550.c", i32 828, i32 28}
!158 = !{ptr @.str.21, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/drivers/serial-u16550.c", i32 45, i32 2}
!160 = !{ptr @.str.22, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/drivers/serial-u16550.c", i32 46, i32 9}
!162 = !{ptr @.str.23, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/drivers/serial-u16550.c", i32 47, i32 2}
!164 = !{ptr @.str.24, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/drivers/serial-u16550.c", i32 48, i32 2}
!166 = !{ptr @.str.25, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/drivers/serial-u16550.c", i32 49, i32 2}
!168 = !{ptr @adaptor_names, !169, !"adaptor_names", i1 false, i1 false}
!169 = !{!"../sound/drivers/serial-u16550.c", i32 44, i32 27}
!170 = !{i32 1, !"wchar_size", i32 2}
!171 = !{i32 1, !"min_enum_size", i32 4}
!172 = !{i32 8, !"branch-target-enforcement", i32 0}
!173 = !{i32 8, !"sign-return-address", i32 0}
!174 = !{i32 8, !"sign-return-address-all", i32 0}
!175 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!176 = !{i32 7, !"uwtable", i32 1}
!177 = !{i32 7, !"frame-pointer", i32 2}
!178 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!179 = !{i8 0, i8 2}
!180 = !{!"auto-init"}
!181 = !{i64 2153168182}
!182 = !{i64 4225833}
!183 = !{i64 4226228}
!184 = !{i64 2153168587}
!185 = !{i64 2153168802}
!186 = !{i64 2153169207}
!187 = !{i64 2153169422}
!188 = !{i64 2153169827}
!189 = !{i64 2153186017}
!190 = !{i64 2153186377}
!191 = !{i64 2153162009}
!192 = !{i64 2153160606}
!193 = !{i64 2153160902}
!194 = !{i64 2153161418}
!195 = !{i64 2153160165}
!196 = !{i64 2153161714}
!197 = !{i64 2153170086}
!198 = !{i64 2153170500}
!199 = !{i64 2153170791}
!200 = !{i64 2153171014}
!201 = !{i64 2153171428}
!202 = !{i64 2153171719}
!203 = !{i64 2153171946}
!204 = !{i64 2153172284}
!205 = !{i64 2153172690}
!206 = !{i64 2153173060}
!207 = !{i64 2153173440}
!208 = !{i64 2153173812}
!209 = !{i64 2153174202}
!210 = !{i64 2153174616}
!211 = !{i64 2153174907}
!212 = !{i64 2153175198}
!213 = !{i64 2153175491}
!214 = !{i64 2153175927}
!215 = !{i64 2153176313}
!216 = !{i64 2153176691}
!217 = !{i64 2153177105}
!218 = !{i64 2153177328}
!219 = !{i64 2153177686}
!220 = !{i64 2153178044}
!221 = !{i64 2153178404}
!222 = !{i64 2153181117}
!223 = !{i64 2153181413}
!224 = !{i64 2153181641}
!225 = !{i64 2153181987}
